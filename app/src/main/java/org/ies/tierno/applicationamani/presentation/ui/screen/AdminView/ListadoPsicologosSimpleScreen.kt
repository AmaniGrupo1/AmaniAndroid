package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
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
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
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
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.ui.screen.AmaniLoginColors
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPsicologosSimpleScreen(
    navController: NavController,
    viewModel: ListarPsicologosAdminViewModel,
    listarPaciente : ListarPacientesViewModel
) {
    val psicologos by viewModel.psicologos.collectAsState()
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }
    var psicologoSeleccionado by remember { mutableStateOf<PsicologoSelfResponseDTO?>(null) }
    var mostrarDialogoBaja by remember { mutableStateOf(false) }
    var isBajaInProgress by remember { mutableStateOf(false) }

    val typography = MaterialTheme.typography

    // Observar el estado de la baja desde el ViewModel
    val bajaEstado by listarPaciente.bajaEstado.collectAsState()

    // Efecto para manejar el resultado de la baja
    LaunchedEffect(bajaEstado) {
        if (bajaEstado != null && isBajaInProgress) {
            if (bajaEstado!!.isSuccess) {
                snackbarHostState.showSnackbar(
                    "Psicólogo ${psicologoSeleccionado?.nombre} ${psicologoSeleccionado?.apellido} dado de baja exitosamente"
                )
                mostrarDialogoBaja = false
                psicologoSeleccionado = null
            } else if (bajaEstado!!.isFailure) {
                snackbarHostState.showSnackbar(
                    "Error al dar de baja: ${bajaEstado!!.exceptionOrNull()?.message ?: "Error desconocido"}"
                )
            }
            isBajaInProgress = false
        }
    }

    Scaffold(
        containerColor = AmaniLoginColors.Background,
        topBar = {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(AmaniLoginColors.Surface)
                    .padding(horizontal = 16.dp, vertical = 12.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                IconButton(
                    onClick = {
                        navController.popBackStack()
                    }
                ) {
                    Icon(
                        Icons.AutoMirrored.Filled.ArrowBack,
                        contentDescription = "Volver atrás",
                        tint = AmaniLoginColors.Primary
                    )
                }
                Box(modifier = Modifier.weight(1f)) {
                    MenuAdministrador("Listado de psicólogos", navController)
                }
            }
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    navController.navigate(Screens.agregarPsicologo.route)
                },
                containerColor = AmaniLoginColors.Primary,
                shape = RoundedCornerShape(50.dp)
            ) {
                Icon(
                    Icons.Default.Person,
                    contentDescription = "Agregar psicólogo",
                    tint = Color.White
                )
            }
        }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .background(
                    brush = Brush.verticalGradient(
                        colors = listOf(
                            AmaniLoginColors.Accent,
                            Color.White
                        )
                    )
                )
        ) {
            if (psicologos.isEmpty()) {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(32.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.Center
                ) {
                    Text(
                        text = "📋 No hay psicólogos registrados",
                        style = typography.titleMedium?.copy(
                            fontSize = 18.sp,
                            color = AmaniLoginColors.TextSecondary
                        ) ?: MaterialTheme.typography.titleMedium,
                        textAlign = TextAlign.Center
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "Presiona el botón + para agregar uno",
                        style = typography.bodyMedium?.copy(
                            fontSize = 14.sp,
                            color = AmaniLoginColors.TextSecondary
                        ) ?: MaterialTheme.typography.bodyMedium,
                        textAlign = TextAlign.Center
                    )
                }
            } else {
                LazyColumn(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    items(psicologos) { psicologo ->
                        PsicologoCard(
                            psicologo = psicologo,
                            onDarBaja = {
                                psicologoSeleccionado = psicologo
                                mostrarDialogoBaja = true
                            },
                            onEditar = {
                                // Navegar a editar psicólogo
                                // navController.navigate("${Screens.editarPsicologo.route}/${psicologo.idPsicologo}")
                            },
                            typography = typography
                        )
                    }
                }
            }
        }

        // ALERT DIALOG CORREGIDO - Solo esto cambió
        if (mostrarDialogoBaja && psicologoSeleccionado != null && !isBajaInProgress) {
            AlertDialog(
                onDismissRequest = {
                    if (!isBajaInProgress) {
                        mostrarDialogoBaja = false
                    }
                },
                title = {
                    Text(
                        text = "Confirmar baja",
                        style = typography.headlineSmall?.copy(
                            fontSize = 20.sp,
                            fontWeight = FontWeight.Bold,
                            color = AmaniLoginColors.TextPrimary
                        ) ?: MaterialTheme.typography.headlineSmall,
                        fontFamily = FontFamily.Serif
                    )
                },
                text = {
                    Text(
                        text = "¿Seguro que deseas dar de baja a ${psicologoSeleccionado!!.nombre} ${psicologoSeleccionado!!.apellido}?",
                        style = typography.bodyMedium?.copy(
                            fontSize = 14.sp,
                            color = AmaniLoginColors.TextSecondary
                        ) ?: MaterialTheme.typography.bodyMedium
                    )
                },
                confirmButton = {
                    Button(
                        onClick = {
                            isBajaInProgress = true
                            // Llamar directamente al ViewModel (NO es suspend)
                            listarPaciente.darBajaPsicologo(psicologoSeleccionado!!.idPsicologo)
                        },
                        colors = ButtonDefaults.buttonColors(
                            containerColor = AmaniLoginColors.Error
                        ),
                        shape = RoundedCornerShape(12.dp),
                        enabled = !isBajaInProgress
                    ) {
                        Text(
                            if (isBajaInProgress) "Procesando..." else "Dar de baja",
                            style = typography.labelLarge?.copy(
                                fontSize = 14.sp,
                                fontWeight = FontWeight.Medium
                            ) ?: MaterialTheme.typography.labelLarge,
                            color = Color.White
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
                        shape = RoundedCornerShape(12.dp),
                        colors = ButtonDefaults.outlinedButtonColors(
                            contentColor = AmaniLoginColors.Primary
                        ),
                        enabled = !isBajaInProgress
                    ) {
                        Text(
                            "Cancelar",
                            style = typography.labelLarge?.copy(
                                fontSize = 14.sp,
                                fontWeight = FontWeight.Medium
                            ) ?: MaterialTheme.typography.labelLarge
                        )
                    }
                }
            )
        }
    }
}

@Composable
fun PsicologoCard(
    psicologo: PsicologoSelfResponseDTO,
    onDarBaja: () -> Unit,
    onEditar: () -> Unit,
    typography: androidx.compose.material3.Typography
) {
    Card(
        shape = RoundedCornerShape(20.dp),
        modifier = Modifier
            .fillMaxWidth()
            .shadow(8.dp, RoundedCornerShape(20.dp)),
        colors = CardDefaults.cardColors(containerColor = AmaniLoginColors.Surface),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(modifier = Modifier.padding(20.dp)) {
            // Nombre completo
            Text(
                text = "${psicologo.nombre} ${psicologo.apellido}",
                style = typography.titleLarge?.copy(
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Bold,
                    color = AmaniLoginColors.Primary
                ) ?: MaterialTheme.typography.titleLarge,
                modifier = Modifier.padding(bottom = 8.dp)
            )

            // Especialidad
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Text(
                    text = "Especialidad:",
                    style = typography.bodyMedium?.copy(
                        fontSize = 13.sp,
                        color = AmaniLoginColors.TextSecondary,
                        fontWeight = FontWeight.Medium
                    ) ?: MaterialTheme.typography.bodyMedium
                )
                Text(
                    text = psicologo.especialidad,
                    style = typography.bodyMedium?.copy(
                        fontSize = 13.sp,
                        color = AmaniLoginColors.TextPrimary
                    ) ?: MaterialTheme.typography.bodyMedium
                )
            }

            Spacer(modifier = Modifier.height(4.dp))

            // Licencia
            if (!psicologo.licencia.isNullOrBlank()) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    Text(
                        text = "Licencia:",
                        style = typography.bodyMedium?.copy(
                            fontSize = 13.sp,
                            color = AmaniLoginColors.TextSecondary,
                            fontWeight = FontWeight.Medium
                        ) ?: MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = psicologo.licencia,
                        style = typography.bodyMedium?.copy(
                            fontSize = 13.sp,
                            color = AmaniLoginColors.TextPrimary
                        ) ?: MaterialTheme.typography.bodyMedium
                    )
                }
                Spacer(modifier = Modifier.height(4.dp))
            }

            // Descripción
            if (!psicologo.descripcion.isNullOrBlank()) {
                Text(
                    text = "Descripción:",
                    style = typography.bodyMedium?.copy(
                        fontSize = 12.sp,
                        color = AmaniLoginColors.TextSecondary,
                        fontWeight = FontWeight.Medium
                    ) ?: MaterialTheme.typography.bodyMedium,
                    modifier = Modifier.padding(top = 8.dp)
                )
                Text(
                    text = psicologo.descripcion,
                    style = typography.bodySmall?.copy(
                        fontSize = 12.sp,
                        color = AmaniLoginColors.TextSecondary
                    ) ?: MaterialTheme.typography.bodySmall,
                    modifier = Modifier.padding(top = 2.dp)
                )
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Botones de acción
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Button(
                    onClick = onDarBaja,
                    colors = ButtonDefaults.buttonColors(
                        containerColor = AmaniLoginColors.Error
                    ),
                    shape = RoundedCornerShape(12.dp),
                    modifier = Modifier.weight(1f)
                ) {
                    Text(
                        "Dar de baja",
                        style = typography.labelMedium?.copy(
                            fontSize = 13.sp,
                            fontWeight = FontWeight.Medium
                        ) ?: MaterialTheme.typography.labelMedium,
                        color = Color.White
                    )
                }

                Button(
                    onClick = onEditar,
                    colors = ButtonDefaults.buttonColors(
                        containerColor = AmaniLoginColors.Primary
                    ),
                    shape = RoundedCornerShape(12.dp),
                    modifier = Modifier.weight(1f)
                ) {
                    Text(
                        "Editar",
                        style = typography.labelMedium?.copy(
                            fontSize = 13.sp,
                            fontWeight = FontWeight.Medium
                        ) ?: MaterialTheme.typography.labelMedium,
                        color = Color.White
                    )
                }
            }
        }
    }
}