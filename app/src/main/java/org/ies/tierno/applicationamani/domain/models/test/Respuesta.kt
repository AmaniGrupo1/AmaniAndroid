package org.ies.tierno.applicationamani.domain.models.test

/**
 * Modelo de dominio que representa la respuesta de un paciente a una pregunta.
 *
 * Almacena la referencia a la pregunta respondida, el texto de la opción
 * seleccionada y su valor numérico asociado.
 *
 * @property preguntaId Identificador de la pregunta a la que corresponde esta respuesta.
 * @property texto Texto de la opción seleccionada por el paciente.
 * @property valor Valor numérico de la opción seleccionada para la puntuación.
 */
data class Respuesta (
   val preguntaId: String = "",
    val texto: String,
    val valor: Int = 0,
)