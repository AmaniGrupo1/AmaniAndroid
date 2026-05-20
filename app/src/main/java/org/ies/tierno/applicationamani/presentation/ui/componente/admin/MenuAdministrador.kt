package org.ies.tierno.applicationamani.presentation.ui.componente.admin

import androidx.annotation.StringRes
import androidx.compose.animation.AnimatedContent
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.ExperimentalAnimationApi
import androidx.compose.animation.animateContentSize
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.animation.togetherWith

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Logout
import androidx.compose.material.icons.filled.AdminPanelSettings
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material.icons.filled.MoreVert
import androidx.compose.material.icons.filled.Notifications
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Psychology
import androidx.compose.material.icons.filled.Quiz
import androidx.compose.material3.Badge
import androidx.compose.material3.DividerDefaults
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalDrawerSheet
import androidx.compose.material3.ModalNavigationDrawer
import androidx.compose.material3.NavigationDrawerItem
import androidx.compose.material3.NavigationDrawerItemDefaults
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

/**
 * Modelo de datos que define un elemento del menú de administración.
 *
 * @property titleRes Recurso de texto con la etiqueta del elemento.
 * @property icon Icono vectorial asociado al elemento.
 * @property route Ruta de navegación de destino.
 * @property isDanger `true` si el elemento representa una acción peligrosa (ej: cerrar sesión).
 * @property dividerBefore Indica si se debe mostrar un divisor antes del elemento.
 * @property dividerAfter Indica si se debe mostrar un divisor después del elemento.
 */
data class MenuAdministrador(
    @StringRes val titleRes: Int,
    val icon: ImageVector,
    val route: String,
    val isDanger: Boolean = false,
    val dividerBefore: Boolean = false,
    val dividerAfter: Boolean = false,
)

/**
 * Barra superior profesional de la vista de administración con menú desplegable.
 *
 * @param title Título a mostrar en la barra superior
 * @param navController Controlador de navegación
 * @param showBackButton Indica si se debe mostrar el botón de retroceso
 * @param showLogo Indica si se debe mostrar el logo en lugar del título
 * @param onLogout Acción a ejecutar al cerrar sesión
 * @param actions Acciones adicionales a mostrar en la barra superior
 */
@OptIn(ExperimentalMaterial3Api::class, ExperimentalAnimationApi::class)
@Composable
fun MenuAdministrador(
    title: String,
    navController: NavController,
    showBackButton: Boolean = false,
    showLogo: Boolean = false,
    onLogout: (() -> Unit)? = null,
    actions: @Composable RowScope.() -> Unit = {},
) {
    var expanded by remember { mutableStateOf(false) }
    val colors = MaterialTheme.colorScheme

    // Definición de items del menú
    val menuItems =
        listOf(
            MenuAdministrador(
                titleRes = R.string.menu_registrar_psicologo,
                icon = Icons.Default.Psychology,
                route = Screens.agregarPsicologo.route,
                dividerAfter = true,
            ),
            MenuAdministrador(
                titleRes = R.string.menu_registrar_paciente,
                icon = Icons.Default.Psychology,
                route = Screens.registro.route,
                dividerAfter = true,
            ),
            MenuAdministrador(
                titleRes = R.string.menu_listar_pacientes,
                icon = Icons.Default.People,
                route = Screens.pacientes.route,
            ),
            MenuAdministrador(
                titleRes = R.string.menu_listar_psicologos,
                icon = Icons.Default.Psychology,
                route = Screens.listarPsicologoSimple.route,
                dividerAfter = true,
            ),
            MenuAdministrador(
                titleRes = R.string.menu_registrar_admin,
                icon = Icons.Default.AdminPanelSettings,
                route = Screens.agregarAdmin.route,
                dividerAfter = true,
            ),
            MenuAdministrador(
                titleRes = R.string.nav_citas,
                icon = Icons.Default.AdminPanelSettings,
                route = Screens.citas.route,
                dividerAfter = true,
            ),
            MenuAdministrador(
                titleRes = R.string.nav_calendario,
                icon = Icons.Default.AdminPanelSettings,
                route = Screens.psicologoAgenda.route,
                dividerAfter = true,
            ),
            MenuAdministrador(
                titleRes = R.string.menu_cerrar_sesion,
                icon = Icons.AutoMirrored.Filled.Logout,
                route = Screens.login.route,
                isDanger = true,
            ),
        )

    TopAppBar(
        modifier = Modifier,
        colors =
            TopAppBarDefaults.topAppBarColors(
                containerColor = colors.primary,
                titleContentColor = colors.onPrimary,
                navigationIconContentColor = colors.onPrimary,
                actionIconContentColor = colors.onPrimary,
            ),
        navigationIcon = {
            AnimatedVisibility(
                visible = showBackButton,
                enter = fadeIn() + slideInHorizontally(),
                exit = fadeOut() + slideOutHorizontally(),
            ) {
                IconButton(onClick = { navController.navigateUp() }) {
                    Icon(
                        imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                        contentDescription = stringResource(R.string.volver),
                    )
                }
            }
        },
        title = {
            AnimatedContent(
                targetState = showLogo to title,
                transitionSpec = {
                    fadeIn() togetherWith fadeOut()
                },
            ) { (showLogoValue, titleValue) ->
                if (showLogoValue) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.Center,
                    ) {
                        Icon(
                            painter = painterResource(id = R.drawable.logo_original),
                            contentDescription = "Logo",
                            modifier = Modifier.size(32.dp),
                            tint = Color.Unspecified,
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = titleValue,
                            style = MaterialTheme.typography.titleLarge,
                            color = colors.onPrimary,
                            maxLines = 1,
                        )
                    }
                } else {
                    Text(
                        text = titleValue,
                        style = MaterialTheme.typography.titleLarge,
                        color = colors.onPrimary,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
            }
        },
        actions = {
            // Acciones personalizadas
            actions()

            // Badge de notificaciones (ejemplo)
            IconButton(
                onClick = { /* Navegar a notificaciones */ },
            ) {
                Badge(
                    containerColor = colors.error,
                    modifier = Modifier.offset(x = (-4).dp, y = 4.dp),
                ) {
                    Text("3", style = MaterialTheme.typography.labelSmall)
                }
                Icon(
                    imageVector = Icons.Default.Notifications,
                    contentDescription = "Notificaciones",
                    tint = colors.onPrimary,
                )
            }

            // Botón de menú
            IconButton(
                onClick = { expanded = true },
            ) {
                Icon(
                    imageVector = Icons.Default.Menu,
                    contentDescription = stringResource(R.string.menu_admin_titulo),
                    tint = colors.onPrimary,
                )
            }

            // Menú desplegable
            DropdownMenu(
                expanded = expanded,
                onDismissRequest = { expanded = false },
                modifier =
                    Modifier
                        .width(280.dp),
                shape = RoundedCornerShape(12.dp),
            ) {
                // Header del menú
                DropdownMenuItem(
                    text = {
                        Column(
                            modifier = Modifier.fillMaxWidth(),
                        ) {
                            Text(
                                text = stringResource(R.string.menu_admin_titulo),
                                style = MaterialTheme.typography.labelMedium,
                                color = MaterialTheme.colorScheme.primary,
                            )
                            Text(
                                text = stringResource(R.string.menu_selecciona_opcion),
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                        }
                    },
                    onClick = { },
                    enabled = false,
                    modifier =
                        Modifier
                            .background(MaterialTheme.colorScheme.primaryContainer)
                            .clip(RoundedCornerShape(8.dp)),
                )

                HorizontalDivider(Modifier, DividerDefaults.Thickness, DividerDefaults.color)

                menuItems.forEach { item ->
                    if (item.dividerBefore) {
                        HorizontalDivider(
                            Modifier,
                            DividerDefaults.Thickness,
                            DividerDefaults.color,
                        )
                    }

                    DropdownMenuItem(
                        text = {
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.spacedBy(12.dp),
                            ) {
                                Icon(
                                    imageVector = item.icon,
                                    contentDescription = null,
                                    modifier = Modifier.size(20.dp),
                                    tint =
                                        if (item.isDanger) {
                                            MaterialTheme.colorScheme.error
                                        } else {
                                            MaterialTheme.colorScheme.primary
                                        },
                                )
                                Text(
                                    text = stringResource(item.titleRes),
                                    style = MaterialTheme.typography.bodyMedium,
                                    color =
                                        if (item.isDanger) {
                                            MaterialTheme.colorScheme.error
                                        } else {
                                            MaterialTheme.colorScheme.onSurface
                                        },
                                )
                            }
                        },
                        onClick = {
                            expanded = false
                            if (item.titleRes == R.string.menu_cerrar_sesion) {
                                onLogout?.invoke()
                                navController.navigate(item.route) {
                                    popUpTo(Screens.adminHome.route) { inclusive = true }
                                    launchSingleTop = true
                                }
                            } else {
                                navController.navigate(item.route)
                            }
                        },
                        modifier = Modifier.animateContentSize(),
                    )

                    if (item.dividerAfter) {
                        HorizontalDivider()
                    }
                }
            }
        },
    )
}

/**
 * Versión simplificada del menú para pantallas sin menú desplegable
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MenuAdministradorSimple(
    title: String,
    navController: NavController,
    showBackButton: Boolean = false,
    showLogo: Boolean = false,
    onActionClick: (() -> Unit)? = null,
) {
    val colors = MaterialTheme.colorScheme

    TopAppBar(
        modifier = Modifier,
        colors =
            TopAppBarDefaults.topAppBarColors(
                containerColor = colors.primary,
                titleContentColor = colors.onPrimary,
                navigationIconContentColor = colors.onPrimary,
                actionIconContentColor = colors.onPrimary,
            ),
        navigationIcon = {
            if (showBackButton) {
                IconButton(onClick = { navController.navigateUp() }) {
                    Icon(
                        imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                        contentDescription = stringResource(R.string.volver),
                    )
                }
            }
        },
        title = {
            if (showLogo) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Icon(
                        painter = painterResource(id = R.drawable.logo_original),
                        contentDescription = "Logo",
                        modifier = Modifier.size(32.dp),
                        tint = Color.Unspecified,
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = title,
                        style = MaterialTheme.typography.titleMedium,
                        color = colors.onPrimary,
                    )
                }
            } else {
                Text(
                    text = title,
                    style = MaterialTheme.typography.titleMedium,
                    color = colors.onPrimary,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
            }
        },
        actions = {
            onActionClick?.let {
                IconButton(onClick = it) {
                    Icon(
                        imageVector = Icons.Default.MoreVert,
                        contentDescription = stringResource(R.string.nav_mas),
                    )
                }
            }
        },
    )
}

/**
 * Menú lateral de navegación (Navigation Drawer) para el panel de administración.
 *
 * Muestra una cabecera con el logotipo, un título descriptivo y una lista
 * de opciones de navegación. La opción de cierre de sesión ejecuta
 * [onLogout] antes de navegar a la pantalla de login.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param onLogout Callback invocado al seleccionar la opción de cerrar sesión.
 * @param currentRoute Ruta actual para resaltar el elemento activo.
 */
@Composable
fun MenuLateralAdministrador(
    navController: NavController,
    onLogout: () -> Unit,
    currentRoute: String,
) {
    val menuItems =
        listOf(
            Triple(Icons.Default.Home, R.string.nav_inicio, Screens.adminHome.route),
            Triple(Icons.Default.People, R.string.nav_pacientes, Screens.pacientes.route),
            Triple(Icons.Default.Psychology, R.string.nav_psicologos, Screens.listarPsicologo.route),
            Triple(Icons.Default.Quiz, R.string.nav_tests, Screens.test.route),
            Triple(Icons.Default.Edit, R.string.menu_registrar_psicologo, Screens.test.route),
            Triple(Icons.Default.AdminPanelSettings, R.string.menu_registrar_admin, Screens.agregarAdmin.route),
            Triple(Icons.AutoMirrored.Filled.Logout, R.string.menu_cerrar_sesion, Screens.login.route),
        )

    ModalNavigationDrawer(
        drawerContent = {
            ModalDrawerSheet(
                drawerContainerColor = MaterialTheme.colorScheme.primaryContainer,
            ) {
                // Header del drawer
                Box(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .background(MaterialTheme.colorScheme.primary)
                            .padding(24.dp),
                ) {
                    Column {
                        Icon(
                            painter = painterResource(id = R.drawable.logo_original),
                            contentDescription = "Logo",
                            modifier = Modifier.size(48.dp),
                            tint = Color.Unspecified,
                        )
                        Spacer(modifier = Modifier.height(8.dp))
                        Text(
                            text = "Panel Admin",
                            style = MaterialTheme.typography.titleMedium,
                            color = MaterialTheme.colorScheme.onPrimary,
                        )
                        Text(
                            text = "Gestión de usuarios",
                            style = MaterialTheme.typography.labelMedium,
                            color = MaterialTheme.colorScheme.onPrimary.copy(alpha = 0.8f),
                        )
                    }
                }

                // Items del menú
                menuItems.forEach { (icon, titleRes, route) ->
                    NavigationDrawerItem(
                        icon = {
                            Icon(
                                imageVector = icon,
                                contentDescription = null,
                                modifier = Modifier.size(24.dp),
                            )
                        },
                        label = {
                            Text(
                                text = stringResource(titleRes),
                                style = MaterialTheme.typography.bodyMedium,
                                fontWeight = if (currentRoute == route) FontWeight.Bold else FontWeight.Normal,
                            )
                        },
                        selected = currentRoute == route,
                        onClick = {
                            if (titleRes == R.string.menu_cerrar_sesion) {
                                onLogout()
                                navController.navigate(route) {
                                    popUpTo(Screens.adminHome.route) { inclusive = true }
                                    launchSingleTop = true
                                }
                            } else {
                                navController.navigate(route)
                            }
                        },
                        colors =
                            NavigationDrawerItemDefaults.colors(
                                selectedContainerColor = MaterialTheme.colorScheme.primaryContainer,
                                unselectedContainerColor = Color.Transparent,
                            ),
                        modifier = Modifier.padding(horizontal = 12.dp, vertical = 4.dp),
                    )
                }
            }
        },
    ) {
        // Contenido principal
        Box(modifier = Modifier.fillMaxSize())
    }
}
