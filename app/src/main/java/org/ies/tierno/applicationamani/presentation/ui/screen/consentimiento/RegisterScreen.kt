package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material.icons.filled.Visibility
import androidx.compose.material.icons.filled.VisibilityOff
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel
import org.koin.androidx.compose.koinViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RegisterScreen(
    navController: NavController,
    loginViewModel: LoginViewModel,
    situacionViewModel: SituacionViewModel = koinViewModel()
) {
    val primaryColor = Color(0xFF6C63FF)
    val backgroundColor = Color(0xFFCCC0E4)
    val snackbarHostState = remember { SnackbarHostState() }
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val scope = rememberCoroutineScope()

    // --- Estados del LoginViewModel ---
    val nombre by loginViewModel.nombre.collectAsStateWithLifecycle()
    val apellido by loginViewModel.apellido.collectAsStateWithLifecycle()
    val email by loginViewModel.email.collectAsStateWithLifecycle()
    val regPassword by loginViewModel.regPassword.collectAsStateWithLifecycle()
    val telefono by loginViewModel.telefono.collectAsStateWithLifecycle()
    val genero by loginViewModel.genero.collectAsStateWithLifecycle()
    val fechaNacimiento by loginViewModel.fechaNacimiento.collectAsStateWithLifecycle()
    val metodoPago by loginViewModel.metodoPago.collectAsStateWithLifecycle()
    val passwordVisible by loginViewModel.passwordVisible.collectAsStateWithLifecycle()
    val pagoRealizado by loginViewModel.pagoRealizado.collectAsStateWithLifecycle()
    val mostrarDialogoPago by loginViewModel.mostrarDialogoPago.collectAsStateWithLifecycle()
    val isRegistering by loginViewModel.isRegistering.collectAsStateWithLifecycle()
    val registerError by loginViewModel.registerError.collectAsStateWithLifecycle()
    val procesandoPago by loginViewModel.procesandoPago.collectAsStateWithLifecycle()
    val situacionesSeleccionadas by loginViewModel.situacionesSeleccionadas.collectAsStateWithLifecycle()

    // --- Estados del SituacionViewModel ---
    val listaSituaciones by situacionViewModel.situaciones.collectAsStateWithLifecycle(emptyList())

    val listaMetodosPago = listOf(MetodoPago.PRESENCIAL, MetodoPago.ONLINE)

    // Mostrar errores
    LaunchedEffect(registerError) {
        registerError?.let {
            snackbarHostState.showSnackbar(it)
            loginViewModel.resetRegisterState()
        }
    }

    Scaffold(
        containerColor = backgroundColor,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) },
        topBar = {
            TopAppBar(
                title = { Text("Registrar Paciente", color = Color.White) },
                colors = TopAppBarDefaults.topAppBarColors(containerColor = primaryColor)
            )
        }
    ) { padding ->
        Column(
            modifier = Modifier
                .padding(padding)
                .fillMaxSize()
                .padding(16.dp)
                .verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            val textFieldShape = RoundedCornerShape(12.dp)

            // -------- Campos de Usuario --------
            OutlinedTextField(
                value = nombre,
                onValueChange = { loginViewModel.setNombre(it) },
                label = { Text("Nombre", fontFamily = roboto) },
                modifier = Modifier.fillMaxWidth(),
                shape = textFieldShape,
                enabled = !isRegistering
            )

            OutlinedTextField(
                value = apellido,
                onValueChange = { loginViewModel.setApellido(it) },
                label = { Text("Apellido", fontFamily = roboto) },
                modifier = Modifier.fillMaxWidth(),
                shape = textFieldShape,
                enabled = !isRegistering
            )

            OutlinedTextField(
                value = email,
                onValueChange = { loginViewModel.setEmail(it) },
                label = { Text("Email", fontFamily = roboto) },
                modifier = Modifier.fillMaxWidth(),
                shape = textFieldShape,
                enabled = !isRegistering
            )

            OutlinedTextField(
                value = regPassword,
                onValueChange = { loginViewModel.setRegPassword(it) },
                label = { Text("Contraseña", fontFamily = roboto) },
                visualTransformation = if (passwordVisible) VisualTransformation.None else PasswordVisualTransformation(),
                trailingIcon = {
                    IconButton(onClick = { loginViewModel.setPasswordVisible(!passwordVisible) }) {
                        Icon(
                            imageVector = if (passwordVisible) Icons.Default.Visibility else Icons.Default.VisibilityOff,
                            contentDescription = "Ver contraseña"
                        )
                    }
                },
                modifier = Modifier.fillMaxWidth(),
                shape = textFieldShape,
                enabled = !isRegistering
            )

            OutlinedTextField(
                value = telefono,
                onValueChange = { loginViewModel.setTelefono(it) },
                label = { Text("Teléfono", fontFamily = roboto) },
                modifier = Modifier.fillMaxWidth(),
                shape = textFieldShape,
                enabled = !isRegistering
            )

            OutlinedTextField(
                value = genero,
                onValueChange = { loginViewModel.setGenero(it) },
                label = { Text("Género (M/F)", fontFamily = roboto) },
                modifier = Modifier.fillMaxWidth(),
                shape = textFieldShape,
                enabled = !isRegistering
            )

            OutlinedTextField(
                value = fechaNacimiento,
                onValueChange = { loginViewModel.setFechaNacimiento(it) },
                label = { Text("Fecha nacimiento (YYYY-MM-DD)", fontFamily = roboto) },
                placeholder = { Text("Ej: 1990-05-15", fontFamily = roboto) },
                modifier = Modifier.fillMaxWidth(),
                shape = textFieldShape,
                enabled = !isRegistering
            )

            // -------- Dropdown Método de Pago (Versión mejorada) --------
            var expandedMetodo by remember { mutableStateOf(false) }

            // Usar ExposedDropdownMenuBox para mejor compatibilidad
            ExposedDropdownMenuBox(
                expanded = expandedMetodo,
                onExpandedChange = {
                    if (!isRegistering) {
                        expandedMetodo = it
                    }
                }
            ) {
                OutlinedTextField(
                    value = metodoPago?.let {
                        when(it) {
                            MetodoPago.PRESENCIAL -> "💰 Pago Presencial"
                            MetodoPago.ONLINE -> "💳 Pago Online"
                        }
                    } ?: "",
                    onValueChange = {},
                    readOnly = true,
                    label = { Text("Método de Pago", fontFamily = roboto) },
                    placeholder = {
                        Text(
                            "Seleccione método de pago",
                            fontFamily = roboto
                        )
                    },
                    trailingIcon = {
                        ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedMetodo)
                    },
                    modifier = Modifier
                        .fillMaxWidth()
                        .menuAnchor(),
                    shape = textFieldShape,
                    enabled = !isRegistering,
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = primaryColor,
                        unfocusedBorderColor = Color.Gray
                    )
                )

                ExposedDropdownMenu(
                    expanded = expandedMetodo,
                    onDismissRequest = { expandedMetodo = false },
                    modifier = Modifier.fillMaxWidth(0.9f)
                ) {
                    listaMetodosPago.forEach { metodo ->
                        DropdownMenuItem(
                            text = {
                                Text(
                                    when(metodo) {
                                        MetodoPago.PRESENCIAL -> "💰 Pago Presencial"
                                        MetodoPago.ONLINE -> "💳 Pago Online"
                                    },
                                    fontFamily = roboto
                                )
                            },
                            onClick = {
                                loginViewModel.setMetodoPago(metodo)
                                expandedMetodo = false
                            },
                            leadingIcon = {
                                Icon(
                                    imageVector = when(metodo) {
                                        MetodoPago.PRESENCIAL -> Icons.Default.ArrowDropDown
                                        MetodoPago.ONLINE -> Icons.Default.ArrowDropDown
                                    },
                                    contentDescription = null
                                )
                            }
                        )
                    }
                }
            }

            // Mensaje de advertencia para pago online
            if (metodoPago == MetodoPago.ONLINE && !pagoRealizado && !isRegistering) {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(containerColor = Color(0xFFFFF3E0)),
                    shape = textFieldShape
                ) {
                    Text(
                        text = "⚠️ Debes realizar el pago online para completar el registro",
                        modifier = Modifier.padding(12.dp),
                        color = Color(0xFFE67E22),
                        fontFamily = roboto
                    )
                }
            }

            // -------- Dropdown Situaciones (Múltiple) --------
            var expandedSituacion by remember { mutableStateOf(false) }

            ExposedDropdownMenuBox(
                expanded = expandedSituacion,
                onExpandedChange = { expandedSituacion = it }
            ) {
                OutlinedTextField(
                    value = if (situacionesSeleccionadas.isEmpty()) ""
                    else situacionesSeleccionadas.joinToString { it.second },
                    onValueChange = {},
                    readOnly = true,
                    label = { Text("Situaciones (seleccione una o más)", fontFamily = roboto) },
                    trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedSituacion) },
                    modifier = Modifier
                        .fillMaxWidth()
                        .menuAnchor(),
                    shape = textFieldShape,
                    enabled = !isRegistering
                )

                ExposedDropdownMenu(
                    expanded = expandedSituacion,
                    onDismissRequest = { expandedSituacion = false },
                    modifier = Modifier
                        .fillMaxWidth(0.9f)
                        .heightIn(max = 400.dp)
                ) {
                    if (listaSituaciones.isEmpty()) {
                        DropdownMenuItem(
                            text = { Text("No hay situaciones disponibles", fontFamily = roboto) },
                            onClick = { expandedSituacion = false },
                            enabled = false
                        )
                    } else {
                        listaSituaciones.forEach { situacion ->
                            val isSelected = situacionesSeleccionadas.any { it.first == situacion.idSituacion }
                            DropdownMenuItem(
                                text = {
                                    Row(
                                        verticalAlignment = Alignment.CenterVertically,
                                        modifier = Modifier.fillMaxWidth()
                                    ) {
                                        Checkbox(
                                            checked = isSelected,
                                            onCheckedChange = {
                                                loginViewModel.toggleSituacion(situacion.idSituacion to situacion.nombre)
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
                                onClick = {
                                    loginViewModel.toggleSituacion(situacion.idSituacion to situacion.nombre)
                                }
                            )
                        }
                    }
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            // -------- Botón Registrar --------
            Button(
                onClick = {
                    if (metodoPago == MetodoPago.ONLINE && !pagoRealizado) {
                        // Mostrar diálogo de pago
                        loginViewModel.setMostrarDialogoPago(true)
                    } else {
                        // Registrar directamente
                        loginViewModel.registrarPaciente { success ->
                            if (success) {
                                navController.navigate(Screens.login.route) {
                                    popUpTo(Screens.registro.route) { inclusive = true }
                                }
                            }
                        }
                    }
                },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(55.dp),
                shape = RoundedCornerShape(16.dp),
                colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                enabled = !isRegistering && metodoPago != null
            ) {
                if (isRegistering) {
                    CircularProgressIndicator(modifier = Modifier.size(24.dp), color = Color.White)
                } else {
                    Text(
                        text = when {
                            metodoPago == null -> "Seleccione método de pago"
                            metodoPago == MetodoPago.ONLINE && !pagoRealizado -> "💳 Pagar y Registrar"
                            else -> "📝 Registrar Paciente"
                        },
                        color = Color.White,
                        fontFamily = roboto
                    )
                }
            }

            // -------- Diálogo Pago Online (Mejorado) --------
            if (mostrarDialogoPago && !pagoRealizado && metodoPago == MetodoPago.ONLINE) {
                AlertDialog(
                    onDismissRequest = {
                        if (!procesandoPago) {
                            loginViewModel.setMostrarDialogoPago(false)
                        }
                    },
                    title = {
                        Text(
                            "Pago Online",
                            fontFamily = roboto,
                            color = primaryColor
                        )
                    },
                    text = {
                        Column(
                            verticalArrangement = Arrangement.spacedBy(12.dp)
                        ) {
                            Text(
                                "Complete el pago para continuar con el registro",
                                fontFamily = roboto
                            )

                            Card(
                                modifier = Modifier.fillMaxWidth(),
                                colors = CardDefaults.cardColors(containerColor = Color(0xFFF0F0F0)),
                                shape = RoundedCornerShape(8.dp)
                            ) {
                                Column(
                                    modifier = Modifier.padding(12.dp),
                                    horizontalAlignment = Alignment.CenterHorizontally
                                ) {
                                    Text(
                                        "💰 Total a pagar: 50€",
                                        fontFamily = roboto,
                                        fontSize = MaterialTheme.typography.titleMedium.fontSize,
                                        color = primaryColor
                                    )
                                    Text(
                                        "Primera consulta",
                                        fontFamily = roboto,
                                        fontSize = MaterialTheme.typography.bodySmall.fontSize,
                                        color = Color.Gray
                                    )
                                }
                            }

                            if (procesandoPago) {
                                Box(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .padding(16.dp),
                                    contentAlignment = Alignment.Center
                                ) {
                                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                        CircularProgressIndicator(color = primaryColor)
                                        Spacer(modifier = Modifier.height(8.dp))
                                        Text(
                                            "Procesando pago...",
                                            fontFamily = roboto,
                                            color = Color.Gray
                                        )
                                    }
                                }
                            } else {
                                Card(
                                    modifier = Modifier.fillMaxWidth(),
                                    colors = CardDefaults.cardColors(containerColor = Color.White),
                                    elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
                                ) {
                                    Column(modifier = Modifier.padding(12.dp)) {
                                        Text(
                                            "💳 Datos de pago de prueba",
                                            fontFamily = roboto,
                                            style = MaterialTheme.typography.labelMedium
                                        )
                                        Spacer(modifier = Modifier.height(8.dp))
                                        Text(
                                            "• Tarjeta: **** **** **** 1234",
                                            fontFamily = roboto,
                                            fontSize = MaterialTheme.typography.bodySmall.fontSize
                                        )
                                        Text(
                                            "• Titular: Cliente Test",
                                            fontFamily = roboto,
                                            fontSize = MaterialTheme.typography.bodySmall.fontSize
                                        )
                                        Text(
                                            "• Caducidad: 12/25",
                                            fontFamily = roboto,
                                            fontSize = MaterialTheme.typography.bodySmall.fontSize
                                        )
                                    }
                                }
                            }
                        }
                    },
                    confirmButton = {
                        TextButton(
                            onClick = {
                                if (!procesandoPago) {
                                    loginViewModel.simularPagoOnline { success ->
                                        if (success) {
                                            // Pago exitoso, proceder con el registro
                                            loginViewModel.registrarPaciente { registroSuccess ->
                                                if (registroSuccess) {
                                                    navController.navigate(Screens.adminHome.route) {
                                                        popUpTo(Screens.registro.route) { inclusive = true }
                                                    }
                                                }
                                            }
                                        } else {
                                            scope.launch {
                                                snackbarHostState.showSnackbar("Error en el pago. Intente nuevamente")
                                            }
                                        }
                                    }
                                }
                            },
                            enabled = !procesandoPago
                        ) {
                            Text(
                                if (procesandoPago) "Procesando..." else "Pagar 50€",
                                color = primaryColor,
                                fontFamily = roboto
                            )
                        }
                    },
                    dismissButton = {
                        TextButton(
                            onClick = {
                                if (!procesandoPago) {
                                    loginViewModel.setMostrarDialogoPago(false)
                                }
                            },
                            enabled = !procesandoPago
                        ) {
                            Text("Cancelar", fontFamily = roboto)
                        }
                    }
                )
            }
        }
    }
}