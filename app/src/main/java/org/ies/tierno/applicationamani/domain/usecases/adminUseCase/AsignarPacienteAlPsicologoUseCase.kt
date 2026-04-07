package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.requestPaciente.AsignarPacienteAlPsicologoRequestDTO

class AsignarPacienteAlPsicologoUseCase(private val repository: AuthRepository) {

    suspend operator fun invoke(idPaciente : Long, idPsicologo : Long): Result<String> {
        return repository.asignarPsicologo(idPaciente, idPsicologo)
    }
}