package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import android.content.res.Configuration
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import androidx.navigation.compose.currentBackStackEntryAsState
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.DarAltaPsicologo
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Pantalla simplificada de listado de psicólogos con acciones rápidas.
 *
 * Presenta una lista de psicólogos con tarjetas expandibles que muestran
 * información detallada. Cada tarjeta incluye botones para dar de baja y
 * editar los datos del psicólogo. La lista se recarga automáticamente al
 * entrar en la pantalla.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona la lista de psicólogos.
 * @param listarPaciente ViewModel para gestionar bajas de psicólogos.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPsicologosSimpleScreen(
    navController: NavController,
    viewModel: ListarPsicologosAdminViewModel,
    listarPaciente: ListarPacientesViewModel,
) {
    val psicologos by viewModel.psicologos.collectAsStateWithLifecycle()
    val context = LocalContext.current
    val navBackStackEntry by navController.currentBackStackEntryAsState()

    LaunchedEffect(navBackStackEntry) {
        viewModel.recargarPsicologos()
    }

    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }
    var psicologoSeleccionado by remember { mutableStateOf<PsicologoSelfResponseDTO?>(null) }
    var mostrarDialogoBaja by remember { mutableStateOf(false) }
    var mostrarDialogoEdicion by remember { mutableStateOf(false) }
    var isBajaInProgress by remember { mutableStateOf(false) }
    var isEditInProgress by remember { mutableStateOf(false) }

    var editNombre by remember { mutableStateOf("") }
    var editApellido by remember { mutableStateOf("") }
    var editEspecialidad by remember { mutableStateOf("") }
    var editExperiencia by remember { mutableStateOf("") }
    var editDescripcion by remember { mutableStateOf("") }
    var editLicencia by remember { mutableStateOf("") }
    var editTelefono by remember { mutableStateOf("") }
    var editEmail by remember { mutableStateOf("") }

    LaunchedEffect(mostrarDialogoEdicion, psicologoSeleccionado) {
        if (mostrarDialogoEdicion && psicologoSeleccionado != null) {
            editNombre = psicologoSeleccionado!!.nombre ?: ""
            editApellido = psicologoSeleccionado!!.apellido ?: ""
            editEspecialidad = psicologoSeleccionado!!.especialidad ?: ""
            editExperiencia = psicologoSeleccionado!!.experiencia?.toString() ?: ""
            editDescripcion = psicologoSeleccionado!!.descripcion ?: ""
            editLicencia = psicologoSeleccionado!!.licencia ?: ""
            editTelefono = psicologoSeleccionado!!.telefono ?: ""
            editEmail = psicologoSeleccionado!!.email ?: ""
        }
    }

    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    val bajaEstado by listarPaciente.bajaEstado.collectAsStateWithLifecycle()

    LaunchedEffect(bajaEstado) {
        if (bajaEstado != null && isBajaInProgress) {
            if (bajaEstado!!.isSuccess) {
                viewModel.actualizarPsicologoBaja(psicologoSeleccionado!!.idPsicologo)
                snackbarHostState.showSnackbar(
                    context.getString(R.string.admin_psicologo_baja_exito),
                )
                mostrarDialogoBaja = false
                psicologoSeleccionado = null
            } else if (bajaEstado!!.isFailure) {
                val errMsg = bajaEstado!!.exceptionOrNull()?.message ?: context.getString(R.string.error_desconocido)
                snackbarHostState.showSnackbar(
                    context.getString(R.string.admin_error_dar_baja_formato, errMsg),
                )
            }
            isBajaInProgress = false
        }
    }

    Scaffold(
        containerColor = colorScheme.background,
        topBar = {
            DarAltaPsicologo(
                title = stringResource(R.string.lista_de_psicologos),
                navController = navController,
                showBackButton = true,
                showLogo = false,
                onLogout = {},
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = { navController.navigate(Screens.agregarPsicologo.route) },
                containerColor = colorScheme.primaryContainer,
                contentColor = colorScheme.onPrimaryContainer,
                shape = CircleShape,
            ) {
                Icon(
                    Icons.Default.Person,
                    contentDescription = stringResource(R.string.auto_agregar_psicologo),
                )
            }
        },
    ) { paddingValues ->
        ListadoPsicologosSimpleBody(
            psicologos = psicologos,
            onDarBaja = { psicologo ->
                psicologoSeleccionado = psicologo
                mostrarDialogoBaja = true
            },
            onEditar = { psicologo ->
                psicologoSeleccionado = psicologo
                mostrarDialogoEdicion = true
            },
            modifier = Modifier.padding(paddingValues),
        )

        if (mostrarDialogoBaja && psicologoSeleccionado != null && !isBajaInProgress) {
            AlertDialog(
                onDismissRequest = {
                    if (!isBajaInProgress) {
                        mostrarDialogoBaja = false
                    }
                },
                containerColor = colorScheme.surfaceContainerHigh,
                title = {
                    Text(
                        text = stringResource(R.string.auto_confirmar_baja),
                        style = typography.headlineSmall,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.onSurface,
                    )
                },
                text = {
                    Text(
                        text =
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
                            listarPaciente.darBajaPsicologo(psicologoSeleccionado!!.idPsicologo)
                        },
                        colors =
                            ButtonDefaults.buttonColors(
                                containerColor = colorScheme.error,
                                contentColor = colorScheme.onError,
                            ),
                        shape = MaterialTheme.shapes.medium,
                        enabled = !isBajaInProgress,
                    ) {
                        Text(
                            text =
                                if (isBajaInProgress) {
                                    stringResource(R.string.admin_procesando)
                                } else {
                                    stringResource(R.string.auto_dar_de_baja)
                                },
                            style = typography.labelLarge,
                            fontWeight = FontWeight.Medium,
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
                        shape = MaterialTheme.shapes.medium,
                        colors = ButtonDefaults.outlinedButtonColors(contentColor = colorScheme.primary),
                        enabled = !isBajaInProgress,
                    ) {
                        Text(stringResource(R.string.auto_cancelar))
                    }
                },
            )
        }

        if (mostrarDialogoEdicion && psicologoSeleccionado != null && !isEditInProgress) {
            AlertDialog(
                onDismissRequest = {
                    if (!isEditInProgress) {
                        mostrarDialogoEdicion = false
                        psicologoSeleccionado = null
                    }
                },
                containerColor = colorScheme.surfaceContainerHigh,
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .padding(Spacing.m),
                title = {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.Person,
                            contentDescription = null,
                            tint = colorScheme.primary,
                            modifier = Modifier.size(Dimensions.iconDefault),
                        )
                        Spacer(modifier = Modifier.width(Spacing.sm))
                        Text(
                            text = stringResource(R.string.auto_editar_psicologo),
                            style = typography.headlineSmall,
                            fontWeight = FontWeight.Bold,
                            color = colorScheme.onSurface,
                        )
                    }
                },
                text = {
                    Column(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .heightIn(max = Dimensions.dialogMaxHeight)
                                .verticalScroll(rememberScrollState()),
                        verticalArrangement = Arrangement.spacedBy(Spacing.sm),
                    ) {
                        OutlinedTextField(
                            value = editNombre,
                            onValueChange = { editNombre = it },
                            label = { Text(stringResource(R.string.auto_nombre_)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = MaterialTheme.shapes.medium,
                        )

                        OutlinedTextField(
                            value = editApellido,
                            onValueChange = { editApellido = it },
                            label = { Text(stringResource(R.string.auto_apellido_)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = MaterialTheme.shapes.medium,
                        )

                        OutlinedTextField(
                            value = editEmail,
                            onValueChange = { editEmail = it },
                            label = { Text(stringResource(R.string.auto_email)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = MaterialTheme.shapes.medium,
                        )

                        OutlinedTextField(
                            value = editTelefono,
                            onValueChange = { editTelefono = it },
                            label = { Text(stringResource(R.string.auto_telefono)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = MaterialTheme.shapes.medium,
                        )

                        OutlinedTextField(
                            value = editEspecialidad,
                            onValueChange = { editEspecialidad = it },
                            label = { Text(stringResource(R.string.auto_especialidad_)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = MaterialTheme.shapes.medium,
                        )

                        OutlinedTextField(
                            value = editExperiencia,
                            onValueChange = { editExperiencia = it },
                            label = { Text(stringResource(R.string.auto_anos_de_experiencia)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = MaterialTheme.shapes.medium,
                        )

                        OutlinedTextField(
                            value = editLicencia,
                            onValueChange = { editLicencia = it },
                            label = { Text(stringResource(R.string.auto_numero_de_licencia)) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = MaterialTheme.shapes.medium,
                        )

                        OutlinedTextField(
                            value = editDescripcion,
                            onValueChange = { editDescripcion = it },
                            label = { Text(stringResource(R.string.auto_descripcion_profesional)) },
                            modifier = Modifier.fillMaxWidth(),
                            minLines = 3,
                            shape = MaterialTheme.shapes.medium,
                        )
                    }
                },
                confirmButton = {
                    Button(
                        onClick = {
                            val experienciaInt = if (editExperiencia.isNotBlank()) editExperiencia.toIntOrNull() else null

                            val request =
                                PsicologoRequestDTO(
                                    nombrePsicologo = editNombre,
                                    apellidoPsicologo = editApellido,
                                    email = editEmail,
                                    password = "",
                                    especialidad = editEspecialidad,
                                    experiencia = experienciaInt,
                                    descripcion = editDescripcion.ifBlank { null },
                                    licencia = editLicencia.ifBlank { null },
                                    telefono = editTelefono.ifBlank { null },
                                )

                            isEditInProgress = true
                            viewModel.editarPsicologo(psicologoSeleccionado!!.idPsicologo, request)

                            scope.launch {
                                delay(1000)
                                isEditInProgress = false
                                mostrarDialogoEdicion = false
                                psicologoSeleccionado = null
                                snackbarHostState.showSnackbar(context.getString(R.string.admin_psicologo_actualizado_exito))
                            }
                        },
                        colors = ButtonDefaults.buttonColors(containerColor = colorScheme.primary),
                        shape = MaterialTheme.shapes.medium,
                        enabled = editNombre.isNotBlank() && editApellido.isNotBlank() && editEspecialidad.isNotBlank() && !isEditInProgress,
                    ) {
                        if (isEditInProgress) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(Dimensions.iconMedium),
                                color = colorScheme.onPrimary,
                                strokeWidth = Dimensions.borderMedium,
                            )
                            Spacer(modifier = Modifier.width(Spacing.s))
                            Text(stringResource(R.string.auto_guardando))
                        } else {
                            Text(stringResource(R.string.auto__guardar), fontWeight = FontWeight.Bold)
                        }
                    }
                },
                dismissButton = {
                    OutlinedButton(
                        onClick = {
                            if (!isEditInProgress) {
                                mostrarDialogoEdicion = false
                                psicologoSeleccionado = null
                            }
                        },
                        shape = MaterialTheme.shapes.medium,
                        colors = ButtonDefaults.outlinedButtonColors(contentColor = colorScheme.error),
                        enabled = !isEditInProgress,
                    ) {
                        Text(stringResource(R.string.auto_cancelar))
                    }
                },
            )
        }
    }
}

@Composable
fun ListadoPsicologosSimpleBody(
    psicologos: List<PsicologoSelfResponseDTO>,
    onDarBaja: (PsicologoSelfResponseDTO) -> Unit,
    onEditar: (PsicologoSelfResponseDTO) -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Box(
        modifier =
            modifier
                .fillMaxSize()
                .background(colorScheme.background),
    ) {
        if (psicologos.isEmpty()) {
            Column(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .padding(Spacing.xl),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Center,
            ) {
                Text(
                    text = stringResource(R.string.auto__no_hay_psicologos),
                    style = typography.titleMedium,
                    color = colorScheme.onSurfaceVariant,
                    textAlign = TextAlign.Center,
                )
                Spacer(modifier = Modifier.height(Spacing.s))
                Text(
                    text = stringResource(R.string.auto_presiona_el_boton_para),
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
                items(psicologos, key = { it.idPsicologo }) { psicologo ->
                    PsicologoCardExpandable(
                        psicologo = psicologo,
                        onDarBaja = { onDarBaja(psicologo) },
                        onEditar = { onEditar(psicologo) },
                    )
                }
            }
        }
    }
}

@Composable
fun PsicologoCardExpandable(
    psicologo: PsicologoSelfResponseDTO,
    onDarBaja: () -> Unit,
    onEditar: () -> Unit,
    modifier: Modifier = Modifier,
) {
    var expanded by remember { mutableStateOf(false) }
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Card(
        shape = MaterialTheme.shapes.large,
        modifier =
            modifier
                .fillMaxWidth()
                .clickable { expanded = !expanded },
        colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceContainerLow),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
    ) {
        Column(modifier = Modifier.padding(Spacing.m)) {
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
                    modifier = Modifier.weight(1f),
                )

                Icon(
                    imageVector = if (expanded) Icons.Default.KeyboardArrowUp else Icons.Default.KeyboardArrowDown,
                    contentDescription =
                        if (expanded) {
                            stringResource(R.string.admin_contraer)
                        } else {
                            stringResource(R.string.admin_expandir)
                        },
                    tint = colorScheme.onSurfaceVariant,
                    modifier = Modifier.size(Dimensions.iconDefault),
                )
            }

            if (expanded) {
                Spacer(modifier = Modifier.height(Spacing.m))

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                ) {
                    Text(
                        text = stringResource(R.string.auto_email_1),
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                        fontWeight = FontWeight.Medium,
                    )
                    Text(
                        text = psicologo.email,
                        style = typography.bodySmall,
                        color = colorScheme.onSurface,
                    )
                }

                Spacer(modifier = Modifier.height(Spacing.xs))

                if (!psicologo.telefono.isNullOrBlank()) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                    ) {
                        Text(
                            text = stringResource(R.string.auto_telefono_1),
                            style = typography.bodySmall,
                            color = colorScheme.onSurfaceVariant,
                            fontWeight = FontWeight.Medium,
                        )
                        Text(
                            text = psicologo.telefono,
                            style = typography.bodySmall,
                            color = colorScheme.onSurface,
                        )
                    }
                    Spacer(modifier = Modifier.height(Spacing.xs))
                }

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                ) {
                    Text(
                        text = stringResource(R.string.auto_especialidad),
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                        fontWeight = FontWeight.Medium,
                    )
                    Text(
                        text = psicologo.especialidad,
                        style = typography.bodySmall,
                        color = colorScheme.onSurface,
                    )
                }

                Spacer(modifier = Modifier.height(Spacing.xs))

                if (psicologo.experiencia != null && psicologo.experiencia > 0) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                    ) {
                        Text(
                            text = stringResource(R.string.auto_experiencia),
                            style = typography.bodySmall,
                            color = colorScheme.onSurfaceVariant,
                            fontWeight = FontWeight.Medium,
                        )
                        Text(
                            text = stringResource(R.string.experiencia_anos, psicologo.experiencia),
                            style = typography.bodySmall,
                            color = colorScheme.onSurface,
                        )
                    }
                    Spacer(modifier = Modifier.height(Spacing.xs))
                }

                if (!psicologo.licencia.isNullOrBlank()) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                    ) {
                        Text(
                            text = stringResource(R.string.auto_licencia),
                            style = typography.bodySmall,
                            color = colorScheme.onSurfaceVariant,
                            fontWeight = FontWeight.Medium,
                        )
                        Text(
                            text = psicologo.licencia,
                            style = typography.bodySmall,
                            color = colorScheme.onSurface,
                        )
                    }
                    Spacer(modifier = Modifier.height(Spacing.xs))
                }

                if (!psicologo.descripcion.isNullOrBlank()) {
                    Text(
                        text = stringResource(R.string.auto_descripcion),
                        style = typography.labelMedium,
                        color = colorScheme.onSurfaceVariant,
                        fontWeight = FontWeight.Medium,
                        modifier = Modifier.padding(top = Spacing.s),
                    )
                    Text(
                        text = psicologo.descripcion,
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                        modifier = Modifier.padding(top = Spacing.xxs),
                        maxLines = 3,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
            }

            Spacer(modifier = Modifier.height(Spacing.m))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(Spacing.sm),
            ) {
                Button(
                    onClick = onDarBaja,
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = colorScheme.error,
                            contentColor = colorScheme.onError,
                        ),
                    shape = MaterialTheme.shapes.medium,
                    modifier = Modifier.weight(1f),
                ) {
                    Text(stringResource(R.string.auto_dar_de_baja))
                }

                Button(
                    onClick = onEditar,
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = colorScheme.primary,
                            contentColor = colorScheme.onPrimary,
                        ),
                    shape = MaterialTheme.shapes.medium,
                    modifier = Modifier.weight(1f),
                ) {
                    Text(stringResource(R.string.auto_editar))
                }
            }
        }
    }
}

@Preview(name = "ListadoPsicologosSimple Light", showBackground = true)
@Preview(name = "ListadoPsicologosSimple Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "ListadoPsicologosSimple FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun ListadoPsicologosSimpleScreenPreview() {
    org.ies.tierno.applicationamani.ui.theme.AppTheme {
        ListadoPsicologosSimpleBody(
            psicologos =
                listOf(
                    PsicologoSelfResponseDTO(
                        idPsicologo = 1L,
                        nombre = "Sofía",
                        apellido = "Navarro",
                        email = "sofia.navarro@amani.es",
                        telefono = "655443322",
                        especialidad = "Psicología Clínica",
                        experiencia = 7,
                        licencia = "M-98765",
                        descripcion = "Especialista en trastornos de ansiedad.",
                    ),
                ),
            onDarBaja = {},
            onEditar = {},
        )
    }
}