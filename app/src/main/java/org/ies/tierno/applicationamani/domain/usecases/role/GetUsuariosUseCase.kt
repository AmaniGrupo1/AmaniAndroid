package org.ies.tierno.applicationamani.domain.usecases.role

import org.ies.tierno.applicationamani.data.repositorio.role.AdminRepository
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import retrofit2.Response

/**
 * Caso de uso para obtener la lista de usuarios del sistema.
 *
 * Delega en el repositorio de administración la consulta de usuarios,
 * permitiendo filtrar por rol y/o DNI.
 *
 * @property repository Repositorio de administración de usuarios.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.role.AdminRepository
 */
class GetUsuariosUseCase(
    private val repository: AdminRepository,
) {
    /**
     * Obtiene la lista de usuarios, opcionalmente filtrada.
     *
     * @param rol Rol por el que filtrar (por ejemplo, "psicologo", "paciente"), o `null` para todos.
     * @param dni DNI por el que filtrar, o `null` para no filtrar.
     * @return [Response] con la lista de [UsuarioDTO].
     */
    suspend operator fun invoke(
        rol: String? = null,
        dni: String? = null,
    ): Response<List<UsuarioDTO>> = repository.getUsuarios(rol, dni)
}
