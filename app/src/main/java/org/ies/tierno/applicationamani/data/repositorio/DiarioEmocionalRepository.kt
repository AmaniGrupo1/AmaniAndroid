package org.ies.tierno.applicationamani.data.repositorio

import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import org.ies.tierno.applicationamani.data.local.diario.DiarioEmocionalDao
import org.ies.tierno.applicationamani.data.local.diario.EntradaDiarioEntity
import org.ies.tierno.applicationamani.domain.models.diario.EntradaDiario

class DiarioEmocionalRepository(
    private val dao: DiarioEmocionalDao
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
        val entry = EntradaDiarioEntity(
            id = id ?: 0L,
            titulo = titulo.trim(),
            contenido = contenido.trim(),
            emocion = emocion.trim(),
            intensidad = intensidad.coerceIn(1, 10),
            createdAt = now,
            updatedAt = now
        )

        if (id == null) {
            dao.insertar(entry)
        } else {
            val existing = dao.getEntradaById(id)
            dao.actualizar(entry.copy(createdAt = existing?.createdAt ?: now))
        }
    }

    suspend fun eliminarEntrada(entrada: EntradaDiario) {
        dao.eliminar(entrada.toEntity())
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
