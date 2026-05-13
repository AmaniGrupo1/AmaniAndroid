package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView


import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Visibility
import androidx.compose.material.icons.filled.VisibilityOff
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.material3.TextFieldDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.ui.theme.BarlowCondensed
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.ies.tierno.applicationamani.ui.theme.Roboto
import org.ies.tierno.applicationamani.ui.theme.rememberAdminThemeTokens


/**
 * Pantalla de registro de un nuevo administrador.
 *
 * Muestra un formulario con campos de nombre, apellido, email y contraseña.
 * Al pulsar «Registrarse administrador» se invoca [LoginViewModel.registrarAdmin].
 *
 * @param navController Controlador de navegación.
 * @param loginViewModel ViewModel compartido que gestiona los campos y la acción de registro.
 */
@Composable
fun AgregarAdministrador(
    navController: NavController,
    loginViewModel: LoginViewModel
) {

    var currentRoute by remember { mutableStateOf("pacientes") }

    val tokens = rememberAdminThemeTokens()
    val amani = LocalAmaniColors.current

    val roboto = Roboto
    val balow = BarlowCondensed

    // --- Recoger los estados del ViewModel ---
    val name by loginViewModel.nombre.collectAsState()
    val surname by loginViewModel.apellido.collectAsState()
    val email by loginViewModel.email.collectAsState()
    val password by loginViewModel.regPassword.collectAsState()

    var existe by remember { mutableStateOf(true) } // visibilidad password sigue en UI

    Scaffold(
        containerColor = tokens.screenBackground,
        topBar = {
            MenuAdministrador( "Agregar administrador",navController)
        }
    ) { padding ->

        Column(
            modifier = Modifier
                .padding(padding)
                .fillMaxSize()
                .padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {

            Spacer(modifier = Modifier.height(40.dp))

            // Nombre
            TextField(
                modifier = Modifier
                    .fillMaxWidth(),
                value = name,
                onValueChange = { loginViewModel.setNombre(it) },
                placeholder = { Text("Nombre", fontFamily = roboto, color = amani.cardContent.copy(alpha = 0.6f)) },
                singleLine = true,
                colors = TextFieldDefaults.colors(
                    focusedContainerColor = tokens.cardBackground,
                    unfocusedContainerColor = tokens.cardBackground,
                    focusedIndicatorColor = tokens.primary,
                    cursorColor = tokens.primary,
                    focusedTextColor = tokens.cardContent,
                    unfocusedTextColor = tokens.cardContent
                )
            )

            Spacer(modifier = Modifier.height(30.dp))

            // Apellido
            TextField(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(Color.White),
                value = surname,
                onValueChange = { loginViewModel.setApellido(it) },
                placeholder = { Text("Apellido", fontFamily = roboto) },
                singleLine = true,
                colors = TextFieldDefaults.colors(
                    focusedContainerColor = Color.White,
                    unfocusedContainerColor = Color.White,
                    focusedIndicatorColor = Color.Black,
                    cursorColor = Color.Black
                )
            )

            Spacer(modifier = Modifier.height(30.dp))

            // Email
            TextField(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(Color.White),
                value = email,
                onValueChange = { loginViewModel.setEmail(it) },
                placeholder = { Text("Email", fontFamily = roboto) },
                singleLine = true,
                colors = TextFieldDefaults.colors(
                    focusedContainerColor = Color.White,
                    unfocusedContainerColor = Color.White,
                    focusedIndicatorColor = Color.Black,
                    cursorColor = Color.Black
                )
            )

            Spacer(modifier = Modifier.height(30.dp))
            // Password
            TextField(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(Color.White),
                value = password,
                onValueChange = { loginViewModel.setRegPassword(it) },
                placeholder = { Text("Password", fontFamily = roboto) },
                visualTransformation = if (existe) PasswordVisualTransformation() else VisualTransformation.None,
                trailingIcon = {
                    val image = if (existe) Icons.Default.VisibilityOff else Icons.Default.Visibility
                    IconButton(onClick = { existe = !existe }) {
                        Icon(imageVector = image, contentDescription = "Ver contraseña")
                    }
                },
                singleLine = true,
                colors = TextFieldDefaults.colors(
                    focusedContainerColor = Color.White,
                    unfocusedContainerColor = Color.White,
                    focusedIndicatorColor = Color.Black,
                    cursorColor = Color.Black
                )
            )

            Spacer(modifier = Modifier.height(30.dp))

            // Botón Registrar
            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                shape = RoundedCornerShape(50.dp),
                border = BorderStroke(2.dp, tokens.cardContent),
                onClick = { loginViewModel.registrarAdmin() },
                colors = ButtonDefaults.buttonColors(
                    containerColor = tokens.primary,
                    contentColor = tokens.onPrimary
                )
            ) {
                Text(
                    "Registrarse administrador",
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 16.sp
                )
            }

            Spacer(modifier = Modifier.height(30.dp))

            // Botón Cancelar
            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                shape = RoundedCornerShape(50.dp),
                border = BorderStroke(2.dp, Color.Black),
                onClick = { navController.popBackStack() },
                colors = ButtonDefaults.buttonColors(
                    containerColor = tokens.cardBackground,
                    contentColor = tokens.cardContent
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