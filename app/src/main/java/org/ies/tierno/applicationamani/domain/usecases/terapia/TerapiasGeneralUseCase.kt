package org.ies.tierno.applicationamani.domain.usecases.terapia

import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.dto.terapias.TerapiaRequest
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO

/**
 * Caso de uso para la gestión de terapias.
 *
 * Delega en el repositorio de citas la creación, actualización
 * y eliminación de terapias del sistema.
 *
 * @property cita Repositorio de citas.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.CitasRepository
 */
class TerapiasGeneralUseCase(
    val cita: CitasRepository,
) {
    /**
     * Crea una nueva terapia.
     *
     * @param terapia Datos de la terapia a crear.
     * @return [Result.success] con [TerapiaResponseDTO] creada,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun crearTerapia(terapia: TerapiaRequest): Result<TerapiaResponseDTO> = cita.crearTerapia(terapia)

    /**
     * Actualiza una terapia existente.
     *
     * @param id Identificador único de la terapia.
     * @param terapia Datos actualizados de la terapia.
     * @return [Result.success] con [TerapiaResponseDTO] actualizada,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun actualizarTerapia(
        id: Long,
        terapia: TerapiaRequest,
    ): Result<TerapiaResponseDTO> = cita.actualizarTerapia(id, terapia)

    /**
     * Elimina una terapia.
     *
     * @param id Identificador único de la terapia a eliminar.
     * @return [Result.success] con [Unit] si se eliminó correctamente,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend fun eliminarTerapia(id: Long): Result<Unit> = cita.eliminarTerapia(id)
}
