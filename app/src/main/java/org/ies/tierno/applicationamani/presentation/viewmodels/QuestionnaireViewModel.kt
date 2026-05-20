package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.ViewModel
import org.ies.tierno.applicationamani.domain.models.Question

/**
 * ViewModel que gestiona el estado del cuestionario de evaluación inicial.
 *
 * Contiene la lista de [questions] (preguntas con sus respuestas posibles),
 * el índice de la pregunta actual ([actualQuestion]) y la matriz de
 * respuestas seleccionadas ([selectedAnswers]).
 *
 * La pantalla [org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreen] observa este estado para mostrar la
 * pregunta actual y su barra de progreso.
 *
 * @see Question
 * @see org.ies.tierno.applicationamani.presentation.ui.screen.QuestionnaireScreen
 */
class QuestionnaireViewModel : ViewModel() {
    /**
     * Lista inmutable de preguntas del cuestionario.
     *
     * Cada [Question] contiene un título y una lista de respuestas.
     * En una versión futura se obtendrán desde el repositorio remoto.
     */
    val questions =
        listOf(
            Question(
                "Pregunta 1",
                listOf(
                    "Respuesta 1",
                    "Respuesta 2",
                    "Respuesta 3",
                    "Respuesta 4",
                ),
            ),
            Question(
                "Pregunta 2",
                listOf(
                    "Respuesta 1",
                    "Respuesta 2",
                    "Respuesta 3",
                    "Respuesta 4",
                    "Respuesta 5",
                    "Respuesta 6",
                ),
            ),
            Question(
                "Pregunta 3",
                listOf(
                    "Respuesta 1",
                    "Respuesta 2",
                    "Respuesta 3",
                    "Respuesta 4",
                ),
            ),
            Question(
                "Pregunta 4",
                listOf(
                    "Respuesta 1",
                    "Respuesta 2",
                    "Respuesta 3",
                    "Respuesta 4",
                ),
            ),
        )

    /**
     * Índice de la pregunta que se muestra actualmente (base 0).
     *
     * Es estado observable de Compose; se incrementa con [nextQuestion].
     */
    var actualQuestion by mutableStateOf(0)
        private set

    /**
     * Matriz de selección de respuestas.
     *
     * Cada posición externa corresponde a una pregunta; cada posición
     * interna indica si la respuesta en ese índice está seleccionada
     * (`true`) o no (`false`).
     */
    var selectedAnswers =
        mutableStateListOf<MutableList<Boolean>>()

    init {
        questions.forEach { question ->
            selectedAnswers.add(
                MutableList(question.answers.size) { false },
            )
        }
    }

    /**
     * Marca o desmarca una respuesta de la pregunta actual.
     *
     * @param index Índice de la respuesta dentro de la pregunta actual.
     * @param value `true` para seleccionar, `false` para deseleccionar.
     */
    fun changeAnswer(
        index: Int,
        value: Boolean,
    ) {
        selectedAnswers[actualQuestion][index] = value
    }

    /**
     * Avanza a la siguiente pregunta del cuestionario.
     *
     * No hace nada si ya se encuentra en la última pregunta.
     */
    fun nextQuestion() {
        if (actualQuestion < questions.size - 1) {
            actualQuestion++
        }
    }
}
