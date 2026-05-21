package org.ies.tierno.applicationamani.dto.citas

import java.time.LocalDateTime

/**
 * DTO de respuesta para la vista de administrador sobre una [Cita].
 *
 * Muestra la información completa de la cita, incluyendo los datos del
 * paciente y del psicólogo involucrados, el estado actual y los metadatos
 * de auditoría.
 *
 * @property nombrePaciente Nombre del paciente, o `null`.
 * @property apellidoPaciente Apellido del paciente, o `null`.
 * @property idPsicologo Identificador único del psicólogo, o `null` si no está asignado.
 * @property nombrePsicologo Nombre del psicólogo, o `null`.
 * @property apellidoPsicologo Apellido del psicólogo, o `null`.
 * @property startDatetime Fecha y hora de inicio de la sesión.
 * @property durationMinutes Duración de la sesión en minutos.
 * @property estadoCita Estado actual de la cita.
 * @property motivo Motivo o descripción de la consulta.
 * @property createdAt Fecha de creación del registro.
 * @property updatedAt Fecha de última modificación del registro.
 */
data class CitaAdminResponseDTO(
    val nombrePaciente: String? = null,
    val apellidoPaciente: String? = null,
    val idPsicologo: Long? = null,
    val nombrePsicologo: String? = null,
    val apellidoPsicologo: String? = null,
    val startDatetime: LocalDateTime? = null,
    val durationMinutes: Int? = null,
    val estadoCita: String? = null,
    val motivo: String? = null,
    val createdAt: LocalDateTime? = null,
    val updatedAt: LocalDateTime? = null,
)
