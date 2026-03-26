package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.RadioButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario.CuestionarioViewModel
import org.koin.androidx.compose.koinViewModel
import timber.log.Timber

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TestPacienteScreen(
    navController: NavController,
    idPaciente: Long,
    viewModel: CuestionarioViewModel = koinViewModel()
) {

    val preguntas by viewModel.preguntas.collectAsState()
    val respuestaEnviada by viewModel.respuestaEnviada.collectAsState()

    val scrollState = rememberScrollState()

    // índicePregunta -> índiceOpciónSeleccionada
    val respuestasSeleccionadas = remember { mutableStateMapOf<Int, Int>() }

    val coroutineScope = rememberCoroutineScope()

    // Fuentes
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val tituloFont = FontFamily(Font(R.font.nunito_variablefont_wght)) // ejemplo para títulos

    // Observa si se envió la respuesta y navega automáticamente
    LaunchedEffect(respuestaEnviada) {
        if (respuestaEnviada) {
            navController.navigate("resultado_test") {
                popUpTo("cuestionario") { inclusive = true }
            }
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Cuestionario psicológico", fontFamily = tituloFont) }
            )
        }
    ) { innerPadding ->

        Column(
            modifier = Modifier
                .padding(innerPadding)
                .padding(16.dp)
                .fillMaxSize()
                .verticalScroll(scrollState)
        ) {

            preguntas?.forEachIndexed { indexPregunta, pregunta ->

                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(bottom = 16.dp),
                    elevation = CardDefaults.cardElevation(4.dp)
                ) {

                    Column(modifier = Modifier.padding(16.dp)) {

                        Text(
                            text = pregunta.texto ?: "",
                            style = MaterialTheme.typography.titleMedium,
                            fontFamily = tituloFont
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        pregunta.opciones?.forEachIndexed { indexOpcion, opcion ->

                            Row(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .clickable {
                                        respuestasSeleccionadas[indexPregunta] = indexOpcion
                                    }
                                    .padding(vertical = 6.dp),
                                verticalAlignment = Alignment.CenterVertically
                            ) {

                                RadioButton(
                                    selected = respuestasSeleccionadas[indexPregunta] == indexOpcion,
                                    onClick = {
                                        respuestasSeleccionadas[indexPregunta] = indexOpcion
                                    }
                                )

                                Text(
                                    text = opcion,
                                    style = MaterialTheme.typography.bodyLarge,
                                    fontFamily = roboto
                                )
                            }
                        }
                    }
                }
            }

            Spacer(modifier = Modifier.height(24.dp))

            Button(
                onClick = {
                    if (respuestasSeleccionadas.size == preguntas?.size) {

                        val respuestasDTO = preguntas!!.mapIndexed { indexPregunta, pregunta ->
                            val opcionIndex = respuestasSeleccionadas[indexPregunta]!!
                            val opcionTexto = pregunta.opciones?.get(opcionIndex) ?: ""

                            RespuestasRequestDTO(
                                idPregunta = indexPregunta.toLong(), // ⚠️ reemplazar por id real si lo tienes
                                idOpcion = opcionIndex.toLong(),
                                texto = opcionTexto
                            )
                        }

                        coroutineScope.launch {
                            viewModel.enviarRespuestas(idPaciente, respuestasDTO)
                        }

                    } else {
                        Timber.d("Debe responder todas las preguntas [respondidas=${respuestasSeleccionadas.size} totales=${preguntas?.size}]")
                    }
                },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(55.dp)
            ) {
                Text("Enviar respuestas", fontFamily = roboto)
            }

            Spacer(modifier = Modifier.height(20.dp))
        }
    }
}