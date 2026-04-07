package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.material3.TextFieldDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel
import org.koin.androidx.compose.koinViewModel

/**
 * Pantalla de creación de preguntas de test.
 *
 * Permite al administrador escribir el enunciado, tipo y hasta cuatro opciones
 * de respuesta. Al pulsar «Guardar pregunta» se persiste en el backend
 * mediante [CrearPreguntaViewModel].
 *
 * @param navController Controlador de navegación.
 * @param crearPreguntaViewModel ViewModel que gestiona el formulario y la acción de guardado.
 */
@Composable
fun TestScreen(
    navController: NavController,
    crearPreguntaViewModel: CrearPreguntaViewModel = koinViewModel()
) {
    val colorButton = android.graphics.Color.parseColor("#CCC0E4")
    val request = crearPreguntaViewModel.request.collectAsState()
    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght)
    )

    val snackbarHostState = remember { SnackbarHostState() }
    val guardadoExitoso by crearPreguntaViewModel.guardadoExitoso.collectAsState()
    if (guardadoExitoso) {
        LaunchedEffect(guardadoExitoso) {
            snackbarHostState.showSnackbar("Pregunta guardada correctamente")
            navController.popBackStack()
            crearPreguntaViewModel.limpiarEstadoGuardado()
        }
    }
    Scaffold(
        containerColor = Color(colorButton),
        snackbarHost = { SnackbarHost(snackbarHostState) }
    ) { innerPadding ->

        Column(
            modifier = Modifier
                .padding(innerPadding)
                .fillMaxSize()
                .padding(horizontal = 24.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {

            Text(
                text = "Crear pregunta",
                fontSize = 26.sp,
                fontFamily = roboto,
                color = Color.Black
            )



            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(
                        Color.White,
                        shape = RoundedCornerShape(20.dp)
                    )
                    .padding(20.dp)
            ) {

                CampoPregunta(
                    value = request.value.texto?:"",
                    placeholder = "Pregunta",
                    onChange = { crearPreguntaViewModel.setTexto(it) },
                    roboto = roboto
                )

                CampoPregunta(
                    value = request.value.tipo?:"",
                    placeholder = "Tipo de pregunta",
                    onChange = { crearPreguntaViewModel.setTipo(it) },
                    roboto = roboto
                )


                CampoPregunta(
                    value = request.value.opciones?.getOrNull(0) ?: "",
                    placeholder = "Opción 1",
                    onChange = { crearPreguntaViewModel.setOpcion1(it) },
                    roboto = roboto
                )

                CampoPregunta(
                    value = request.value.opciones?.getOrNull(1) ?: "",
                    placeholder = "Opción 2",
                    onChange = { crearPreguntaViewModel.setOpcion2(it) },
                    roboto = roboto
                )

                CampoPregunta(
                    value = request.value.opciones?.getOrNull(2) ?: "",
                    placeholder = "Opción 3",
                    onChange = { crearPreguntaViewModel.setOpcion3(it) },
                    roboto = roboto
                )


                CampoPregunta(
                    value = request.value.opciones?.getOrNull(3) ?: "",
                    placeholder = "Opción 4",
                    onChange = { crearPreguntaViewModel.setOpcion4(it) },
                    roboto = roboto
                )


                Button(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(52.dp),
                    shape = RoundedCornerShape(40.dp),
                    onClick = {
                        crearPreguntaViewModel.guardarPregunta()
                    },
                    colors = ButtonDefaults.buttonColors(
                        containerColor = Color(colorButton),
                        contentColor = Color.Black
                    )
                ) {
                    Text(
                        "Guardar pregunta",
                        fontSize = 16.sp,
                        fontFamily = roboto
                    )
                }
            }
        }
    }
}

/**
 * Campo de texto reutilizable para el formulario de creación de preguntas.
 *
 * @param value Valor actual del campo.
 * @param placeholder Texto indicativo cuando el campo está vacío.
 * @param onChange Callback invocado al cambiar el texto.
 * @param roboto Familia tipográfica Roboto utilizada en el placeholder.
 */
@Composable
fun CampoPregunta(
    value: String,
    placeholder: String,
    onChange: (String) -> Unit,
    roboto: FontFamily
) {

    TextField(
        modifier = Modifier
            .fillMaxWidth(),
        value = value,
        onValueChange = onChange,
        placeholder = {
            Text(
                text = placeholder,
                fontFamily = roboto
            )
        },
        singleLine = true,
        shape = RoundedCornerShape(12.dp),
        colors = TextFieldDefaults.colors(
            focusedContainerColor = Color(0xFFF7F7F7),
            unfocusedContainerColor = Color(0xFFF7F7F7),
            focusedIndicatorColor = Color.Transparent,
            unfocusedIndicatorColor = Color.Transparent,
            cursorColor = Color.Black
        )
    )
}