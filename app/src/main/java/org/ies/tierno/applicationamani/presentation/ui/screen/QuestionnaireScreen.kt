package org.ies.tierno.applicationamani.presentation.ui.screen

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
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.presentation.viewmodels.QuestionnaireViewModel

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
fun QuestionnaireScreen(navController: NavController, viewModel: QuestionnaireViewModel = viewModel()) {
    val typography = MaterialTheme.typography

    val question = viewModel.questions[viewModel.actualQuestion]
    Scaffold(

    ) {
        innerPadding ->
        Column(
            modifier = Modifier.padding(innerPadding)
                .padding(16.dp)
                .fillMaxSize(),
            horizontalAlignment = Alignment.Start,
            verticalArrangement = Arrangement.Center
        ) {
            LinearProgressIndicator(
            progress = {
                (viewModel.actualQuestion + 1).toFloat() /
                                        viewModel.questions.size
            },
            modifier = Modifier,
            color = ProgressIndicatorDefaults.linearColor,
            trackColor = ProgressIndicatorDefaults.linearTrackColor,
            strokeCap = ProgressIndicatorDefaults.LinearStrokeCap,
            )
            Text(
                "Intenta marcar las respuestas o frases que encajen contigo, te asignaremos un psicólogo en base a ellas.",
                style = typography.headlineSmall,
                modifier = Modifier.padding(16.dp),
            )
            Text(
                "No te preocupes si no encajais, puedes cambiar de profesional sin problema más adelante.",
                style = typography.headlineSmall,
                modifier = Modifier.padding(16.dp),
            )
            Spacer(modifier = Modifier.height(15.dp))

            Text(
                text = question.title,
                style = typography.titleMedium,
                modifier = Modifier.padding(16.dp),
            )

            Spacer(modifier = Modifier.height(20.dp))

            question.answers.forEachIndexed { index, answer ->

                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Checkbox(
                        checked = viewModel.selectedAnswers
                            [viewModel.actualQuestion][index],

                        onCheckedChange = {
                            viewModel.changeAnswer(index, it)
                        }
                    )
                    Text(answer)
                }
            }

            Spacer(modifier = Modifier.weight(1f))

            Button(
                modifier = Modifier.align(Alignment.End),
                onClick = {

                    if (viewModel.actualQuestion <
                        viewModel.questions.size - 1
                    ) {
                        viewModel.nextQuestion() // Pasa a la siguiente pregunta
                    } else {

                        // Cuestionario terminado
                        // navController.navigate()
                    }

                }
            ) {
                Text("Continuar")
            }
        }
    }
}

/**
 * Vista previa de [QuestionnaireScreen] para el panel de diseño de Android Studio.
 */
@Preview(showBackground = true)
@Composable
fun QuestionnairePreview() {
    QuestionnaireScreen(rememberNavController())
}