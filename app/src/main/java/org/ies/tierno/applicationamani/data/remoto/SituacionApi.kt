package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionRequest
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.DELETE
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Path

interface SituacionApi {
    @GET("api/situaciones")
    suspend fun getSituaciones(): Response<List<SituacionDTO>>

    @GET("api/situaciones/{id}")
    suspend fun getSituacionById(
        @Path("id") id: Long,
    ): Response<SituacionDTO>

    @POST("api/situaciones/create")
    suspend fun createSituacion(
        @Body request: SituacionRequest,
    ): Response<SituacionDTO>

    @PUT("api/situaciones/update/{id}")
    suspend fun updateSituacion(
        @Path("id") id: Long,
        @Body request: SituacionRequest,
    ): Response<SituacionDTO>

    @DELETE("api/situaciones/delete/{id}")
    suspend fun deleteSituacion(
        @Path("id") id: Long,
    ): Response<Unit>
}
