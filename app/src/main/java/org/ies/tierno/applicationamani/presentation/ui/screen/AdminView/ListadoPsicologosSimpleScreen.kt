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
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel

// Colores originales para el modo DEFECTO (como LoginScreen)
object AdminViewDefaultColors {
    val Primary = Color(0xFF6B4E71)
    val PrimaryLight = Color(0xFF9B7E9F)
    val PrimaryDark = Color(0xFF4A2B50)
    val Secondary = Color(0xFFE8B4B8)
    val Accent = Color(0xFFF5E6E8)
    val Background = Color(0xFFFDF8F9)
    val Surface = Color(0xFFFFFFFF)
    val TextPrimary = Color(0xFF2D1B30)
    val TextSecondary = Color(0xFF7A6B7E)
    val Error = Color(0xFFE57373)
    val Success = Color(0xFF81C784)
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPsicologosSimpleScreen(
    navController: NavController,
    viewModel: ListarPsicologosAdminViewModel,
    listarPaciente: ListarPacientesViewModel
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
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

    // Determinar colores segun el tema
    val backgroundColor = if (isDark) screenColors.background else AdminViewDefaultColors.Background
    val surfaceColor = if (isDark) cardColors.cardBackground else AdminViewDefaultColors.Surface
    val primaryColor = if (isDark) MaterialTheme.colorScheme.primary else AdminViewDefaultColors.Primary
    val accentColor = if (isDark) cardColors.cardBackground else AdminViewDefaultColors.Accent
    val textPrimaryColor = if (isDark) cardColors.cardContent else AdminViewDefaultColors.TextPrimary
    val textSecondaryColor = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else AdminViewDefaultColors.TextSecondary
    val errorColor = AdminViewDefaultColors.Error

    val typography = MaterialTheme.typography

    // Observar el estado de la baja desde el ViewModel
    val bajaEstado by listarPaciente.bajaEstado.collectAsState()

    // Efecto para manejar el resultado de la baja
    LaunchedEffect(bajaEstado) {
        if (bajaEstado != null && isBajaInProgress) {
            if (bajaEstado!!.isSuccess) {
                snackbarHostState.showSnackbar(
                    "Psicologo ${psicologoSeleccionado?.nombre} ${psicologoSeleccionado?.apellido} dado de baja exitosamente"
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
        containerColor = backgroundColor,
        topBar = {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(surfaceColor)
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
                        contentDescription = "Volver atras",
                        tint = primaryColor
                    )
                }
                Box(modifier = Modifier.weight(1f)) {
                    MenuAdministrador("Listado de psicologos", navController)
                }
            }
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    navController.navigate(Screens.agregarPsicologo.route)
                },
                containerColor = primaryColor,
                shape = RoundedCornerShape(50.dp)
            ) {
                Icon(
                    Icons.Default.Person,
                    contentDescription = "Agregar psicologo",
                    tint = MaterialTheme.colorScheme.onPrimary
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
                        colors = if (isDark) {
                            listOf(
                                screenColors.background,
                                screenColors.background
                            )
                        } else {
                            listOf(
                                accentColor,
                                Color.White
                            )
                        }
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
                        text = "No hay psicologos registrados",
                        style = typography.titleMedium?.copy(
                            fontSize = 18.sp,
                            color = textSecondaryColor
                        ) ?: MaterialTheme.typography.titleMedium,
                        textAlign = TextAlign.Center,
                        fontFamily = roboto
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "Presiona el boton + para agregar uno",
                        style = typography.bodyMedium?.copy(
                            fontSize = 14.sp,
                            color = textSecondaryColor
                        ) ?: MaterialTheme.typography.bodyMedium,
                        textAlign = TextAlign.Center,
                        fontFamily = roboto
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
                            roboto = roboto
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
                        style = typography.headlineSmall?.copy(
                            fontSize = 20.sp,
                            fontWeight = FontWeight.Bold,
                            color = textPrimaryColor
                        ) ?: MaterialTheme.typography.headlineSmall,
                        fontFamily = roboto
                    )
                },
                text = {
                    Text(
                        text = "Seguro que deseas dar de baja a ${psicologoSeleccionado!!.nombre} ${psicologoSeleccionado!!.apellido}?",
                        style = typography.bodyMedium?.copy(
                            fontSize = 14.sp,
                            color = textSecondaryColor
                        ) ?: MaterialTheme.typography.bodyMedium,
                        fontFamily = roboto
                    )
                },
                confirmButton = {
                    Button(
                        onClick = {
                            isBajaInProgress = true
                            listarPaciente.darBajaPsicologo(psicologoSeleccionado!!.idPsicologo)
                        },
                        colors = ButtonDefaults.buttonColors(
                            containerColor = errorColor
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
                            color = Color.White,
                            fontFamily = roboto
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
                            contentColor = primaryColor
                        ),
                        enabled = !isBajaInProgress
                    ) {
                        Text(
                            "Cancelar",
                            style = typography.labelLarge?.copy(
                                fontSize = 14.sp,
                                fontWeight = FontWeight.Medium
                            ) ?: MaterialTheme.typography.labelLarge,
                            fontFamily = roboto
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
    typography: androidx.compose.material3.Typography,
    isDark: Boolean,
    primaryColor: Color,
    surfaceColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    errorColor: Color,
    roboto: FontFamily
) {
    Card(
        shape = RoundedCornerShape(20.dp),
        modifier = Modifier
            .fillMaxWidth()
            .shadow(8.dp, RoundedCornerShape(20.dp)),
        colors = CardDefaults.cardColors(containerColor = surfaceColor),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(modifier = Modifier.padding(20.dp)) {
            // Nombre completo
            Text(
                text = "${psicologo.nombre} ${psicologo.apellido}",
                style = typography.titleLarge?.copy(
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Bold,
                    color = primaryColor
                ) ?: MaterialTheme.typography.titleLarge,
                modifier = Modifier.padding(bottom = 8.dp),
                fontFamily = roboto
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
                        color = textSecondaryColor,
                        fontWeight = FontWeight.Medium
                    ) ?: MaterialTheme.typography.bodyMedium,
                    fontFamily = roboto
                )
                Text(
                    text = psicologo.especialidad,
                    style = typography.bodyMedium?.copy(
                        fontSize = 13.sp,
                        color = textPrimaryColor
                    ) ?: MaterialTheme.typography.bodyMedium,
                    fontFamily = roboto
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
                            color = textSecondaryColor,
                            fontWeight = FontWeight.Medium
                        ) ?: MaterialTheme.typography.bodyMedium,
                        fontFamily = roboto
                    )
                    Text(
                        text = psicologo.licencia,
                        style = typography.bodyMedium?.copy(
                            fontSize = 13.sp,
                            color = textPrimaryColor
                        ) ?: MaterialTheme.typography.bodyMedium,
                        fontFamily = roboto
                    )
                }
                Spacer(modifier = Modifier.height(4.dp))
            }

            // Descripcion
            if (!psicologo.descripcion.isNullOrBlank()) {
                Text(
                    text = "Descripcion:",
                    style = typography.bodyMedium?.copy(
                        fontSize = 12.sp,
                        color = textSecondaryColor,
                        fontWeight = FontWeight.Medium
                    ) ?: MaterialTheme.typography.bodyMedium,
                    modifier = Modifier.padding(top = 8.dp),
                    fontFamily = roboto
                )
                Text(
                    text = psicologo.descripcion,
                    style = typography.bodySmall?.copy(
                        fontSize = 12.sp,
                        color = textSecondaryColor
                    ) ?: MaterialTheme.typography.bodySmall,
                    modifier = Modifier.padding(top = 2.dp),
                    fontFamily = roboto
                )
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Botones de accion
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Button(
                    onClick = onDarBaja,
                    colors = ButtonDefaults.buttonColors(
                        containerColor = errorColor
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
                        color = Color.White,
                        fontFamily = roboto
                    )
                }

                Button(
                    onClick = onEditar,
                    colors = ButtonDefaults.buttonColors(
                        containerColor = primaryColor
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
                        color = Color.White,
                        fontFamily = roboto
                    )
                }
            }
        }
    }
}
