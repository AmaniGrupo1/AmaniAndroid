package org.ies.tierno.applicationamani.presentation.ui.componente

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material.icons.filled.ArrowDropUp
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
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

/**
 * Barra superior (TopAppBar) principal de la aplicación Amani.
 *
 * Muestra el logotipo de la marca a la izquierda y un icono desplegable
 * a la derecha que permite al usuario navegar a las pantallas de inicio
 * de sesión, registro o volver a la pantalla principal.
 *
 * @param navController Controlador de navegación utilizado para cambiar
 *   de pantalla al seleccionar una opción del menú.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MenuPrincipal(navController: NavController) {
    var expanded by remember { mutableStateOf(false) }

    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    TopAppBar(
        colors =
            TopAppBarDefaults.topAppBarColors(
                containerColor = colors.surface, // M3: Surface for top bar
                titleContentColor = colors.onSurface,
                navigationIconContentColor = colors.onSurface,
                actionIconContentColor = colors.onSurface,
            ),
        // LOGO A LA IZQUIERDA
        navigationIcon = {
            Image(
                painter = painterResource(id = R.drawable.logo_original),
                contentDescription = stringResource(R.string.nav_inicio),
                modifier = Modifier.size(40.dp),
            )
        },
        title = { }, // vacío porque usamos solo el logo
        actions = {
            IconButton(
                onClick = { expanded = !expanded },
            ) {
                val imagen = if (expanded) Icons.Default.ArrowDropDown else Icons.Default.ArrowDropUp
                Icon(
                    imageVector = imagen,
                    contentDescription = stringResource(R.string.nav_mas),
                )
            }

            DropdownMenu(
                expanded = expanded,
                onDismissRequest = { expanded = false },
            ) {
                DropdownMenuItem(
                    text = {
                        Text(
                            text = stringResource(R.string.menu_inicia_sesion),
                            style = typography.labelLarge,
                        )
                    },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.login.route)
                    },
                )

                DropdownMenuItem(
                    text = {
                        Text(
                            text = stringResource(R.string.menu_registrate),
                            style = typography.labelLarge,
                        )
                    },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.registro.route)
                    },
                )

                DropdownMenuItem(
                    text = {
                        Text(
                            text = stringResource(R.string.menu_volver_principal),
                            style = typography.labelLarge,
                        )
                    },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.principal.route)
                    },
                )
            }
        },
    )
}
