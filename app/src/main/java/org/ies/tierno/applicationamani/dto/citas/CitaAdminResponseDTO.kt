package org.ies.tierno.applicationamani.dto.citas

import java.time.LocalDateTime

/**
 * DTO de respuesta para la vista de administrador sobre una [Cita].
 *
 * Muestra la información completa de la cita, incluyendo los datos del
 * paciente y del psicólogo involucrados, el estado actual y los metadatos
 * de auditoría.
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
    val updatedAt: LocalDateTime? = null
)