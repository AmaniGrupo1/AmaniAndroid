package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST

interface TestApi {
    @POST("/api/admin/preguntas")
    suspend fun createPregunta(@Body pregunta: PreguntaRequest): OpcionAdminDTO

    @GET("/api/paciente/preguntas")
    suspend fun getPreguntas(): List<OpcionAdminDTO>
}
