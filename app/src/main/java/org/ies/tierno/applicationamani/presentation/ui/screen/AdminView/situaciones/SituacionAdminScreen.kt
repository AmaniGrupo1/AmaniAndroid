package org.ies.tierno.applicationamani.presentation.ui.screen.situacion

import android.content.res.Configuration
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
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
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.List
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Category
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
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
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionRequest
import org.ies.tierno.applicationamani.presentation.viewmodels.situacionViewModel.SituacionViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Pantalla de gestión de situaciones desde el panel de administración.
 *
 * Permite listar, crear, editar y eliminar situaciones (categorías de
 * contexto del paciente) que pueden ser asignadas a los historiales
 * clínicos. Incluye un [FloatingActionButton] para añadir nuevas
 * situaciones y un diálogo de edición con campos de nombre, categoría
 * y descripción.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona el CRUD de situaciones.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SituacionAdminScreen(
    navController: NavController,
    viewModel: SituacionViewModel,
) {
    val situaciones by viewModel.situaciones.collectAsStateWithLifecycle()
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()
    val context = LocalContext.current

    var showDialog by remember { mutableStateOf(false) }
    var situacionEditando by remember { mutableStateOf<SituacionDTO?>(null) }
    var situacionAEliminar by remember { mutableStateOf<SituacionDTO?>(null) }

    SituacionAdminContent(
        situaciones = situaciones,
        snackbarHostState = snackbarHostState,
        onBackClick = { navController.navigateUp() },
        onAddClick = {
            situacionEditando = null
            showDialog = true
        },
        onEditClick = { situacion ->
            situacionEditando = situacion
            showDialog = true
        },
        onDeleteClick = { situacionAEliminar = it },
    )

    if (situacionAEliminar != null) {
        AlertDialog(
            onDismissRequest = { situacionAEliminar = null },
            containerColor = MaterialTheme.colorScheme.surfaceContainerHigh,
            title = {
                Text(
                    text = stringResource(R.string.auto_confirmar_eliminacion),
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold,
                    color = MaterialTheme.colorScheme.onSurface,
                )
            },
            text = {
                Text(
                    text = stringResource(R.string.admin_situacion_confirmar_eliminar_msg, situacionAEliminar!!.nombre),
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            },
            confirmButton = {
                Button(
                    onClick = {
                        viewModel.eliminarSituacion(
                            id = situacionAEliminar!!.idSituacion,
                            onResult = { success, _ ->
                                val msg =
                                    if (success) {
                                        context.getString(R.string.admin_situacion_eliminada_exito)
                                    } else {
                                        context.getString(R.string.admin_situacion_error_eliminar)
                                    }
                                scope.launch { snackbarHostState.showSnackbar(msg) }
                            },
                        )
                        situacionAEliminar = null
                    },
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = MaterialTheme.colorScheme.error,
                            contentColor = MaterialTheme.colorScheme.onError,
                        ),
                    shape = MaterialTheme.shapes.small,
                ) {
                    Text(stringResource(R.string.auto_eliminar))
                }
            },
            dismissButton = {
                TextButton(onClick = { situacionAEliminar = null }) {
                    Text(
                        text = stringResource(R.string.auto_cancelar),
                        color = MaterialTheme.colorScheme.primary,
                    )
                }
            },
            shape = MaterialTheme.shapes.large,
        )
    }

    if (showDialog) {
        SituacionDialog(
            situacion = situacionEditando,
            onDismiss = {
                showDialog = false
                situacionEditando = null
            },
            onConfirm = { nombre, categoria, descripcion ->
                val request =
                    SituacionRequest(
                        nombre = nombre,
                        categoria = categoria,
                        descripcion = descripcion,
                        activo = true,
                    )

                if (situacionEditando == null) {
                    viewModel.crearSituacion(
                        request = request,
                        onResult = { success, _ ->
                            val msg =
                                if (success) {
                                    context.getString(R.string.admin_situacion_creada_exito)
                                } else {
                                    context.getString(R.string.admin_situacion_error_crear)
                                }
                            scope.launch { snackbarHostState.showSnackbar(msg) }
                        },
                    )
                } else {
                    viewModel.actualizarSituacion(
                        id = situacionEditando!!.idSituacion,
                        request = request,
                        onResult = { success, _ ->
                            val msg =
                                if (success) {
                                    context.getString(R.string.admin_situacion_actualizada_exito)
                                } else {
                                    context.getString(R.string.admin_situacion_error_actualizar)
                                }
                            scope.launch { snackbarHostState.showSnackbar(msg) }
                        },
                    )
                }
                showDialog = false
                situacionEditando = null
            },
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SituacionAdminContent(
    situaciones: List<SituacionDTO>,
    snackbarHostState: SnackbarHostState,
    onBackClick: () -> Unit,
    onAddClick: () -> Unit,
    onEditClick: (SituacionDTO) -> Unit,
    onDeleteClick: (SituacionDTO) -> Unit,
    modifier: Modifier = Modifier,
) {
    Scaffold(
        modifier = modifier,
        containerColor = MaterialTheme.colorScheme.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.gestion_situaciones),
                        style = MaterialTheme.typography.titleLarge,
                        fontWeight = FontWeight.SemiBold,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                    ),
            )
        },
        floatingActionButton = {
            FloatingActionButton(
                onClick = onAddClick,
                containerColor = MaterialTheme.colorScheme.primaryContainer,
                contentColor = MaterialTheme.colorScheme.onPrimaryContainer,
            ) {
                Icon(Icons.Default.Add, contentDescription = stringResource(R.string.agregar_situacion))
            }
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues),
        ) {
            if (situaciones.isEmpty()) {
                EmptySituacionesScreen(onAddClick = onAddClick)
            } else {
                LazyColumn(
                    modifier = Modifier.fillMaxSize(),
                    contentPadding = PaddingValues(horizontal = Spacing.m, vertical = Spacing.md),
                    verticalArrangement = Arrangement.spacedBy(Spacing.md),
                ) {
                    items(
                        items = situaciones,
                        key = { it.idSituacion },
                    ) { situacion ->
                        TarjetaSituacion(
                            situacion = situacion,
                            onEditClick = { onEditClick(situacion) },
                            onDeleteClick = { onDeleteClick(situacion) },
                        )
                    }
                }
            }
        }
    }
}

@Composable
fun TarjetaSituacion(
    situacion: SituacionDTO,
    onEditClick: () -> Unit,
    onDeleteClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Card(
        modifier = modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.large,
        elevation = CardDefaults.cardElevation(defaultElevation = Spacing.xxs),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainerLow),
    ) {
        Column(modifier = Modifier.fillMaxWidth().padding(Spacing.m)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    text = situacion.nombre,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.weight(1f),
                )
                Row(horizontalArrangement = Arrangement.spacedBy(Spacing.xs)) {
                    IconButton(onClick = onEditClick) {
                        Icon(
                            Icons.Default.Edit,
                            contentDescription = stringResource(R.string.auto_editar),
                            tint = MaterialTheme.colorScheme.primary,
                        )
                    }
                    IconButton(onClick = onDeleteClick) {
                        Icon(
                            Icons.Default.Delete,
                            contentDescription = stringResource(R.string.auto_eliminar),
                            tint = MaterialTheme.colorScheme.error,
                        )
                    }
                }
            }

            if (!situacion.categoria.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(Spacing.xs))
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Category,
                        contentDescription = null,
                        modifier = Modifier.size(Spacing.iconSmall),
                        tint = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                    Spacer(modifier = Modifier.width(Spacing.xs))
                    Text(
                        text = situacion.categoria,
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.primary,
                        fontWeight = FontWeight.Medium,
                    )
                }
            }

            if (!situacion.descripcion.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(Spacing.s))
                HorizontalDivider(
                    thickness = Spacing.dividerThickness,
                    color = MaterialTheme.colorScheme.outlineVariant,
                )
                Spacer(modifier = Modifier.height(Spacing.s))
                Text(
                    text = situacion.descripcion,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 3,
                )
            }
        }
    }
}

@Composable
fun EmptySituacionesScreen(
    onAddClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Icon(
            Icons.AutoMirrored.Filled.List,
            contentDescription = null,
            modifier = Modifier.size(Spacing.avatarLarge),
            tint = MaterialTheme.colorScheme.primary.copy(alpha = 0.4f),
        )
        Spacer(modifier = Modifier.height(Spacing.m))
        Text(
            text = stringResource(R.string.auto_no_hay_situaciones_disponibles),
            style = MaterialTheme.typography.titleMedium,
            fontWeight = FontWeight.Medium,
            color = MaterialTheme.colorScheme.onSurface,
        )
        Spacer(modifier = Modifier.height(Spacing.s))
        Text(
            text = stringResource(R.string.auto_presiona_el_boton_para_1),
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        Spacer(modifier = Modifier.height(Spacing.l))
        Button(
            onClick = onAddClick,
            shape = MaterialTheme.shapes.medium,
            colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.primary),
        ) {
            Icon(Icons.Default.Add, contentDescription = null)
            Spacer(modifier = Modifier.width(Spacing.s))
            Text(stringResource(R.string.auto_agregar_situacion))
        }
    }
}

/**
 * Diálogo de creación/edición de una situación.
 *
 * Presenta un formulario con campos de nombre, categoría y descripción.
 * Si [situacion] no es `null`, el diálogo opera en modo edición;
 * en caso contrario, en modo creación.
 *
 * @param situacion Situación a editar, o `null` para crear una nueva.
 * @param onDismiss Callback invocado al cerrar el diálogo sin guardar.
 * @param onConfirm Callback invocado al confirmar, recibe nombre, categoría y descripción.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SituacionDialog(
    situacion: SituacionDTO?,
    onDismiss: () -> Unit,
    onConfirm: (nombre: String, categoria: String, descripcion: String) -> Unit,
) {
    var nombre by remember(situacion) { mutableStateOf(situacion?.nombre ?: "") }
    var categoria by remember(situacion) { mutableStateOf(situacion?.categoria ?: "") }
    var descripcion by remember(situacion) { mutableStateOf(situacion?.descripcion ?: "") }

    val isEditando = situacion != null
    val titulo =
        if (isEditando) {
            stringResource(R.string.admin_situacion_editar_titulo)
        } else {
            stringResource(R.string.admin_situacion_nueva_titulo)
        }
    val botonTexto =
        if (isEditando) {
            stringResource(R.string.actualizar)
        } else {
            stringResource(R.string.crear)
        }

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh,
        title = {
            Text(
                text = titulo,
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold,
                color = MaterialTheme.colorScheme.primary,
            )
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(Spacing.m)) {
                OutlinedTextField(
                    value = nombre,
                    onValueChange = { nombre = it },
                    label = { Text(stringResource(R.string.auto_nombre_de_la_situacion)) },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                )
                OutlinedTextField(
                    value = categoria,
                    onValueChange = { categoria = it },
                    label = { Text(stringResource(R.string.auto_categoria)) },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    placeholder = {
                        Text(
                            text = stringResource(R.string.auto_ej_personal_laboral_social),
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    },
                )
                OutlinedTextField(
                    value = descripcion,
                    onValueChange = { descripcion = it },
                    label = { Text(stringResource(R.string.auto_descripcion_opcional)) },
                    modifier = Modifier.fillMaxWidth(),
                    minLines = 2,
                    maxLines = 4,
                )
            }
        },
        confirmButton = {
            Button(
                onClick = {
                    if (nombre.isNotBlank() && categoria.isNotBlank()) {
                        onConfirm(nombre, categoria, descripcion)
                    }
                },
                enabled = nombre.isNotBlank() && categoria.isNotBlank(),
                colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.primary),
                shape = MaterialTheme.shapes.small,
            ) {
                Text(botonTexto)
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text(
                    text = stringResource(R.string.auto_cancelar),
                    color = MaterialTheme.colorScheme.primary,
                )
            }
        },
        shape = MaterialTheme.shapes.large,
    )
}

@Preview(name = "SituacionAdmin Light", showBackground = true)
@Preview(name = "SituacionAdmin Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "SituacionAdmin FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun SituacionAdminScreenPreview() {
    org.ies.tierno.applicationamani.ui.theme.AppTheme {
        SituacionAdminContent(
            situaciones =
                listOf(
                    SituacionDTO(
                        idSituacion = 1L,
                        nombre = "Estrés laboral",
                        categoria = "Laboral",
                        descripcion = "Sobrecarga y agotamiento en el entorno de trabajo.",
                    ),
                ),
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onAddClick = {},
            onEditClick = {},
            onDeleteClick = {},
        )
    }
}
