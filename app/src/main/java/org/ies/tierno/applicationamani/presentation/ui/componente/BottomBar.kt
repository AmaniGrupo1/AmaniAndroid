//package org.ies.tierno.applicationamani.presentation.ui.componente
//
//import androidx.compose.material.icons.Icons
//import androidx.compose.material.icons.filled.CalendarMonth
//import androidx.compose.material.icons.filled.Groups
//import androidx.compose.material.icons.filled.Home
//import androidx.compose.material.icons.filled.Psychology
//import androidx.compose.material3.Icon
//import androidx.compose.material3.NavigationBar
//import androidx.compose.material3.NavigationBarItem
//import androidx.compose.material3.NavigationBarItemDefaults
//import androidx.compose.material3.Text
//import androidx.compose.runtime.Composable
//import androidx.compose.runtime.getValue
//import androidx.navigation.NavController
//import androidx.navigation.compose.currentBackStackEntryAsState
//import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
//
//private data class BottomBarDestination(
//    val route: String,
//    val label: String,
//    val icon: androidx.compose.ui.graphics.vector.ImageVector
//)
//
//@Composable
//fun BottomBar(navController: NavController) {
//    val backStackEntry by navController.currentBackStackEntryAsState()
//    val currentRoute = backStackEntry?.destination?.route
//
//    val destinations = listOf(
//        BottomBarDestination(
//            route = Screens.adminHome.route,
//            label = "Inicio",
//            icon = Icons.Default.Home
//        ),
//        BottomBarDestination(
//            route = Screens.pacientes.route,
//            label = "Pacientes",
//            icon = Icons.Default.Groups
//        ),
//        BottomBarDestination(
//            route = Screens.listaPsicologos.route,
//            label = "Psicologos",
//            icon = Icons.Default.Psychology
//        ),
//        BottomBarDestination(
//            route = Screens.psicologoAgenda.route,
//            label = "Calendario",
//            icon = Icons.Default.CalendarMonth
//        )
//    )
//
//    NavigationBar {
//        destinations.forEach { destination ->
//            NavigationBarItem(
//                selected = currentRoute == destination.route,
//                onClick = {
//                    if (currentRoute == destination.route) return@NavigationBarItem
//
//                    navController.navigate(destination.route) {
//                        popUpTo(navController.graph.startDestinationId) {
//                            saveState = true
//                        }
//                        launchSingleTop = true
//                        restoreState = true
//                    }
//                },
//                icon = {
//                    Icon(
//                        imageVector = destination.icon,
//                        contentDescription = destination.label
//                    )
//                },
//                label = { Text(destination.label) },
//                colors = NavigationBarItemDefaults.colors()
//            )
//        }
//    }
//}
