package org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO

/**
 * Caso de uso para listar los pacientes asignados a un psicólogo.
 *
 * Devuelve un [Flow] reactivo que emite la lista de pacientes
 * vinculados al psicólogo autenticado en el sistema.
 *
 * @property auth Repositorio de autenticación y gestión de usuarios.
 *
 * @see org.ies.tierno.applicationamani.data.AuthRepository
 * @see org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.PsicologoViewModel
 */
class ListarPacientesByPsicologo(
    val auth: AuthRepository,
) {
    /**
     * Obtiene un flujo con la lista de pacientes del psicólogo autenticado.
     *
     * @return [Flow] que emite una lista de [PacientePsicologoResponseDTO].
     */
    operator fun invoke(): Flow<List<PacientePsicologoResponseDTO>> = auth.getPacientesByPsicologo()
}
