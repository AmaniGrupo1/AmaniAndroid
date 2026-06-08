package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.List
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.material3.ExposedDropdownMenuAnchorType
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight.Companion.Bold
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import java.time.LocalDate
import java.time.Period
import java.time.format.DateTimeFormatter
import androidx.compose.material3.MaterialTheme

// Colores para validaciones
private val SuccessColor = Color(0xFF81C784)
private val ErrorColor = Color(0xFFE57373)

/**
 * Pantalla de registro de un nuevo paciente desde la vista del psicólogo.
 *
 * Presenta un formulario completo con campos personales, datos del tutor
 * legal (si el paciente es menor de edad), dirección, selección de
 * situaciones y aceptación de términos. Similar a [RegisterScreen] pero
 * adaptada al flujo del psicólogo que registra pacientes manualmente.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param loginViewModel ViewModel que gestiona el estado del registro.
 * @param situacionViewModel ViewModel que gestiona la lista de situaciones.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RegistrarPacientePsicologoScreen(
    navController: NavController,
    loginViewModel: LoginViewModel,
    situacionViewModel: SituacionViewModel
) {
    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Colores dinámicos según el tema Amani
    val colorScheme = MaterialTheme.colorScheme
    val primaryColor = colorScheme.primary
    val backgroundColor = screenColors.background
    val surfaceColor = cardColors.cardBackground
    val textColor = cardColors.cardContent
    val textFieldBorderColor = colorScheme.outline
    val tutorCardColor = colorScheme.tertiaryContainer
    val tutorHighlightColor = colorScheme.tertiary

    val snackbarHostState = remember { SnackbarHostState() }
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
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

    // Estados para UI local
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

    // Estado para los diálogos
    var showSuccessDialog by remember { mutableStateOf(false) }
    var showErrorDialog by remember { mutableStateOf(false) }
    var errorMessage by remember { mutableStateOf("") }

    // Estados para campos tocados (validaciones)
    var emailTouched by remember { mutableStateOf(false) }
    var passwordTouched by remember { mutableStateOf(false) }
    var telefonoTouched by remember { mutableStateOf(false) }
    var dniTouched by remember { mutableStateOf(false) }
    var tutorEmailTouched by remember { mutableStateOf(false) }
    var tutorTelefonoTouched by remember { mutableStateOf(false) }
    var tutorDniTouched by remember { mutableStateOf(false) }

    val listaGeneros = listOf("MASCULINO", "FEMENINO", "OTRO", "PREFIERO_NO_DECIR")
    val listaTiposTutor = listOf("PADRE", "MADRE", "TUTOR LEGAL", "ABUELO", "OTRO")

    Scaffold(
        containerColor = backgroundColor,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) },
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        stringResource(R.string.registrar_paciente),
                        fontFamily = roboto
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
                            contentDescription = stringResource(R.string.volver)
                        )
                    }
                }
            )
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
                            stringResource(R.string.datos_personales_titulo),
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
                        label = { Text(stringResource(R.string.nombre), fontFamily = roboto, color = textColor) },
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
                        label = { Text(stringResource(R.string.apellido), fontFamily = roboto, color = textColor) },
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

                    // DNI
                    OutlinedTextField(
                        value = dni,
                        onValueChange = {
                            loginViewModel.setDni(it.uppercase())
                            dniTouched = true
                        },
                        label = { Text(stringResource(R.string.dni_label), fontFamily = roboto, color = textColor) },
                        placeholder = { Text(stringResource(R.string.placeholder_dni), fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
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
                                    Text(stringResource(R.string.auto__introduce_el_dni_1),
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = textColor.copy(alpha = 0.6f)
                                    )
                                }
                                dniTouched && dni.isNotBlank() && !dni.matches(Regex("^[0-9]{8}[A-Za-z]$")) -> {
                                    Text(stringResource(R.string.auto__formato_invalido_8),
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = ErrorColor
                                    )
                                }
                                dniTouched && dni.isNotBlank() && dni.matches(Regex("^[0-9]{8}[A-Za-z]$")) -> {
                                    Text(stringResource(R.string.auto__dni_valido),
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = SuccessColor
                                    )
                                }
                            }
                        }
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    // Email
                    OutlinedTextField(
                        value = email,
                        onValueChange = {
                            loginViewModel.setEmail(it)
                            emailTouched = true
                        },
                        label = { Text(stringResource(R.string.email_label), fontFamily = roboto, color = textColor) },
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
                                    Text(stringResource(R.string.auto__introduce_el_correo),
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = textColor.copy(alpha = 0.6f)
                                    )
                                }
                                emailTouched && email.isNotBlank() && !email.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                    Text(stringResource(R.string.auto__formato_de_correo_1),
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = ErrorColor
                                    )
                                }
                                emailTouched && email.isNotBlank() && email.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                    Text(stringResource(R.string.auto__correo_valido),
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = SuccessColor
                                    )
                                }
                            }
                        }
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    // Contraseña
                    OutlinedTextField(
                        value = regPassword,
                        onValueChange = {
                            loginViewModel.setRegPassword(it)
                            passwordTouched = true
                        },
                        label = { Text(stringResource(R.string.contrasena), fontFamily = roboto, color = textColor) },
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
                                    Text(stringResource(R.string.auto__introduce_una_contrasena),
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = textColor.copy(alpha = 0.6f)
                                    )
                                }
                                passwordTouched && regPassword.isNotBlank() && regPassword.length < 8 -> {
                                    Text(stringResource(R.string.auto__la_contrasena_debe_1),
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = ErrorColor
                                    )
                                }
                                passwordTouched && regPassword.isNotBlank() && !loginViewModel.isValidPassword(regPassword) -> {
                                    Text(stringResource(R.string.auto__la_contrasena_debe),
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = ErrorColor
                                    )
                                }
                                passwordTouched && regPassword.isNotBlank() && loginViewModel.isValidPassword(regPassword) -> {
                                    Text(stringResource(R.string.auto__contrasena_valida),
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = SuccessColor
                                    )
                                }
                            }
                        }
                    )

                    Spacer(modifier = Modifier.height(12.dp))

                    // Teléfono
                    OutlinedTextField(
                        value = telefono,
                        onValueChange = {
                            loginViewModel.setTelefono(it)
                            telefonoTouched = true
                        },
                        label = { Text(stringResource(R.string.telefono_label), fontFamily = roboto, color = textColor) },
                        placeholder = { Text(stringResource(R.string.placeholder_telefono), fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
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
                                    Text(stringResource(R.string.auto__introduce_el_numero),
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = textColor.copy(alpha = 0.6f)
                                    )
                                }
                                telefonoTouched && telefono.isNotBlank() && !telefono.matches(Regex("^[0-9]{9}$")) -> {
                                    Text(stringResource(R.string.auto__el_telefono_debe),
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = ErrorColor
                                    )
                                }
                                telefonoTouched && telefono.isNotBlank() && telefono.matches(Regex("^[0-9]{9}$")) -> {
                                    Text(stringResource(R.string.auto__telefono_valido),
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
                            label = { Text(stringResource(R.string.genero_label), fontFamily = roboto, color = textColor) },
                            trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedGenero) },
                            modifier = Modifier
                                .fillMaxWidth()
                                .menuAnchor(type = ExposedDropdownMenuAnchorType.PrimaryNotEditable, enabled = true),
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
                        ExposedDropdownMenu(
                            expanded = expandedGenero,
                            onDismissRequest = { expandedGenero = false }
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
                        label = { Text(stringResource(R.string.fecha_nacimiento_label), fontFamily = roboto, color = textColor) },
                        placeholder = { Text(stringResource(R.string.auto_ddmmaaaa), fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable { showDatePicker = true },
                        readOnly = true,
                        shape = textFieldShape,
                        trailingIcon = {
                            IconButton(onClick = { showDatePicker = true }) {
                                Icon(
                                    Icons.Default.CalendarToday,
                                    contentDescription = stringResource(R.string.auto_seleccionar_fecha),
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
                                    Text(stringResource(R.string.auto__fecha_valida),
                                        fontSize = 11.sp,
                                        fontFamily = roboto,
                                        color = SuccessColor
                                    )
                                }
                                else -> {
                                    Text(stringResource(R.string.auto__selecciona_tu_fecha),
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
                                tint = tutorHighlightColor
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                stringResource(R.string.datos_tutor),
                                style = MaterialTheme.typography.titleLarge,
                                color = tutorHighlightColor,
                                fontFamily = roboto
                            )
                        }
                        Text(
                            stringResource(R.string.obligatorio_menor),
                            style = MaterialTheme.typography.bodySmall,
                            color = tutorHighlightColor,
                            fontFamily = roboto
                        )
                        Spacer(modifier = Modifier.height(16.dp))

                        // Nombre del tutor
                        OutlinedTextField(
                            value = tutorNombre,
                            onValueChange = { loginViewModel.setTutorNombre(it) },
                            label = { Text(stringResource(R.string.nombre_completo_tutor), fontFamily = roboto, color = textColor) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = tutorHighlightColor,
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = tutorHighlightColor,
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
                            label = { Text(stringResource(R.string.telefono_tutor), fontFamily = roboto, color = textColor) },
                            placeholder = { Text(stringResource(R.string.placeholder_telefono), fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = tutorTelefonoTouched && tutorTelefono.isNotBlank() && !tutorTelefono.matches(Regex("^[0-9]{9}$")),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = if (tutorTelefonoTouched && tutorTelefono.isNotBlank() && !tutorTelefono.matches(Regex("^[0-9]{9}$"))) ErrorColor else tutorHighlightColor,
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = tutorHighlightColor,
                                unfocusedLabelColor = textColor
                            ),
                            supportingText = {
                                when {
                                    !tutorTelefonoTouched && tutorTelefono.isBlank() -> {
                                        Text(stringResource(R.string.auto__introduce_el_telefono),
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = textColor.copy(alpha = 0.6f)
                                        )
                                    }
                                    tutorTelefonoTouched && tutorTelefono.isNotBlank() && !tutorTelefono.matches(Regex("^[0-9]{9}$")) -> {
                                        Text(stringResource(R.string.auto__el_telefono_debe),
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = ErrorColor
                                        )
                                    }
                                    tutorTelefonoTouched && tutorTelefono.isNotBlank() && tutorTelefono.matches(Regex("^[0-9]{9}$")) -> {
                                        Text(stringResource(R.string.auto__telefono_valido),
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
                            label = { Text(stringResource(R.string.email_tutor), fontFamily = roboto, color = textColor) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = tutorEmailTouched && tutorEmail.isNotBlank() && !tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = if (tutorEmailTouched && tutorEmail.isNotBlank() && !tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$"))) ErrorColor else tutorHighlightColor,
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = tutorHighlightColor,
                                unfocusedLabelColor = textColor
                            ),
                            supportingText = {
                                when {
                                    !tutorEmailTouched && tutorEmail.isBlank() -> {
                                        Text(stringResource(R.string.auto__introduce_el_email),
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = textColor.copy(alpha = 0.6f)
                                        )
                                    }
                                    tutorEmailTouched && tutorEmail.isNotBlank() && !tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                        Text(stringResource(R.string.auto__formato_de_email),
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = ErrorColor
                                        )
                                    }
                                    tutorEmailTouched && tutorEmail.isNotBlank() && tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                        Text(stringResource(R.string.auto__email_valido),
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
                            label = { Text(stringResource(R.string.dni_tutor), fontFamily = roboto, color = textColor) },
                            placeholder = { Text(stringResource(R.string.placeholder_dni), fontFamily = roboto, color = textColor.copy(alpha = 0.5f)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = tutorDniTouched && tutorDni.isNotBlank() && !tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$")),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = textColor,
                                unfocusedTextColor = textColor,
                                focusedBorderColor = if (tutorDniTouched && tutorDni.isNotBlank() && !tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$"))) ErrorColor else tutorHighlightColor,
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = tutorHighlightColor,
                                unfocusedLabelColor = textColor
                            ),
                            supportingText = {
                                when {
                                    !tutorDniTouched && tutorDni.isBlank() -> {
                                        Text(stringResource(R.string.auto__introduce_el_dni),
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = textColor.copy(alpha = 0.6f)
                                        )
                                    }
                                    tutorDniTouched && tutorDni.isNotBlank() && !tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$")) -> {
                                        Text(stringResource(R.string.auto__formato_invalido_8),
                                            fontSize = 11.sp,
                                            fontFamily = roboto,
                                            color = ErrorColor
                                        )
                                    }
                                    tutorDniTouched && tutorDni.isNotBlank() && tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$")) -> {
                                        Text(stringResource(R.string.auto__dni_valido),
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
                                label = { Text(stringResource(R.string.parentesco_label), fontFamily = roboto, color = textColor) },
                                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedTipoTutor) },
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .menuAnchor(type = ExposedDropdownMenuAnchorType.PrimaryNotEditable, enabled = true),
                                shape = textFieldShape,
                                colors = OutlinedTextFieldDefaults.colors(
                                    focusedTextColor = textColor,
                                    unfocusedTextColor = textColor,
                                    focusedBorderColor = tutorHighlightColor,
                                    unfocusedBorderColor = textFieldBorderColor,
                                    focusedLabelColor = tutorHighlightColor,
                                    unfocusedLabelColor = textColor
                                )
                            )
                            ExposedDropdownMenu(
                                expanded = expandedTipoTutor,
                                onDismissRequest = { expandedTipoTutor = false }
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
                            stringResource(R.string.direccion_titulo),
                            style = MaterialTheme.typography.titleLarge,
                            color = primaryColor,
                            fontFamily = roboto
                        )
                    }
                    Spacer(modifier = Modifier.height(16.dp))

                    OutlinedTextField(
                        value = calle,
                        onValueChange = { loginViewModel.setCalle(it) },
                        label = { Text(stringResource(R.string.calle_numero), fontFamily = roboto, color = textColor) },
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
                            label = { Text(stringResource(R.string.ciudad_label), fontFamily = roboto, color = textColor) },
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
                            label = { Text(stringResource(R.string.provincia_label), fontFamily = roboto, color = textColor) },
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
                            label = { Text(stringResource(R.string.codigo_postal_label), fontFamily = roboto, color = textColor) },
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
                            label = { Text(stringResource(R.string.pais_label), fontFamily = roboto, color = textColor) },
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
                        Icon(Icons.AutoMirrored.Filled.List, contentDescription = null, tint = primaryColor)
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            stringResource(R.string.situaciones_titulo),
                            style = MaterialTheme.typography.titleLarge,
                            color = primaryColor,
                            fontFamily = roboto
                        )
                    }
                    Text(
                        stringResource(R.string.seleccione_situaciones),
                        style = MaterialTheme.typography.bodySmall,
                        fontFamily = roboto,
                        color = textColor.copy(alpha = 0.7f)
                    )
                    Spacer(modifier = Modifier.height(16.dp))

                    Box {
                        OutlinedTextField(
                            value = if (situacionesIds.isEmpty())
                                stringResource(R.string.seleccione_situaciones_texto)
                            else "${situacionesIds.size} ${stringResource(R.string.situaciones_seleccionadas)}",
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
                                            stringResource(R.string.no_hay_situaciones),
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
                            stringResource(R.string.consentimientos_titulo),
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
                            stringResource(R.string.acepto_terminos),
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
                            stringResource(R.string.acepto_videoconferencia),
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
                            stringResource(R.string.acepto_comunicaciones),
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
            val registerSuccess by loginViewModel.crearPacienteDesdePsicologoSuccess.collectAsStateWithLifecycle()
            val registerError by loginViewModel.crearPacienteDesdePsicologoError.collectAsStateWithLifecycle()

            // Validar que la fecha sea válida y mayor de edad
            val isDateValid = selectedDate != null && dateError == null

            Button(
                onClick = {
                    if (selectedDate != null) {
                        val age = Period.between(selectedDate, LocalDate.now()).years
                        if (age >= 18) {
                            loginViewModel.setFechaNacimiento(selectedDate.toString())
                            loginViewModel.registrarPacienteDesdePsicologo()
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
                shape = androidx.compose.foundation.shape.CircleShape,
                colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                enabled = formularioCompletoValido && isDateValid
            ) {
                Text(
                    text = stringResource(R.string.boton_registrar_paciente),
                    color = colorScheme.onPrimary,
                    fontFamily = roboto,
                    style = MaterialTheme.typography.titleMedium
                )
            }

            // Mostramos el diálogo según el estado
            LaunchedEffect(registerSuccess, registerError) {
                if (registerSuccess) {
                    showSuccessDialog = true
                    loginViewModel.resetCrearPacienteDesdePsicologoState()
                } else if (!registerError.isNullOrBlank()) {
                    errorMessage = registerError!!
                    showErrorDialog = true
                    loginViewModel.resetCrearPacienteDesdePsicologoState()
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
                    Text(stringResource(R.string.auto_aceptar), fontFamily = roboto, color = primaryColor)
                }
            },
            dismissButton = {
                TextButton(
                    onClick = { showDatePicker = false }
                ) {
                    Text(stringResource(R.string.auto_cancelar), fontFamily = roboto, color = textColor)
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
                    stringResource(R.string.registro_exitoso),
                    fontFamily = roboto,
                    fontWeight = Bold,
                    color = textColor
                )
            },
            text = {
                Text(
                    stringResource(R.string.paciente_registrado_correctamente),
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
                    Text(stringResource(R.string.aceptar), color = primaryColor, fontFamily = roboto)
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
                    stringResource(R.string.error_registro),
                    fontFamily = roboto,
                    fontWeight = Bold,
                    color = textColor
                )
            },
            text = {
                Text(
                    text = errorMessage.ifBlank { stringResource(R.string.error_registro_mensaje) },
                    fontFamily = roboto,
                    color = textColor.copy(alpha = 0.8f)
                )
            },
            confirmButton = {
                TextButton(
                    onClick = { showErrorDialog = false }
                ) {
                    Text(stringResource(R.string.aceptar), color = primaryColor, fontFamily = roboto)
                }
            },
            shape = RoundedCornerShape(16.dp),
            containerColor = surfaceColor
        )
    }
}