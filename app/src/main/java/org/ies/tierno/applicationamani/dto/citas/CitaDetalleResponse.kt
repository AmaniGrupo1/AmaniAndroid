package org.ies.tierno.applicationamani.dto.citas

import java.time.LocalTime

/**
 * DTO de respuesta con el detalle completo de una cita.
 *
 * Incluye información del paciente y del psicólogo, fecha, hora, estado y
 * duración de la sesión. Se utiliza como elemento base en listados de agenda.
 *
 * @property id Identificador único de la cita.
 * @property fecha Fecha de la cita en formato `YYYY-MM-DD`.
 * @property hora Hora de inicio de la sesión.
 * @property pacienteId Identificador del paciente, o `null` si no aplica.
 * @property pacienteNombre Nombre del paciente, o `null`.
 * @property psicologoId Identificador del psicólogo, o `null` si no aplica.
 * @property psicologoNombre Nombre del psicólogo, o `null`.
 * @property motivo Motivo o descripción de la consulta.
 * @property estado Estado actual de la cita.
 * @property durationMinutes Duración de la sesión en minutos.
 */
data class CitaDetalleResponse(
    val id: Long,
    val fecha: String,
    val hora: LocalTime,
    val pacienteId: Long? = null,
    val pacienteNombre: String? = null,
    val psicologoId: Long? = null,
    val psicologoNombre: String? = null,
    val motivo: String? = null,
    val estado: String? = null,
    val durationMinutes: Int? = null,
)
