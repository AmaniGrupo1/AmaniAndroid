package org.ies.tierno.applicationamani.dto.citas

/**
 * DTO de respuesta con la configuración de agenda de un psicólogo.
 *
 * Define el horario laboral del psicólogo, la duración de las sesiones, los
 * días no disponibles y la lista de citas agendadas.
 *
 * @property horaInicio Hora de inicio de la jornada laboral (0-23).
 * @property horaFin Hora de fin de la jornada laboral (0-23).
 * @property duracionSesion Duración estándar de cada sesión en minutos.
 * @property diasNoDisponibles Lista de fechas no disponibles para reservas.
 * @property citas Lista de citas agendadas como [CitaDetalleResponse].
 */
data class AgendaPsicologoResponse(
    val horaInicio: Int = 8,
    val horaFin: Int = 20,
    val duracionSesion: Int = 60,
    val diasNoDisponibles: List<String> = emptyList(),
    val citas: List<CitaDetalleResponse> = emptyList(),
)
