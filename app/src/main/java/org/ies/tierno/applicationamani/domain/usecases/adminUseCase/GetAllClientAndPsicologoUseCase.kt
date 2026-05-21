package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo

/**
 * Caso de uso para obtener todos los pacientes junto con los psicólogos
 * que tienen asignados.
 *
 * Proporciona un flujo reactivo que emite la relación completa de pacientes
 * y sus psicólogos para la vista de administración.
 *
 * @property repository Repositorio de autenticación y gestión de usuarios.
 *
 * @see org.ies.tierno.applicationamani.data.AuthRepository
 */
class GetAllClientAndPsicologoUseCase(
    val repository: AuthRepository,
) {
    /**
     * Obtiene un flujo con la lista de pacientes y sus psicólogos asignados.
     *
     * @return [Flow] que emite una lista de [ListaPacientesAndPsicologo].
     */
    operator fun invoke(): Flow<List<ListaPacientesAndPsicologo>> = repository.getPacientesConPsicologo()
}
