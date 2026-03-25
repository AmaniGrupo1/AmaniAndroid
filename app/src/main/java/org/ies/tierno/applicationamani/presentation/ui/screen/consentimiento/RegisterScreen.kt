package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
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

    // --- Observando estados del LoginViewModel ---
    val nombre by loginViewModel.nombre.collectAsStateWithLifecycle()
    val apellido by loginViewModel.apellido.collectAsStateWithLifecycle()
    val email by loginViewModel.email.collectAsStateWithLifecycle()
    val regPassword by loginViewModel.regPassword.collectAsStateWithLifecycle()
    val telefono by loginViewModel.telefono.collectAsStateWithLifecycle()
    val genero by loginViewModel.genero.collectAsStateWithLifecycle()
    val fechaNacimiento by loginViewModel.fechaNacimiento.collectAsStateWithLifecycle()
    val metodoPago by loginViewModel.metodoPago.collectAsStateWithLifecycle()
    val situacionSeleccionada by loginViewModel.situacionSeleccionada.collectAsStateWithLifecycle()
    val passwordVisible by loginViewModel.passwordVisible.collectAsStateWithLifecycle()
    val pagoRealizado by loginViewModel.pagoRealizado.collectAsStateWithLifecycle()
    val mostrarDialogoPago by loginViewModel.mostrarDialogoPago.collectAsStateWithLifecycle()
    val isRegistering by loginViewModel.isRegistering.collectAsStateWithLifecycle()
    val registerError by loginViewModel.registerError.collectAsStateWithLifecycle()
    val procesandoPago by loginViewModel.procesandoPago.collectAsStateWithLifecycle()

    // --- Observando estados del SituacionViewModel ---
    val listaSituaciones by situacionViewModel.situaciones.collectAsStateWithLifecycle(emptyList())

    val listaMetodosPago = listOf("PRESENCIAL", "ONLINE")

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
            // ------------------ Campos de Usuario ------------------
            val textFieldShape = RoundedCornerShape(12.dp)

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

            // ------------------ Dropdown Método de Pago ------------------
            var expandedMetodo by remember { mutableStateOf(false) }
            Column {
                Text("Método de Pago", fontFamily = roboto, color = Color.Gray)
                Box {
                    OutlinedTextField(
                        value = metodoPago,
                        onValueChange = {},
                        readOnly = true,
                        placeholder = { Text("Seleccione método de pago", fontFamily = roboto) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable { if (!isRegistering) expandedMetodo = true },
                        shape = textFieldShape,
                        enabled = !isRegistering
                    )
                    DropdownMenu(
                        expanded = expandedMetodo,
                        onDismissRequest = { expandedMetodo = false },
                        modifier = Modifier.fillMaxWidth(0.9f)
                    ) {
                        listaMetodosPago.forEach { metodo ->
                            DropdownMenuItem(
                                onClick = {
                                    loginViewModel.setMetodoPago(metodo)
                                    expandedMetodo = false
                                },
                                text = { Text(metodo, fontFamily = roboto) }
                            )
                        }
                    }
                }
            }

            if (metodoPago == "ONLINE" && !pagoRealizado && !isRegistering) {
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

            // ------------------ Dropdown Situación ------------------
            var expandedSituacion by remember { mutableStateOf(false) }
            Column {
                Text("Situación", fontFamily = roboto, color = Color.Gray)
                Box {
                    OutlinedTextField(
                        value = situacionSeleccionada?.second ?: "",
                        onValueChange = {},
                        readOnly = true,
                        placeholder = { Text("Seleccione una situación", fontFamily = roboto) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable { if (!isRegistering) expandedSituacion = true },
                        shape = textFieldShape,
                        enabled = !isRegistering
                    )
                    DropdownMenu(
                        expanded = expandedSituacion,
                        onDismissRequest = { expandedSituacion = false },
                        modifier = Modifier.fillMaxWidth(0.9f)
                    ) {
                        listaSituaciones.forEach { situacion ->
                            DropdownMenuItem(
                                onClick = {
                                    loginViewModel.setSituacionSeleccionada(situacion.idSituacion to situacion.nombre)
                                    expandedSituacion = false
                                },
                                text = { Text(situacion.nombre, fontFamily = roboto) }
                            )
                        }
                    }
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            // ------------------ Botón Registrar ------------------
            Button(
                onClick = {
                    loginViewModel.registrarPaciente { success ->
                        if (success) {
                            navController.navigate(Screens.adminHome.route) {
                                popUpTo(Screens.registro.route) { inclusive = true }
                            }
                        }
                    }
                },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(55.dp),
                shape = RoundedCornerShape(16.dp),
                colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                enabled = !isRegistering && !(metodoPago == "ONLINE" && !pagoRealizado)
            ) {
                if (isRegistering) {
                    CircularProgressIndicator(modifier = Modifier.size(24.dp), color = Color.White)
                } else {
                    Text(
                        text = if (metodoPago == "ONLINE" && !pagoRealizado) "Pagar para registrar" else "Registrar",
                        color = Color.White,
                        fontFamily = roboto
                    )
                }
            }
        }
    }

    // ------------------ Diálogo de Pago Online ------------------
    if (mostrarDialogoPago && !pagoRealizado) {
        AlertDialog(
            onDismissRequest = {
                loginViewModel.setMostrarDialogoPago(false)
                if (!pagoRealizado) loginViewModel.setMetodoPago("")
            },
            title = { Text("Pago Online", fontFamily = roboto) },
            text = {
                Column {
                    Text("Complete el pago para continuar con el registro", fontFamily = roboto)
                    Spacer(modifier = Modifier.height(8.dp))
                    Text("💰 Total: 50€", fontFamily = roboto, color = primaryColor)
                    Spacer(modifier = Modifier.height(16.dp))
                    if (procesandoPago) {
                        Box(modifier = Modifier.fillMaxWidth(), contentAlignment = Alignment.Center) {
                            CircularProgressIndicator()
                        }
                    } else {
                        OutlinedTextField(
                            value = "",
                            onValueChange = {},
                            label = { Text("Número de tarjeta", fontFamily = roboto) },
                            modifier = Modifier.fillMaxWidth(),
                            enabled = false,
                            placeholder = { Text("**** **** **** 1234", fontFamily = roboto) }
                        )
                    }
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        loginViewModel.simularPagoOnline { success ->
                            if (!success) scope.launch {
                                snackbarHostState.showSnackbar("Error en el pago. Intente nuevamente")
                            }
                        }
                    },
                    enabled = !procesandoPago
                ) {
                    Text(if (procesandoPago) "Procesando..." else "Pagar ahora", color = primaryColor)
                }
            },
            dismissButton = {
                TextButton(
                    onClick = {
                        loginViewModel.setMostrarDialogoPago(false)
                        loginViewModel.setMetodoPago("")
                    },
                    enabled = !procesandoPago
                ) {
                    Text("Cancelar")
                }
            }
        )
    }
}