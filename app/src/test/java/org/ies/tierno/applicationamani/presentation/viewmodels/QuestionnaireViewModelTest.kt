package org.ies.tierno.applicationamani.presentation.viewmodels

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class QuestionnaireViewModelTest {
    private lateinit var viewModel: QuestionnaireViewModel

    @Before
    fun setUp() {
        viewModel = QuestionnaireViewModel()
    }

    @Test
    fun initialState_actualQuestionIsZero_allAnswersFalse() {
        assertEquals(0, viewModel.actualQuestion)
        assertEquals(4, viewModel.questions.size)
        viewModel.selectedAnswers.forEach { answers ->
            answers.forEach { selected ->
                assertFalse(selected)
            }
        }
    }

    @Test
    fun nextQuestion_advancesQuestionIndex() {
        viewModel.nextQuestion()
        assertEquals(1, viewModel.actualQuestion)
        viewModel.nextQuestion()
        assertEquals(2, viewModel.actualQuestion)
    }

    @Test
    fun nextQuestion_doesNotExceedLastQuestion() {
        repeat(10) {
            viewModel.nextQuestion()
        }
        assertEquals(3, viewModel.actualQuestion)
    }

    @Test
    fun changeAnswer_selectsAnswerOnCurrentQuestion() {
        viewModel.changeAnswer(2, true)
        assertTrue(viewModel.selectedAnswers[0][2])
    }

    @Test
    fun changeAnswer_deselectsAnswer() {
        viewModel.changeAnswer(1, true)
        assertTrue(viewModel.selectedAnswers[0][1])

        viewModel.changeAnswer(1, false)
        assertFalse(viewModel.selectedAnswers[0][1])
    }

    @Test
    fun changeAnswer_onDifferentQuestionsIsIndependent() {
        viewModel.changeAnswer(0, true)
        viewModel.nextQuestion()
        viewModel.changeAnswer(1, true)

        assertTrue(viewModel.selectedAnswers[0][0])
        assertTrue(viewModel.selectedAnswers[1][1])
        assertFalse(viewModel.selectedAnswers[0][1])
        assertFalse(viewModel.selectedAnswers[1][0])
    }

    @Test
    fun selectedAnswers_matrixSizeMatchesQuestionsAndAnswersCount() {
        assertEquals(viewModel.questions.size, viewModel.selectedAnswers.size)

        viewModel.questions.indices.forEach { i ->
            assertEquals(
                viewModel.questions[i].answers.size,
                viewModel.selectedAnswers[i].size,
            )
        }
    }

    @Test(expected = IndexOutOfBoundsException::class)
    fun changeAnswer_invalidIndex_throwsException() {
        val answersSize = viewModel.questions[viewModel.actualQuestion].answers.size
        viewModel.changeAnswer(answersSize, true)
    }
}
