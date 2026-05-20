package org.ies.tierno.applicationamani.domain.usecases.role

import org.ies.tierno.applicationamani.data.repositorio.role.AdminRepository
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.dto.role.CambiarRolRequestDTO
import org.ies.tierno.applicationamani.dto.role.CambiarRolResponseDTO
import retrofit2.Response

/**
 * Caso de uso para cambiar el rol de un usuario en el sistema.
 *
 * Delega en el repositorio de administración la petición que
 * modifica el rol de un usuario (por ejemplo, "paciente" a "psicologo").
 *
 * @property repository Repositorio de administración de roles.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.role.AdminRepository
 */
class RoleAdminUseCase(
    private val repository: AdminRepository,
) {
    /**
     * Cambia el rol del usuario especificado.
     *
     * @param idUsuario Identificador único del usuario.
     * @param nuevoRol Nuevo rol a asignar ([Rol]).
     * @return [Response] con [CambiarRolResponseDTO] que contiene el resultado de la operación.
     */
    suspend operator fun invoke(
        idUsuario: Long,
        nuevoRol: Rol,
    ): Response<CambiarRolResponseDTO> =
        repository.cambiarRol(
            CambiarRolRequestDTO(
                idUsuario = idUsuario,
                nuevoRol = nuevoRol.name.lowercase(),
            ),
        )
}
