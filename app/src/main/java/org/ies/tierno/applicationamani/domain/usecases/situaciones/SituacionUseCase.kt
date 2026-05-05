package org.ies.tierno.applicationamani.domain.usecases.situaciones

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.SituacionRepository
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionRequest

class SituacionUseCase(
    private val repository: SituacionRepository
) {

    // =========================
    // LISTAR TODAS
    // =========================
    fun getSituaciones(): Flow<List<SituacionDTO>> {
        return repository.getSituaciones()
    }

    // =========================
    // OBTENER POR ID
    // =========================
    suspend fun getSituacionById(id: Long) =
        repository.getSituacionById(id)

    // =========================
    // CREAR
    // =========================
    suspend fun createSituacion(request: SituacionRequest) =
        repository.createSituacion(request)

    // =========================
    // ACTUALIZAR
    // =========================
    suspend fun updateSituacion(id: Long, request: SituacionRequest) =
        repository.updateSituacion(id, request)

    // =========================
    // ELIMINAR
    // =========================
    suspend fun deleteSituacion(id: Long) =
        repository.deleteSituacion(id)
}