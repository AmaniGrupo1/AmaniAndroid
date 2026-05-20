package org.ies.tierno.applicationamani.dto.situacionDTO

data class SituacionDTO(
    val idSituacion: Long,
    val nombre: String,
    val categoria: String? = null,
    val descripcion: String? = null,
)
