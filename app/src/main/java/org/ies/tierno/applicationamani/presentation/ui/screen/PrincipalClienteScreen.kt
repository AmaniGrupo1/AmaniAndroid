package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.DrawerValue
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalDrawerSheet
import androidx.compose.material3.ModalNavigationDrawer
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.material3.rememberDrawerState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomBarConfig
import org.ies.tierno.applicationamani.presentation.viewmodels.PrincipalClienteViewModel

/**
 * Pantalla principal del cliente autenticado.
 *
 * Presenta la información del psicólogo asignado (imagen, nombre, biografía
 * y especialidades) obtenida de [PrincipalClienteViewModel].
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que provee los datos del psicólogo y sus especialidades.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PrincipalClienteScreen(
    navController: NavController,
    viewModel: PrincipalClienteViewModel = viewModel(),
) {
    val typography = MaterialTheme.typography
    val drawerState = rememberDrawerState(initialValue = DrawerValue.Closed)
    val scope = rememberCoroutineScope()
    val especialidades = viewModel.especialidades

    ModalNavigationDrawer(
        drawerState = drawerState,
        drawerContent = {
            ModalDrawerSheet {
                Text(
                    text = "Menú",
                    modifier = Modifier.padding(16.dp),
                    style = typography.titleLarge, // M3: titleLarge for drawer header
                )
                HorizontalDivider()
                Text(
                    text = "Perfil",
                    style = typography.bodyLarge,
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .clickable { }
                            .padding(16.dp),
                )
                Text(
                    text = "Mis citas",
                    style = typography.bodyLarge,
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .clickable { }
                            .padding(16.dp),
                )
                Text(
                    text = "Cerrar sesión",
                    style = typography.bodyLarge,
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .clickable { }
                            .padding(16.dp),
                )
            }
        },
    ) {
        Scaffold(
            topBar = {
                TopAppBar(
                    title = { Text("Inicio") },
                    navigationIcon = {
                        IconButton(
                            onClick = {
                                scope.launch {
                                    drawerState.open()
                                }
                            },
                        ) {
                            Icon(
                                imageVector = Icons.Default.Menu,
                                contentDescription = "Menu",
                            )
                        }
                    },
                    // M3: TopAppBar colors and scroll behavior (pinned by default in Scaffold)
                    colors =
                        TopAppBarDefaults.topAppBarColors(
                            containerColor = MaterialTheme.colorScheme.surface,
                            titleContentColor = MaterialTheme.colorScheme.onSurface,
                            navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                        ),
                )
            },
            bottomBar = {
                // M3: Integrated AmaniBottomBar
                AmaniBottomBar(
                    navController = navController,
                    config = BottomBarConfig.Paciente,
                )
            },
        ) { paddingValues ->
            Column(
                modifier =
                    Modifier
                        .padding(paddingValues)
                        .padding(16.dp)
                        .fillMaxSize(),
                verticalArrangement = Arrangement.spacedBy(24.dp), // M3: Spacing multiple of 8
            ) {
                // M3: Card with surfaceContainerHigh for better depth
                Card(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .height(200.dp),
                    colors =
                        CardDefaults.cardColors(
                            containerColor = MaterialTheme.colorScheme.surfaceContainerHigh,
                            contentColor = MaterialTheme.colorScheme.onSurfaceVariant,
                        ),
                    shape = MaterialTheme.shapes.medium,
                ) {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Text(
                            text = "Imagen del psicólogo",
                            style = typography.bodyLarge,
                        )
                    }
                }

                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors =
                        CardDefaults.cardColors(
                            containerColor = MaterialTheme.colorScheme.surfaceContainer,
                            contentColor = MaterialTheme.colorScheme.onSurface,
                        ),
                    shape = MaterialTheme.shapes.medium,
                ) {
                    Column(
                        modifier = Modifier.padding(16.dp),
                    ) {
                        Text(
                            text = "N. Psico",
                            style = typography.titleLarge,
                            color = MaterialTheme.colorScheme.onSurface,
                            modifier = Modifier.padding(bottom = 8.dp),
                        )

                        Text(
                            text = "Biografía",
                            style = typography.titleMedium,
                            color = MaterialTheme.colorScheme.primary, // M3: Primary for secondary headers
                            modifier = Modifier.padding(vertical = 8.dp),
                        )

                        especialidades.forEach { especialidad ->
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                modifier = Modifier.padding(vertical = 4.dp),
                            ) {
                                Text(
                                    text = especialidad,
                                    style = typography.bodyLarge,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

/**
 * Vista previa de [PrincipalClienteScreen] para el panel de diseño de Android Studio.
 */
@Preview(showBackground = true)
@Composable
fun PrincipalClienteScreenPreview() {
    PrincipalClienteScreen(rememberNavController())
}
