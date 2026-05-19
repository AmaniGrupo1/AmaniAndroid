package org.ies.tierno.applicationamani.domain.models.test

/**
 * Modelo de dominio que agrupa una pregunta con sus opciones de respuesta.
 *
 * Se utiliza para representar una pregunta completa del cuestionario
 * junto con todas las opciones seleccionables por el usuario.
 *
 * @property id Identificador único de la pregunta.
 * @property textoPregunta Enunciado de la pregunta que se muestra al usuario.
 * @property opciones Lista de [Opcion] disponibles como respuesta.
 */
data class PreguntaConOpciones(
    val id: String = "",
    val textoPregunta: String,
    val opciones: List<Opcion>,
)
