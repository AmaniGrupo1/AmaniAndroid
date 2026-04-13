package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.Path

/**
 * Interfaz de la API REST para la gestión de tests y preguntas.
 *
 * Define los endpoints HTTP que Retrofit implementará en tiempo de
 * ejecución para la creación de preguntas por el administrador y
 * la obtención de preguntas por el paciente.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi
 */
interface TestApi {
    /**
     * Crea una nueva pregunta de test en el sistema.
     *
     * @param pregunta Datos de la pregunta a crear (texto, tipo y opciones).
     * @return [OpcionAdminDTO] con los datos de la pregunta creada.
     */
    @POST("/api/admin/preguntas")
    suspend fun createPregunta(@Body pregunta: PreguntaRequest): OpcionAdminDTO

    /**
     * Obtiene todas las preguntas de test disponibles para el paciente.
     *
     * @return Lista de [OpcionAdminDTO] con las preguntas y sus opciones.
     */
    @GET("/api/paciente/preguntas")
    suspend fun getPreguntas(): List<OpcionAdminDTO>

    // NUEVO ENDPOINT
    @POST("/api/paciente/preguntas/responder/{idPaciente}")
    suspend fun responderTest(

        @Path("idPaciente")
        idPaciente: Long,

        @Body
        respuestas: List<RespuestasRequestDTO>

    )
}
