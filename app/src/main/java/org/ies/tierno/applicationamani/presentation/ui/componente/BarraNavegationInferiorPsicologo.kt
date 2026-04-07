package org.ies.tierno.applicationamani.presentation.ui.componente


import androidx.compose.foundation.layout.RowScope
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
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
import androidx.compose.ui.res.stringResource
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.AmaniPsicologoColors

enum class PsicologoNavItem(val route: String, val icon: @Composable () -> Unit, val label: String) {
    MIS_PACIENTES(
        route = "psicologo_pacientes",
        icon = { Icon(Icons.Default.People, contentDescription = "Mis Pacientes") },
        label = "Pacientes"
    ),
    AGENDA(
        route = "psicologo_agenda",
        icon = { Icon(Icons.Default.CalendarToday, contentDescription = "Agenda") },
        label = "Agenda"
    ),
    PERFIL(
        route = "psicologo_perfil",
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
    actions: @Composable () -> Unit = {}
) {
    // Implementa tu TopBar aquí
    TopAppBar(
        title = { Text(title) },
        navigationIcon = {
            if (showBackButton) {
                IconButton(onClick = { navController.navigateUp() }) {
                    Icon(Icons.Default.ArrowBack, contentDescription = "Volver")
                }
            }
        },
        actions = actions as @Composable (RowScope.() -> Unit),
        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = AmaniPsicologoColors.Primary,
            titleContentColor = Color.White,
            navigationIconContentColor = Color.White,
            actionIconContentColor = Color.White
        )
    )
}