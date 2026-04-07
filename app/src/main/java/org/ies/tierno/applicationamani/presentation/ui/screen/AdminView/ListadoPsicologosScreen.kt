package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.AsignarPacienteAlPsicologoUseCase
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO

import org.ies.tierno.applicationamani.presentation.ui.componente.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.koin.androidx.compose.koinViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPsicologosScreen(
    navController: NavController,
    loginViewModel: LoginViewModel,
    pacienteId: String,
    viewModel: ListarPsicologosAdminViewModel = koinViewModel()
) {
    val psicologos by viewModel.psicologos.collectAsState()
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }
    var psicologoSeleccionado by remember { mutableStateOf<PsicologoSelfResponseDTO?>(null) }
    var mostrarDialogoBaja by remember { mutableStateOf(false) }

    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val balow = FontFamily(Font(R.font.barlow_condensed_black))

    val backgroundColor = Color(0xFFF5F5F5)
    val cardColor = Color.White
    val primaryColor = Color(0xFF6C63FF)
    val deleteColor = Color(0xFFD32F2F)

    Scaffold(
        containerColor = backgroundColor,
        topBar = { MenuAdministrador("Listado de psicólogos", navController) },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    //navController.navigate(Screens.agregarPsicologoAdmin.route)
                    },
                containerColor = primaryColor,
                shape = RoundedCornerShape(50.dp)
            ) {
                Icon(Icons.Default.Person, contentDescription = "Psicólogo", tint = Color.White)
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
            items(psicologos) { psicologo ->
                Card(
                    shape = RoundedCornerShape(12.dp),
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = cardColor)
                ) {
                    Column(modifier = Modifier.padding(16.dp)) {
                        Text(
                            "Nombre: ${psicologo.nombre} ${psicologo.apellido}",
                            color = Color.Black,
                            fontFamily = roboto
                        )
                        Text(
                            "Especialidad: ${psicologo.especialidad}",
                            color = Color.Black,
                            fontFamily = roboto
                        )
                        Text(
                            "Descripción: ${psicologo.descripcion ?: "-"}",
                            color = Color.DarkGray,
                            fontFamily = roboto
                        )
                        Text(
                            "Licencia: ${psicologo.licencia ?: "-"}",
                            color = Color.DarkGray,
                            fontFamily = roboto
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Button(
                                onClick = {
                                    psicologoSeleccionado = psicologo
                                    mostrarDialogoBaja = true
                                },
                                colors = ButtonDefaults.buttonColors(containerColor = deleteColor),
                                modifier = Modifier.weight(1f)
                            ) {
                                Text("Dar de baja", color = Color.White, fontFamily = roboto)
                            }

                            Button(
                                onClick = {
                                    // Aquí podrías navegar a editar psicólogo si agregas id
                                    // navController.navigate("editarPsicologo/${psicologo.idPsicologo}")
                                },
                                colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                                modifier = Modifier.weight(1f)
                            ) {
                                Text("Editar", color = Color.White, fontFamily = roboto)
                            }
                        }

                        Spacer(modifier = Modifier.height(8.dp))

                        val asignarSuccess by loginViewModel.asignarPacienteSuccess.collectAsState()
                        val asignarError by loginViewModel.asignarPacienteError.collectAsState()
                        val asignarPacienteUseCase: AsignarPacienteAlPsicologoUseCase = koinViewModel()
                        Button(
                            onClick = {
                                scope.launch {
                                    val pacienteIdLong = pacienteId.toLongOrNull()
                                    if (pacienteIdLong != null) {
                                        loginViewModel.asignarPaciente(pacienteIdLong, psicologo.idPsicologo,asignarPacienteUseCase )
                                    } else {
                                        scope.launch {
                                            snackbarHostState.showSnackbar("ID del paciente no válido")
                                        }
                                    }
                                }
                            },
                            colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Text("Asignar a paciente", color = Color.White, fontFamily = roboto)
                        }

// Observa cambios y muestra Snackbar automáticamente
                        LaunchedEffect(asignarSuccess, asignarError) {
                            if (asignarSuccess == true) {
                                snackbarHostState.showSnackbar("Psicólogo asignado correctamente")
                                loginViewModel.clearAsignarPsicologoResult() // limpia los flujos
                            } else if (asignarError != null) {
                                snackbarHostState.showSnackbar("Error: $asignarError")
                                loginViewModel.clearAsignarPsicologoResult()
                            }
                        }
                    }
                }
            }
        }

        if (mostrarDialogoBaja && psicologoSeleccionado != null) {
            AlertDialog(
                onDismissRequest = { mostrarDialogoBaja = false },
                title = { Text("Confirmar baja", fontFamily = balow) },
                text = {
                    Text(
                        "¿Seguro que deseas dar de baja a ${psicologoSeleccionado!!.nombre}?",
                        fontFamily = roboto
                    )
                },
                confirmButton = {
                    Button(
                        onClick = {
                            scope.launch {
                                // viewModel.darBajaPsicologo(psicologoSeleccionado!!.idPsicologo)
                                mostrarDialogoBaja = false
                                snackbarHostState.showSnackbar("Psicólogo dado de baja")
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