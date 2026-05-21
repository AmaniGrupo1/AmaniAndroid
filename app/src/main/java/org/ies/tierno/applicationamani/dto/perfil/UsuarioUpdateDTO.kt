package org.ies.tierno.applicationamani.dto.perfil

/**
 * DTO para actualizar los datos básicos de un usuario.
 *
 * Se utiliza como sub-DTO dentro de las solicitudes de actualización
 * de perfil de paciente, psicólogo y administrador.
 *
 * @property nombre Nuevo nombre del usuario, o `null` si no se modifica.
 * @property apellido Nuevo apellido del usuario, o `null` si no se modifica.
 * @property email Nuevo correo electrónico, o `null` si no se modifica.
 */
data class UsuarioUpdateDTO(
    val nombre: String?,
    val apellido: String?,
    val email: String?,
)
