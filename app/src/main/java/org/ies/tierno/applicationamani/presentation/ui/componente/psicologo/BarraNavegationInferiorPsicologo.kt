package org.ies.tierno.applicationamani.presentation.ui.componente.psicologo

import androidx.annotation.StringRes
import androidx.compose.foundation.layout.RowScope
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.NavigationBarItemDefaults
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.ui.res.stringResource
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

enum class PsicologoNavItem(
    val route: String,
    val icon: @Composable () -> Unit,
    @StringRes val labelRes: Int,
) {
    MIS_PACIENTES(
        route = Screens.psicologoHome.route,
        icon = { Icon(Icons.Default.People, contentDescription = stringResource(R.string.nav_pacientes)) },
        labelRes = R.string.nav_pacientes,
    ),
    AGENDA(
        route = Screens.psicologoAgenda.route,
        icon = { Icon(Icons.Default.CalendarToday, contentDescription = stringResource(R.string.nav_agenda)) },
        labelRes = R.string.nav_agenda,
    ),
    PERFIL(
        route = Screens.perfilPsicologo.route,
        icon = { Icon(Icons.Default.Person, contentDescription = stringResource(R.string.nav_perfil)) },
        labelRes = R.string.nav_perfil,
    ),
}

@Composable
fun BarraNavegationInferiorPsicologo(
    navController: NavController,
    selectedItem: PsicologoNavItem,
    onItemSelected: (PsicologoNavItem) -> Unit,
) {
    NavigationBar(
        containerColor = MaterialTheme.colorScheme.surfaceContainer, // M3: surfaceContainer per spec
    ) {
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
                label = {
                    Text(
                        text = stringResource(item.labelRes),
                        style = MaterialTheme.typography.labelMedium, // M3: labelMedium per spec
                    )
                },
                alwaysShowLabel = true, // M3: recommended for 3-5 items
                colors = NavigationBarItemDefaults.colors(), // M3: default semantic colors
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
    actions: @Composable RowScope.() -> Unit = {},
) {
    // Implementa tu TopBar aquí
    TopAppBar(
        title = { Text(title) },
        navigationIcon = {
            if (showBackButton) {
                IconButton(onClick = { navController.navigateUp() }) {
                    Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = stringResource(R.string.volver))
                }
            }
        },
        actions = actions,
        colors =
            TopAppBarDefaults.topAppBarColors(
                containerColor = MaterialTheme.colorScheme.primary, // M3: use theme primary
                titleContentColor = MaterialTheme.colorScheme.onPrimary,
                navigationIconContentColor = MaterialTheme.colorScheme.onPrimary,
                actionIconContentColor = MaterialTheme.colorScheme.onPrimary,
            ),
    )
}
