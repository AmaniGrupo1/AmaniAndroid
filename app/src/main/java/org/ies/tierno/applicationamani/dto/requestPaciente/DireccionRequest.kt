package org.ies.tierno.applicationamani.dto.requestPaciente

data class DireccionRequest(
    val idPaciente: Long? = null,
    val calle: String,
    val ciudad: String? = null,
    val provincia: String? = null,
    val codigoPostal: String? = null,
    val pais: String? = null,
    val descripcion: String? = null
)