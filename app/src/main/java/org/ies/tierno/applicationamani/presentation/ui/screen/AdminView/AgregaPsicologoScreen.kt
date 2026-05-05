package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
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
import androidx.compose.material3.Checkbox
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.DatePicker
import androidx.compose.material3.DatePickerDialog
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ExposedDropdownMenuAnchorType
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import java.time.LocalDate
import java.time.Period
import java.time.format.DateTimeFormatter

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AgregaPsicologoScreen(
    onBack: () -> Unit,
    loginViewModel: LoginViewModel
) {
    val primaryColor = Color(0xFF6B4E71) // Amani Primary
    val backgroundColor = Color(0xFFFDF8F9) // Amani Background
    val errorColor = Color(0xFFE57373) // Amani Error

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
    val aceptaTerminos by loginViewModel.aceptaTerminosPsicologo.collectAsStateWithLifecycle()

    val isRegistering by loginViewModel.isRegistering.collectAsStateWithLifecycle()
    val registerError by loginViewModel.registerError.collectAsStateWithLifecycle()
    val registerSuccess by loginViewModel.registerSuccess.collectAsStateWithLifecycle()

    // Estados locales para UI
    var passwordVisible by remember { mutableStateOf(false) }
    var expandedEspecialidad by remember { mutableStateOf(false) }
    val scrollState = rememberScrollState()
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    // Estado del DatePicker
    val datePickerState = rememberDatePickerState(
        initialSelectedDateMillis = System.currentTimeMillis() - (30L * 365 * 24 * 60 * 60 * 1000)
    )

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
            snackbarHostState.showSnackbar("Psicólogo registrado exitosamente")
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
        topBar = {
            TopAppBar(
                title = { Text("Registrar Psicólogo", color = Color.White) },
                colors = TopAppBarDefaults.topAppBarColors(containerColor = primaryColor),
                navigationIcon = {
                    IconButton(onClick = onBack) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = Color.White
                        )
                    }
                }
            )
        }
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .padding(paddingValues)
                .fillMaxSize()
                .padding(16.dp)
                .verticalScroll(scrollState),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            val textFieldShape = RoundedCornerShape(12.dp)

            // ==================== SECCIÓN 1: DATOS PERSONALES ====================
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = Color.White),
                shape = RoundedCornerShape(16.dp),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.Default.Person, contentDescription = null, tint = primaryColor)
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            "Datos Personales",
                            style = MaterialTheme.typography.titleLarge,
                            color = primaryColor,
                            fontWeight = FontWeight.Bold
                        )
                    }
                    Spacer(modifier = Modifier.height(16.dp))

                    // Nombre
                    OutlinedTextField(
                        value = name,
                        onValueChange = { loginViewModel.setNombre(it) },
                        label = { Text("Nombre *", fontWeight = FontWeight.SemiBold) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = Color.Gray
                        )
                    )

                    // Apellido
                    OutlinedTextField(
                        value = surname,
                        onValueChange = { loginViewModel.setApellido(it) },
                        label = { Text("Apellido *", fontWeight = FontWeight.SemiBold) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = Color.Gray
                        )
                    )

                    // Email
                    OutlinedTextField(
                        value = email,
                        onValueChange = { loginViewModel.setEmail(it) },
                        label = { Text("Email *", fontWeight = FontWeight.SemiBold) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        isError = emailError != null,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = if (emailError != null) errorColor else primaryColor,
                            unfocusedBorderColor = Color.Gray
                        ),
                        supportingText = {
                            if (emailError != null) {
                                Text(emailError!!, color = errorColor)
                            }
                        }
                    )

                    // Contraseña
                    OutlinedTextField(
                        value = password,
                        onValueChange = { loginViewModel.setRegPassword(it) },
                        label = { Text("Contraseña *", fontWeight = FontWeight.SemiBold) },
                        visualTransformation = if (passwordVisible) VisualTransformation.None else PasswordVisualTransformation(),
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        isError = passwordError != null,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = if (passwordError != null) errorColor else primaryColor,
                            unfocusedBorderColor = Color.Gray
                        ),
                        trailingIcon = {
                            IconButton(onClick = { passwordVisible = !passwordVisible }) {
                                Icon(
                                    imageVector = if (passwordVisible) Icons.Default.Visibility else Icons.Default.VisibilityOff,
                                    contentDescription = if (passwordVisible) "Ocultar contraseña" else "Mostrar contraseña"
                                )
                            }
                        },
                        supportingText = {
                            if (passwordError != null) {
                                Text(passwordError!!, color = errorColor)
                            } else if (password.isNotBlank() && password.length < 8) {
                                Text("Mínimo 8 caracteres", color = errorColor)
                            }
                        }
                    )

                    // Fecha de Nacimiento con DatePicker
                    OutlinedTextField(
                        value = dateOfBirth?.format(dateFormatter) ?: "",
                        onValueChange = {},
                        label = { Text("Fecha de Nacimiento *", fontWeight = FontWeight.SemiBold) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable { loginViewModel.setShowDatePicker(true) },
                        readOnly = true,
                        shape = textFieldShape,
                        trailingIcon = {
                            IconButton(onClick = { loginViewModel.setShowDatePicker(true) }) {
                                Icon(Icons.Default.CalendarToday, contentDescription = "Seleccionar fecha")
                            }
                        },
                        isError = dateError != null,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = if (dateError != null) errorColor else primaryColor,
                            unfocusedBorderColor = Color.Gray
                        ),
                        supportingText = {
                            if (dateError != null) {
                                Text(dateError!!, color = errorColor)
                            }
                        }
                    )

                    // Teléfono
                    OutlinedTextField(
                        value = telefono,
                        onValueChange = { loginViewModel.setTelefonoPsicologo(it.filter { c -> c.isDigit() }) },
                        label = { Text("Teléfono *", fontWeight = FontWeight.SemiBold) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        isError = phoneError != null,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = if (phoneError != null) errorColor else primaryColor,
                            unfocusedBorderColor = Color.Gray
                        ),
                        supportingText = {
                            if (phoneError != null) {
                                Text(phoneError!!, color = errorColor)
                            } else if (telefono.isNotBlank() && telefono.length != 9) {
                                Text("Debe tener 9 dígitos", color = errorColor)
                            }
                        }
                    )
                }
            }

            // ==================== SECCIÓN 2: DATOS PROFESIONALES ====================
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = Color.White),
                shape = RoundedCornerShape(16.dp),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.Default.MedicalServices, contentDescription = null, tint = primaryColor)
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            "Datos Profesionales",
                            style = MaterialTheme.typography.titleLarge,
                            color = primaryColor,
                            fontWeight = FontWeight.Bold
                        )
                    }
                    Spacer(modifier = Modifier.height(16.dp))

                    // Especialidad (Dropdown)
                    ExposedDropdownMenuBox(
                        expanded = expandedEspecialidad,
                        onExpandedChange = { expandedEspecialidad = it }
                    ) {
                        OutlinedTextField(
                            value = especialidad,
                            onValueChange = {},
                            readOnly = true,
                            label = { Text("Especialidad *", fontWeight = FontWeight.SemiBold) },
                            modifier = Modifier
                                .fillMaxWidth()
                                .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable),
                            shape = textFieldShape,
                            trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedEspecialidad) },
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color.Gray
                            )
                        )
                        ExposedDropdownMenu(
                            expanded = expandedEspecialidad,
                            onDismissRequest = { expandedEspecialidad = false }
                        ) {
                            listaEspecialidades.forEach { opcion ->
                                DropdownMenuItem(
                                    text = { Text(opcion) },
                                    onClick = {
                                        loginViewModel.setRegistroEspecialidad(opcion)
                                        expandedEspecialidad = false
                                    }
                                )
                            }
                        }
                    }

                    // Experiencia
                    OutlinedTextField(
                        value = experiencia?.toString() ?: "",
                        onValueChange = { loginViewModel.setRegistroExperiencia(it.toIntOrNull()) },
                        label = { Text("Experiencia (años)") },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = Color.Gray
                        )
                    )

                    // Descripción
                    OutlinedTextField(
                        value = descripcion ?: "",
                        onValueChange = { loginViewModel.setRegistroDescripcion(it) },
                        label = { Text("Descripción") },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = Color.Gray
                        )
                    )

                    // Licencia
                    OutlinedTextField(
                        value = licencia ?: "",
                        onValueChange = { loginViewModel.setRegistroLicencia(it) },
                        label = { Text("Licencia Colegiada") },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = Color.Gray
                        )
                    )
                }
            }

            // ==================== SECCIÓN 3: TÉRMINOS Y CONDICIONES ====================
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = Color.White),
                shape = RoundedCornerShape(16.dp),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Checkbox(
                            checked = aceptaTerminos,
                            onCheckedChange = { loginViewModel.setAceptaTerminosPsicologo(it) }
                        )
                        Text(
                            "Acepto términos y condiciones",
                            modifier = Modifier.weight(1f).clickable { loginViewModel.setAceptaTerminosPsicologo(!aceptaTerminos) }
                        )
                    }
                }
            }

            // ==================== BOTÓN REGISTRAR ====================
            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                enabled = !isRegistering,
                colors = ButtonDefaults.buttonColors(
                    containerColor = primaryColor,
                    contentColor = Color.White,
                    disabledContainerColor = Color.Gray.copy(alpha = 0.5f)
                ),
                shape = RoundedCornerShape(12.dp),
                onClick = { loginViewModel.registrarPsicologo() }
            ) {
                if (isRegistering) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(20.dp),
                        color = Color.White,
                        strokeWidth = 2.dp
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text("Registrando...", fontSize = 16.sp, fontWeight = FontWeight.Bold)
                } else {
                    Text("Crear Cuenta", fontSize = 16.sp, fontWeight = FontWeight.Bold)
                }
            }

            // Spacer para evitar que el botón quede oculto por el teclado
            Spacer(modifier = Modifier.height(16.dp))
        }
    }

    // DatePicker Dialog
    if (showDatePicker) {
        DatePickerDialog(
            onDismissRequest = { loginViewModel.setShowDatePicker(false) },
            confirmButton = {
                TextButton(onClick = {
                    datePickerState.selectedDateMillis?.let { millis ->
                        val selectedDate = java.time.Instant.ofEpochMilli(millis)
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
                    }
                }) {
                    Text("Aceptar")
                }
            },
            dismissButton = {
                TextButton(onClick = { loginViewModel.setShowDatePicker(false) }) {
                    Text("Cancelar")
                }
            }
        ) {
            DatePicker(
                state = datePickerState
            )
        }
    }
}
