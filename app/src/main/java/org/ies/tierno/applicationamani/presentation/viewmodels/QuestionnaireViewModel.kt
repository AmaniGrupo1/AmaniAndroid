package org.ies.tierno.applicationamani.presentation.viewmodels

import androidx.compose.runtime.mutableStateListOf
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
        )
    )

    var selectedAnswers = mutableStateListOf(false, false, false, false)
        private set

    fun changeAnswer(index: Int, valor: Boolean) {
        selectedAnswers[index] = valor
    }
}