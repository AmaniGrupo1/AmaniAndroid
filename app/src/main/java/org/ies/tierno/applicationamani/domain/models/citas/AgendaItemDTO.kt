package org.ies.tierno.applicationamani.domain.models.citas

import java.time.LocalDate
import java.time.LocalTime

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