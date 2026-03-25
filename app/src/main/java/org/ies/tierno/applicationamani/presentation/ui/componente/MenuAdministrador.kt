package org.ies.tierno.applicationamani.presentation.ui.componente

import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material.icons.filled.ArrowDropUp
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MenuAdministrador(title: String, navController: NavController) {

    var expanded by remember { mutableStateOf(false) }

    val primaryBlue = Color(android.graphics.Color.parseColor("#CCC0E4"))
    val white = Color.White
    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght)
    )

    val balow = FontFamily(Font(R.font.barlow_condensed_black))

    TopAppBar(
        modifier = Modifier.shadow(elevation = 8.dp),

        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = primaryBlue,
            titleContentColor = white
        ),

        // LOGO A LA IZQUIERDA
//        navigationIcon = {
//            Image(
//                painter = painterResource(id = R.drawable.logo_original),
//                contentDescription = "Logo",
//                modifier = Modifier.size(40.dp)
//            )
//        },

        title = {
            Text(
                title,
                fontFamily = balow,
                style = MaterialTheme.typography.headlineSmall,
                fontSize = 30.sp,
            )
        }, // vacío porque usamos solo el logo

        actions = {

            IconButton(
                onClick = { expanded = !expanded }
            ) {
                Icon(
                    Icons.Default.Menu,
                    contentDescription = "Menu"
                )
            }

            DropdownMenu(
                expanded = expanded,
                onDismissRequest = { expanded = false }
            ) {

                DropdownMenuItem(
                    text = {
                        Text(
                            "Registrar psicologo",
                            fontFamily = roboto,
                            fontWeight = FontWeight.Bold,
                            fontSize = 16.sp
                        )
                    },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.agregarPsicologo.route)
                    }
                )

                DropdownMenuItem(
                    text = { Text("Test",
                        fontFamily = roboto,
                        fontWeight = FontWeight.Bold,
                        fontSize = 16.sp) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.test.route)
                    }
                )

                DropdownMenuItem(
                    text = { Text("Listar Pacientes",
                        fontFamily = roboto,
                        fontWeight = FontWeight.Bold,
                        fontSize = 16.sp) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.pacientes.route)
                    }
                )

                DropdownMenuItem(
                    text = { Text("Listar Psicólogo",
                        fontFamily = roboto,
                        fontWeight = FontWeight.Bold,
                        fontSize = 16.sp) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.listaPsicologos.route)
                    }
                )

                DropdownMenuItem(
                    text = { Text("Crear preguntas test",
                        fontFamily = roboto,
                        fontWeight = FontWeight.Bold,
                        fontSize = 16.sp) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.test.route)
                    }
                )



                DropdownMenuItem(
                    text = {
                        Text(
                            "Regístrar administrador",
                            fontFamily = roboto,
                            fontWeight = FontWeight.Bold,
                            fontSize = 16.sp
                        )
                    },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.agregarAdmin.route)
                    }
                )

                DropdownMenuItem(
                    text = {
                        Text(
                            "Login",
                            fontFamily = roboto,
                            fontWeight = FontWeight.Bold,
                            fontSize = 16.sp
                        )
                    },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.login.route)
                    }
                )
            }
        }
    )
}


