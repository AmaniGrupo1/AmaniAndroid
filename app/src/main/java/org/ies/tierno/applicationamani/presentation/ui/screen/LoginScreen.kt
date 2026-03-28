package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Visibility
import androidx.compose.material.icons.filled.VisibilityOff
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.collectAsState
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import org.koin.androidx.compose.koinViewModel
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors

/**
 * Pantalla de inicio de sesión de la aplicación Amani.
 *
 * Muestra el logotipo de la app, campos de texto para usuario y contraseña,
 * un botón de «Iniciar sesión» y un enlace a la pantalla de registro.
 *
 * El estado de los campos se gestiona a través de [LoginViewModel], que
 * expone StateFlow observados con `collectAsState`.
 *
 * Utiliza los colores del tema ([MaterialTheme.colorScheme]) y los colores
 * extra de Amani ([LocalAmaniColors]) para mantener coherencia visual.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param loginViewModel ViewModel que mantiene el estado del formulario.
 *
 * @see LoginViewModel
 */
@Composable
fun LoginScreen(
    navController: NavController,
    loginViewModel: LoginViewModel = koinViewModel()
) {
    val username by loginViewModel.username.collectAsState()
    val password by loginViewModel.password.collectAsState()
    val loginResult by loginViewModel.loginResult.collectAsState()
    val isLoggingIn by loginViewModel.isLoggingIn.collectAsState()
    val loginError by loginViewModel.loginError.collectAsState()

    val snackbarHostState = remember { SnackbarHostState() }
    var showErrorSnackbar by remember { mutableStateOf(false) }

    // Efecto para mostrar errores de login en Snackbar
    LaunchedEffect(loginError) {
        if (!loginError.isNullOrBlank() && !showErrorSnackbar) {
            showErrorSnackbar = true
            snackbarHostState.showSnackbar(
                message = loginError ?: "Error al iniciar sesión",
                duration = SnackbarDuration.Short
            )
            showErrorSnackbar = false
        }
    }

    // Efecto para reaccionar al resultado del login y navegar cuando sea correcto
    LaunchedEffect(loginResult) {
        val result = loginResult ?: return@LaunchedEffect
        result.onSuccess { response ->
            val destination = when (response.rol.lowercase()) {
                "admin" -> Screens.adminHome.route
                "psicologo" -> Screens.psicologoHome.route
                else -> Screens.pacienteHome.route
            }
            loginViewModel.clearLoginFields()
            loginViewModel.resetLoginState()
            navController.navigate(destination) {
                popUpTo(Screens.login.route) { inclusive = true }
                launchSingleTop = true
            }
        }
    }

    val colors = MaterialTheme.colorScheme
    val amaniColors = LocalAmaniColors.current
    val typography = MaterialTheme.typography

    Scaffold(
        containerColor = amaniColors.screenBackground,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) }
    ) { paddingValues ->
        LoginScreenContent(
            modifier = Modifier.padding(paddingValues),
            username = username,
            onUsernameChange = { loginViewModel.setUsername(it) },
            password = password,
            onPasswordChange = { loginViewModel.setPassword(it) },
            isLoggingIn = isLoggingIn,
            isLoginEnabled = !isLoggingIn && loginViewModel.isLoginFormValid(),
            onLogin = { loginViewModel.login() },
            onRegisterClick = {
                loginViewModel.resetLoginState()
                navController.navigate(Screens.registro.route)
            },
            colors = colors,
            amaniColors = amaniColors,
            typography = typography
        )
    }
}

@Composable
fun LoginScreenContent(
    modifier: Modifier = Modifier,
    username: String,
    onUsernameChange: (String) -> Unit,
    password: String,
    onPasswordChange: (String) -> Unit,
    isLoggingIn: Boolean,
    isLoginEnabled: Boolean,
    onLogin: () -> Unit,
    onRegisterClick: () -> Unit,
    colors: ColorScheme,
    amaniColors: org.ies.tierno.applicationamani.ui.theme.AmaniExtraColors,
    typography: Typography
) {
    var isPasswordVisible by remember { mutableStateOf(false) }

    Column(
        modifier = modifier
            .fillMaxSize()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        // Logo
        Image(
            painter = painterResource(id = R.drawable.logo),
            contentDescription = "Logo de Amani",
            modifier = Modifier.size(250.dp),
            alpha = 1f
        )

        Spacer(modifier = Modifier.height(40.dp))

        // Campo de usuario/email
        OutlinedTextField(
            modifier = Modifier.fillMaxWidth(),
            value = username,
            onValueChange = onUsernameChange,
            label = { Text("Correo electrónico", style = typography.bodyLarge) },
            placeholder = { Text("usuario@ejemplo.com") },
            isError = username.isNotBlank() && !username.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")),
            supportingText = {
                if (username.isNotBlank() && !username.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$"))) {
                    Text(
                        text = "Introduce un correo electrónico válido",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.error
                    )
                }
            },
            singleLine = true,
            enabled = !isLoggingIn,
            colors = OutlinedTextFieldDefaults.colors(
                focusedBorderColor = colors.primary,
                unfocusedBorderColor = colors.onSurface.copy(alpha = 0.5f),
                errorBorderColor = colors.error,
                cursorColor = colors.primary
            )
        )

        Spacer(modifier = Modifier.height(30.dp))

        // Campo de contraseña
        OutlinedTextField(
            modifier = Modifier.fillMaxWidth(),
            value = password,
            onValueChange = onPasswordChange,
            label = { Text("Contraseña", style = typography.bodyLarge) },
            placeholder = { Text("••••••") },
            isError = password.isNotBlank() && password.length < 6,
            supportingText = {
                if (password.isNotBlank() && password.length < 6) {
                    Text(
                        text = "La contraseña debe tener al menos 6 caracteres",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.error
                    )
                }
            },
            visualTransformation = if (isPasswordVisible) VisualTransformation.None else PasswordVisualTransformation(),
            trailingIcon = {
                IconButton(
                    onClick = { isPasswordVisible = !isPasswordVisible },
                    enabled = !isLoggingIn
                ) {
                    Icon(
                        imageVector = if (isPasswordVisible) Icons.Default.VisibilityOff else Icons.Default.Visibility,
                        contentDescription = if (isPasswordVisible) "Ocultar contraseña" else "Mostrar contraseña"
                    )
                }
            },
            singleLine = true,
            enabled = !isLoggingIn,
            colors = OutlinedTextFieldDefaults.colors(
                focusedBorderColor = colors.primary,
                unfocusedBorderColor = colors.onSurface.copy(alpha = 0.5f),
                errorBorderColor = colors.error,
                cursorColor = colors.primary
            )
        )

        Spacer(modifier = Modifier.height(30.dp))

        // Botón de inicio de sesión
        Button(
            modifier = Modifier
                .fillMaxWidth()
                .height(50.dp),
            shape = RoundedCornerShape(50.dp),
            onClick = onLogin,
            enabled = isLoginEnabled,
            colors = ButtonDefaults.buttonColors(
                containerColor = if (isLoginEnabled) amaniColors.textFieldContainer else colors.surfaceVariant,
                contentColor = colors.primary,
                disabledContainerColor = colors.surfaceVariant,
                disabledContentColor = colors.onSurface.copy(alpha = 0.38f)
            ),
            border = BorderStroke(
                width = 2.dp,
                color = if (isLoginEnabled) amaniColors.buttonBorder else colors.onSurface.copy(alpha = 0.38f)
            )
        ) {
            if (isLoggingIn) {
                Row(
                    horizontalArrangement = Arrangement.Center,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(20.dp),
                        strokeWidth = 2.dp,
                        color = colors.primary
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text("Iniciando sesión...", style = typography.labelLarge)
                }
            } else {
                Text("Iniciar sesión", style = typography.labelLarge)
            }
        }

        Spacer(modifier = Modifier.height(12.dp))

        // Enlace de registro
        TextButton(
            onClick = onRegisterClick,
            enabled = !isLoggingIn
        ) {
            Text(
                text = "¿No tienes cuenta? Regístrate",
                style = typography.bodyLarge,
                color = if (!isLoggingIn) colors.primary else colors.onSurface.copy(alpha = 0.38f)
            )
        }
    }
}

/**
 * Vista previa de [LoginScreen] para el panel de diseño de Android Studio.
 */
@Preview(showBackground = true, showSystemUi = true)
@Composable
fun LoginScreenPreview() {
    MaterialTheme {
        val colors = MaterialTheme.colorScheme
        val amaniColors = LocalAmaniColors.current
        val typography = MaterialTheme.typography

        LoginScreenContent(
            modifier = Modifier,
            username = "usuario@ejemplo.com",
            onUsernameChange = {},
            password = "password123",
            onPasswordChange = {},
            isLoggingIn = false,
            isLoginEnabled = true,
            onLogin = {},
            onRegisterClick = {},
            colors = colors,
            amaniColors = amaniColors,
            typography = typography
        )
    }
}