package org.ies.tierno.applicationamani.dto.citas

data class DisponibilidadDiaResponse(
    val fecha: String,
    val franjas: List<FranjaDisponibilidadResponse> = emptyList()
)
