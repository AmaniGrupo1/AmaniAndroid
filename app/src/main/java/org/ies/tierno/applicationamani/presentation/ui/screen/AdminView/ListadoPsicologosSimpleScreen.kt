package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
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
import androidx.compose.material3.MaterialTheme
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
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.DarAltaPsicologo
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPsicologosSimpleScreen(
    navController: NavController,
    viewModel: ListarPsicologosAdminViewModel,
    listarPaciente: ListarPacientesViewModel,
) {
    val psicologos by viewModel.psicologos.collectAsState()
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }
    var psicologoSeleccionado by remember { mutableStateOf<PsicologoSelfResponseDTO?>(null) }
    var mostrarDialogoBaja by remember { mutableStateOf(false) }
    var isBajaInProgress by remember { mutableStateOf(false) }

    // Usar tokens de MaterialTheme directamente (M3)
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    val isDark = isDarkTheme()
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    val backgroundColor = colorScheme.background
    val surfaceColor = colorScheme.surface
    val primaryColor = colorScheme.primary
    val textPrimaryColor = colorScheme.onSurface
    val textSecondaryColor = colorScheme.onSurfaceVariant
    val errorColor = colorScheme.error

    // Observar el estado de la baja desde el ViewModel
    val bajaEstado by listarPaciente.bajaEstado.collectAsState()

    // Efecto para manejar el resultado de la baja
    LaunchedEffect(bajaEstado) {
        if (bajaEstado != null && isBajaInProgress) {
            if (bajaEstado!!.isSuccess) {
                // QUITAR DE LA LISTA LOCAL
                viewModel.actualizarPsicologoBaja(
                    psicologoSeleccionado!!.idPsicologo,
                )

                snackbarHostState.showSnackbar(
                    "Psicólogo ${psicologoSeleccionado?.nombre} ${psicologoSeleccionado?.apellido} dado de baja exitosamente",
                )

                mostrarDialogoBaja = false

                psicologoSeleccionado = null
            } else if (bajaEstado!!.isFailure) {
                snackbarHostState.showSnackbar(
                    "Error al dar de baja: ${
                        bajaEstado!!.exceptionOrNull()?.message
                            ?: "Error desconocido"
                    }",
                )
            }

            isBajaInProgress = false
        }
    }

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            // ✅ CORRECCIÓN: Llamar correctamente a DarAltaPsicologo con todos los parámetros necesarios
            DarAltaPsicologo(
                title = "Lista de Psicólogos",
                navController = navController,
                showBackButton = true,
                showLogo = false,
                onLogout = {
                    // Aquí puedes implementar la lógica de cierre de sesión si la tienes
                },
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    navController.navigate(Screens.agregarPsicologo.route)
                },
                containerColor = primaryColor,
                shape = CircleShape,
            ) {
                Icon(
                    Icons.Default.Person,
                    contentDescription = "Agregar psicólogo",
                    tint = Color.White,
                )
            }
        },
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .background(
                        brush =
                            Brush.verticalGradient(
                                colors =
                                    listOf(
                                        backgroundColor,
                                        surfaceColor,
                                    ),
                            ),
                    ),
        ) {
            if (psicologos.isEmpty()) {
                Column(
                    modifier =
                        Modifier
                            .fillMaxSize()
                            .padding(32.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.Center,
                ) {
                    Text(
                        text = "No hay psicólogos registrados",
                        style = typography.titleMedium,
                        color = textSecondaryColor,
                        textAlign = TextAlign.Center,
                        fontFamily = roboto,
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "Presiona el botón + para agregar uno",
                        style = typography.bodyMedium,
                        color = textSecondaryColor,
                        textAlign = TextAlign.Center,
                        fontFamily = roboto,
                    )
                }
            } else {
                LazyColumn(
                    modifier =
                        Modifier
                            .fillMaxSize()
                            .padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp),
                ) {
                    items(psicologos) { psicologo ->
                        PsicologoCard(
                            psicologo = psicologo,
                            onDarBaja = {
                                psicologoSeleccionado = psicologo
                                mostrarDialogoBaja = true
                            },
                            onEditar = {
                                // Navegar a editar psicologo
                                // navController.navigate("${Screens.editarPsicologo.route}/${psicologo.idPsicologo}")
                            },
                            typography = typography,
                            isDark = isDark,
                            primaryColor = primaryColor,
                            surfaceColor = surfaceColor,
                            textPrimaryColor = textPrimaryColor,
                            textSecondaryColor = textSecondaryColor,
                            errorColor = errorColor,
                            roboto = roboto,
                        )
                    }
                }
            }
        }

        // ALERT DIALOG
        if (mostrarDialogoBaja && psicologoSeleccionado != null && !isBajaInProgress) {
            AlertDialog(
                onDismissRequest = {
                    if (!isBajaInProgress) {
                        mostrarDialogoBaja = false
                    }
                },
                containerColor = surfaceColor,
                title = {
                    Text(
                        text = "Confirmar baja",
                        style = typography.headlineSmall,
                        fontWeight = FontWeight.Bold,
                        color = textPrimaryColor,
                        fontFamily = roboto,
                    )
                },
                text = {
                    Text(
                        text = "Seguro que deseas dar de baja a ${psicologoSeleccionado!!.nombre} ${psicologoSeleccionado!!.apellido}?",
                        style = typography.bodyMedium,
                        color = textSecondaryColor,
                        fontFamily = roboto,
                    )
                },
                confirmButton = {
                    Button(
                        onClick = {
                            isBajaInProgress = true
                            listarPaciente.darBajaPsicologo(psicologoSeleccionado!!.idPsicologo)
                        },
                        colors =
                            ButtonDefaults.buttonColors(
                                containerColor = errorColor,
                            ),
                        shape = MaterialTheme.shapes.extraLarge,
                        enabled = !isBajaInProgress,
                    ) {
                        Text(
                            if (isBajaInProgress) "Procesando..." else "Dar de baja",
                            style = typography.labelLarge,
                            color = Color.White,
                            fontFamily = roboto,
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
                        shape = MaterialTheme.shapes.extraLarge,
                        colors =
                            ButtonDefaults.outlinedButtonColors(
                                contentColor = primaryColor,
                            ),
                        enabled = !isBajaInProgress,
                    ) {
                        Text(
                            "Cancelar",
                            style = typography.labelLarge,
                            fontFamily = roboto,
                        )
                    }
                },
            )
        }
    }
}

@Composable
fun PsicologoCard(
    psicologo: PsicologoSelfResponseDTO,
    onDarBaja: () -> Unit,
    onEditar: () -> Unit,
    typography: androidx.compose.material3.Typography,
    isDark: Boolean,
    primaryColor: Color,
    surfaceColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    errorColor: Color,
    roboto: FontFamily,
) {
    Card(
        shape = MaterialTheme.shapes.medium,
        modifier =
            Modifier
                .fillMaxWidth()
                .shadow(2.dp, MaterialTheme.shapes.medium),
        colors = CardDefaults.cardColors(containerColor = surfaceColor),
        elevation = CardDefaults.cardElevation(defaultElevation = 1.dp),
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            // Nombre completo
            Text(
                text = "${psicologo.nombre} ${psicologo.apellido}",
                style = typography.titleLarge,
                fontWeight = FontWeight.Bold,
                color = primaryColor,
                modifier = Modifier.padding(bottom = 8.dp),
                fontFamily = roboto,
            )

            // Especialidad
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
            ) {
                Text(
                    text = "Especialidad:",
                    style = typography.bodyMedium,
                    color = textSecondaryColor,
                    fontWeight = FontWeight.Medium,
                    fontFamily = roboto,
                )
                Text(
                    text = psicologo.especialidad,
                    style = typography.bodyMedium,
                    color = textPrimaryColor,
                    fontFamily = roboto,
                )
            }

            Spacer(modifier = Modifier.height(4.dp))

            // Licencia
            if (!psicologo.licencia.isNullOrBlank()) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                ) {
                    Text(
                        text = "Licencia:",
                        style = typography.bodySmall,
                        color = textSecondaryColor,
                        fontFamily = roboto,
                    )
                    Text(
                        text = psicologo.licencia ?: "",
                        style = typography.bodySmall,
                        color = textPrimaryColor,
                        fontFamily = roboto,
                    )
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Botones de accion
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp),
            ) {
                Button(
                    onClick = onDarBaja,
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = errorColor,
                        ),
                    shape = MaterialTheme.shapes.extraLarge,
                    modifier = Modifier.weight(1f),
                ) {
                    Text(
                        "Dar de baja",
                        style = typography.labelMedium,
                        color = Color.White,
                        fontFamily = roboto,
                    )
                }

                Button(
                    onClick = onEditar,
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = primaryColor,
                        ),
                    shape = MaterialTheme.shapes.extraLarge,
                    modifier = Modifier.weight(1f),
                ) {
                    Text(
                        "Editar",
                        style = typography.labelMedium,
                        color = Color.White,
                        fontFamily = roboto,
                    )
                }
            }
        }
    }
}
