package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.domain.models.admin.ListaPacientesAndPsicologo

/**
 * Caso de uso para obtener la lista de pacientes con su psicólogo asignado.
 *
 * Devuelve un [Flow] reactivo que emite la relación paciente-psicólogo
 * obtenida del repositorio de autenticación.
 *
 * @property repository Repositorio de autenticación y gestión de usuarios.
 *
 * @see org.ies.tierno.applicationamani.data.AuthRepository
 * @see org.ies.tierno.applicationamani.presentation.viewmodels.admin.GetAllPacientAndPsicologoVeiwModel
 */
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