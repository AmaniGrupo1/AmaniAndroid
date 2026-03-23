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
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

/**
 * Barra superior (TopAppBar) principal de la aplicación Amani.
 *
 * Muestra el logotipo de la marca a la izquierda y un icono desplegable
 * a la derecha que permite al usuario navegar a las pantallas de inicio
 * de sesión, registro o volver a la pantalla principal.
 *
 * Utiliza los colores del tema ([MaterialTheme.colorScheme]) para el
 * fondo y los iconos, y [MaterialTheme.typography] para los textos del
 * menú desplegable.
 *
 * @param navController Controlador de navegación utilizado para cambiar
 *   de pantalla al seleccionar una opción del menú.
 *
 * @see Screens
 * @see Principal
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MenuPrincipal(navController: NavController) {

    var expanded by remember { mutableStateOf(false) }

    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    TopAppBar(
        modifier = Modifier.shadow(elevation = 8.dp),

        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = colors.primary,
            titleContentColor = colors.onPrimary
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
                    imagen, contentDescription = "Desplegue", tint = colors.onPrimary
                )
            }

            DropdownMenu(
                expanded = expanded,
                onDismissRequest = { expanded = false }
            ) {

                DropdownMenuItem(
                    text = { Text("Inicia sesión",
                        style = typography.labelLarge) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.login.route)
                    }
                )

                DropdownMenuItem(
                    text = { Text("Regístrate",
                        style = typography.labelLarge) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.registro.route)
                    }
                )

//                DropdownMenuItem(
//                    text = { Text("Más Info",
//                        style = typography.labelLarge) },
//                    onClick = {
//                        expanded = false
//                        navController.navigate("info")
//                    }
//                )

//                DropdownMenuItem(
//                    text = { Text("Política de privacidad",
//                        style = typography.labelLarge) },
//                    onClick = {
//                        expanded = false
//                        navController.navigate("privacidad")
//                    }
//                )

                DropdownMenuItem(
                    text = { Text("Volver a la principal",
                        style = typography.labelLarge) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.principal.route)
                    }
                )
            }
        }
    )
}

/**
 * Vista previa de [MenuPrincipal] para el panel de diseño de Android Studio.
 */
@Composable
@Preview(showBackground = true)
fun MenuPrincipalPreview() {
    MenuPrincipal(rememberNavController())
}
