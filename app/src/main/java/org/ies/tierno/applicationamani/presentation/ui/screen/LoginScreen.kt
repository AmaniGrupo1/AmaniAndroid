package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.compose.foundation.Image
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.koin.compose.viewmodel.koinViewModel

@Composable
fun LoginScreen(navController: NavController,
                loginViewModel: LoginViewModel = koinViewModel()) {

    val username by loginViewModel.username.collectAsState()
    val password by loginViewModel.password.collectAsState()
    val loginResult by loginViewModel.loginResult.collectAsState()

    var passwordVisible by remember { mutableStateOf(false) }

    val backgroundColor = Color(0xFFCCC0E4)
    val colorButton = Color(0xFFCCC0E4)

    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght)
    )

    // Manejo del login
    loginResult?.let { result ->
        result.onSuccess { user ->
            // Navegar según rol
            when(user.rol.lowercase()) {
                "admin" -> navController.navigate(Screens.adminHome.route)
                "psicologo" -> navController.navigate(Screens.psicologoHome.route)
                "paciente" -> navController.navigate(Screens.pacienteHome.route)
            }
        }.onFailure {
            // Aquí puedes mostrar un snackbar o mensaje de error
            println("Error al iniciar sesión: ${it.message}")
        }
    }

    Scaffold(containerColor = backgroundColor) { padding ->
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
                value = username,
                onValueChange = loginViewModel::setUsername,
                label = { Text("Usuario", fontFamily = roboto) },
                modifier = Modifier.fillMaxWidth(),
                colors = TextFieldDefaults.colors(
                    focusedContainerColor = Color.White,
                    unfocusedContainerColor = Color.White
                )
            )

            Espaciado(30)

            TextField(
                value = password,
                onValueChange = loginViewModel::setPassword,
                label = { Text("Contraseña", fontFamily = roboto) },
                visualTransformation = if (passwordVisible) VisualTransformation.None else PasswordVisualTransformation(),
                trailingIcon = {
                    IconButton(onClick = { passwordVisible = !passwordVisible }) {
                        Icon(
                            imageVector = if (passwordVisible) Icons.Default.Visibility else Icons.Default.VisibilityOff,
                            contentDescription = "Ver contraseña"
                        )
                    }
                },
                modifier = Modifier.fillMaxWidth(),
                colors = TextFieldDefaults.colors(
                    focusedContainerColor = Color.White,
                    unfocusedContainerColor = Color.White
                )
            )

            Espaciado(30)

            Button(
                onClick = { loginViewModel.login() },
                modifier = Modifier.fillMaxWidth().height(50.dp),
                shape = RoundedCornerShape(50.dp),
                colors = ButtonDefaults.buttonColors(
                    containerColor = Color.White,
                    contentColor = colorButton
                )
            ) {
                Text(
                    "Iniciar sesión",
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 16.sp
                )
            }

            Espaciado(12)

            TextButton(onClick = { navController.navigate("registro") }) {
                Text("No tengo cuenta. Quiero registrarme", fontFamily = roboto)
            }
        }
    }
}


@Composable
fun Espaciado(espacio : Int){
    Spacer(modifier = Modifier.height(espacio.dp))
}

