package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.admin.PacienteBasicoResponseDTO

/**
 * Caso de uso para obtener la lista de pacientes que aún no tienen
 * un psicólogo asignado.
 *
 * Devuelve un flujo reactivo con los pacientes pendientes de asignación
 * para que el administrador pueda vincularlos a un profesional.
 *
 * @property repository Repositorio de autenticación y gestión de usuarios.
 *
 * @see org.ies.tierno.applicationamani.data.AuthRepository
 */
class GetPacientesSinPsicologoUseCase(
    private val repository: AuthRepository,
) {
    /**
     * Obtiene un flujo con los pacientes sin psicólogo asignado.
     *
     * @return [Flow] que emite una lista de [PacienteBasicoResponseDTO].
     */
    operator fun invoke(): Flow<List<PacienteBasicoResponseDTO>> = repository.getPacientesSinPsicologo()
}