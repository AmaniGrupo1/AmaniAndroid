package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import org.ies.tierno.applicationamani.data.AuthRepository

class AsignarPacienteAlPsicologoUseCase(
    private val repository: AuthRepository,
) {
    suspend operator fun invoke(
        idPaciente: Long,
        idPsicologo: Long,
    ): Result<Boolean> = repository.asignarPsicologo(idPaciente, idPsicologo)
}
