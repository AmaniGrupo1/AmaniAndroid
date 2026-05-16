package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.List
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material.icons.filled.ArrowDropUp
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.DocumentScanner
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.LocationOn
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Checkbox
import androidx.compose.material3.CheckboxDefaults
import androidx.compose.material3.DatePicker
import androidx.compose.material3.DatePickerDialog
import androidx.compose.material3.DropdownMenu
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
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel
import org.koin.androidx.compose.koinViewModel

// Colores para validaciones
private val SuccessColor = Color(0xFF81C784)
private val ErrorColor = Color(0xFFE57373)
private val WarningColor = Color(0xFFFF9800)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RegisterScreen(
    navController: NavController,
    loginViewModel: LoginViewModel = koinViewModel(),
    situacionViewModel: SituacionViewModel = koinViewModel()
) {
    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Colores dinamicos segun el tema
    val primaryColor = if (isDark) MaterialTheme.colorScheme.primary else Color(0xFF6C63FF)
    val backgroundColor = if (isDark) screenColors.background else Color(0xFFCCC0E4)
    val surfaceColor = if (isDark) cardColors.cardBackground else Color.White
    val textColor = if (isDark) cardColors.cardContent else Color.Black
    val textFieldBorderColor = if (isDark) Color.White else Color.Gray
    val tutorCardColor = if (isDark) cardColors.cardBackground.copy(alpha = 0.8f) else Color(0xFFFFF3E0)

    val snackbarHostState = remember { SnackbarHostState() }

    // Fuente Roboto
    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Normal),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Bold),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Medium),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.SemiBold)
    )

    // Estado del DatePicker
    val datePickerState = rememberDatePickerState(
        initialSelectedDateMillis = System.currentTimeMillis() - (20L * 365 * 24 * 60 * 60 * 1000)
    )

    // Estados del LoginViewModel
    val nombre by loginViewModel.nombre.collectAsStateWithLifecycle()
    val apellido by loginViewModel.apellido.collectAsStateWithLifecycle()
    val dni by loginViewModel.dni.collectAsStateWithLifecycle()
    val email by loginViewModel.email.collectAsStateWithLifecycle()
    val regPassword by loginViewModel.regPassword.collectAsStateWithLifecycle()
    val telefono by loginViewModel.telefono.collectAsStateWithLifecycle()
    val genero by loginViewModel.genero.collectAsStateWithLifecycle()
    val fechaNacimiento by loginViewModel.fechaNacimiento.collectAsStateWithLifecycle()
    val aceptaTerminos by loginViewModel.aceptaTerminos.collectAsStateWithLifecycle()
    val aceptaVideoconferencia by loginViewModel.aceptaVideoconferencia.collectAsStateWithLifecycle()
    val aceptaComunicacion by loginViewModel.aceptaComunicacion.collectAsStateWithLifecycle()
    val esMenor by loginViewModel.esMenor.collectAsStateWithLifecycle()
    val formularioCompletoValido by loginViewModel.formularioCompletoValido.collectAsStateWithLifecycle()

    // Estados del tutor
    val tutorNombre by loginViewModel.tutorNombre.collectAsStateWithLifecycle()
    val tutorTelefono by loginViewModel.tutorTelefono.collectAsStateWithLifecycle()
    val tutorEmail by loginViewModel.tutorEmail.collectAsStateWithLifecycle()
    val tutorDni by loginViewModel.tutorDni.collectAsStateWithLifecycle()
    val tutorTipo by loginViewModel.tutorTipo.collectAsStateWithLifecycle()

    // Estados de direccion
    val calle by loginViewModel.calle.collectAsStateWithLifecycle()
    val ciudad by loginViewModel.ciudad.collectAsStateWithLifecycle()
    val provincia by loginViewModel.provincia.collectAsStateWithLifecycle()
    val codigoPostal by loginViewModel.codigoPostal.collectAsStateWithLifecycle()
    val pais by loginViewModel.pais.collectAsStateWithLifecycle()

    // Estados de situaciones
    val situacionesIds by loginViewModel.situacionesIds.collectAsStateWithLifecycle()

    // Estados del SituacionViewModel
    val listaSituaciones by situacionViewModel.situaciones.collectAsStateWithLifecycle(emptyList())

    // Estados para UI local (campos tocados)
    var emailTouched by remember { mutableStateOf(false) }
    var passwordTouched by remember { mutableStateOf(false) }
    var telefonoTouched by remember { mutableStateOf(false) }
    var dniTouched by remember { mutableStateOf(false) }
    var fechaTouched by remember { mutableStateOf(false) }
    var tutorEmailTouched by remember { mutableStateOf(false) }
    var tutorTelefonoTouched by remember { mutableStateOf(false) }
    var tutorDniTouched by remember { mutableStateOf(false) }

    // Estados para UI local (expansiones)
    var expandedGenero by remember { mutableStateOf(false) }
    var expandedSituacion by remember { mutableStateOf(false) }
    var expandedTipoTutor by remember { mutableStateOf(false) }

    // Estado para el dialogo de alerta
    var showSuccessDialog by remember { mutableStateOf(false) }
    var showErrorDialog by remember { mutableStateOf(false) }
    var errorMessage by remember { mutableStateOf("") }

    val listaGeneros = listOf("Masculino", "Femenino", "Otro", "Prefiero no decirlo")
    val listaTiposTutor = listOf("Padre", "Madre", "Tutor legal", "Abuelo", "Otro")

    Scaffold(
        containerColor = backgroundColor,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) },
        topBar = {
            Surface(
                modifier = Modifier.fillMaxWidth(),
                color = primaryColor,
                shadowElevation = 4.dp,
                shape = RoundedCornerShape(bottomStart = 16.dp, bottomEnd = 16.dp)
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 12.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    IconButton(onClick = { navController.popBackStack() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = Color.White
                        )
                    }

                    Text(
                        text = "REGISTRAR PACIENTE",
                        color = Color.White,
                        fontFamily = roboto,
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Bold,
                        letterSpacing = 1.sp,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.weight(1f, fill = false)
                    )

                    Spacer(modifier = Modifier.width(48.dp))
                }
            }
        }
    ) { padding ->
        Column(
            modifier = Modifier
                .padding(padding)
                .fillMaxSize()
                .padding(16.dp)
                .verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            val textFieldShape = RoundedCornerShape(12.dp)

            // ==================== SECCION 1: DATOS PERSONALES ====================
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = surfaceColor),
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
                            fontFamily = roboto
                        )
                    }
                    Spacer(modifier = Modifier.height(16.dp))

                    // Nombre
                    OutlinedTextField(
                        value = nombre,
                        onValueChange = { loginViewModel.setNombre(it) },
                        label = { Text("Nombre *", fontFamily = roboto, color = textColor) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = textColor,
                            unfocusedTextColor = textColor,
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = textFieldBorderColor,
                            focusedLabelColor = primaryColor,
                            unfocusedLabelColor = textColor
                        )
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    // Apellido
                    OutlinedTextField(
                        value = apellido,
                        onValueChange = { loginViewModel.setApellido(it) },
                        label = { Text("Apellido *", fontFamily = roboto, color = textColor) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = textColor,
                            unfocusedTextColor = textColor,
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = textFieldBorderColor,
                            focusedLabelColor = primaryColor,
                            unfocusedLabelColor = textColor
                        )
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    // DNI con validación
                    OutlinedTextField(
                        value = dni,
                        onValueChange = {
                            loginViewModel.setDni(it.uppercase())
                            dniTouched = true
                        },
                        label = { Text("DNI *", fontFamily = roboto, color = textColor) },
                        placeholder = { Text("12345678A", fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
<<<<<<< HEAD
                        isError = dni.isNotBlank() && !dni.matches(Regex("^[0-9]{8}[A-Za-z]$")),
                        supportingText = {
                            if (dni.isNotBlank() && !dni.matches(Regex("^[0-9]{8}[A-Za-z]$"))) {
                                Text(
                                    "Formato invalido (8 numeros + 1 letra)",
                                    color = MaterialTheme.colorScheme.error
                                )
                            }
                        },
=======
                        isError = dniTouched && dni.isNotBlank() && !dni.matches(Regex("^[0-9]{8}[A-Za-z]$")),
>>>>>>> login
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = textColor,
                            unfocusedTextColor = textColor,
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = textFieldBorderColor,
                            focusedLabelColor = primaryColor,
                            unfocusedLabelColor = textColor
                        ),
                        supportingText = {
                            when {
                                !dniTouched && dni.isBlank() -> {
                                    Text(
                                        "🆔 Introduce el DNI",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = textColor.copy(alpha = 0.6f)
                                    )
                                }
                                dniTouched && dni.isNotBlank() && !dni.matches(Regex("^[0-9]{8}[A-Za-z]$")) -> {
                                    Text(
                                        "❌ Formato inválido (8 números + 1 letra)",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = ErrorColor
                                    )
                                }
                                dniTouched && dni.isNotBlank() && dni.matches(Regex("^[0-9]{8}[A-Za-z]$")) -> {
                                    Text(
                                        "✅ DNI válido",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = SuccessColor
                                    )
                                }
                            }
                        }
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    // Email con validación
                    OutlinedTextField(
                        value = email,
                        onValueChange = {
                            loginViewModel.setEmail(it)
                            emailTouched = true
                        },
                        label = { Text("Email *", fontFamily = roboto, color = textColor) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        isError = emailTouched && email.isNotBlank() && !email.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = textColor,
                            unfocusedTextColor = textColor,
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = textFieldBorderColor,
                            focusedLabelColor = primaryColor,
                            unfocusedLabelColor = textColor
                        ),
                        supportingText = {
                            when {
                                !emailTouched && email.isBlank() -> {
                                    Text(
                                        "📧 Introduce el correo electrónico",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = textColor.copy(alpha = 0.6f)
                                    )
                                }
                                emailTouched && email.isNotBlank() && !email.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                    Text(
                                        "❌ Formato de correo inválido (ej: usuario@dominio.com)",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = ErrorColor
                                    )
                                }
                                emailTouched && email.isNotBlank() && email.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                    Text(
                                        "✅ Correo válido",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = SuccessColor
                                    )
                                }
                            }
                        }
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    // Contraseña con validación mejorada
                    OutlinedTextField(
                        value = regPassword,
<<<<<<< HEAD
                        onValueChange = { loginViewModel.setRegPassword(it) },
                        label = { Text("Contrasena *", fontFamily = roboto, color = textColor) },
=======
                        onValueChange = {
                            loginViewModel.setRegPassword(it)
                            passwordTouched = true
                        },
                        label = { Text("Contraseña *", fontFamily = roboto, color = textColor) },
>>>>>>> login
                        visualTransformation = PasswordVisualTransformation(),
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        isError = passwordTouched && regPassword.isNotBlank() && (!loginViewModel.isValidPassword(regPassword) || regPassword.length < 8),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = textColor,
                            unfocusedTextColor = textColor,
                            focusedBorderColor = if (passwordTouched && regPassword.isNotBlank() && (!loginViewModel.isValidPassword(regPassword) || regPassword.length < 8)) ErrorColor else primaryColor,
                            unfocusedBorderColor = textFieldBorderColor,
                            focusedLabelColor = primaryColor,
                            unfocusedLabelColor = textColor
                        ),
                        supportingText = {
                            when {
                                !passwordTouched && regPassword.isBlank() -> {
                                    Text(
                                        "🔒 Introduce una contraseña",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = textColor.copy(alpha = 0.6f)
                                    )
                                }
                                passwordTouched && regPassword.isNotBlank() && regPassword.length < 8 -> {
                                    Text(
                                        "⚠️ La contraseña debe tener al menos 8 caracteres",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = WarningColor
                                    )
                                }
                                passwordTouched && regPassword.isNotBlank() && !loginViewModel.isValidPassword(regPassword) -> {
                                    Text(
                                        "❌ La contraseña debe tener letras y números",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = ErrorColor
                                    )
                                }
                                passwordTouched && regPassword.isNotBlank() && loginViewModel.isValidPassword(regPassword) -> {
                                    Text(
                                        "✅ Contraseña válida",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = SuccessColor
                                    )
                                }
                            }
                        }
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    // Teléfono con validación
                    OutlinedTextField(
                        value = telefono,
<<<<<<< HEAD
                        onValueChange = { loginViewModel.setTelefono(it) },
                        label = { Text("Telefono *", fontFamily = roboto, color = textColor) },
                        placeholder = { Text("123456789", fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        isError = telefono.isNotBlank() && !telefono.matches(Regex("^[0-9]{9}$")),
                        supportingText = {
                            if (telefono.isNotBlank() && !telefono.matches(Regex("^[0-9]{9}$"))) {
                                Text(
                                    "Debe tener 9 digitos",
                                    color = MaterialTheme.colorScheme.error
                                )
                            }
                        },
=======
                        onValueChange = {
                            loginViewModel.setTelefono(it)
                            telefonoTouched = true
                        },
                        label = { Text("Teléfono *", fontFamily = roboto, color = textColor) },
                        placeholder = { Text("123456789", fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        isError = telefonoTouched && telefono.isNotBlank() && !telefono.matches(Regex("^[0-9]{9}$")),
>>>>>>> login
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = textColor,
                            unfocusedTextColor = textColor,
                            focusedBorderColor = if (telefonoTouched && telefono.isNotBlank() && !telefono.matches(Regex("^[0-9]{9}$"))) ErrorColor else primaryColor,
                            unfocusedBorderColor = textFieldBorderColor,
                            focusedLabelColor = primaryColor,
                            unfocusedLabelColor = textColor
                        ),
                        supportingText = {
                            when {
                                !telefonoTouched && telefono.isBlank() -> {
                                    Text(
                                        "📞 Introduce el número de teléfono",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = textColor.copy(alpha = 0.6f)
                                    )
                                }
                                telefonoTouched && telefono.isNotBlank() && !telefono.matches(Regex("^[0-9]{9}$")) -> {
                                    Text(
                                        "❌ Debe tener 9 dígitos",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = ErrorColor
                                    )
                                }
                                telefonoTouched && telefono.isNotBlank() && telefono.matches(Regex("^[0-9]{9}$")) -> {
                                    Text(
                                        "✅ Teléfono válido",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = SuccessColor
                                    )
                                }
                            }
                        }
                    )

<<<<<<< HEAD
                    // Dropdown Genero
=======
                    Spacer(modifier = Modifier.height(12.dp))

                    // Dropdown Género
>>>>>>> login
                    ExposedDropdownMenuBox(
                        expanded = expandedGenero,
                        onExpandedChange = { expandedGenero = it }
                    ) {
                        OutlinedTextField(
                            value = genero,
                            onValueChange = {},
                            readOnly = true,
                            label = { Text("Genero *", fontFamily = roboto, color = textColor) },
                            trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedGenero) },
                            modifier = Modifier
                                .fillMaxWidth()
                                .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable),
                            shape = textFieldShape,
                            isError = genero.isBlank(),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = if (genero.isBlank()) ErrorColor else primaryColor,
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = primaryColor,
                                unfocusedLabelColor = textColor
                            )
                        )
                        ExposedDropdownMenu(
                            expanded = expandedGenero,
                            onDismissRequest = { expandedGenero = false },
                            containerColor = surfaceColor
                        ) {
                            listaGeneros.forEach { opcion ->
                                DropdownMenuItem(
                                    text = { Text(opcion, fontFamily = roboto, color = textColor) },
                                    onClick = {
                                        loginViewModel.setGenero(opcion)
                                        expandedGenero = false
                                    }
                                )
                            }
                        }
                    }

<<<<<<< HEAD
                    // Fecha de Nacimiento con DatePicker
=======
                    Spacer(modifier = Modifier.height(12.dp))

                    // Fecha de nacimiento
>>>>>>> login
                    OutlinedTextField(
                        value = fechaNacimiento,
                        onValueChange = {
                            loginViewModel.setFechaNacimiento(it)
                            fechaTouched = true
                        },
                        label = { Text("Fecha nacimiento *", fontFamily = roboto, color = textColor) },
                        placeholder = { Text("1990-05-15", fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
<<<<<<< HEAD
                        trailingIcon = {
                            IconButton(onClick = { loginViewModel.setShowDatePicker(true) }) {
                                Icon(Icons.Default.CalendarToday, contentDescription = "Seleccionar fecha")
                            }
                        },
                        isError = fechaNacimiento.isNotBlank() && !fechaNacimiento.matches(Regex("""\d{4}-\d{2}-\d{2}""")),
                        supportingText = {
                            if (fechaNacimiento.isNotBlank() && !fechaNacimiento.matches(Regex("""\d{4}-\d{2}-\d{2}"""))) {
                                Text(
                                    "Formato invalido (YYYY-MM-DD)",
                                    color = MaterialTheme.colorScheme.error
                                )
                            }
                        },
=======
                        isError = fechaTouched && fechaNacimiento.isNotBlank() && !fechaNacimiento.matches(Regex("""\d{4}-\d{2}-\d{2}""")),
>>>>>>> login
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = textColor,
                            unfocusedTextColor = textColor,
                            focusedBorderColor = if (fechaTouched && fechaNacimiento.isNotBlank() && !fechaNacimiento.matches(Regex("""\d{4}-\d{2}-\d{2}"""))) ErrorColor else primaryColor,
                            unfocusedBorderColor = textFieldBorderColor,
                            focusedLabelColor = primaryColor,
                            unfocusedLabelColor = textColor
                        ),
                        supportingText = {
                            when {
                                !fechaTouched && fechaNacimiento.isBlank() -> {
                                    Text(
                                        "📅 Introduce la fecha de nacimiento (YYYY-MM-DD)",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = textColor.copy(alpha = 0.6f)
                                    )
                                }
                                fechaTouched && fechaNacimiento.isNotBlank() && !fechaNacimiento.matches(Regex("""\d{4}-\d{2}-\d{2}""")) -> {
                                    Text(
                                        "❌ Formato inválido (YYYY-MM-DD)",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = ErrorColor
                                    )
                                }
                                fechaTouched && fechaNacimiento.isNotBlank() && fechaNacimiento.matches(Regex("""\d{4}-\d{2}-\d{2}""")) -> {
                                    Text(
                                        "✅ Fecha válida",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = SuccessColor
                                    )
                                }
                            }
                        }
                    )
                }
            }

            // ==================== SECCION 2: DATOS DEL TUTOR (SOLO SI ES MENOR) ====================
            if (esMenor && fechaNacimiento.isNotBlank()) {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = tutorCardColor),
                    shape = RoundedCornerShape(16.dp),
                    elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
                ) {
                    Column(modifier = Modifier.padding(16.dp)) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.People,
                                contentDescription = null,
                                tint = Color(0xFFE67E22)
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                "Datos del Tutor",
                                style = MaterialTheme.typography.titleLarge,
                                color = Color(0xFFE67E22),
                                fontFamily = roboto
                            )
                        }
                        Text(
                            "Obligatorio por ser menor de edad",
                            style = MaterialTheme.typography.bodySmall,
                            color = Color(0xFFE67E22),
                            fontFamily = roboto
                        )
                        Spacer(modifier = Modifier.height(16.dp))

                        // Nombre del tutor
                        OutlinedTextField(
                            value = tutorNombre,
                            onValueChange = { loginViewModel.setTutorNombre(it) },
                            label = { Text("Nombre completo *", fontFamily = roboto, color = textColor) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = Color(0xFFE67E22),
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = Color(0xFFE67E22),
                                unfocusedLabelColor = textColor
                            )
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Teléfono del tutor
                        OutlinedTextField(
                            value = tutorTelefono,
<<<<<<< HEAD
                            onValueChange = { loginViewModel.setTutorTelefono(it) },
                            label = { Text("Telefono *", fontFamily = roboto, color = textColor) },
                            placeholder = { Text("123456789", fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = tutorTelefono.isNotBlank() &&
                                    !tutorTelefono.matches(Regex("^[0-9]{9}$")),
                            supportingText = {
                                if (tutorTelefono.isNotBlank() &&
                                    !tutorTelefono.matches(Regex("^[0-9]{9}$"))
                                ) {
                                    Text(
                                        "Debe tener 9 digitos",
                                        color = MaterialTheme.colorScheme.error
                                    )
                                }
                            },
=======
                            onValueChange = {
                                loginViewModel.setTutorTelefono(it)
                                tutorTelefonoTouched = true
                            },
                            label = { Text("Teléfono *", fontFamily = roboto, color = textColor) },
                            placeholder = { Text("123456789", fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = tutorTelefonoTouched && tutorTelefono.isNotBlank() && !tutorTelefono.matches(Regex("^[0-9]{9}$")),
>>>>>>> login
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = if (tutorTelefonoTouched && tutorTelefono.isNotBlank() && !tutorTelefono.matches(Regex("^[0-9]{9}$"))) ErrorColor else Color(0xFFE67E22),
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = Color(0xFFE67E22),
                                unfocusedLabelColor = textColor
                            ),
                            supportingText = {
                                when {
                                    !tutorTelefonoTouched && tutorTelefono.isBlank() -> {
                                        Text(
                                            "📞 Introduce el teléfono del tutor",
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = textColor.copy(alpha = 0.6f)
                                        )
                                    }
                                    tutorTelefonoTouched && tutorTelefono.isNotBlank() && !tutorTelefono.matches(Regex("^[0-9]{9}$")) -> {
                                        Text(
                                            "❌ Debe tener 9 dígitos",
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = ErrorColor
                                        )
                                    }
                                    tutorTelefonoTouched && tutorTelefono.isNotBlank() && tutorTelefono.matches(Regex("^[0-9]{9}$")) -> {
                                        Text(
                                            "✅ Teléfono válido",
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = SuccessColor
                                        )
                                    }
                                }
                            }
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Email del tutor
                        OutlinedTextField(
                            value = tutorEmail,
                            onValueChange = {
                                loginViewModel.setTutorEmail(it)
                                tutorEmailTouched = true
                            },
                            label = { Text("Email *", fontFamily = roboto, color = textColor) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
<<<<<<< HEAD
                            isError = tutorEmail.isNotBlank() &&
                                    !tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")),
                            supportingText = {
                                if (tutorEmail.isNotBlank() &&
                                    !tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$"))
                                ) {
                                    Text(
                                        "Formato de email invalido",
                                        color = MaterialTheme.colorScheme.error
                                    )
                                }
                            },
=======
                            isError = tutorEmailTouched && tutorEmail.isNotBlank() && !tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")),
>>>>>>> login
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = if (tutorEmailTouched && tutorEmail.isNotBlank() && !tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$"))) ErrorColor else Color(0xFFE67E22),
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = Color(0xFFE67E22),
                                unfocusedLabelColor = textColor
                            ),
                            supportingText = {
                                when {
                                    !tutorEmailTouched && tutorEmail.isBlank() -> {
                                        Text(
                                            "📧 Introduce el email del tutor",
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = textColor.copy(alpha = 0.6f)
                                        )
                                    }
                                    tutorEmailTouched && tutorEmail.isNotBlank() && !tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                        Text(
                                            "❌ Formato de email inválido",
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = ErrorColor
                                        )
                                    }
                                    tutorEmailTouched && tutorEmail.isNotBlank() && tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                        Text(
                                            "✅ Email válido",
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = SuccessColor
                                        )
                                    }
                                }
                            }
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // DNI del tutor
                        OutlinedTextField(
                            value = tutorDni,
                            onValueChange = {
                                loginViewModel.setTutorDni(it.uppercase())
                                tutorDniTouched = true
                            },
                            label = { Text("DNI *", fontFamily = roboto, color = textColor) },
                            placeholder = { Text("12345678A", fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
<<<<<<< HEAD
                            isError = tutorDni.isNotBlank() &&
                                    !tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$")),
                            supportingText = {
                                if (tutorDni.isNotBlank() &&
                                    !tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$"))
                                ) {
                                    Text(
                                        "Formato invalido (8 numeros + 1 letra)",
                                        color = MaterialTheme.colorScheme.error
                                    )
                                }
                            },
=======
                            isError = tutorDniTouched && tutorDni.isNotBlank() && !tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$")),
>>>>>>> login
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = if (tutorDniTouched && tutorDni.isNotBlank() && !tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$"))) ErrorColor else Color(0xFFE67E22),
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = Color(0xFFE67E22),
                                unfocusedLabelColor = textColor
                            ),
                            supportingText = {
                                when {
                                    !tutorDniTouched && tutorDni.isBlank() -> {
                                        Text(
                                            "🆔 Introduce el DNI del tutor",
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = textColor.copy(alpha = 0.6f)
                                        )
                                    }
                                    tutorDniTouched && tutorDni.isNotBlank() && !tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$")) -> {
                                        Text(
                                            "❌ Formato inválido (8 números + 1 letra)",
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = ErrorColor
                                        )
                                    }
                                    tutorDniTouched && tutorDni.isNotBlank() && tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$")) -> {
                                        Text(
                                            "✅ DNI válido",
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = SuccessColor
                                        )
                                    }
                                }
                            }
                        )

                        Spacer(modifier = Modifier.height(12.dp))

                        // Dropdown Tipo de Tutor
                        ExposedDropdownMenuBox(
                            expanded = expandedTipoTutor,
                            onExpandedChange = { expandedTipoTutor = it }
                        ) {
                            OutlinedTextField(
                                value = tutorTipo,
                                onValueChange = {},
                                readOnly = true,
                                label = { Text("Parentesco *", fontFamily = roboto, color = textColor) },
                                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedTipoTutor) },
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable),
                                shape = textFieldShape,
                                isError = tutorTipo.isBlank(),
                                colors = OutlinedTextFieldDefaults.colors(
                                    focusedTextColor = textColor,
                                    unfocusedTextColor = textColor,
                                    focusedBorderColor = if (tutorTipo.isBlank()) ErrorColor else Color(0xFFE67E22),
                                    unfocusedBorderColor = textFieldBorderColor,
                                    focusedLabelColor = Color(0xFFE67E22),
                                    unfocusedLabelColor = textColor
                                )
                            )
                            ExposedDropdownMenu(
                                expanded = expandedTipoTutor,
                                onDismissRequest = { expandedTipoTutor = false },
                                containerColor = surfaceColor
                            ) {
                                listaTiposTutor.forEach { tipo ->
                                    DropdownMenuItem(
                                        text = { Text(tipo, fontFamily = roboto, color = textColor) },
                                        onClick = {
                                            loginViewModel.setTutorTipo(tipo)
                                            expandedTipoTutor = false
                                        }
                                    )
                                }
                            }
                        }
                    }
                }
            }

            // ==================== SECCION 3: DIRECCION ====================
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = surfaceColor),
                shape = RoundedCornerShape(16.dp),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.LocationOn,
                            contentDescription = null,
                            tint = primaryColor
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            "Direccion",
                            style = MaterialTheme.typography.titleLarge,
                            color = primaryColor,
                            fontFamily = roboto
                        )
                    }
                    Spacer(modifier = Modifier.height(16.dp))

                    // Calle
                    OutlinedTextField(
                        value = calle,
                        onValueChange = { loginViewModel.setCalle(it) },
                        label = { Text("Calle y numero *", fontFamily = roboto, color = textColor) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = textColor,
                            unfocusedTextColor = textColor,
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = textFieldBorderColor,
                            focusedLabelColor = primaryColor,
                            unfocusedLabelColor = textColor
                        )
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        OutlinedTextField(
                            value = ciudad,
                            onValueChange = { loginViewModel.setCiudad(it) },
                            label = { Text("Ciudad", fontFamily = roboto, color = textColor) },
                            modifier = Modifier.weight(1f),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = primaryColor,
                                unfocusedLabelColor = textColor
                            )
                        )
                        OutlinedTextField(
                            value = provincia,
                            onValueChange = { loginViewModel.setProvincia(it) },
                            label = { Text("Provincia", fontFamily = roboto, color = textColor) },
                            modifier = Modifier.weight(1f),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = primaryColor,
                                unfocusedLabelColor = textColor
                            )
                        )
                    }

                    Spacer(modifier = Modifier.height(12.dp))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        OutlinedTextField(
                            value = codigoPostal,
                            onValueChange = { loginViewModel.setCodigoPostal(it) },
                            label = { Text("Codigo Postal", fontFamily = roboto, color = textColor) },
                            modifier = Modifier.weight(1f),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = primaryColor,
                                unfocusedLabelColor = textColor
                            )
                        )
                        OutlinedTextField(
                            value = pais,
                            onValueChange = { loginViewModel.setPais(it) },
                            label = { Text("Pais", fontFamily = roboto, color = textColor) },
                            modifier = Modifier.weight(1f),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = primaryColor,
                                unfocusedLabelColor = textColor
                            )
                        )
                    }
                }
            }

            // ==================== SECCION 4: SITUACIONES ====================
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = surfaceColor),
                shape = RoundedCornerShape(16.dp),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.AutoMirrored.Filled.List, contentDescription = null, tint = primaryColor)
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            "Situaciones",
                            style = MaterialTheme.typography.titleLarge,
                            color = primaryColor,
                            fontFamily = roboto
                        )
                    }
                    Text(
                        "Seleccione una o mas situaciones *",
                        style = MaterialTheme.typography.bodySmall,
                        fontFamily = roboto,
                        color = textColor.copy(alpha = 0.7f)
                    )
                    Spacer(modifier = Modifier.height(16.dp))

                    Box {
                        OutlinedTextField(
                            value = if (situacionesIds.isEmpty())
                                "Seleccione situaciones"
                            else "${situacionesIds.size} situacion(es) seleccionada(s)",
                            onValueChange = {},
                            readOnly = true,
                            trailingIcon = {
                                IconButton(onClick = { expandedSituacion = !expandedSituacion }) {
                                    Icon(
                                        if (expandedSituacion) Icons.Default.ArrowDropUp else Icons.Default.ArrowDropDown,
                                        contentDescription = null,
                                        tint = textColor
                                    )
                                }
                            },
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { expandedSituacion = !expandedSituacion },
                            shape = textFieldShape,
                            isError = situacionesIds.isEmpty(),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = if (situacionesIds.isEmpty()) ErrorColor else primaryColor,
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = primaryColor,
                                unfocusedLabelColor = textColor
                            )
                        )

                        DropdownMenu(
                            expanded = expandedSituacion,
                            onDismissRequest = { expandedSituacion = false },
                            modifier = Modifier
                                .fillMaxWidth(0.9f)
                                .heightIn(max = 400.dp),
                            containerColor = surfaceColor
                        ) {
                            if (listaSituaciones.isEmpty()) {
                                DropdownMenuItem(
                                    text = {
                                        Text(
                                            "No hay situaciones disponibles",
                                            fontFamily = roboto,
                                            color = textColor
                                        )
                                    },
                                    onClick = { expandedSituacion = false },
                                    enabled = false
                                )
                            } else {
                                listaSituaciones.forEach { situacion ->
                                    val isSelected = situacionesIds.contains(situacion.idSituacion)
                                    DropdownMenuItem(
                                        text = {
                                            Row(
                                                verticalAlignment = Alignment.CenterVertically,
                                                modifier = Modifier.fillMaxWidth()
                                            ) {
                                                Checkbox(
                                                    checked = isSelected,
                                                    onCheckedChange = { checked ->
                                                        val currentIds = situacionesIds.toMutableList()
                                                        if (checked) {
                                                            currentIds.add(situacion.idSituacion)
                                                        } else {
                                                            currentIds.remove(situacion.idSituacion)
                                                        }
                                                        loginViewModel.situacionesIds.value = currentIds
                                                        expandedSituacion = false
                                                    },
                                                    modifier = Modifier.size(24.dp),
                                                    colors = CheckboxDefaults.colors(checkedColor = primaryColor)
                                                )
                                                Spacer(modifier = Modifier.width(12.dp))
                                                Text(
                                                    situacion.nombre,
                                                    fontFamily = roboto,
                                                    color = textColor,
                                                    modifier = Modifier.weight(1f)
                                                )
                                            }
                                        },
                                        onClick = {}
                                    )
                                }
                            }
                        }
                    }
                }
            }

            // ==================== SECCION 5: CONSENTIMIENTOS ====================
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = surfaceColor),
                shape = RoundedCornerShape(16.dp),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.DocumentScanner,
                            contentDescription = null,
                            tint = primaryColor
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            "Consentimientos",
                            style = MaterialTheme.typography.titleLarge,
                            color = primaryColor,
                            fontFamily = roboto
                        )
                    }
                    Spacer(modifier = Modifier.height(16.dp))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Checkbox(
                            checked = aceptaTerminos,
                            onCheckedChange = { loginViewModel.aceptaTerminos.value = it },
                            colors = CheckboxDefaults.colors(checkedColor = primaryColor)
                        )
                        Text(
                            "Acepto los terminos y condiciones *",
                            fontFamily = roboto,
                            color = textColor,
                            modifier = Modifier.clickable {
                                loginViewModel.aceptaTerminos.value = !aceptaTerminos
                            }
                        )
                    }

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Checkbox(
                            checked = aceptaVideoconferencia,
                            onCheckedChange = { loginViewModel.aceptaVideoconferencia.value = it },
                            colors = CheckboxDefaults.colors(checkedColor = primaryColor)
                        )
                        Text(
                            "Acepto videoconferencia",
                            fontFamily = roboto,
                            color = textColor,
                            modifier = Modifier.clickable {
                                loginViewModel.aceptaVideoconferencia.value =
                                    !aceptaVideoconferencia
                            }
                        )
                    }

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Checkbox(
                            checked = aceptaComunicacion,
                            onCheckedChange = { loginViewModel.aceptaComunicacion.value = it },
                            colors = CheckboxDefaults.colors(checkedColor = primaryColor)
                        )
                        Text(
                            "Acepto comunicaciones",
                            fontFamily = roboto,
                            color = textColor,
                            modifier = Modifier.clickable {
                                loginViewModel.aceptaComunicacion.value = !aceptaComunicacion
                            }
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            // ==================== BOTON REGISTRAR ====================
            val registerSuccess by loginViewModel.registerSuccess.collectAsStateWithLifecycle()
            val registerError by loginViewModel.registerError.collectAsStateWithLifecycle()

            Button(
                onClick = {
                    loginViewModel.registrarPaciente()
                },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(56.dp),
                shape = RoundedCornerShape(16.dp),
                colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                enabled = formularioCompletoValido
            ) {
                Text(
                    text = "Registrar Paciente",
                    color = Color.White,
                    fontFamily = roboto,
                    fontSize = MaterialTheme.typography.titleMedium.fontSize
                )
            }

            // Mostramos el dialogo segun el estado
            LaunchedEffect(registerSuccess, registerError) {
                if (registerSuccess) {
                    showSuccessDialog = true
                    loginViewModel.resetRegisterState()
                } else if (!registerError.isNullOrBlank()) {
                    errorMessage = registerError!!
                    showErrorDialog = true
                    loginViewModel.resetRegisterState()
                }
            }

            // DatePicker Dialog
            if (loginViewModel.showDatePicker.collectAsStateWithLifecycle().value) {
                DatePickerDialog(
                    onDismissRequest = { loginViewModel.setShowDatePicker(false) },
                    confirmButton = {
                        TextButton(onClick = {
                            datePickerState.selectedDateMillis?.let { millis ->
                                val selectedDate = java.time.Instant.ofEpochMilli(millis)
                                    .atZone(java.time.ZoneId.systemDefault())
                                    .toLocalDate()
                                loginViewModel.setFechaNacimiento(selectedDate.toString())
                            }
                            loginViewModel.setShowDatePicker(false)
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
                    DatePicker(state = datePickerState)
                }
            }
        }
    }

    // ==================== DIALOGO DE EXITO ====================
    if (showSuccessDialog) {
        AlertDialog(
            onDismissRequest = {
                showSuccessDialog = false
                navController.popBackStack()
            },
            icon = {
                Icon(
                    Icons.Default.CheckCircle,
                    contentDescription = null,
                    tint = Color(0xFF4CAF50),
                    modifier = Modifier.size(48.dp)
                )
            },
            title = {
                Text(
                    "Registro Exitoso!",
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    color = textColor
                )
            },
            text = {
                Text(
                    "El paciente ha sido registrado correctamente en el sistema.",
                    fontFamily = roboto,
                    color = textColor.copy(alpha = 0.8f)
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        showSuccessDialog = false
                        navController.popBackStack()
                    }
                ) {
                    Text("Aceptar", color = primaryColor, fontFamily = roboto)
                }
            },
            shape = RoundedCornerShape(16.dp),
            containerColor = surfaceColor
        )
    }

    // ==================== DIALOGO DE ERROR ====================
    if (showErrorDialog) {
        AlertDialog(
            onDismissRequest = { showErrorDialog = false },
            icon = {
                Icon(
                    Icons.Default.Error,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.error,
                    modifier = Modifier.size(48.dp)
                )
            },
            title = {
                Text(
                    "Error en el Registro",
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    color = textColor
                )
            },
            text = {
                Text(
                    text = errorMessage.ifBlank { "Ocurrio un error al registrar el paciente. Por favor, intentalo de nuevo." },
                    fontFamily = roboto,
                    color = textColor.copy(alpha = 0.8f)
                )
            },
            confirmButton = {
                TextButton(
                    onClick = { showErrorDialog = false }
                ) {
                    Text("Aceptar", color = primaryColor, fontFamily = roboto)
                }
            },
            shape = RoundedCornerShape(16.dp),
            containerColor = surfaceColor
        )
    }
}
