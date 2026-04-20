package org.ies.tierno.applicationamani.dto.citas

import java.math.BigDecimal

data class TerapiaResponseDTO (
 val idTipo : Long,
 val nombre : String,
 val duracionMinutos : Int,
 val precio : BigDecimal
)