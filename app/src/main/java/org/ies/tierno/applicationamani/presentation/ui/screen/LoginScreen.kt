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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel

@Composable
fun LoginScreen(navController: NavController, loginViewModel: LoginViewModel = viewModel()) {

    val username by loginViewModel.username.collectAsState()
    val password by loginViewModel.password.collectAsState()

    val backgroundColor = Color(0xFFCCC0E4)
    val colorButton = android.graphics.Color.parseColor("#CCC0E4")

    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght)
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
                    .background(Color.White),
                value = username,
                onValueChange = {
                    loginViewModel.setUsername(it)
                },
                label = { Text("Usuario",
                    fontFamily = roboto) },
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
                onValueChange = {
                    loginViewModel.setPassword(it)
                },
                label = { Text("Contraseña",
                    fontFamily = roboto) },
                visualTransformation = if (existe) PasswordVisualTransformation() else VisualTransformation.None,
                trailingIcon = {
                    var image = if (existe) Icons.Default.VisibilityOff else Icons.Default.Visibility
                            IconButton(onClick = {existe=!existe}) {
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
                onClick = {

                },
                border = BorderStroke(2.dp, Color.Black),
                colors = ButtonDefaults.buttonColors(
                    containerColor = Color.White,
                    contentColor = Color(colorButton),

                    )
            ) {
                Text(
                    "Iniciar sesión",
                    fontSize = 16.sp,
                    fontFamily = roboto
                )
            }

            Espaciado(12)

            TextButton(onClick = { }) {
                Text("No tengo cuenta. Quiero registrame",
                    fontFamily = roboto)
            }
        }
    }
}

@Composable
fun Espaciado(espacio : Int){
    Spacer(modifier = Modifier.height(espacio.dp))
}

@Preview(showBackground = true)
@Composable
fun LoginScreenPreview() {
    LoginScreen(rememberNavController())
}