package org.ies.tierno.applicationamani.presentation.ui.screen
import org.ies.tierno.applicationamani.ui.theme.AppTheme

import android.content.res.Configuration
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
import androidx.compose.foundation.shape.CornerSize
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
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDate
import java.time.Period
import java.time.format.DateTimeFormatter

/**
 * Pantalla de registro de un nuevo paciente en la plataforma Amani.
 *
 * Presenta un formulario completo con campos personales (nombre, apellidos,
 * DNI, email, contraseña, teléfono, género, fecha de nacimiento), datos
 * del tutor legal (si el paciente es menor de edad), dirección, selección
 * de situaciones personales y aceptación de términos legales. Incluye
 * validación de campos, selector de fecha con restricción de mayoría de
 * edad y diálogos de confirmación de éxito o error.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param loginViewModel ViewModel que gestiona el estado del registro.
 * @param situacionViewModel ViewModel que gestiona la lista de situaciones.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RegisterScreen(
    navController: NavController,
    loginViewModel: LoginViewModel = koinViewModel(),
    situacionViewModel: SituacionViewModel = koinViewModel()
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    val dateFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy")

    val snackbarHostState = remember { SnackbarHostState() }

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

    val tutorNombre by loginViewModel.tutorNombre.collectAsStateWithLifecycle()
    val tutorTelefono by loginViewModel.tutorTelefono.collectAsStateWithLifecycle()
    val tutorEmail by loginViewModel.tutorEmail.collectAsStateWithLifecycle()
    val tutorDni by loginViewModel.tutorDni.collectAsStateWithLifecycle()
    val tutorTipo by loginViewModel.tutorTipo.collectAsStateWithLifecycle()

    val calle by loginViewModel.calle.collectAsStateWithLifecycle()
    val ciudad by loginViewModel.ciudad.collectAsStateWithLifecycle()
    val provincia by loginViewModel.provincia.collectAsStateWithLifecycle()
    val codigoPostal by loginViewModel.codigoPostal.collectAsStateWithLifecycle()
    val pais by loginViewModel.pais.collectAsStateWithLifecycle()

    val situacionesIds by loginViewModel.situacionesIds.collectAsStateWithLifecycle()

    val listaSituaciones by situacionViewModel.situaciones.collectAsStateWithLifecycle(emptyList())

    var emailTouched by remember { mutableStateOf(false) }
    var passwordTouched by remember { mutableStateOf(false) }
    var telefonoTouched by remember { mutableStateOf(false) }
    var dniTouched by remember { mutableStateOf(false) }
    var tutorEmailTouched by remember { mutableStateOf(false) }
    var tutorTelefonoTouched by remember { mutableStateOf(false) }
    var tutorDniTouched by remember { mutableStateOf(false) }

    var expandedGenero by remember { mutableStateOf(false) }
    var expandedSituacion by remember { mutableStateOf(false) }
    var expandedTipoTutor by remember { mutableStateOf(false) }

    var showDatePicker by remember { mutableStateOf(false) }

    val selectedDate = remember(fechaNacimiento) {
        try {
            if (fechaNacimiento.isNotBlank()) {
                LocalDate.parse(fechaNacimiento)
            } else null
        } catch (e: Exception) {
            null
        }
    }

    var dateError by remember { mutableStateOf<String?>(null) }

    var showSuccessDialog by remember { mutableStateOf(false) }
    var showErrorDialog by remember { mutableStateOf(false) }
    var errorMessage by remember { mutableStateOf("") }

    val listaGeneros = listOf(
        stringResource(R.string.genero_masculino),
        stringResource(R.string.genero_femenino),
        stringResource(R.string.genero_otro),
        stringResource(R.string.genero_prefiero_no_decirlo),
    )
    val listaTiposTutor = listOf(
        stringResource(R.string.parentesco_padre),
        stringResource(R.string.parentesco_madre),
        stringResource(R.string.parentesco_tutor_legal),
        stringResource(R.string.parentesco_abuelo),
        stringResource(R.string.parentesco_otro),
    )
    val errorMayor18Text = stringResource(R.string.error_mayor_18)
    val errorSeleccionaFechaNacimientoText = stringResource(R.string.error_selecciona_fecha_nacimiento)
    val errorSeleccionaFechaValidaText = stringResource(R.string.error_selecciona_fecha_valida)

    val tutorAccentColor = MaterialTheme.colorScheme.tertiary

    Scaffold(
        containerColor = colorScheme.background,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) },
        topBar = {
            Surface(
                modifier = Modifier.fillMaxWidth(),
                color = colorScheme.primary,
                shadowElevation = Elevation.level2,
                shape = shapes.large.copy(
                    topStart = CornerSize(Spacing.none),
                    topEnd = CornerSize(Spacing.none)
                )
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = Spacing.m, vertical = Spacing.sm),
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
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = colorScheme.onPrimary
                        )
                    }

                    Text(
                        text = stringResource(R.string.auto_registrar_paciente),
                        color = colorScheme.onPrimary,
                        style = typography.titleLarge.copy(
                            fontWeight = FontWeight.Bold,
                        ),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.weight(1f, fill = false)
                    )

                    Spacer(modifier = Modifier.width(Dimensions.touchTarget))
                }
            }
        }
    ) { padding ->
        Column(
            modifier = Modifier
                .padding(padding)
                .fillMaxSize()
                .padding(Spacing.m)
                .verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(Spacing.m)
        ) {
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
                shape = shapes.large,
                elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2)
            ) {
                Column(modifier = Modifier.padding(Spacing.m)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.Default.Person, contentDescription = null, tint = colorScheme.primary)
                        Spacer(modifier = Modifier.width(Spacing.s))
                        Text(
                            stringResource(R.string.auto_datos_personales),
                            style = typography.titleLarge,
                            color = colorScheme.primary
                        )
                    }
                    Spacer(modifier = Modifier.height(Spacing.m))

                    OutlinedTextField(
                        value = nombre,
                        onValueChange = { loginViewModel.setNombre(it) },
                        label = { Text(stringResource(R.string.auto_nombre_)) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = shapes.medium,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = colorScheme.onSurface,
                            unfocusedTextColor = colorScheme.onSurface,
                            focusedBorderColor = colorScheme.primary,
                            unfocusedBorderColor = colorScheme.outline,
                            focusedLabelColor = colorScheme.primary,
                            unfocusedLabelColor = colorScheme.onSurfaceVariant,
                            focusedContainerColor = colorScheme.surface,
                            unfocusedContainerColor = colorScheme.surface
                        )
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    OutlinedTextField(
                        value = apellido,
                        onValueChange = { loginViewModel.setApellido(it) },
                        label = { Text(stringResource(R.string.auto_apellido_)) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = shapes.medium,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = colorScheme.onSurface,
                            unfocusedTextColor = colorScheme.onSurface,
                            focusedBorderColor = colorScheme.primary,
                            unfocusedBorderColor = colorScheme.outline,
                            focusedLabelColor = colorScheme.primary,
                            unfocusedLabelColor = colorScheme.onSurfaceVariant,
                            focusedContainerColor = colorScheme.surface,
                            unfocusedContainerColor = colorScheme.surface
                        )
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    OutlinedTextField(
                        value = dni,
                        onValueChange = {
                            loginViewModel.setDni(it.uppercase())
                            dniTouched = true
                        },
                        label = { Text(stringResource(R.string.auto_dni_)) },
                        placeholder = { Text(stringResource(R.string.auto_12345678a), style = typography.bodyMedium) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = shapes.medium,
                        isError = dniTouched && dni.isNotBlank() && !dni.matches(Regex("^[0-9]{8}[A-Za-z]$")),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = colorScheme.onSurface,
                            unfocusedTextColor = colorScheme.onSurface,
                            focusedBorderColor = colorScheme.primary,
                            unfocusedBorderColor = colorScheme.outline,
                            focusedLabelColor = colorScheme.primary,
                            unfocusedLabelColor = colorScheme.onSurfaceVariant,
                            errorBorderColor = colorScheme.error,
                            focusedContainerColor = colorScheme.surface,
                            unfocusedContainerColor = colorScheme.surface
                        ),
                        supportingText = {
                            when {
                                !dniTouched && dni.isBlank() -> {
                                    Text(
                                        stringResource(R.string.auto__introduce_el_dni_1),
                                        style = typography.bodySmall,
                                        color = colorScheme.onSurfaceVariant
                                    )
                                }
                                dniTouched && dni.isNotBlank() && !dni.matches(Regex("^[0-9]{8}[A-Za-z]$")) -> {
                                    Text(
                                        stringResource(R.string.auto__formato_invalido_8),
                                        style = typography.bodySmall,
                                        color = colorScheme.error
                                    )
                                }
                                dniTouched && dni.isNotBlank() && dni.matches(Regex("^[0-9]{8}[A-Za-z]$")) -> {
                                    Text(
                                        stringResource(R.string.auto__dni_valido),
                                        style = typography.bodySmall,
                                        color = colorScheme.primary
                                    )
                                }
                            }
                        }
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    OutlinedTextField(
                        value = email,
                        onValueChange = {
                            loginViewModel.setEmail(it)
                            emailTouched = true
                        },
                        label = { Text(stringResource(R.string.auto_email_)) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = shapes.medium,
                        isError = emailTouched && email.isNotBlank() && !email.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = colorScheme.onSurface,
                            unfocusedTextColor = colorScheme.onSurface,
                            focusedBorderColor = colorScheme.primary,
                            unfocusedBorderColor = colorScheme.outline,
                            focusedLabelColor = colorScheme.primary,
                            unfocusedLabelColor = colorScheme.onSurfaceVariant,
                            errorBorderColor = colorScheme.error,
                            focusedContainerColor = colorScheme.surface,
                            unfocusedContainerColor = colorScheme.surface
                        ),
                        supportingText = {
                            when {
                                !emailTouched && email.isBlank() -> {
                                    Text(
                                        stringResource(R.string.auto__introduce_el_correo),
                                        style = typography.bodySmall,
                                        color = colorScheme.onSurfaceVariant
                                    )
                                }
                                emailTouched && email.isNotBlank() && !email.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                    Text(
                                        stringResource(R.string.auto__formato_de_correo),
                                        style = typography.bodySmall,
                                        color = colorScheme.error
                                    )
                                }
                                emailTouched && email.isNotBlank() && email.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                    Text(
                                        stringResource(R.string.auto__correo_valido),
                                        style = typography.bodySmall,
                                        color = colorScheme.primary
                                    )
                                }
                            }
                        }
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    OutlinedTextField(
                        value = regPassword,
                        onValueChange = {
                            loginViewModel.setRegPassword(it)
                            passwordTouched = true
                        },
                        label = { Text(stringResource(R.string.auto_contrasena_)) },
                        visualTransformation = PasswordVisualTransformation(),
                        modifier = Modifier.fillMaxWidth(),
                        shape = shapes.medium,
                        isError = passwordTouched && regPassword.isNotBlank() && (!loginViewModel.isValidPassword(regPassword) || regPassword.length < 8),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = colorScheme.onSurface,
                            unfocusedTextColor = colorScheme.onSurface,
                            focusedBorderColor = colorScheme.primary,
                            unfocusedBorderColor = colorScheme.outline,
                            focusedLabelColor = colorScheme.primary,
                            unfocusedLabelColor = colorScheme.onSurfaceVariant,
                            errorBorderColor = colorScheme.error,
                            focusedContainerColor = colorScheme.surface,
                            unfocusedContainerColor = colorScheme.surface
                        ),
                        supportingText = {
                            when {
                                !passwordTouched && regPassword.isBlank() -> {
                                    Text(
                                        stringResource(R.string.auto__introduce_una_contrasena),
                                        style = typography.bodySmall,
                                        color = colorScheme.onSurfaceVariant
                                    )
                                }
                                passwordTouched && regPassword.isNotBlank() && regPassword.length < 8 -> {
                                    Text(
                                        stringResource(R.string.auto__la_contrasena_debe_1),
                                        style = typography.bodySmall,
                                        color = colorScheme.error
                                    )
                                }
                                passwordTouched && regPassword.isNotBlank() && !loginViewModel.isValidPassword(regPassword) -> {
                                    Text(
                                        stringResource(R.string.auto__la_contrasena_debe_2),
                                        style = typography.bodySmall,
                                        color = colorScheme.error
                                    )
                                }
                                passwordTouched && regPassword.isNotBlank() && loginViewModel.isValidPassword(regPassword) -> {
                                    Text(
                                        stringResource(R.string.auto__contrasena_valida),
                                        style = typography.bodySmall,
                                        color = colorScheme.primary
                                    )
                                }
                            }
                        }
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    OutlinedTextField(
                        value = telefono,
                        onValueChange = {
                            loginViewModel.setTelefono(it)
                            telefonoTouched = true
                        },
                        label = { Text(stringResource(R.string.auto_telefono_)) },
                        placeholder = { Text(stringResource(R.string.placeholder_telefono), style = typography.bodyMedium) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = shapes.medium,
                        isError = telefonoTouched && telefono.isNotBlank() && !telefono.matches(Regex("^[0-9]{9}$")),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = colorScheme.onSurface,
                            unfocusedTextColor = colorScheme.onSurface,
                            focusedBorderColor = colorScheme.primary,
                            unfocusedBorderColor = colorScheme.outline,
                            focusedLabelColor = colorScheme.primary,
                            unfocusedLabelColor = colorScheme.onSurfaceVariant,
                            errorBorderColor = colorScheme.error,
                            focusedContainerColor = colorScheme.surface,
                            unfocusedContainerColor = colorScheme.surface
                        ),
                        supportingText = {
                            when {
                                !telefonoTouched && telefono.isBlank() -> {
                                    Text(
                                        stringResource(R.string.auto__introduce_el_numero),
                                        style = typography.bodySmall,
                                        color = colorScheme.onSurfaceVariant
                                    )
                                }
                                telefonoTouched && telefono.isNotBlank() && !telefono.matches(Regex("^[0-9]{9}$")) -> {
                                    Text(
                                        stringResource(R.string.auto__debe_tener_9),
                                        style = typography.bodySmall,
                                        color = colorScheme.error
                                    )
                                }
                                telefonoTouched && telefono.isNotBlank() && telefono.matches(Regex("^[0-9]{9}$")) -> {
                                    Text(
                                        stringResource(R.string.auto__telefono_valido),
                                        style = typography.bodySmall,
                                        color = colorScheme.primary
                                    )
                                }
                            }
                        }
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    ExposedDropdownMenuBox(
                        expanded = expandedGenero,
                        onExpandedChange = { expandedGenero = it }
                    ) {
                        OutlinedTextField(
                            value = genero,
                            onValueChange = {},
                            readOnly = true,
                            label = { Text(stringResource(R.string.auto_genero_)) },
                            trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedGenero) },
                            modifier = Modifier
                                .fillMaxWidth()
                                .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable, true),
                            shape = shapes.medium,
                            isError = genero.isBlank(),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colorScheme.onSurface,
                                unfocusedTextColor = colorScheme.onSurface,
                                focusedBorderColor = colorScheme.primary,
                                unfocusedBorderColor = colorScheme.outline,
                                focusedLabelColor = colorScheme.primary,
                                unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                errorBorderColor = colorScheme.error,
                                focusedContainerColor = colorScheme.surface,
                                unfocusedContainerColor = colorScheme.surface
                            )
                        )
                        ExposedDropdownMenu(
                            expanded = expandedGenero,
                            onDismissRequest = { expandedGenero = false },
                            containerColor = colorScheme.surface
                        ) {
                            listaGeneros.forEach { opcion ->
                                DropdownMenuItem(
                                    text = { Text(opcion, color = colorScheme.onSurface) },
                                    onClick = {
                                        loginViewModel.setGenero(opcion)
                                        expandedGenero = false
                                    }
                                )
                            }
                        }
                    }

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    OutlinedTextField(
                        value = selectedDate?.format(dateFormatter) ?: "",
                        onValueChange = {},
                        label = { Text(stringResource(R.string.auto_fecha_de_nacimiento_)) },
                        placeholder = { Text(stringResource(R.string.auto_ddmmaaaa), style = typography.bodyMedium) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable { showDatePicker = true },
                        readOnly = true,
                        shape = shapes.medium,
                        trailingIcon = {
                            IconButton(onClick = { showDatePicker = true }) {
                                Icon(
                                    Icons.Default.CalendarToday,
                                    contentDescription = stringResource(R.string.auto_seleccionar_fecha),
                                    tint = colorScheme.onSurfaceVariant
                                )
                            }
                        },
                        isError = dateError != null,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = colorScheme.onSurface,
                            unfocusedTextColor = colorScheme.onSurface,
                            focusedBorderColor = colorScheme.primary,
                            unfocusedBorderColor = colorScheme.outline,
                            focusedLabelColor = colorScheme.primary,
                            unfocusedLabelColor = colorScheme.onSurfaceVariant,
                            errorBorderColor = colorScheme.error,
                            focusedContainerColor = colorScheme.surface,
                            unfocusedContainerColor = colorScheme.surface
                        ),
                        supportingText = {
                            when {
                                dateError != null -> {
                                    Text(
                                        dateError ?: "",
                                        style = typography.bodySmall,
                                        color = colorScheme.error
                                    )
                                }
                                selectedDate != null -> {
                                    Text(
                                        stringResource(R.string.auto__fecha_valida),
                                        style = typography.bodySmall,
                                        color = colorScheme.primary
                                    )
                                }
                                else -> {
                                    Text(
                                        stringResource(R.string.auto__selecciona_tu_fecha),
                                        style = typography.bodySmall,
                                        color = colorScheme.onSurfaceVariant
                                    )
                                }
                            }
                        }
                    )
                }
            }

            if (esMenor && selectedDate != null) {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = colorScheme.tertiaryContainer
                    ),
                    shape = shapes.large,
                    elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2)
                ) {
                    Column(modifier = Modifier.padding(Spacing.m)) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.People,
                                contentDescription = null,
                                tint = tutorAccentColor
                            )
                            Spacer(modifier = Modifier.width(Spacing.s))
                            Text(
                                stringResource(R.string.auto_datos_del_tutor),
                                style = typography.titleLarge,
                                color = tutorAccentColor
                            )
                        }
                        Text(
                            stringResource(R.string.auto_obligatorio_por_ser_menor),
                            style = typography.bodySmall,
                            color = tutorAccentColor
                        )
                        Spacer(modifier = Modifier.height(Spacing.m))

                        OutlinedTextField(
                            value = tutorNombre,
                            onValueChange = { loginViewModel.setTutorNombre(it) },
                            label = { Text(stringResource(R.string.auto_nombre_completo_)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = shapes.medium,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colorScheme.onSurface,
                                unfocusedTextColor = colorScheme.onSurface,
                                focusedBorderColor = tutorAccentColor,
                                unfocusedBorderColor = colorScheme.outline,
                                focusedLabelColor = tutorAccentColor,
                                unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                focusedContainerColor = colorScheme.tertiaryContainer,
                                unfocusedContainerColor = colorScheme.tertiaryContainer
                            )
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        OutlinedTextField(
                            value = tutorTelefono,
                            onValueChange = {
                                loginViewModel.setTutorTelefono(it)
                                tutorTelefonoTouched = true
                            },
                            label = { Text(stringResource(R.string.auto_telefono_)) },
                            placeholder = { Text(stringResource(R.string.placeholder_telefono), style = typography.bodyMedium) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = shapes.medium,
                            isError = tutorTelefonoTouched && tutorTelefono.isNotBlank() && !tutorTelefono.matches(Regex("^[0-9]{9}$")),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colorScheme.onSurface,
                                unfocusedTextColor = colorScheme.onSurface,
                                focusedBorderColor = tutorAccentColor,
                                unfocusedBorderColor = colorScheme.outline,
                                focusedLabelColor = tutorAccentColor,
                                unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                errorBorderColor = colorScheme.error,
                                focusedContainerColor = colorScheme.tertiaryContainer,
                                unfocusedContainerColor = colorScheme.tertiaryContainer
                            ),
                            supportingText = {
                                when {
                                    !tutorTelefonoTouched && tutorTelefono.isBlank() -> {
                                        Text(
                                            stringResource(R.string.auto__introduce_el_telefono),
                                            style = typography.bodySmall,
                                            color = colorScheme.onSurfaceVariant
                                        )
                                    }
                                    tutorTelefonoTouched && tutorTelefono.isNotBlank() && !tutorTelefono.matches(Regex("^[0-9]{9}$")) -> {
                                        Text(
                                            stringResource(R.string.auto__debe_tener_9),
                                            style = typography.bodySmall,
                                            color = colorScheme.error
                                        )
                                    }
                                    tutorTelefonoTouched && tutorTelefono.isNotBlank() && tutorTelefono.matches(Regex("^[0-9]{9}$")) -> {
                                        Text(
                                            stringResource(R.string.auto__telefono_valido),
                                            style = typography.bodySmall,
                                            color = colorScheme.primary
                                        )
                                    }
                                }
                            }
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        OutlinedTextField(
                            value = tutorEmail,
                            onValueChange = {
                                loginViewModel.setTutorEmail(it)
                                tutorEmailTouched = true
                            },
                            label = { Text(stringResource(R.string.auto_email_)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = shapes.medium,
                            isError = tutorEmailTouched && tutorEmail.isNotBlank() && !tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colorScheme.onSurface,
                                unfocusedTextColor = colorScheme.onSurface,
                                focusedBorderColor = tutorAccentColor,
                                unfocusedBorderColor = colorScheme.outline,
                                focusedLabelColor = tutorAccentColor,
                                unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                errorBorderColor = colorScheme.error,
                                focusedContainerColor = colorScheme.tertiaryContainer,
                                unfocusedContainerColor = colorScheme.tertiaryContainer
                            ),
                            supportingText = {
                                when {
                                    !tutorEmailTouched && tutorEmail.isBlank() -> {
                                        Text(
                                            stringResource(R.string.auto__introduce_el_email),
                                            style = typography.bodySmall,
                                            color = colorScheme.onSurfaceVariant
                                        )
                                    }
                                    tutorEmailTouched && tutorEmail.isNotBlank() && !tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                        Text(
                                            stringResource(R.string.auto__formato_de_email),
                                            style = typography.bodySmall,
                                            color = colorScheme.error
                                        )
                                    }
                                    tutorEmailTouched && tutorEmail.isNotBlank() && tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                        Text(
                                            stringResource(R.string.auto__email_valido),
                                            style = typography.bodySmall,
                                            color = colorScheme.primary
                                        )
                                    }
                                }
                            }
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        OutlinedTextField(
                            value = tutorDni,
                            onValueChange = {
                                loginViewModel.setTutorDni(it.uppercase())
                                tutorDniTouched = true
                            },
                            label = { Text(stringResource(R.string.auto_dni_)) },
                            placeholder = { Text(stringResource(R.string.auto_12345678a), style = typography.bodyMedium) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = shapes.medium,
                            isError = tutorDniTouched && tutorDni.isNotBlank() && !tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$")),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colorScheme.onSurface,
                                unfocusedTextColor = colorScheme.onSurface,
                                focusedBorderColor = tutorAccentColor,
                                unfocusedBorderColor = colorScheme.outline,
                                focusedLabelColor = tutorAccentColor,
                                unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                errorBorderColor = colorScheme.error,
                                focusedContainerColor = colorScheme.tertiaryContainer,
                                unfocusedContainerColor = colorScheme.tertiaryContainer
                            ),
                            supportingText = {
                                when {
                                    !tutorDniTouched && tutorDni.isBlank() -> {
                                        Text(
                                            stringResource(R.string.auto__introduce_el_dni),
                                            style = typography.bodySmall,
                                            color = colorScheme.onSurfaceVariant
                                        )
                                    }
                                    tutorDniTouched && tutorDni.isNotBlank() && !tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$")) -> {
                                        Text(
                                            stringResource(R.string.auto__formato_invalido_8),
                                            style = typography.bodySmall,
                                            color = colorScheme.error
                                        )
                                    }
                                    tutorDniTouched && tutorDni.isNotBlank() && tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$")) -> {
                                        Text(
                                            stringResource(R.string.auto__dni_valido),
                                            style = typography.bodySmall,
                                            color = colorScheme.primary
                                        )
                                    }
                                }
                            }
                        )

                        Spacer(modifier = Modifier.height(Spacing.sm))

                        ExposedDropdownMenuBox(
                            expanded = expandedTipoTutor,
                            onExpandedChange = { expandedTipoTutor = it }
                        ) {
                            OutlinedTextField(
                                value = tutorTipo,
                                onValueChange = {},
                                readOnly = true,
                                label = { Text(stringResource(R.string.auto_parentesco_)) },
                                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedTipoTutor) },
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable, true),
                                shape = shapes.medium,
                                isError = tutorTipo.isBlank(),
                                colors = OutlinedTextFieldDefaults.colors(
                                    focusedTextColor = colorScheme.onSurface,
                                    unfocusedTextColor = colorScheme.onSurface,
                                    focusedBorderColor = tutorAccentColor,
                                    unfocusedBorderColor = colorScheme.outline,
                                    focusedLabelColor = tutorAccentColor,
                                    unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                    errorBorderColor = colorScheme.error,
                                    focusedContainerColor = colorScheme.tertiaryContainer,
                                    unfocusedContainerColor = colorScheme.tertiaryContainer
                                )
                            )
                            ExposedDropdownMenu(
                                expanded = expandedTipoTutor,
                                onDismissRequest = { expandedTipoTutor = false },
                                containerColor = colorScheme.surface
                            ) {
                                listaTiposTutor.forEach { tipo ->
                                    DropdownMenuItem(
                                        text = { Text(tipo, color = colorScheme.onSurface) },
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

            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
                shape = shapes.large,
                elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2)
            ) {
                Column(modifier = Modifier.padding(Spacing.m)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.LocationOn,
                            contentDescription = null,
                            tint = colorScheme.primary
                        )
                        Spacer(modifier = Modifier.width(Spacing.s))
                        Text(
                            stringResource(R.string.auto_direccion),
                            style = typography.titleLarge,
                            color = colorScheme.primary
                        )
                    }
                    Spacer(modifier = Modifier.height(Spacing.m))

                    OutlinedTextField(
                        value = calle,
                        onValueChange = { loginViewModel.setCalle(it) },
                        label = { Text(stringResource(R.string.auto_calle_y_numero_)) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = shapes.medium,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = colorScheme.onSurface,
                            unfocusedTextColor = colorScheme.onSurface,
                            focusedBorderColor = colorScheme.primary,
                            unfocusedBorderColor = colorScheme.outline,
                            focusedLabelColor = colorScheme.primary,
                            unfocusedLabelColor = colorScheme.onSurfaceVariant,
                            focusedContainerColor = colorScheme.surface,
                            unfocusedContainerColor = colorScheme.surface
                        )
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(Spacing.sm)
                    ) {
                        OutlinedTextField(
                            value = ciudad,
                            onValueChange = { loginViewModel.setCiudad(it) },
                            label = { Text(stringResource(R.string.auto_ciudad)) },
                            modifier = Modifier.weight(1f),
                            shape = shapes.medium,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colorScheme.onSurface,
                                unfocusedTextColor = colorScheme.onSurface,
                                focusedBorderColor = colorScheme.primary,
                                unfocusedBorderColor = colorScheme.outline,
                                focusedLabelColor = colorScheme.primary,
                                unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                focusedContainerColor = colorScheme.surface,
                                unfocusedContainerColor = colorScheme.surface
                            )
                        )
                        OutlinedTextField(
                            value = provincia,
                            onValueChange = { loginViewModel.setProvincia(it) },
                            label = { Text(stringResource(R.string.auto_provincia)) },
                            modifier = Modifier.weight(1f),
                            shape = shapes.medium,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colorScheme.onSurface,
                                unfocusedTextColor = colorScheme.onSurface,
                                focusedBorderColor = colorScheme.primary,
                                unfocusedBorderColor = colorScheme.outline,
                                focusedLabelColor = colorScheme.primary,
                                unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                focusedContainerColor = colorScheme.surface,
                                unfocusedContainerColor = colorScheme.surface
                            )
                        )
                    }

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(Spacing.sm)
                    ) {
                        OutlinedTextField(
                            value = codigoPostal,
                            onValueChange = { loginViewModel.setCodigoPostal(it) },
                            label = { Text(stringResource(R.string.auto_codigo_postal)) },
                            modifier = Modifier.weight(1f),
                            shape = shapes.medium,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colorScheme.onSurface,
                                unfocusedTextColor = colorScheme.onSurface,
                                focusedBorderColor = colorScheme.primary,
                                unfocusedBorderColor = colorScheme.outline,
                                focusedLabelColor = colorScheme.primary,
                                unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                focusedContainerColor = colorScheme.surface,
                                unfocusedContainerColor = colorScheme.surface
                            )
                        )
                        OutlinedTextField(
                            value = pais,
                            onValueChange = { loginViewModel.setPais(it) },
                            label = { Text(stringResource(R.string.auto_pais)) },
                            modifier = Modifier.weight(1f),
                            shape = shapes.medium,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colorScheme.onSurface,
                                unfocusedTextColor = colorScheme.onSurface,
                                focusedBorderColor = colorScheme.primary,
                                unfocusedBorderColor = colorScheme.outline,
                                focusedLabelColor = colorScheme.primary,
                                unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                focusedContainerColor = colorScheme.surface,
                                unfocusedContainerColor = colorScheme.surface
                            )
                        )
                    }
                }
            }

            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
                shape = shapes.large,
                elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2)
            ) {
                Column(modifier = Modifier.padding(Spacing.m)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.AutoMirrored.Filled.List, contentDescription = null, tint = colorScheme.primary)
                        Spacer(modifier = Modifier.width(Spacing.s))
                        Text(
                            stringResource(R.string.auto_situaciones_1),
                            style = typography.titleLarge,
                            color = colorScheme.primary
                        )
                    }
                    Text(
                        stringResource(R.string.auto_seleccione_una_o_mas),
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant
                    )
                    Spacer(modifier = Modifier.height(Spacing.m))

                    Box {
                        OutlinedTextField(
                            value = if (situacionesIds.isEmpty())
                                stringResource(R.string.seleccione_situaciones)
                            else stringResource(R.string.situaciones_seleccionadas_count, situacionesIds.size),
                            onValueChange = {},
                            readOnly = true,
                            trailingIcon = {
                                IconButton(onClick = { expandedSituacion = !expandedSituacion }) {
                                    Icon(
                                        if (expandedSituacion) Icons.Default.ArrowDropUp else Icons.Default.ArrowDropDown,
                                        contentDescription = null,
                                        tint = colorScheme.onSurfaceVariant
                                    )
                                }
                            },
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { expandedSituacion = !expandedSituacion },
                            shape = shapes.medium,
                            isError = situacionesIds.isEmpty(),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colorScheme.onSurface,
                                unfocusedTextColor = colorScheme.onSurface,
                                focusedBorderColor = colorScheme.primary,
                                unfocusedBorderColor = colorScheme.outline,
                                focusedLabelColor = colorScheme.primary,
                                unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                errorBorderColor = colorScheme.error,
                                focusedContainerColor = colorScheme.surface,
                                unfocusedContainerColor = colorScheme.surface
                            )
                        )

                        DropdownMenu(
                            expanded = expandedSituacion,
                            onDismissRequest = { expandedSituacion = false },
                            modifier = Modifier
                                .fillMaxWidth(0.9f)
                                .heightIn(max = Dimensions.dropdownMaxHeight),
                            containerColor = colorScheme.surface
                        ) {
                            if (listaSituaciones.isEmpty()) {
                                DropdownMenuItem(
                                    text = {
                                        Text(
                                            stringResource(R.string.auto_no_hay_situaciones_disponibles),
                                            color = colorScheme.onSurface
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
                                                    modifier = Modifier.size(Dimensions.iconDefault),
                                                    colors = CheckboxDefaults.colors(checkedColor = colorScheme.primary)
                                                )
                                                Spacer(modifier = Modifier.width(Spacing.sm))
                                                Text(
                                                    situacion.nombre,
                                                    color = colorScheme.onSurface,
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

            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
                shape = shapes.large,
                elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2)
            ) {
                Column(modifier = Modifier.padding(Spacing.m)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.DocumentScanner,
                            contentDescription = null,
                            tint = colorScheme.primary
                        )
                        Spacer(modifier = Modifier.width(Spacing.s))
                        Text(
                            stringResource(R.string.auto_consentimientos),
                            style = typography.titleLarge,
                            color = colorScheme.primary
                        )
                    }
                    Spacer(modifier = Modifier.height(Spacing.m))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Checkbox(
                            checked = aceptaTerminos,
                            onCheckedChange = { loginViewModel.aceptaTerminos.value = it },
                            colors = CheckboxDefaults.colors(checkedColor = colorScheme.primary)
                        )
                        Text(
                            stringResource(R.string.auto_acepto_los_terminos_y),
                            style = typography.bodyMedium,
                            color = colorScheme.onSurface,
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
                            colors = CheckboxDefaults.colors(checkedColor = colorScheme.primary)
                        )
                        Text(
                            stringResource(R.string.auto_acepto_videoconferencia),
                            style = typography.bodyMedium,
                            color = colorScheme.onSurface,
                            modifier = Modifier.clickable {
                                loginViewModel.aceptaVideoconferencia.value = !aceptaVideoconferencia
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
                            colors = CheckboxDefaults.colors(checkedColor = colorScheme.primary)
                        )
                        Text(
                            stringResource(R.string.auto_acepto_comunicaciones),
                            style = typography.bodyMedium,
                            color = colorScheme.onSurface,
                            modifier = Modifier.clickable {
                                loginViewModel.aceptaComunicacion.value = !aceptaComunicacion
                            }
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(Spacing.s))

            val registerSuccess by loginViewModel.registerSuccess.collectAsStateWithLifecycle()
            val registerError by loginViewModel.registerError.collectAsStateWithLifecycle()

            val isDateValid = selectedDate != null && dateError == null

            Button(
                onClick = {
                    if (selectedDate != null) {
                        val age = Period.between(selectedDate, LocalDate.now()).years
                        if (age >= 18) {
                            loginViewModel.setFechaNacimiento(selectedDate.toString())
                            loginViewModel.registrarPaciente()
                        } else {
                            dateError = errorMayor18Text
                        }
                    } else {
                        dateError = errorSeleccionaFechaNacimientoText
                    }
                },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(Dimensions.buttonHeightLarge),
                shape = shapes.medium,
                colors = ButtonDefaults.buttonColors(
                    containerColor = colorScheme.primary,
                    contentColor = colorScheme.onPrimary,
                ),
                elevation = ButtonDefaults.buttonElevation(defaultElevation = Elevation.level2),
                enabled = formularioCompletoValido && isDateValid
            ) {
                Text(
                    text = stringResource(R.string.auto__registrar_paciente),
                    style = typography.titleMedium.copy(fontWeight = FontWeight.SemiBold)
                )
            }

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

    if (showDatePicker) {
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
                                loginViewModel.setFechaNacimiento(newSelectedDate.toString())
                                dateError = null
                                showDatePicker = false
                            } else {
                                dateError = errorMayor18Text
                                showDatePicker = false
                            }
                        } else {
                            dateError = errorSeleccionaFechaValidaText
                            showDatePicker = false
                        }
                    }
                ) {
                    Text(stringResource(R.string.auto_aceptar))
                }
            },
            dismissButton = {
                TextButton(onClick = { showDatePicker = false }) {
                    Text(stringResource(R.string.auto_cancelar))
                }
            }
        ) {
            DatePicker(state = datePickerState)
        }
    }

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
                    tint = colorScheme.primary,
                    modifier = Modifier.size(Dimensions.iconExtraLarge)
                )
            },
            title = {
                Text(
                    stringResource(R.string.auto_registro_exitoso),
                    style = typography.titleLarge.copy(fontWeight = FontWeight.Bold),
                    color = colorScheme.onSurface
                )
            },
            text = {
                Text(
                    stringResource(R.string.auto_el_paciente_ha_sido),
                    style = typography.bodyMedium,
                    color = colorScheme.onSurfaceVariant
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        showSuccessDialog = false
                        navController.navigateUp()
                    }
                ) {
                    Text(stringResource(R.string.auto_aceptar))
                }
            },
            shape = shapes.extraLarge,
            containerColor = colorScheme.surface
        )
    }

    if (showErrorDialog) {
        val defaultErrorText = stringResource(R.string.error_registro_generico)
        AlertDialog(
            onDismissRequest = { showErrorDialog = false },
            icon = {
                Icon(
                    Icons.Default.Error,
                    contentDescription = null,
                    tint = colorScheme.error,
                    modifier = Modifier.size(Dimensions.iconExtraLarge)
                )
            },
            title = {
                Text(
                    stringResource(R.string.auto_error_en_el_registro),
                    style = typography.titleLarge.copy(fontWeight = FontWeight.Bold),
                    color = colorScheme.onSurface
                )
            },
            text = {
                Text(
                    text = errorMessage.ifBlank { defaultErrorText },
                    style = typography.bodyMedium,
                    color = colorScheme.onSurfaceVariant
                )
            },
            confirmButton = {
                TextButton(onClick = { showErrorDialog = false }) {
                    Text(stringResource(R.string.auto_aceptar))
                }
            },
            shape = shapes.extraLarge,
            containerColor = colorScheme.surface
        )
    }
}

@Preview(showBackground = true, name = "RegisterScreen - Light")
@Preview(showBackground = true, uiMode = Configuration.UI_MODE_NIGHT_YES, name = "RegisterScreen - Dark")
@Preview(showBackground = true, fontScale = 1.5f, name = "RegisterScreen - FontScale 1.5x")
@Composable
private fun RegisterScreenPreview() {
    AppTheme {
        Surface(color = MaterialTheme.colorScheme.background) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(Spacing.m),
                verticalArrangement = Arrangement.spacedBy(Spacing.m),
            ) {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
                    shape = MaterialTheme.shapes.large,
                ) {
                    Column(modifier = Modifier.padding(Spacing.m)) {
                        Text(
                            text = stringResource(R.string.auto_datos_personales),
                            style = MaterialTheme.typography.titleLarge,
                            color = MaterialTheme.colorScheme.primary,
                        )
                        Spacer(modifier = Modifier.height(Spacing.s))
                        OutlinedTextField(
                            value = "María",
                            onValueChange = {},
                            label = { Text(stringResource(R.string.auto_nombre_)) },
                            modifier = Modifier.fillMaxWidth(),
                        )
                    }
                }
            }
        }
    }
}
