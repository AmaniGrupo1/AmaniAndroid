package org.ies.tierno.applicationamani.domain.usecases.role

import org.ies.tierno.applicationamani.data.repositorio.role.AdminRepository
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import retrofit2.Response

class GetUsuariosUseCase(
    private val repository: AdminRepository,
) {
    suspend operator fun invoke(
        rol: String? = null,
        dni: String? = null,
    ): Response<List<UsuarioDTO>> = repository.getUsuarios(rol, dni)
}
