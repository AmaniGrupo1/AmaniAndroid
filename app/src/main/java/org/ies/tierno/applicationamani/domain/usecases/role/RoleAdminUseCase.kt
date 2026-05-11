package org.ies.tierno.applicationamani.domain.usecases.role

import org.ies.tierno.applicationamani.data.repositorio.role.AdminRepository
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.dto.role.CambiarRolRequestDTO
import org.ies.tierno.applicationamani.dto.role.CambiarRolResponseDTO
import retrofit2.Response

class RoleAdminUseCase(
    private val repository: AdminRepository
) {

    suspend operator fun invoke(
        idUsuario: Long,
        nuevoRol: Rol
    ): Response<CambiarRolResponseDTO> {

        return repository.cambiarRol(

            CambiarRolRequestDTO(
                idUsuario = idUsuario,
                nuevoRol = nuevoRol.name
            )

        )
    }
}