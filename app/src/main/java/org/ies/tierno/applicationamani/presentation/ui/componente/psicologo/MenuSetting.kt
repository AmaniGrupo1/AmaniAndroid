package org.ies.tierno.applicationamani.presentation.ui.componente.psicologo

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.size
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
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

/**
 * Barra superior (TopAppBar) con menú de configuración para el psicólogo.
 *
 * Muestra el logotipo de Amani a la izquierda y un icono de menú a la
 * derecha que despliega opciones de navegación: Perfil, Ajustes y Cerrar
 * sesión. Utiliza [LaunchedEffect] para reaccionar a cambios en el
 * identificador del psicólogo.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param idPsicologo Identificador del psicólogo en sesión para generar rutas parametrizadas.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MenuSetting(
    navController: NavController,
    idPsicologo: Long?, // ← Asegurar que este parámetro existe
) {
    LaunchedEffect(idPsicologo) {
        println("ID Psicologo actualizado: $idPsicologo")
    }

    var expanded by remember { mutableStateOf(false) }
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    TopAppBar(
        modifier = Modifier.shadow(elevation = 8.dp),
        colors =
            TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                    ),
        navigationIcon = {
            Image(
                painter = painterResource(id = R.drawable.logo_original),
                contentDescription = stringResource(R.string.nav_inicio),
                modifier = Modifier.size(40.dp),
            )
        },
        title = { },
        actions = {
            IconButton(onClick = { expanded = !expanded }) {
                Icon(
                    Icons.Default.Menu,
                    contentDescription = stringResource(R.string.nav_mas),
                    tint = colors.onPrimary,
                )
            }

            DropdownMenu(
                expanded = expanded,
                onDismissRequest = { expanded = false },
            ) {
                DropdownMenuItem(
                    text = { Text(stringResource(R.string.nav_perfil), style = typography.labelLarge) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.perfilPsicologo.createRoute(idPsicologo))
                    },
                )

                DropdownMenuItem(
                    text = { Text(stringResource(R.string.nav_ajustes), style = typography.labelLarge) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.settingsPsicologo.route)
                    },
                )

                DropdownMenuItem(
                    text = { Text(stringResource(R.string.menu_cerrar_sesion), style = typography.labelLarge) },
                    onClick = {
                        expanded = false
                        navController.navigate(Screens.login.route)
                    },
                )
            }
        },
    )
}
