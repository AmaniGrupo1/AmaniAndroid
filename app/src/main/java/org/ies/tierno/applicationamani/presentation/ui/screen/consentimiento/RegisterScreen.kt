package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.material3.MenuAnchorType
import androidx.compose.runtime.*
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
import java.time.LocalDate
import java.time.Period
import java.time.format.DateTimeFormatter

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

    // Colores dinámicos según el tema
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

    val scope = rememberCoroutineScope()
    val dateFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy")

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

    // Estados de dirección
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
    var tutorEmailTouched by remember { mutableStateOf(false) }
    var tutorTelefonoTouched by remember { mutableStateOf(false) }
    var tutorDniTouched by remember { mutableStateOf(false) }

    // Estados para UI local (expansiones)
    var expandedGenero by remember { mutableStateOf(false) }
    var expandedSituacion by remember { mutableStateOf(false) }
    var expandedTipoTutor by remember { mutableStateOf(false) }

    // Estado para el DatePicker
    var showDatePicker by remember { mutableStateOf(false) }

    // Convertir fechaNacimiento String a LocalDate para el DatePicker
    val selectedDate = remember(fechaNacimiento) {
        try {
            if (fechaNacimiento.isNotBlank()) {
                LocalDate.parse(fechaNacimiento)
            } else null
        } catch (e: Exception) {
            null
        }
    }

    // Estado para error de fecha
    var dateError by remember { mutableStateOf<String?>(null) }

    // Estado para el diálogo de alerta
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
                    IconButton(
                        onClick = {
                            loginViewModel.limpiarFormulario()
                            navController.popBackStack()
                        }
                    ) {
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

            // ==================== SECCIÓN 1: DATOS PERSONALES ====================
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
                        isError = dniTouched && dni.isNotBlank() && !dni.matches(Regex("^[0-9]{8}[A-Za-z]$")),
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
                        onValueChange = {
                            loginViewModel.setRegPassword(it)
                            passwordTouched = true
                        },
                        label = { Text("Contraseña *", fontFamily = roboto, color = textColor) },
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
                        onValueChange = {
                            loginViewModel.setTelefono(it)
                            telefonoTouched = true
                        },
                        label = { Text("Teléfono *", fontFamily = roboto, color = textColor) },
                        placeholder = { Text("123456789", fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        isError = telefonoTouched && telefono.isNotBlank() && !telefono.matches(Regex("^[0-9]{9}$")),
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

                    Spacer(modifier = Modifier.height(12.dp))

                    // Dropdown Género
                    ExposedDropdownMenuBox(
                        expanded = expandedGenero,
                        onExpandedChange = { expandedGenero = it }
                    ) {
                        OutlinedTextField(
                            value = genero,
                            onValueChange = {},
                            readOnly = true,
                            label = { Text("Género *", fontFamily = roboto, color = textColor) },
                            trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedGenero) },
                            modifier = Modifier
                                .fillMaxWidth()
                                .menuAnchor(MenuAnchorType.PrimaryNotEditable),
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

                    Spacer(modifier = Modifier.height(12.dp))

                    // ==================== FECHA DE NACIMIENTO CON DATEPICKER ====================
                    OutlinedTextField(
                        value = selectedDate?.format(dateFormatter) ?: "",
                        onValueChange = {},
                        label = { Text("Fecha de nacimiento *", fontFamily = roboto, color = textColor) },
                        placeholder = { Text("DD/MM/AAAA", fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable { showDatePicker = true },
                        readOnly = true,
                        shape = textFieldShape,
                        trailingIcon = {
                            IconButton(onClick = { showDatePicker = true }) {
                                Icon(
                                    Icons.Default.CalendarToday,
                                    contentDescription = "Seleccionar fecha",
                                    tint = textColor
                                )
                            }
                        },
                        isError = dateError != null,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = textColor,
                            unfocusedTextColor = textColor,
                            focusedBorderColor = if (dateError != null) ErrorColor else primaryColor,
                            unfocusedBorderColor = textFieldBorderColor,
                            focusedLabelColor = if (dateError != null) ErrorColor else primaryColor,
                            unfocusedLabelColor = textColor
                        ),
                        supportingText = {
                            when {
                                dateError != null -> {
                                    Text(
                                        "❌ $dateError",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = ErrorColor
                                    )
                                }
                                selectedDate != null -> {
                                    Text(
                                        "✅ Fecha válida",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = SuccessColor
                                    )
                                }
                                else -> {
                                    Text(
                                        "📅 Selecciona tu fecha de nacimiento",
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = textColor.copy(alpha = 0.6f)
                                    )
                                }
                            }
                        }
                    )
                }
            }

            // ==================== SECCIÓN 2: DATOS DEL TUTOR (SOLO SI ES MENOR) ====================
            if (esMenor && selectedDate != null) {
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
                            onValueChange = {
                                loginViewModel.setTutorTelefono(it)
                                tutorTelefonoTouched = true
                            },
                            label = { Text("Teléfono *", fontFamily = roboto, color = textColor) },
                            placeholder = { Text("123456789", fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = tutorTelefonoTouched && tutorTelefono.isNotBlank() && !tutorTelefono.matches(Regex("^[0-9]{9}$")),
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
                            isError = tutorEmailTouched && tutorEmail.isNotBlank() && !tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")),
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
                            isError = tutorDniTouched && tutorDni.isNotBlank() && !tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$")),
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
                                    .menuAnchor(MenuAnchorType.PrimaryNotEditable),
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

            // ==================== SECCIÓN 3: DIRECCIÓN ====================
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
                            "Dirección",
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
                        label = { Text("Calle y número *", fontFamily = roboto, color = textColor) },
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
                            label = { Text("Código Postal", fontFamily = roboto, color = textColor) },
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
                            label = { Text("País", fontFamily = roboto, color = textColor) },
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

            // ==================== SECCIÓN 4: SITUACIONES ====================
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = surfaceColor),
                shape = RoundedCornerShape(16.dp),
                elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.Default.List, contentDescription = null, tint = primaryColor)
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            "Situaciones",
                            style = MaterialTheme.typography.titleLarge,
                            color = primaryColor,
                            fontFamily = roboto
                        )
                    }
                    Text(
                        "Seleccione una o más situaciones *",
                        style = MaterialTheme.typography.bodySmall,
                        fontFamily = roboto,
                        color = textColor.copy(alpha = 0.7f)
                    )
                    Spacer(modifier = Modifier.height(16.dp))

                    Box {
                        OutlinedTextField(
                            value = if (situacionesIds.isEmpty())
                                "Seleccione situaciones"
                            else "${situacionesIds.size} situación(es) seleccionada(s)",
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

            // ==================== SECCIÓN 5: CONSENTIMIENTOS ====================
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
                            "Acepto los términos y condiciones *",
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

            // ==================== BOTÓN REGISTRAR ====================
            val registerSuccess by loginViewModel.registerSuccess.collectAsStateWithLifecycle()
            val registerError by loginViewModel.registerError.collectAsStateWithLifecycle()

            // Validar que la fecha sea válida y mayor de edad
            val isDateValid = selectedDate != null && dateError == null

            Button(
                onClick = {
                    if (selectedDate != null) {
                        val age = Period.between(selectedDate, LocalDate.now()).years
                        if (age >= 18) {
                            loginViewModel.setFechaNacimiento(selectedDate.toString())
                            loginViewModel.registrarPaciente()
                        } else {
                            dateError = "Debes ser mayor de 18 años"
                        }
                    } else {
                        dateError = "Selecciona una fecha de nacimiento"
                    }
                },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(56.dp),
                shape = RoundedCornerShape(16.dp),
                colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                enabled = formularioCompletoValido && isDateValid
            ) {
                Text(
                    text = "📝 Registrar Paciente",
                    color = Color.White,
                    fontFamily = roboto,
                    fontSize = MaterialTheme.typography.titleMedium.fontSize
                )
            }

            // Mostramos el diálogo según el estado
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
        }
    }

    // ==================== DATEPICKER DIALOG ====================
    if (showDatePicker) {
        // Crear el estado con la fecha inicial si existe
        val datePickerState = rememberDatePickerState(
            initialSelectedDateMillis = selectedDate?.let {
                it.atStartOfDay(java.time.ZoneId.systemDefault()).toInstant().toEpochMilli()
            }
        )

        DatePickerDialog(
            onDismissRequest = { showDatePicker = false },
            confirmButton = {
                TextButton(
                    onClick = {
                        val selectedDateMillis = datePickerState.selectedDateMillis

                        if (selectedDateMillis != null) {
                            val newSelectedDate = java.time.Instant.ofEpochMilli(selectedDateMillis)
                                .atZone(java.time.ZoneId.systemDefault())
                                .toLocalDate()

                            val age = Period.between(newSelectedDate, LocalDate.now()).years

                            if (age >= 18) {
                                // Actualizar la fecha en formato String para el ViewModel
                                loginViewModel.setFechaNacimiento(newSelectedDate.toString())
                                dateError = null
                                showDatePicker = false
                            } else {
                                dateError = "Debes ser mayor de 18 años"
                                showDatePicker = false
                            }
                        } else {
                            dateError = "Selecciona una fecha válida"
                            showDatePicker = false
                        }
                    }
                ) {
                    Text("Aceptar", fontFamily = roboto, color = primaryColor)
                }
            },
            dismissButton = {
                TextButton(
                    onClick = { showDatePicker = false }
                ) {
                    Text("Cancelar", fontFamily = roboto, color = textColor)
                }
            }
        ) {
            DatePicker(
                state = datePickerState
            )
        }
    }

    // ==================== DIÁLOGO DE ÉXITO ====================
    if (showSuccessDialog) {
        AlertDialog(
            onDismissRequest = {
                showSuccessDialog = false
                navController.navigateUp()
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
                    "¡Registro Exitoso!",
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
                        navController.navigateUp()
                    }
                ) {
                    Text("Aceptar", color = primaryColor, fontFamily = roboto)
                }
            },
            shape = RoundedCornerShape(16.dp),
            containerColor = surfaceColor
        )
    }

    // ==================== DIÁLOGO DE ERROR ====================
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
                    text = errorMessage.ifBlank { "Ocurrió un error al registrar el paciente. Por favor, inténtalo de nuevo." },
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