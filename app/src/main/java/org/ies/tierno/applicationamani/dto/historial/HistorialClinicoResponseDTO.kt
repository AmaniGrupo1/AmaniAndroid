package org.ies.tierno.applicationamani.dto.historial

/**
 * DTO de respuesta con los datos de una entrada del historial clínico.
 *
 * Proporciona el título, diagnóstico, tratamiento, observaciones y
 * la fecha de creación de la entrada del historial de un paciente.
 *
 * @property id Identificador único de la entrada del historial.
 * @property titulo Título o resumen de la entrada.
 * @property diagnostico Diagnóstico médico registrado.
 * @property tratamiento Tratamiento prescrito.
 * @property observaciones Observaciones adicionales.
 * @property creadoEn Fecha de creación en formato ISO 8601.
 */
data class HistorialClinicoResponseDTO(
    val id: Long,
    val titulo: String,
    val diagnostico: String,
    val tratamiento: String,
    val observaciones: String,
    val creadoEn: String,
)
