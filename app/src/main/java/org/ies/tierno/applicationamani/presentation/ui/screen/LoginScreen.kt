package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.imePadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Visibility
import androidx.compose.material.icons.filled.VisibilityOff
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
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
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.koin.androidx.compose.koinViewModel

/**
 * Pantalla de inicio de sesión de la aplicación AMANI Psicología.
 *
 * Permite al usuario autenticarse con su correo electrónico y contraseña.
 * Al iniciar sesión correctamente, redirige automáticamente a la pantalla
 * correspondiente según el rol del usuario (admin, psicólogo o paciente).
 * Incluye validación de campos, visualización de errores mediante
 * [SnackbarHost] y enlace a la pantalla de registro.
 *
 * @param navController Controlador de navegación para redirigir tras el login.
 * @param loginViewModel ViewModel que gestiona el estado de autenticación.
 */
@Composable
fun LoginScreen(
    navController: NavController,
    loginViewModel: LoginViewModel = koinViewModel(),
) {
    val username by loginViewModel.username.collectAsState()
    val password by loginViewModel.password.collectAsState()
    val loginResult by loginViewModel.loginResult.collectAsState()
    val isLoggingIn by loginViewModel.isLoggingIn.collectAsState()
    val loginError by loginViewModel.loginError.collectAsState()

    val snackbarHostState = remember { SnackbarHostState() }

    // Estados para controlar si el usuario ha interactuado con los campos
    var emailTouched by remember { mutableStateOf(false) }
    var passwordTouched by remember { mutableStateOf(false) }

    LaunchedEffect(loginError) {
        if (!loginError.isNullOrBlank()) {
            snackbarHostState.showSnackbar(
                message = loginError ?: "Error al iniciar sesión",
                duration = SnackbarDuration.Short,
            )
        }
    }

    LaunchedEffect(loginResult) {
        val result = loginResult ?: return@LaunchedEffect

        result.onSuccess { response ->
            val rol = response.rol
            val rolNormalizado =
                rol
                    .lowercase()
                    .trim()
                    .replace("o", "o")
                    .replace("a", "a")

            val destination =
                when (rolNormalizado) {
                    "admin", "administrador" -> Screens.pacientesSinPsicologo.route
                    "psicologo", "psicologa" -> Screens.psicologoHome.route
                    else -> Screens.pacienteHome.route
                }

            navController.navigate(destination) {
                popUpTo(navController.graph.startDestinationId) { inclusive = true }
                launchSingleTop = true
            }
            loginViewModel.clearLoginFields()
            loginViewModel.resetLoginState()
        }
    }

    Scaffold(
        containerColor = MaterialTheme.colorScheme.background,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) },
    ) { paddingValues ->
        LoginScreenContent(
            modifier = Modifier.padding(paddingValues),
            username = username,
            onUsernameChange = {
                loginViewModel.setUsername(it)
                emailTouched = true
            },
            password = password,
            onPasswordChange = {
                loginViewModel.setPassword(it)
                passwordTouched = true
            },
            loginViewModel = loginViewModel,
            isLoggingIn = isLoggingIn,
            isLoginEnabled = !isLoggingIn && loginViewModel.isLoginFormValid(),
            onLogin = { loginViewModel.login() },
            onRegisterClick = {
                loginViewModel.resetLoginState()
                navController.navigate(Screens.registro.route)
            },
            emailTouched = emailTouched,
            passwordTouched = passwordTouched,
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
    loginViewModel: LoginViewModel,
    isLoginEnabled: Boolean,
    onLogin: () -> Unit,
    onRegisterClick: () -> Unit,
    emailTouched: Boolean = false,
    passwordTouched: Boolean = false,
) {
    var isPasswordVisible by rememberSaveable { mutableStateOf(false) }
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Box(
        modifier =
            modifier
                .fillMaxSize()
                .background(
                    brush =
                        Brush.verticalGradient(
                            colors =
                                listOf(
                                    colorScheme.surfaceVariant.copy(alpha = 0.3f),
                                    colorScheme.surface,
                                ),
                        ),
                ),
    ) {
        Column(
            modifier =
                Modifier
                    .fillMaxSize()
                    .verticalScroll(rememberScrollState())
                    .padding(horizontal = 24.dp, vertical = 32.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
        ) {
            // Logo con elevación tonal
            Surface(
                modifier =
                    Modifier
                        .size(140.dp)
                        .imePadding(),
                shape = CircleShape,
                tonalElevation = 2.dp,
                shadowElevation = 1.dp,
            ) {
                Image(
                    painter = painterResource(id = R.drawable.logo),
                    contentDescription = "Logo de Amani Psicología",
                    modifier = Modifier.fillMaxSize(),
                )
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Nombre de la marca
            Text(
                text = "AMANI",
                style =
                    typography.displayLarge.copy(
                        fontWeight = FontWeight.Bold,
                        letterSpacing = 4.sp,
                    ),
                color = colorScheme.primary,
            )

            Text(
                text = "Psicología y Bienestar",
                style =
                    typography.titleMedium.copy(
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Medium,
                    ),
                color = colorScheme.secondary,
                modifier = Modifier.padding(bottom = 32.dp),
            )

            // Tarjeta de inicio de sesión
            Card(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .shadow(12.dp, shapes.extraLarge),
                shape = shapes.extraLarge,
                colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
                elevation = CardDefaults.cardElevation(defaultElevation = 0.dp),
            ) {
                Column(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(24.dp),
                    verticalArrangement = Arrangement.spacedBy(24.dp),
                ) {
                    // Título
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        modifier = Modifier.fillMaxWidth(),
                    ) {
                        Text(
                            text = "Bienvenido de vuelta",
                            style =
                                typography.headlineSmall.copy(
                                    fontWeight = FontWeight.Bold,
                                    color = colorScheme.onSurface,
                                ),
                        )
                        Text(
                            text = "Accede a tu espacio terapéutico",
                            style = typography.bodyMedium,
                            color = colorScheme.onSurfaceVariant,
                            textAlign = TextAlign.Center,
                        )
                    }

                    Spacer(modifier = Modifier.height(8.dp))

                    // Campo de email - solo muestra error si el usuario ha interactuado
                    OutlinedTextField(
                        modifier = Modifier.fillMaxWidth(),
                        value = username,
                        onValueChange = onUsernameChange,
                        label = {
                            Text("Correo electrónico")
                        },
                        placeholder = {
                            Text(
                                "usuario@ejemplo.com",
                                style = typography.bodyMedium,
                            )
                        },
                        isError = emailTouched && username.isNotBlank() && !username.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")),
                        supportingText = {
                            when {
                                !emailTouched && username.isBlank() -> {
                                    Text(
                                        text = "📧 Introduce tu correo electrónico",
                                        style = typography.bodySmall,
                                        color = colorScheme.onSurfaceVariant,
                                    )
                                }
                                emailTouched && username.isNotBlank() && !username.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                    Text(
                                        text = "❌ Formato de correo inválido (ej: usuario@dominio.com)",
                                        style = typography.bodySmall,
                                        color = colorScheme.error,
                                    )
                                }
                                emailTouched && username.isNotBlank() && username.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")) -> {
                                    Text(
                                        text = "✅ Correo válido",
                                        style = typography.bodySmall,
                                        color = colorScheme.primary, // Usando primary para éxito
                                    )
                                }
                            }
                        },
                        singleLine = true,
                        enabled = !isLoggingIn,
                        shape = shapes.medium,
                        colors =
                            OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colorScheme.onSurface,
                                unfocusedTextColor = colorScheme.onSurface,
                                focusedLabelColor = colorScheme.primary,
                                unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                focusedPlaceholderColor = colorScheme.onSurfaceVariant,
                                unfocusedPlaceholderColor = colorScheme.onSurfaceVariant,
                                cursorColor = colorScheme.primary,
                                focusedBorderColor = colorScheme.primary,
                                unfocusedBorderColor = colorScheme.outline,
                                errorBorderColor = colorScheme.error,
                                focusedContainerColor = colorScheme.surface,
                                unfocusedContainerColor = colorScheme.surface,
                            ),
                    )

                    // Campo de contraseña - solo muestra error si el usuario ha interactuado
                    OutlinedTextField(
                        modifier = Modifier.fillMaxWidth(),
                        value = password,
                        onValueChange = onPasswordChange,
                        label = {
                            Text("Contraseña")
                        },
                        placeholder = {
                            Text(
                                "••••••••",
                                style = typography.bodyMedium,
                            )
                        },
                        isError = passwordTouched && password.isNotBlank() && !loginViewModel.isValidPassword(password),
                        supportingText = {
                            when {
                                !passwordTouched && password.isBlank() -> {
                                    Text(
                                        text = "🔒 Introduce tu contraseña",
                                        style = typography.bodySmall,
                                        color = colorScheme.onSurfaceVariant,
                                    )
                                }
                                passwordTouched && password.isNotBlank() && !loginViewModel.isValidPassword(password) -> {
                                    Text(
                                        text = "❌ " + LoginViewModel.getPasswordErrorMessage(),
                                        style = typography.bodySmall,
                                        color = colorScheme.error,
                                    )
                                }
                                passwordTouched && password.isNotBlank() && loginViewModel.isValidPassword(password) -> {
                                    Text(
                                        text = "✅ Contraseña válida",
                                        style = typography.bodySmall,
                                        color = colorScheme.primary, // Usando primary para éxito
                                    )
                                }
                            }
                        },
                        visualTransformation = if (isPasswordVisible) VisualTransformation.None else PasswordVisualTransformation(),
                        trailingIcon = {
                            IconButton(
                                onClick = { isPasswordVisible = !isPasswordVisible },
                                enabled = !isLoggingIn,
                            ) {
                                Icon(
                                    imageVector = if (isPasswordVisible) Icons.Default.VisibilityOff else Icons.Default.Visibility,
                                    contentDescription = if (isPasswordVisible) "Ocultar contraseña" else "Mostrar contraseña",
                                    tint = colorScheme.primary,
                                )
                            }
                        },
                        singleLine = true,
                        enabled = !isLoggingIn,
                        shape = shapes.medium,
                        colors =
                            OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colorScheme.onSurface,
                                unfocusedTextColor = colorScheme.onSurface,
                                focusedLabelColor = colorScheme.primary,
                                unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                focusedPlaceholderColor = colorScheme.onSurfaceVariant,
                                unfocusedPlaceholderColor = colorScheme.onSurfaceVariant,
                                cursorColor = colorScheme.primary,
                                focusedBorderColor = colorScheme.primary,
                                unfocusedBorderColor = colorScheme.outline,
                                errorBorderColor = colorScheme.error,
                                focusedContainerColor = colorScheme.surface,
                                unfocusedContainerColor = colorScheme.surface,
                            ),
                    )

                    // Botón de inicio de sesión
                    Button(
                        modifier = Modifier.fillMaxWidth(),
                        shape = CircleShape,
                        onClick = onLogin,
                        enabled = isLoginEnabled && !isLoggingIn,
                        colors =
                            ButtonDefaults.buttonColors(
                                containerColor = colorScheme.primary,
                                contentColor = colorScheme.onPrimary,
                                disabledContainerColor = colorScheme.primary.copy(alpha = 0.5f),
                                disabledContentColor = colorScheme.onPrimary.copy(alpha = 0.7f),
                            ),
                        elevation = ButtonDefaults.buttonElevation(defaultElevation = 4.dp),
                    ) {
                        if (isLoggingIn) {
                            Row(
                                horizontalArrangement = Arrangement.Center,
                                verticalAlignment = Alignment.CenterVertically,
                            ) {
                                CircularProgressIndicator(
                                    modifier = Modifier.size(18.dp),
                                    strokeWidth = 2.dp,
                                    color = colorScheme.onPrimary,
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(
                                    "Iniciando sesión...",
                                    style = typography.labelLarge,
                                )
                            }
                        } else {
                            Text(
                                "Iniciar sesión",
                                style = typography.labelLarge,
                            )
                        }
                    }

                    // Línea divisoria
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.Center,
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Box(
                            modifier =
                                Modifier
                                    .weight(1f)
                                    .height(1.dp)
                                    .background(colorScheme.outlineVariant),
                        )
                        Text(
                            text = "¿Nuevo en AMANI?",
                            style = typography.bodySmall,
                            color = colorScheme.onSurfaceVariant,
                            modifier = Modifier.padding(horizontal = 16.dp),
                        )
                        Box(
                            modifier =
                                Modifier
                                    .weight(1f)
                                    .height(1.dp)
                                    .background(colorScheme.outlineVariant),
                        )
                    }

                    // Botón de registro
                    TextButton(
                        onClick = onRegisterClick,
                        enabled = !isLoggingIn,
                        modifier = Modifier.fillMaxWidth(),
                    ) {
                        Text(
                            text = "Crear cuenta nueva",
                            style =
                                typography.bodyLarge.copy(
                                    fontWeight = FontWeight.Medium,
                                    color = if (!isLoggingIn) colorScheme.primary else colorScheme.onSurfaceVariant,
                                ),
                        )
                    }
                }
            }

            // Texto de ayuda
            Spacer(modifier = Modifier.height(24.dp))
            Text(
                text = "💜 Tu bienestar comienza aquí",
                style = typography.bodySmall,
                color = colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center,
                modifier = Modifier.fillMaxWidth(),
            )
        }
    }
}
