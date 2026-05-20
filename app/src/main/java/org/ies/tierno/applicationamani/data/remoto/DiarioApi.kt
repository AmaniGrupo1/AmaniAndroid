package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionRequestDTO
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO
import retrofit2.http.Body
import retrofit2.http.DELETE
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Path

interface DiarioApi {
    @GET("/api/diario-emocion")
    suspend fun getAll(): List<DiarioEmocionResponseDTO>

    @GET("/api/diario-emocion/{id}")
    suspend fun getById(
        @Path("id") id: Long,
    ): DiarioEmocionResponseDTO

    @GET("/api/diario-emocion/paciente/{idPaciente}")
    suspend fun getByPaciente(
        @Path("idPaciente") idPaciente: Long,
    ): List<DiarioEmocionResponseDTO>

    @POST("/api/diario-emocion")
    suspend fun create(
        @Body request: DiarioEmocionRequestDTO,
    ): DiarioEmocionResponseDTO

    @PUT("/api/diario-emocion/{id}")
    suspend fun update(
        @Path("id") id: Long,
        @Body request: DiarioEmocionRequestDTO,
    ): DiarioEmocionResponseDTO

    @DELETE("/api/diario-emocion/{id}")
    suspend fun delete(
        @Path("id") id: Long,
    )
}
