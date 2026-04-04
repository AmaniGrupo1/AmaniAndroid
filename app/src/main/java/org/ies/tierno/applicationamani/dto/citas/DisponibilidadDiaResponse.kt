package org.ies.tierno.applicationamani.dto.citas

import java.time.LocalDate

data class DisponibilidadDiaResponse(
    val fecha: LocalDate,
    val diaCompleto : Boolean,
    val franjas: List<FranjaDisponibilidadResponse> = emptyList()
)
