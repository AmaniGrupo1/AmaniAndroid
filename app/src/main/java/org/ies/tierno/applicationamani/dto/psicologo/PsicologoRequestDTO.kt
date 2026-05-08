package org.ies.tierno.applicationamani.dto.psicologo

data class PsicologoRequestDTO(
    val nombrePsicologo: String,
    val apellidoPsicologo: String,
    val email: String,
    val password: String,
    val especialidad: String,
    val experiencia: Int? = null,
    val descripcion: String? = null,
    val licencia: String? = null,
    val telefono: String? = null
)