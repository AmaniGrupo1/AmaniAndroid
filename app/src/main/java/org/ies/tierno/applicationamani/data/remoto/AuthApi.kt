package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.domain.models.admin.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.domain.models.admin.RegistrarPsicologoAdminDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.dto.login.PsicologoConPacientesDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.AsignarPacienteAlPsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Path

interface AuthApi {

    @POST("auth/login")
    suspend fun login(
        @Body request: LoginRequestDTO
    ): Response<LoginResponseDTO>

    @POST("/auth/register-paciente")
    suspend fun registerPaciente(
        @Body request: PacienteRequest
    ): Response<LoginResponseDTO>

    @POST("/auth/registry/pacienteAdmin")
    suspend fun registerPacienteAdmin(
        @Body request: PacienteRequest
    ): Response<LoginResponseDTO>

    @POST("/auth/register-admin")
    suspend fun registerAdmin(
        @Body request: RegistryPacienteDTO
    ): Response<LoginResponseDTO>

    //Listo los pacientes con su psicologo
    @GET("api/admin/psicologos/pacientes")
    suspend fun getPacientesConPsicologo(): Response<List<PsicologoConPacientesDTO>>

    @GET("/api/pacientes/admin")
    suspend fun getPacientes(): Response<List<DatosPacienteAdminDTO>>

    @PUT("/auth/pacientes/{id}/baja")
    suspend fun darBajaPaciente(
        @Path("id") id: Long
    ): Response<String>

    @GET("/api/admin/psicologos")
    suspend fun getPsicologos(): Response<List<PsicologoSelfResponseDTO>>

    @POST("api/admin/psicologos/create")
    suspend fun crearPsicologo(
        @Body request: RegistrarPsicologoAdminDTO
    ): Response<PsicologoSelfResponseDTO>

    @POST("/api/admin/psicologos/asignar-psicologo")
    suspend fun asignarPacienteAlPsicologo(
        @Body request: AsignarPacienteAlPsicologoRequestDTO
    ): Response<String>

}