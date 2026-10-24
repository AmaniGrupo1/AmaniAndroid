package org.ies.tierno.applicationamani.presentation.ui.screen
import org.ies.tierno.applicationamani.ui.theme.AppTheme

import android.content.res.Configuration
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomBarConfig
import org.ies.tierno.applicationamani.presentation.viewmodels.PrincipalClienteViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Spacing

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
    PrincipalClienteScreenContent(
        especialidades = viewModel.especialidades,
        bottomBar = {
            AmaniBottomBar(
                navController = navController,
                config = BottomBarConfig.Paciente,
            )
        },
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PrincipalClienteScreenContent(
    especialidades: List<String>,
    bottomBar: @Composable () -> Unit = {},
    modifier: Modifier = Modifier,
) {
    val typography = MaterialTheme.typography

    Scaffold(
        modifier = modifier,
        containerColor = MaterialTheme.colorScheme.background,
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.auto_inicio)) },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                    ),
            )
        },
        bottomBar = bottomBar,
    ) { paddingValues ->
        Column(
            modifier =
                Modifier
                    .padding(paddingValues)
                    .padding(Spacing.m)
                    .fillMaxSize(),
            verticalArrangement = Arrangement.spacedBy(Spacing.l),
        ) {
            Card(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .height(Dimensions.bannerHeight),
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
                        text = stringResource(R.string.auto_imagen_del_psicologo),
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
                    modifier = Modifier.padding(Spacing.m),
                ) {
                    Text(
                        text = stringResource(R.string.auto_n_psico),
                        style = typography.titleLarge,
                        color = MaterialTheme.colorScheme.onSurface,
                        modifier = Modifier.padding(bottom = Spacing.s),
                    )

                    Text(
                        text = stringResource(R.string.auto_biografia),
                        style = typography.titleMedium,
                        color = MaterialTheme.colorScheme.primary,
                        modifier = Modifier.padding(vertical = Spacing.s),
                    )

                    especialidades.forEach { especialidad ->
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier.padding(vertical = Spacing.xs),
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

/**
 * Vista previa de [PrincipalClienteScreen] para el panel de diseño de Android Studio.
 */
@Preview(showBackground = true, name = "PrincipalClienteScreen - Light")
@Preview(showBackground = true, uiMode = Configuration.UI_MODE_NIGHT_YES, name = "PrincipalClienteScreen - Dark")
@Preview(showBackground = true, fontScale = 1.5f, name = "PrincipalClienteScreen - FontScale 1.5x")
@Composable
fun PrincipalClienteScreenPreview() {
    AppTheme {
        PrincipalClienteScreenContent(
            especialidades = listOf("Terapia Cognitivo-Conductual", "Gestión de Ansiedad", "Mindfulness"),
            bottomBar = {
                AmaniBottomBar(
                    navController = rememberNavController(),
                    config = BottomBarConfig.Paciente,
                )
            },
        )
    }
}
