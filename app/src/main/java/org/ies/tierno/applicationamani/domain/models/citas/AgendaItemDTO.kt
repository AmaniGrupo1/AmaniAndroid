package org.ies.tierno.applicationamani.domain.models.citas

import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import java.time.LocalDate
import java.time.LocalTime

data class AgendaItemDTO(
    val id: Long,
    val idPaciente: Long?,
    val fecha: LocalDate,
    val horaInicio: LocalTime,
    val horaFin: LocalTime,
    val tipo: String,
    val estado: String?,
    val motivo: String?,
    val duracionMinutos: Int?,
    val nombrePaciente: String?,
    val nombrePsicologo: String?,
    val terapia: TerapiaResponseDTO?,
    val metodoPago: MetodoPago?,
    val estadoPago: EstadoPago?,
    val modalidad : ModalidadCita
)
