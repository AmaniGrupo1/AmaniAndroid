package org.ies.tierno.applicationamani.dto.perfil.psicologo

/**
 * DTO de respuesta con los datos básicos del perfil de usuario.
 *
 * Se utiliza como sub-DTO dentro de los perfiles de paciente,
 * psicólogo y administrador para representar los datos comunes.
 *
 * @property idUsuario Identificador único del usuario.
 * @property nombre Nombre del usuario.
 * @property apellido Apellido del usuario.
 * @property email Correo electrónico del usuario.
 * @property fotoPerfilUrl URL de la foto de perfil, o `null` si no tiene.
 */
data class UsuarioProfileResponseDTO(
    val idUsuario: Long? = null,
    val nombre: String? = null,
    val apellido: String? = null,
    val email: String? = null,
    val fotoPerfilUrl: String? = null,
)
