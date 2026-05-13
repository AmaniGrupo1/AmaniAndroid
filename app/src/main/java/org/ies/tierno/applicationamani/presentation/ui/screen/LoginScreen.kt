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
import androidx.compose.foundation.shape.RoundedCornerShape
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.ui.theme.ApplicationAmaniTheme
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.koin.androidx.compose.koinViewModel

// Mantenemos AmaniLoginColors para compatibilidad con el modo SYSTEM
object AmaniLoginColors {
    val Primary = Color(0xFF6B4E71)
    val PrimaryLight = Color(0xFF9B7E9F)
    val PrimaryDark = Color(0xFF4A2B50)
    val Secondary = Color(0xFFE8B4B8)
    val Accent = Color(0xFFF5E6E8)
    val Background = Color(0xFFFDF8F9)
    val Surface = Color(0xFFFFFFFF)
    val TextPrimary = Color(0xFF2D1B30)
    val TextSecondary = Color(0xFF7A6B7E)
    val Error = Color(0xFFE57373)
    val Success = Color(0xFF81C784)
}

/**
 * Pantalla de inicio de sesión profesional de AMANI Psicología.
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

    LaunchedEffect(loginError) {
        if (!loginError.isNullOrBlank()) {
            snackbarHostState.showSnackbar(
                message = loginError ?: "Error al iniciar sesión",
                duration = SnackbarDuration.Short
            )
        }
    }

    LaunchedEffect(loginResult) {
        val result = loginResult ?: return@LaunchedEffect

        result.onSuccess { response ->
            val rol = response.rol
            val rolNormalizado = rol.lowercase().trim()
                .replace("ó", "o")
                .replace("á", "a")

            val destination = when (rolNormalizado) {
                "admin", "administrador" -> Screens.pacientesSinPsicologo.route
                "psicologo", "psicologa" -> Screens.psicologoHome.route
                else -> Screens.pacienteHome.route
            }

            navController.navigate(destination) {
                popUpTo(Screens.login.route) { inclusive = true }
                launchSingleTop = true
            }
            loginViewModel.clearLoginFields()
            loginViewModel.resetLoginState()
        }
    }

    val typography = MaterialTheme.typography
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()

    Scaffold(
        containerColor = if (isDark) screenColors.background else AmaniLoginColors.Background,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) },
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
            typography = typography,
            isDarkTheme = isDark
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
    typography: androidx.compose.material3.Typography,
    isDarkTheme: Boolean = false
) {
    var isPasswordVisible by rememberSaveable { mutableStateOf(false) }
    val amaniColors = LocalAmaniColors.current

    // Determinar colores según el tema
    val loginColors = if (isDarkTheme) {
        // Modo OSCURO (Negro)
        LoginThemeColors(
            backgroundBrush = listOf(
                amaniColors.screenBackground,
                amaniColors.screenBackground
            ),
            cardContainerColor = amaniColors.cardBackground,
            textPrimary = amaniColors.cardContent,
            textSecondary = amaniColors.cardContent.copy(alpha = 0.7f),
            primary = MaterialTheme.colorScheme.primary,
            primaryLight = MaterialTheme.colorScheme.primary.copy(alpha = 0.7f),
            surface = amaniColors.cardBackground,
            error = AmaniLoginColors.Error,
            textFieldContainer = amaniColors.cardBackground,
            textFieldText = amaniColors.cardContent,
            textFieldLabel = amaniColors.cardContent.copy(alpha = 0.8f),
            textFieldBorder = amaniColors.cardBorder
        )
    } else {
        // Modo CLARO (Blanco o SYSTEM)
        // SYSTEM usa los colores originales de AmaniLoginColors
        // BLANCO usa los colores del tema claro
        LoginThemeColors(
            backgroundBrush = listOf(
                AmaniLoginColors.Accent,
                Color.White
            ),
            cardContainerColor = AmaniLoginColors.Surface,
            textPrimary = AmaniLoginColors.TextPrimary,
            textSecondary = AmaniLoginColors.TextSecondary,
            primary = AmaniLoginColors.Primary,
            primaryLight = AmaniLoginColors.PrimaryLight,
            surface = AmaniLoginColors.Surface,
            error = AmaniLoginColors.Error,
            textFieldContainer = Color.White,
            textFieldText = Color.Black,
            textFieldLabel = AmaniLoginColors.Primary,
            textFieldBorder = AmaniLoginColors.Primary
        )
    }

    Box(
        modifier = modifier
            .fillMaxSize()
            .background(
                brush = Brush.verticalGradient(colors = loginColors.backgroundBrush)
            )
    ) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .verticalScroll(rememberScrollState())
                .padding(horizontal = 24.dp, vertical = 32.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            // Logo con sombra
            Box(
                modifier = Modifier
                    .size(140.dp)
                    .imePadding()
                    .shadow(8.dp, RoundedCornerShape(70.dp))
            ) {
                Image(
                    painter = painterResource(id = R.drawable.logo),
                    contentDescription = "Logo de Amani Psicología",
                    modifier = Modifier.fillMaxSize()
                )
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Nombre de la marca
            Text(
                text = "AMANI",
                style = typography.displayLarge?.copy(
                    fontSize = 56.sp,
                    fontWeight = FontWeight.Bold,
                    letterSpacing = 4.sp
                ) ?: MaterialTheme.typography.displayLarge,
                color = loginColors.primary
            )

            Text(
                text = "Psicología y Bienestar",
                style = typography.titleMedium?.copy(
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Medium
                ) ?: MaterialTheme.typography.titleMedium,
                color = loginColors.primaryLight,
                modifier = Modifier.padding(bottom = 32.dp)
            )

            // Tarjeta de inicio de sesión
            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .shadow(12.dp, RoundedCornerShape(28.dp)),
                shape = RoundedCornerShape(28.dp),
                colors = CardDefaults.cardColors(containerColor = loginColors.cardContainerColor),
                elevation = CardDefaults.cardElevation(defaultElevation = 0.dp)
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(24.dp),
                    verticalArrangement = Arrangement.spacedBy(20.dp)
                ) {
                    // Título
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        Text(
                            text = "Bienvenido de vuelta",
                            style = typography.headlineSmall?.copy(
                                fontSize = 24.sp,
                                fontWeight = FontWeight.Bold,
                                color = loginColors.textPrimary
                            ) ?: MaterialTheme.typography.headlineSmall
                        )
                        Text(
                            text = "Accede a tu espacio terapéutico",
                            style = typography.bodyMedium?.copy(
                                fontSize = 14.sp,
                                color = loginColors.textSecondary
                            ) ?: MaterialTheme.typography.bodyMedium,
                            textAlign = TextAlign.Center
                        )
                    }

                    Spacer(modifier = Modifier.height(8.dp))

                    // Campo de email
                    OutlinedTextField(
                        modifier = Modifier.fillMaxWidth(),
                        value = username,
                        onValueChange = onUsernameChange,
                        label = {
                            Text(
                                "Correo electrónico",
                                style = typography.bodyMedium?.copy(fontSize = 14.sp)
                                    ?: MaterialTheme.typography.bodyMedium
                            )
                        },
                        placeholder = {
                            Text(
                                "usuario@amani.com",
                                style = typography.bodyMedium?.copy(fontSize = 14.sp)
                                    ?: MaterialTheme.typography.bodyMedium,
                                color = loginColors.textSecondary
                            )
                        },
                        isError = username.isNotBlank() && !username.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$")),
                        supportingText = {
                            if (username.isNotBlank() && !username.matches(Regex("^[A-Za-z0-9+_.-]+@(.+)$"))) {
                                Text(
                                    text = "Introduce un correo electrónico válido",
                                    style = typography.bodySmall?.copy(fontSize = 12.sp)
                                        ?: MaterialTheme.typography.bodySmall,
                                    color = loginColors.error
                                )
                            }
                        },
                        singleLine = true,
                        enabled = !isLoggingIn,
                        shape = RoundedCornerShape(16.dp),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = loginColors.textFieldText,
                            unfocusedTextColor = loginColors.textFieldText,
                            focusedLabelColor = loginColors.textFieldLabel,
                            unfocusedLabelColor = loginColors.textSecondary,
                            focusedPlaceholderColor = loginColors.textSecondary,
                            unfocusedPlaceholderColor = loginColors.textSecondary,
                            cursorColor = loginColors.primary,
                            focusedBorderColor = loginColors.textFieldBorder,
                            unfocusedBorderColor = loginColors.textSecondary.copy(alpha = 0.3f),
                            errorBorderColor = loginColors.error,
                            focusedContainerColor = loginColors.textFieldContainer,
                            unfocusedContainerColor = loginColors.textFieldContainer
                        )
                    )

                    // Campo de contraseña
                    OutlinedTextField(
                        modifier = Modifier.fillMaxWidth(),
                        value = password,
                        onValueChange = onPasswordChange,
                        label = {
                            Text(
                                "Contraseña",
                                style = typography.bodyMedium?.copy(fontSize = 14.sp)
                                    ?: MaterialTheme.typography.bodyMedium
                            )
                        },
                        placeholder = {
                            Text(
                                "••••••",
                                style = typography.bodyMedium?.copy(fontSize = 14.sp)
                                    ?: MaterialTheme.typography.bodyMedium,
                                color = loginColors.textSecondary
                            )
                        },
                        isError = password.isNotBlank() && password.length < 6,
                        supportingText = {
                            if (password.isNotBlank() && password.length < 6) {
                                Text(
                                    text = "La contraseña debe tener al menos 6 caracteres",
                                    style = typography.bodySmall?.copy(fontSize = 12.sp)
                                        ?: MaterialTheme.typography.bodySmall,
                                    color = loginColors.error
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
                                    contentDescription = if (isPasswordVisible) "Ocultar contraseña" else "Mostrar contraseña",
                                    tint = loginColors.primary
                                )
                            }
                        },
                        singleLine = true,
                        enabled = !isLoggingIn,
                        shape = RoundedCornerShape(16.dp),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = loginColors.textFieldText,
                            unfocusedTextColor = loginColors.textFieldText,
                            focusedLabelColor = loginColors.textFieldLabel,
                            unfocusedLabelColor = loginColors.textSecondary,
                            focusedPlaceholderColor = loginColors.textSecondary,
                            unfocusedPlaceholderColor = loginColors.textSecondary,
                            cursorColor = loginColors.primary,
                            focusedBorderColor = loginColors.textFieldBorder,
                            unfocusedBorderColor = loginColors.textSecondary.copy(alpha = 0.3f),
                            errorBorderColor = loginColors.error,
                            focusedContainerColor = loginColors.textFieldContainer,
                            unfocusedContainerColor = loginColors.textFieldContainer
                        )
                    )

                    // Botón de inicio de sesión
                    Button(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(52.dp),
                        shape = RoundedCornerShape(26.dp),
                        onClick = onLogin,
                        enabled = isLoginEnabled,
                        colors = ButtonDefaults.buttonColors(
                            containerColor = loginColors.primary,
                            contentColor = Color.White,
                            disabledContainerColor = loginColors.primaryLight.copy(alpha = 0.5f),
                            disabledContentColor = Color.White.copy(alpha = 0.7f)
                        ),
                        elevation = ButtonDefaults.buttonElevation(defaultElevation = 4.dp)
                    ) {
                        if (isLoggingIn) {
                            Row(
                                horizontalArrangement = Arrangement.Center,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                CircularProgressIndicator(
                                    modifier = Modifier.size(20.dp),
                                    strokeWidth = 2.dp,
                                    color = Color.White
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(
                                    "Iniciando sesión...",
                                    style = typography.labelLarge?.copy(fontSize = 15.sp)
                                        ?: MaterialTheme.typography.labelLarge
                                )
                            }
                        } else {
                            Text(
                                "Iniciar sesión",
                                style = typography.labelLarge?.copy(
                                    fontSize = 16.sp,
                                    fontWeight = FontWeight.Medium
                                ) ?: MaterialTheme.typography.labelLarge
                            )
                        }
                    }

                    // Línea divisoria
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.Center,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Box(
                            modifier = Modifier
                                .weight(1f)
                                .height(1.dp)
                                .background(loginColors.textSecondary.copy(alpha = 0.2f))
                        )
                        Text(
                            text = "¿Nuevo en AMANI?",
                            style = typography.bodySmall?.copy(
                                fontSize = 12.sp,
                                color = loginColors.textSecondary
                            ) ?: MaterialTheme.typography.bodySmall,
                            modifier = Modifier.padding(horizontal = 16.dp)
                        )
                        Box(
                            modifier = Modifier
                                .weight(1f)
                                .height(1.dp)
                                .background(loginColors.textSecondary.copy(alpha = 0.2f))
                        )
                    }

                    // Botón de registro
                    TextButton(
                        onClick = onRegisterClick,
                        enabled = !isLoggingIn,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        Text(
                            text = "Crear cuenta nueva",
                            style = typography.bodyLarge?.copy(
                                fontSize = 15.sp,
                                fontWeight = FontWeight.Medium,
                                color = if (!isLoggingIn) loginColors.primary else loginColors.textSecondary
                            ) ?: MaterialTheme.typography.bodyLarge
                        )
                    }
                }
            }

            // Texto de ayuda
            Spacer(modifier = Modifier.height(24.dp))
            Text(
                text = "💜 Tu bienestar comienza aquí",
                style = typography.bodySmall?.copy(
                    fontSize = 12.sp,
                    color = loginColors.textSecondary,
                    textAlign = TextAlign.Center
                ) ?: MaterialTheme.typography.bodySmall,
                modifier = Modifier.fillMaxWidth()
            )
        }
    }
}

// Clase auxiliar para los colores del tema de login
data class LoginThemeColors(
    val backgroundBrush: List<Color>,
    val cardContainerColor: Color,
    val textPrimary: Color,
    val textSecondary: Color,
    val primary: Color,
    val primaryLight: Color,
    val surface: Color,
    val error: Color,
    val textFieldContainer: Color,
    val textFieldText: Color,
    val textFieldLabel: Color,
    val textFieldBorder: Color
)