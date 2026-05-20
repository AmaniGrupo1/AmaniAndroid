package org.ies.tierno.applicationamani.data.repositorio.role

import org.ies.tierno.applicationamani.data.remoto.role.AdminApiService
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.ies.tierno.applicationamani.dto.role.CambiarRolRequestDTO
import org.ies.tierno.applicationamani.dto.role.CambiarRolResponseDTO
import retrofit2.Response

class AdminRepository(
    private val adminApiService: AdminApiService,
) {
    suspend fun cambiarRol(cambiarRolRequestDTO: CambiarRolRequestDTO): Response<CambiarRolResponseDTO> =
        adminApiService.cambiarRol(cambiarRolRequestDTO)

    suspend fun getUsuarios(
        rol: String? = null,
        dni: String? = null,
    ): Response<List<UsuarioDTO>> = adminApiService.getUsuarios(rol, dni)
}
