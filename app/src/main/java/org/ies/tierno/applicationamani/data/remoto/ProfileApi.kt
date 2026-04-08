package org.ies.tierno.applicationamani.data.remoto


import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO
import retrofit2.http.GET
import retrofit2.http.Multipart
import retrofit2.http.POST
import retrofit2.http.Part
import retrofit2.http.Path

interface ProfileApi {

    @Multipart
    @POST("/api/psicologo/{id}/foto")
    suspend fun uploadFoto(
        @Path("id") id: Long,
        @Part file: MultipartBody.Part
    ): PsicologoProfileResponseDTO

    @GET("/api/psicologo/{id}/perfil")
    suspend fun getProfilePsicologo(
        @Path("id") id: Long
    ): PsicologoProfileResponseDTO

}