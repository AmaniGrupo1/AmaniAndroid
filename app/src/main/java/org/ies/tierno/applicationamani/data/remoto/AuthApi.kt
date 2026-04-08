package org.ies.tierno.applicationamani.data.remoto

import org.ies.tierno.applicationamani.domain.models.admin.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
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


    @POST("/api/admin/psicologos/create")
    suspend fun registerPsicologo(
        @Body request: PsicologoRequestDTO
    ): Response<PsicologoSelfResponseDTO>


    @GET("/api/admin/psicologos/pacientes")
    suspend fun getPacientesConPsicologo(): Response<List<ListaPacientesAndPsicologo>>

    @GET("/api/pacientes/admin")
    suspend fun getPacientes(): Response<List<DatosPacienteAdminDTO>>

    @PUT("/auth/pacientes/{id}/baja")
    suspend fun darBajaPaciente(
        @Path("id") id: Long
    ): Response<String>


    @POST("/api/admin/psicologos/asignar-psicologo")
    suspend fun asignarPsicologo(
        @Body request: AsignarPacienteAlPsicologoRequestDTO
    ): Response<Boolean>

    @GET("/api/admin/psicologos")
    suspend fun getPsicologos(): Response<List<PsicologoSelfResponseDTO>>

    @GET("/api/psicologo/pacientes/getAll")
    suspend fun getPacientesByPsicologo() : Response<List<PacientePsicologoResponseDTO>>
}
