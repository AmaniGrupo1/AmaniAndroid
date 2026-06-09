package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView
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
import androidx.compose.foundation.shape.RoundedCornerShape
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
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
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
    // Paleta de colores profesional AMANI - Priorizando Material 3
    val primaryColor = MaterialTheme.colorScheme.primary
    val primaryLight = MaterialTheme.colorScheme.primaryContainer
    val backgroundColor = MaterialTheme.colorScheme.background
    val surfaceColor = MaterialTheme.colorScheme.surface
    val errorColor = MaterialTheme.colorScheme.error
    val successColor = MaterialTheme.colorScheme.tertiary
    val textPrimary = MaterialTheme.colorScheme.onSurface
    val textSecondary = MaterialTheme.colorScheme.onSurfaceVariant
    val dividerColor = MaterialTheme.colorScheme.outlineVariant

    // Fuentes profesionales
    val roboto =
        FontFamily(
            Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Normal),
            Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Bold),
            Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Medium),
            Font(R.font.roboto_variablefont_wdth_wght, FontWeight.SemiBold),
        )

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

    // Estados locales para UI
    var passwordVisible by remember { mutableStateOf(false) }
    var passwordTouched by remember { mutableStateOf(false) }
    var emailTouched by remember { mutableStateOf(false) }
    var expandedEspecialidad by remember { mutableStateOf(false) }
    val scrollState = rememberScrollState()
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    // Formateador de fecha
    val dateFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy")

    // Listas para dropdowns
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

    // Mostrar errores en snackbar
    LaunchedEffect(registerError) {
        registerError?.let {
            snackbarHostState.showSnackbar(it)
        }
    }

    LaunchedEffect(registerSuccess) {
        if (registerSuccess) {
            snackbarHostState.showSnackbar("✓ Psicólogo registrado exitosamente")
            scope.launch {
                delay(1500)
                loginViewModel.limpiarFormularioPsicologo()
                onBack()
            }
        }
    }

    Scaffold(
        containerColor = backgroundColor,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) },
    ) { paddingValues ->
        Column(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .background(
                        brush =
                            Brush.verticalGradient(
                                colors =
                                    listOf(
                                        MaterialTheme.colorScheme.surface,
                                        MaterialTheme.colorScheme.surfaceVariant,
                                    ),
                            ),
                    ),
        ) {
            // Top Bar Mejorada
            Surface(
                modifier = Modifier.fillMaxWidth(),
                color = MaterialTheme.colorScheme.surface,
                shadowElevation = 8.dp,
                shape = RoundedCornerShape(bottomStart = 24.dp, bottomEnd = 24.dp),
            ) {
                Column(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 20.dp, vertical = 20.dp),
                ) {
                    // Botón de retroceso
                    IconButton(
                        onClick = onBack,
                        modifier = Modifier.size(40.dp),
                    ) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = primaryColor,
                            modifier = Modifier.size(24.dp),
                        )
                    }

                    Spacer(modifier = Modifier.height(16.dp))

                    Text(
                        text = stringResource(R.string.auto_registrar_nuevo_psicologo),
                        fontSize = 28.sp,
                        fontWeight = FontWeight.Bold,
                        fontFamily = roboto,
                        color = textPrimary,
                        letterSpacing = (-0.5).sp,
                    )

                    Text(
                        text = stringResource(R.string.auto_completa_la_informacion_profesional),
                        fontSize = 14.sp,
                        fontFamily = roboto,
                        color = textSecondary,
                        modifier = Modifier.padding(top = 4.dp),
                    )
                }
            }

            // Contenido principal
            Column(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .verticalScroll(scrollState)
                        .padding(horizontal = 20.dp, vertical = 16.dp),
                verticalArrangement = Arrangement.spacedBy(20.dp),
            ) {
                val textFieldShape = RoundedCornerShape(12.dp)

                // ==================== SECCIÓN 1: DATOS PERSONALES ====================
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = surfaceColor),
                    shape = RoundedCornerShape(20.dp),
                    elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
                ) {
                    Column(modifier = Modifier.padding(20.dp)) {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.padding(bottom = 12.dp),
                        ) {
                            Box(
                                modifier =
                                    Modifier
                                        .size(40.dp)
                                        .background(
                                            brush =
                                                Brush.linearGradient(
                                                    colors = listOf(primaryColor, primaryLight),
                                                ),
                                            shape = RoundedCornerShape(12.dp),
                                        ),
                                contentAlignment = Alignment.Center,
                            ) {
                                Icon(
                                    Icons.Default.Person,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.onPrimary,
                                    modifier = Modifier.size(20.dp),
                                )
                            }
                            Spacer(modifier = Modifier.width(12.dp))
                            Text(stringResource(R.string.auto_informacion_personal),
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Bold,
                                fontFamily = roboto,
                                color = textPrimary,
                            )
                        }

                        Spacer(modifier = Modifier.height(8.dp))

                        // Nombre
                        OutlinedTextField(
                            value = name,
                            onValueChange = { loginViewModel.setNombre(it) },
                            label = {
                                Text(stringResource(R.string.auto_nombre_completo),
                                    fontFamily = roboto,
                                    color = textSecondary,
                                )
                            },
                            placeholder = {
                                Text(stringResource(R.string.auto_ej_maria),
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f),
                                )
                            },
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

                        Spacer(modifier = Modifier.height(12.dp))

                        // Apellido
                        OutlinedTextField(
                            value = surname,
                            onValueChange = { loginViewModel.setApellido(it) },
                            label = {
                                Text(stringResource(R.string.auto_apellidos),
                                    fontFamily = roboto,
                                    color = textSecondary,
                                )
                            },
                            placeholder = {
                                Text(stringResource(R.string.auto_ej_gonzalez_perez),
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f),
                                )
                            },
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

                        Spacer(modifier = Modifier.height(12.dp))

                        // Email
                        OutlinedTextField(
                            value = email,
                            onValueChange = {
                                loginViewModel.setEmail(it)
                                emailTouched = true
                            },
                            label = {
                                Text(stringResource(R.string.auto_correo_electronico),
                                    fontFamily = roboto,
                                    color = textSecondary,
                                )
                            },
                            placeholder = {
                                Text(stringResource(R.string.auto_psicologoamanicom),
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f),
                                )
                            },
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
                                        Text(stringResource(R.string.auto__introduce_el_correo),
                                            fontFamily = roboto,
                                            color = textSecondary,
                                            fontSize = 12.sp,
                                        )
                                    }
                                    emailTouched && email.isNotBlank() && emailError != null -> {
                                        Text(
                                            "❌ $emailError",
                                            fontFamily = roboto,
                                            color = errorColor,
                                            fontSize = 12.sp,
                                        )
                                    }
                                    emailTouched && email.isNotBlank() && emailError == null -> {
                                        Text(stringResource(R.string.auto__correo_valido),
                                            fontFamily = roboto,
                                            color = successColor,
                                            fontSize = 12.sp,
                                        )
                                    }
                                }
                            },
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Contraseña
                        OutlinedTextField(
                            value = password,
                            onValueChange = {
                                loginViewModel.setRegPassword(it)
                                passwordTouched = true
                            },
                            label = {
                                Text(stringResource(R.string.auto_contrasena),
                                    fontFamily = roboto,
                                    color = textSecondary,
                                )
                            },
                            placeholder = {
                                Text(
                                    "••••••••",
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f),
                                )
                            },
                            visualTransformation = if (passwordVisible) VisualTransformation.None else PasswordVisualTransformation(),
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = passwordTouched && password.isNotBlank() && !loginViewModel.isValidPassword(password),
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedBorderColor =
                                        if (passwordTouched &&
                                            password.isNotBlank() &&
                                            !loginViewModel.isValidPassword(password)
                                        ) {
                                            errorColor
                                        } else {
                                            primaryColor
                                        },
                                    unfocusedBorderColor = dividerColor,
                                    focusedLabelColor =
                                        if (passwordTouched &&
                                            password.isNotBlank() &&
                                            !loginViewModel.isValidPassword(password)
                                        ) {
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
                                        contentDescription = if (passwordVisible) "Ocultar contraseña" else "Mostrar contraseña",
                                        tint = textSecondary,
                                    )
                                }
                            },
                            supportingText = {
                                when {
                                    !passwordTouched && password.isBlank() -> {
                                        Text(stringResource(R.string.auto__introduce_una_contrasena),
                                            fontFamily = roboto,
                                            color = textSecondary,
                                            fontSize = 12.sp,
                                        )
                                    }
                                    passwordTouched && password.isNotBlank() && !loginViewModel.isValidPassword(password) -> {
                                        Text(
                                            "❌ " + LoginViewModel.getPasswordErrorMessage(),
                                            fontFamily = roboto,
                                            color = errorColor,
                                            fontSize = 12.sp,
                                        )
                                    }
                                    passwordTouched && password.isNotBlank() && loginViewModel.isValidPassword(password) -> {
                                        Text(stringResource(R.string.auto__contrasena_valida),
                                            fontFamily = roboto,
                                            color = successColor,
                                            fontSize = 12.sp,
                                        )
                                    }
                                }
                            },
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Fecha de Nacimiento
                        OutlinedTextField(
                            value = dateOfBirth?.format(dateFormatter) ?: "",
                            onValueChange = {},
                            label = {
                                Text(stringResource(R.string.auto_fecha_de_nacimiento_1),
                                    fontFamily = roboto,
                                    color = textSecondary,
                                )
                            },
                            placeholder = {
                                Text(stringResource(R.string.auto_ddmmaaaa),
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f),
                                )
                            },
                            modifier =
                                Modifier
                                    .fillMaxWidth()
                                    .clickable { loginViewModel.setShowDatePicker(true) },
                            readOnly = true,
                            shape = textFieldShape,
                            trailingIcon = {
                                IconButton(onClick = { loginViewModel.setShowDatePicker(true) }) {
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
                                        "❌ $dateError",
                                        fontFamily = roboto,
                                        color = errorColor,
                                        fontSize = 12.sp,
                                    )
                                } else if (dateOfBirth != null) {
                                    Text(stringResource(R.string.auto__fecha_valida),
                                        fontFamily = roboto,
                                        color = successColor,
                                        fontSize = 12.sp,
                                    )
                                } else {
                                    Text(stringResource(R.string.auto__selecciona_tu_fecha),
                                        fontFamily = roboto,
                                        color = textSecondary,
                                        fontSize = 12.sp,
                                    )
                                }
                            },
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Teléfono
                        OutlinedTextField(
                            value = telefono,
                            onValueChange = { loginViewModel.setTelefonoPsicologo(it.filter { c -> c.isDigit() }) },
                            label = {
                                Text(stringResource(R.string.auto_telefono_de_contacto),
                                    fontFamily = roboto,
                                    color = textSecondary,
                                )
                            },
                            placeholder = {
                                Text(
                                    "123456789",
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f),
                                )
                            },
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
                                        Text(stringResource(R.string.auto__introduce_el_numero),
                                            fontFamily = roboto,
                                            color = textSecondary,
                                            fontSize = 12.sp,
                                        )
                                    }
                                    telefono.length != 9 -> {
                                        Text(stringResource(R.string.auto__el_telefono_debe),
                                            fontFamily = roboto,
                                            color = errorColor,
                                            fontSize = 12.sp,
                                        )
                                    }
                                    telefono.length == 9 -> {
                                        Text(stringResource(R.string.auto__telefono_valido),
                                            fontFamily = roboto,
                                            color = successColor,
                                            fontSize = 12.sp,
                                        )
                                    }
                                }
                            },
                        )
                    }
                }

                // ==================== SECCIÓN 2: DATOS PROFESIONALES ====================
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = surfaceColor),
                    shape = RoundedCornerShape(20.dp),
                    elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
                ) {
                    Column(modifier = Modifier.padding(20.dp)) {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.padding(bottom = 12.dp),
                        ) {
                            Box(
                                modifier =
                                    Modifier
                                        .size(40.dp)
                                        .background(
                                            brush =
                                                Brush.linearGradient(
                                                    colors = listOf(primaryColor, primaryLight),
                                                ),
                                            shape = RoundedCornerShape(12.dp),
                                        ),
                                contentAlignment = Alignment.Center,
                            ) {
                                Icon(
                                    Icons.Default.MedicalServices,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.onPrimary,
                                    modifier = Modifier.size(20.dp),
                                )
                            }
                            Spacer(modifier = Modifier.width(12.dp))
                            Text(stringResource(R.string.auto_informacion_profesional),
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Bold,
                                fontFamily = roboto,
                                color = textPrimary,
                            )
                        }

                        Spacer(modifier = Modifier.height(8.dp))

                        // Especialidad (Dropdown)
                        ExposedDropdownMenuBox(
                            expanded = expandedEspecialidad,
                            onExpandedChange = { expandedEspecialidad = it },
                        ) {
                            OutlinedTextField(
                                value = especialidad,
                                onValueChange = {},
                                readOnly = true,
                                label = {
                                    Text(stringResource(R.string.auto_especialidad_1),
                                        fontFamily = roboto,
                                        color = textSecondary,
                                    )
                                },
                                placeholder = {
                                    Text(stringResource(R.string.auto_selecciona_una_especialidad),
                                        fontFamily = roboto,
                                        color = textSecondary.copy(alpha = 0.5f),
                                    )
                                },
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
                                        text = {
                                            Text(
                                                opcion,
                                                fontFamily = roboto,
                                                color = textPrimary,
                                            )
                                        },
                                        onClick = {
                                            loginViewModel.setRegistroEspecialidad(opcion)
                                            expandedEspecialidad = false
                                        },
                                    )
                                }
                            }
                        }

                        Spacer(modifier = Modifier.height(12.dp))

                        // Experiencia
                        OutlinedTextField(
                            value = experiencia?.toString() ?: "",
                            onValueChange = { loginViewModel.setRegistroExperiencia(it.toIntOrNull()) },
                            label = {
                                Text(stringResource(R.string.auto_anos_de_experiencia),
                                    fontFamily = roboto,
                                    color = textSecondary,
                                )
                            },
                            placeholder = {
                                Text(stringResource(R.string.auto_ej_5),
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f),
                                )
                            },
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

                        Spacer(modifier = Modifier.height(12.dp))

                        // Descripción
                        OutlinedTextField(
                            value = descripcion ?: "",
                            onValueChange = { loginViewModel.setRegistroDescripcion(it) },
                            label = {
                                Text(stringResource(R.string.auto_descripcion_profesional),
                                    fontFamily = roboto,
                                    color = textSecondary,
                                )
                            },
                            placeholder = {
                                Text(stringResource(R.string.auto_describe_tu_enfoque_terapeutico),
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f),
                                )
                            },
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

                        Spacer(modifier = Modifier.height(12.dp))

                        // Licencia
                        OutlinedTextField(
                            value = licencia ?: "",
                            onValueChange = { loginViewModel.setRegistroLicencia(it) },
                            label = {
                                Text(stringResource(R.string.auto_numero_de_licencia),
                                    fontFamily = roboto,
                                    color = textSecondary,
                                )
                            },
                            placeholder = {
                                Text(stringResource(R.string.auto_ej_cop_12345),
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f),
                                )
                            },
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

                // ==================== BOTÓN REGISTRAR ====================
                // Validar que todos los campos estén completos
                val isFormValid =
                    name.isNotBlank() &&
                        surname.isNotBlank() &&
                        email.isNotBlank() &&
                        loginViewModel.isValidPassword(password) &&
                        especialidad.isNotBlank() &&
                        dateOfBirth != null &&
                        telefono.length == 9

                Button(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .height(56.dp)
                            .shadow(8.dp, RoundedCornerShape(16.dp)),
                    enabled = !isRegistering && isFormValid,
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = primaryColor,
                            contentColor = MaterialTheme.colorScheme.onPrimary,
                            disabledContainerColor = textSecondary.copy(alpha = 0.5f),
                        ),
                    shape = RoundedCornerShape(16.dp),
                    onClick = { loginViewModel.registrarPsicologo() },
                ) {
                    if (isRegistering) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(24.dp),
                            color = MaterialTheme.colorScheme.onPrimary,
                            strokeWidth = 2.dp,
                        )
                        Spacer(modifier = Modifier.width(12.dp))
                        Text(stringResource(R.string.auto_registrando),
                            fontSize = 16.sp,
                            fontWeight = FontWeight.SemiBold,
                            fontFamily = roboto,
                            letterSpacing = 0.5.sp,
                        )
                    } else {
                        Text(stringResource(R.string.auto_crear_cuenta_profesional),
                            fontSize = 16.sp,
                            fontWeight = FontWeight.Bold,
                            fontFamily = roboto,
                            letterSpacing = 1.sp,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(32.dp))
            }
        }
    }

    // ==================== DATEPICKER DIALOG ====================
    if (showDatePicker) {
        // Crear el estado con la fecha inicial si existe
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
                                loginViewModel.setDateError("Debes ser mayor de 18 años")
                            }
                        } else {
                            loginViewModel.setDateError("Selecciona una fecha válida")
                        }
                    },
                ) {
                    Text(stringResource(R.string.auto_aceptar), fontFamily = roboto, color = primaryColor)
                }
            },
            dismissButton = {
                TextButton(
                    onClick = { loginViewModel.setShowDatePicker(false) },
                ) {
                    Text(stringResource(R.string.auto_cancelar), fontFamily = roboto, color = textSecondary)
                }
            },
        ) {
            DatePicker(
                state = datePickerState,
            )
        }
    }
}
