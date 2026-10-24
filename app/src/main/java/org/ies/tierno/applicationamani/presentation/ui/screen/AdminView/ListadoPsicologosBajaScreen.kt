package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import android.content.res.Configuration
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.PersonAdd
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Pantalla que lista los psicólogos actualmente dados de baja en el sistema.
 *
 * Muestra una lista de psicólogos inactivos con opción de reactivarlos
 * (dar de alta). Cada tarjeta muestra nombre, especialidad, licencia y
 * descripción del psicólogo. Al confirmar el alta, se actualiza la lista
 * y se notifica al usuario mediante un [SnackbarHost].
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona la lista de psicólogos.
 * @param listarPacienteViewModel ViewModel para gestionar el alta de psicólogos.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPsicologosBajaScreen(
    navController: NavController,
    viewModel: ListarPsicologosAdminViewModel,
    listarPacienteViewModel: ListarPacientesViewModel,
) {
    val context = LocalContext.current
    val psicologosBaja by viewModel.psicologosBaja.collectAsStateWithLifecycle()
    val snackbarHostState = remember { SnackbarHostState() }
    var psicologoSeleccionado by remember { mutableStateOf<PsicologoSelfResponseDTO?>(null) }
    var mostrarDialogoAlta by remember { mutableStateOf(false) }
    var isAltaInProgress by remember { mutableStateOf(false) }

    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val extraColors = AmaniTheme.colors

    // Observar el estado del alta desde el ViewModel
    val altaEstado by listarPacienteViewModel.altaEstado.collectAsStateWithLifecycle()

    // Efecto para manejar el resultado del alta
    LaunchedEffect(altaEstado) {
        if (altaEstado != null && isAltaInProgress) {
            if (altaEstado!!.isSuccess) {
                viewModel.actualizarPsicologoAlta(
                    psicologoSeleccionado!!.idPsicologo,
                )

                snackbarHostState.showSnackbar(
                    context.getString(
                        R.string.admin_psicologo_alta_exito_formato,
                        "${psicologoSeleccionado?.nombre.orEmpty()} ${psicologoSeleccionado?.apellido.orEmpty()}".trim(),
                    ),
                )

                mostrarDialogoAlta = false
                psicologoSeleccionado = null
                listarPacienteViewModel.limpiarAltaEstado()
            } else if (altaEstado!!.isFailure) {
                val msgError = altaEstado!!.exceptionOrNull()?.message ?: context.getString(R.string.error_desconocido)
                snackbarHostState.showSnackbar(
                    context.getString(R.string.admin_error_dar_alta_formato, msgError),
                )
            }

            isAltaInProgress = false
        }
    }

    Scaffold(
        containerColor = colorScheme.background,
        topBar = {
            Text(
                text = stringResource(R.string.auto_psicologos_dados_de_baja),
                style = typography.headlineSmall,
                fontWeight = FontWeight.Bold,
                color = colorScheme.primary,
                modifier = Modifier.padding(Spacing.m),
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .background(colorScheme.background),
        ) {
            if (psicologosBaja.isEmpty()) {
                Column(
                    modifier =
                        Modifier
                            .fillMaxSize()
                            .padding(Spacing.xl),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.Center,
                ) {
                    Text(
                        text = stringResource(R.string.auto__no_hay_psicologos_1),
                        style = typography.titleMedium,
                        color = colorScheme.onSurfaceVariant,
                        textAlign = TextAlign.Center,
                    )
                    Spacer(modifier = Modifier.height(Spacing.s))
                    Text(
                        text = stringResource(R.string.auto_todos_los_psicologos_estan),
                        style = typography.bodyMedium,
                        color = colorScheme.onSurfaceVariant,
                        textAlign = TextAlign.Center,
                    )
                }
            } else {
                LazyColumn(
                    modifier =
                        Modifier
                            .fillMaxSize()
                            .padding(Spacing.m),
                    verticalArrangement = Arrangement.spacedBy(Spacing.sm),
                ) {
                    items(
                        items = psicologosBaja,
                        key = { it.idPsicologo },
                    ) { psicologo ->
                        PsicologoBajaCard(
                            psicologo = psicologo,
                            onDarAlta = {
                                psicologoSeleccionado = psicologo
                                mostrarDialogoAlta = true
                            },
                        )
                    }
                }
            }
        }

        // ALERT DIALOG PARA DAR DE ALTA
        if (mostrarDialogoAlta && psicologoSeleccionado != null && !isAltaInProgress) {
            AlertDialog(
                onDismissRequest = {
                    if (!isAltaInProgress) {
                        mostrarDialogoAlta = false
                    }
                },
                containerColor = colorScheme.surface,
                title = {
                    Text(
                        text = stringResource(R.string.auto_confirmar_alta),
                        style = typography.headlineSmall,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.onSurface,
                    )
                },
                text = {
                    Text(
                        text =
                            stringResource(
                                R.string.admin_confirmar_alta_psicologo_msg,
                                "${psicologoSeleccionado!!.nombre} ${psicologoSeleccionado!!.apellido}",
                            ),
                        style = typography.bodyMedium,
                        color = colorScheme.onSurfaceVariant,
                    )
                },
                confirmButton = {
                    Button(
                        onClick = {
                            isAltaInProgress = true
                            listarPacienteViewModel.darAltaPsicologo(psicologoSeleccionado!!.idPsicologo)
                        },
                        colors =
                            ButtonDefaults.buttonColors(
                                containerColor = extraColors.success,
                                contentColor = extraColors.onSuccess,
                            ),
                        shape = MaterialTheme.shapes.medium,
                        enabled = !isAltaInProgress,
                    ) {
                        Text(
                            if (isAltaInProgress) {
                                stringResource(R.string.admin_procesando)
                            } else {
                                stringResource(R.string.auto_dar_de_alta)
                            },
                            style = typography.labelLarge,
                            fontWeight = FontWeight.Medium,
                        )
                    }
                },
                dismissButton = {
                    OutlinedButton(
                        onClick = {
                            if (!isAltaInProgress) {
                                mostrarDialogoAlta = false
                            }
                        },
                        shape = MaterialTheme.shapes.medium,
                        colors =
                            ButtonDefaults.outlinedButtonColors(
                                contentColor = colorScheme.primary,
                            ),
                        enabled = !isAltaInProgress,
                    ) {
                        Text(
                            stringResource(R.string.auto_cancelar),
                            style = typography.labelLarge,
                            fontWeight = FontWeight.Medium,
                        )
                    }
                },
            )
        }
    }
}

@Composable
fun PsicologoBajaCard(
    psicologo: PsicologoSelfResponseDTO,
    onDarAlta: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val extraColors = AmaniTheme.colors

    Card(
        shape = MaterialTheme.shapes.large,
        modifier = modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceContainerLow),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
    ) {
        Column(modifier = Modifier.padding(Spacing.m)) {
            // Indicador de estado "Dado de baja"
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    text = "${psicologo.nombre} ${psicologo.apellido}",
                    style = typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = colorScheme.primary,
                )

                Box(
                    modifier =
                        Modifier
                            .background(
                                color = colorScheme.errorContainer,
                                shape = MaterialTheme.shapes.medium,
                            ).padding(horizontal = Spacing.s, vertical = Spacing.xs),
                ) {
                    Text(
                        text = stringResource(R.string.auto_dado_de_baja),
                        style = typography.labelSmall,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.onErrorContainer,
                    )
                }
            }

            Spacer(modifier = Modifier.height(Spacing.s))

            // Especialidad
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
            ) {
                Text(
                    text = stringResource(R.string.auto_especialidad),
                    style = typography.bodyMedium,
                    color = colorScheme.onSurfaceVariant,
                    fontWeight = FontWeight.Medium,
                )
                Text(
                    text = psicologo.especialidad,
                    style = typography.bodyMedium,
                    color = colorScheme.onSurface,
                )
            }

            Spacer(modifier = Modifier.height(Spacing.xs))

            // Licencia
            if (!psicologo.licencia.isNullOrBlank()) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                ) {
                    Text(
                        text = stringResource(R.string.auto_licencia),
                        style = typography.bodyMedium,
                        color = colorScheme.onSurfaceVariant,
                        fontWeight = FontWeight.Medium,
                    )
                    Text(
                        text = psicologo.licencia,
                        style = typography.bodyMedium,
                        color = colorScheme.onSurface,
                    )
                }
                Spacer(modifier = Modifier.height(Spacing.xs))
            }

            // Descripción
            if (!psicologo.descripcion.isNullOrBlank()) {
                Text(
                    text = stringResource(R.string.auto_descripcion),
                    style = typography.bodyMedium,
                    color = colorScheme.onSurfaceVariant,
                    fontWeight = FontWeight.Medium,
                    modifier = Modifier.padding(top = Spacing.s),
                )
                Text(
                    text = psicologo.descripcion,
                    style = typography.bodySmall,
                    color = colorScheme.onSurfaceVariant,
                    modifier = Modifier.padding(top = Spacing.xxs),
                )
            }

            Spacer(modifier = Modifier.height(Spacing.m))

            // Botón de acción: Dar de alta
            Button(
                onClick = onDarAlta,
                colors =
                    ButtonDefaults.buttonColors(
                        containerColor = extraColors.success,
                        contentColor = extraColors.onSuccess,
                    ),
                shape = MaterialTheme.shapes.medium,
                modifier = Modifier.fillMaxWidth(),
            ) {
                Icon(
                    imageVector = Icons.Default.PersonAdd,
                    contentDescription = stringResource(R.string.auto_dar_de_alta),
                    modifier = Modifier.padding(end = Spacing.s),
                )
                Text(
                    stringResource(R.string.auto_dar_de_alta),
                    style = typography.labelLarge,
                    fontWeight = FontWeight.Medium,
                )
            }
        }
    }
}

@Preview(name = "ListadoPsicologosBaja Light", showBackground = true)
@Preview(
    name = "ListadoPsicologosBaja Dark",
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
)
@Preview(name = "ListadoPsicologosBaja Large Font", showBackground = true, fontScale = 1.5f)
@Composable
private fun ListadoPsicologosBajaScreenPreview() {
    AppTheme {
        Surface(color = MaterialTheme.colorScheme.background) {
            Column(modifier = Modifier.padding(Spacing.m)) {
                PsicologoBajaCard(
                    psicologo =
                        PsicologoSelfResponseDTO(
                            idPsicologo = 2L,
                            nombre = "Elena",
                            apellido = "Martínez",
                            especialidad = "Terapia Familiar",
                            experiencia = 5,
                            descripcion = "Especialista en terapia sistémica.",
                            licencia = "M-54321",
                            telefono = "600987654",
                            email = "elena@amani.es",
                        ),
                    onDarAlta = {},
                )
            }
        }
    }
}
