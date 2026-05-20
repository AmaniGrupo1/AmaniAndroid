package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO

class ListarPsicologoAdminUseCase(
    private val authRepository: AuthRepository,
) {
    // Psicólogos ACTIVOS
    operator fun invoke(): Flow<List<PsicologoSelfResponseDTO>> = authRepository.getPsicologos()

    // Psicólogos DADOS DE BAJA
    fun getPsicologosBaja(): Flow<List<PsicologoSelfResponseDTO>> = authRepository.getPsicologosBaja()
}
