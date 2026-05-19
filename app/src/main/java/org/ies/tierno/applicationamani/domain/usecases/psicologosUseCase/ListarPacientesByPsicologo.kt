package org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO

class ListarPacientesByPsicologo(
    val auth: AuthRepository,
) {
    operator fun invoke(): Flow<List<PacientePsicologoResponseDTO>> = auth.getPacientesByPsicologo()
}
