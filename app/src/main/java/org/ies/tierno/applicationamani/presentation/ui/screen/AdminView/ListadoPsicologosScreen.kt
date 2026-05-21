package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
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
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme

// Fuentes profesionales
val robotoFont =
    FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Normal),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Bold),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Medium),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.SemiBold),
    )

val barlowCondensed =
    FontFamily(
        Font(R.font.barlow_condensed_black),
    )

/**
 * Pantalla que lista los psicólogos activos con opciones de gestión.
 *
 * Muestra una lista de psicólogos disponibles en el sistema. Permite al
 * administrador asignar un psicólogo a un paciente específico, dar de baja
 * a un psicólogo o editar sus datos. Incluye diálogos de confirmación
 * para las acciones de baja y asignación.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param loginViewModel ViewModel de autenticación para la asignación de pacientes.
 * @param pacienteId Identificador del paciente al que se asignará el psicólogo.
 * @param viewModel ViewModel que gestiona la lista de psicólogos.
 * @param listarPacientesViewModel ViewModel para gestionar bajas y altas.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPsicologosScreen(
    navController: NavController,
    loginViewModel: LoginViewModel,
    pacienteId: Long,
    viewModel: ListarPsicologosAdminViewModel,
    listarPacientesViewModel: ListarPacientesViewModel,
) {
    val psicologos by viewModel.psicologos.collectAsState()
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }
    var psicologoSeleccionado by remember { mutableStateOf<PsicologoSelfResponseDTO?>(null) }
    var mostrarDialogoBaja by remember { mutableStateOf(false) }
    var isBajaInProgress by remember { mutableStateOf(false) }

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

// Colores dinámicos según el tema
    val backgroundColor = if (isDark) screenColors.background else Color(0xFFF5F5F5)
    val cardBackgroundColor = if (isDark) cardColors.cardBackground else Color.White
    val textPrimaryColor = if (isDark) cardColors.cardContent else Color.Black
    val textSecondaryColor = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else Color(0xFF6B6B6B)
    val primaryColor = if (isDark) Color.White else Color(0xFF6C63FF)
    val deleteColor = if (isDark) Color(0xFFEF5350) else Color(0xFFD32F2F)
    val buttonTextColor = if (isDark) Color.Black else Color.White
    val topBarTextColor = if (isDark) Color.White else Color.Black
    val fabTextColor = if (isDark) Color.Black else Color.White

    // Observar el estado de la baja desde el ViewModel
    val bajaEstado by listarPacientesViewModel.bajaEstado.collectAsState()

    // Efecto para manejar el resultado de la baja
    LaunchedEffect(bajaEstado) {
        if (bajaEstado != null) {
            if (bajaEstado!!.isSuccess) {
                snackbarHostState.showSnackbar("Psicólogo dado de baja correctamente")
                mostrarDialogoBaja = false
                psicologoSeleccionado = null
            } else if (bajaEstado!!.isFailure) {
                snackbarHostState.showSnackbar("Error: ${bajaEstado!!.exceptionOrNull()?.message ?: "Error desconocido"}")
            }
            isBajaInProgress = false
        }
    }

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            Text(
                "Listado de psicólogos",
                color = topBarTextColor,
                fontSize = 20.sp,
                fontFamily = barlowCondensed,
                modifier = Modifier.padding(16.dp),
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = { navController.popBackStack() },
                containerColor = primaryColor,
                modifier =
                    Modifier
                        .width(120.dp)
                        .padding(8.dp),
                shape = RoundedCornerShape(24.dp),
            ) {
                Text(
                    "Cancelar",
                    color = fabTextColor,
                    fontFamily = robotoFont,
                    fontSize = 14.sp,
                )
            }
        },
    ) { padding ->
        LazyColumn(
            modifier =
                Modifier
                    .padding(padding)
                    .fillMaxSize()
                    .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            items(psicologos) { psicologo ->
                Card(
                    shape = RoundedCornerShape(16.dp),
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = cardBackgroundColor),
                    elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
                ) {
                    Column(modifier = Modifier.padding(16.dp)) {
                        // Nombre
                        Text(
                            "👤 ${psicologo.nombre} ${psicologo.apellido}",
                            color = textPrimaryColor,
                            fontFamily = robotoFont,
                            fontSize = 16.sp,
                            fontWeight = FontWeight.Bold,
                        )
                        Spacer(modifier = Modifier.height(8.dp))

                        // Especialidad
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                        ) {
                            Text(
                                "📚 Especialidad:",
                                color = textSecondaryColor,
                                fontFamily = robotoFont,
                                fontSize = 13.sp,
                                modifier = Modifier.weight(1f),
                            )
                            Text(
                                psicologo.especialidad,
                                color = textPrimaryColor,
                                fontFamily = robotoFont,
                                fontSize = 13.sp,
                                fontWeight = FontWeight.Medium,
                            )
                        }

                        Spacer(modifier = Modifier.height(4.dp))

                        // Descripción
                        if (!psicologo.descripcion.isNullOrBlank()) {
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                            ) {
                                Text(
                                    "📝 Descripción:",
                                    color = textSecondaryColor,
                                    fontFamily = robotoFont,
                                    fontSize = 13.sp,
                                    modifier = Modifier.weight(1f),
                                )
                                Text(
                                    psicologo.descripcion!!,
                                    color = textPrimaryColor,
                                    fontFamily = robotoFont,
                                    fontSize = 13.sp,
                                    maxLines = 2,
                                )
                            }
                            Spacer(modifier = Modifier.height(4.dp))
                        }

                        // Licencia
                        if (!psicologo.licencia.isNullOrBlank()) {
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                            ) {
                                Text(
                                    "📜 Licencia:",
                                    color = textSecondaryColor,
                                    fontFamily = robotoFont,
                                    fontSize = 13.sp,
                                    modifier = Modifier.weight(1f),
                                )
                                Text(
                                    psicologo.licencia!!,
                                    color = textPrimaryColor,
                                    fontFamily = robotoFont,
                                    fontSize = 13.sp,
                                    fontWeight = FontWeight.Medium,
                                )
                            }
                            Spacer(modifier = Modifier.height(4.dp))
                        }

                        // Experiencia
                        psicologo.experiencia?.let { exp ->
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                            ) {
                                Text(
                                    "⭐ Experiencia:",
                                    color = textSecondaryColor,
                                    fontFamily = robotoFont,
                                    fontSize = 13.sp,
                                    modifier = Modifier.weight(1f),
                                )
                                Text(
                                    "$exp años",
                                    color = textPrimaryColor,
                                    fontFamily = robotoFont,
                                    fontSize = 13.sp,
                                    fontWeight = FontWeight.Medium,
                                )
                            }
                            Spacer(modifier = Modifier.height(4.dp))
                        }

                        Spacer(modifier = Modifier.height(12.dp))

                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                        ) {
                            Button(
                                onClick = {
                                    psicologoSeleccionado = psicologo
                                    mostrarDialogoBaja = true
                                },
                                colors = ButtonDefaults.buttonColors(containerColor = deleteColor),
                                modifier = Modifier.weight(1f),
                            ) {
                                Text("Dar de baja", color = buttonTextColor, fontFamily = robotoFont)
                            }

                            Button(
                                onClick = {
                                    // Aquí podrías navegar a editar psicólogo si agregas id
                                    // navController.navigate("editarPsicologo/${psicologo.idPsicologo}")
                                },
                                colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                                modifier = Modifier.weight(1f),
                            ) {
                                Text("Editar", color = buttonTextColor, fontFamily = robotoFont)
                            }
                        }

                        Spacer(modifier = Modifier.height(8.dp))
                        val asignarSuccess by loginViewModel.asignarPacienteSuccess.collectAsState()
                        val asignarError by loginViewModel.asignarPacienteError.collectAsState()
                        val isAsignando by loginViewModel.isAsignandoPaciente.collectAsState()

                        Button(
                            onClick = {
                                scope.launch {
                                    loginViewModel.asignarPaciente(
                                        pacienteId,
                                        psicologo.idPsicologo,
                                    )
                                }
                            },
                            colors =
                                ButtonDefaults.buttonColors(
                                    containerColor = primaryColor,
                                    disabledContainerColor = primaryColor.copy(alpha = 0.5f),
                                ),
                            modifier = Modifier.fillMaxWidth(),
                            enabled = !isAsignando,
                            shape = RoundedCornerShape(12.dp),
                        ) {
                            if (isAsignando) {
                                androidx.compose.material3.CircularProgressIndicator(
                                    modifier = Modifier.width(20.dp),
                                    color = buttonTextColor,
                                    strokeWidth = 2.dp,
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text("Asignando...", color = buttonTextColor, fontFamily = robotoFont)
                            } else {
                                Text("✓ Asignar a paciente", color = buttonTextColor, fontFamily = robotoFont)
                            }
                        }

                        LaunchedEffect(asignarSuccess, asignarError) {
                            if (asignarSuccess == true) {
                                snackbarHostState.showSnackbar("✅ Psicólogo asignado correctamente")
                                loginViewModel.clearAsignarPsicologoResult()
                            } else if (asignarError != null) {
                                snackbarHostState.showSnackbar("❌ Error: $asignarError")
                                loginViewModel.clearAsignarPsicologoResult()
                            }
                        }
                    }
                }
            }
        }

        // ALERT DIALOG para dar de baja
        if (mostrarDialogoBaja && psicologoSeleccionado != null && !isBajaInProgress) {
            AlertDialog(
                onDismissRequest = {
                    if (!isBajaInProgress) {
                        mostrarDialogoBaja = false
                    }
                },
                containerColor = cardBackgroundColor,
                title = {
                    Text(
                        "Confirmar baja",
                        fontFamily = barlowCondensed,
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Bold,
                        color = textPrimaryColor,
                    )
                },
                text = {
                    Text(
                        "¿Seguro que deseas dar de baja a ${psicologoSeleccionado!!.nombre} ${psicologoSeleccionado!!.apellido}?",
                        fontFamily = robotoFont,
                        color = textSecondaryColor,
                    )
                },
                confirmButton = {
                    Button(
                        onClick = {
                            isBajaInProgress = true
                            listarPacientesViewModel.darBajaPsicologo(psicologoSeleccionado!!.idPsicologo)
                        },
                        enabled = !isBajaInProgress,
                        colors = ButtonDefaults.buttonColors(containerColor = deleteColor),
                    ) {
                        Text(
                            if (isBajaInProgress) "Procesando..." else "Dar de baja",
                            fontFamily = robotoFont,
                            color = Color.White,
                        )
                    }
                },
                dismissButton = {
                    OutlinedButton(
                        onClick = {
                            if (!isBajaInProgress) {
                                mostrarDialogoBaja = false
                            }
                        },
                        enabled = !isBajaInProgress,
                        colors =
                            ButtonDefaults.outlinedButtonColors(
                                contentColor = primaryColor,
                            ),
                    ) {
                        Text("Cancelar", fontFamily = robotoFont, color = textPrimaryColor)
                    }
                },
            )
        }
    }
}
