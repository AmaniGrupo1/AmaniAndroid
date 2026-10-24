package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

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
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.AttachMoney
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.FitnessCenter
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Spacing
import java.math.BigDecimal

/**
 * Pantalla de gestión de terapias desde el panel de administración.
 *
 * Muestra una lista de terapias disponibles con su nombre, duración y
 * precio. Permite crear nuevas terapias, editar las existentes y
 * eliminarlas mediante un diálogo de confirmación. Incluye un
 * [FloatingActionButton] para añadir nuevas terapias.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona el CRUD de terapias.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TerapiasScreen(
    navController: NavController,
    viewModel: ListarTerapiasViewModel = viewModel(),
) {
    val terapias by viewModel.terapias.collectAsStateWithLifecycle()
    val loading by viewModel.loading.collectAsStateWithLifecycle()
    val error by viewModel.error.collectAsStateWithLifecycle()
    val showDialog by viewModel.showDialog.collectAsStateWithLifecycle()
    val terapiaEditando by viewModel.terapiaEditando.collectAsStateWithLifecycle()
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    var terapiaAEliminar by remember { mutableStateOf<TerapiaResponseDTO?>(null) }

    LaunchedEffect(error) {
        error?.let {
            scope.launch {
                snackbarHostState.showSnackbar(
                    message = it,
                    duration = SnackbarDuration.Short,
                )
                viewModel.limpiarError()
            }
        }
    }

    TerapiasContent(
        terapias = terapias,
        loading = loading,
        snackbarHostState = snackbarHostState,
        onBackClick = { navController.navigateUp() },
        onAddClick = { viewModel.mostrarDialogCrear() },
        onEditClick = { viewModel.mostrarDialogEditar(it) },
        onDeleteClick = { terapiaAEliminar = it },
    )

    if (terapiaAEliminar != null) {
        AlertDialog(
            onDismissRequest = { terapiaAEliminar = null },
            title = {
                Text(
                    text = stringResource(R.string.confirmar_eliminacion),
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold,
                    color = MaterialTheme.colorScheme.onSurface,
                )
            },
            text = {
                Text(
                    text = stringResource(R.string.confirmar_eliminar_terapia, terapiaAEliminar!!.nombre),
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            },
            confirmButton = {
                Button(
                    onClick = {
                        viewModel.eliminarTerapia(terapiaAEliminar!!.idTipo)
                        terapiaAEliminar = null
                    },
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = MaterialTheme.colorScheme.error,
                            contentColor = MaterialTheme.colorScheme.onError,
                        ),
                    shape = MaterialTheme.shapes.small,
                ) {
                    Text(stringResource(R.string.eliminar))
                }
            },
            dismissButton = {
                TextButton(
                    onClick = { terapiaAEliminar = null },
                    colors =
                        ButtonDefaults.textButtonColors(
                            contentColor = MaterialTheme.colorScheme.onSurfaceVariant,
                        ),
                ) {
                    Text(stringResource(R.string.cancelar))
                }
            },
            shape = MaterialTheme.shapes.large,
            containerColor = MaterialTheme.colorScheme.surfaceContainerHigh,
        )
    }

    if (showDialog) {
        TerapiaDialog(
            terapia = terapiaEditando,
            onDismiss = { viewModel.ocultarDialog() },
            onConfirm = { nombre, duracion, precio ->
                if (terapiaEditando == null) {
                    viewModel.crearTerapia(nombre, duracion, precio)
                } else {
                    viewModel.actualizarTerapia(
                        id = terapiaEditando!!.idTipo,
                        nombre = nombre,
                        duracion = duracion,
                        precio = precio,
                    )
                }
            },
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TerapiasContent(
    terapias: List<TerapiaResponseDTO>,
    loading: Boolean,
    snackbarHostState: SnackbarHostState,
    onBackClick: () -> Unit,
    onAddClick: () -> Unit,
    onEditClick: (TerapiaResponseDTO) -> Unit,
    onDeleteClick: (TerapiaResponseDTO) -> Unit,
    modifier: Modifier = Modifier,
) {
    Scaffold(
        modifier = modifier,
        containerColor = MaterialTheme.colorScheme.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.gestion_terapias),
                        style = MaterialTheme.typography.titleLarge,
                        fontWeight = FontWeight.SemiBold,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.volver),
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
                Icon(Icons.Default.Add, contentDescription = stringResource(R.string.agregar_terapia))
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
            when {
                loading && terapias.isEmpty() -> {
                    CircularProgressIndicator(
                        modifier = Modifier.align(Alignment.Center),
                        color = MaterialTheme.colorScheme.primary,
                    )
                }
                terapias.isEmpty() -> {
                    EmptyTerapiasScreen(onAddClick = onAddClick)
                }
                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = Spacing.m, vertical = Spacing.md),
                        verticalArrangement = Arrangement.spacedBy(Spacing.md),
                    ) {
                        items(
                            items = terapias,
                            key = { it.idTipo },
                        ) { terapia ->
                            TarjetaTerapia(
                                terapia = terapia,
                                onEditClick = { onEditClick(terapia) },
                                onDeleteClick = { onDeleteClick(terapia) },
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun TarjetaTerapia(
    terapia: TerapiaResponseDTO,
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
        Column(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(Spacing.m),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    text = terapia.nombre,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.weight(1f),
                )

                Row(horizontalArrangement = Arrangement.spacedBy(Spacing.xs)) {
                    IconButton(onClick = onEditClick) {
                        Icon(
                            Icons.Default.Edit,
                            contentDescription = stringResource(R.string.editar),
                            tint = MaterialTheme.colorScheme.primary,
                        )
                    }

                    IconButton(onClick = onDeleteClick) {
                        Icon(
                            Icons.Default.Delete,
                            contentDescription = stringResource(R.string.eliminar),
                            tint = MaterialTheme.colorScheme.error,
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(Spacing.md))

            HorizontalDivider(
                thickness = Spacing.dividerThickness,
                color = MaterialTheme.colorScheme.outlineVariant,
            )

            Spacer(modifier = Modifier.height(Spacing.md))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Schedule,
                        contentDescription = null,
                        modifier = Modifier.size(Spacing.iconSmall),
                        tint = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(
                        text = stringResource(R.string.duracion_minutos, terapia.duracionMinutos),
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }

                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.AttachMoney,
                        contentDescription = null,
                        modifier = Modifier.size(Spacing.iconSmall),
                        tint = MaterialTheme.colorScheme.primary,
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(
                        text = stringResource(R.string.precio_formato, terapia.precio.toString()),
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Medium,
                        color = MaterialTheme.colorScheme.primary,
                    )
                }
            }
        }
    }
}

@Composable
fun EmptyTerapiasScreen(
    onAddClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier = modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Icon(
            Icons.Default.FitnessCenter,
            contentDescription = null,
            modifier = Modifier.size(Spacing.avatarLarge),
            tint = MaterialTheme.colorScheme.primary.copy(alpha = 0.4f),
        )

        Spacer(modifier = Modifier.height(Spacing.m))

        Text(
            text = stringResource(R.string.no_hay_terapias),
            style = MaterialTheme.typography.titleMedium,
            fontWeight = FontWeight.Medium,
            color = MaterialTheme.colorScheme.onSurface,
        )

        Spacer(modifier = Modifier.height(Spacing.s))

        Text(
            text = stringResource(R.string.presiona_para_agregar),
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )

        Spacer(modifier = Modifier.height(Spacing.l))

        Button(
            onClick = onAddClick,
            shape = MaterialTheme.shapes.medium,
            colors =
                ButtonDefaults.buttonColors(
                    containerColor = MaterialTheme.colorScheme.primary,
                    contentColor = MaterialTheme.colorScheme.onPrimary,
                ),
        ) {
            Icon(Icons.Default.Add, contentDescription = null)
            Spacer(modifier = Modifier.width(Spacing.s))
            Text(stringResource(R.string.agregar_terapia))
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TerapiaDialog(
    terapia: TerapiaResponseDTO?,
    onDismiss: () -> Unit,
    onConfirm: (nombre: String, duracion: Int, precio: BigDecimal) -> Unit,
) {
    var nombre by remember(terapia) { mutableStateOf(terapia?.nombre ?: "") }
    var duracion by remember(terapia) { mutableStateOf(terapia?.duracionMinutos?.toString() ?: "") }
    var precio by remember(terapia) { mutableStateOf(terapia?.precio?.toString() ?: "") }

    val isEditando = terapia != null
    val titulo = if (isEditando) stringResource(R.string.editar_terapia) else stringResource(R.string.nueva_terapia)
    val botonTexto = if (isEditando) stringResource(R.string.actualizar) else stringResource(R.string.crear)

    AlertDialog(
        onDismissRequest = onDismiss,
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
                    label = { Text(stringResource(R.string.nombre_terapia)) },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                )

                OutlinedTextField(
                    value = duracion,
                    onValueChange = { duracion = it },
                    label = { Text(stringResource(R.string.duracion_minutos_label)) },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                )

                OutlinedTextField(
                    value = precio,
                    onValueChange = { precio = it },
                    label = { Text(stringResource(R.string.precio_label)) },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    leadingIcon = {
                        Text(
                            text = stringResource(R.string.auto_eur),
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    },
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Decimal),
                )
            }
        },
        confirmButton = {
            Button(
                onClick = {
                    val duracionInt = duracion.toIntOrNull()
                    val precioDecimal = precio.toBigDecimalOrNull()

                    if (nombre.isNotBlank() &&
                        duracionInt != null &&
                        duracionInt > 0 &&
                        precioDecimal != null &&
                        precioDecimal > BigDecimal.ZERO
                    ) {
                        onConfirm(nombre, duracionInt, precioDecimal)
                    }
                },
                enabled =
                    nombre.isNotBlank() &&
                        duracion.toIntOrNull() != null &&
                        duracion.toIntOrNull()!! > 0 &&
                        precio.toBigDecimalOrNull() != null &&
                        precio.toBigDecimalOrNull()!! > BigDecimal.ZERO,
                colors =
                    ButtonDefaults.buttonColors(
                        containerColor = MaterialTheme.colorScheme.primary,
                        contentColor = MaterialTheme.colorScheme.onPrimary,
                    ),
                shape = MaterialTheme.shapes.small,
            ) {
                Text(botonTexto)
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                colors =
                    ButtonDefaults.textButtonColors(
                        contentColor = MaterialTheme.colorScheme.onSurfaceVariant,
                    ),
            ) {
                Text(stringResource(R.string.cancelar))
            }
        },
        shape = MaterialTheme.shapes.large,
        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh,
    )
}

@Preview(name = "Terapias Light", showBackground = true)
@Preview(name = "Terapias Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "Terapias FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun TerapiasScreenPreview() {
    org.ies.tierno.applicationamani.ui.theme.AppTheme {
        TerapiasContent(
            terapias =
                listOf(
                    TerapiaResponseDTO(
                        idTipo = 1L,
                        nombre = "Terapia Cognitivo-Conductual",
                        duracionMinutos = 50,
                        precio = BigDecimal("45.00"),
                    ),
                ),
            loading = false,
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onAddClick = {},
            onEditClick = {},
            onDeleteClick = {},
        )
    }
}
