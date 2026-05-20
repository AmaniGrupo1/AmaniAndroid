package org.ies.tierno.applicationamani.dto.situacionDTO

data class SituacionRequest(
    val nombre: String,
    val categoria: String,
    val descripcion: String,
    val activo: Boolean = true,
)
