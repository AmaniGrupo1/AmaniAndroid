import androidx.compose.foundation.BorderStroke
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
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
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
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.ui.screen.Espaciado
import org.ies.tierno.applicationamani.presentation.viewmodels.TestScreenViewModel
import org.koin.androidx.compose.koinViewModel

@Composable
fun TestScreen(
    navController: NavController,
    testScreenViewModel: TestScreenViewModel = koinViewModel()
) {

    val pregunta by testScreenViewModel.pregunta.collectAsState()
    val opcion1 by testScreenViewModel.opcion1.collectAsState()
    val opcion2 by testScreenViewModel.opcion2.collectAsState()
    val opcion3 by testScreenViewModel.opcion3.collectAsState()
    val opcion4 by testScreenViewModel.opcion4.collectAsState()

    val colorButton = android.graphics.Color.parseColor("#CCC0E4")

    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght)
    )

    val snackbarHostState = remember { SnackbarHostState() }

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

            Espaciado(30)

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
                    value = pregunta,
                    placeholder = "Pregunta",
                    onChange = { testScreenViewModel.setPregunta(it) },
                    roboto = roboto
                )

                Espaciado(15)

                CampoPregunta(
                    value = opcion1,
                    placeholder = "Opción 1",
                    onChange = { testScreenViewModel.setOpcion1(it) },
                    roboto = roboto
                )

                Espaciado(15)

                CampoPregunta(
                    value = opcion2,
                    placeholder = "Opción 2",
                    onChange = { testScreenViewModel.setOpcion2(it) },
                    roboto = roboto
                )

                Espaciado(15)

                CampoPregunta(
                    value = opcion3,
                    placeholder = "Opción 3",
                    onChange = { testScreenViewModel.setOpcion3(it) },
                    roboto = roboto
                )

                Espaciado(15)

                CampoPregunta(
                    value = opcion4,
                    placeholder = "Opción 4",
                    onChange = { testScreenViewModel.setOpcion4(it) },
                    roboto = roboto
                )

                Espaciado(25)

                Button(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(52.dp),
                    shape = RoundedCornerShape(40.dp),
                    onClick = {
                        testScreenViewModel.guardarPregunta(snackbarHostState, navController)
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