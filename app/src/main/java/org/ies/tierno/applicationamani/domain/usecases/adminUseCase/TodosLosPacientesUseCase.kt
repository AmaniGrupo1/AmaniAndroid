package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.domain.models.admin.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO

/**
 * Caso de uso para obtener la lista de todos los pacientes registrados.
 *
 * Devuelve un [Flow] reactivo que emite los datos de todos los pacientes
 * destinados a la vista de administración.
 *
 * @property repository Repositorio de autenticación y gestión de usuarios.
 *
 * @see org.ies.tierno.applicationamani.data.AuthRepository
 * @see org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
 */
class TodosLosPacientesUseCase(val repository: AuthRepository) {
    /**
     * Obtiene un flujo con la lista de todos los pacientes.
     *
     * @return [Flow] que emite una lista de [DatosPacienteAdminDTO].
     */
    operator fun invoke(): Flow<List<DatosPacienteAdminDTO>> {
        return repository.getPaciente()
    }
}