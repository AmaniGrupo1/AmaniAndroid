package org.ies.tierno.applicationamani.dto.perfil

data class UpdatePsicologoRequestDTO(
    val especialidad: String?,
    val experiencia: Int?,
    val descripcion: String?,
    val licencia: String?,
    val usuario: UsuarioUpdateDTO?
)