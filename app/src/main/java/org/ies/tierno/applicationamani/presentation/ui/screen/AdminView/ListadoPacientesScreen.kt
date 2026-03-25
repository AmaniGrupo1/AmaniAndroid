package org.ies.tierno.applicationamani.presentation.ui.screen.admin

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.componente.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.koin.androidx.compose.koinViewModel

/**
 * Pantalla de listado de pacientes con opciones de gestión.
 *
 * Muestra una lista desplazable de tarjetas con los datos de cada paciente.
 * Permite dar de baja a un paciente mediante un diálogo de confirmación
 * y navegar a la pantalla de registro de paciente desde el FAB.
 *
 * @param navController Controlador de navegación.
 * @param viewModel ViewModel que provee la lista de pacientes y la acción de baja.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPacientesScreen(
    navController: NavController,
    viewModel: ListarPacientesViewModel = koinViewModel()
) {
    val pacientes by viewModel.paciente.collectAsState()
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }
    var pacienteSeleccionado by remember { mutableStateOf<DatosPacienteAdminDTO?>(null) }
    var mostrarDialogoBaja by remember { mutableStateOf(false) }

    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val balow = FontFamily(Font(R.font.barlow_condensed_black))

    val backgroundColor = Color(0xFFF5F5F5)
    val cardColor = Color.White
    val primaryColor = Color(0xFF6C63FF)

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            MenuAdministrador("Listado de pacientes", navController)
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = { navController.navigate(Screens.agregarPacienteAdmin.route) },
                containerColor = primaryColor,
                shape = RoundedCornerShape(50.dp)
            ){
                Icon(Icons.Default.Person, contentDescription = "Paciente", tint = Color.White)
            }
        }
    ) { padding ->

        LazyColumn(
            modifier = Modifier
                .padding(padding)
                .fillMaxSize()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            items(pacientes) { paciente ->

                Card(
                    shape = RoundedCornerShape(12.dp),
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = cardColor)
                ) {
                    Column(modifier = Modifier.padding(16.dp)) {
                        Text(
                            "Nombre: ${paciente.nombreUsuario} ${paciente.apellidoUsuario}",
                            color = Color.Black,
                            fontFamily = roboto
                        )
                        Text(
                            "Email: ${paciente.emailUsuario}",
                            color = Color.Black,
                            fontFamily = roboto
                        )
                        Text("Fecha Nacimiento: ${paciente.fechaNacimiento}", fontFamily = roboto)
                        Text("Género: ${paciente.genero}", fontFamily = roboto)
                        Text("Teléfono: ${paciente.telefono}", fontFamily = roboto)
                        Text("Creado: ${paciente.createdAt}", fontFamily = roboto)
                        Text("Actualizado: ${paciente.updatedAt}", fontFamily = roboto)

                        Spacer(modifier = Modifier.height(12.dp))

                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            // Botón Dar de baja
                            Button(
                                onClick = {
                                    pacienteSeleccionado = paciente
                                    mostrarDialogoBaja = true
                                },
                                colors = ButtonDefaults.buttonColors(containerColor = Color.Red),
                                modifier = Modifier.weight(1f)
                            ) {
                                Text("Dar de baja", color = Color.White, fontFamily = roboto)
                            }

                            // Botón Editar
                            Button(
                                onClick = {
                                    // navController.navigate("editarPaciente/${paciente.idUsuario}")
                                },
                                colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                                modifier = Modifier.weight(1f)
                            ) {
                                Text("Editar", color = Color.White, fontFamily = roboto)
                            }

                            // Nuevo botón Asignar Psicólogo
                            Button(
                                onClick = {
                                    // Navega a la pantalla de psicólogos pasando el id del paciente
                                    navController.navigate(Screens.asignarPsicologo.createRoute(paciente.idPaciente))
                                },
                                colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF6C63FF)),
                                modifier = Modifier.weight(1f)
                            ) {
                                Text("Asignar Psicólogo", color = Color.White, fontFamily = roboto)
                            }
                        }
                    }
                }
            }
        }

        // Dialogo Dar de baja
        if (mostrarDialogoBaja && pacienteSeleccionado != null) {
            AlertDialog(
                onDismissRequest = { mostrarDialogoBaja = false },
                title = { Text("Confirmar baja", fontFamily = balow) },
                text = {
                    Text(
                        "¿Seguro que deseas dar de baja a ${pacienteSeleccionado!!.nombreUsuario}?",
                        fontFamily = roboto
                    )
                },
                confirmButton = {
                    Button(
                        onClick = {
                            scope.launch {
                                pacienteSeleccionado?.let { paciente ->
                                    val result = viewModel.darBajaPaciente(paciente.idPaciente)
                                    if (result.isSuccess) {
                                        viewModel.actualizarPacienteBaja(paciente.idPaciente)
                                        snackbarHostState.showSnackbar("Paciente dado de baja correctamente")
                                    } else {
                                        snackbarHostState.showSnackbar("Error al dar de baja al paciente")
                                    }
                                }
                                mostrarDialogoBaja = false
                            }
                        }
                    ) {
                        Text("Dar de baja", fontFamily = roboto)
                    }
                },
                dismissButton = {
                    OutlinedButton(onClick = { mostrarDialogoBaja = false }) {
                        Text("Cancelar", fontFamily = roboto)
                    }
                }
            )
        }
    }
}