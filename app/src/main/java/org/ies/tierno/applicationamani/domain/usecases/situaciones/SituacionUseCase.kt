package org.ies.tierno.applicationamani.domain.usecases.situaciones

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.SituacionRepository
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionRequest

/**
 * Caso de uso que agrupa las operaciones CRUD de situaciones.
 *
 * Delega en el repositorio de situaciones la creación, consulta,
 * edición y eliminación de situaciones del sistema.
 *
 * @property repository Repositorio de situaciones.
 *
 * @see org.ies.tierno.applicationamani.data.SituacionRepository
 */
class SituacionUseCase(
    private val repository: SituacionRepository,
) {
    /**
     * Obtiene un flujo reactivo con todas las situaciones.
     *
     * @return [Flow] que emite una lista de [SituacionDTO].
     */
    fun getSituaciones(): Flow<List<SituacionDTO>> = repository.getSituaciones()

    /**
     * Obtiene una situación por su identificador.
     *
     * @param id Identificador único de la situación.
     * @return [SituacionDTO] correspondiente.
     */
    suspend fun getSituacionById(id: Long) = repository.getSituacionById(id)

    /**
     * Crea una nueva situación.
     *
     * @param request Datos de la situación a crear.
     * @return [SituacionDTO] creada.
     */
    suspend fun createSituacion(request: SituacionRequest) = repository.createSituacion(request)

    /**
     * Actualiza una situación existente.
     *
     * @param id Identificador único de la situación.
     * @param request Datos actualizados de la situación.
     * @return [SituacionDTO] actualizada.
     */
    suspend fun updateSituacion(
        id: Long,
        request: SituacionRequest,
    ) = repository.updateSituacion(id, request)

    /**
     * Elimina una situación.
     *
     * @param id Identificador único de la situación a eliminar.
     */
    suspend fun deleteSituacion(id: Long) = repository.deleteSituacion(id)
}
