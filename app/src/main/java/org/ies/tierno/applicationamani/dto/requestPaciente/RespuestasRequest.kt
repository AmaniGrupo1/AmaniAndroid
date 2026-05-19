package org.ies.tierno.applicationamani.dto.requestPaciente

/**
 * DTO de solicitud con las respuestas del paciente a un cuestionario.
 *
 * Cada instancia representa la respuesta a una pregunta concreta,
 * identificando la pregunta y la opción seleccionada.
 *
 * @property idPregunta Identificador único de la pregunta respondida.
 * @property idOpcion Identificador único de la opción seleccionada.
 * @property texto Texto libre de la respuesta, o `null` si no aplica.
 */
data class RespuestasRequest(
    val idPregunta: Long,
    val idOpcion: Long,
    val texto: String? = null,
)
