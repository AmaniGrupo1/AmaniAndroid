package org.ies.tierno.applicationamani.dto.requestPaciente

data class DireccionResponseDTO (
    val calle: String,
    val ciudad: String? = null,
    val provincia: String? = null,
    val codigoPostal: String? = null,
    val pais: String? = null
)