package org.ies.tierno.applicationamani.data.remoto

import okhttp3.Response
import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.Path

interface TestApi {
    @POST("/api/admin/preguntas")
    suspend fun createPregunta(@Body pregunta: PreguntaRequest): OpcionAdminDTO

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
