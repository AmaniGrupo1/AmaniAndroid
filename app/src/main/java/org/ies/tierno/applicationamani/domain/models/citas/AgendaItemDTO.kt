package org.ies.tierno.applicationamani.domain.models.citas

import org.ies.tierno.applicationamani.dto.citas.TerapiaResponseDTO
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalTime

data class AgendaItemDTO(
    val id: Long,
    val fecha: LocalDate,
    val horaInicio: LocalTime,
    val horaFin: LocalTime,
    val tipo: String,
    val estado: String?,          // nullable
    val motivo: String?,
    val duracionMinutos: Int?,    // nullable
    val nombrePaciente: String?,  // nullable
    val nombrePsicologo: String?,
    val terapiaResponseDTO: TerapiaResponseDTO,
    val metodoPago: String? = null,
    val monto: BigDecimal? = null,
    val idTipoTerapia: Long? = null
)