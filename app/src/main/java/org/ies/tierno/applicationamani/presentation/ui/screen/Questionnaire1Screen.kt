package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Checkbox
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
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
fun Questionnaire1Screen(navController: NavController, viewModel: QuestionnaireViewModel = viewModel()) {
    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght)
    )
    val colorButton = android.graphics.Color.parseColor("#CCC0E4")

    val question = viewModel.questions[0]
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
            Espaciado(15)
            Text(
                question.title,
                fontFamily = roboto,
                modifier = Modifier.padding(16.dp),
                fontSize = 25.sp
            )
            question.answers.forEachIndexed { index, respuesta ->

                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Checkbox(
                        checked = viewModel.selectedAnswers[index],
                        onCheckedChange = {
                            viewModel.changeAnswer(index, it)
                        }
                    )

                    Text(
                        text = respuesta,
                        modifier = Modifier.padding(20.dp),
                        fontFamily = roboto
                    )
                }

            }
            Spacer(modifier = Modifier.weight(1f))
            Button(
                modifier = Modifier
                    .width(150.dp)
                    .height(50.dp)
                    .align(Alignment.End),
                shape = RoundedCornerShape(50.dp),
                onClick = {
                     val answers = viewModel.selectedAnswers

                     println(answers)

                     navController.navigate("Questionnaire2Screen")

                    //En principio, esto lo guardaría en la base de datos
                },
                border = BorderStroke(2.dp, Color.Black),
                colors = ButtonDefaults.buttonColors(
                    containerColor = Color(colorButton),
                    contentColor = Color.Black,

                    )
            ) {
                Text(
                    "Continuar",
                    fontSize = 16.sp,
                    fontFamily = roboto
                )
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
fun Questionnaire1Preview() {
    Questionnaire1Screen(rememberNavController())
}