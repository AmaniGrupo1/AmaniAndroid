package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

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
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.Person
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
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Pantalla de edición de los datos de un psicólogo desde el panel de administración.
 *
 * Carga los datos actuales del psicólogo identificado por [psicologoId] y
 * permite modificar nombre, apellidos, email, especialidad, experiencia,
 * descripción, licencia y teléfono. Al guardar, envía un
 * [PsicologoRequestDTO] al ViewModel y muestra una notificación de éxito.
 *
 * @param navController Controlador de navegación para volver atrás tras guardar.
 * @param viewModel ViewModel que gestiona la lista de psicólogos y su edición.
 * @param psicologoId Identificador del psicólogo a editar.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun EditarPsicologoAdminScreen(
    navController: NavController,
    viewModel: ListarPsicologosAdminViewModel,
    psicologoId: Long,
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }

    // Obtener la lista de psicólogos
    val psicologos by viewModel.psicologos.collectAsStateWithLifecycle()
    val isLoading by viewModel.isLoading.collectAsStateWithLifecycle()

    // Buscar el psicólogo por ID
    val psicologo =
        remember(psicologos, psicologoId) {
            psicologos.find { it.idPsicologo == psicologoId }
        }

    // Estados para el formulario
    var nombre by remember { mutableStateOf("") }
    var apellido by remember { mutableStateOf("") }
    var especialidad by remember { mutableStateOf("") }
    var experiencia by remember { mutableStateOf("") }
    var descripcion by remember { mutableStateOf("") }
    var licencia by remember { mutableStateOf("") }
    var telefono by remember { mutableStateOf("") }
    var email by remember { mutableStateOf("") }

    var isSaving by remember { mutableStateOf(false) }

    // Cargar datos del psicólogo cuando estén disponibles
    LaunchedEffect(psicologo) {
        if (psicologo != null) {
            nombre = psicologo.nombre ?: ""
            apellido = psicologo.apellido ?: ""
            especialidad = psicologo.especialidad ?: ""
            experiencia = psicologo.experiencia?.toString() ?: ""
            descripcion = psicologo.descripcion ?: ""
            licencia = psicologo.licencia ?: ""
            telefono = psicologo.telefono ?: ""
            email = psicologo.email ?: ""
        }
    }

    val isFormValid =
        nombre.isNotBlank() &&
            apellido.isNotBlank() &&
            especialidad.isNotBlank()

    EditarPsicologoAdminContent(
        nombre = nombre,
        apellido = apellido,
        email = email,
        especialidad = especialidad,
        experiencia = experiencia,
        licencia = licencia,
        telefono = telefono,
        descripcion = descripcion,
        isLoading = isLoading && psicologo == null,
        isSaving = isSaving,
        isFormValid = isFormValid,
        snackbarHostState = snackbarHostState,
        onNombreChange = { nombre = it },
        onApellidoChange = { apellido = it },
        onEspecialidadChange = { especialidad = it },
        onExperienciaChange = { experiencia = it },
        onLicenciaChange = { licencia = it },
        onTelefonoChange = { telefono = it },
        onDescripcionChange = { descripcion = it },
        onBackClick = { navController.popBackStack() },
        onSaveClick = {
            val experienciaInt =
                if (experiencia.isNotBlank()) experiencia.toIntOrNull() else null

            val request =
                PsicologoRequestDTO(
                    nombrePsicologo = nombre,
                    apellidoPsicologo = apellido,
                    email = email,
                    password = "",
                    especialidad = especialidad,
                    experiencia = experienciaInt,
                    descripcion = descripcion.ifBlank { null },
                    licencia = licencia.ifBlank { null },
                    telefono = telefono.ifBlank { null },
                )

            isSaving = true
            viewModel.editarPsicologo(psicologoId, request)

            scope.launch {
                delay(1000)
                isSaving = false
                snackbarHostState.showSnackbar(context.getString(R.string.admin_psicologo_actualizado_exito))
                delay(1000)
                navController.popBackStack()
            }
        },
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun EditarPsicologoAdminContent(
    nombre: String,
    apellido: String,
    email: String,
    especialidad: String,
    experiencia: String,
    licencia: String,
    telefono: String,
    descripcion: String,
    isLoading: Boolean,
    isSaving: Boolean,
    isFormValid: Boolean,
    snackbarHostState: SnackbarHostState,
    onNombreChange: (String) -> Unit,
    onApellidoChange: (String) -> Unit,
    onEspecialidadChange: (String) -> Unit,
    onExperienciaChange: (String) -> Unit,
    onLicenciaChange: (String) -> Unit,
    onTelefonoChange: (String) -> Unit,
    onDescripcionChange: (String) -> Unit,
    onBackClick: () -> Unit,
    onSaveClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Scaffold(
        modifier = modifier,
        containerColor = colorScheme.background,
        snackbarHost = { SnackbarHost(snackbarHostState) },
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_editar_psicologo),
                        style = typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
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
        Column(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .verticalScroll(rememberScrollState())
                    .padding(horizontal = Spacing.m, vertical = Spacing.m),
            verticalArrangement = Arrangement.spacedBy(Spacing.m),
        ) {
            if (isLoading) {
                Box(
                    modifier = Modifier.fillMaxSize(),
                    contentAlignment = Alignment.Center,
                ) {
                    CircularProgressIndicator(color = colorScheme.primary)
                }
            } else {
                val textFieldShape = MaterialTheme.shapes.medium
                val textFieldColors =
                    OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = colorScheme.primary,
                        unfocusedBorderColor = colorScheme.outlineVariant,
                        focusedLabelColor = colorScheme.primary,
                        cursorColor = colorScheme.primary,
                    )

                // Card de información personal
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceContainerLow),
                    shape = MaterialTheme.shapes.large,
                    elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
                ) {
                    Column(modifier = Modifier.padding(Spacing.m)) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Box(
                                modifier =
                                    Modifier
                                        .size(Dimensions.avatarSmall)
                                        .background(
                                            color = colorScheme.primaryContainer,
                                            shape = MaterialTheme.shapes.medium,
                                        ),
                                contentAlignment = Alignment.Center,
                            ) {
                                Icon(
                                    Icons.Default.Person,
                                    contentDescription = null,
                                    tint = colorScheme.onPrimaryContainer,
                                    modifier = Modifier.size(Dimensions.iconMedium),
                                )
                            }
                            Spacer(modifier = Modifier.width(Spacing.sm))
                            Text(
                                stringResource(R.string.auto_informacion_personal),
                                style = typography.titleMedium,
                                fontWeight = FontWeight.Bold,
                                color = colorScheme.onSurface,
                            )
                        }

                        Spacer(modifier = Modifier.height(Spacing.m))

                        // Nombre
                        OutlinedTextField(
                            value = nombre,
                            onValueChange = onNombreChange,
                            label = { Text(stringResource(R.string.auto_nombre_)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = textFieldColors,
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        // Apellido
                        OutlinedTextField(
                            value = apellido,
                            onValueChange = onApellidoChange,
                            label = { Text(stringResource(R.string.auto_apellido_)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = textFieldColors,
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        // Email (solo lectura)
                        OutlinedTextField(
                            value = email,
                            onValueChange = {},
                            label = { Text(stringResource(R.string.auto_email)) },
                            modifier = Modifier.fillMaxWidth(),
                            readOnly = true,
                            shape = textFieldShape,
                            colors = textFieldColors,
                        )
                    }
                }

                // Card de información profesional
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceContainerLow),
                    shape = MaterialTheme.shapes.large,
                    elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
                ) {
                    Column(modifier = Modifier.padding(Spacing.m)) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Box(
                                modifier =
                                    Modifier
                                        .size(Dimensions.avatarSmall)
                                        .background(
                                            color = colorScheme.primaryContainer,
                                            shape = MaterialTheme.shapes.medium,
                                        ),
                                contentAlignment = Alignment.Center,
                            ) {
                                Icon(
                                    Icons.Default.MedicalServices,
                                    contentDescription = null,
                                    tint = colorScheme.onPrimaryContainer,
                                    modifier = Modifier.size(Dimensions.iconMedium),
                                )
                            }
                            Spacer(modifier = Modifier.width(Spacing.sm))
                            Text(
                                stringResource(R.string.auto_informacion_profesional),
                                style = typography.titleMedium,
                                fontWeight = FontWeight.Bold,
                                color = colorScheme.onSurface,
                            )
                        }

                        Spacer(modifier = Modifier.height(Spacing.m))

                        // Especialidad
                        OutlinedTextField(
                            value = especialidad,
                            onValueChange = onEspecialidadChange,
                            label = { Text(stringResource(R.string.auto_especialidad_)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = textFieldColors,
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        // Experiencia
                        OutlinedTextField(
                            value = experiencia,
                            onValueChange = onExperienciaChange,
                            label = { Text(stringResource(R.string.auto_anos_de_experiencia)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = textFieldColors,
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        // Licencia
                        OutlinedTextField(
                            value = licencia,
                            onValueChange = onLicenciaChange,
                            label = { Text(stringResource(R.string.auto_numero_de_licencia)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = textFieldColors,
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        // Teléfono
                        OutlinedTextField(
                            value = telefono,
                            onValueChange = onTelefonoChange,
                            label = { Text(stringResource(R.string.auto_telefono)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = textFieldColors,
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        // Descripción
                        OutlinedTextField(
                            value = descripcion,
                            onValueChange = onDescripcionChange,
                            label = { Text(stringResource(R.string.auto_descripcion_profesional)) },
                            modifier = Modifier.fillMaxWidth(),
                            minLines = 3,
                            shape = textFieldShape,
                            colors = textFieldColors,
                        )
                    }
                }

                // Botón guardar
                Button(
                    onClick = onSaveClick,
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .height(Dimensions.buttonHeightLarge),
                    enabled = !isSaving && isFormValid,
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = colorScheme.primary,
                            contentColor = colorScheme.onPrimary,
                        ),
                    shape = MaterialTheme.shapes.large,
                ) {
                    if (isSaving) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(Dimensions.iconDefault),
                            color = colorScheme.onPrimary,
                            strokeWidth = Dimensions.borderMedium,
                        )
                        Spacer(modifier = Modifier.width(Spacing.sm))
                        Text(
                            stringResource(R.string.auto_guardando),
                            style = typography.labelLarge,
                            fontWeight = FontWeight.SemiBold,
                        )
                    } else {
                        Text(
                            stringResource(R.string.auto__guardar_cambios),
                            style = typography.labelLarge,
                            fontWeight = FontWeight.Bold,
                        )
                    }
                }
            }
        }
    }
}

@Preview(name = "EditarPsicologoAdmin Light", showBackground = true)
@Preview(
    name = "EditarPsicologoAdmin Dark",
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
)
@Preview(name = "EditarPsicologoAdmin Large Font", showBackground = true, fontScale = 1.5f)
@Composable
private fun EditarPsicologoAdminScreenPreview() {
    AppTheme {
        Surface(color = MaterialTheme.colorScheme.background) {
            EditarPsicologoAdminContent(
                nombre = "Carlos",
                apellido = "Mendoza",
                email = "carlos.mendoza@amani.es",
                especialidad = "Psicología Clínica",
                experiencia = "8",
                licencia = "M-12345",
                telefono = "600123456",
                descripcion = "Especialista en terapia cognitivo-conductual.",
                isLoading = false,
                isSaving = false,
                isFormValid = true,
                snackbarHostState = remember { SnackbarHostState() },
                onNombreChange = {},
                onApellidoChange = {},
                onEspecialidadChange = {},
                onExperienciaChange = {},
                onLicenciaChange = {},
                onTelefonoChange = {},
                onDescripcionChange = {},
                onBackClick = {},
                onSaveClick = {},
            )
        }
    }
}