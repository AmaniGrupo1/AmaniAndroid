package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import android.content.res.Configuration
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExtendedFloatingActionButton
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
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Pantalla que lista los psicólogos activos con opciones de gestión.
 *
 * Muestra una lista de psicólogos disponibles en el sistema. Permite al
 * administrador asignar un psicólogo a un paciente específico, dar de baja
 * a un psicólogo o editar sus datos. Incluye diálogos de confirmación
 * para las acciones de baja y asignación.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param loginViewModel ViewModel de autenticación para la asignación de pacientes.
 * @param pacienteId Identificador del paciente al que se asignará el psicólogo.
 * @param viewModel ViewModel que gestiona la lista de psicólogos.
 * @param listarPacientesViewModel ViewModel para gestionar bajas y altas.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPsicologosScreen(
    navController: NavController,
    loginViewModel: LoginViewModel,
    pacienteId: Long,
    viewModel: ListarPsicologosAdminViewModel,
    listarPacientesViewModel: ListarPacientesViewModel,
) {
    val context = LocalContext.current
    val psicologos by viewModel.psicologos.collectAsStateWithLifecycle()
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }
    var psicologoSeleccionado by remember { mutableStateOf<PsicologoSelfResponseDTO?>(null) }
    var mostrarDialogoBaja by remember { mutableStateOf(false) }
    var isBajaInProgress by remember { mutableStateOf(false) }

    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    // Observar el estado de la baja desde el ViewModel
    val bajaEstado by listarPacientesViewModel.bajaEstado.collectAsStateWithLifecycle()

    // Efecto para manejar el resultado de la baja
    LaunchedEffect(bajaEstado) {
        if (bajaEstado != null) {
            if (bajaEstado!!.isSuccess) {
                snackbarHostState.showSnackbar(context.getString(R.string.admin_psicologo_baja_exito))
                mostrarDialogoBaja = false
                psicologoSeleccionado = null
            } else if (bajaEstado!!.isFailure) {
                val msgError = bajaEstado!!.exceptionOrNull()?.message ?: context.getString(R.string.error_desconocido)
                snackbarHostState.showSnackbar(context.getString(R.string.agenda_error_formato, msgError))
            }
            isBajaInProgress = false
        }
    }

    val asignarSuccess by loginViewModel.asignarPacienteSuccess.collectAsStateWithLifecycle()
    val asignarError by loginViewModel.asignarPacienteError.collectAsStateWithLifecycle()
    val isAsignando by loginViewModel.isAsignandoPaciente.collectAsStateWithLifecycle()

    LaunchedEffect(asignarSuccess, asignarError) {
        if (asignarSuccess == true) {
            snackbarHostState.showSnackbar(context.getString(R.string.admin_psicologo_asignado_exito))
            loginViewModel.clearAsignarPsicologoResult()
        } else if (asignarError != null) {
            snackbarHostState.showSnackbar(context.getString(R.string.agenda_error_formato, asignarError))
            loginViewModel.clearAsignarPsicologoResult()
        }
    }

    Scaffold(
        containerColor = colorScheme.background,
        topBar = {
            Text(
                text = stringResource(R.string.auto_listado_de_psicologos),
                color = colorScheme.onBackground,
                style = typography.headlineSmall,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.padding(Spacing.m),
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        floatingActionButton = {
            ExtendedFloatingActionButton(
                onClick = { navController.popBackStack() },
                containerColor = colorScheme.primary,
                contentColor = colorScheme.onPrimary,
                shape = MaterialTheme.shapes.large,
            ) {
                Text(
                    text = stringResource(R.string.auto_cancelar),
                    style = typography.labelLarge,
                )
            }
        },
    ) { padding ->
        LazyColumn(
            modifier =
                Modifier
                    .padding(padding)
                    .fillMaxSize()
                    .padding(Spacing.m),
            verticalArrangement = Arrangement.spacedBy(Spacing.sm),
        ) {
            items(
                items = psicologos,
                key = { it.idPsicologo },
            ) { psicologo ->
                PsicologoAsignacionCard(
                    psicologo = psicologo,
                    isAsignando = isAsignando,
                    onDarBajaClick = {
                        psicologoSeleccionado = psicologo
                        mostrarDialogoBaja = true
                    },
                    onEditarClick = {},
                    onAsignarClick = {
                        scope.launch {
                            loginViewModel.asignarPaciente(
                                pacienteId,
                                psicologo.idPsicologo,
                            )
                        }
                    },
                )
            }
        }

        // ALERT DIALOG para dar de baja
        if (mostrarDialogoBaja && psicologoSeleccionado != null && !isBajaInProgress) {
            AlertDialog(
                onDismissRequest = {
                    if (!isBajaInProgress) {
                        mostrarDialogoBaja = false
                    }
                },
                containerColor = colorScheme.surface,
                title = {
                    Text(
                        stringResource(R.string.auto_confirmar_baja),
                        style = typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.onSurface,
                    )
                },
                text = {
                    Text(
                        stringResource(
                            R.string.admin_confirmar_baja_psicologo_msg,
                            "${psicologoSeleccionado!!.nombre} ${psicologoSeleccionado!!.apellido}",
                        ),
                        style = typography.bodyMedium,
                        color = colorScheme.onSurfaceVariant,
                    )
                },
                confirmButton = {
                    Button(
                        onClick = {
                            isBajaInProgress = true
                            listarPacientesViewModel.darBajaPsicologo(psicologoSeleccionado!!.idPsicologo)
                        },
                        enabled = !isBajaInProgress,
                        colors =
                            ButtonDefaults.buttonColors(
                                containerColor = colorScheme.error,
                                contentColor = colorScheme.onError,
                            ),
                    ) {
                        Text(
                            if (isBajaInProgress) {
                                stringResource(R.string.admin_procesando)
                            } else {
                                stringResource(R.string.auto_dar_de_baja)
                            },
                            style = typography.labelLarge,
                        )
                    }
                },
                dismissButton = {
                    OutlinedButton(
                        onClick = {
                            if (!isBajaInProgress) {
                                mostrarDialogoBaja = false
                            }
                        },
                        enabled = !isBajaInProgress,
                    ) {
                        Text(
                            stringResource(R.string.auto_cancelar),
                            style = typography.labelLarge,
                        )
                    }
                },
            )
        }
    }
}

@Composable
fun PsicologoAsignacionCard(
    psicologo: PsicologoSelfResponseDTO,
    isAsignando: Boolean,
    onDarBajaClick: () -> Unit,
    onEditarClick: () -> Unit,
    onAsignarClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Card(
        shape = MaterialTheme.shapes.large,
        modifier = modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceContainerLow),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
    ) {
        Column(modifier = Modifier.padding(Spacing.m)) {
            // Nombre
            Text(
                text = "${psicologo.nombre} ${psicologo.apellido}",
                color = colorScheme.onSurface,
                style = typography.titleMedium,
                fontWeight = FontWeight.Bold,
            )
            Spacer(modifier = Modifier.height(Spacing.s))

            // Especialidad
            Row(modifier = Modifier.fillMaxWidth()) {
                Text(
                    stringResource(R.string.auto__especialidad),
                    color = colorScheme.onSurfaceVariant,
                    style = typography.bodySmall,
                    modifier = Modifier.weight(1f),
                )
                Text(
                    psicologo.especialidad,
                    color = colorScheme.onSurface,
                    style = typography.bodySmall,
                    fontWeight = FontWeight.Medium,
                )
            }

            Spacer(modifier = Modifier.height(Spacing.xs))

            // Descripción
            if (!psicologo.descripcion.isNullOrBlank()) {
                Row(modifier = Modifier.fillMaxWidth()) {
                    Text(
                        stringResource(R.string.auto__descripcion),
                        color = colorScheme.onSurfaceVariant,
                        style = typography.bodySmall,
                        modifier = Modifier.weight(1f),
                    )
                    Text(
                        psicologo.descripcion,
                        color = colorScheme.onSurface,
                        style = typography.bodySmall,
                        maxLines = 2,
                    )
                }
                Spacer(modifier = Modifier.height(Spacing.xs))
            }

            // Licencia
            if (!psicologo.licencia.isNullOrBlank()) {
                Row(modifier = Modifier.fillMaxWidth()) {
                    Text(
                        stringResource(R.string.auto__licencia),
                        color = colorScheme.onSurfaceVariant,
                        style = typography.bodySmall,
                        modifier = Modifier.weight(1f),
                    )
                    Text(
                        psicologo.licencia,
                        color = colorScheme.onSurface,
                        style = typography.bodySmall,
                        fontWeight = FontWeight.Medium,
                    )
                }
                Spacer(modifier = Modifier.height(Spacing.xs))
            }

            // Experiencia
            psicologo.experiencia?.let { exp ->
                Row(modifier = Modifier.fillMaxWidth()) {
                    Text(
                        stringResource(R.string.auto__experiencia),
                        color = colorScheme.onSurfaceVariant,
                        style = typography.bodySmall,
                        modifier = Modifier.weight(1f),
                    )
                    Text(
                        stringResource(R.string.psicologo_anos_exp_valor, exp),
                        color = colorScheme.onSurface,
                        style = typography.bodySmall,
                        fontWeight = FontWeight.Medium,
                    )
                }
                Spacer(modifier = Modifier.height(Spacing.xs))
            }

            Spacer(modifier = Modifier.height(Spacing.sm))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(Spacing.s),
            ) {
                Button(
                    onClick = onDarBajaClick,
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = colorScheme.error,
                            contentColor = colorScheme.onError,
                        ),
                    modifier = Modifier.weight(1f),
                ) {
                    Text(stringResource(R.string.auto_dar_de_baja), style = typography.labelLarge)
                }

                Button(
                    onClick = onEditarClick,
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = colorScheme.primary,
                            contentColor = colorScheme.onPrimary,
                        ),
                    modifier = Modifier.weight(1f),
                ) {
                    Text(stringResource(R.string.auto_editar), style = typography.labelLarge)
                }
            }

            Spacer(modifier = Modifier.height(Spacing.s))

            Button(
                onClick = onAsignarClick,
                colors =
                    ButtonDefaults.buttonColors(
                        containerColor = colorScheme.primary,
                        contentColor = colorScheme.onPrimary,
                    ),
                modifier = Modifier.fillMaxWidth(),
                enabled = !isAsignando,
                shape = MaterialTheme.shapes.medium,
            ) {
                if (isAsignando) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(Dimensions.iconMedium),
                        color = colorScheme.onPrimary,
                        strokeWidth = Dimensions.borderMedium,
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(stringResource(R.string.auto_asignando), style = typography.labelLarge)
                } else {
                    Text(stringResource(R.string.auto__asignar_a_paciente), style = typography.labelLarge)
                }
            }
        }
    }
}

@Preview(name = "ListadoPsicologos Light", showBackground = true)
@Preview(
    name = "ListadoPsicologos Dark",
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
)
@Preview(name = "ListadoPsicologos Large Font", showBackground = true, fontScale = 1.5f)
@Composable
private fun ListadoPsicologosScreenPreview() {
    AppTheme {
        Surface(color = MaterialTheme.colorScheme.background) {
            Column(modifier = Modifier.padding(Spacing.m)) {
                PsicologoAsignacionCard(
                    psicologo =
                        PsicologoSelfResponseDTO(
                            idPsicologo = 1L,
                            nombre = "Carlos",
                            apellido = "Mendoza",
                            especialidad = "Psicología Clínica",
                            experiencia = 8,
                            descripcion = "Especialista en terapia cognitivo-conductual.",
                            licencia = "M-12345",
                            telefono = "600123456",
                            email = "carlos@amani.es",
                        ),
                    isAsignando = false,
                    onDarBajaClick = {},
                    onEditarClick = {},
                    onAsignarClick = {},
                )
            }
        }
    }
}
