package org.ies.tierno.applicationamani.presentation.ui.componente

import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.Chat
import androidx.compose.material.icons.filled.Book
import androidx.compose.material.icons.filled.CalendarMonth
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.MoreVert
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Psychology
import androidx.compose.material.icons.filled.Quiz
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.outlined.Book
import androidx.compose.material.icons.outlined.CalendarMonth
import androidx.compose.material.icons.outlined.DateRange
import androidx.compose.material.icons.outlined.Home
import androidx.compose.material.icons.outlined.People
import androidx.compose.material.icons.outlined.Psychology
import androidx.compose.material.icons.outlined.Quiz
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.NavigationBarItemDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import androidx.navigation.compose.currentBackStackEntryAsState
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

/**
 * Representa un elemento de navegación en [AmaniBottomBar].
 *
 * @property route Ruta de destino. Si es `null`, el ítem aparece deshabilitado (próximamente).
 * @property label Texto mostrado bajo el icono.
 * @property selectedIcon Icono cuando el ítem está activo.
 * @property unselectedIcon Icono cuando el ítem está inactivo.
 */
data class AmaniBottomBarItem(
    val route: String?,
    val label: String,
    val selectedIcon: ImageVector,
    val unselectedIcon: ImageVector = selectedIcon
)

/**
 * Variantes de configuración de la barra inferior según el rol del usuario.
 */
sealed interface BottomBarConfig {
    /** Barra del paciente: Inicio, Citas, Chat, Diario, Ajustes. */
    data object Paciente : BottomBarConfig
    /** Barra del administrador: Inicio, Pacientes, Psicólogos, Tests, Más. */
    data object Admin : BottomBarConfig
    /** Barra del psicólogo: Agenda, Pacientes, Chat, Ajustes. */
    data object Psicologo : BottomBarConfig
}

// ── Definición de ítems por rol ────────────────────────────────

private fun pacienteItems() = listOf(
    AmaniBottomBarItem(
        route = Screens.pacienteHome.route,
        label = "Inicio",
        selectedIcon = Icons.Filled.Home,
        unselectedIcon = Icons.Outlined.Home
    ),


    AmaniBottomBarItem(
        route = Screens.agendaCitaScreen.route,
        label = "Citas",
        selectedIcon = Icons.Filled.DateRange,
        unselectedIcon = Icons.Outlined.DateRange
    ),
    AmaniBottomBarItem(
        route = Screens.chatList.route,
        label = "Chat",
        selectedIcon = Icons.AutoMirrored.Filled.Chat
    ),
    AmaniBottomBarItem(
        route = null,
        label = "Diario",
        selectedIcon = Icons.Filled.Book,
        unselectedIcon = Icons.Outlined.Book
    ),
    AmaniBottomBarItem(
        route = Screens.settingsCliente.route,
        label = "Ajustes",
        selectedIcon = Icons.Filled.Settings,
        unselectedIcon = Icons.Outlined.Settings
    )
)

private fun adminItems() = listOf(
    AmaniBottomBarItem(
        route = Screens.adminHome.route,
        label = "Inicio",
        selectedIcon = Icons.Filled.Home,
        unselectedIcon = Icons.Outlined.Home
    ),
    AmaniBottomBarItem(
        route = Screens.pacientesSinPsicologo.route,
        label = "Pacientes",
        selectedIcon = Icons.Filled.People,
        unselectedIcon = Icons.Outlined.People
    ),
    AmaniBottomBarItem(
        route = Screens.agregarPsicologo.route,
        label = "Psicólogos",
        selectedIcon = Icons.Filled.Psychology,
        unselectedIcon = Icons.Outlined.Psychology
    ),
    AmaniBottomBarItem(
        route = Screens.test.route,
        label = "Tests",
        selectedIcon = Icons.Filled.Quiz,
        unselectedIcon = Icons.Outlined.Quiz
    ),
    AmaniBottomBarItem(
        route = null,
        label = "Más",
        selectedIcon = Icons.Filled.MoreVert
    )
)

private fun psicologoItems() = listOf(
    AmaniBottomBarItem(
        route = Screens.psicologoAgenda.route,
        label = "Agenda",
        selectedIcon = Icons.Filled.CalendarMonth,
        unselectedIcon = Icons.Outlined.CalendarMonth
    ),
    AmaniBottomBarItem(
        route = Screens.psicologoHome.route,
        label = "Pacientes",
        selectedIcon = Icons.Filled.People,
        unselectedIcon = Icons.Outlined.People
    ),
    AmaniBottomBarItem(
        route = Screens.chatList.route,
        label = "Chat",
        selectedIcon = Icons.AutoMirrored.Filled.Chat
    ),
    AmaniBottomBarItem(
        route = Screens.settingsCliente.route,
        label = "Ajustes",
        selectedIcon = Icons.Filled.Settings,
        unselectedIcon = Icons.Outlined.Settings
    )
)

// ── Composable principal ───────────────────────────────────────

/**
 * Barra de navegación inferior unificada, responsive y accesible para Amani.
 *
 * Utiliza [NavigationBar] de Material 3 con [NavigationBarItem] para cada
 * destino. Se adapta automáticamente a diferentes tamaños de pantalla gracias
 * al comportamiento nativo de Material 3 (los ítems se expanden para ocupar
 * el espacio disponible de manera equitativa).
 *
 * Ítems con `route == null` aparecen deshabilitados visualmente indicando
 * funcionalidad próxima.
 *
 * @param navController Controlador de navegación.
 * @param config Variante según el rol: [BottomBarConfig.Paciente],
 *   [BottomBarConfig.Admin] o [BottomBarConfig.Psicologo].
 * @param modifier Modificador externo opcional.
 */
@Composable
fun AmaniBottomBar(
    navController: NavController,
    config: BottomBarConfig,
    modifier: Modifier = Modifier
) {
    val backStackEntry by navController.currentBackStackEntryAsState()
    val currentRoute = backStackEntry?.destination?.route

    val items = when (config) {
        BottomBarConfig.Paciente -> pacienteItems()
        BottomBarConfig.Admin    -> adminItems()
        BottomBarConfig.Psicologo -> psicologoItems()
    }

    NavigationBar(
        modifier = modifier.navigationBarsPadding(),
        containerColor = MaterialTheme.colorScheme.surface,
        tonalElevation = 0.dp
    ) {
        items.forEach { item ->
            val isSelected = item.route != null && currentRoute == item.route
            val isEnabled = item.route != null

            NavigationBarItem(
                selected = isSelected,
                enabled = isEnabled,
                onClick = {
                    val route = item.route ?: return@NavigationBarItem
                    if (currentRoute == route) return@NavigationBarItem
                    navController.navigate(route) {
                        popUpTo(navController.graph.startDestinationId) {
                            saveState = true
                        }
                        launchSingleTop = true
                        restoreState = true
                    }
                },
                icon = {
                    Icon(
                        imageVector = if (isSelected) item.selectedIcon else item.unselectedIcon,
                        contentDescription = item.label
                    )
                },
                label = {
                    Text(
                        text = item.label,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        style = MaterialTheme.typography.labelSmall
                    )
                },
                colors = NavigationBarItemDefaults.colors(
                    indicatorColor       = MaterialTheme.colorScheme.primaryContainer,
                    selectedIconColor    = MaterialTheme.colorScheme.primary,
                    selectedTextColor    = MaterialTheme.colorScheme.primary,
                    unselectedIconColor  = MaterialTheme.colorScheme.onSurfaceVariant,
                    unselectedTextColor  = MaterialTheme.colorScheme.onSurfaceVariant,
                    disabledIconColor    = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.38f),
                    disabledTextColor    = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.38f)
                )
            )
        }
    }
}