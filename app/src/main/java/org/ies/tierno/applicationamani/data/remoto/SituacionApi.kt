package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import retrofit2.Response
import retrofit2.http.GET
import retrofit2.http.Path

interface SituacionApi {
    @GET("api/situaciones")
    suspend fun getSituaciones(): Response<List<SituacionDTO>>

    @GET("api/situaciones/{id}")
    suspend fun getSituacionById(@Path("id") id: Long): Response<SituacionDTO>
}