package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.domain.models.admin.PsicologoSelfResponseDTO

class ListarPsicologoAdminUseCase(val authRepository: AuthRepository) {
     operator fun invoke(): Flow<List<PsicologoSelfResponseDTO>> {
        return authRepository.getPsicologos()
    }
}