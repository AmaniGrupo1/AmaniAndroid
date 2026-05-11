package org.ies.tierno.applicationamani.dto.role

import org.ies.tierno.applicationamani.domain.models.enumm.Rol

data class CambiarRolResponseDTO(
    val idUsuario: Long,
    val nombre: String,
    val email: String,
    val rolAnterior: Rol,
    val nuevoRol: Rol,
    val mensaje: String
)