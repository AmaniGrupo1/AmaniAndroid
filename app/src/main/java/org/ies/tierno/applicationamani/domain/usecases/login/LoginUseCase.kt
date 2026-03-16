package org.ies.tierno.applicationamani.domain.usecases.login

import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.domain.models.LoginRequestDTO
import org.ies.tierno.applicationamani.domain.models.LoginResponseDTO
import org.ies.tierno.applicationamani.domain.models.RegistryPacienteDTO

class LoginUseCase(private val repository: AuthRepository) {
    suspend fun login(request: LoginRequestDTO): Result<LoginResponseDTO> {
        return repository.login(request)
    }

    suspend fun registerPaciente(request: RegistryPacienteDTO): Result<LoginResponseDTO> {
        return repository.registerPaciente(request)
    }
}