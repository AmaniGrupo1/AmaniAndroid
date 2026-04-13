package org.ies.tierno.applicationamani.presentation.ui.componente.psicologo


import androidx.compose.foundation.layout.RowScope
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.AmaniPsicologoColors

enum class PsicologoNavItem(val route: String, val icon: @Composable () -> Unit, val label: String) {
    MIS_PACIENTES(
        route = Screens.psicologoHome.route,
        icon = { Icon(Icons.Default.People, contentDescription = "Mis Pacientes") },
        label = "Pacientes"
    ),
    AGENDA(
        route = Screens.psicologoAgenda.route,
        icon = { Icon(Icons.Default.CalendarToday, contentDescription = "Agenda") },
        label = "Agenda"
    ),
    PERFIL(
        route = Screens.perfilPsicologo.route,
        icon = { Icon(Icons.Default.Person, contentDescription = "Perfil") },
        label = "Perfil"
    )
}

@Composable
fun BarraNavegationInferiorPsicologo(
    navController: NavController,
    selectedItem: PsicologoNavItem,
    onItemSelected: (PsicologoNavItem) -> Unit
) {
    NavigationBar {
        PsicologoNavItem.values().forEach { item ->
            NavigationBarItem(
                selected = selectedItem == item,
                onClick = {
                    onItemSelected(item)
                    navController.navigate(item.route) {
                        popUpTo(navController.graph.startDestinationId) {
                            saveState = true
                        }
                        launchSingleTop = true
                        restoreState = true
                    }
                },
                icon = item.icon,
                label = { Text(item.label) }
            )
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MenuPsicologo(
    title: String,
    navController: NavController,
    showBackButton: Boolean = true,
    actions: @Composable RowScope.() -> Unit = {}
){
    // Implementa tu TopBar aquí
    TopAppBar(
        title = { Text(title) },
        navigationIcon = {
            if (showBackButton) {
                IconButton(onClick = { navController.navigateUp() }) {
                    Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Volver")
                }
            }
        },
        actions = actions,
        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = AmaniPsicologoColors.Primary,
            titleContentColor = Color.White,
            navigationIconContentColor = Color.White,
            actionIconContentColor = Color.White
        )
    )
}