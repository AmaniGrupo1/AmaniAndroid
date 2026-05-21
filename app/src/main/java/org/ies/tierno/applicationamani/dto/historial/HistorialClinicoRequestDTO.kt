package org.ies.tierno.applicationamani.dto.historial.request

/**
 * DTO de solicitud para crear o actualizar una entrada del historial clínico.
 *
 * Asocia un título, diagnóstico, tratamiento y observaciones a un paciente
 * específico para mantener su historial médico actualizado.
 *
 * @property idPaciente Identificador único del paciente.
 * @property titulo Título o resumen de la entrada del historial.
 * @property diagnostico Diagnóstico médico, o `null` si no se ha definido.
 * @property tratamiento Tratamiento prescrito, o `null`.
 * @property observaciones Observaciones adicionales del profesional, o `null`.
 */
data class HistorialClinicoRequestDTO(
    val idPaciente: Long,
    val titulo: String,
    val diagnostico: String? = null,
    val tratamiento: String? = null,
    val observaciones: String? = null,
)
