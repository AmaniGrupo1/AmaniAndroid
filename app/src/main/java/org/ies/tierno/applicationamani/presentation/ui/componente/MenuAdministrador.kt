package org.ies.tierno.applicationamani.presentation.ui.componente

import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.Logout
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

/**
 * Modelo de datos para los items del menú
 */
data class MenuAdministrador(
    val title: String,
    val icon: ImageVector,
    val route: String,
    val isDanger: Boolean = false,
    val dividerBefore: Boolean = false,
    val dividerAfter: Boolean = false
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
    actions: @Composable RowScope.() -> Unit = {}
) {
    var expanded by remember { mutableStateOf(false) }
    val colors = MaterialTheme.colorScheme

    // Definición de items del menú
    val menuItems = remember {
        listOf(
            MenuAdministrador(
                title = "Registrar psicólogo",
                icon = Icons.Default.Psychology,
                route = Screens.agregarPsicologo.route,
                dividerAfter = true
            ),
            MenuAdministrador(
                title = "Crear test",
                icon = Icons.Default.Quiz,
                route = Screens.test.route
            ),
            MenuAdministrador(
                title = "Crear preguntas",
                icon = Icons.Default.Edit,
                route = Screens.test.route,
                dividerAfter = true
            ),
            MenuAdministrador(
                title = "Listar pacientes",
                icon = Icons.Default.People,
                route = Screens.pacientes.route
            ),
            MenuAdministrador(
                title = "Listar psicólogos",
                icon = Icons.Default.Psychology,
                route = Screens.listarPsicologo.route,
                dividerAfter = true
            ),
            MenuAdministrador(
                title = "Registrar administrador",
                icon = Icons.Default.AdminPanelSettings,
                route = Screens.agregarAdmin.route,
                dividerAfter = true
            ),
            MenuAdministrador(
                title = "Cerrar sesión",
                icon = Icons.Default.Logout,
                route = Screens.login.route,
                isDanger = true
            )
        )
    }

    TopAppBar(
        modifier = Modifier
            .shadow(elevation = 4.dp, shape = RoundedCornerShape(bottomStart = 0.dp, bottomEnd = 0.dp)),
        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = colors.primary,
            titleContentColor = colors.onPrimary,
            navigationIconContentColor = colors.onPrimary,
            actionIconContentColor = colors.onPrimary
        ),
        navigationIcon = {
            AnimatedVisibility(
                visible = showBackButton,
                enter = fadeIn() + slideInHorizontally(),
                exit = fadeOut() + slideOutHorizontally()
            ) {
                IconButton(onClick = { navController.navigateUp() }) {
                    Icon(
                        imageVector = Icons.Default.ArrowBack,
                        contentDescription = "Volver"
                    )
                }
            }
        },
        title = {
            AnimatedContent(
                targetState = showLogo to title,
                transitionSpec = {
                    fadeIn() with fadeOut()
                }
            ) { (showLogoValue, titleValue) ->
                if (showLogoValue) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.Center
                    ) {
                        Icon(
                            painter = painterResource(id = R.drawable.logo_original),
                            contentDescription = "Logo",
                            modifier = Modifier.size(32.dp),
                            tint = Color.Unspecified
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = titleValue,
                            fontSize = 20.sp,
                            fontWeight = FontWeight.Bold,
                            color = colors.onPrimary,
                            maxLines = 1
                        )
                    }
                } else {
                    Text(
                        text = titleValue,
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = colors.onPrimary,
                        maxLines = 1,
                        overflow = androidx.compose.ui.text.style.TextOverflow.Ellipsis
                    )
                }
            }
        },
        actions = {
            // Acciones personalizadas
            actions()

            // Badge de notificaciones (ejemplo)
            IconButton(
                onClick = { /* Navegar a notificaciones */ }
            ) {
                Badge(
                    containerColor = colors.error,
                    modifier = Modifier.offset(x = (-4).dp, y = 4.dp)
                ) {
                    Text("3", fontSize = 10.sp)
                }
                Icon(
                    imageVector = Icons.Default.Notifications,
                    contentDescription = "Notificaciones",
                    tint = colors.onPrimary
                )
            }

            // Botón de menú
            IconButton(
                onClick = { expanded = true }
            ) {
                Icon(
                    imageVector = Icons.Default.Menu,
                    contentDescription = "Menú de navegación",
                    tint = colors.onPrimary
                )
            }

            // Menú desplegable
            DropdownMenu(
                expanded = expanded,
                onDismissRequest = { expanded = false },
                modifier = Modifier
                    .shadow(elevation = 8.dp)
                    .clip(RoundedCornerShape(12.dp))
                    .width(280.dp),
                shape = RoundedCornerShape(12.dp)
            ) {
                // Header del menú
                DropdownMenuItem(
                    text = {
                        Column(
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Text(
                                text = "Menú de administración",
                                fontSize = 12.sp,
                                color = MaterialTheme.colorScheme.primary,
                                fontWeight = FontWeight.Medium
                            )
                            Text(
                                text = "Selecciona una opción",
                                fontSize = 10.sp,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    },
                    onClick = { },
                    enabled = false,
                    modifier = Modifier
                        .background(MaterialTheme.colorScheme.primaryContainer)
                        .clip(RoundedCornerShape(8.dp))
                )

                Divider()

                menuItems.forEach { item ->
                    if (item.dividerBefore) {
                        Divider()
                    }

                    DropdownMenuItem(
                        text = {
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.spacedBy(12.dp)
                            ) {
                                Icon(
                                    imageVector = item.icon,
                                    contentDescription = null,
                                    modifier = Modifier.size(20.dp),
                                    tint = if (item.isDanger)
                                        MaterialTheme.colorScheme.error
                                    else
                                        MaterialTheme.colorScheme.primary
                                )
                                Text(
                                    text = item.title,
                                    fontSize = 14.sp,
                                    fontWeight = FontWeight.Medium,
                                    color = if (item.isDanger)
                                        MaterialTheme.colorScheme.error
                                    else
                                        MaterialTheme.colorScheme.onSurface
                                )
                            }
                        },
                        onClick = {
                            expanded = false
                            if (item.title == "Cerrar sesión") {
                                onLogout?.invoke()
                                navController.navigate(item.route) {
                                    popUpTo(Screens.adminHome.route) { inclusive = true }
                                    launchSingleTop = true
                                }
                            } else {
                                navController.navigate(item.route)
                            }
                        },
                        modifier = Modifier.animateContentSize()
                    )

                    if (item.dividerAfter) {
                        Divider()
                    }
                }
            }
        }
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
    onActionClick: (() -> Unit)? = null
) {
    val colors = MaterialTheme.colorScheme

    TopAppBar(
        modifier = Modifier.shadow(elevation = 4.dp),
        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = colors.primary,
            titleContentColor = colors.onPrimary,
            navigationIconContentColor = colors.onPrimary,
            actionIconContentColor = colors.onPrimary
        ),
        navigationIcon = {
            if (showBackButton) {
                IconButton(onClick = { navController.navigateUp() }) {
                    Icon(
                        imageVector = Icons.Default.ArrowBack,
                        contentDescription = "Volver"
                    )
                }
            }
        },
        title = {
            if (showLogo) {
                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        painter = painterResource(id = R.drawable.logo_original),
                        contentDescription = "Logo",
                        modifier = Modifier.size(32.dp),
                        tint = Color.Unspecified
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = title,
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Medium,
                        color = colors.onPrimary
                    )
                }
            } else {
                Text(
                    text = title,
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Medium,
                    color = colors.onPrimary,
                    maxLines = 1,
                    overflow = androidx.compose.ui.text.style.TextOverflow.Ellipsis
                )
            }
        },
        actions = {
            onActionClick?.let {
                IconButton(onClick = it) {
                    Icon(
                        imageVector = Icons.Default.MoreVert,
                        contentDescription = "Más opciones"
                    )
                }
            }
        }
    )
}

/**
 * Menú lateral para navegación (Drawer)
 */
@Composable
fun MenuLateralAdministrador(
    navController: NavController,
    onLogout: () -> Unit,
    currentRoute: String
) {
    val menuItems = listOf(
        Triple(Icons.Default.Home, "Inicio", Screens.adminHome.route),
        Triple(Icons.Default.People, "Pacientes", Screens.pacientes.route),
        Triple(Icons.Default.Psychology, "Psicólogos", Screens.listarPsicologo.route),
        Triple(Icons.Default.Quiz, "Tests", Screens.test.route),
        Triple(Icons.Default.Edit, "Crear preguntas", Screens.test.route),
        Triple(Icons.Default.AdminPanelSettings, "Registrar admin", Screens.agregarAdmin.route),
        Triple(Icons.AutoMirrored.Filled.Logout, "Cerrar sesión", Screens.login.route)
    )

    ModalNavigationDrawer(
        drawerContent = {
            ModalDrawerSheet(
                drawerContainerColor = MaterialTheme.colorScheme.primaryContainer
            ) {
                // Header del drawer
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .background(MaterialTheme.colorScheme.primary)
                        .padding(24.dp)
                ) {
                    Column {
                        Icon(
                            painter = painterResource(id = R.drawable.logo_original),
                            contentDescription = "Logo",
                            modifier = Modifier.size(48.dp),
                            tint = Color.Unspecified
                        )
                        Spacer(modifier = Modifier.height(8.dp))
                        Text(
                            text = "Panel Admin",
                            color = MaterialTheme.colorScheme.onPrimary,
                            fontSize = 18.sp,
                            fontWeight = FontWeight.Bold
                        )
                        Text(
                            text = "Gestión de usuarios",
                            color = MaterialTheme.colorScheme.onPrimary.copy(alpha = 0.8f),
                            fontSize = 12.sp
                        )
                    }
                }

                // Items del menú
                menuItems.forEach { (icon, title, route) ->
                    NavigationDrawerItem(
                        icon = {
                            Icon(
                                imageVector = icon,
                                contentDescription = null,
                                modifier = Modifier.size(24.dp)
                            )
                        },
                        label = {
                            Text(
                                text = title,
                                fontSize = 14.sp,
                                fontWeight = if (currentRoute == route) FontWeight.Bold else FontWeight.Normal
                            )
                        },
                        selected = currentRoute == route,
                        onClick = {
                            if (title == "Cerrar sesión") {
                                onLogout()
                                navController.navigate(route) {
                                    popUpTo(Screens.adminHome.route) { inclusive = true }
                                    launchSingleTop = true
                                }
                            } else {
                                navController.navigate(route)
                            }
                        },
                        colors = NavigationDrawerItemDefaults.colors(
                            selectedContainerColor = MaterialTheme.colorScheme.primaryContainer,
                            unselectedContainerColor = Color.Transparent
                        ),
                        modifier = Modifier.padding(horizontal = 12.dp, vertical = 4.dp)
                    )
                }
            }
        }
    ) {
        // Contenido principal
        Box(modifier = Modifier.fillMaxSize())
    }
}
