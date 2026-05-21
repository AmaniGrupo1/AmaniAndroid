package org.ies.tierno.applicationamani.dto.perfil.paciente

/**
 * DTO de respuesta que envuelve los datos del perfil del paciente y el token JWT.
 *
 * Se devuelve tras el inicio de sesión o actualización del perfil
 * para proporcionar tanto los datos como las credenciales de sesión.
 *
 * @property paciente Datos del perfil del paciente como [PacienteProfileResponseDTO].
 * @property token Token JWT de autenticación, o `null` si no se genera.
 */
data class PacienteResponseDTO(
    val paciente: PacienteProfileResponseDTO,
    val token: String?,
)
