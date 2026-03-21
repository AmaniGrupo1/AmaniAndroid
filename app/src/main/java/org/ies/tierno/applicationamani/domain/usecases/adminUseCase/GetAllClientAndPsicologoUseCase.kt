package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.domain.models.admin.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.dto.login.PsicologoConPacientesDTO

class GetAllClientAndPsicologoUseCase(val repository: AuthRepository) {
    operator fun invoke(): Flow<List<PsicologoConPacientesDTO>> {
        return repository.getPacientesConPsicologo()
    }
}