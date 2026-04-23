package org.ies.tierno.applicationamani.data.repositorio

import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import org.ies.tierno.applicationamani.data.local.diario.DiarioEmocionalDao
import org.ies.tierno.applicationamani.data.local.diario.EntradaDiarioEntity
import org.ies.tierno.applicationamani.data.remoto.DiarioSyncManager
import org.ies.tierno.applicationamani.domain.models.diario.EntradaDiario
import org.ies.tierno.applicationamani.domain.models.diario.SyncStatus

class DiarioEmocionalRepository(
    private val dao: DiarioEmocionalDao,
    private val syncManager: DiarioSyncManager
) {

    fun observeEntradas(): Flow<List<EntradaDiario>> {
        return dao.observeEntradas().map { entries -> entries.map { it.toDomain() } }
    }

    suspend fun guardarEntrada(
        id: Long?,
        titulo: String,
        contenido: String,
        emocion: String,
        intensidad: Int
    ) {
        val now = System.currentTimeMillis()
        if (id == null) {
            val entry = EntradaDiarioEntity(
                titulo = titulo.trim(),
                contenido = contenido.trim(),
                emocion = emocion.trim(),
                intensidad = intensidad.coerceIn(1, 10),
                createdAt = now,
                updatedAt = now,
                syncStatus = SyncStatus.PENDING_CREATE
            )
            dao.insertar(entry)
        } else {
            val existing = dao.getEntradaById(id)
            val entry = EntradaDiarioEntity(
                id = id,
                titulo = titulo.trim(),
                contenido = contenido.trim(),
                emocion = emocion.trim(),
                intensidad = intensidad.coerceIn(1, 10),
                createdAt = existing?.createdAt ?: now,
                updatedAt = now,
                remoteId = existing?.remoteId,
                syncStatus = SyncStatus.PENDING_UPDATE
            )
            dao.actualizar(entry)
        }
        syncManager.enqueueImmediateSync()
    }

    suspend fun eliminarEntrada(entrada: EntradaDiario) {
        dao.updateSyncStatus(
            id = entrada.id,
            status = SyncStatus.PENDING_DELETE,
            timestamp = System.currentTimeMillis()
        )
        syncManager.enqueueImmediateSync()
    }

    fun syncNow() {
        syncManager.enqueueImmediateSync()
    }

    private fun EntradaDiarioEntity.toDomain(): EntradaDiario {
        return EntradaDiario(
            id = id,
            titulo = titulo,
            contenido = contenido,
            emocion = emocion,
            intensidad = intensidad,
            createdAt = createdAt,
            updatedAt = updatedAt
        )
    }

    private fun EntradaDiario.toEntity(): EntradaDiarioEntity {
        return EntradaDiarioEntity(
            id = id,
            titulo = titulo,
            contenido = contenido,
            emocion = emocion,
            intensidad = intensidad,
            createdAt = createdAt,
            updatedAt = updatedAt
        )
    }
}
