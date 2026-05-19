package org.ies.tierno.applicationamani.dto.requestPaciente

import java.math.BigDecimal

data class CitaRequest(
    val idPaciente: Long,
    val idPsicologo: Long,
    val startDatetime: String,
    val durationMinutes: Int? = null,
    val metodoPago: String? = null,
    val monto: BigDecimal? = null,
    val estadoPago: String = "PENDIENTE",
    val estado: String? = null,
    val motivo: String? = null,
    val idTipoTerapia: Long? = null,
)
