package org.ies.tierno.applicationamani.domain.models.login

data class LoginResponseDTO(

    val idUsuario: Long,
    val nombre: String,
    val rol: String,
    val token : String
)