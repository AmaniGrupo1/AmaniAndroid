package org.ies.tierno.applicationamani.domain.models

/**
 * Modelo de dominio que representa una pregunta del cuestionario inicial.
 *
 * Se utiliza en [org.ies.tierno.applicationamani.presentation.viewmodels.QuestionnaireViewModel] para mostrar al usuario una serie
 * de preguntas con respuestas seleccionables que permiten asignarle un
 * psicólogo adecuado.
 *
 * @property title Enunciado de la pregunta que se muestra al usuario.
 * @property answers Lista de posibles respuestas asociadas a la pregunta.
 *
 * @see org.ies.tierno.applicationamani.presentation.viewmodels.QuestionnaireViewModel
 */
data class Question(
    val title: String,
    val answers: List<String>
)