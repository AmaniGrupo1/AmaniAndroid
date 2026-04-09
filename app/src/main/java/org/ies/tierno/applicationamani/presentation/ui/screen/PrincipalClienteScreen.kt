package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
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
 * Incluye:
 * - **Cajón de navegación lateral** con opciones de perfil, citas y cierre
 *   de sesión.
 * - **Barra de navegación inferior** con cinco secciones: Inicio, Chat,
 *   Citas, Diario y Ajustes.
 * - **Tarjetas** con el color primario del tema para la imagen y los datos
 *   del profesional.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que provee los datos del psicólogo y sus especialidades.
 *
 * @see PrincipalClienteViewModel
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PrincipalClienteScreen(navController: NavController, viewModel: PrincipalClienteViewModel = viewModel()) {
    val colors = MaterialTheme.colorScheme
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
                    style = typography.titleMedium
                )
                HorizontalDivider()
                Text(
                    text = "Perfil",
                    style = typography.bodyLarge,
                    modifier = Modifier
                        .fillMaxWidth()
                        .clickable { }
                        .padding(16.dp)
                )
                Text(
                    text = "Mis citas",
                    style = typography.bodyLarge,
                    modifier = Modifier
                        .fillMaxWidth()
                        .clickable { }
                        .padding(16.dp)
                )
                Text(
                    text = "Cerrar sesión",
                    style = typography.bodyLarge,
                    modifier = Modifier
                        .fillMaxWidth()
                        .clickable { }
                        .padding(16.dp)
                )
            }
        }
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
                            }
                        ) {
                            Icon(
                                imageVector = Icons.Default.Menu,
                                contentDescription = "Menu"
                            )
                        }
                    }
                )
            },
            bottomBar = {
                AmaniBottomBar(navController, BottomBarConfig.Paciente)
            }
        ) { paddingValues ->
            Column(
                modifier = Modifier
                    .padding(paddingValues)
                    .padding(16.dp)
                    .fillMaxSize(),
                verticalArrangement = Arrangement.spacedBy(20.dp)
            ) {
                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(200.dp),
                    colors = CardDefaults.cardColors(
                        containerColor = colors.primary
                    )
                ) {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Text("Imagen del psicólogo")
                    }
                }
                Card(
                    modifier = Modifier
                        .fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = colors.primary
                    )
                ) {
                    Column(
                        modifier = Modifier.padding(16.dp)
                    ) {
                        Text(
                            text = "N. Psico",
                            style = typography.titleLarge,
                            modifier = Modifier.padding(16.dp),
                        )
                        Spacer(modifier = Modifier.height(8.dp))

                        Text(
                            "Biografía",
                            style = typography.titleMedium,
                            modifier = Modifier.padding(16.dp),
                        )
                        Spacer(modifier = Modifier.height(8.dp))

                        especialidades.forEach { especialidad ->
                            Row(
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Text(
                                    especialidad,
                                    style = typography.titleMedium,
                                    modifier = Modifier.padding(16.dp),
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