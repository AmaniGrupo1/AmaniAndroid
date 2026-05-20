package org.ies.tierno.applicationamani.domain.models.login

/**
 * DTO de solicitud de registro para un nuevo paciente en el sistema.
 *
 * Contiene los datos personales básicos y credenciales necesarios para
 * crear una cuenta de paciente.
 *
 * @property nombre Nombre de pila del paciente.
 * @property apellido Apellidos del paciente.
 * @property email Dirección de correo electrónico que servirá como identificador de acceso.
 * @property password Contraseña elegida por el paciente.
 *
 * @see org.ies.tierno.applicationamani.dto.requestPaciente.PacienteRequest
 */
data class RegistryPacienteDTO(
    val nombre: String,
    val apellido: String,
    val email: String,
    val password: String,
)
