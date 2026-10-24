package org.ies.tierno.applicationamani.presentation.ui.componente.admin

import android.content.res.Configuration
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
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Elevation

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
 * @param modifier Modificador externo opcional.
 */
@Composable
fun BarraNavegationInferiorAdmin(
    navController: NavController,
    selectedItem: AdminNavItem,
    onItemSelected: (AdminNavItem) -> Unit,
    modifier: Modifier = Modifier,
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
        modifier = modifier,
        tonalElevation = Elevation.level2,
        containerColor = MaterialTheme.colorScheme.surfaceContainer,
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
                    Text(
                        text = stringResource(dest.labelRes),
                        style = MaterialTheme.typography.labelMedium,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
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

@Preview(name = "BarraAdmin - Light", showBackground = true)
@Preview(name = "BarraAdmin - Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "BarraAdmin - Large Font", fontScale = 1.5f, showBackground = true)
@Composable
private fun BarraNavegationInferiorAdminPreview() {
    AppTheme {
        BarraNavegationInferiorAdmin(
            navController = rememberNavController(),
            selectedItem = AdminNavItem.DOCUMENTOS,
            onItemSelected = {},
        )
    }
}

