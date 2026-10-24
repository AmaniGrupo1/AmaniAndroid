package org.ies.tierno.applicationamani.presentation.ui.componente.psicologo

import android.content.res.Configuration
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
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions

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
 * @param modifier Modificador externo opcional.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MenuSetting(
    navController: NavController,
    idPsicologo: Long?,
    modifier: Modifier = Modifier,
) {
    LaunchedEffect(idPsicologo) {
        println("ID Psicologo actualizado: $idPsicologo")
    }

    var expanded by remember { mutableStateOf(false) }
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    TopAppBar(
        modifier = modifier,
        colors =
            TopAppBarDefaults.topAppBarColors(
                containerColor = colors.surface,
                titleContentColor = colors.onSurface,
                navigationIconContentColor = colors.onSurface,
                actionIconContentColor = colors.onSurface,
            ),
        navigationIcon = {
            Image(
                painter = painterResource(id = R.drawable.logo_original),
                contentDescription = stringResource(R.string.nav_inicio),
                modifier = Modifier.size(Dimensions.avatarMedium),
            )
        },
        title = { },
        actions = {
            IconButton(onClick = { expanded = !expanded }) {
                Icon(
                    imageVector = Icons.Default.Menu,
                    contentDescription = stringResource(R.string.nav_mas),
                    tint = colors.onSurface,
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

@Preview(name = "MenuSetting - Light", showBackground = true)
@Preview(name = "MenuSetting - Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "MenuSetting - Large Font", fontScale = 1.5f, showBackground = true)
@Composable
private fun MenuSettingPreview() {
    AppTheme {
        MenuSetting(
            navController = rememberNavController(),
            idPsicologo = 1L,
        )
    }
}

