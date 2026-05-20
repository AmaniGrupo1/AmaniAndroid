package org.ies.tierno.applicationamani.domain.models.test

/**
 * DTO de solicitud para enviar las respuestas de un cuestionario al backend.
 *
 * Cada instancia representa la respuesta a una única pregunta, pudiendo
 * contener el identificador de la opción seleccionada o un texto libre.
 *
 * @property idPregunta Identificador de la pregunta respondida.
 * @property idOpcion Identificador de la opción seleccionada, si la pregunta es de opción múltiple.
 * @property texto Texto de la respuesta, si la pregunta admite respuesta libre.
 */
data class RespuestasRequestDTO(
    val idPregunta: Long,
    val idOpcion: Long?,
    val texto: String?,
)
