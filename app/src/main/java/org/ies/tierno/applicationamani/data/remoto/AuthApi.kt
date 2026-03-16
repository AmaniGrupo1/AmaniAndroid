package org.ies.tierno.applicationamani.data.remoto

import retrofit2.Response
import org.ies.tierno.applicationamani.domain.models.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.RegistryPacienteDTO
import retrofit2.http.Body
import retrofit2.http.POST

interface AuthApi {

    @POST("auth/login")
    suspend fun login(
        @Body request: LoginRequestDTO
    ): Response<LoginResponseDTO>

    @POST("auth/register-paciente")
    suspend fun registerPaciente(
        @Body request: RegistryPacienteDTO
    ): Response<LoginResponseDTO>

    @POST("auth/register-admin")
    suspend fun registerAdmin(
        @Body request: RegistryPacienteDTO
    ): Response<LoginResponseDTO>

    @POST("auth/register-psicologo")
    suspend fun registerPsicologo(
        @Body request: RegistryPacienteDTO
    ): Response<LoginResponseDTO>

}