package org.ies.tierno.applicationamani.dto.requestPaciente

/**
 * DTO de solicitud con los datos de la cuenta de usuario.
 *
 * Se incluye dentro de [PacienteRequest] para crear la cuenta
 * asociada al paciente durante el registro.
 *
 * @property nombre Nombre del usuario.
 * @property apellido Apellido del usuario.
 * @property email Dirección de correo electrónico.
 * @property password Contraseña elegida por el usuario.
 * @property rol Rol del usuario (`"paciente"`, `"admin"` o `"psicologo"`).
 * @property activo Indica si la cuenta está activa. Por defecto `true`.
 */
data class UsuarioRequest(
    val nombre: String,
    val apellido: String,
    val email: String,
    val password: String,
    val rol: String,      // "paciente", "admin", "psicologo"
    val activo: Boolean? = true
)
