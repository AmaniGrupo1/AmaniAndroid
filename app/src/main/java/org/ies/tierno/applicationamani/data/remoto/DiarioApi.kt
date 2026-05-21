package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionRequestDTO
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO
import retrofit2.http.Body
import retrofit2.http.DELETE
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Path

/**
 * Interfaz Retrofit para la gestión remota de entradas del diario emocional.
 *
 * Proporciona los endpoints necesarios para crear, consultar, actualizar y eliminar
 * registros del diario emocional del paciente. Todas las operaciones son suspendibles
 * y delegan la serialización en los DTO del dominio.
 */
interface DiarioApi {
    /**
     * Obtiene todas las entradas del diario emocional registradas en el sistema.
     *
     * @return Lista completa de respuestas del diario emocional.
     */
    @GET("/api/diario-emocion")
    suspend fun getAll(): List<DiarioEmocionResponseDTO>

    /**
     * Recupera una entrada específica del diario emocional por su identificador.
     *
     * @param id Identificador único de la entrada del diario.
     * @return Respuesta con los datos de la entrada solicitada.
     */
    @GET("/api/diario-emocion/{id}")
    suspend fun getById(
        @Path("id") id: Long,
    ): DiarioEmocionResponseDTO

    /**
     * Lista todas las entradas del diario emocional asociadas a un paciente.
     *
     * @param idPaciente Identificador único del paciente.
     * @return Lista de entradas del diario pertenecientes al paciente indicado.
     */
    @GET("/api/diario-emocion/paciente/{idPaciente}")
    suspend fun getByPaciente(
        @Path("idPaciente") idPaciente: Long,
    ): List<DiarioEmocionResponseDTO>

    /**
     * Crea una nueva entrada en el diario emocional.
     *
     * @param request Datos de la entrada a registrar.
     * @return Respuesta con la entrada creada, incluyendo el identificador asignado.
     */
    @POST("/api/diario-emocion")
    suspend fun create(
        @Body request: DiarioEmocionRequestDTO,
    ): DiarioEmocionResponseDTO

    /**
     * Actualiza una entrada existente del diario emocional.
     *
     * @param id Identificador de la entrada a modificar.
     * @param request Nuevos datos de la entrada.
     * @return Respuesta con la entrada actualizada.
     */
    @PUT("/api/diario-emocion/{id}")
    suspend fun update(
        @Path("id") id: Long,
        @Body request: DiarioEmocionRequestDTO,
    ): DiarioEmocionResponseDTO

    /**
     * Elimina una entrada del diario emocional por su identificador.
     *
     * @param id Identificador único de la entrada a eliminar.
     */
    @DELETE("/api/diario-emocion/{id}")
    suspend fun delete(
        @Path("id") id: Long,
    )
}
