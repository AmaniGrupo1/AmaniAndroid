package org.ies.tierno.applicationamani.presentation.components

import androidx.annotation.StringRes
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.Chat
import androidx.compose.material.icons.automirrored.outlined.Chat
import androidx.compose.material.icons.filled.Book
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.outlined.Book
import androidx.compose.material.icons.outlined.DateRange
import androidx.compose.material.icons.outlined.Home
import androidx.compose.material.icons.outlined.Settings
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
 * @param iconFilled El icono para el estado seleccionado.
 * @param iconOutlined El icono para el estado no seleccionado.
 */
private data class BottomBarDestination(
    val route: String,
    @StringRes val labelRes: Int,
    val iconFilled: ImageVector,
    val iconOutlined: ImageVector,
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
 * Muestra cinco secciones principales y resalta la activa.
 *
 * @param navController Controlador de navegación para gestionar el cambio entre pantallas.
 */
@Composable
fun BottomBar(navController: NavController) {
    val navBackStackEntry by navController.currentBackStackEntryAsState()
    val currentRoute = navBackStackEntry?.destination?.route

    val destinations =
        listOf(
            BottomBarDestination(Routes.HOME, R.string.nav_inicio, Icons.Default.Home, Icons.Outlined.Home),
            BottomBarDestination(Routes.CHAT, R.string.nav_chat, Icons.AutoMirrored.Filled.Chat, Icons.AutoMirrored.Outlined.Chat),
            BottomBarDestination(Routes.CITAS, R.string.nav_citas, Icons.Default.DateRange, Icons.Outlined.DateRange),
            BottomBarDestination(Routes.DIARIO, R.string.nav_diario, Icons.Default.Book, Icons.Outlined.Book),
            BottomBarDestination(Routes.SETTINGS, R.string.nav_ajustes, Icons.Default.Settings, Icons.Outlined.Settings),
        )

    // M3: NavigationBar height is handled automatically, containerColor set to surfaceContainer
    NavigationBar(
        containerColor = MaterialTheme.colorScheme.surfaceContainer, // M3: container color should be surfaceContainer
    ) {
        destinations.forEach { destination ->
            val isSelected = currentRoute == destination.route
            NavigationBarItem(
                icon = {
                    // M3: Use Filled icon for selected and Outlined for unselected
                    Icon(
                        imageVector = if (isSelected) destination.iconFilled else destination.iconOutlined,
                        contentDescription = stringResource(destination.labelRes),
                    )
                },
                label = {
                    // M3: Label uses labelMedium typography
                    Text(
                        text = stringResource(destination.labelRes),
                        style = MaterialTheme.typography.labelMedium,
                    )
                },
                selected = isSelected,
                onClick = {
                    if (currentRoute != destination.route) {
                        navController.navigate(destination.route) {
                            popUpTo(navController.graph.startDestinationId) {
                                saveState = true
                            }
                            launchSingleTop = true
                            restoreState = true
                        }
                    }
                },
                alwaysShowLabel = true, // M3: Recommended for 3-5 items
                colors = NavigationBarItemDefaults.colors(), // M3: Default colors without override
            )
        }
    }
}
