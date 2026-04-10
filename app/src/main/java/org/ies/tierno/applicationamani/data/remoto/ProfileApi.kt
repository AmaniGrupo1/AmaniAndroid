package org.ies.tierno.applicationamani.data.remoto


import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.dto.perfil.PacienteProfileResponseDTO
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

    @GET("/api/psicologo/pacientes/{idPaciente}/psicologo")
    suspend fun obtenerPsicologoAsignado(
        @Path("idPaciente") idPaciente: Long
    ): PsicologoProfileResponseDTO

    @GET("/api/pacientes/{id}")
    suspend fun getPacienteById(
        @Path("id") id: Long
    ): PacienteProfileResponseDTO

    @GET("/api/psicologo/usuario/{id}")
    suspend fun getPsicologoById(
        @Path("id") id: Long
    ): PsicologoProfileResponseDTO
}