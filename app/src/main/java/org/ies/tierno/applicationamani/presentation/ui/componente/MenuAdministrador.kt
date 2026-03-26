package org.ies.tierno.applicationamani.presentation.ui.componente

import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
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

/**
 * Barra superior de la vista de administración con menú desplegable.
 *
 * Muestra el título de la sección actual y un menú hamburguesa con
 * opciones de navegación: registrar psicólogo, test, listar pacientes
 * y registrar administrador.
 *
 * @param title Título a mostrar en la barra superior.
 * @param navController Controlador de navegación para dirigir al usuario a otras pantallas.
 */
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
            }
        }
    )
}
