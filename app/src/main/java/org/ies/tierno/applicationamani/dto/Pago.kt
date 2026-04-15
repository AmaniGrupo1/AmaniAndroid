package org.ies.tierno.applicationamani.dto

import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import java.math.BigDecimal

data class Pago (
    val idCita : Long,
    val metodoPago: MetodoPago,
    val monto : BigDecimal
)