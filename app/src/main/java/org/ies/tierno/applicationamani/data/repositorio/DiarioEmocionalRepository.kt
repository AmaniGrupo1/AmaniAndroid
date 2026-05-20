package org.ies.tierno.applicationamani.data.repositorio

import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import org.ies.tierno.applicationamani.data.local.diario.DiarioEmocionalDao
import org.ies.tierno.applicationamani.data.local.diario.EntradaDiarioEntity
import org.ies.tierno.applicationamani.data.remoto.DiarioSyncManager
import org.ies.tierno.applicationamani.domain.models.diario.EntradaDiario
import org.ies.tierno.applicationamani.domain.models.diario.SyncStatus

/**
 * Repositorio para la gestión del diario emocional con sincronización local-remota.
 *
 * Combina el almacenamiento local en Room a través de [DiarioEmocionalDao] con
 * la sincronización hacia el backend gestionada por [DiarioSyncManager].
 * Las entradas se guardan primero en local con un estado de sincronización
 * y se encolan para su envío diferido al servidor.
 *
 * @property dao Acceso a la base de datos local para las entradas del diario.
 * @property syncManager Gestor de sincronización que encola y envía entradas al backend.
 */
class DiarioEmocionalRepository(
    private val dao: DiarioEmocionalDao,
    private val syncManager: DiarioSyncManager,
) {
    /**
     * Observa el flujo reactivo de todas las entradas del diario emocional.
     *
     * Convierte las entidades locales [EntradaDiarioEntity] al modelo de dominio [EntradaDiario].
     *
     * @return [Flow] que emite la lista actualizada de entradas del diario.
     */
    fun observeEntradas(): Flow<List<EntradaDiario>> = dao.observeEntradas().map { entries -> entries.map { it.toDomain() } }

    /**
     * Crea o actualiza una entrada del diario emocional.
     *
     * Si no se proporciona un identificador, se crea una nueva entrada con estado de
     * sincronización [SyncStatus.PENDING_CREATE]. Si se proporciona, se actualiza la
     * entrada existente con estado [SyncStatus.PENDING_UPDATE]. La intensidad se
     * acota automáticamente al rango 1-10. Tras guardar, se encola una sincronización inmediata.
     *
     * @param id Identificador de la entrada a actualizar, o `null` para crear una nueva.
     * @param titulo Título de la entrada.
     * @param contenido Contenido textual de la entrada.
     * @param emocion Emoción registrada (ej. "alegría", "tristeza").
     * @param intensidad Intensidad de la emoción en escala 1-10.
     */
    suspend fun guardarEntrada(
        id: Long?,
        titulo: String,
        contenido: String,
        emocion: String,
        intensidad: Int,
    ) {
        val now = System.currentTimeMillis()
        if (id == null) {
            val entry =
                EntradaDiarioEntity(
                    titulo = titulo.trim(),
                    contenido = contenido.trim(),
                    emocion = emocion.trim(),
                    intensidad = intensidad.coerceIn(1, 10),
                    createdAt = now,
                    updatedAt = now,
                    syncStatus = SyncStatus.PENDING_CREATE,
                )
            dao.insertar(entry)
        } else {
            val existing = dao.getEntradaById(id)
            val entry =
                EntradaDiarioEntity(
                    id = id,
                    titulo = titulo.trim(),
                    contenido = contenido.trim(),
                    emocion = emocion.trim(),
                    intensidad = intensidad.coerceIn(1, 10),
                    createdAt = existing?.createdAt ?: now,
                    updatedAt = now,
                    remoteId = existing?.remoteId,
                    syncStatus = SyncStatus.PENDING_UPDATE,
                )
            dao.actualizar(entry)
        }
        syncManager.enqueueImmediateSync()
    }

    /**
     * Marca una entrada para eliminación diferida.
     *
     * No elimina el registro inmediatamente de la base de datos local, sino que
     * actualiza su estado a [SyncStatus.PENDING_DELETE] y encola la sincronización.
     *
     * @param entrada Entrada del diario a marcar para eliminación.
     */
    suspend fun eliminarEntrada(entrada: EntradaDiario) {
        dao.updateSyncStatus(
            id = entrada.id,
            status = SyncStatus.PENDING_DELETE,
            timestamp = System.currentTimeMillis(),
        )
        syncManager.enqueueImmediateSync()
    }

    /**
     * Fuerza una sincronización inmediata de las entradas pendientes.
     */
    fun syncNow() {
        syncManager.enqueueImmediateSync()
    }

    private fun EntradaDiarioEntity.toDomain(): EntradaDiario =
        EntradaDiario(
            id = id,
            titulo = titulo,
            contenido = contenido,
            emocion = emocion,
            intensidad = intensidad,
            createdAt = createdAt,
            updatedAt = updatedAt,
        )

    private fun EntradaDiario.toEntity(): EntradaDiarioEntity =
        EntradaDiarioEntity(
            id = id,
            titulo = titulo,
            contenido = contenido,
            emocion = emocion,
            intensidad = intensidad,
            createdAt = createdAt,
            updatedAt = updatedAt,
        )
}
