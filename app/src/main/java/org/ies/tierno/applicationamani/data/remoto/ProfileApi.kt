package org.ies.tierno.applicationamani.data.remoto


import okhttp3.MultipartBody
import org.ies.tierno.applicationamani.dto.perfil.admin.AdminDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.AdminResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.UpdateAdminRequestDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.UpdatePacienteRequestDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.UpdatePsicologoRequestDTO
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.Multipart
import retrofit2.http.POST
import retrofit2.http.PUT
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

    @GET("/api/pacientes/usuario/{id}")
    suspend fun getPacienteByIdFirebase(
        @Path("id") id: Long
    ): PacienteProfileResponseDTO

    @GET("/api/psicologo/usuario/{id}")
    suspend fun getPsicologoById(
        @Path("id") id: Long
    ): PsicologoProfileResponseDTO

    @PUT("/api/psicologo/update/{id}")
    suspend fun updateProfile(
        @Path("id") id: Long,
        @Body psicologoProfile: UpdatePsicologoRequestDTO
    ): PsicologoProfileResponseDTO

    // ============================
    // 🟡 ADMIN (NUEVO)
    // ============================

    @GET("/api/psicologo/admin/{id}/perfil")
    suspend fun getAdminProfile(
        @Path("id") id: Long
    ): AdminDTO

    @PUT("/api/psicologo/admin/{id}/update")
    suspend fun updateAdmin(
        @Path("id") id: Long,
        @Body dto: UpdateAdminRequestDTO
    ): AdminResponseDTO

    @Multipart
    @POST("/api/psicologo/admin/{id}/foto")
    suspend fun updateAdminPhoto(
        @Path("id") id: Long,
        @Part file: MultipartBody.Part
    ): AdminDTO


    // ============================
    // 🟢 PACIENTE (NUEVO)
    // ============================

    @GET("/api/psicologo/paciente/{id}/get")
    suspend fun getPacienteProfile(
        @Path("id") id: Long
    ): PacienteProfileResponseDTO

    @PUT("/api/psicologo/paciente/update/{id}")
    suspend fun updatePaciente(
        @Path("id") id: Long,
        @Body dto: UpdatePacienteRequestDTO
    ): PacienteResponseDTO

    @Multipart
    @POST("/api/psicologo/paciente/{id}/foto")
    suspend fun updatePacientePhoto(
        @Path("id") id: Long,
        @Part file: MultipartBody.Part
    ): PacienteProfileResponseDTO


}