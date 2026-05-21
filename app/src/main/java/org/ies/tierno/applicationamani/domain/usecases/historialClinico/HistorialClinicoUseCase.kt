package org.ies.tierno.applicationamani.domain.usecases.historialClinico

import org.ies.tierno.applicationamani.data.repositorio.HistorialRepository
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.ies.tierno.applicationamani.dto.historial.request.HistorialClinicoRequestDTO

/**
 * Caso de uso para la gestión del historial clínico de pacientes.
 *
 * Delega en el repositorio de historial la consulta y creación
 * de entradas del historial clínico.
 *
 * @property historialRepository Repositorio de historial clínico.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.HistorialRepository
 */
class HistorialClinicoUseCase(
    val historialRepository: HistorialRepository,
) {
    /**
     * Obtiene el historial clínico de un paciente.
     *
     * @param idPaciente Identificador único del paciente.
     * @param token Token de autenticación del usuario.
     * @return Lista de [HistorialClinicoResponseDTO] con las entradas del historial.
     */
    suspend fun getHistorialClinico(
        idPaciente: Long,
        token: String,
    ): List<HistorialClinicoResponseDTO> = historialRepository.getHistorialPaciente(idPaciente, token)

    /**
     * Crea una nueva entrada en el historial clínico de un paciente.
     *
     * @param request Datos de la entrada a crear.
     * @return [HistorialClinicoResponseDTO] con la entrada creada.
     */
    suspend fun createHistorialClinico(request: HistorialClinicoRequestDTO): HistorialClinicoResponseDTO =
        historialRepository.createHistorialClinico(request)
}
