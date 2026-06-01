package org.ies.tierno.applicationamani.dto

import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago

/**
 * DTO de respuesta con los datos de una cita desde la perspectiva del paciente.
 *
 * Contiene la fecha, hora, duración, estado, modalidad y tipo de terapia,
 * así como los datos de pago asociados a la cita.
 *
 * @property idCita Identificador único de la cita, o `null` si no está agendada.
 * @property fecha Fecha de la cita en formato `YYYY-MM-DD`.
 * @property horaInicio Hora de inicio en formato `HH:mm`.
 * @property horaFin Hora de finalización en formato `HH:mm`.
 * @property durationMinutes Duración en minutos de la sesión.
 * @property estado Estado actual de la cita.
 * @property modalidad Modalidad de la sesión (presencial, videoconferencia, etc.).
 * @property motivo Motivo o descripción de la consulta.
 * @property tipoTerapia Tipo de terapia asignada.
 * @property minutosRestantes Minutos restantes hasta el inicio de la cita.
 * @property esProxima Indica si la cita es la más próxima del paciente.
 * @property metodoPago Método de pago utilizado.
 * @property estadoPago Estado del pago (pendiente, completado, etc.).
 */
data class CitaPacienteViewResponseDTO(
    val idCita: Long?,
    val fecha: String?,
    val horaInicio: String?,
    val horaFin: String?,
    val durationMinutes: Int?,
    val estado: String?,
    val modalidad: String?,
    val motivo: String?,
    val tipoTerapia: String?,
    val minutosRestantes: Long?,
    val esProxima: Boolean?,
    val metodoPago: MetodoPago?,
    val estadoPago: EstadoPago?,
    val idPsicologo: Long? = null,
    val idPaciente: Long? = null,
    val idTipoTerapia: Long? = null
)

/**
 * DTO con la información de contacto del psicólogo.
 *
 * Datos públicos que se muestran al paciente para comunicarse con el profesional.
 *
 * @property telefono Número de teléfono de contacto.
 * @property email Correo electrónico de contacto.
 * @property website Sitio web profesional.
 */
data class ContactoPsicologoDTO(
    val telefono: String = "+34 900 123 456",
    val email: String = "contacto@amani-psicologo.com",
    val website: String = "www.amani-psicologo.com",
)
