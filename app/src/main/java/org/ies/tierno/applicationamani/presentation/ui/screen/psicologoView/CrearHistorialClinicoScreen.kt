package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import org.ies.tierno.applicationamani.R
import androidx.compose.ui.res.stringResource
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
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Feed
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.dto.historial.request.HistorialClinicoRequestDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.historialClinico.HistorialClinicoPacienteViewModel

/**
 * Paleta de colores corporativos para la pantalla de creación de historial clínico.
 */
object HistorialClinicoColors {
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

/**
 * Pantalla de creación de una entrada en el historial clínico de un paciente.
 *
 * Permite al psicólogo registrar un título, diagnóstico, tratamiento y
 * observaciones para el historial clínico del paciente. Al guardar, envía
 * un [HistorialClinicoRequestDTO] al backend y muestra una notificación
 * de éxito.
 *
 * @param navController Controlador de navegación para volver atrás tras guardar.
 * @param pacienteId Identificador del paciente para el que se crea el historial.
 * @param viewModel ViewModel que gestiona la creación del historial clínico.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CrearHistorialClinicoScreen(
    navController: NavController,
    pacienteId: Long,
    viewModel: HistorialClinicoPacienteViewModel,
) {
    val context = LocalContext.current
    val tokenDataStore = remember { TokenDataStore(context) }

    var titulo by remember { mutableStateOf("") }
    var diagnostico by remember { mutableStateOf("") }
    var tratamiento by remember { mutableStateOf("") }
    var observaciones by remember { mutableStateOf("") }

    val historialCreado by viewModel.historialCreado
    val isLoading by viewModel.isLoading
    val error by viewModel.error

    val snackbarHostState = remember { SnackbarHostState() }

    // Obtener token internamente
    var token by remember { mutableStateOf("") }
    LaunchedEffect(Unit) {
        viewModel.resetHistorialCreado()
        token = tokenDataStore.getToken() ?: ""
        viewModel.cargarHistorialClinico(pacienteId, "Bearer $token")
    }

    LaunchedEffect(historialCreado) {
        if (historialCreado != null) {
            snackbarHostState.showSnackbar(
                message = "Historial clínico creado exitosamente",
                duration = SnackbarDuration.Short,
            )
            viewModel.resetHistorialCreado()
            navController.popBackStack()
        }
    }

    LaunchedEffect(error) {
        if (!error.isNullOrBlank()) {
            snackbarHostState.showSnackbar(
                message = error ?: "Error al crear historial clínico",
                duration = SnackbarDuration.Long,
            )
        }
    }

    val typography = MaterialTheme.typography

    Scaffold(
        containerColor = MaterialTheme.colorScheme.background,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) },
        topBar = {
            TopAppBar(
                title = {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Text(
                            text = stringResource(R.string.auto_nuevo_historial_clinico),
                            style =
                                typography.titleLarge?.copy(
                                    fontWeight = FontWeight.Bold,
                                    color = Color.White,
                                    fontSize = 20.sp,
                                ) ?: MaterialTheme.typography.titleLarge,
                        )
                        IconButton(onClick = {
                            navController.navigate(Screens.historialClinico.createRoute(pacienteId))
                        }) {
                            Icon(Icons.AutoMirrored.Filled.Feed, contentDescription = null, tint = Color.White)
                        }
                    }
                },
                navigationIcon = {
                    IconButton(onClick = { navController.popBackStack() }) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = Color.White,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                    ),
            )
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
                                        HistorialClinicoColors.Accent,
                                        Color.White,
                                    ),
                            ),
                    ),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .verticalScroll(rememberScrollState())
                        .padding(horizontal = 24.dp, vertical = 32.dp),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Top,
            ) {
                // Título de la sección
                Text(
                    text = stringResource(R.string.auto_informacion_del_historial),
                    style =
                        typography.headlineSmall?.copy(
                            fontSize = 28.sp,
                            fontWeight = FontWeight.Bold,
                            color = MaterialTheme.colorScheme.primary,
                        ) ?: MaterialTheme.typography.headlineSmall,
                    textAlign = TextAlign.Center,
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(bottom = 8.dp),
                )

                Text(
                    text = stringResource(R.string.auto_registra_la_informacion_clinica),
                    style =
                        typography.bodyMedium?.copy(
                            fontSize = 14.sp,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            textAlign = TextAlign.Center,
                        ) ?: MaterialTheme.typography.bodyMedium,
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(bottom = 24.dp),
                )

                // Card principal
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.extraLarge,
                    colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
                    elevation = CardDefaults.cardElevation(defaultElevation = 0.dp),
                ) {
                    Column(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(24.dp),
                        verticalArrangement = Arrangement.spacedBy(20.dp),
                    ) {
                        // Campo: Título
                        OutlinedTextField(
                            modifier = Modifier.fillMaxWidth(),
                            value = titulo,
                            onValueChange = { titulo = it },
                            label = {
                                Text(stringResource(R.string.auto_titulo_),
                                    style =
                                        typography.bodyMedium?.copy(fontSize = 14.sp)
                                            ?: MaterialTheme.typography.bodyMedium,
                                )
                            },
                            placeholder = {
                                Text(stringResource(R.string.auto_ej_sesion_de_terapia),
                                    style =
                                        typography.bodyMedium?.copy(fontSize = 14.sp)
                                            ?: MaterialTheme.typography.bodyMedium,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                )
                            },
                            isError = titulo.isBlank() && historialCreado != null,
                            supportingText = {
                                if (titulo.isBlank()) {
                                    Text(
                                        text = stringResource(R.string.auto_el_titulo_es_obligatorio),
                                        style =
                                            typography.bodySmall?.copy(fontSize = 12.sp)
                                                ?: MaterialTheme.typography.bodySmall,
                                        color = MaterialTheme.colorScheme.error,
                                    )
                                }
                            },
                            singleLine = true,
                            enabled = !isLoading,
                            shape = MaterialTheme.shapes.medium,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedTextColor = Color.Black,
                                    unfocusedTextColor = Color.Black,
                                    focusedLabelColor = MaterialTheme.colorScheme.primary,
                                    unfocusedLabelColor = MaterialTheme.colorScheme.onSurfaceVariant,
                                    focusedPlaceholderColor = MaterialTheme.colorScheme.onSurfaceVariant,
                                    unfocusedPlaceholderColor = MaterialTheme.colorScheme.onSurfaceVariant,
                                    cursorColor = MaterialTheme.colorScheme.primary,
                                    focusedBorderColor = MaterialTheme.colorScheme.primary,
                                    unfocusedBorderColor = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.3f),
                                    errorBorderColor = MaterialTheme.colorScheme.error,
                                    focusedContainerColor = Color.White,
                                    unfocusedContainerColor = Color.White,
                                ),
                        )

                        // Campo: Diagnóstico
                        OutlinedTextField(
                            modifier = Modifier.fillMaxWidth(),
                            value = diagnostico,
                            onValueChange = { diagnostico = it },
                            label = {
                                Text(stringResource(R.string.auto_diagnostico),
                                    style =
                                        typography.bodyMedium?.copy(fontSize = 14.sp)
                                            ?: MaterialTheme.typography.bodyMedium,
                                )
                            },
                            placeholder = {
                                Text(stringResource(R.string.auto_descripcion_del_diagnostico_clinico),
                                    style =
                                        typography.bodyMedium?.copy(fontSize = 14.sp)
                                            ?: MaterialTheme.typography.bodyMedium,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                )
                            },
                            minLines = 3,
                            maxLines = 5,
                            enabled = !isLoading,
                            shape = MaterialTheme.shapes.medium,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedTextColor = Color.Black,
                                    unfocusedTextColor = Color.Black,
                                    focusedLabelColor = MaterialTheme.colorScheme.primary,
                                    unfocusedLabelColor = MaterialTheme.colorScheme.onSurfaceVariant,
                                    focusedPlaceholderColor = MaterialTheme.colorScheme.onSurfaceVariant,
                                    unfocusedPlaceholderColor = MaterialTheme.colorScheme.onSurfaceVariant,
                                    cursorColor = MaterialTheme.colorScheme.primary,
                                    focusedBorderColor = MaterialTheme.colorScheme.primary,
                                    unfocusedBorderColor = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.3f),
                                    errorBorderColor = MaterialTheme.colorScheme.error,
                                    focusedContainerColor = Color.White,
                                    unfocusedContainerColor = Color.White,
                                ),
                        )

                        // Campo: Tratamiento
                        OutlinedTextField(
                            modifier = Modifier.fillMaxWidth(),
                            value = tratamiento,
                            onValueChange = { tratamiento = it },
                            label = {
                                Text(stringResource(R.string.auto_tratamiento),
                                    style =
                                        typography.bodyMedium?.copy(fontSize = 14.sp)
                                            ?: MaterialTheme.typography.bodyMedium,
                                )
                            },
                            placeholder = {
                                Text(stringResource(R.string.auto_tratamiento_recomendado_o_en),
                                    style =
                                        typography.bodyMedium?.copy(fontSize = 14.sp)
                                            ?: MaterialTheme.typography.bodyMedium,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                )
                            },
                            minLines = 3,
                            maxLines = 5,
                            enabled = !isLoading,
                            shape = MaterialTheme.shapes.medium,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedTextColor = Color.Black,
                                    unfocusedTextColor = Color.Black,
                                    focusedLabelColor = MaterialTheme.colorScheme.primary,
                                    unfocusedLabelColor = MaterialTheme.colorScheme.onSurfaceVariant,
                                    focusedPlaceholderColor = MaterialTheme.colorScheme.onSurfaceVariant,
                                    unfocusedPlaceholderColor = MaterialTheme.colorScheme.onSurfaceVariant,
                                    cursorColor = MaterialTheme.colorScheme.primary,
                                    focusedBorderColor = MaterialTheme.colorScheme.primary,
                                    unfocusedBorderColor = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.3f),
                                    errorBorderColor = MaterialTheme.colorScheme.error,
                                    focusedContainerColor = Color.White,
                                    unfocusedContainerColor = Color.White,
                                ),
                        )

                        // Campo: Observaciones
                        OutlinedTextField(
                            modifier = Modifier.fillMaxWidth(),
                            value = observaciones,
                            onValueChange = { observaciones = it },
                            label = {
                                Text(stringResource(R.string.auto_observaciones),
                                    style =
                                        typography.bodyMedium?.copy(fontSize = 14.sp)
                                            ?: MaterialTheme.typography.bodyMedium,
                                )
                            },
                            placeholder = {
                                Text(stringResource(R.string.auto_notas_adicionales_sobre_el),
                                    style =
                                        typography.bodyMedium?.copy(fontSize = 14.sp)
                                            ?: MaterialTheme.typography.bodyMedium,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                )
                            },
                            minLines = 4,
                            maxLines = 8,
                            enabled = !isLoading,
                            shape = MaterialTheme.shapes.medium,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedTextColor = Color.Black,
                                    unfocusedTextColor = Color.Black,
                                    focusedLabelColor = MaterialTheme.colorScheme.primary,
                                    unfocusedLabelColor = MaterialTheme.colorScheme.onSurfaceVariant,
                                    focusedPlaceholderColor = MaterialTheme.colorScheme.onSurfaceVariant,
                                    unfocusedPlaceholderColor = MaterialTheme.colorScheme.onSurfaceVariant,
                                    cursorColor = MaterialTheme.colorScheme.primary,
                                    focusedBorderColor = MaterialTheme.colorScheme.primary,
                                    unfocusedBorderColor = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.3f),
                                    errorBorderColor = MaterialTheme.colorScheme.error,
                                    focusedContainerColor = Color.White,
                                    unfocusedContainerColor = Color.White,
                                ),
                        )

                        // Botón de guardar
                        Button(
                            modifier =
                                Modifier
                                    .fillMaxWidth()
                                    .height(52.dp),
                            shape = RoundedCornerShape(26.dp),
                            onClick = {
                                if (titulo.isNotBlank()) {
                                    viewModel.crearHistorialClinico(
                                        HistorialClinicoRequestDTO(
                                            idPaciente = pacienteId,
                                            titulo = titulo,
                                            diagnostico = diagnostico.ifBlank { null },
                                            tratamiento = tratamiento.ifBlank { null },
                                            observaciones = observaciones.ifBlank { null },
                                        ),
                                    )
                                }
                            },
                            enabled = !isLoading && titulo.isNotBlank(),
                            colors =
                                ButtonDefaults.buttonColors(
                                    containerColor = MaterialTheme.colorScheme.primary,
                                    contentColor = Color.White,
                                    disabledContainerColor = MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.5f),
                                    disabledContentColor = Color.White.copy(alpha = 0.7f),
                                ),
                            elevation = ButtonDefaults.buttonElevation(defaultElevation = 4.dp),
                        ) {
                            if (isLoading) {
                                Row(
                                    horizontalArrangement = Arrangement.Center,
                                    verticalAlignment = Alignment.CenterVertically,
                                ) {
                                    CircularProgressIndicator(
                                        modifier = Modifier.size(20.dp),
                                        strokeWidth = 2.dp,
                                        color = Color.White,
                                    )
                                    Spacer(modifier = Modifier.width(8.dp))
                                    Text(stringResource(R.string.auto_guardando),
                                        style =
                                            typography.labelLarge?.copy(fontSize = 15.sp)
                                                ?: MaterialTheme.typography.labelLarge,
                                    )
                                }
                            } else {
                                Text(stringResource(R.string.auto_guardar_historial_clinico),
                                    style =
                                        typography.labelLarge?.copy(
                                            fontSize = 16.sp,
                                            fontWeight = FontWeight.Medium,
                                        ) ?: MaterialTheme.typography.labelLarge,
                                )
                            }
                        }
                    }
                }

                // Texto de ayuda
                Spacer(modifier = Modifier.height(24.dp))
                Text(
                    text = stringResource(R.string.auto__registra_la_informacion),
                    style =
                        typography.bodySmall?.copy(
                            fontSize = 12.sp,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            textAlign = TextAlign.Center,
                        ) ?: MaterialTheme.typography.bodySmall,
                    modifier = Modifier.fillMaxWidth(),
                )
            }
        }
    }
}
