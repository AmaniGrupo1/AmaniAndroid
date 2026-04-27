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
import androidx.compose.material3.MenuAnchorType
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight.Companion.Bold
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel
import org.koin.androidx.compose.koinViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RegistrarPacientePsicologoScreen(
    navController: NavController,
    loginViewModel: LoginViewModel,
    situacionViewModel: SituacionViewModel
) {
    val primaryColor = Color(0xFF6C63FF)
    val backgroundColor = Color(0xFFCCC0E4)
    val snackbarHostState = remember { SnackbarHostState() }
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

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

    // Estado para el diálogo de alerta
    var showSuccessDialog by remember { mutableStateOf(false) }
    var showErrorDialog by remember { mutableStateOf(false) }
    var errorMessage by remember { mutableStateOf("") }

    val listaGeneros = listOf("MASCULINO", "FEMENINO", "OTRO", "PREFIERO_NO_DECIR")
    val listaTiposTutor = listOf("PADRE", "MADRE", "TUTOR LEGAL", "ABUELO", "OTRO")

    Scaffold(
        containerColor = backgroundColor,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) },
        topBar = {
            TopAppBar(
                title = { Text("Registrar Paciente", color = Color.White) },
                colors = TopAppBarDefaults.topAppBarColors(containerColor = primaryColor),
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = Color.White
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
                            fontFamily = roboto
                        )
                    }
                    Spacer(modifier = Modifier.height(16.dp))

                    OutlinedTextField(
                        value = nombre,
                        onValueChange = { loginViewModel.setNombre(it) },
                        label = { Text("Nombre *", fontFamily = roboto) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = Color.Gray
                        )
                    )

                    OutlinedTextField(
                        value = apellido,
                        onValueChange = { loginViewModel.setApellido(it) },
                        label = { Text("Apellido *", fontFamily = roboto) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = Color.Gray
                        )
                    )

                    OutlinedTextField(
                        value = dni,
                        onValueChange = { loginViewModel.setDni(it.uppercase()) },
                        label = { Text("DNI *", fontFamily = roboto) },
                        placeholder = { Text("12345678A", fontFamily = roboto) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        isError = dni.isNotBlank() && !dni.matches(Regex("^[0-9]{8}[A-Za-z]$")),
                        supportingText = {
                            if (dni.isNotBlank() && !dni.matches(Regex("^[0-9]{8}[A-Za-z]$"))) {
                                Text(
                                    "Formato inválido (8 números + 1 letra)",
                                    color = MaterialTheme.colorScheme.error
                                )
                            }
                        },
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = Color.Gray
                        )
                    )

                    OutlinedTextField(
                        value = email,
                        onValueChange = { loginViewModel.setEmail(it) },
                        label = { Text("Email *", fontFamily = roboto) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = Color.Gray
                        )
                    )

                    OutlinedTextField(
                        value = regPassword,
                        onValueChange = { loginViewModel.setRegPassword(it) },
                        label = { Text("Contraseña *", fontFamily = roboto) },
                        visualTransformation = PasswordVisualTransformation(),
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = Color.Gray
                        )
                    )

                    OutlinedTextField(
                        value = telefono,
                        onValueChange = { loginViewModel.setTelefono(it) },
                        label = { Text("Teléfono *", fontFamily = roboto) },
                        placeholder = { Text("123456789", fontFamily = roboto) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        isError = telefono.isNotBlank() && !telefono.matches(Regex("^[0-9]{9}$")),
                        supportingText = {
                            if (telefono.isNotBlank() && !telefono.matches(Regex("^[0-9]{9}$"))) {
                                Text(
                                    "Debe tener 9 dígitos",
                                    color = MaterialTheme.colorScheme.error
                                )
                            }
                        },
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = Color.Gray
                        )
                    )

                    // Dropdown Género
                    ExposedDropdownMenuBox(
                        expanded = expandedGenero,
                        onExpandedChange = { expandedGenero = it }
                    ) {
                        OutlinedTextField(
                            value = genero,
                            onValueChange = {},
                            readOnly = true,
                            label = { Text("Género *", fontFamily = roboto) },
                            trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedGenero) },
                            modifier = Modifier
                                .fillMaxWidth()
                                .menuAnchor(MenuAnchorType.PrimaryNotEditable),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color.Gray
                            )
                        )
                        ExposedDropdownMenu(
                            expanded = expandedGenero,
                            onDismissRequest = { expandedGenero = false }
                        ) {
                            listaGeneros.forEach { opcion ->
                                DropdownMenuItem(
                                    text = { Text(opcion, fontFamily = roboto) },
                                    onClick = {
                                        loginViewModel.setGenero(opcion)
                                        expandedGenero = false
                                    }
                                )
                            }
                        }
                    }

                    OutlinedTextField(
                        value = fechaNacimiento,
                        onValueChange = { loginViewModel.setFechaNacimiento(it) },
                        label = { Text("Fecha nacimiento *", fontFamily = roboto) },
                        placeholder = { Text("1990-05-15", fontFamily = roboto) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        isError = fechaNacimiento.isNotBlank() && !fechaNacimiento.matches(Regex("""\d{4}-\d{2}-\d{2}""")),
                        supportingText = {
                            if (fechaNacimiento.isNotBlank() && !fechaNacimiento.matches(Regex("""\d{4}-\d{2}-\d{2}"""))) {
                                Text(
                                    "Formato inválido (YYYY-MM-DD)",
                                    color = MaterialTheme.colorScheme.error
                                )
                            }
                        },
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = Color.Gray
                        )
                    )
                }
            }

            // ==================== SECCIÓN 2: DATOS DEL TUTOR (SOLO SI ES MENOR) ====================
            if (esMenor && fechaNacimiento.isNotBlank()) {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = Color(0xFFFFF3E0)),
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

                        OutlinedTextField(
                            value = tutorNombre,
                            onValueChange = { loginViewModel.setTutorNombre(it) },
                            label = { Text("Nombre completo *", fontFamily = roboto) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = Color(0xFFE67E22),
                                unfocusedBorderColor = Color.Gray
                            )
                        )

                        OutlinedTextField(
                            value = tutorTelefono,
                            onValueChange = { loginViewModel.setTutorTelefono(it) },
                            label = { Text("Teléfono *", fontFamily = roboto) },
                            placeholder = { Text("123456789", fontFamily = roboto) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = tutorTelefono.isNotBlank() &&
                                    !tutorTelefono.matches(Regex("^[0-9]{9}$")),
                            supportingText = {
                                if (tutorTelefono.isNotBlank() &&
                                    !tutorTelefono.matches(Regex("^[0-9]{9}$"))
                                ) {
                                    Text(
                                        "Debe tener 9 dígitos",
                                        color = MaterialTheme.colorScheme.error
                                    )
                                }
                            },
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = Color(0xFFE67E22),
                                unfocusedBorderColor = Color.Gray
                            )
                        )

                        OutlinedTextField(
                            value = tutorEmail,
                            onValueChange = { loginViewModel.setTutorEmail(it) },
                            label = { Text("Email *", fontFamily = roboto) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = tutorEmail.isNotBlank() &&
                                    !tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")),
                            supportingText = {
                                if (tutorEmail.isNotBlank() &&
                                    !tutorEmail.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$"))
                                ) {
                                    Text(
                                        "Formato de email inválido",
                                        color = MaterialTheme.colorScheme.error
                                    )
                                }
                            },
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = Color(0xFFE67E22),
                                unfocusedBorderColor = Color.Gray
                            )
                        )

                        OutlinedTextField(
                            value = tutorDni,
                            onValueChange = { loginViewModel.setTutorDni(it.uppercase()) },
                            label = { Text("DNI *", fontFamily = roboto) },
                            placeholder = { Text("12345678A", fontFamily = roboto) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = textFieldShape,
                            isError = tutorDni.isNotBlank() &&
                                    !tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$")),
                            supportingText = {
                                if (tutorDni.isNotBlank() &&
                                    !tutorDni.matches(Regex("^[0-9]{8}[A-Za-z]$"))
                                ) {
                                    Text(
                                        "Formato inválido (8 números + 1 letra)",
                                        color = MaterialTheme.colorScheme.error
                                    )
                                }
                            },
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = Color(0xFFE67E22),
                                unfocusedBorderColor = Color.Gray
                            )
                        )

                        // Dropdown Tipo de Tutor
                        ExposedDropdownMenuBox(
                            expanded = expandedTipoTutor,
                            onExpandedChange = { expandedTipoTutor = it }
                        ) {
                            OutlinedTextField(
                                value = tutorTipo,
                                onValueChange = {},
                                readOnly = true,
                                label = { Text("Parentesco *", fontFamily = roboto) },
                                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedTipoTutor) },
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .menuAnchor(MenuAnchorType.PrimaryNotEditable),
                                shape = textFieldShape,
                                colors = OutlinedTextFieldDefaults.colors(
                                    focusedBorderColor = Color(0xFFE67E22),
                                    unfocusedBorderColor = Color.Gray
                                )
                            )
                            ExposedDropdownMenu(
                                expanded = expandedTipoTutor,
                                onDismissRequest = { expandedTipoTutor = false }
                            ) {
                                listaTiposTutor.forEach { tipo ->
                                    DropdownMenuItem(
                                        text = { Text(tipo, fontFamily = roboto) },
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
                colors = CardDefaults.cardColors(containerColor = Color.White),
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

                    OutlinedTextField(
                        value = calle,
                        onValueChange = { loginViewModel.setCalle(it) },
                        label = { Text("Calle y número *", fontFamily = roboto) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = textFieldShape,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = Color.Gray
                        )
                    )

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        OutlinedTextField(
                            value = ciudad,
                            onValueChange = { loginViewModel.setCiudad(it) },
                            label = { Text("Ciudad", fontFamily = roboto) },
                            modifier = Modifier.weight(1f),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color.Gray
                            )
                        )
                        OutlinedTextField(
                            value = provincia,
                            onValueChange = { loginViewModel.setProvincia(it) },
                            label = { Text("Provincia", fontFamily = roboto) },
                            modifier = Modifier.weight(1f),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color.Gray
                            )
                        )
                    }

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        OutlinedTextField(
                            value = codigoPostal,
                            onValueChange = { loginViewModel.setCodigoPostal(it) },
                            label = { Text("Código Postal", fontFamily = roboto) },
                            modifier = Modifier.weight(1f),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color.Gray
                            )
                        )
                        OutlinedTextField(
                            value = pais,
                            onValueChange = { loginViewModel.setPais(it) },
                            label = { Text("País", fontFamily = roboto) },
                            modifier = Modifier.weight(1f),
                            shape = textFieldShape,
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = Color.Gray
                            )
                        )
                    }
                }
            }

            // ==================== SECCIÓN 4: SITUACIONES ====================
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(containerColor = Color.White),
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
                        "Seleccione una o más situaciones *",
                        style = MaterialTheme.typography.bodySmall,
                        fontFamily = roboto,
                        color = Color.Gray
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
                                        contentDescription = null
                                    )
                                }
                            },
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { expandedSituacion = !expandedSituacion },
                            shape = textFieldShape,
                            isError = situacionesIds.isEmpty(),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = if (situacionesIds.isEmpty()) Color.Red else Color.Gray
                            )
                        )

                        DropdownMenu(
                            expanded = expandedSituacion,
                            onDismissRequest = { expandedSituacion = false },
                            modifier = Modifier
                                .fillMaxWidth(0.9f)
                                .heightIn(max = 400.dp)
                        ) {
                            if (listaSituaciones.isEmpty()) {
                                DropdownMenuItem(
                                    text = {
                                        Text(
                                            "No hay situaciones disponibles",
                                            fontFamily = roboto
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
                                                    modifier = Modifier.size(24.dp)
                                                )
                                                Spacer(modifier = Modifier.width(12.dp))
                                                Text(
                                                    situacion.nombre,
                                                    fontFamily = roboto,
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
                colors = CardDefaults.cardColors(containerColor = Color.White),
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

            Button(
                onClick = {
                    loginViewModel.registrarPacienteDesdePsicologo()
                },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(56.dp),
                shape = RoundedCornerShape(16.dp),
                colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                enabled = formularioCompletoValido
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
                    loginViewModel.resetCrearPacienteDesdePsicologoState()
                } else if (!registerError.isNullOrBlank()) {
                    errorMessage = registerError!!
                    showErrorDialog = true
                    loginViewModel.resetCrearPacienteDesdePsicologoState()
                }
            }
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
                    fontWeight = Bold
                )
            },
            text = {
                Text(
                    "El paciente ha sido registrado correctamente y asignado a tu lista.",
                    fontFamily = roboto
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
            containerColor = Color.White
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
                    fontWeight = Bold
                )
            },
            text = {
                Text(
                    text = errorMessage.ifBlank { "Ocurrió un error al registrar el paciente. Por favor, inténtalo de nuevo." },
                    fontFamily = roboto
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
            containerColor = Color.White
        )
    }
}
