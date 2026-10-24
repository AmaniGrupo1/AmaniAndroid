package org.ies.tierno.applicationamani.presentation.ui.screen
import org.ies.tierno.applicationamani.ui.theme.AppTheme

import android.content.res.Configuration
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Checkbox
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ProgressIndicatorDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.QuestionnaireViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Pantalla del cuestionario de evaluación inicial.
 *
 * Guía al usuario a través de una serie de preguntas con respuestas
 * seleccionables (checkboxes) cuyo resultado se utilizará para asignarle
 * un psicólogo adecuado.
 *
 * Características:
 * - **Barra de progreso** lineal que indica la pregunta actual sobre el total.
 * - **Instrucciones** explicativas al inicio del cuestionario.
 * - **Lista de respuestas** con checkboxes gestionados por [QuestionnaireViewModel].
 * - **Botón «Continuar»** que avanza a la siguiente pregunta o finaliza
 *   el cuestionario.
 *
 * El estado (pregunta actual, respuestas seleccionadas) se mantiene en
 * [QuestionnaireViewModel] y sobrevive a cambios de configuración.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que contiene las preguntas y gestiona el progreso.
 *
 * @see QuestionnaireViewModel
 * @see org.ies.tierno.applicationamani.domain.models.Question
 */
@Composable
fun QuestionnaireScreen(
    navController: NavController,
    viewModel: QuestionnaireViewModel = viewModel(),
) {
    val question = viewModel.questions[viewModel.actualQuestion]
    QuestionnaireScreenContent(
        actualQuestionIndex = viewModel.actualQuestion,
        totalQuestions = viewModel.questions.size,
        questionTitle = question.title,
        answers = question.answers,
        selectedAnswers = viewModel.selectedAnswers[viewModel.actualQuestion],
        onAnswerChange = { index, checked -> viewModel.changeAnswer(index, checked) },
        onContinueClick = {
            if (viewModel.actualQuestion < viewModel.questions.size - 1) {
                viewModel.nextQuestion()
            }
        },
    )
}

@Composable
fun QuestionnaireScreenContent(
    actualQuestionIndex: Int,
    totalQuestions: Int,
    questionTitle: String,
    answers: List<String>,
    selectedAnswers: List<Boolean>,
    onAnswerChange: (Int, Boolean) -> Unit,
    onContinueClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val typography = MaterialTheme.typography

    Scaffold(
        modifier = modifier,
        containerColor = MaterialTheme.colorScheme.background,
    ) { innerPadding ->
        Column(
            modifier =
                Modifier
                    .padding(innerPadding)
                    .padding(Spacing.m)
                    .fillMaxSize(),
            horizontalAlignment = Alignment.Start,
            verticalArrangement = Arrangement.Center,
        ) {
            LinearProgressIndicator(
                progress = {
                    (actualQuestionIndex + 1).toFloat() / totalQuestions.coerceAtLeast(1)
                },
                modifier = Modifier,
                color = ProgressIndicatorDefaults.linearColor,
                trackColor = ProgressIndicatorDefaults.linearTrackColor,
                strokeCap = ProgressIndicatorDefaults.LinearStrokeCap,
            )
            Text(
                stringResource(R.string.auto_intenta_marcar_las_respuestas),
                style = typography.headlineSmall,
                color = MaterialTheme.colorScheme.onBackground,
                modifier = Modifier.padding(Spacing.m),
            )
            Text(
                stringResource(R.string.auto_no_te_preocupes_si),
                style = typography.headlineSmall,
                color = MaterialTheme.colorScheme.onBackground,
                modifier = Modifier.padding(Spacing.m),
            )
            Spacer(modifier = Modifier.height(Spacing.m))

            Text(
                text = questionTitle,
                style = typography.titleMedium,
                color = MaterialTheme.colorScheme.onBackground,
                modifier = Modifier.padding(Spacing.m),
            )

            Spacer(modifier = Modifier.height(Spacing.l))

            answers.forEachIndexed { index, answer ->
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Checkbox(
                        checked = selectedAnswers.getOrElse(index) { false },
                        onCheckedChange = { onAnswerChange(index, it) },
                    )
                    Text(
                        text = answer,
                        style = typography.bodyLarge,
                        color = MaterialTheme.colorScheme.onBackground,
                    )
                }
            }

            Spacer(modifier = Modifier.weight(1f))

            Button(
                modifier = Modifier.align(Alignment.End),
                onClick = onContinueClick,
            ) {
                Text(stringResource(R.string.auto_continuar))
            }
        }
    }
}

/**
 * Vista previa de [QuestionnaireScreen] para el panel de diseño de Android Studio.
 */
@Preview(showBackground = true, name = "QuestionnaireScreen - Light")
@Preview(showBackground = true, uiMode = Configuration.UI_MODE_NIGHT_YES, name = "QuestionnaireScreen - Dark")
@Preview(showBackground = true, fontScale = 1.5f, name = "QuestionnaireScreen - FontScale 1.5x")
@Composable
fun QuestionnairePreview() {
    AppTheme {
        QuestionnaireScreenContent(
            actualQuestionIndex = 0,
            totalQuestions = 4,
            questionTitle = "¿En qué áreas sientes que necesitas apoyo actualmente?",
            answers = listOf("Ansiedad o estrés", "Estado de ánimo", "Relaciones interpersonales"),
            selectedAnswers = listOf(true, false, false),
            onAnswerChange = { _, _ -> },
            onContinueClick = {},
        )
    }
}
