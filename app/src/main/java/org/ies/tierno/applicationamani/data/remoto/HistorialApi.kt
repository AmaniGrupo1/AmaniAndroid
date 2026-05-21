package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.ies.tierno.applicationamani.dto.historial.request.HistorialClinicoRequestDTO
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.Header
import retrofit2.http.POST
import retrofit2.http.Path

/**
 * Interfaz Retrofit para la gestión del historial clínico de los pacientes.
 *
 * Proporciona los endpoints de consulta y creación de registros del historial
 * clínico asociados a un paciente dentro del sistema.
 */
interface HistorialApi {
    /**
     * Recupera el historial clínico completo de un paciente.
     *
     * @param idPaciente Identificador único del paciente.
     * @param token Token de autorización JWT para autenticar la petición.
     * @return Lista de entradas del historial clínico del paciente.
     */
    @GET("/api/historial-clinico/paciente/{idPaciente}")
    suspend fun getHistorialPaciente(
        @Path("idPaciente") idPaciente: Long,
        @Header("Authorization") token: String,
    ): List<HistorialClinicoResponseDTO>

    /**
     * Crea un nuevo registro en el historial clínico de un paciente.
     *
     * @param request Datos del registro a añadir al historial.
     * @return Respuesta con el registro clínico creado.
     */
    @POST("/api/historial-clinico")
    suspend fun createHistorialClinico(
        @Body request: HistorialClinicoRequestDTO,
    ): HistorialClinicoResponseDTO
}
