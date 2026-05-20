package org.ies.tierno.applicationamani.dto.role

import org.ies.tierno.applicationamani.domain.models.enumm.Rol

/**
 * DTO de respuesta con el resultado del cambio de rol.
 *
 * Confirma la operación mostrando el identificador del usuario,
 * los roles anterior y nuevo, y un mensaje descriptivo.
 *
 * @property idUsuario Identificador único del usuario afectado.
 * @property nombre Nombre del usuario.
 * @property email Correo electrónico del usuario.
 * @property rolAnterior Rol que tenía el usuario antes del cambio.
 * @property nuevoRol Rol asignado tras la operación.
 * @property mensaje Mensaje descriptivo del resultado de la operación.
 */
data class CambiarRolResponseDTO(
    val idUsuario: Long,
    val nombre: String,
    val email: String,
    val rolAnterior: Rol,
    val nuevoRol: Rol,
    val mensaje: String,
)
