package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.ViewModel
import org.ies.tierno.applicationamani.domain.models.Question

class QuestionnaireViewModel : ViewModel() {

    val questions = listOf(
        Question(
            "Pregunta 1",
            listOf(
                "Respuesta 1",
                "Respuesta 2",
                "Respuesta 3",
                "Respuesta 4"
            )
        ),
        Question(
            "Pregunta 2",
            listOf(
                "Respuesta 1",
                "Respuesta 2",
                "Respuesta 3",
                "Respuesta 4",
                "Respuesta 5",
                "Respuesta 6"
            )
        ),
        Question(
            "Pregunta 3",
            listOf(
                "Respuesta 1",
                "Respuesta 2",
                "Respuesta 3",
                "Respuesta 4"
            )
        ),
        Question(
            "Pregunta 4",
            listOf(
                "Respuesta 1",
                "Respuesta 2",
                "Respuesta 3",
                "Respuesta 4"
            )
        )
    )

    var actualQuestion by mutableStateOf(0)
        private set

    var selectedAnswers =
        mutableStateListOf<MutableList<Boolean>>()

    init {
        questions.forEach { question ->
            selectedAnswers.add(
                MutableList(question.answers.size) { false }
            )
        }
    }

    fun changeAnswer(index: Int, value: Boolean) {
        selectedAnswers[actualQuestion][index] = value
    }

    fun nextQuestion() {
        if (actualQuestion < questions.size - 1) {
            actualQuestion++
        }
    }
}