package org.ies.tierno.applicationamani.domain.models.login

/**
 * DTO de solicitud de inicio de sesión.
 *
 * Contiene las credenciales que el usuario introduce en la pantalla
 * de login y que se envían al endpoint `POST /auth/login`.
 *
 * @property email Dirección de correo electrónico del usuario.
 * @property password Contraseña del usuario.
 *
 * @see LoginResponseDTO
 */
data class LoginRequestDTO(
    val email: String,
    val password: String
)