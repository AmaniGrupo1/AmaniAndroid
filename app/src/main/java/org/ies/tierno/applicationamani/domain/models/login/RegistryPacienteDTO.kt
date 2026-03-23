package org.ies.tierno.applicationamani.domain.models.login

/**
 * DTO de solicitud de registro para usuarios con rol de administrador o psicólogo.
 *
 * Contiene los datos básicos necesarios para crear una cuenta de usuario
 * sin los campos extendidos propios de un paciente.
 *
 * @property nombre Nombre del usuario a registrar.
 * @property apellido Apellido del usuario a registrar.
 * @property email Dirección de correo electrónico.
 * @property password Contraseña elegida por el usuario.
 *
 * @see org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
 */
data class RegistryPacienteDTO(
    val nombre: String,
    val apellido: String,
    val email: String,
    val password: String
)