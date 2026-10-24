package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import android.content.res.Configuration
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Badge
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Timeline
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
import androidx.compose.material3.Snackbar
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.perfil.UsuarioUpdateDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.UpdatePsicologoRequestDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.EditProfilePsicologoViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel

/**
 * Pantalla de edición del perfil del psicólogo.
 *
 * Permite al psicólogo modificar sus datos profesionales: nombre,
 * apellidos, email, especialidad, experiencia, licencia y descripción.
 * Al guardar, actualiza el perfil en el backend y muestra una notificación
 * de éxito antes de volver atrás.
 *
 * @param navController Controlador de navegación para volver atrás tras guardar.
 * @param identificador Identificador del psicólogo a editar.
 * @param editProfilePsicologoViewModel ViewModel que gestiona la edición del perfil.
 */
@Composable
fun EditProfilePsicologoScreen(
    navController: NavController,
    identificador: Long,
    editProfilePsicologoViewModel: EditProfilePsicologoViewModel = koinViewModel(),
) {
    // Estados del ViewModel
    val state by editProfilePsicologoViewModel.state.collectAsStateWithLifecycle()
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    // Estados locales para manejar carga y éxito
    var isLoading by remember { mutableStateOf(false) }
    var showSuccess by remember { mutableStateOf(false) }
    var errorMessage by remember { mutableStateOf<String?>(null) }

    val msgActualizado = stringResource(R.string.perfil_actualizado_msg)
    val labelCerrar = stringResource(R.string.auto_cerrar)
    val msgErrorActualizar = stringResource(R.string.perfil_error_actualizar)

    // Establecer el ID del psicólogo
    LaunchedEffect(identificador) {
        editProfilePsicologoViewModel.loadProfileById(identificador)
    }

    // Manejar éxito en la actualización
    LaunchedEffect(showSuccess) {
        if (showSuccess) {
            scope.launch {
                snackbarHostState.showSnackbar(
                    message = msgActualizado,
                    duration = SnackbarDuration.Short,
                )
                delay(1500)
                navController.popBackStack()
            }
        }
    }

    // Manejar errores
    LaunchedEffect(errorMessage) {
        errorMessage?.let {
            scope.launch {
                snackbarHostState.showSnackbar(
                    message = it,
                    actionLabel = labelCerrar,
                    duration = SnackbarDuration.Short,
                )
            }
        }
    }

    EditProfilePsicologoContent(
        state = state,
        isLoading = isLoading,
        snackbarHostState = snackbarHostState,
        onNombreChange = editProfilePsicologoViewModel::onNombreChange,
        onApellidoChange = editProfilePsicologoViewModel::onApellidoChange,
        onEmailChange = editProfilePsicologoViewModel::onEmailChange,
        onEspecialidadChange = editProfilePsicologoViewModel::onEspecialidadChange,
        onExperienciaChange = editProfilePsicologoViewModel::onExperienciaChange,
        onLicenciaChange = editProfilePsicologoViewModel::onLicenciaChange,
        onDescripcionChange = editProfilePsicologoViewModel::onDescripcionChange,
        onBackClick = { navController.navigateUp() },
        onCancelClick = { navController.popBackStack() },
        onSaveClick = {
            isLoading = true
            errorMessage = null

            // Ejecutar la actualización y mostrar resultado
            scope.launch {
                try {
                    val success = editProfilePsicologoViewModel.updateProfile(identificador)
                    if (success) {
                        showSuccess = true
                    } else {
                        errorMessage = msgErrorActualizar
                    }
                    delay(500)
                } catch (e: Exception) {
                    errorMessage = e.message ?: msgErrorActualizar
                } finally {
                    isLoading = false
                }
            }
        },
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun EditProfilePsicologoContent(
    state: UpdatePsicologoRequestDTO,
    isLoading: Boolean,
    snackbarHostState: SnackbarHostState,
    onNombreChange: (String) -> Unit,
    onApellidoChange: (String) -> Unit,
    onEmailChange: (String) -> Unit,
    onEspecialidadChange: (String) -> Unit,
    onExperienciaChange: (String) -> Unit,
    onLicenciaChange: (String) -> Unit,
    onDescripcionChange: (String) -> Unit,
    onBackClick: () -> Unit,
    onCancelClick: () -> Unit,
    onSaveClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    val scrollState = rememberScrollState()

    Scaffold(
        modifier = modifier,
        containerColor = colorScheme.background,
        snackbarHost = {
            SnackbarHost(
                hostState = snackbarHostState,
                modifier = Modifier.padding(Spacing.m),
            ) { data ->
                Snackbar(
                    snackbarData = data,
                    containerColor = colorScheme.primaryContainer,
                    contentColor = colorScheme.onPrimaryContainer,
                )
            }
        },
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_editar_perfil_profesional),
                        style = typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                    )
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colorScheme.surface,
                        titleContentColor = colorScheme.onSurface,
                        navigationIconContentColor = colorScheme.onSurface,
                    ),
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = colorScheme.onSurface,
                        )
                    }
                },
            )
        },
    ) { paddingValues ->
        Column(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .padding(Spacing.m)
                    .verticalScroll(scrollState),
            verticalArrangement = Arrangement.spacedBy(Spacing.m),
        ) {
            val textFieldShape = shapes.medium
            val textFieldColors =
                OutlinedTextFieldDefaults.colors(
                    focusedBorderColor = colorScheme.primary,
                    unfocusedBorderColor = colorScheme.outlineVariant,
                )

            // ==================== SECCIÓN 1: DATOS PERSONALES ====================
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
                shape = shapes.large,
                elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
            ) {
                Column(modifier = Modifier.padding(Spacing.m)) {
                    Text(
                        stringResource(R.string.auto_datos_personales),
                        style = typography.titleLarge,
                        color = colorScheme.primary,
                        fontWeight = FontWeight.Bold,
                        modifier = Modifier.padding(bottom = Spacing.m),
                    )

                    // Nombre
                    OutlinedTextField(
                        value = state.usuario?.nombre ?: "",
                        onValueChange = onNombreChange,
                        label = { Text(stringResource(R.string.auto_nombre_), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.Person, contentDescription = null, tint = colorScheme.primary)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = textFieldColors,
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    // Apellido
                    OutlinedTextField(
                        value = state.usuario?.apellido ?: "",
                        onValueChange = onApellidoChange,
                        label = { Text(stringResource(R.string.auto_apellido_), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.Person, contentDescription = null, tint = colorScheme.primary)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = textFieldColors,
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    // Email
                    OutlinedTextField(
                        value = state.usuario?.email ?: "",
                        onValueChange = onEmailChange,
                        label = { Text(stringResource(R.string.auto_email_), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.Email, contentDescription = null, tint = colorScheme.primary)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = textFieldColors,
                    )
                }
            }

            // ==================== SECCIÓN 2: DATOS PROFESIONALES ====================
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
                shape = shapes.large,
                elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
            ) {
                Column(modifier = Modifier.padding(Spacing.m)) {
                    Text(
                        stringResource(R.string.auto_datos_profesionales),
                        style = typography.titleLarge,
                        color = colorScheme.primary,
                        fontWeight = FontWeight.Bold,
                        modifier = Modifier.padding(bottom = Spacing.m),
                    )

                    // Especialidad
                    OutlinedTextField(
                        value = state.especialidad ?: "",
                        onValueChange = onEspecialidadChange,
                        label = { Text(stringResource(R.string.auto_especialidad_), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.MedicalServices, contentDescription = null, tint = colorScheme.primary)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = textFieldColors,
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    // Experiencia
                    OutlinedTextField(
                        value = state.experiencia?.toString() ?: "",
                        onValueChange = onExperienciaChange,
                        label = { Text(stringResource(R.string.auto_experiencia_anos), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.Timeline, contentDescription = null, tint = colorScheme.primary)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = textFieldColors,
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    // Licencia
                    OutlinedTextField(
                        value = state.licencia ?: "",
                        onValueChange = onLicenciaChange,
                        label = { Text(stringResource(R.string.auto_licencia_colegiada), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.Badge, contentDescription = null, tint = colorScheme.primary)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = textFieldColors,
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    // Descripción
                    OutlinedTextField(
                        value = state.descripcion ?: "",
                        onValueChange = onDescripcionChange,
                        label = { Text(stringResource(R.string.auto_descripcion_1), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.Description, contentDescription = null, tint = colorScheme.primary)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        minLines = 3,
                        maxLines = 5,
                        colors = textFieldColors,
                    )
                }
            }

            // ==================== BOTÓN GUARDAR ====================
            Button(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .height(Dimensions.buttonHeight),
                enabled = !isLoading,
                colors =
                    ButtonDefaults.buttonColors(
                        containerColor = colorScheme.primary,
                        contentColor = colorScheme.onPrimary,
                        disabledContainerColor = colorScheme.surfaceVariant,
                    ),
                shape = shapes.medium,
                onClick = onSaveClick,
            ) {
                if (isLoading) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(Dimensions.iconMedium),
                        color = colorScheme.onPrimary,
                        strokeWidth = Dimensions.borderMedium,
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(
                        stringResource(R.string.auto_guardando),
                        style = typography.labelLarge,
                        fontWeight = FontWeight.Bold,
                    )
                } else {
                    Text(
                        stringResource(R.string.auto_guardar_cambios_1),
                        style = typography.labelLarge,
                        fontWeight = FontWeight.Bold,
                    )
                }
            }

            // Botón cancelar
            TextButton(
                onClick = onCancelClick,
                modifier = Modifier.fillMaxWidth(),
            ) {
                Text(stringResource(R.string.auto_cancelar), color = colorScheme.onSurfaceVariant)
            }

            Spacer(modifier = Modifier.height(Spacing.m))
        }
    }
}

@Preview(name = "EditProfilePsicologo Light", showBackground = true)
@Preview(
    name = "EditProfilePsicologo Dark",
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
)
@Preview(name = "EditProfilePsicologo Large Font", showBackground = true, fontScale = 1.5f)
@Composable
private fun EditProfilePsicologoScreenPreview() {
    AppTheme {
        EditProfilePsicologoContent(
            state =
                UpdatePsicologoRequestDTO(
                    usuario =
                        UsuarioUpdateDTO(
                            nombre = "Carlos",
                            apellido = "Mendoza",
                            email = "carlos.mendoza@amani.es",
                        ),
                    especialidad = "Psicología Clínica",
                    experiencia = 8,
                    licencia = "M-12345",
                    descripcion = "Especialista en terapia cognitivo-conductual.",
                ),
            isLoading = false,
            snackbarHostState = remember { SnackbarHostState() },
            onNombreChange = {},
            onApellidoChange = {},
            onEmailChange = {},
            onEspecialidadChange = {},
            onExperienciaChange = {},
            onLicenciaChange = {},
            onDescripcionChange = {},
            onBackClick = {},
            onCancelClick = {},
            onSaveClick = {},
        )
    }
}
