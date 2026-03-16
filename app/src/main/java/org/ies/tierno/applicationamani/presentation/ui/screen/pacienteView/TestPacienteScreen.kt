package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.RadioButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import org.ies.tierno.applicationamani.domain.models.Opcion
import org.ies.tierno.applicationamani.presentation.ui.screen.Espaciado
import org.ies.tierno.applicationamani.presentation.viewmodels.TestPacienteViewModel
import org.koin.androidx.compose.koinViewModel

@Composable
fun TestPacienteScreen(
    viewModel: TestPacienteViewModel = koinViewModel()
){

    val preguntas by viewModel.preguntas.collectAsState()
    val respuestas by viewModel.respuestas.collectAsState()

    LaunchedEffect(Unit){
        viewModel.cargarPreguntas()
    }

    LazyColumn{

        itemsIndexed(preguntas){ index, pregunta ->

            Text(
                text = pregunta.textoPregunta,
                fontSize = 18.sp
            )

            pregunta.opciones.forEach { opcion ->

                OpcionItem(
                    opcion = opcion,
                    seleccionada = respuestas[index] == opcion,
                    onClick = {
                        viewModel.seleccionarRespuesta(index,opcion)
                        viewModel.responderPregunta(
                            pacienteId = "paciente123",
                            preguntaId = pregunta.id,
                            opcion = opcion
                        )
                    }
                )

                Espaciado(10)
            }

            Espaciado(10)
        }
    }
}

@Composable
fun OpcionItem(
    opcion: Opcion,
    seleccionada: Boolean,
    onClick: () -> Unit
){

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .background(
                if(seleccionada) Color(0xFFEDE7F6)
                else Color.White,
                RoundedCornerShape(12.dp)
            )
            .clickable { onClick() }
            .padding(12.dp),
        verticalAlignment = Alignment.CenterVertically
    ){

        RadioButton(
            selected = seleccionada,
            onClick = onClick
        )

        Text(
            text = opcion.texto,
            modifier = Modifier.padding(start = 8.dp)
        )
    }
}
