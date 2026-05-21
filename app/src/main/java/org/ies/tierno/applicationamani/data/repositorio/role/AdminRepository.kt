package org.ies.tierno.applicationamani.data.repositorio.role

import org.ies.tierno.applicationamani.data.remoto.role.AdminApiService
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.ies.tierno.applicationamani.dto.role.CambiarRolRequestDTO
import org.ies.tierno.applicationamani.dto.role.CambiarRolResponseDTO
import retrofit2.Response

/**
 * Repositorio para operaciones administrativas de gestión de roles y usuarios.
 *
 * Proporciona acceso a las funcionalidades exclusivas del rol administrador,
 * como el cambio de roles y la consulta filtrada de usuarios del sistema.
 *
 * @property adminApiService Interfaz Retrofit para los endpoints de administración.
 */
class AdminRepository(
    private val adminApiService: AdminApiService,
) {
    /**
     * Cambia el rol de un usuario en el sistema.
     *
     * @param cambiarRolRequestDTO DTO con el identificador del usuario y el nuevo rol a asignar.
     * @return [Response] con [CambiarRolResponseDTO] indicando el resultado del cambio.
     */
    suspend fun cambiarRol(cambiarRolRequestDTO: CambiarRolRequestDTO): Response<CambiarRolResponseDTO> =
        adminApiService.cambiarRol(cambiarRolRequestDTO)

    /**
     * Obtiene la lista de usuarios del sistema con filtros opcionales.
     *
     * @param rol Filtro opcional por rol de usuario (paciente, psicólogo, admin).
     * @param dni Filtro opcional por DNI del usuario.
     * @return [Response] con la lista de [UsuarioDTO] que coinciden con los filtros.
     */
    suspend fun getUsuarios(
        rol: String? = null,
        dni: String? = null,
    ): Response<List<UsuarioDTO>> = adminApiService.getUsuarios(rol, dni)
}
