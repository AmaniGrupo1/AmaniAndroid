package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import org.ies.tierno.applicationamani.data.AuthRepository
import org.ies.tierno.applicationamani.dto.admin.MessageResponse

/**
 * Caso de uso para dar de baja a un paciente.
 *
 * Delega en el repositorio de autenticación la petición HTTP
 * que marca a un paciente como inactivo en el backend.
 *
 * @property repository Repositorio de autenticación y gestión de usuarios.
 *
 * @see org.ies.tierno.applicationamani.data.AuthRepository
 * @see org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
 */
class DarBajaPacienteUseCase(
    val repository: AuthRepository,
) {
    /**
     * Da de baja al paciente identificado por [id].
     *
     * @param id Identificador único del paciente.
     * @return [Result.success] con mensaje de confirmación,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend operator fun invoke(id: Long): Result<MessageResponse> = repository.darBajaPaciente(id)

    suspend fun darAltaPsicologo(id: Long): Result<MessageResponse> = repository.darAltaPsicologo(id)
}
