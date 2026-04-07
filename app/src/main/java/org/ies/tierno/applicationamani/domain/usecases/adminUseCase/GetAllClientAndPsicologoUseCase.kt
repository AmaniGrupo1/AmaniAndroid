package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo


class GetAllClientAndPsicologoUseCase(val repository: AuthRepository) {
    /**
     * Obtiene un flujo con la lista de pacientes y sus psicólogos asignados.
     *
     * @return [Flow] que emite una lista de [ListaPacientesAndPsicologo].
     */
    operator fun invoke(): Flow<List<ListaPacientesAndPsicologo>> {
        return repository.getPacientesConPsicologo()
    }
}