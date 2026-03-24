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
import androidx.lifecycle.viewmodel.compose.viewModel
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
 * expone [StateFlow]s observados con `collectAsState`.
 *
 * Utiliza los colores del tema ([MaterialTheme.colorScheme]) y los colores
 * extra de Amani ([LocalAmaniColors]) para mantener coherencia visual.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param loginViewModel ViewModel que mantiene el estado del formulario.
 *
 * @see LoginViewModel
 * @see RegisterScreen
 */
@Composable
fun LoginScreen(navController: NavController, loginViewModel: LoginViewModel = viewModel()) {

    val username by loginViewModel.username.collectAsState()
    val password by loginViewModel.password.collectAsState()
    val loginResult by loginViewModel.loginResult.collectAsState()
    val isLoggingIn by loginViewModel.isLoggingIn.collectAsState()

    val colors = MaterialTheme.colorScheme
    val amaniColors = LocalAmaniColors.current
    val typography = MaterialTheme.typography
    val snackbarHostState = remember { SnackbarHostState() }

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
        }.onFailure { error ->
            snackbarHostState.showSnackbar(
                message = error.message ?: "No se pudo iniciar sesion"
            )
            loginViewModel.resetLoginState()
        }
    }

    Scaffold(
        containerColor = amaniColors.screenBackground,
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) }
    ) { padding ->
        Column(
            modifier = Modifier
                .padding(padding)
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
                onValueChange = {
                    loginViewModel.setUsername(it)
                },
                label = { Text("Usuario",
                    style = typography.bodyLarge) },
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
                onValueChange = {
                    loginViewModel.setPassword(it)
                },
                label = { Text("Contraseña",
                    style = typography.bodyLarge) },
                visualTransformation = if (existe) PasswordVisualTransformation() else VisualTransformation.None,
                trailingIcon = {
                    val image = if (existe) Icons.Default.VisibilityOff else Icons.Default.Visibility
                    IconButton(onClick = { existe = !existe }) {
                        Image(
                            image, contentDescription = "Ver contraseña"
                        )
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
                onClick = {
                    loginViewModel.login()
                },
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
                    Text(
                        "Iniciar sesión",
                        style = typography.labelLarge
                    )
                }
            }

            Espaciado(12)

            TextButton(onClick = { navController.navigate(Screens.registro.route) }) {
                Text("No tengo cuenta. Quiero registrame",
                    style = typography.bodyLarge)
            }
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
    LoginScreen(rememberNavController())
}
