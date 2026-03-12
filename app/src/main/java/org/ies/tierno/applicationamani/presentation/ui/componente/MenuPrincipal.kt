package org.ies.tierno.applicationamani.presentation.ui.componente

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material.icons.filled.ArrowDropUp
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MenuPrincipal(navController: NavController) {

    var expanded by remember { mutableStateOf(false) }

    val primaryBlue = Color(android.graphics.Color.parseColor("#CCC0E4"))
    val white = Color.White
    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght)
    )

    TopAppBar(
        modifier = Modifier.shadow(elevation = 8.dp),

        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = primaryBlue,
            titleContentColor = white
        ),

        // LOGO A LA IZQUIERDA
        navigationIcon = {
            Image(
                painter = painterResource(id = R.drawable.logo_original),
                contentDescription = "Logo",
                modifier = Modifier.size(40.dp)
            )
        },

        title = { }, // vacío porque usamos solo el logo

        actions = {

            IconButton(
                onClick = { expanded = !expanded }
            ) {
                val imagen = if (expanded) Icons.Default.ArrowDropDown else Icons.Default.ArrowDropUp
                Icon(
                    imagen, contentDescription = "Desplegue", tint = Color.Black
                )
            }

            DropdownMenu(
                expanded = expanded,
                onDismissRequest = { expanded = false }
            ) {

                DropdownMenuItem(
                    text = { Text("Inicia sesión",
                        fontFamily = roboto,
                        fontWeight = FontWeight.Bold,
                        fontSize = 16.sp) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.login.route)
                    }
                )

                DropdownMenuItem(
                    text = { Text("Regístrate",
                        fontFamily = roboto,
                        fontWeight = FontWeight.Bold,
                        fontSize = 16.sp) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.registro.route)
                    }
                )

//                DropdownMenuItem(
//                    text = { Text("Más Info",
//                        fontFamily = roboto,
//                        fontWeight = FontWeight.Bold,
//                        fontSize = 16.sp) },
//                    onClick = {
//                        expanded = false
//                        navController.navigate("info")
//                    }
//                )

//                DropdownMenuItem(
//                    text = { Text("Política de privacidad",
//                        fontFamily = roboto,
//                        fontWeight = FontWeight.Bold,
//                        fontSize = 16.sp) },
//                    onClick = {
//                        expanded = false
//                        navController.navigate("privacidad")
//                    }
//                )

                DropdownMenuItem(
                    text = { Text("Volver a la principal",
                        fontFamily = roboto,
                        fontWeight = FontWeight.Bold,
                        fontSize = 16.sp) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.principal.route)
                    }
                )
            }
        }
    )
}

@Composable
@Preview(showBackground = true)
fun MenuPrincipalPreview() {
    MenuPrincipal(rememberNavController())
}

