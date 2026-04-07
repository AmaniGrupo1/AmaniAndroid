//package org.ies.tierno.applicationamani.presentation.ui.screen.cuestionario
//
//import androidx.compose.foundation.layout.*
//import androidx.compose.foundation.lazy.LazyColumn
//import androidx.compose.foundation.lazy.itemsIndexed
//import androidx.compose.foundation.shape.RoundedCornerShape
//import androidx.compose.material3.*
//import androidx.compose.runtime.*
//import androidx.compose.ui.Alignment
//import androidx.compose.ui.Modifier
//import androidx.compose.ui.graphics.Color
//import androidx.compose.ui.text.font.Font
//import androidx.compose.ui.text.font.FontFamily
//import androidx.compose.ui.text.font.FontWeight
//import androidx.compose.ui.unit.dp
//import androidx.compose.ui.unit.sp
//import androidx.navigation.NavController
//import kotlinx.coroutines.launch
//import org.ies.tierno.applicationamani.R
//import timber.log.Timber
//import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
//import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
//import org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario.CuestionarioViewModel
//import org.koin.androidx.compose.koinViewModel
//
///**
// * Pantalla del cuestionario para el paciente.
// *
// * Muestra una lista de preguntas con opciones de respuesta tipo radio button.
// * El usuario debe responder todas las preguntas antes de enviar. Si no ha
// * iniciado sesión, se redirige a la pantalla de login.
// *
// * @param navController Controlador de navegación.
// * @param loginViewModel ViewModel compartido para verificar el estado de sesión.
// * @param viewModel ViewModel que provee las preguntas del cuestionario.
// */
//@Composable
//fun Cuestionario(
//    navController: NavController,
//    loginViewModel: LoginViewModel,
//    viewModel: CuestionarioViewModel = koinViewModel()
//) {
//    val backgroundColor = Color(0xFFF3F1F8)
//    val cardColor = Color.White
//    val primaryColor = Color(0xFF5E35B1)
//    val textColor = Color.Black
//    val roboto = FontFamily(
//        Font(R.font.roboto_variablefont_wdth_wght)
//    )
//
//    val preguntas by viewModel.preguntas.collectAsState()
//    val listaPreguntas = preguntas ?: emptyList()
//    val respuestasSeleccionadas = remember { mutableStateMapOf<Int, String>() }
//    val snackbarHostState = remember { SnackbarHostState() }
//    val usuarioLogueado by loginViewModel.isLoggedIn.collectAsState()
//
//    Scaffold(
//        containerColor = backgroundColor,
//        snackbarHost = { SnackbarHost(hostState = snackbarHostState) }
//    ) { padding ->
//        LazyColumn(
//            modifier = Modifier
//                .padding(padding)
//                .fillMaxSize()
//                .padding(horizontal = 16.dp, vertical = 16.dp),
//            verticalArrangement = Arrangement.spacedBy(16.dp)
//        ) {
//            itemsIndexed(listaPreguntas) { index, pregunta ->
//                Card(
//                    modifier = Modifier
//                        .fillMaxWidth()
//                        .padding(4.dp),
//                    shape = RoundedCornerShape(16.dp),
//                    colors = CardDefaults.cardColors(containerColor = cardColor),
//                    elevation = CardDefaults.cardElevation(defaultElevation = 6.dp)
//                ) {
//                    Column(
//                        modifier = Modifier
//                            .fillMaxWidth()
//                            .padding(16.dp)
//                    ) {
//                        Text(
//                            text = pregunta.texto ?: "",
//                            fontFamily = roboto,
//                            fontWeight = FontWeight.Bold,
//                            fontSize = 18.sp,
//                            color = textColor
//                        )
//
//                        Spacer(modifier = Modifier.height(12.dp))
//
//                        val selectedOption = respuestasSeleccionadas[index]
//                        pregunta.opciones?.forEach { opcion ->
//                            Row(
//                                verticalAlignment = Alignment.CenterVertically,
//                                modifier = Modifier
//                                    .fillMaxWidth()
//                                    .padding(vertical = 4.dp)
//                            ) {
//                                RadioButton(
//                                    selected = opcion == selectedOption,
//                                    onClick = {
//                                        respuestasSeleccionadas[index] = opcion
//                                    },
//                                    colors = RadioButtonDefaults.colors(
//                                        selectedColor = primaryColor,
//                                        unselectedColor = Color.Gray
//                                    )
//                                )
//                                Spacer(modifier = Modifier.width(8.dp))
//                                Text(
//                                    text = opcion,
//                                    fontFamily = roboto,
//                                    fontSize = 16.sp,
//                                    color = textColor
//                                )
//                            }
//                        }
//                    }
//                }
//            }
//            // Botón para enviar respuestas
//            item {
//                Spacer(modifier = Modifier.height(24.dp))
//                val scope = rememberCoroutineScope()
//                Button(
//                    onClick = {
//                        if (!usuarioLogueado) {
//                            // Usuario no logueado
//                            navController.navigate(Screens.login.route) {
//                                popUpTo("cuestionario") { inclusive = true }
//                            }
//                        } else if (respuestasSeleccionadas.size < listaPreguntas.size) {
//                            scope.launch {
//                                snackbarHostState.showSnackbar(
//                                    "Debes responder todas las preguntas antes de enviar"
//                                )
//                            }
//                        } else {
//                            Timber.d("Respuestas enviadas: $respuestasSeleccionadas")
//                            scope.launch {
//                                snackbarHostState.showSnackbar(
//                                    "Cuestionario enviado correctamente"
//                                )
//                            }
//                        }
//                    },
//                    modifier = Modifier
//                        .fillMaxWidth()
//                        .height(50.dp),
//                    shape = RoundedCornerShape(50.dp),
//                    colors = ButtonDefaults.buttonColors(
//                        containerColor = primaryColor,
//                        contentColor = Color.White
//                    )
//                ) {
//                    Text(
//                        "Enviar respuestas",
//                        fontFamily = roboto,
//                        fontWeight = FontWeight.Bold,
//                        fontSize = 16.sp
//                    )
//                }
//                Spacer(modifier = Modifier.height(16.dp))
//            }
//        }
//    }
//}