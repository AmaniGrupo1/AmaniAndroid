package org.ies.tierno.applicationamani.dto.agenda.request

/**
 * DTO de solicitud para configurar el horario laboral de un psicólogo.
 *
 * Contiene una lista de franjas horarias que definen la disponibilidad
 * semanal del profesional.
 *
 * @property franjas Lista de franjas horarias semanales.
 */
data class HorarioRequestDTO(
    val franjas: List<FranjaHorarioDTO>,
)

/**
 * DTO que representa una franja horaria dentro del horario laboral del psicólogo.
 *
 * Define el día de la semana, la hora de inicio y fin, si está activa y
 * un motivo opcional de bloqueo.
 *
 * @property diaSemana Día de la semana (1=Lunes, 7=Domingo).
 * @property horaInicio Hora de inicio en formato `HH:mm`.
 * @property horaFin Hora de finalización en formato `HH:mm`.
 * @property activo Indica si la franja está habilitada para reservas.
 * @property motivo Motivo del bloqueo de la franja, o `null` si no aplica.
 */
data class FranjaHorarioDTO(
    val diaSemana: Short,
    val horaInicio: String,
    val horaFin: String,
    val activo: Boolean,
    val motivo: String? = null,
)
