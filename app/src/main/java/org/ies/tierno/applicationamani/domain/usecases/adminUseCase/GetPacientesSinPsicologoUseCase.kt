package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.admin.PacienteBasicoResponseDTO

class GetPacientesSinPsicologoUseCase(
    private val repository: AuthRepository
) {
    operator fun invoke(): Flow<List<PacienteBasicoResponseDTO>> {
        return repository.getPacientesSinPsicologo()
    }
}