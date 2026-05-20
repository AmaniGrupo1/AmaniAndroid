package org.ies.tierno.applicationamani.dto.perfil.admin

/**
 * DTO de respuesta que envuelve los datos del administrador y el token JWT.
 *
 * Se devuelve tras el inicio de sesión o actualización del perfil
 * para proporcionar tanto los datos como las credenciales de sesión.
 *
 * @property admin Datos del perfil del administrador como [AdminDTO].
 * @property token Token JWT de autenticación, o `null` si no se genera.
 */
data class AdminResponseDTO(
    val admin: AdminDTO,
    val token: String?,
)
