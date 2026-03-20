package org.ies.tierno.applicationamani.presentation.components

import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.Chat
import androidx.compose.material.icons.filled.Book
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.Icon
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.NavigationBarItemDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.navigation.NavController
import androidx.navigation.compose.currentBackStackEntryAsState

/**
 * Constantes con las rutas de navegación del paciente.
 *
 * Se utilizan en [BottomBar] para identificar la sección activa
 * y navegar entre pantallas.
 */
object Routes {
    /** Ruta de la pantalla de inicio. */
    const val HOME = "home"
    /** Ruta de la pantalla de chat. */
    const val CHAT = "chat"
    /** Ruta de la pantalla de citas. */
    const val CITAS = "citas"
    /** Ruta de la pantalla de diario. */
    const val DIARIO = "diario"
    /** Ruta de la pantalla de ajustes. */
    const val SETTINGS = "settings"
}

/**
 * Barra de navegación inferior para la vista del paciente.
 *
 * Utiliza [NavigationBar] de Material 3 con cinco secciones:
 * Inicio, Chat, Citas, Diario y Ajustes. Resalta la sección
 * activa según la ruta actual del [navController].
 *
 * @param navController Controlador de navegación para cambiar de pantalla.
 */
@Composable
fun BottomBar(navController: NavController) {
    val purple = Color(0xFFCCC0E4)

    val currentRoute =
        navController.currentBackStackEntryAsState().value?.destination?.route

    NavigationBar {
        NavigationBarItem(
            icon = { Icon(Icons.Default.Home, null) },
            label = { Text("Inicio") },
            selected = currentRoute == Routes.HOME,
            onClick = {
                navController.navigate(Routes.HOME) {
                    popUpTo(navController.graph.startDestinationId) {
                        saveState = true
                    }
                    launchSingleTop = true
                    restoreState = true
                }
            },
            colors = NavigationBarItemDefaults.colors(
                indicatorColor = purple
            )
        )
        NavigationBarItem(
            icon = { Icon(Icons.AutoMirrored.Filled.Chat, null) },
            label = { Text("Chat") },
            selected = currentRoute == Routes.CHAT,
            onClick = {
                navController.navigate(Routes.CHAT) {
                    popUpTo(navController.graph.startDestinationId) {
                        saveState = true
                    }
                    launchSingleTop = true
                    restoreState = true
                }
            },
            colors = NavigationBarItemDefaults.colors(
                indicatorColor = purple
            )
        )
        NavigationBarItem(
            icon = { Icon(Icons.Default.DateRange, null) },
            label = { Text("Citas") },
            selected = currentRoute == Routes.CITAS,
            onClick = {
                navController.navigate(Routes.CITAS) {
                    popUpTo(navController.graph.startDestinationId) {
                        saveState = true
                    }
                    launchSingleTop = true
                    restoreState = true
                }
            },
            colors = NavigationBarItemDefaults.colors(
                indicatorColor = purple
            )
        )
        NavigationBarItem(
            icon = { Icon(Icons.Default.Book, null) },
            label = { Text("Diario") },
            selected = currentRoute == Routes.DIARIO,
            onClick = {
                navController.navigate(Routes.DIARIO) {
                    popUpTo(navController.graph.startDestinationId) {
                        saveState = true
                    }
                    launchSingleTop = true
                    restoreState = true
                }
            },
            colors = NavigationBarItemDefaults.colors(
                indicatorColor = purple
            )
        )
        NavigationBarItem(
            icon = { Icon(Icons.Default.Settings, null) },
            label = { Text("Ajustes") },
            selected = currentRoute == Routes.SETTINGS,
            onClick = {
                navController.navigate(Routes.SETTINGS) {
                    popUpTo(navController.graph.startDestinationId) {
                        saveState = true
                    }
                    launchSingleTop = true
                    restoreState = true
                }
            },
            colors = NavigationBarItemDefaults.colors(
                indicatorColor = purple
            )
        )
    }

}