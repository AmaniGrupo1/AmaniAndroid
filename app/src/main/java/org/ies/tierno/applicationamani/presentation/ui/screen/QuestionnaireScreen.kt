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
import androidx.compose.material3.ProgressIndicatorDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.QuestionnaireViewModel

@Composable
fun QuestionnaireScreen(navController: NavController, viewModel: QuestionnaireViewModel = viewModel()) {
    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght)
    )
    val colorButton = android.graphics.Color.parseColor("#CCC0E4")

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
                fontFamily = roboto,
                modifier = Modifier.padding(16.dp),
                fontSize = 25.sp
            )
            Text(
                "No te preocupes si no encajais, puedes cambiar de profesional sin problema más adelante.",
                fontFamily = roboto,
                modifier = Modifier.padding(16.dp),
                fontSize = 25.sp
            )
            Spacer(modifier = Modifier.height(15.dp))

            Text(
                text = question.title,
                fontFamily = roboto,
                modifier = Modifier.padding(16.dp),
                fontSize = 20.sp
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

@Preview(showBackground = true)
@Composable
fun QuestionnairePreview() {
    QuestionnaireScreen(rememberNavController())
}