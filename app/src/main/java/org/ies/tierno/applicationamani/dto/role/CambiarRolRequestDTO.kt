package org.ies.tierno.applicationamani.dto.role

/**
 * DTO de solicitud para cambiar el rol de un usuario.
 *
 * Permite al administrador modificar el rol asignado a un usuario
 * (p. ej. de «paciente» a «psicologo»).
 *
 * @property idUsuario Identificador único del usuario cuyo rol se va a cambiar.
 * @property nuevoRol Nombre del nuevo rol a asignar.
 */
data class CambiarRolRequestDTO(
    val idUsuario: Long,
    val nuevoRol: String,
)
