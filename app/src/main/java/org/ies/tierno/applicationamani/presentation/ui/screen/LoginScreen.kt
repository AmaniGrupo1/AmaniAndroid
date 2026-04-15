package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Visibility
import androidx.compose.material.icons.filled.VisibilityOff
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ColorScheme
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.Typography
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.ui.theme.ApplicationAmaniTheme
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.koin.androidx.compose.koinViewModel

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
    userSessionDataStore: UserSessionDataStore,
    loginViewModel: LoginViewModel = koinViewModel()
) {
    val username by loginViewModel.username.collectAsState()
    val password by loginViewModel.password.collectAsState()
    val loginResult by loginViewModel.loginResult.collectAsState()
    val isLoggingIn by loginViewModel.isLoggingIn.collectAsState()
    val loginError by loginViewModel.loginError.collectAsState()

    val snackbarHostState = remember { SnackbarHostState() }

    // Efecto para mostrar errores de login en Snackbar
    LaunchedEffect(loginError) {
        if (!loginError.isNullOrBlank()) {
            snackbarHostState.showSnackbar(
                message = loginError ?: "Error al iniciar sesión",
                duration = SnackbarDuration.Short
            )
        }
    }

    // Efecto para reaccionar al resultado del login y navegar cuando sea correcto
    LaunchedEffect(loginResult) {
        val result = loginResult ?: return@LaunchedEffect

        result.onSuccess { response ->
            userSessionDataStore.saveSession(
                UserSession(
                    idUsuario = response.idUsuario,
                    nombre = response.nombre,
                    rol = response.rol,
                    idPaciente = response.idPaciente,
                    idPsicologo = response.idPsicologo
                )
            )

            val rol = response.rol
            val rolNormalizado = rol.lowercase().trim()
                .replace("ó", "o")
                .replace("á", "a")

            val destination = when (rolNormalizado) {
                "admin", "administrador" -> Screens.adminHome.route
                "psicologo", "psicologa" -> Screens.psicologoHome.route
                else -> Screens.pacienteHome.createRoute(response.idPaciente ?: 0L)
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
    var isPasswordVisible by rememberSaveable { mutableStateOf(false) }

    Column(
        modifier = modifier
            .fillMaxSize()
            .padding(horizontal = 24.dp, vertical = 20.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(20.dp)
    ) {
        Image(
            painter = painterResource(id = R.drawable.logo),
            contentDescription = "Logo de Amani",
            modifier = Modifier.size(180.dp),
            alpha = 1f
        )

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.large,
            colors = CardDefaults.cardColors(containerColor = colors.surface),
            elevation = CardDefaults.cardElevation(defaultElevation = 6.dp)
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(20.dp),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                Text(
                    text = "Iniciar sesión",
                    style = typography.titleLarge,
                    color = colors.onSurface
                )
                Text(
                    text = "Accede a tu espacio terapéutico",
                    style = typography.bodyMedium,
                    color = colors.onSurfaceVariant
                )

                OutlinedTextField(
                    modifier = Modifier.fillMaxWidth(),
                    value = username,
                    onValueChange = onUsernameChange,
                    label = { Text("Correo electrónico", style = typography.bodyMedium) },
                    placeholder = { Text("usuario@ejemplo.com") },
                    isError = username.isNotBlank() && !username.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")),
                    supportingText = {
                        if (username.isNotBlank() && !username.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$"))) {
                            Text(
                                text = "Introduce un correo electrónico válido",
                                style = typography.bodySmall,
                                color = colors.error
                            )
                        }
                    },
                    singleLine = true,
                    enabled = !isLoggingIn,
                    shape = MaterialTheme.shapes.medium,
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = colors.primary,
                        unfocusedBorderColor = colors.outline,
                        errorBorderColor = colors.error,
                        cursorColor = colors.primary,
                        focusedContainerColor = amaniColors.textFieldContainer,
                        unfocusedContainerColor = amaniColors.textFieldContainer
                    )
                )

                OutlinedTextField(
                    modifier = Modifier.fillMaxWidth(),
                    value = password,
                    onValueChange = onPasswordChange,
                    label = { Text("Contraseña", style = typography.bodyMedium) },
                    placeholder = { Text("••••••") },
                    isError = password.isNotBlank() && password.length < 6,
                    supportingText = {
                        if (password.isNotBlank() && password.length < 6) {
                            Text(
                                text = "La contraseña debe tener al menos 6 caracteres",
                                style = typography.bodySmall,
                                color = colors.error
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
                    shape = MaterialTheme.shapes.medium,
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = colors.primary,
                        unfocusedBorderColor = colors.outline,
                        errorBorderColor = colors.error,
                        cursorColor = colors.primary,
                        focusedContainerColor = amaniColors.textFieldContainer,
                        unfocusedContainerColor = amaniColors.textFieldContainer
                    )
                )

                Button(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(52.dp),
                    shape = MaterialTheme.shapes.medium,
                    onClick = onLogin,
                    enabled = isLoginEnabled,
                    colors = ButtonDefaults.buttonColors(
                        containerColor = colors.primary,
                        contentColor = colors.onPrimary,
                        disabledContainerColor = colors.surfaceVariant,
                        disabledContentColor = colors.onSurfaceVariant
                    ),
                    border = BorderStroke(1.dp, amaniColors.buttonBorder)
                ) {
                    if (isLoggingIn) {
                        Row(
                            horizontalArrangement = Arrangement.Center,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(18.dp),
                                strokeWidth = 2.dp,
                                color = colors.onPrimary
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text("Iniciando sesión...", style = typography.labelLarge)
                        }
                    } else {
                        Text("Iniciar sesión", style = typography.labelLarge)
                    }
                }
            }
        }

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
    ApplicationAmaniTheme {
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
