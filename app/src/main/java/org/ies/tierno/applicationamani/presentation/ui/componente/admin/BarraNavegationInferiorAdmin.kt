package org.ies.tierno.applicationamani.presentation.ui.componente.admin

import androidx.annotation.StringRes
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.outlined.ShowChart
import androidx.compose.material.icons.outlined.CalendarToday
import androidx.compose.material.icons.outlined.ChatBubbleOutline
import androidx.compose.material.icons.outlined.Description
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.NavigationBarItemDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

/**
 * Enumeración de los elementos de navegación disponibles en la barra
 * inferior del panel de administración.
 *
 * @property DOCUMENTOS Gestión de documentos legales.
 * @property MENSAJES Bandeja de mensajes y chat.
 * @property CALENDARIO Vista del calendario de citas.
 * @property ESTADISTICAS Panel de estadísticas y reportes.
 * @property CONFIGURACION Acceso a la configuración del sistema.
 */
enum class AdminNavItem {
    DOCUMENTOS,
    MENSAJES,
    CALENDARIO,
    ESTADISTICAS,
    CONFIGURACION,
}

/**
 * Barra de navegación inferior específica para la vista de administración.
 *
 * Renderiza una [NavigationBar] con cinco destinos (Documentos, Mensajes,
 * Calendario, Estadísticas, Configuración) utilizando los colores semánticos
 * de Material 3.
 *
 * @param navController Controlador de navegación para cambiar de pantalla.
 * @param selectedItem Elemento actualmente seleccionado en la barra.
 * @param onItemSelected Callback invocado al seleccionar un nuevo elemento, recibe el [AdminNavItem] pulsado.
 */
@Composable
fun BarraNavegationInferiorAdmin(
    navController: NavController,
    selectedItem: AdminNavItem,
    onItemSelected: (AdminNavItem) -> Unit,
) {
    data class NavDest(
        val item: AdminNavItem,
        @param:StringRes val labelRes: Int,
        val icon: ImageVector,
        val route: String? = null,
    )

    val destinations =
        listOf(
            NavDest(
                AdminNavItem.DOCUMENTOS,
                R.string.nav_documentos,
                Icons.Outlined.Description,
                Screens.adminHome.route,
            ),
            NavDest(AdminNavItem.MENSAJES, R.string.nav_mensajes, Icons.Outlined.ChatBubbleOutline),
            NavDest(
                AdminNavItem.CALENDARIO,
                R.string.nav_calendario,
                Icons.Outlined.CalendarToday,
                Screens.psicologoAgenda.route,
            ),
            NavDest(AdminNavItem.ESTADISTICAS, R.string.nav_estadisticas, Icons.AutoMirrored.Outlined.ShowChart),
            NavDest(AdminNavItem.CONFIGURACION, R.string.nav_ajustes, Icons.Outlined.Settings),
        )

    NavigationBar(
        tonalElevation = 3.dp,
        containerColor = MaterialTheme.colorScheme.surfaceContainer, // M3: surfaceContainer per spec
    ) {
        destinations.forEach { dest ->
            NavigationBarItem(
                selected = selectedItem == dest.item,
                onClick = {
                    onItemSelected(dest.item)
                    dest.route?.let { navController.navigate(it) }
                },
                icon = { Icon(dest.icon, contentDescription = stringResource(dest.labelRes)) },
                label = {
                    Text(stringResource(dest.labelRes), maxLines = 1, overflow = TextOverflow.Ellipsis)
                },
                colors =
                    NavigationBarItemDefaults.colors(
                        indicatorColor = MaterialTheme.colorScheme.primaryContainer,
                        selectedIconColor = MaterialTheme.colorScheme.onPrimaryContainer,
                        selectedTextColor = MaterialTheme.colorScheme.primary,
                        unselectedIconColor = MaterialTheme.colorScheme.onSurfaceVariant,
                        unselectedTextColor = MaterialTheme.colorScheme.onSurfaceVariant,
                    ),
            )
        }
    }
}
