package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import org.ies.tierno.applicationamani.R
import androidx.compose.ui.res.stringResource
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.EditProfilePsicologoViewModel
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
import androidx.compose.foundation.shape.RoundedCornerShape
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
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
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
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun EditProfilePsicologoScreen(
    navController: NavController,
    identificador: Long,
    editProfilePsicologoViewModel: EditProfilePsicologoViewModel = koinViewModel(),
) {
    val primaryColor = Color(0xFF7B68EE)
    val backgroundColor = Color(0xFFCCC0E4)
    val errorColor = Color(0xFFD32F2F)

    // Estados del ViewModel
    val state by editProfilePsicologoViewModel.state.collectAsState()
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()
    val scrollState = rememberScrollState()

    // Estados locales para manejar carga y éxito
    var isLoading by remember { mutableStateOf(false) }
    var showSuccess by remember { mutableStateOf(false) }
    var errorMessage by remember { mutableStateOf<String?>(null) }

    // Establecer el ID del psicólogo
    LaunchedEffect(identificador) {
        editProfilePsicologoViewModel.loadProfileById(identificador)
    }

    // Manejar éxito en la actualización
    LaunchedEffect(showSuccess) {
        if (showSuccess) {
            scope.launch {
                snackbarHostState.showSnackbar(
                    message = "Perfil actualizado correctamente",
                    actionLabel = "👍",
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
                    actionLabel = "Cerrar",
                    duration = SnackbarDuration.Short,
                )
            }
        }
    }

    Scaffold(
        containerColor = backgroundColor,
        snackbarHost = {
            SnackbarHost(
                hostState = snackbarHostState,
                modifier = Modifier.padding(16.dp),
            ) { data ->
                Snackbar(
                    snackbarData = data,
                    containerColor = MaterialTheme.colorScheme.primaryContainer,
                    contentColor = MaterialTheme.colorScheme.onPrimaryContainer,
                )
            }
        },
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_editar_perfil_profesional),
                        color = Color.White,
                        fontWeight = FontWeight.Bold,
                    )
                },
                colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                    ),
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = Color.White,
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
                    .padding(16.dp)
                    .verticalScroll(scrollState),
            verticalArrangement = Arrangement.spacedBy(16.dp),
        ) {
            val textFieldShape = RoundedCornerShape(12.dp)

            // ==================== SECCIÓN 1: DATOS PERSONALES ====================
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = Color.White),
                shape = RoundedCornerShape(16.dp),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Text(stringResource(R.string.auto_datos_personales),
                        style = MaterialTheme.typography.titleLarge,
                        color = primaryColor,
                        fontWeight = FontWeight.Bold,
                        modifier = Modifier.padding(bottom = 16.dp),
                    )

                    // Nombre
                    OutlinedTextField(
                        value = state.usuario?.nombre ?: "",
                        onValueChange = { editProfilePsicologoViewModel.onNombreChange(it) },
                        label = { Text(stringResource(R.string.auto_nombre_), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.Person, contentDescription = null, tint = primaryColor)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors =
                            OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color.Gray,
                            ),
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    // Apellido
                    OutlinedTextField(
                        value = state.usuario?.apellido ?: "",
                        onValueChange = { editProfilePsicologoViewModel.onApellidoChange(it) },
                        label = { Text(stringResource(R.string.auto_apellido_), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.Person, contentDescription = null, tint = primaryColor)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors =
                            OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color.Gray,
                            ),
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    // Email
                    OutlinedTextField(
                        value = state.usuario?.email ?: "",
                        onValueChange = { editProfilePsicologoViewModel.onEmailChange(it) },
                        label = { Text(stringResource(R.string.auto_email_), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.Email, contentDescription = null, tint = primaryColor)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors =
                            OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color.Gray,
                            ),
                    )
                }
            }

            // ==================== SECCIÓN 2: DATOS PROFESIONALES ====================
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = Color.White),
                shape = RoundedCornerShape(16.dp),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Text(stringResource(R.string.auto_datos_profesionales),
                        style = MaterialTheme.typography.titleLarge,
                        color = primaryColor,
                        fontWeight = FontWeight.Bold,
                        modifier = Modifier.padding(bottom = 16.dp),
                    )

                    // Especialidad
                    OutlinedTextField(
                        value = state.especialidad ?: "",
                        onValueChange = { editProfilePsicologoViewModel.onEspecialidadChange(it) },
                        label = { Text(stringResource(R.string.auto_especialidad_), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.MedicalServices, contentDescription = null, tint = primaryColor)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors =
                            OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color.Gray,
                            ),
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    // Experiencia
                    OutlinedTextField(
                        value = state.experiencia?.toString() ?: "",
                        onValueChange = { editProfilePsicologoViewModel.onExperienciaChange(it) },
                        label = { Text(stringResource(R.string.auto_experiencia_anos), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.Timeline, contentDescription = null, tint = primaryColor)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors =
                            OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color.Gray,
                            ),
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    // Licencia
                    OutlinedTextField(
                        value = state.licencia ?: "",
                        onValueChange = { editProfilePsicologoViewModel.onLicenciaChange(it) },
                        label = { Text(stringResource(R.string.auto_licencia_colegiada), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.Badge, contentDescription = null, tint = primaryColor)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors =
                            OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color.Gray,
                            ),
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    // Descripción
                    OutlinedTextField(
                        value = state.descripcion ?: "",
                        onValueChange = { editProfilePsicologoViewModel.onDescripcionChange(it) },
                        label = { Text(stringResource(R.string.auto_descripcion_1), fontWeight = FontWeight.SemiBold) },
                        leadingIcon = {
                            Icon(Icons.Default.Description, contentDescription = null, tint = primaryColor)
                        },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        minLines = 3,
                        maxLines = 5,
                        colors =
                            OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color.Gray,
                            ),
                    )
                }
            }

            // ==================== BOTÓN GUARDAR ====================
            Button(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .height(50.dp),
                enabled = !isLoading,
                colors =
                    ButtonDefaults.buttonColors(
                        containerColor = primaryColor,
                        contentColor = Color.White,
                        disabledContainerColor = Color.Gray.copy(alpha = 0.5f),
                    ),
                shape = RoundedCornerShape(12.dp),
                onClick = {
                    isLoading = true
                    errorMessage = null

                    // Ejecutar la actualización y mostrar resultado
                    scope.launch {
                        try {
                            val success = editProfilePsicologoViewModel.updateProfile(identificador)
                            if (success) {
                                showSuccess = true
                            } else {
                                errorMessage = "Error al actualizar"
                            }
                            delay(500)
                        } catch (e: Exception) {
                            errorMessage = e.message ?: "Error al actualizar perfil"
                        } finally {
                            isLoading = false
                        }
                    }
                },
            ) {
                if (isLoading) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(20.dp),
                        color = Color.White,
                        strokeWidth = 2.dp,
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(stringResource(R.string.auto_guardando), fontSize = 16.sp, fontWeight = FontWeight.Bold)
                } else {
                    Text(stringResource(R.string.auto_guardar_cambios_1), fontSize = 16.sp, fontWeight = FontWeight.Bold)
                }
            }

            // Botón cancelar
            TextButton(
                onClick = { navController.popBackStack() },
                modifier = Modifier.fillMaxWidth(),
            ) {
                Text(stringResource(R.string.auto_cancelar), color = Color.Gray)
            }

            Spacer(modifier = Modifier.height(16.dp))
        }
    }
}
