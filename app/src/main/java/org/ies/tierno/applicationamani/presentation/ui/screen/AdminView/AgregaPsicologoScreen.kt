package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import android.content.res.Configuration
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
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
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Visibility
import androidx.compose.material.icons.filled.VisibilityOff
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.DatePicker
import androidx.compose.material3.DatePickerDialog
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuAnchorType
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
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
import androidx.compose.material3.TextButton
import androidx.compose.material3.rememberDatePickerState
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
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import java.time.LocalDate
import java.time.Period
import java.time.format.DateTimeFormatter

/**
 * Pantalla de registro de un nuevo psicólogo desde el panel de administración.
 *
 * Presenta un formulario completo con campos de nombre, apellidos, email,
 * contraseña, especialidad, fecha de nacimiento y teléfono. Incluye
 * validación de campos, selector de fecha con restricción de mayoría de
 * edad y un botón de registro que invoca [LoginViewModel.registrarPsicologo].
 *
 * @param onBack Callback invocado para navegar hacia atrás.
 * @param loginViewModel ViewModel que gestiona el registro y validación.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AgregaPsicologoScreen(
    onBack: () -> Unit,
    loginViewModel: LoginViewModel,
) {
    val context = LocalContext.current
    val name by loginViewModel.nombre.collectAsStateWithLifecycle()
    val surname by loginViewModel.apellido.collectAsStateWithLifecycle()
    val email by loginViewModel.email.collectAsStateWithLifecycle()
    val password by loginViewModel.regPassword.collectAsStateWithLifecycle()
    val especialidad by loginViewModel.registroEspecialidad.collectAsStateWithLifecycle()
    val experiencia by loginViewModel.registroExperiencia.collectAsStateWithLifecycle()
    val descripcion by loginViewModel.registroDescripcion.collectAsStateWithLifecycle()
    val licencia by loginViewModel.registroLicencia.collectAsStateWithLifecycle()
    val telefono by loginViewModel.telefono.collectAsStateWithLifecycle()
    val dateOfBirth by loginViewModel.dateOfBirth.collectAsStateWithLifecycle()
    val showDatePicker by loginViewModel.showDatePicker.collectAsStateWithLifecycle()
    val dateError by loginViewModel.dateError.collectAsStateWithLifecycle()
    val emailError by loginViewModel.emailError.collectAsStateWithLifecycle()

    val isRegistering by loginViewModel.isRegistering.collectAsStateWithLifecycle()
    val registerError by loginViewModel.registerError.collectAsStateWithLifecycle()
    val registerSuccess by loginViewModel.registerSuccess.collectAsStateWithLifecycle()

    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    LaunchedEffect(registerError) {
        registerError?.let {
            snackbarHostState.showSnackbar(it)
        }
    }

    LaunchedEffect(registerSuccess) {
        if (registerSuccess) {
            snackbarHostState.showSnackbar(context.getString(R.string.admin_psicologo_registrado_exito))
            scope.launch {
                delay(1500)
                loginViewModel.limpiarFormularioPsicologo()
                onBack()
            }
        }
    }

    AgregaPsicologoContent(
        name = name,
        surname = surname,
        email = email,
        password = password,
        especialidad = especialidad,
        experiencia = experiencia,
        descripcion = descripcion,
        licencia = licencia,
        telefono = telefono,
        dateOfBirth = dateOfBirth,
        dateError = dateError,
        emailError = emailError,
        isPasswordValid = loginViewModel.isValidPassword(password),
        passwordErrorMsg = LoginViewModel.getPasswordErrorMessage(),
        isRegistering = isRegistering,
        snackbarHostState = snackbarHostState,
        onBack = onBack,
        onNameChange = { loginViewModel.setNombre(it) },
        onSurnameChange = { loginViewModel.setApellido(it) },
        onEmailChange = { loginViewModel.setEmail(it) },
        onPasswordChange = { loginViewModel.setRegPassword(it) },
        onShowDatePicker = { loginViewModel.setShowDatePicker(true) },
        onTelefonoChange = { loginViewModel.setTelefonoPsicologo(it.filter { c -> c.isDigit() }) },
        onEspecialidadChange = { loginViewModel.setRegistroEspecialidad(it) },
        onExperienciaChange = { loginViewModel.setRegistroExperiencia(it.toIntOrNull()) },
        onDescripcionChange = { loginViewModel.setRegistroDescripcion(it) },
        onLicenciaChange = { loginViewModel.setRegistroLicencia(it) },
        onRegisterClick = { loginViewModel.registrarPsicologo() },
    )

    if (showDatePicker) {
        val datePickerState =
            rememberDatePickerState(
                initialSelectedDateMillis =
                    dateOfBirth?.let {
                        it.atStartOfDay(java.time.ZoneId.systemDefault()).toInstant().toEpochMilli()
                    } ?: (System.currentTimeMillis() - (30L * 365 * 24 * 60 * 60 * 1000)),
            )

        DatePickerDialog(
            onDismissRequest = { loginViewModel.setShowDatePicker(false) },
            confirmButton = {
                TextButton(
                    onClick = {
                        val selectedDateMillis = datePickerState.selectedDateMillis

                        if (selectedDateMillis != null) {
                            val selectedDate =
                                java.time.Instant
                                    .ofEpochMilli(selectedDateMillis)
                                    .atZone(java.time.ZoneId.systemDefault())
                                    .toLocalDate()

                            val age = Period.between(selectedDate, LocalDate.now()).years

                            if (age >= 18) {
                                loginViewModel.setDateOfBirth(selectedDate)
                                loginViewModel.setDateError(null)
                                loginViewModel.setShowDatePicker(false)
                            } else {
                                loginViewModel.setDateError(context.getString(R.string.debes_ser_mayor_de_18_anos))
                            }
                        } else {
                            loginViewModel.setDateError(context.getString(R.string.selecciona_fecha_valida))
                        }
                    },
                ) {
                    Text(
                        text = stringResource(R.string.auto_aceptar),
                        color = MaterialTheme.colorScheme.primary,
                    )
                }
            },
            dismissButton = {
                TextButton(
                    onClick = { loginViewModel.setShowDatePicker(false) },
                ) {
                    Text(
                        text = stringResource(R.string.auto_cancelar),
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
            },
        ) {
            DatePicker(state = datePickerState)
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AgregaPsicologoContent(
    name: String,
    surname: String,
    email: String,
    password: String,
    especialidad: String,
    experiencia: Int?,
    descripcion: String?,
    licencia: String?,
    telefono: String,
    dateOfBirth: LocalDate?,
    dateError: String?,
    emailError: String?,
    isPasswordValid: Boolean,
    passwordErrorMsg: String,
    isRegistering: Boolean,
    snackbarHostState: SnackbarHostState,
    onBack: () -> Unit,
    onNameChange: (String) -> Unit,
    onSurnameChange: (String) -> Unit,
    onEmailChange: (String) -> Unit,
    onPasswordChange: (String) -> Unit,
    onShowDatePicker: () -> Unit,
    onTelefonoChange: (String) -> Unit,
    onEspecialidadChange: (String) -> Unit,
    onExperienciaChange: (String) -> Unit,
    onDescripcionChange: (String) -> Unit,
    onLicenciaChange: (String) -> Unit,
    onRegisterClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val primaryColor = MaterialTheme.colorScheme.primary
    val backgroundColor = MaterialTheme.colorScheme.background
    val surfaceColor = MaterialTheme.colorScheme.surfaceContainerLow
    val errorColor = MaterialTheme.colorScheme.error
    val successColor = AmaniTheme.colors.success
    val textPrimary = MaterialTheme.colorScheme.onSurface
    val textSecondary = MaterialTheme.colorScheme.onSurfaceVariant
    val dividerColor = MaterialTheme.colorScheme.outlineVariant

    var passwordVisible by remember { mutableStateOf(false) }
    var passwordTouched by remember { mutableStateOf(false) }
    var emailTouched by remember { mutableStateOf(false) }
    var expandedEspecialidad by remember { mutableStateOf(false) }
    val scrollState = rememberScrollState()
    val dateFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy")

    val listaEspecialidades =
        listOf(
            "Psicología Clínica",
            "Psicología Educativa",
            "Psicología Laboral",
            "Psicología Infantil",
            "Psicología de la Salud",
            "Psicología Forense",
            "Psicología Social",
            "Neuropsicología",
            "Terapia de Pareja",
            "Otro",
        )

    Scaffold(
        modifier = modifier,
        containerColor = backgroundColor,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) },
    ) { paddingValues ->
        Column(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .background(backgroundColor),
        ) {
            Surface(
                modifier = Modifier.fillMaxWidth(),
                color = MaterialTheme.colorScheme.surface,
                tonalElevation = Elevation.level2,
            ) {
                Column(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(horizontal = Spacing.m, vertical = Spacing.m),
                ) {
                    IconButton(onClick = onBack) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = primaryColor,
                            modifier = Modifier.size(Dimensions.iconDefault),
                        )
                    }

                    Spacer(modifier = Modifier.height(Spacing.s))

                    Text(
                        text = stringResource(R.string.auto_registrar_nuevo_psicologo),
                        style = MaterialTheme.typography.headlineMedium,
                        fontWeight = FontWeight.Bold,
                        color = textPrimary,
                    )

                    Text(
                        text = stringResource(R.string.auto_completa_la_informacion_profesional),
                        style = MaterialTheme.typography.bodyMedium,
                        color = textSecondary,
                        modifier = Modifier.padding(top = Spacing.xs),
                    )
                }
            }

            Column(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .verticalScroll(scrollState)
                        .padding(horizontal = Spacing.m, vertical = Spacing.m),
                verticalArrangement = Arrangement.spacedBy(Spacing.m),
            ) {
                val textFieldShape = MaterialTheme.shapes.medium

                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = surfaceColor),
                    shape = MaterialTheme.shapes.large,
                    elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
                ) {
                    Column(modifier = Modifier.padding(Spacing.m)) {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.padding(bottom = Spacing.sm),
                        ) {
                            Box(
                                modifier =
                                    Modifier
                                        .size(Dimensions.avatarSmall)
                                        .background(
                                            color = MaterialTheme.colorScheme.primaryContainer,
                                            shape = MaterialTheme.shapes.medium,
                                        ),
                                contentAlignment = Alignment.Center,
                            ) {
                                Icon(
                                    Icons.Default.Person,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.onPrimaryContainer,
                                    modifier = Modifier.size(Dimensions.iconMedium),
                                )
                            }
                            Spacer(modifier = Modifier.width(Spacing.sm))
                            Text(
                                text = stringResource(R.string.auto_informacion_personal),
                                style = MaterialTheme.typography.titleMedium,
                                fontWeight = FontWeight.Bold,
                                color = textPrimary,
                            )
                        }

                        Spacer(modifier = Modifier.height(Spacing.s))

                        OutlinedTextField(
                            value = name,
                            onValueChange = onNameChange,
                            label = { Text(stringResource(R.string.auto_nombre_completo)) },
                            placeholder = { Text(stringResource(R.string.auto_ej_maria)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedBorderColor = primaryColor,
                                    unfocusedBorderColor = dividerColor,
                                    focusedLabelColor = primaryColor,
                                    cursorColor = primaryColor,
                                ),
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        OutlinedTextField(
                            value = surname,
                            onValueChange = onSurnameChange,
                            label = { Text(stringResource(R.string.auto_apellidos)) },
                            placeholder = { Text(stringResource(R.string.auto_ej_gonzalez_perez)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedBorderColor = primaryColor,
                                    unfocusedBorderColor = dividerColor,
                                    focusedLabelColor = primaryColor,
                                    cursorColor = primaryColor,
                                ),
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        OutlinedTextField(
                            value = email,
                            onValueChange = {
                                onEmailChange(it)
                                emailTouched = true
                            },
                            label = { Text(stringResource(R.string.auto_correo_electronico)) },
                            placeholder = { Text(stringResource(R.string.auto_psicologoamanicom)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = emailTouched && email.isNotBlank() && emailError != null,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedBorderColor = if (emailTouched && emailError != null) errorColor else primaryColor,
                                    unfocusedBorderColor = dividerColor,
                                    focusedLabelColor = if (emailTouched && emailError != null) errorColor else primaryColor,
                                    cursorColor = primaryColor,
                                ),
                            supportingText = {
                                when {
                                    !emailTouched && email.isBlank() -> {
                                        Text(
                                            text = stringResource(R.string.auto__introduce_el_correo),
                                            style = MaterialTheme.typography.labelSmall,
                                            color = textSecondary,
                                        )
                                    }
                                    emailTouched && email.isNotBlank() && emailError != null -> {
                                        Text(
                                            text = emailError,
                                            style = MaterialTheme.typography.labelSmall,
                                            color = errorColor,
                                        )
                                    }
                                    emailTouched && email.isNotBlank() && emailError == null -> {
                                        Text(
                                            text = stringResource(R.string.auto__correo_valido),
                                            style = MaterialTheme.typography.labelSmall,
                                            color = successColor,
                                        )
                                    }
                                }
                            },
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        OutlinedTextField(
                            value = password,
                            onValueChange = {
                                onPasswordChange(it)
                                passwordTouched = true
                            },
                            label = { Text(stringResource(R.string.auto_contrasena)) },
                            visualTransformation = if (passwordVisible) VisualTransformation.None else PasswordVisualTransformation(),
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = passwordTouched && password.isNotBlank() && !isPasswordValid,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedBorderColor =
                                        if (passwordTouched && password.isNotBlank() && !isPasswordValid) {
                                            errorColor
                                        } else {
                                            primaryColor
                                        },
                                    unfocusedBorderColor = dividerColor,
                                    focusedLabelColor =
                                        if (passwordTouched && password.isNotBlank() && !isPasswordValid) {
                                            errorColor
                                        } else {
                                            primaryColor
                                        },
                                    cursorColor = primaryColor,
                                ),
                            trailingIcon = {
                                IconButton(onClick = { passwordVisible = !passwordVisible }) {
                                    Icon(
                                        imageVector = if (passwordVisible) Icons.Default.VisibilityOff else Icons.Default.Visibility,
                                        contentDescription =
                                            if (passwordVisible) {
                                                stringResource(R.string.ocultar_contrasena)
                                            } else {
                                                stringResource(R.string.mostrar_contrasena)
                                            },
                                        tint = textSecondary,
                                    )
                                }
                            },
                            supportingText = {
                                when {
                                    !passwordTouched && password.isBlank() -> {
                                        Text(
                                            text = stringResource(R.string.auto__introduce_una_contrasena),
                                            style = MaterialTheme.typography.labelSmall,
                                            color = textSecondary,
                                        )
                                    }
                                    passwordTouched && password.isNotBlank() && !isPasswordValid -> {
                                        Text(
                                            text = passwordErrorMsg,
                                            style = MaterialTheme.typography.labelSmall,
                                            color = errorColor,
                                        )
                                    }
                                    passwordTouched && password.isNotBlank() && isPasswordValid -> {
                                        Text(
                                            text = stringResource(R.string.auto__contrasena_valida),
                                            style = MaterialTheme.typography.labelSmall,
                                            color = successColor,
                                        )
                                    }
                                }
                            },
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        OutlinedTextField(
                            value = dateOfBirth?.format(dateFormatter) ?: "",
                            onValueChange = {},
                            label = { Text(stringResource(R.string.auto_fecha_de_nacimiento_1)) },
                            placeholder = { Text(stringResource(R.string.auto_ddmmaaaa)) },
                            modifier =
                                Modifier
                                    .fillMaxWidth()
                                    .clickable { onShowDatePicker() },
                            readOnly = true,
                            shape = textFieldShape,
                            trailingIcon = {
                                IconButton(onClick = onShowDatePicker) {
                                    Icon(
                                        Icons.Default.CalendarToday,
                                        contentDescription = stringResource(R.string.auto_seleccionar_fecha),
                                        tint = textSecondary,
                                    )
                                }
                            },
                            isError = dateError != null,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedBorderColor = if (dateError != null) errorColor else primaryColor,
                                    unfocusedBorderColor = dividerColor,
                                    focusedLabelColor = if (dateError != null) errorColor else primaryColor,
                                    cursorColor = primaryColor,
                                ),
                            supportingText = {
                                if (dateError != null) {
                                    Text(
                                        text = dateError,
                                        style = MaterialTheme.typography.labelSmall,
                                        color = errorColor,
                                    )
                                } else if (dateOfBirth != null) {
                                    Text(
                                        text = stringResource(R.string.auto__fecha_valida),
                                        style = MaterialTheme.typography.labelSmall,
                                        color = successColor,
                                    )
                                } else {
                                    Text(
                                        text = stringResource(R.string.auto__selecciona_tu_fecha),
                                        style = MaterialTheme.typography.labelSmall,
                                        color = textSecondary,
                                    )
                                }
                            },
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        OutlinedTextField(
                            value = telefono,
                            onValueChange = onTelefonoChange,
                            label = { Text(stringResource(R.string.auto_telefono_de_contacto)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = telefono.isNotBlank() && telefono.length != 9,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedBorderColor = if (telefono.isNotBlank() && telefono.length != 9) errorColor else primaryColor,
                                    unfocusedBorderColor = dividerColor,
                                    focusedLabelColor = if (telefono.isNotBlank() && telefono.length != 9) errorColor else primaryColor,
                                    cursorColor = primaryColor,
                                ),
                            supportingText = {
                                when {
                                    telefono.isBlank() -> {
                                        Text(
                                            text = stringResource(R.string.auto__introduce_el_numero),
                                            style = MaterialTheme.typography.labelSmall,
                                            color = textSecondary,
                                        )
                                    }
                                    telefono.length != 9 -> {
                                        Text(
                                            text = stringResource(R.string.auto__el_telefono_debe),
                                            style = MaterialTheme.typography.labelSmall,
                                            color = errorColor,
                                        )
                                    }
                                    telefono.length == 9 -> {
                                        Text(
                                            text = stringResource(R.string.auto__telefono_valido),
                                            style = MaterialTheme.typography.labelSmall,
                                            color = successColor,
                                        )
                                    }
                                }
                            },
                        )
                    }
                }

                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = surfaceColor),
                    shape = MaterialTheme.shapes.large,
                    elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
                ) {
                    Column(modifier = Modifier.padding(Spacing.m)) {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.padding(bottom = Spacing.sm),
                        ) {
                            Box(
                                modifier =
                                    Modifier
                                        .size(Dimensions.avatarSmall)
                                        .background(
                                            color = MaterialTheme.colorScheme.primaryContainer,
                                            shape = MaterialTheme.shapes.medium,
                                        ),
                                contentAlignment = Alignment.Center,
                            ) {
                                Icon(
                                    Icons.Default.MedicalServices,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.onPrimaryContainer,
                                    modifier = Modifier.size(Dimensions.iconMedium),
                                )
                            }
                            Spacer(modifier = Modifier.width(Spacing.sm))
                            Text(
                                text = stringResource(R.string.auto_informacion_profesional),
                                style = MaterialTheme.typography.titleMedium,
                                fontWeight = FontWeight.Bold,
                                color = textPrimary,
                            )
                        }

                        Spacer(modifier = Modifier.height(Spacing.s))

                        ExposedDropdownMenuBox(
                            expanded = expandedEspecialidad,
                            onExpandedChange = { expandedEspecialidad = it },
                        ) {
                            OutlinedTextField(
                                value = especialidad,
                                onValueChange = {},
                                readOnly = true,
                                label = { Text(stringResource(R.string.auto_especialidad_1)) },
                                placeholder = { Text(stringResource(R.string.auto_selecciona_una_especialidad)) },
                                modifier =
                                    Modifier
                                        .fillMaxWidth()
                                        .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable, true),
                                shape = textFieldShape,
                                trailingIcon = {
                                    ExposedDropdownMenuDefaults.TrailingIcon(
                                        expanded = expandedEspecialidad,
                                    )
                                },
                                colors =
                                    OutlinedTextFieldDefaults.colors(
                                        focusedBorderColor = primaryColor,
                                        unfocusedBorderColor = dividerColor,
                                        focusedLabelColor = primaryColor,
                                        cursorColor = primaryColor,
                                    ),
                            )
                            ExposedDropdownMenu(
                                expanded = expandedEspecialidad,
                                onDismissRequest = { expandedEspecialidad = false },
                            ) {
                                listaEspecialidades.forEach { opcion ->
                                    DropdownMenuItem(
                                        text = { Text(opcion, color = textPrimary) },
                                        onClick = {
                                            onEspecialidadChange(opcion)
                                            expandedEspecialidad = false
                                        },
                                    )
                                }
                            }
                        }

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        OutlinedTextField(
                            value = experiencia?.toString() ?: "",
                            onValueChange = onExperienciaChange,
                            label = { Text(stringResource(R.string.auto_anos_de_experiencia)) },
                            placeholder = { Text(stringResource(R.string.auto_ej_5)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedBorderColor = primaryColor,
                                    unfocusedBorderColor = dividerColor,
                                    focusedLabelColor = primaryColor,
                                    cursorColor = primaryColor,
                                ),
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        OutlinedTextField(
                            value = descripcion ?: "",
                            onValueChange = onDescripcionChange,
                            label = { Text(stringResource(R.string.auto_descripcion_profesional)) },
                            placeholder = { Text(stringResource(R.string.auto_describe_tu_enfoque_terapeutico)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            minLines = 3,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedBorderColor = primaryColor,
                                    unfocusedBorderColor = dividerColor,
                                    focusedLabelColor = primaryColor,
                                    cursorColor = primaryColor,
                                ),
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        OutlinedTextField(
                            value = licencia ?: "",
                            onValueChange = onLicenciaChange,
                            label = { Text(stringResource(R.string.auto_numero_de_licencia)) },
                            placeholder = { Text(stringResource(R.string.auto_ej_cop_12345)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedBorderColor = primaryColor,
                                    unfocusedBorderColor = dividerColor,
                                    focusedLabelColor = primaryColor,
                                    cursorColor = primaryColor,
                                ),
                        )
                    }
                }

                val isFormValid =
                    name.isNotBlank() &&
                        surname.isNotBlank() &&
                        email.isNotBlank() &&
                        isPasswordValid &&
                        especialidad.isNotBlank() &&
                        dateOfBirth != null &&
                        telefono.length == 9

                Button(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .height(Dimensions.buttonHeightLarge),
                    enabled = !isRegistering && isFormValid,
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = primaryColor,
                            contentColor = MaterialTheme.colorScheme.onPrimary,
                        ),
                    shape = MaterialTheme.shapes.large,
                    onClick = onRegisterClick,
                ) {
                    if (isRegistering) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(Dimensions.iconDefault),
                            color = MaterialTheme.colorScheme.onPrimary,
                            strokeWidth = Dimensions.borderMedium,
                        )
                        Spacer(modifier = Modifier.width(Spacing.sm))
                        Text(
                            text = stringResource(R.string.auto_registrando),
                            style = MaterialTheme.typography.labelLarge,
                            fontWeight = FontWeight.SemiBold,
                        )
                    } else {
                        Text(
                            text = stringResource(R.string.auto_crear_cuenta_profesional),
                            style = MaterialTheme.typography.labelLarge,
                            fontWeight = FontWeight.Bold,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.xl))
            }
        }
    }
}

@Preview(name = "AgregaPsicologo Light", showBackground = true)
@Preview(name = "AgregaPsicologo Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "AgregaPsicologo FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun AgregaPsicologoScreenPreview() {
    org.ies.tierno.applicationamani.ui.theme.AppTheme {
        AgregaPsicologoContent(
            name = "María",
            surname = "González",
            email = "maria.gonzalez@amani.es",
            password = "Password123!",
            especialidad = "Psicología Clínica",
            experiencia = 5,
            descripcion = "Psicóloga clínica cognitivo-conductual.",
            licencia = "COP-12345",
            telefono = "612345678",
            dateOfBirth = LocalDate.of(1992, 5, 10),
            dateError = null,
            emailError = null,
            isPasswordValid = true,
            passwordErrorMsg = "",
            isRegistering = false,
            snackbarHostState = remember { SnackbarHostState() },
            onBack = {},
            onNameChange = {},
            onSurnameChange = {},
            onEmailChange = {},
            onPasswordChange = {},
            onShowDatePicker = {},
            onTelefonoChange = {},
            onEspecialidadChange = {},
            onExperienciaChange = {},
            onDescripcionChange = {},
            onLicenciaChange = {},
            onRegisterClick = {},
        )
    }
}
