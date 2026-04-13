package org.ies.tierno.applicationamani.domain.models.admin


import kotlinx.serialization.Serializable

@Serializable
data class RegistrarPsicologoAdminDTO(
    val nombrePsicologo: String,
    val apellidoPsicologo: String,
    val email: String,
    val password: String? = null, // opcional si no se quiere cambiar contraseña
    val especialidad: String,
    val experiencia: Int? = null, // opcional
    val descripcion: String? = null,
    val licencia: String? = null
)