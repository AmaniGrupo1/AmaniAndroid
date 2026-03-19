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
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors

/**
 * Pantalla de registro de nuevos usuarios en la aplicación Amani.
 *
 * Presenta un formulario con campos de nombre, apellido, email y contraseña,
 * un botón de «Registrarse» y un enlace para volver al inicio de sesión.
 *
 * El fondo, los campos de texto y los botones obtienen sus colores desde
 * [MaterialTheme.colorScheme] y [LocalAmaniColors], y la tipografía desde
 * [MaterialTheme.typography].
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 *
 * @see LoginScreen
 */
@Composable
fun RegisterScreen(navController: NavController) {

    var name by remember { mutableStateOf("") }
    var surname by remember { mutableStateOf("") }
    var email by remember { mutableStateOf("") }
    var password by remember { mutableStateOf("") }

    val colors = MaterialTheme.colorScheme
    val amaniColors = LocalAmaniColors.current
    val typography = MaterialTheme.typography

    Scaffold(
        containerColor = amaniColors.screenBackground
    ) { padding ->

        Column(
            modifier = Modifier
                .padding(padding)
                .fillMaxSize()
                .padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {

            Text(
                text = "Crear cuenta",
                style = typography.headlineMedium
            )

            Espaciado(40)

            TextField(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(amaniColors.textFieldContainer),
                value = name,
                onValueChange = { name = it },
                placeholder = { Text("Nombre",
                    style = typography.bodyLarge) },
                singleLine = true,
                colors = TextFieldDefaults.colors(
                    focusedContainerColor = amaniColors.textFieldContainer,
                    unfocusedContainerColor = amaniColors.textFieldContainer,
                    focusedIndicatorColor = colors.onSurface,
                    cursorColor = colors.onSurface
                )
            )
            Espaciado(30)

            TextField(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(amaniColors.textFieldContainer),
                value = surname,
                onValueChange = { surname = it },
                placeholder = { Text("Surname",
                    style = typography.bodyLarge) },
                singleLine = true,
                colors = TextFieldDefaults.colors(
                    focusedContainerColor = amaniColors.textFieldContainer,
                    unfocusedContainerColor = amaniColors.textFieldContainer,
                    focusedIndicatorColor = colors.onSurface,
                    cursorColor = colors.onSurface
                )
            )

            Espaciado(30)

            TextField(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(amaniColors.textFieldContainer),
                value = email,
                onValueChange = { email = it },
                placeholder = { Text("Email",
                    style = typography.bodyLarge) },
                singleLine = true,
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
                onValueChange = { password = it },
                placeholder = { Text("Password",
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
                border = BorderStroke(2.dp, amaniColors.buttonBorder),
                onClick = {

                },
                colors = ButtonDefaults.buttonColors(
                    containerColor = amaniColors.textFieldContainer,
                    contentColor = colors.primary
                )
            ) {
                Text(
                    "Registrarse",
                    style = typography.labelLarge
                )
            }

            Espaciado(30)

            TextButton(onClick = { }) {
                Text("Ya tengo cuenta. Iniciar sesión",
                    style = typography.bodyLarge)
            }

        }
    }
}

/**
 * Vista previa de [RegisterScreen] para el panel de diseño de Android Studio.
 */
@Preview(showBackground = true)
@Composable
fun RegisterScreenPreview() {
    RegisterScreen(rememberNavController())
}