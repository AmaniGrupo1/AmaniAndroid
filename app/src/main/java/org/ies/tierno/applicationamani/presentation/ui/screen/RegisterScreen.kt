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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.koin.androidx.compose.koinViewModel

@Composable
fun RegisterScreen(navController: NavController, loginViewModel: LoginViewModel = koinViewModel()) {

    var name by remember { mutableStateOf("") }
    var surname by remember { mutableStateOf("") }
    var email by remember { mutableStateOf("") }
    var password by remember { mutableStateOf("") }

    val backgroundColor = Color(0xFFCCC0E4)
    val colorButton = android.graphics.Color.parseColor("#CCC0E4")

    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght)
    )
    val balow = FontFamily(
        Font(R.font.barlow_condensed_black)
    )

    Scaffold(
        containerColor = backgroundColor
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
                style = MaterialTheme.typography.headlineSmall,
                fontFamily = balow,
                fontSize = 30.sp
            )

            Espaciado(40)

            TextField(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(Color.White),
                value = name,
                onValueChange = { name = it },
                placeholder = {
                    Text(
                        "Nombre",
                        fontFamily = roboto
                    )
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

            TextField(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(Color.White),
                value = surname,
                onValueChange = { surname = it },
                placeholder = {
                    Text(
                        "Apellido",
                        fontFamily = roboto
                    )
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
            TextField(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(Color.White),
                value = email,
                onValueChange = { email = it },
                placeholder = {
                    Text(
                        "Email",
                        fontFamily = roboto
                    )
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
            var existe by remember { mutableStateOf(true) }
            TextField(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(Color.White),
                value = password,
                onValueChange = { password = it },
                placeholder = {
                    Text(
                        "Password",
                        fontFamily = roboto
                    )
                },
                visualTransformation = if (existe) PasswordVisualTransformation() else VisualTransformation.None,
                trailingIcon = {
                    var image =
                        if (existe) Icons.Default.VisibilityOff else Icons.Default.Visibility
                    IconButton(onClick = { existe = !existe }) {
                        Image(
                            image, contentDescription = "Ver contraseña"
                        )
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
            Button(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(50.dp),
                shape = RoundedCornerShape(50.dp),
                border = BorderStroke(2.dp, Color.Black),
                onClick = {
                    loginViewModel.registrarPaciente(
                        nombre = name,
                        apellido = surname,
                        email = email,
                        password = password
                    )
                },
                colors = ButtonDefaults.buttonColors(
                    containerColor = Color.White,
                    contentColor = Color(colorButton)
                )
            ) {
                Text(
                    "Registrarse",
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 16.sp
                )
            }
            Espaciado(30)

            TextButton(onClick = { }) {
                Text(
                    "Ya tengo cuenta. Iniciar sesión",
                    fontFamily = roboto
                )
            }
        }
    }
}
