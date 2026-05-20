package org.ies.tierno.applicationamani.dto.terapias

import java.math.BigDecimal

data class TerapiaRequest(
    val nombre: String,
    val duracionMinutos: Int,
    val precio: BigDecimal,
)
