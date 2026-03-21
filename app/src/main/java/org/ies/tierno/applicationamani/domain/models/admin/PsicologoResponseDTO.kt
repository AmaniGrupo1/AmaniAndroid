package org.ies.tierno.applicationamani.domain.models.admin

data class PsicologoSelfResponseDTO(
    val idPsicologo: Long,

    val nombre: String,

    val apellido: String,

    val especialidad: String,

    val experiencia: Int?,

    val descripcion: String?,

    val licencia: String?
)