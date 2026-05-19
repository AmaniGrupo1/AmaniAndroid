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
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.PersonAdd
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
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
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme

object AdminViewDefaultColors {
    val Background = Color(0xFFF5F5F5)
    val Surface = Color.White
    val Primary = Color(0xFF6C63FF)
    val Success = Color(0xFF4CAF50)
    val Accent = Color(0xFFF5F5F5)
    val TextPrimary = Color.Black
    val TextSecondary = Color(0xFF6B6B6B)
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPsicologosBajaScreen(
    navController: NavController,
    viewModel: ListarPsicologosAdminViewModel,
    listarPacienteViewModel: ListarPacientesViewModel,
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val psicologosBaja by viewModel.psicologosBaja.collectAsState()
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }
    var psicologoSeleccionado by remember { mutableStateOf<PsicologoSelfResponseDTO?>(null) }
    var mostrarDialogoAlta by remember { mutableStateOf(false) }
    var isAltaInProgress by remember { mutableStateOf(false) }

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Observar el estado del alta desde el ViewModel
    val altaEstado by listarPacienteViewModel.altaEstado.collectAsState()

    // Efecto para manejar el resultado del alta
    LaunchedEffect(altaEstado) {
        if (altaEstado != null && isAltaInProgress) {
            if (altaEstado!!.isSuccess) {
                // ELIMINAR DE LA LISTA LOCAL
                viewModel.actualizarPsicologoAlta(
                    psicologoSeleccionado!!.idPsicologo,
                )

                snackbarHostState.showSnackbar(
                    "Psicólogo ${psicologoSeleccionado?.nombre} ${psicologoSeleccionado?.apellido} dado de alta exitosamente",
                )

                mostrarDialogoAlta = false

                psicologoSeleccionado = null

                listarPacienteViewModel.limpiarAltaEstado()
            } else if (altaEstado!!.isFailure) {
                snackbarHostState.showSnackbar(
                    "Error al dar de alta: ${
                        altaEstado!!.exceptionOrNull()?.message
                            ?: "Error desconocido"
                    }",
                )
            }

            isAltaInProgress = false
        }
    }

    // Determinar colores según el tema
    val backgroundColor = if (isDark) screenColors.background else AdminViewDefaultColors.Background
    val surfaceColor = if (isDark) cardColors.cardBackground else AdminViewDefaultColors.Surface
    val primaryColor =
        if (isDark) MaterialTheme.colorScheme.primary else AdminViewDefaultColors.Primary
    val successColor = AdminViewDefaultColors.Success
    val accentColor = if (isDark) cardColors.cardBackground else AdminViewDefaultColors.Accent
    val textPrimaryColor =
        if (isDark) cardColors.cardContent else AdminViewDefaultColors.TextPrimary
    val textSecondaryColor =
        if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else AdminViewDefaultColors.TextSecondary

    val typography = MaterialTheme.typography

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            Text(
                text = "Psicólogos dados de baja",
                style =
                    typography.headlineMedium?.copy(
                        fontSize = 22.sp,
                        fontWeight = FontWeight.Bold,
                        color = primaryColor,
                    ) ?: MaterialTheme.typography.headlineMedium,
                modifier = Modifier.padding(16.dp),
                fontFamily = roboto,
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
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
                                    if (isDark) {
                                        listOf(
                                            screenColors.background,
                                            screenColors.background,
                                        )
                                    } else {
                                        listOf(
                                            accentColor,
                                            Color.White,
                                        )
                                    },
                            ),
                    ),
        ) {
            if (psicologosBaja.isEmpty()) {
                Column(
                    modifier =
                        Modifier
                            .fillMaxSize()
                            .padding(32.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.Center,
                ) {
                    Text(
                        text = "✅ No hay psicólogos dados de baja",
                        style =
                            typography.titleMedium?.copy(
                                fontSize = 18.sp,
                                color = textSecondaryColor,
                            ) ?: MaterialTheme.typography.titleMedium,
                        textAlign = TextAlign.Center,
                        fontFamily = roboto,
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "Todos los psicólogos están activos",
                        style =
                            typography.bodyMedium?.copy(
                                fontSize = 14.sp,
                                color = textSecondaryColor,
                            ) ?: MaterialTheme.typography.bodyMedium,
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
                    items(psicologosBaja) { psicologo ->
                        PsicologoBajaCard(
                            psicologo = psicologo,
                            onDarAlta = {
                                psicologoSeleccionado = psicologo
                                mostrarDialogoAlta = true
                            },
                            typography = typography,
                            isDark = isDark,
                            primaryColor = primaryColor,
                            surfaceColor = surfaceColor,
                            textPrimaryColor = textPrimaryColor,
                            textSecondaryColor = textSecondaryColor,
                            successColor = successColor,
                            roboto = roboto,
                        )
                    }
                }
            }
        }

        // ALERT DIALOG PARA DAR DE ALTA
        if (mostrarDialogoAlta && psicologoSeleccionado != null && !isAltaInProgress) {
            AlertDialog(
                onDismissRequest = {
                    if (!isAltaInProgress) {
                        mostrarDialogoAlta = false
                    }
                },
                containerColor = surfaceColor,
                title = {
                    Text(
                        text = "Confirmar alta",
                        style =
                            typography.headlineSmall?.copy(
                                fontSize = 20.sp,
                                fontWeight = FontWeight.Bold,
                                color = textPrimaryColor,
                            ) ?: MaterialTheme.typography.headlineSmall,
                        fontFamily = roboto,
                    )
                },
                text = {
                    Text(
                        text = "¿Seguro que deseas dar de alta a ${psicologoSeleccionado!!.nombre} ${psicologoSeleccionado!!.apellido}?",
                        style =
                            typography.bodyMedium?.copy(
                                fontSize = 14.sp,
                                color = textSecondaryColor,
                            ) ?: MaterialTheme.typography.bodyMedium,
                        fontFamily = roboto,
                    )
                },
                confirmButton = {
                    Button(
                        onClick = {
                            isAltaInProgress = true
                            listarPacienteViewModel.darAltaPsicologo(psicologoSeleccionado!!.idPsicologo)
                        },
                        colors =
                            ButtonDefaults.buttonColors(
                                containerColor = successColor,
                            ),
                        shape = RoundedCornerShape(12.dp),
                        enabled = !isAltaInProgress,
                    ) {
                        Text(
                            if (isAltaInProgress) "Procesando..." else "Dar de alta",
                            style =
                                typography.labelLarge?.copy(
                                    fontSize = 14.sp,
                                    fontWeight = FontWeight.Medium,
                                ) ?: MaterialTheme.typography.labelLarge,
                            color = Color.White,
                            fontFamily = roboto,
                        )
                    }
                },
                dismissButton = {
                    OutlinedButton(
                        onClick = {
                            if (!isAltaInProgress) {
                                mostrarDialogoAlta = false
                            }
                        },
                        shape = RoundedCornerShape(12.dp),
                        colors =
                            ButtonDefaults.outlinedButtonColors(
                                contentColor = primaryColor,
                            ),
                        enabled = !isAltaInProgress,
                    ) {
                        Text(
                            "Cancelar",
                            style =
                                typography.labelLarge?.copy(
                                    fontSize = 14.sp,
                                    fontWeight = FontWeight.Medium,
                                ) ?: MaterialTheme.typography.labelLarge,
                            fontFamily = roboto,
                        )
                    }
                },
            )
        }
    }
}

@Composable
fun PsicologoBajaCard(
    psicologo: PsicologoSelfResponseDTO,
    onDarAlta: () -> Unit,
    typography: androidx.compose.material3.Typography,
    isDark: Boolean,
    primaryColor: Color,
    surfaceColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    successColor: Color,
    roboto: FontFamily,
) {
    Card(
        shape = RoundedCornerShape(20.dp),
        modifier =
            Modifier
                .fillMaxWidth()
                .shadow(8.dp, RoundedCornerShape(20.dp)),
        colors = CardDefaults.cardColors(containerColor = surfaceColor),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
    ) {
        Column(modifier = Modifier.padding(20.dp)) {
            // Indicador de estado "Dado de baja"
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                // Nombre completo
                Text(
                    text = "${psicologo.nombre} ${psicologo.apellido}",
                    style =
                        typography.titleLarge?.copy(
                            fontSize = 18.sp,
                            fontWeight = FontWeight.Bold,
                            color = primaryColor,
                        ) ?: MaterialTheme.typography.titleLarge,
                    fontFamily = roboto,
                )

                // Badge de estado
                Box(
                    modifier =
                        Modifier
                            .background(
                                color = Color.Red.copy(alpha = 0.1f),
                                shape = RoundedCornerShape(12.dp),
                            ).padding(horizontal = 8.dp, vertical = 4.dp),
                ) {
                    Text(
                        text = "DADO DE BAJA",
                        style =
                            typography.labelSmall?.copy(
                                fontSize = 10.sp,
                                fontWeight = FontWeight.Bold,
                                color = Color.Red,
                            ) ?: MaterialTheme.typography.labelSmall,
                        fontFamily = roboto,
                    )
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Especialidad
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
            ) {
                Text(
                    text = "Especialidad:",
                    style =
                        typography.bodyMedium?.copy(
                            fontSize = 13.sp,
                            color = textSecondaryColor,
                            fontWeight = FontWeight.Medium,
                        ) ?: MaterialTheme.typography.bodyMedium,
                    fontFamily = roboto,
                )
                Text(
                    text = psicologo.especialidad,
                    style =
                        typography.bodyMedium?.copy(
                            fontSize = 13.sp,
                            color = textPrimaryColor,
                        ) ?: MaterialTheme.typography.bodyMedium,
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
                        style =
                            typography.bodyMedium?.copy(
                                fontSize = 13.sp,
                                color = textSecondaryColor,
                                fontWeight = FontWeight.Medium,
                            ) ?: MaterialTheme.typography.bodyMedium,
                        fontFamily = roboto,
                    )
                    Text(
                        text = psicologo.licencia,
                        style =
                            typography.bodyMedium?.copy(
                                fontSize = 13.sp,
                                color = textPrimaryColor,
                            ) ?: MaterialTheme.typography.bodyMedium,
                        fontFamily = roboto,
                    )
                }
                Spacer(modifier = Modifier.height(4.dp))
            }

            // Descripción
            if (!psicologo.descripcion.isNullOrBlank()) {
                Text(
                    text = "Descripción:",
                    style =
                        typography.bodyMedium?.copy(
                            fontSize = 12.sp,
                            color = textSecondaryColor,
                            fontWeight = FontWeight.Medium,
                        ) ?: MaterialTheme.typography.bodyMedium,
                    modifier = Modifier.padding(top = 8.dp),
                    fontFamily = roboto,
                )
                Text(
                    text = psicologo.descripcion,
                    style =
                        typography.bodySmall?.copy(
                            fontSize = 12.sp,
                            color = textSecondaryColor,
                        ) ?: MaterialTheme.typography.bodySmall,
                    modifier = Modifier.padding(top = 2.dp),
                    fontFamily = roboto,
                )
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Botón de acción: Dar de alta
            Button(
                onClick = onDarAlta,
                colors =
                    ButtonDefaults.buttonColors(
                        containerColor = successColor,
                    ),
                shape = RoundedCornerShape(12.dp),
                modifier = Modifier.fillMaxWidth(),
            ) {
                Icon(
                    imageVector = Icons.Default.PersonAdd,
                    contentDescription = "Dar de alta",
                    tint = Color.White,
                    modifier = Modifier.padding(end = 8.dp),
                )
                Text(
                    "Dar de alta",
                    style =
                        typography.labelMedium?.copy(
                            fontSize = 13.sp,
                            fontWeight = FontWeight.Medium,
                        ) ?: MaterialTheme.typography.labelMedium,
                    color = Color.White,
                    fontFamily = roboto,
                )
            }
        }
    }
}
