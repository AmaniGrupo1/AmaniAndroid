package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView


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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.ui.componente.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.ui.screen.Espaciado
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.koin.androidx.compose.koinViewModel

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

    val backgroundColor = Color(0xFFCCC0E4)
    val colorButton = android.graphics.Color.parseColor("#CCC0E4")

    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val balow = FontFamily(Font(R.font.barlow_condensed_black))

    // --- Recoger los estados del ViewModel ---
    val name by loginViewModel.nombre.collectAsState()
    val surname by loginViewModel.apellido.collectAsState()
    val email by loginViewModel.email.collectAsState()
    val password by loginViewModel.regPassword.collectAsState()

    var existe by remember { mutableStateOf(true) } // visibilidad password sigue en UI

    Scaffold(
        containerColor = backgroundColor,
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

            Espaciado(40)

            // Nombre
            TextField(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(Color.White),
                value = name,
                onValueChange = { loginViewModel.setNombre(it) },
                placeholder = { Text("Nombre", fontFamily = roboto) },
                singleLine = true,
                colors = TextFieldDefaults.colors(
                    focusedContainerColor = Color.White,
                    unfocusedContainerColor = Color.White,
                    focusedIndicatorColor = Color.Black,
                    cursorColor = Color.Black
                )
            )

            Espaciado(30)

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

            Espaciado(30)

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

            Espaciado(30)

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

            Espaciado(30)

            // Botón Registrar
            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                shape = RoundedCornerShape(50.dp),
                border = BorderStroke(2.dp, Color.Black),
                onClick = { loginViewModel.registrarAdmin() },
                colors = ButtonDefaults.buttonColors(
                    containerColor = Color.White,
                    contentColor = Color(colorButton)
                )
            ) {
                Text(
                    "Registrarse administrador",
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 16.sp
                )
            }

            Espaciado(30)

            // Botón Cancelar
            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                shape = RoundedCornerShape(50.dp),
                border = BorderStroke(2.dp, Color.Black),
                onClick = { navController.popBackStack() },
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