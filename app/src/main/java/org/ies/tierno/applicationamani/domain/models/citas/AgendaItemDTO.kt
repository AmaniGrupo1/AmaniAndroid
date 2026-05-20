package org.ies.tierno.applicationamani.domain.models.citas

import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import java.time.LocalDate
import java.time.LocalTime

/**
 * Representa un elemento de la agenda de citas, utilizado tanto por el psicólogo
 * como por el administrador para visualizar la programación diaria o semanal.
 *
 * @property id Identificador único del elemento en la agenda.
 * @property idPaciente Identificador del paciente asociado a la cita.
 * @property fecha Fecha en la que se programa la cita.
 * @property horaInicio Hora de comienzo de la cita.
 * @property horaFin Hora de finalización de la cita.
 * @property tipo Tipo del elemento en la agenda (cita, bloqueo, disponibilidad).
 * @property estado Estado actual de la cita.
 * @property motivo Motivo o descripción de la consulta.
 * @property duracionMinutos Duración estimada de la cita en minutos.
 * @property nombrePaciente Nombre completo del paciente citado.
 * @property nombrePsicologo Nombre completo del psicólogo asignado.
 * @property terapia Datos de la terapia asociada, si aplica.
 * @property metodoPago Método de pago acordado para la sesión.
 * @property estadoPago Estado del pago asociado a la cita.
 * @property modalidad Modalidad en que se realizará la cita (presencial o llamada).
 */
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
    val modalidad: ModalidadCita,
)
