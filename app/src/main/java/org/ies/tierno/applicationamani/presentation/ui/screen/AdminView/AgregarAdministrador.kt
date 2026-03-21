package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
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
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.ui.componente.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.ui.screen.Espaciado
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AgregarAdministrador(
    navController: NavController,
    loginViewModel: LoginViewModel
) {
    val backgroundColor = Color(0xFFCCC0E4)
    val colorButton = android.graphics.Color.parseColor("#CCC0E4")
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val balow = FontFamily(Font(R.font.barlow_condensed_black))

    // --- Estados del ViewModel ---
    val name by loginViewModel.nombre.collectAsState()
    val surname by loginViewModel.apellido.collectAsState()
    val email by loginViewModel.email.collectAsState()
    val password by loginViewModel.regPassword.collectAsState()

    // --- Estados de UI ---
    val isRegistering by loginViewModel.isRegistering.collectAsState()
    val registerError by loginViewModel.registerError.collectAsState()
    val registerSuccess by loginViewModel.registerSuccess.collectAsState()

    var passwordVisible by remember { mutableStateOf(false) }

    // Snackbar para mensajes
    val snackbarHostState = remember { SnackbarHostState() }

    // Estado local para mensajes de validación
    var validationMessage by remember { mutableStateOf<String?>(null) }

    // CoroutineScope para lanzar corutinas
    val coroutineScope = rememberCoroutineScope()

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
            snackbarHostState.showSnackbar("Administrador registrado exitosamente")
            delay(1500) // Pequeña pausa para mostrar el mensaje
            loginViewModel.resetRegisterState()
            navController.popBackStack() // Volver a la pantalla anterior
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
            MenuAdministrador("Agregar administrador", navController)
        }
    ) { paddingValues ->

        Column(
            modifier = Modifier
                .padding(paddingValues)
                .fillMaxSize()
                .padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Espaciado(40)

            // Título
            Text(
                text = "Nuevo Administrador",
                fontFamily = balow,
                fontSize = 24.sp,
                fontWeight = FontWeight.Bold,
                color = Color.Black,
                modifier = Modifier.padding(bottom = 20.dp)
            )

            // Nombre
            OutlinedTextField(
                modifier = Modifier.fillMaxWidth(),
                value = name,
                onValueChange = { loginViewModel.setNombre(it) },
                placeholder = { Text("Nombre *", fontFamily = roboto) },
                singleLine = true,
                shape = RoundedCornerShape(12.dp),
                colors = OutlinedTextFieldDefaults.colors(
                    focusedBorderColor = Color.Black,
                    unfocusedBorderColor = Color.Gray,
                    focusedContainerColor = Color.White,
                    unfocusedContainerColor = Color.White
                )
            )

            Espaciado(20)

            // Apellido
            OutlinedTextField(
                modifier = Modifier.fillMaxWidth(),
                value = surname,
                onValueChange = { loginViewModel.setApellido(it) },
                placeholder = { Text("Apellido *", fontFamily = roboto) },
                singleLine = true,
                shape = RoundedCornerShape(12.dp),
                colors = OutlinedTextFieldDefaults.colors(
                    focusedBorderColor = Color.Black,
                    unfocusedBorderColor = Color.Gray,
                    focusedContainerColor = Color.White,
                    unfocusedContainerColor = Color.White
                )
            )

            Espaciado(20)

            // Email
            OutlinedTextField(
                modifier = Modifier.fillMaxWidth(),
                value = email,
                onValueChange = { loginViewModel.setEmail(it) },
                placeholder = { Text("Email *", fontFamily = roboto) },
                singleLine = true,
                shape = RoundedCornerShape(12.dp),
                colors = OutlinedTextFieldDefaults.colors(
                    focusedBorderColor = Color.Black,
                    unfocusedBorderColor = Color.Gray,
                    focusedContainerColor = Color.White,
                    unfocusedContainerColor = Color.White
                )
            )

            Espaciado(20)

            // Password
            OutlinedTextField(
                modifier = Modifier.fillMaxWidth(),
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
                singleLine = true,
                shape = RoundedCornerShape(12.dp),
                colors = OutlinedTextFieldDefaults.colors(
                    focusedBorderColor = Color.Black,
                    unfocusedBorderColor = Color.Gray,
                    focusedContainerColor = Color.White,
                    unfocusedContainerColor = Color.White
                )
            )

            // Mensaje de ayuda para contraseña
            if (password.isNotBlank() && password.length < 4) {
                Text(
                    text = "La contraseña debe tener al menos 4 caracteres",
                    color = Color.Red,
                    fontSize = 12.sp,
                    fontFamily = roboto,
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(start = 8.dp, top = 4.dp)
                )
            }

            Espaciado(30)

            // Botón Registrar
            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                shape = RoundedCornerShape(50.dp),
                border = BorderStroke(2.dp, Color.Black),
                onClick = {
                    // Validar campos
                    when {
                        name.isBlank() -> validationMessage = "Por favor ingrese el nombre"
                        surname.isBlank() -> validationMessage = "Por favor ingrese el apellido"
                        email.isBlank() -> validationMessage = "Por favor ingrese el email"
                        password.isBlank() -> validationMessage = "Por favor ingrese la contraseña"
                        password.length < 4 -> validationMessage = "La contraseña debe tener al menos 4 caracteres"
                        else -> {
                            // Todos los campos válidos, proceder con registro
                            loginViewModel.registrarAdmin()
                        }
                    }
                },
                enabled = !isRegistering,
                colors = ButtonDefaults.buttonColors(
                    containerColor = Color.White,
                    contentColor = Color(colorButton)
                )
            ) {
                if (isRegistering) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(20.dp),
                        color = Color.Black,
                        strokeWidth = 2.dp
                    )
                } else {
                    Text(
                        "Registrar Administrador",
                        fontFamily = roboto,
                        fontWeight = FontWeight.Bold,
                        fontSize = 16.sp
                    )
                }
            }

            Espaciado(20)

            // Botón Cancelar
            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                shape = RoundedCornerShape(50.dp),
                border = BorderStroke(2.dp, Color.Black),
                onClick = {
                    loginViewModel.resetRegisterState()
                    navController.popBackStack()
                },
                colors = ButtonDefaults.buttonColors(
                    containerColor = Color.White,
                    contentColor = Color(colorButton)
                )
            ) {
                Text(
                    "Cancelar",
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 16.sp
                )
            }
        }
    }
}