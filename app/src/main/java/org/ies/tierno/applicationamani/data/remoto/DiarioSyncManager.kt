package org.ies.tierno.applicationamani.data.remoto

import android.content.Context
import androidx.work.Constraints
import androidx.work.ExistingPeriodicWorkPolicy
import androidx.work.NetworkType
import androidx.work.OneTimeWorkRequestBuilder
import androidx.work.PeriodicWorkRequestBuilder
import androidx.work.WorkManager
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.local.diario.DiarioEmocionalDao
import org.ies.tierno.applicationamani.data.local.diario.EntradaDiarioEntity
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionRequestDTO
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO
import org.ies.tierno.applicationamani.domain.models.diario.SyncStatus
import timber.log.Timber
import java.time.Instant
import java.time.LocalDateTime
import java.time.ZoneOffset
import java.time.format.DateTimeParseException
import java.util.concurrent.TimeUnit

/**
 * Gestiona la sincronización bidireccional de entradas del diario emocional
 * entre la base de datos local (Room) y el backend remoto (REST).
 *
 * Responsabilidades:
 * 1. Encolar trabajos de sincronización inmediata vía WorkManager.
 * 2. Empujar cambios locales pendientes (CREATE → UPDATE → DELETE) al servidor.
 * 3. Traer entradas remotas y resolver conflictos por timestamp.
 */
class DiarioSyncManager(
    private val context: Context,
    private val dao: DiarioEmocionalDao,
    private val remoteRepository: DiarioRemoteRepository,
    private val userSessionDataStore: UserSessionDataStore
) {

    companion object {
        const val SYNC_TAG = "diario_sync"
    }

    /**
     * Encola un [OneTimeWorkRequest] de sincronización que se ejecutará
     * cuando haya conectividad de red.
     */
    fun enqueueImmediateSync() {
        val request = OneTimeWorkRequestBuilder<SyncDiarioWorker>()
            .setConstraints(
                Constraints.Builder()
                    .setRequiredNetworkType(NetworkType.CONNECTED)
                    .build()
            )
            .build()
        WorkManager.getInstance(context).enqueue(request)
    }

    /**
     * Encola un [PeriodicWorkRequest] de sincronización que se ejecutará
     * periódicamente cada 15 minutos cuando haya conectividad de red.
     */
    fun enqueuePeriodicSync() {
        val constraints = Constraints.Builder()
            .setRequiredNetworkType(NetworkType.CONNECTED)
            .build()

        val request = PeriodicWorkRequestBuilder<SyncDiarioWorker>(15, TimeUnit.MINUTES)
            .setConstraints(constraints)
            .addTag(DiarioSyncManager.SYNC_TAG)
            .build()

        WorkManager.getInstance(context).enqueueUniquePeriodicWork(
            "diario_periodic_sync",
            ExistingPeriodicWorkPolicy.KEEP,
            request
        )
    }

    /**
     * Lee las entradas con [SyncStatus] distinto de [SyncStatus.SYNCED]
     * y las procesa en orden: CREATE → UPDATE → DELETE.
     *
     * Si alguna operación falla, se detiene el procesamiento y se marca
     * la entrada con su status original (para reintento posterior).
     *
     * @return [Result.success] si todo se procesó, [Result.failure] en caso contrario.
     */
    suspend fun pushPendingEntries(): Result<Unit> {
        val pending = dao.getPendingSync()
            .sortedBy {
                when (it.syncStatus) {
                    SyncStatus.PENDING_CREATE -> 0
                    SyncStatus.PENDING_UPDATE -> 1
                    SyncStatus.PENDING_DELETE -> 2
                    SyncStatus.SYNCED -> 3
                }
            }

        if (pending.isEmpty()) {
            return Result.success(Unit)
        }

        for (entry in pending) {
            when (entry.syncStatus) {
                SyncStatus.PENDING_CREATE -> {
                    val result = remoteRepository.create(toRequestDTO(entry))
                    result.onSuccess { response ->
                        dao.updateRemoteId(
                            entry.id,
                            response.idDiario,
                            SyncStatus.SYNCED
                        )
                    }.onFailure { error ->
                        Timber.e(error, "Fallo al crear entrada remota: localId=${entry.id}")
                        dao.updateSyncStatus(
                            entry.id,
                            SyncStatus.PENDING_CREATE,
                            System.currentTimeMillis()
                        )
                        return Result.failure(error)
                    }
                }

                SyncStatus.PENDING_UPDATE -> {
                    val remoteId = entry.remoteId
                    if (remoteId == null) {
                        Timber.w("Entrada PENDING_UPDATE sin remoteId: localId=${entry.id}")
                        continue
                    }
                    val result = remoteRepository.update(remoteId, toRequestDTO(entry))
                    result.onSuccess {
                        dao.updateSyncStatus(
                            entry.id,
                            SyncStatus.SYNCED,
                            System.currentTimeMillis()
                        )
                    }.onFailure { error ->
                        Timber.e(error, "Fallo al actualizar entrada remota: remoteId=$remoteId")
                        dao.updateSyncStatus(
                            entry.id,
                            SyncStatus.PENDING_UPDATE,
                            System.currentTimeMillis()
                        )
                        return Result.failure(error)
                    }
                }

                SyncStatus.PENDING_DELETE -> {
                    val remoteId = entry.remoteId
                    if (remoteId == null) {
                        dao.eliminar(entry)
                        continue
                    }
                    val result = remoteRepository.delete(remoteId)
                    result.onSuccess {
                        dao.eliminar(entry)
                    }.onFailure { error ->
                        Timber.e(error, "Fallo al eliminar entrada remota: remoteId=$remoteId")
                        dao.updateSyncStatus(
                            entry.id,
                            SyncStatus.PENDING_DELETE,
                            System.currentTimeMillis()
                        )
                        return Result.failure(error)
                    }
                }

                SyncStatus.SYNCED -> {
                    // No debería ocurrir porque getPendingSync filtra SYNCED,
                    // pero lo dejamos como no-op defensivo.
                }
            }
        }

        return Result.success(Unit)
    }

    /**
     * Obtiene todas las entradas del backend y resuelve conflictos con las locales.
     *
     * Reglas de resolución:
     * - Remoto existe, local no → inserta local con [SyncStatus.SYNCED].
     * - Ambos [SyncStatus.SYNCED] → compara timestamps; el remoto más reciente gana.
     * - Local tiene estado pending_* → local gana, no se sobrescribe.
     *
     * @return [Result.success] si todo se procesó, [Result.failure] en caso contrario.
     */
    suspend fun pullRemoteEntries(): Result<Unit> {
        val remoteResult = remoteRepository.getAll()
        remoteResult.onSuccess { remoteEntries ->
            for (remote in remoteEntries) {
                val local = dao.getByRemoteId(remote.idDiario)

                if (local == null) {
                    dao.insertar(
                        toLocalEntity(remote).copy(syncStatus = SyncStatus.SYNCED)
                    )
                    continue
                }

                when (local.syncStatus) {
                    SyncStatus.SYNCED -> {
                        val remoteTimestamp = parseIsoToEpoch(remote.fecha)
                        if (remoteTimestamp > local.updatedAt) {
                            val updatedEntity = toLocalEntity(remote).copy(
                                id = local.id,
                                createdAt = local.createdAt,
                                updatedAt = remoteTimestamp,
                                syncStatus = SyncStatus.SYNCED
                            )
                            dao.actualizar(updatedEntity)
                        }
                    }

                    SyncStatus.PENDING_CREATE,
                    SyncStatus.PENDING_UPDATE,
                    SyncStatus.PENDING_DELETE -> {
                        // Local gana: no sobrescribir cambios pendientes
                    }
                }
            }
        }.onFailure { error ->
            Timber.e(error, "Fallo al obtener entradas remotas")
            return Result.failure(error)
        }

        return Result.success(Unit)
    }

    /**
     * Convierte una [EntradaDiarioEntity] local en [DiarioEmocionRequestDTO]
     * para enviar al backend.
     */
    private suspend fun toRequestDTO(entry: EntradaDiarioEntity): DiarioEmocionRequestDTO {
        val session = userSessionDataStore.getSession()
        val idPaciente = session?.idPaciente ?: 0L
        return DiarioEmocionRequestDTO(
            idPaciente = idPaciente,
            fecha = Instant.ofEpochMilli(entry.createdAt).toString(),
            titulo = entry.titulo,
            emocion = entry.emocion,
            intensidad = entry.intensidad,
            nota = entry.contenido
        )
    }

    /**
     * Convierte una respuesta remota [DiarioEmocionResponseDTO] en una
     * [EntradaDiarioEntity] local.
     */
    private fun toLocalEntity(response: DiarioEmocionResponseDTO): EntradaDiarioEntity {
        val epochMillis = parseIsoToEpoch(response.fecha)
        return EntradaDiarioEntity(
            titulo = response.titulo,
            contenido = response.nota,
            emocion = response.emocion,
            intensidad = response.intensidad,
            createdAt = epochMillis,
            updatedAt = epochMillis,
            remoteId = response.idDiario,
            syncStatus = SyncStatus.SYNCED
        )
    }

    /**
     * Parsea una fecha ISO-8601 a epoch millis.
     *
     * El backend envía [LocalDateTime] sin sufijo Z; se prueba primero
     * [Instant.parse], luego [LocalDateTime.parse] con UTC, y finalmente
     * con "Z" añadido como fallback.
     */
    private fun parseIsoToEpoch(fecha: String): Long {
        return try {
            Instant.parse(fecha).toEpochMilli()
        } catch (e: DateTimeParseException) {
            try {
                LocalDateTime.parse(fecha).toInstant(ZoneOffset.UTC).toEpochMilli()
            } catch (e2: Exception) {
                Instant.parse(fecha + "Z").toEpochMilli()
            }
        }
    }
}
