package org.ies.tierno.applicationamani.dto.perfil

data class UsuarioProfileResponseDTO (
    val idUsuario: Long? = null,
    val nombre: String? = null,
    val apellido: String? = null,
    val email: String? = null,
    val fotoPerfilUrl: String? = null
)