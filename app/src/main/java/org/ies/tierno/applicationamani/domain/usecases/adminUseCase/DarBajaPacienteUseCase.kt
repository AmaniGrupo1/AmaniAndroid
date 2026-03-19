package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import org.ies.tierno.applicationamani.data.AuthRepository

class DarBajaPacienteUseCase(val repository: AuthRepository) {
    suspend operator fun invoke(id: Long): Result<String> {
        return repository.darBajaPaciente(id)
    }
}