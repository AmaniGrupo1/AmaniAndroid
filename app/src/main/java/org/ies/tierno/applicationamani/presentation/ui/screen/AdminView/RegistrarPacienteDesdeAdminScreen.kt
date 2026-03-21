package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import androidx.compose.foundation.ScrollState
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Visibility
import androidx.compose.material.icons.filled.VisibilityOff
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.ui.componente.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RegistrarPacienteDesdeAdminScreen(
    navController: NavController,
    loginViewModel: LoginViewModel
) {
    val backgroundColor = Color(0xFFCCC0E4)
    val primaryColor = Color(0xFF6C63FF)
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    // Observar estados del ViewModel
    val isRegistering by loginViewModel.isRegistering.collectAsState()
    val registerError by loginViewModel.registerError.collectAsState()
    val registerSuccess by loginViewModel.registerSuccess.collectAsState()

    // Campos del ViewModel
    val nombre by loginViewModel.nombre.collectAsState()
    val apellido by loginViewModel.apellido.collectAsState()
    val email by loginViewModel.email.collectAsState()
    val password by loginViewModel.regPassword.collectAsState()
    val telefono by loginViewModel.telefono.collectAsState()
    val genero by loginViewModel.genero.collectAsState()
    val fechaNacimiento by loginViewModel.fechaNacimiento.collectAsState()

    var passwordVisible by remember { mutableStateOf(false) }

    // Snackbar para mensajes
    val snackbarHostState = remember { SnackbarHostState() }

    // Estado local para mensajes de validación
    var validationMessage by remember { mutableStateOf<String?>(null) }

    // Manejar mensajes de validación
    LaunchedEffect(validationMessage) {
        validationMessage?.let { message ->
            snackbarHostState.showSnackbar(message)
            validationMessage = null
        }
    }

    // Manejar éxito de registro
    LaunchedEffect(registerSuccess) {
        if (registerSuccess) {
            snackbarHostState.showSnackbar("Paciente registrado exitosamente")
            kotlinx.coroutines.delay(1500)
            loginViewModel.resetRegisterState()
            navController.popBackStack()
        }
    }

    // Manejar errores del servidor
    LaunchedEffect(registerError) {
        registerError?.let { error ->
            snackbarHostState.showSnackbar(error)
        }
    }

    Scaffold(
        containerColor = backgroundColor,
        snackbarHost = { SnackbarHost(snackbarHostState) },
        topBar = {
            MenuAdministrador("Registrar paciente", navController)
        }
    ) { paddingValues ->

        Column(
            modifier = Modifier
                .padding(paddingValues)
                .fillMaxSize()
                .verticalScroll(rememberScrollState())
                .padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Text(
                text = "Nuevo Paciente",
                fontFamily = roboto,
                style = MaterialTheme.typography.titleLarge,
                color = Color.Black
            )

            CustomTextField(
                value = nombre,
                onValueChange = { loginViewModel.setNombre(it) },
                placeholder = "Nombre *",
                roboto = roboto
            )

            CustomTextField(
                value = apellido,
                onValueChange = { loginViewModel.setApellido(it) },
                placeholder = "Apellido *",
                roboto = roboto
            )

            CustomTextField(
                value = email,
                onValueChange = { loginViewModel.setEmail(it) },
                placeholder = "Email *",
                roboto = roboto
            )

            CustomTextField(
                value = telefono,
                onValueChange = { loginViewModel.setTelefono(it) },
                placeholder = "Teléfono *",
                roboto = roboto
            )

            CustomTextField(
                value = genero,
                onValueChange = { loginViewModel.setGenero(it) },
                placeholder = "Género (M/F) *",
                roboto = roboto
            )

            CustomTextField(
                value = fechaNacimiento,
                onValueChange = { loginViewModel.setFechaNacimiento(it) },
                placeholder = "Fecha nacimiento (YYYY-MM-DD) *",
                roboto = roboto
            )

            OutlinedTextField(
                value = password,
                onValueChange = { loginViewModel.setRegPassword(it) },
                placeholder = { Text("Contraseña *", fontFamily = roboto) },
                visualTransformation = if (passwordVisible) VisualTransformation.None else PasswordVisualTransformation(),
                trailingIcon = {
                    IconButton(onClick = { passwordVisible = !passwordVisible }) {
                        Icon(
                            imageVector = if (passwordVisible) Icons.Default.Visibility else Icons.Default.VisibilityOff,
                            contentDescription = if (passwordVisible) "Ocultar contraseña" else "Mostrar contraseña"
                        )
                    }
                },
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(12.dp),
                colors = OutlinedTextFieldDefaults.colors(
                    focusedBorderColor = primaryColor,
                    unfocusedBorderColor = Color.Gray,
                    focusedContainerColor = Color.White,
                    unfocusedContainerColor = Color.White
                )
            )

            Spacer(modifier = Modifier.height(20.dp))

            Button(
                onClick = {
                    // Validar campos
                    when {
                        nombre.isBlank() -> validationMessage = "Por favor ingrese el nombre"
                        apellido.isBlank() -> validationMessage = "Por favor ingrese el apellido"
                        email.isBlank() -> validationMessage = "Por favor ingrese el email"
                        password.isBlank() -> validationMessage = "Por favor ingrese la contraseña"
                        telefono.isBlank() -> validationMessage = "Por favor ingrese el teléfono"
                        genero.isBlank() -> validationMessage = "Por favor ingrese el género"
                        fechaNacimiento.isBlank() -> validationMessage = "Por favor ingrese la fecha de nacimiento"
                        password.length < 4 -> validationMessage = "La contraseña debe tener al menos 4 caracteres"
                        else -> {
                            // Todos los campos válidos, proceder con registro
                            loginViewModel.registrarPacienteAdmin()
                        }
                    }
                },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(55.dp),
                shape = RoundedCornerShape(16.dp),
                colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                enabled = !isRegistering
            ) {
                if (isRegistering) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(24.dp),
                        color = Color.White,
                        strokeWidth = 2.dp
                    )
                } else {
                    Text("Registrar Paciente", color = Color.White, fontFamily = roboto)
                }
            }

            OutlinedButton(
                onClick = {
                    loginViewModel.resetRegisterState()
                    navController.popBackStack()
                },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(55.dp),
                shape = RoundedCornerShape(16.dp)
            ) {
                Text("Cancelar", fontFamily = roboto)
            }
        }
    }
}

@Composable
fun CustomTextField(
    value: String,
    onValueChange: (String) -> Unit,
    placeholder: String,
    roboto: FontFamily
) {
    val primaryColor = Color(0xFF6C63FF)

    OutlinedTextField(
        value = value,
        onValueChange = onValueChange,
        placeholder = { Text(placeholder, fontFamily = roboto) },
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = OutlinedTextFieldDefaults.colors(
            focusedBorderColor = primaryColor,
            unfocusedBorderColor = Color.Gray,
            focusedContainerColor = Color.White,
            unfocusedContainerColor = Color.White
        )
    )
}