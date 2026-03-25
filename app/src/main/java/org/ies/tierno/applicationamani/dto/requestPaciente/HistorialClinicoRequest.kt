package org.ies.tierno.applicationamani.dto.requestPaciente

/**
 * DTO de solicitud con los datos de historial clínico de un paciente.
 *
 * Se incluye dentro de [PacienteRequest] para registrar entradas
 * del historial clínico en el backend.
 *
 * @property idPaciente Identificador del paciente al que pertenece el historial.
 * @property titulo Título o resumen de la entrada del historial.
 * @property diagnostico Diagnóstico médico, o `null` si no se ha definido.
 * @property tratamiento Tratamiento prescrito, o `null`.
 * @property observaciones Observaciones adicionales del profesional, o `null`.
 */
data class HistorialClinicoRequest(
    val idPaciente: Long,
    val titulo: String,
    val diagnostico: String? = null,
    val tratamiento: String? = null,
    val observaciones: String? = null
)