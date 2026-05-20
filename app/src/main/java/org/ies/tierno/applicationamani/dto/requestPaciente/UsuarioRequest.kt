package org.ies.tierno.applicationamani.dto.requestPaciente

import org.ies.tierno.applicationamani.domain.models.enumm.Rol

/**
 * DTO de solicitud con los datos de usuario para el registro de un paciente.
 *
 * Contiene las credenciales y datos personales básicos que se utilizan
 * al crear la cuenta del paciente junto con su perfil.
 *
 * @property id Identificador del usuario si ya existe, o `null` para nuevos registros.
 * @property nombre Nombre del usuario.
 * @property dni Documento nacional de identidad.
 * @property apellido Apellido del usuario.
 * @property email Correo electrónico (usado como nombre de usuario).
 * @property password Contraseña de acceso.
 * @property rol Rol asignado al usuario (normalmente «paciente»).
 * @property activo Indica si el usuario está activo (por defecto `true`).
 */
data class UsuarioRequest(
    val id: Long? = null,
    val nombre: String,
    val dni: String,
    val apellido: String,
    val email: String,
    val password: String,
    val rol: Rol,
    val activo: Boolean? = true,
)
