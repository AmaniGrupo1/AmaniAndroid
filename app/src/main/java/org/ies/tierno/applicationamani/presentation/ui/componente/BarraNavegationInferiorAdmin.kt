package org.ies.tierno.applicationamani.presentation.ui.componente

import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.outlined.ShowChart
import androidx.compose.material.icons.outlined.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

enum class AdminNavItem {
    DOCUMENTOS,
    MENSAJES,
    CALENDARIO,
    ESTADISTICAS,
    CONFIGURACION
}

/**
 * Barra de navegación inferior del administrador migrada a [NavigationBar] de Material 3.
 *
 * Usa el tema Amani (indicador `primaryContainer`) y muestra etiquetas.
 * Para implementaciones nuevas usa [AmaniBottomBar] con [BottomBarConfig.Admin].
 *
 * @param navController Controlador de navegación.
 * @param selectedItem Ítem actualmente seleccionado.
 * @param onItemSelected Callback al pulsar un ítem.
 */
@Composable
fun BarraNavegationInferiorAdmin(
    navController: NavController,
    selectedItem: AdminNavItem,
    onItemSelected: (AdminNavItem) -> Unit
) {
    data class NavDest(
        val item: AdminNavItem,
        val label: String,
        val icon: ImageVector,
        val route: String? = null
    )

    val destinations = listOf(
        NavDest(
            AdminNavItem.DOCUMENTOS,
            "Inicio",
            Icons.Outlined.Description,
            Screens.adminHome.route
        ),
        NavDest(AdminNavItem.MENSAJES, "Mensajes", Icons.Outlined.ChatBubbleOutline),
        NavDest(
            AdminNavItem.CALENDARIO,
            "Calendario",
            Icons.Outlined.CalendarToday,
            Screens.psicologoAgenda.route
        ),
        NavDest(AdminNavItem.ESTADISTICAS, "Estadísticas", Icons.AutoMirrored.Outlined.ShowChart),
        NavDest(AdminNavItem.CONFIGURACION, "Ajustes", Icons.Outlined.Settings)
    )

    NavigationBar(
        tonalElevation = 3.dp,
        containerColor = MaterialTheme.colorScheme.surface
    ) {
        destinations.forEach { dest ->
            NavigationBarItem(
                selected = selectedItem == dest.item,
                onClick = {
                    onItemSelected(dest.item)
                    dest.route?.let { navController.navigate(it) }
                },
                icon = { Icon(dest.icon, contentDescription = dest.label) },
                label = {
                    Text(dest.label, maxLines = 1, overflow = TextOverflow.Ellipsis)
                },
                colors = NavigationBarItemDefaults.colors(
                    indicatorColor = MaterialTheme.colorScheme.primaryContainer,
                    selectedIconColor = MaterialTheme.colorScheme.onPrimaryContainer,
                    selectedTextColor = MaterialTheme.colorScheme.primary,
                    unselectedIconColor = MaterialTheme.colorScheme.onSurfaceVariant,
                    unselectedTextColor = MaterialTheme.colorScheme.onSurfaceVariant
                )
            )
        }
    }
}