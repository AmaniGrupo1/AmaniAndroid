package org.ies.tierno.applicationamani.domain.usecases.login

import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.domain.models.login.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.login.RegistryPacienteDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest

class LoginUseCase(private val repository: AuthRepository) {
    suspend fun login(request: LoginRequestDTO): Result<LoginResponseDTO> {
        return repository.login(request)
    }

    suspend fun registerPaciente(request: PacienteRequest): Result<LoginResponseDTO> {
        return repository.registerPaciente(request)
    }

    suspend fun registerPacienteAdmin(request: PacienteRequest): Result<LoginResponseDTO> {
        return repository.registerPacienteAdmin(request)
    }

    suspend fun registrarAdmin(request: RegistryPacienteDTO): Result<LoginResponseDTO> {
        return repository.registerAdmin(request)
    }

    suspend fun registrarPsicologo(request: RegistryPacienteDTO): Result<LoginResponseDTO> {
        return repository.registerPsicologo(request)
    }

}