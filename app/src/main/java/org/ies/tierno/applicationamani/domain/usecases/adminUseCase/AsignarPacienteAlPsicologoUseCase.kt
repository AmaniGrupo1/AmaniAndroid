package org.ies.tierno.applicationamani.domain.usecases.adminUseCase

import org.ies.tierno.applicationamani.data.AuthRepository

/**
 * Caso de uso para asignar un paciente a un psicólogo.
 *
 * Encapsula la operación de vinculación entre un paciente y un profesional
 * delegando la petición en el repositorio de autenticación.
 *
 * @property repository Repositorio de autenticación y gestión de usuarios.
 *
 * @see org.ies.tierno.applicationamani.data.AuthRepository
 */
class AsignarPacienteAlPsicologoUseCase(
    private val repository: AuthRepository,
) {
    /**
     * Asigna el psicólogo al paciente indicado.
     *
     * @param idPaciente Identificador único del paciente.
     * @param idPsicologo Identificador único del psicólogo.
     * @return [Result.success] con `true` si la asignación fue exitosa,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend operator fun invoke(
        idPaciente: Long,
        idPsicologo: Long,
    ): Result<Boolean> = repository.asignarPsicologo(idPaciente, idPsicologo)
}
