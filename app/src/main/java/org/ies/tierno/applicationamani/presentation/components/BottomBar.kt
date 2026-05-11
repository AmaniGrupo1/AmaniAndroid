package org.ies.tierno.applicationamani.presentation.components

import androidx.annotation.StringRes
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.Chat
import androidx.compose.material.icons.filled.Book
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.NavigationBarItemDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.stringResource
import androidx.navigation.NavController
import androidx.navigation.compose.currentBackStackEntryAsState
import org.ies.tierno.applicationamani.R

/**
 * Representa un destino de navegación en la barra inferior.
 *
 * @param route La ruta de navegación asociada con el destino.
 * @param labelRes El recurso de etiqueta de texto que se muestra para el destino.
 * @param icon El icono que representa el destino.
 */
private data class BottomBarDestination(
    val route: String,
    @StringRes val labelRes: Int,
    val icon: ImageVector
)

/**
 * Contiene las rutas de navegación para la vista del paciente.
 */
private object Routes {
    const val HOME = "home"
    const val CHAT = "chat"
    const val CITAS = "citas"
    const val DIARIO = "diario"
    const val SETTINGS = "settings"
}

/**
 * Barra de navegación inferior para la vista del paciente.
 *
 * Esta barra de navegación se adapta al contenido y utiliza Material 3.
 * Muestra cinco secciones principales y resalta la activa. La refactorización
 * utiliza un modelo de datos para los destinos, haciendo el código más limpio,
 * mantenible y fácil de escalar.
 *
 * @param navController Controlador de navegación para gestionar el cambio entre pantallas.
 */
@Composable
fun BottomBar(navController: NavController) {
    val currentRoute by navController.currentBackStackEntryAsState()

    val destinations = listOf(
        BottomBarDestination(Routes.HOME, R.string.nav_inicio, Icons.Default.Home),
        BottomBarDestination(Routes.CHAT, R.string.nav_chat, Icons.AutoMirrored.Filled.Chat),
        BottomBarDestination(Routes.CITAS, R.string.nav_citas, Icons.Default.DateRange),
        BottomBarDestination(Routes.DIARIO, R.string.nav_diario, Icons.Default.Book),
        BottomBarDestination(Routes.SETTINGS, R.string.nav_ajustes, Icons.Default.Settings)
    )

    NavigationBar {
        destinations.forEach { destination ->
            NavigationBarItem(
                icon = { Icon(destination.icon, contentDescription = stringResource(destination.labelRes)) },
                label = { Text(stringResource(destination.labelRes)) },
                selected = currentRoute?.destination?.route == destination.route,
                onClick = {
                    navController.navigate(destination.route) {
                        popUpTo(navController.graph.startDestinationId) {
                            saveState = true
                        }
                        launchSingleTop = true
                        restoreState = true
                    }
                },
                colors = NavigationBarItemDefaults.colors(
                    indicatorColor = MaterialTheme.colorScheme.primaryContainer,
                    selectedIconColor = MaterialTheme.colorScheme.onPrimaryContainer,
                    unselectedIconColor = MaterialTheme.colorScheme.onSurfaceVariant,
                    selectedTextColor = MaterialTheme.colorScheme.onSurface,
                    unselectedTextColor = MaterialTheme.colorScheme.onSurfaceVariant
                )
            )
        }
    }
}
