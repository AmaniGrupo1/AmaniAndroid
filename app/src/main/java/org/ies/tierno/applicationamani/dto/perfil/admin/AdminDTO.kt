package org.ies.tierno.applicationamani.dto.perfil.admin


data class AdminDTO(
    val idUsuario: Long,
    val nombre: String,
    val apellido: String,
    val email: String,
    val fotoPerfilUrl: String
)