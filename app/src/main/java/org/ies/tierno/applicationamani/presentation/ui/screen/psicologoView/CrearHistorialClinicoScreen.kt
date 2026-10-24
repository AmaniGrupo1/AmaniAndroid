package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import android.content.res.Configuration
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
import androidx.compose.foundation.shape.CircleShape
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
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.dto.historial.request.HistorialClinicoRequestDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.historialClinico.HistorialClinicoPacienteViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing

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
    val msgExito = stringResource(R.string.historial_creado_exito)
    val msgError = stringResource(R.string.historial_crear_error)

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
                message = msgExito,
                duration = SnackbarDuration.Short,
            )
            viewModel.resetHistorialCreado()
            navController.popBackStack()
        }
    }

    LaunchedEffect(error) {
        if (!error.isNullOrBlank()) {
            snackbarHostState.showSnackbar(
                message = error ?: msgError,
                duration = SnackbarDuration.Long,
            )
        }
    }

    CrearHistorialClinicoContent(
        titulo = titulo,
        onTituloChange = { titulo = it },
        diagnostico = diagnostico,
        onDiagnosticoChange = { diagnostico = it },
        tratamiento = tratamiento,
        onTratamientoChange = { tratamiento = it },
        observaciones = observaciones,
        onObservacionesChange = { observaciones = it },
        isLoading = isLoading,
        isTitleError = titulo.isBlank() && historialCreado != null,
        snackbarHostState = snackbarHostState,
        onBackClick = { navController.popBackStack() },
        onViewHistorialClick = {
            navController.navigate(Screens.historialClinico.createRoute(pacienteId))
        },
        onSaveClick = {
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
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CrearHistorialClinicoContent(
    titulo: String,
    onTituloChange: (String) -> Unit,
    diagnostico: String,
    onDiagnosticoChange: (String) -> Unit,
    tratamiento: String,
    onTratamientoChange: (String) -> Unit,
    observaciones: String,
    onObservacionesChange: (String) -> Unit,
    isLoading: Boolean,
    isTitleError: Boolean,
    snackbarHostState: SnackbarHostState,
    onBackClick: () -> Unit,
    onViewHistorialClick: () -> Unit,
    onSaveClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Scaffold(
        modifier = modifier,
        containerColor = colorScheme.background,
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
                                typography.titleLarge.copy(
                                    fontWeight = FontWeight.Bold,
                                    color = colorScheme.onSurface,
                                ),
                        )
                        IconButton(onClick = onViewHistorialClick) {
                            Icon(
                                Icons.AutoMirrored.Filled.Feed,
                                contentDescription = null,
                                tint = colorScheme.onSurface,
                            )
                        }
                    }
                },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = colorScheme.onSurface,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colorScheme.surface,
                        titleContentColor = colorScheme.onSurface,
                        navigationIconContentColor = colorScheme.onSurface,
                    ),
            )
        },
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .background(colorScheme.background),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .verticalScroll(rememberScrollState())
                        .padding(horizontal = Spacing.l, vertical = Spacing.xl),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Top,
            ) {
                // Título de la sección
                Text(
                    text = stringResource(R.string.auto_informacion_del_historial),
                    style =
                        typography.headlineSmall.copy(
                            fontWeight = FontWeight.Bold,
                            color = colorScheme.primary,
                        ),
                    textAlign = TextAlign.Center,
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(bottom = Spacing.s),
                )

                Text(
                    text = stringResource(R.string.auto_registra_la_informacion_clinica),
                    style =
                        typography.bodyMedium.copy(
                            color = colorScheme.onSurfaceVariant,
                            textAlign = TextAlign.Center,
                        ),
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(bottom = Spacing.l),
                )

                // Card principal
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.large,
                    colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
                    elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
                ) {
                    val textFieldColors =
                        OutlinedTextFieldDefaults.colors(
                            focusedTextColor = colorScheme.onSurface,
                            unfocusedTextColor = colorScheme.onSurface,
                            focusedLabelColor = colorScheme.primary,
                            unfocusedLabelColor = colorScheme.onSurfaceVariant,
                            focusedPlaceholderColor = colorScheme.onSurfaceVariant,
                            unfocusedPlaceholderColor = colorScheme.onSurfaceVariant,
                            cursorColor = colorScheme.primary,
                            focusedBorderColor = colorScheme.primary,
                            unfocusedBorderColor = colorScheme.outlineVariant,
                            errorBorderColor = colorScheme.error,
                            focusedContainerColor = colorScheme.surface,
                            unfocusedContainerColor = colorScheme.surface,
                        )

                    Column(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(Spacing.l),
                        verticalArrangement = Arrangement.spacedBy(Spacing.m),
                    ) {
                        // Campo: Título
                        OutlinedTextField(
                            modifier = Modifier.fillMaxWidth(),
                            value = titulo,
                            onValueChange = onTituloChange,
                            label = {
                                Text(
                                    stringResource(R.string.auto_titulo_),
                                    style = typography.bodyMedium,
                                )
                            },
                            placeholder = {
                                Text(
                                    stringResource(R.string.auto_ej_sesion_de_terapia),
                                    style = typography.bodyMedium,
                                    color = colorScheme.onSurfaceVariant,
                                )
                            },
                            isError = isTitleError,
                            supportingText = {
                                if (titulo.isBlank()) {
                                    Text(
                                        text = stringResource(R.string.auto_el_titulo_es_obligatorio),
                                        style = typography.bodySmall,
                                        color = colorScheme.error,
                                    )
                                }
                            },
                            singleLine = true,
                            enabled = !isLoading,
                            shape = shapes.medium,
                            colors = textFieldColors,
                        )

                        // Campo: Diagnóstico
                        OutlinedTextField(
                            modifier = Modifier.fillMaxWidth(),
                            value = diagnostico,
                            onValueChange = onDiagnosticoChange,
                            label = {
                                Text(
                                    stringResource(R.string.auto_diagnostico),
                                    style = typography.bodyMedium,
                                )
                            },
                            placeholder = {
                                Text(
                                    stringResource(R.string.auto_descripcion_del_diagnostico_clinico),
                                    style = typography.bodyMedium,
                                    color = colorScheme.onSurfaceVariant,
                                )
                            },
                            minLines = 3,
                            maxLines = 5,
                            enabled = !isLoading,
                            shape = shapes.medium,
                            colors = textFieldColors,
                        )

                        // Campo: Tratamiento
                        OutlinedTextField(
                            modifier = Modifier.fillMaxWidth(),
                            value = tratamiento,
                            onValueChange = onTratamientoChange,
                            label = {
                                Text(
                                    stringResource(R.string.auto_tratamiento),
                                    style = typography.bodyMedium,
                                )
                            },
                            placeholder = {
                                Text(
                                    stringResource(R.string.auto_tratamiento_recomendado_o_en),
                                    style = typography.bodyMedium,
                                    color = colorScheme.onSurfaceVariant,
                                )
                            },
                            minLines = 3,
                            maxLines = 5,
                            enabled = !isLoading,
                            shape = shapes.medium,
                            colors = textFieldColors,
                        )

                        // Campo: Observaciones
                        OutlinedTextField(
                            modifier = Modifier.fillMaxWidth(),
                            value = observaciones,
                            onValueChange = onObservacionesChange,
                            label = {
                                Text(
                                    stringResource(R.string.auto_observaciones),
                                    style = typography.bodyMedium,
                                )
                            },
                            placeholder = {
                                Text(
                                    stringResource(R.string.auto_notas_adicionales_sobre_el),
                                    style = typography.bodyMedium,
                                    color = colorScheme.onSurfaceVariant,
                                )
                            },
                            minLines = 4,
                            maxLines = 8,
                            enabled = !isLoading,
                            shape = shapes.medium,
                            colors = textFieldColors,
                        )

                        // Botón de guardar
                        Button(
                            modifier =
                                Modifier
                                    .fillMaxWidth()
                                    .height(Dimensions.buttonHeightLarge),
                            shape = CircleShape,
                            onClick = onSaveClick,
                            enabled = !isLoading && titulo.isNotBlank(),
                            colors =
                                ButtonDefaults.buttonColors(
                                    containerColor = colorScheme.primary,
                                    contentColor = colorScheme.onPrimary,
                                    disabledContainerColor = colorScheme.primaryContainer.copy(alpha = 0.5f),
                                    disabledContentColor = colorScheme.onPrimaryContainer.copy(alpha = 0.7f),
                                ),
                        ) {
                            if (isLoading) {
                                Row(
                                    horizontalArrangement = Arrangement.Center,
                                    verticalAlignment = Alignment.CenterVertically,
                                ) {
                                    CircularProgressIndicator(
                                        modifier = Modifier.size(Dimensions.iconMedium),
                                        strokeWidth = Dimensions.borderMedium,
                                        color = colorScheme.onPrimary,
                                    )
                                    Spacer(modifier = Modifier.width(Spacing.s))
                                    Text(
                                        stringResource(R.string.auto_guardando),
                                        style = typography.labelLarge,
                                    )
                                }
                            } else {
                                Text(
                                    stringResource(R.string.auto_guardar_historial_clinico),
                                    style =
                                        typography.labelLarge.copy(
                                            fontWeight = FontWeight.Medium,
                                        ),
                                )
                            }
                        }
                    }
                }

                // Texto de ayuda
                Spacer(modifier = Modifier.height(Spacing.l))
                Text(
                    text = stringResource(R.string.auto__registra_la_informacion),
                    style =
                        typography.bodySmall.copy(
                            color = colorScheme.onSurfaceVariant,
                            textAlign = TextAlign.Center,
                        ),
                    modifier = Modifier.fillMaxWidth(),
                )
            }
        }
    }
}

@Preview(name = "CrearHistorialClinico Light", showBackground = true)
@Preview(
    name = "CrearHistorialClinico Dark",
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
)
@Preview(name = "CrearHistorialClinico Large Font", showBackground = true, fontScale = 1.5f)
@Composable
private fun CrearHistorialClinicoScreenPreview() {
    AppTheme {
        CrearHistorialClinicoContent(
            titulo = "Sesión de seguimiento",
            onTituloChange = {},
            diagnostico = "Trastorno de ansiedad generalizada leve",
            onDiagnosticoChange = {},
            tratamiento = "Terapia cognitivo-conductual semanal",
            onTratamientoChange = {},
            observaciones = "Evolución favorable durante las últimas 3 semanas.",
            onObservacionesChange = {},
            isLoading = false,
            isTitleError = false,
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onViewHistorialClick = {},
            onSaveClick = {},
        )
    }
}
