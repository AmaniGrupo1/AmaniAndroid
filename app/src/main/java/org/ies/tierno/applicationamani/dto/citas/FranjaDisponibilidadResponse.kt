package org.ies.tierno.applicationamani.dto.citas

data class FranjaDisponibilidadResponse(
    val hora: String,
    val ocupada: Boolean,
    val descripcion: String? = null
)
