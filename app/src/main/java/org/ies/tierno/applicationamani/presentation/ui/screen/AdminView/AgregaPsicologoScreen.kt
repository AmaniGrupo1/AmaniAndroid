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
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import java.time.LocalDate
import java.time.Period
import java.time.format.DateTimeFormatter

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AgregaPsicologoScreen(
    navController: NavController,
    loginViewModel: LoginViewModel
) {
    // Paleta de colores profesional AMANI
    val primaryColor = Color(0xFF6C63FF)
    val primaryDark = Color(0xFF5A52D6)
    val primaryLight = Color(0xFF8B84FF)
    val backgroundColor = Color(0xFFF8F9FA)
    val surfaceColor = Color.White
    val errorColor = Color(0xFFE57373)
    val successColor = Color(0xFF81C784)
    val textPrimary = Color(0xFF2C3E50)
    val textSecondary = Color(0xFF7F8C8D)
    val dividerColor = Color(0xFFECF0F1)

    // Fuentes profesionales
    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Normal),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Bold),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Medium),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.SemiBold)
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
    val phoneError by loginViewModel.phoneError.collectAsStateWithLifecycle()
    val emailError by loginViewModel.emailError.collectAsStateWithLifecycle()
    val passwordError by loginViewModel.passwordError.collectAsStateWithLifecycle()

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
    val listaEspecialidades = listOf(
        "Psicología Clínica",
        "Psicología Educativa",
        "Psicología Laboral",
        "Psicología Infantil",
        "Psicología de la Salud",
        "Psicología Forense",
        "Psicología Social",
        "Neuropsicología",
        "Terapia de Pareja",
        "Otro"
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
                navController.popBackStack()
            }
        }
    }

    Scaffold(
        containerColor = backgroundColor,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) }
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .background(
                    brush = Brush.verticalGradient(
                        colors = listOf(
                            Color(0xFFF8F9FA),
                            Color(0xFFF0F2F5)
                        )
                    )
                )
        ) {
            // Top Bar Mejorada
            Surface(
                modifier = Modifier.fillMaxWidth(),
                color = Color.White,
                shadowElevation = 8.dp,
                shape = RoundedCornerShape(bottomStart = 24.dp, bottomEnd = 24.dp)
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 20.dp, vertical = 20.dp)
                ) {
                    // Botón de retroceso
                    IconButton(
                        onClick = { navController.popBackStack() },
                        modifier = Modifier
                            .size(40.dp)
                            .shadow(4.dp, RoundedCornerShape(12.dp))
                    ) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = primaryColor,
                            modifier = Modifier.size(24.dp)
                        )
                    }

                    Spacer(modifier = Modifier.height(16.dp))

                    Text(
                        text = "Registrar Nuevo Psicólogo",
                        fontSize = 28.sp,
                        fontWeight = FontWeight.Bold,
                        fontFamily = roboto,
                        color = textPrimary,
                        letterSpacing = (-0.5).sp
                    )

                    Text(
                        text = "Completa la información profesional",
                        fontSize = 14.sp,
                        fontFamily = roboto,
                        color = textSecondary,
                        modifier = Modifier.padding(top = 4.dp)
                    )
                }
            }

            // Contenido principal
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .verticalScroll(scrollState)
                    .padding(horizontal = 20.dp, vertical = 16.dp),
                verticalArrangement = Arrangement.spacedBy(20.dp)
            ) {
                val textFieldShape = RoundedCornerShape(12.dp)

                // ==================== SECCIÓN 1: DATOS PERSONALES ====================
                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .shadow(4.dp, RoundedCornerShape(20.dp)),
                    colors = CardDefaults.cardColors(containerColor = surfaceColor),
                    shape = RoundedCornerShape(20.dp),
                    elevation = CardDefaults.cardElevation(defaultElevation = 0.dp)
                ) {
                    Column(modifier = Modifier.padding(20.dp)) {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.padding(bottom = 12.dp)
                        ) {
                            Box(
                                modifier = Modifier
                                    .size(40.dp)
                                    .background(
                                        brush = Brush.linearGradient(
                                            colors = listOf(primaryColor, primaryLight)
                                        ),
                                        shape = RoundedCornerShape(12.dp)
                                    ),
                                contentAlignment = Alignment.Center
                            ) {
                                Icon(
                                    Icons.Default.Person,
                                    contentDescription = null,
                                    tint = Color.White,
                                    modifier = Modifier.size(20.dp)
                                )
                            }
                            Spacer(modifier = Modifier.width(12.dp))
                            Text(
                                "Información Personal",
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Bold,
                                fontFamily = roboto,
                                color = textPrimary
                            )
                        }

                        Spacer(modifier = Modifier.height(8.dp))

                        // Nombre
                        OutlinedTextField(
                            value = name,
                            onValueChange = { loginViewModel.setNombre(it) },
                            label = {
                                Text(
                                    "Nombre completo",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            placeholder = {
                                Text(
                                    "Ej: María",
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f)
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = dividerColor,
                                focusedLabelColor = primaryColor,
                                cursorColor = primaryColor
                            )
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Apellido
                        OutlinedTextField(
                            value = surname,
                            onValueChange = { loginViewModel.setApellido(it) },
                            label = {
                                Text(
                                    "Apellidos",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            placeholder = {
                                Text(
                                    "Ej: González Pérez",
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f)
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = dividerColor,
                                focusedLabelColor = primaryColor,
                                cursorColor = primaryColor
                            )
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
                                Text(
                                    "Correo electrónico",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            placeholder = {
                                Text(
                                    "psicologo@amani.com",
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f)
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = emailTouched && email.isNotBlank() && emailError != null,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = if (emailTouched && emailError != null) errorColor else primaryColor,
                                unfocusedBorderColor = dividerColor,
                                focusedLabelColor = if (emailTouched && emailError != null) errorColor else primaryColor,
                                cursorColor = primaryColor
                            ),
                            supportingText = {
                                when {
                                    !emailTouched && email.isBlank() -> {
                                        Text(
                                            "📧 Introduce el correo electrónico",
                                            fontFamily = roboto,
                                            color = textSecondary,
                                            fontSize = 12.sp
                                        )
                                    }
                                    emailTouched && email.isNotBlank() && emailError != null -> {
                                        Text(
                                            "❌ $emailError",
                                            fontFamily = roboto,
                                            color = errorColor,
                                            fontSize = 12.sp
                                        )
                                    }
                                    emailTouched && email.isNotBlank() && emailError == null -> {
                                        Text(
                                            "✅ Correo válido",
                                            fontFamily = roboto,
                                            color = successColor,
                                            fontSize = 12.sp
                                        )
                                    }
                                }
                            }
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
                                Text(
                                    "Contraseña",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            placeholder = {
                                Text(
                                    "••••••••",
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f)
                                )
                            },
                            visualTransformation = if (passwordVisible) VisualTransformation.None else PasswordVisualTransformation(),
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = passwordTouched && password.isNotBlank() && (!loginViewModel.isValidPassword(password) || password.length < 8),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = if (passwordTouched && password.isNotBlank() && (!loginViewModel.isValidPassword(password) || password.length < 8)) errorColor else primaryColor,
                                unfocusedBorderColor = dividerColor,
                                focusedLabelColor = if (passwordTouched && password.isNotBlank() && (!loginViewModel.isValidPassword(password) || password.length < 8)) errorColor else primaryColor,
                                cursorColor = primaryColor
                            ),
                            trailingIcon = {
                                IconButton(onClick = { passwordVisible = !passwordVisible }) {
                                    Icon(
                                        imageVector = if (passwordVisible) Icons.Default.VisibilityOff else Icons.Default.Visibility,
                                        contentDescription = if (passwordVisible) "Ocultar contraseña" else "Mostrar contraseña",
                                        tint = textSecondary
                                    )
                                }
                            },
                            supportingText = {
                                when {
                                    !passwordTouched && password.isBlank() -> {
                                        Text(
                                            "🔒 Introduce una contraseña",
                                            fontFamily = roboto,
                                            color = textSecondary,
                                            fontSize = 12.sp
                                        )
                                    }
                                    passwordTouched && password.isNotBlank() && password.length < 8 -> {
                                        Text(
                                            "⚠️ La contraseña debe tener al menos 8 caracteres",
                                            fontFamily = roboto,
                                            color = errorColor,
                                            fontSize = 12.sp
                                        )
                                    }
                                    passwordTouched && password.isNotBlank() && !loginViewModel.isValidPassword(password) -> {
                                        Text(
                                            "❌ La contraseña debe tener al menos 8 caracteres y contener letras y números",
                                            fontFamily = roboto,
                                            color = errorColor,
                                            fontSize = 12.sp
                                        )
                                    }
                                    passwordTouched && password.isNotBlank() && loginViewModel.isValidPassword(password) -> {
                                        Text(
                                            "✅ Contraseña válida",
                                            fontFamily = roboto,
                                            color = successColor,
                                            fontSize = 12.sp
                                        )
                                    }
                                }
                            }
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Fecha de Nacimiento
                        OutlinedTextField(
                            value = dateOfBirth?.format(dateFormatter) ?: "",
                            onValueChange = {},
                            label = {
                                Text(
                                    "Fecha de nacimiento",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            placeholder = {
                                Text(
                                    "DD/MM/AAAA",
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f)
                                )
                            },
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { loginViewModel.setShowDatePicker(true) },
                            readOnly = true,
                            shape = textFieldShape,
                            trailingIcon = {
                                IconButton(onClick = { loginViewModel.setShowDatePicker(true) }) {
                                    Icon(
                                        Icons.Default.CalendarToday,
                                        contentDescription = "Seleccionar fecha",
                                        tint = textSecondary
                                    )
                                }
                            },
                            isError = dateError != null,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = if (dateError != null) errorColor else primaryColor,
                                unfocusedBorderColor = dividerColor,
                                focusedLabelColor = if (dateError != null) errorColor else primaryColor,
                                cursorColor = primaryColor
                            ),
                            supportingText = {
                                if (dateError != null) {
                                    Text(
                                        "❌ $dateError",
                                        fontFamily = roboto,
                                        color = errorColor,
                                        fontSize = 12.sp
                                    )
                                } else if (dateOfBirth != null) {
                                    Text(
                                        "✅ Fecha válida",
                                        fontFamily = roboto,
                                        color = successColor,
                                        fontSize = 12.sp
                                    )
                                } else {
                                    Text(
                                        "📅 Selecciona tu fecha de nacimiento",
                                        fontFamily = roboto,
                                        color = textSecondary,
                                        fontSize = 12.sp
                                    )
                                }
                            }
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Teléfono
                        OutlinedTextField(
                            value = telefono,
                            onValueChange = { loginViewModel.setTelefonoPsicologo(it.filter { c -> c.isDigit() }) },
                            label = {
                                Text(
                                    "Teléfono de contacto",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            placeholder = {
                                Text(
                                    "123456789",
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f)
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = telefono.isNotBlank() && telefono.length != 9,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = if (telefono.isNotBlank() && telefono.length != 9) errorColor else primaryColor,
                                unfocusedBorderColor = dividerColor,
                                focusedLabelColor = if (telefono.isNotBlank() && telefono.length != 9) errorColor else primaryColor,
                                cursorColor = primaryColor
                            ),
                            supportingText = {
                                when {
                                    telefono.isBlank() -> {
                                        Text(
                                            "📞 Introduce el número de teléfono",
                                            fontFamily = roboto,
                                            color = textSecondary,
                                            fontSize = 12.sp
                                        )
                                    }
                                    telefono.length != 9 -> {
                                        Text(
                                            "❌ El teléfono debe tener 9 dígitos",
                                            fontFamily = roboto,
                                            color = errorColor,
                                            fontSize = 12.sp
                                        )
                                    }
                                    telefono.length == 9 -> {
                                        Text(
                                            "✅ Teléfono válido",
                                            fontFamily = roboto,
                                            color = successColor,
                                            fontSize = 12.sp
                                        )
                                    }
                                }
                            }
                        )
                    }
                }

                // ==================== SECCIÓN 2: DATOS PROFESIONALES ====================
                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .shadow(4.dp, RoundedCornerShape(20.dp)),
                    colors = CardDefaults.cardColors(containerColor = surfaceColor),
                    shape = RoundedCornerShape(20.dp),
                    elevation = CardDefaults.cardElevation(defaultElevation = 0.dp)
                ) {
                    Column(modifier = Modifier.padding(20.dp)) {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.padding(bottom = 12.dp)
                        ) {
                            Box(
                                modifier = Modifier
                                    .size(40.dp)
                                    .background(
                                        brush = Brush.linearGradient(
                                            colors = listOf(primaryColor, primaryLight)
                                        ),
                                        shape = RoundedCornerShape(12.dp)
                                    ),
                                contentAlignment = Alignment.Center
                            ) {
                                Icon(
                                    Icons.Default.MedicalServices,
                                    contentDescription = null,
                                    tint = Color.White,
                                    modifier = Modifier.size(20.dp)
                                )
                            }
                            Spacer(modifier = Modifier.width(12.dp))
                            Text(
                                "Información Profesional",
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Bold,
                                fontFamily = roboto,
                                color = textPrimary
                            )
                        }

                        Spacer(modifier = Modifier.height(8.dp))

                        // Especialidad (Dropdown)
                        ExposedDropdownMenuBox(
                            expanded = expandedEspecialidad,
                            onExpandedChange = { expandedEspecialidad = it }
                        ) {
                            OutlinedTextField(
                                value = especialidad,
                                onValueChange = {},
                                readOnly = true,
                                label = {
                                    Text(
                                        "Especialidad",
                                        fontFamily = roboto,
                                        color = textSecondary
                                    )
                                },
                                placeholder = {
                                    Text(
                                        "Selecciona una especialidad",
                                        fontFamily = roboto,
                                        color = textSecondary.copy(alpha = 0.5f)
                                    )
                                },
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .menuAnchor(),
                                shape = textFieldShape,
                                trailingIcon = {
                                    ExposedDropdownMenuDefaults.TrailingIcon(
                                        expanded = expandedEspecialidad
                                    )
                                },
                                colors = OutlinedTextFieldDefaults.colors(
                                    focusedBorderColor = primaryColor,
                                    unfocusedBorderColor = dividerColor,
                                    focusedLabelColor = primaryColor,
                                    cursorColor = primaryColor
                                )
                            )
                            ExposedDropdownMenu(
                                expanded = expandedEspecialidad,
                                onDismissRequest = { expandedEspecialidad = false }
                            ) {
                                listaEspecialidades.forEach { opcion ->
                                    DropdownMenuItem(
                                        text = {
                                            Text(
                                                opcion,
                                                fontFamily = roboto,
                                                color = textPrimary
                                            )
                                        },
                                        onClick = {
                                            loginViewModel.setRegistroEspecialidad(opcion)
                                            expandedEspecialidad = false
                                        }
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
                                Text(
                                    "Años de experiencia",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            placeholder = {
                                Text(
                                    "Ej: 5",
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f)
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = dividerColor,
                                focusedLabelColor = primaryColor,
                                cursorColor = primaryColor
                            )
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Descripción
                        OutlinedTextField(
                            value = descripcion ?: "",
                            onValueChange = { loginViewModel.setRegistroDescripcion(it) },
                            label = {
                                Text(
                                    "Descripción profesional",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            placeholder = {
                                Text(
                                    "Describe tu enfoque terapéutico...",
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f)
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            minLines = 3,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = dividerColor,
                                focusedLabelColor = primaryColor,
                                cursorColor = primaryColor
                            )
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Licencia
                        OutlinedTextField(
                            value = licencia ?: "",
                            onValueChange = { loginViewModel.setRegistroLicencia(it) },
                            label = {
                                Text(
                                    "Número de licencia",
                                    fontFamily = roboto,
                                    color = textSecondary
                                )
                            },
                            placeholder = {
                                Text(
                                    "Ej: COP-12345",
                                    fontFamily = roboto,
                                    color = textSecondary.copy(alpha = 0.5f)
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = dividerColor,
                                focusedLabelColor = primaryColor,
                                cursorColor = primaryColor
                            )
                        )
                    }
                }

                // ==================== BOTÓN REGISTRAR ====================
                // Validar que todos los campos estén completos
                val isFormValid = name.isNotBlank() &&
                        surname.isNotBlank() &&
                        email.isNotBlank() &&
                        loginViewModel.isValidPassword(password) &&
                        especialidad.isNotBlank() &&
                        dateOfBirth != null &&
                        telefono.length == 9

                Button(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(56.dp)
                        .shadow(8.dp, RoundedCornerShape(16.dp)),
                    enabled = !isRegistering && isFormValid,
                    colors = ButtonDefaults.buttonColors(
                        containerColor = primaryColor,
                        contentColor = Color.White,
                        disabledContainerColor = textSecondary.copy(alpha = 0.5f)
                    ),
                    shape = RoundedCornerShape(16.dp),
                    onClick = { loginViewModel.registrarPsicologo() }
                ) {
                    if (isRegistering) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(24.dp),
                            color = Color.White,
                            strokeWidth = 2.dp
                        )
                        Spacer(modifier = Modifier.width(12.dp))
                        Text(
                            "Registrando...",
                            fontSize = 16.sp,
                            fontWeight = FontWeight.SemiBold,
                            fontFamily = roboto,
                            letterSpacing = 0.5.sp
                        )
                    } else {
                        Text(
                            "CREAR CUENTA PROFESIONAL",
                            fontSize = 16.sp,
                            fontWeight = FontWeight.Bold,
                            fontFamily = roboto,
                            letterSpacing = 1.sp
                        )
                    }
                }

                Spacer(modifier = Modifier.height(32.dp))
            }
        }
    }

    // DatePicker Dialog
    // Reemplaza TODO el bloque del DatePickerDialog por esto:

    // ==================== DATEPICKER DIALOG ====================
    if (showDatePicker) {
        // Crear el estado con la fecha inicial si existe
        val datePickerState = rememberDatePickerState(
            initialSelectedDateMillis = dateOfBirth?.let {
                it.atStartOfDay(java.time.ZoneId.systemDefault()).toInstant().toEpochMilli()
            }
        )

        DatePickerDialog(
            onDismissRequest = { loginViewModel.setShowDatePicker(false) },
            confirmButton = {
                TextButton(
                    onClick = {
                        val selectedDateMillis = datePickerState.selectedDateMillis

                        if (selectedDateMillis != null) {
                            val selectedDate = java.time.Instant.ofEpochMilli(selectedDateMillis)
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
                    }
                ) {
                    Text("Aceptar", fontFamily = roboto, color = primaryColor)
                }
            },
            dismissButton = {
                TextButton(
                    onClick = { loginViewModel.setShowDatePicker(false) }
                ) {
                    Text("Cancelar", fontFamily = roboto, color = textSecondary)
                }
            }
        ) {
            DatePicker(
                state = datePickerState
            )
        }
    }
}