package org.ies.tierno.applicationamani.dto.citas

import java.time.LocalTime
import java.time.LocalDate

data class AgendaItemDTO(
    val id: Long,
    val fecha: LocalDate,
    val horaInicio: LocalTime,
    val horaFin: LocalTime,
    val tipo: String,
    val estado: String,
    val motivo: String?,
    val duracionMinutos: Int,
    val nombrePaciente: String,
    val nombrePsicologo: String
)

