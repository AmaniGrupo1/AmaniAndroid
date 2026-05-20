package org.ies.tierno.applicationamani.data.repositorio

import org.ies.tierno.applicationamani.data.remoto.HistorialApi
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.ies.tierno.applicationamani.dto.historial.request.HistorialClinicoRequestDTO

/**
 * Repositorio para la consulta del historial clínico de pacientes.
 *
 * Proporciona acceso a los registros del historial clínico y permite
 * la creación de nuevas entradas a través de la API REST.
 *
 * @property historialApi Interfaz Retrofit para los endpoints de historial clínico.
 */
class HistorialRepository(
    private val historialApi: HistorialApi,
) {
    /**
     * Obtiene el historial clínico completo de un paciente.
     *
     * @param idPaciente Identificador único del paciente.
     * @param token Token JWT de autenticación para la petición.
     * @return Lista de [HistorialClinicoResponseDTO] con las entradas del historial.
     */
    suspend fun getHistorialPaciente(
        idPaciente: Long,
        token: String,
    ): List<HistorialClinicoResponseDTO> =
        historialApi.getHistorialPaciente(
            idPaciente = idPaciente,
            token,
        )

    /**
     * Crea una nueva entrada en el historial clínico.
     *
     * @param request DTO con los datos de la nueva entrada clínica.
     * @return [HistorialClinicoResponseDTO] con la entrada creada.
     */
    suspend fun createHistorialClinico(request: HistorialClinicoRequestDTO): HistorialClinicoResponseDTO =
        historialApi.createHistorialClinico(request)
}
