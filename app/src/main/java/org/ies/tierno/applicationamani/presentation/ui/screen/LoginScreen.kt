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
fun LoginScreen(navController: NavController, loginViewModel: LoginViewModel = koinViewModel()) {

    val username by loginViewModel.username.collectAsState()
    val password by loginViewModel.password.collectAsState()
    val loginResult by loginViewModel.loginResult.collectAsState()
    val isLoggingIn by loginViewModel.isLoggingIn.collectAsState()

    val snackbarHostState = remember { SnackbarHostState() }

    // Efecto para reaccionar al resultado del login y navegar cuando sea correcto
    LaunchedEffect(loginResult) {
        val result = loginResult ?: return@LaunchedEffect
        result.onSuccess { response ->
            val rol = response.usuario?.rol
            val rolNormalizado = rol?.lowercase()?.trim()
                ?.replace("ó", "o")
                ?.replace("á", "a")
                
            val destination = when (rolNormalizado) {
                "admin", "administrador" -> Screens.adminHome.route
                "psicologo", "psicologa" -> Screens.psicologoHome.route
                else -> Screens.pacienteHome.route
            }
            
            loginViewModel.clearLoginFields()
            loginViewModel.resetLoginState()
            navController.navigate(destination) {
                popUpTo(Screens.login.route) { inclusive = true }
                launchSingleTop = true
            }
        }.onFailure { error ->
            snackbarHostState.showSnackbar(
                message = error.message ?: "No se pudo iniciar sesion"
            )
            loginViewModel.resetLoginState()
        }
    }

    val colors = MaterialTheme.colorScheme
    val amaniColors = LocalAmaniColors.current
    val typography = MaterialTheme.typography

    Scaffold(
        containerColor = amaniColors.screenBackground,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) }
    ) { padding ->
        LoginScreenContent(
            modifier = Modifier.padding(padding),
            username = username,
            onUsernameChange = { loginViewModel.setUsername(it) },
            password = password,
            onPasswordChange = { loginViewModel.setPassword(it) },
            isLoggingIn = isLoggingIn,
            onLogin = { loginViewModel.login() },
            onRegisterClick = { navController.navigate(Screens.registro.route) },
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
    onLogin: () -> Unit,
    onRegisterClick: () -> Unit,
    colors: ColorScheme,
    amaniColors: org.ies.tierno.applicationamani.ui.theme.AmaniExtraColors,
    typography: Typography
) {
    Column(
        modifier = modifier
            .fillMaxSize()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {

        Image(
            painter = painterResource(id = R.drawable.logo),
            contentDescription = "Logo",
            modifier = Modifier.size(250.dp),
            alpha = 1f
        )

        Espaciado(40)

        TextField(
            modifier = Modifier
                .fillMaxWidth()
                .background(amaniColors.textFieldContainer),
            value = username,
            onValueChange = onUsernameChange,
            label = { Text("Usuario", style = typography.bodyLarge) },
            colors = TextFieldDefaults.colors(
                focusedContainerColor = amaniColors.textFieldContainer,
                unfocusedContainerColor = amaniColors.textFieldContainer,
                focusedIndicatorColor = colors.onSurface,
                cursorColor = colors.onSurface
            )
        )

        Espaciado(30)

        var existe by remember { mutableStateOf(true) }
        TextField(
            modifier = Modifier
                .fillMaxWidth()
                .background(amaniColors.textFieldContainer),
            value = password,
            onValueChange = onPasswordChange,
            label = { Text("Contraseña", style = typography.bodyLarge) },
            visualTransformation = if (existe) PasswordVisualTransformation() else VisualTransformation.None,
            trailingIcon = {
                val image = if (existe) Icons.Default.VisibilityOff else Icons.Default.Visibility
                IconButton(onClick = { existe = !existe }) {
                    Image(image, contentDescription = "Ver contraseña")
                }
            },
            singleLine = true,
            colors = TextFieldDefaults.colors(
                focusedContainerColor = amaniColors.textFieldContainer,
                unfocusedContainerColor = amaniColors.textFieldContainer,
                focusedIndicatorColor = colors.onSurface,
                cursorColor = colors.onSurface
            )
        )

        Espaciado(30)

        Button(
            modifier = Modifier
                .fillMaxWidth()
                .height(50.dp),
            shape = RoundedCornerShape(50.dp),
            onClick = onLogin,
            enabled = !isLoggingIn && username.isNotBlank() && password.isNotBlank(),
            border = BorderStroke(2.dp, amaniColors.buttonBorder),
            colors = ButtonDefaults.buttonColors(
                containerColor = amaniColors.textFieldContainer,
                contentColor = colors.primary,
            )
        ) {
            if (isLoggingIn) {
                CircularProgressIndicator(
                    modifier = Modifier.size(20.dp),
                    strokeWidth = 2.dp,
                    color = colors.primary
                )
            } else {
                Text("Iniciar sesión", style = typography.labelLarge)
            }
        }

        Espaciado(12)

        TextButton(onClick = onRegisterClick) {
            Text("No tengo cuenta. Quiero registrame", style = typography.bodyLarge)
        }
    }
}

/**
 * Composable utilitario que inserta un [Spacer] vertical.
 *
 * Facilita la creación de separaciones verticales sin repetir
 * `Spacer(modifier = Modifier.height(...))` en cada pantalla.
 *
 * @param espacio Altura del espaciado en dp.
 */
@Composable
fun Espaciado(espacio : Int){
    Spacer(modifier = Modifier.height(espacio.dp))
}

/**
 * Vista previa de [LoginScreen] para el panel de diseño de Android Studio.
 */
@Preview(showBackground = true)
@Composable
fun LoginScreenPreview() {
    // Usar el contenido directamente con valores de ejemplo para que la preview no dependa de Koin
    val colors = MaterialTheme.colorScheme
    val amaniColors = LocalAmaniColors.current
    val typography = MaterialTheme.typography

    LoginScreenContent(
        modifier = Modifier,
        username = "usuario@example.com",
        onUsernameChange = {},
        password = "password",
        onPasswordChange = {},
        isLoggingIn = false,
        onLogin = {},
        onRegisterClick = {},
        colors = colors,
        amaniColors = amaniColors,
        typography = typography
    )
}
