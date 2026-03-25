package org.ies.tierno.applicationamani.dto.requestPaciente

/**
 * DTO de solicitud para crear o gestionar una cita.
 *
 * Se envía al backend con la información necesaria para registrar
 * una cita entre un paciente y un psicólogo.
 *
 * @property idPaciente Identificador único del paciente.
 * @property idPsicologo Identificador único del psicólogo asignado.
 * @property startDatetime Fecha y hora de inicio en formato ISO 8601 (p. ej. `"2026-03-18T10:30:00"`).
 * @property durationMinutes Duración de la cita en minutos, o `null` si no se especifica.
 * @property estado Estado de la cita (p. ej. `"pendiente"`, `"confirmada"`), o `null`.
 * @property motivo Motivo de la cita, o `null`.
 */
data class CitaRequest(
    val idPaciente: Long,
    val idPsicologo: Long,
    val startDatetime: String, // "2026-03-18T10:30:00"
    val durationMinutes: Int? = null,
    val estado: String? = null,
    val motivo: String? = null
)