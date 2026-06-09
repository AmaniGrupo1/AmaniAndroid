package org.ies.tierno.applicationamani.presentation.ui.screen.documentoLegal
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
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
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Gavel
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Checkbox
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuAnchorType
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Surface
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
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Dialog
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.enumm.TipoDocumentoLegal
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.documentoLegal.DocumentoLegalViewModel
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

/**
 * Pantalla de gestión de documentos legales (creación, edición, visualización).
 *
 * Permite al administrador listar, crear, editar y visualizar documentos
 * legales del sistema. Incluye un diálogo de creación con campos de título,
 * tipo de documento, versión, estado activo y contenido. Los documentos se
 * gestionan a través de [DocumentoLegalViewModel].
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona el CRUD de documentos legales.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GestionDocumentosScreen(
    navController: NavController,
    viewModel: DocumentoLegalViewModel = koinViewModel(),
) {
    val documentos by viewModel.documentos.collectAsStateWithLifecycle()
    val isLoading by viewModel.loading.collectAsStateWithLifecycle()
    val error by viewModel.error.collectAsStateWithLifecycle()

    var mostrarDialogoCrear by remember { mutableStateOf(false) }
    var documentoEditando by remember { mutableStateOf<DocumentoLegalResponseDTO?>(null) }
    var documentoSeleccionado by remember { mutableStateOf<DocumentoLegalResponseDTO?>(null) }

    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    // Cargar documentos al iniciar
    LaunchedEffect(Unit) {
        viewModel.getAllDocumentos()
    }

    // Manejar errores
    LaunchedEffect(error) {
        error?.let {
            scope.launch {
                snackbarHostState.showSnackbar(it)
                viewModel.clearError()
            }
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text(stringResource(R.string.auto_gestion_de_documentos),
                        style = MaterialTheme.typography.titleLarge,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                        )
                    }
                },
                actions = {
                    IconButton(onClick = { mostrarDialogoCrear = true }) {
                        Icon(
                            Icons.Default.Add,
                            contentDescription = stringResource(R.string.auto_nuevo_documento),
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.primary,
                        titleContentColor = MaterialTheme.colorScheme.onPrimary,
                        navigationIconContentColor = MaterialTheme.colorScheme.onPrimary,
                        actionIconContentColor = MaterialTheme.colorScheme.onPrimary,
                    ),
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        containerColor = MaterialTheme.colorScheme.surface,
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues),
        ) {
            when {
                isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center,
                        ) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(48.dp),
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(stringResource(R.string.auto_cargando_documentos),
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }

                documentos.isEmpty() -> {
                    EmptyDocumentState(
                        onCreateClick = { mostrarDialogoCrear = true },
                    )
                }

                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        items(documentos) { documento ->
                            DocumentoCard(
                                documento = documento,
                                onEdit = { documentoEditando = documento },
                                onDelete = {
                                    scope.launch {
                                        viewModel.eliminarDocumento(documento.idDocumento)
                                        snackbarHostState.showSnackbar("Documento eliminado")
                                    }
                                },
                                onClick = { documentoSeleccionado = documento },
                            )
                        }
                    }
                }
            }
        }
    }

    // Dialogo Crear/Editar Documento
    if (mostrarDialogoCrear || documentoEditando != null) {
        DialogoCrearEditarDocumento(
            documento = documentoEditando,
            onDismiss = {
                mostrarDialogoCrear = false
                documentoEditando = null
            },
            onSave = { request ->
                scope.launch {
                    if (documentoEditando != null) {
                        viewModel.editarDocumento(documentoEditando!!.idDocumento, request)
                        snackbarHostState.showSnackbar("Documento actualizado")
                    } else {
                        viewModel.crearDocumento(request)
                        snackbarHostState.showSnackbar("Documento creado")
                    }
                    mostrarDialogoCrear = false
                    documentoEditando = null
                }
            },
        )
    }

    // Dialogo Ver Detalle del Documento
    if (documentoSeleccionado != null) {
        DialogoVerDocumento(
            documento = documentoSeleccionado!!,
            onDismiss = { documentoSeleccionado = null },
        )
    }
}

@Composable
fun EmptyDocumentState(onCreateClick: () -> Unit) {
    Box(
        modifier = Modifier.fillMaxSize(),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
            modifier = Modifier.padding(24.dp),
        ) {
            Surface(
                modifier = Modifier.size(100.dp),
                shape = CircleShape,
                color = MaterialTheme.colorScheme.primaryContainer,
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Icon(
                        Icons.Default.Description,
                        contentDescription = null,
                        modifier = Modifier.size(48.dp),
                        tint = MaterialTheme.colorScheme.onPrimaryContainer,
                    )
                }
            }

            Spacer(modifier = Modifier.height(24.dp))

            Text(
                text = stringResource(R.string.auto_no_hay_documentos_creados),
                style = MaterialTheme.typography.headlineSmall,
                color = MaterialTheme.colorScheme.onSurface,
            )

            Spacer(modifier = Modifier.height(8.dp))

            Text(
                text = stringResource(R.string.auto_crea_politicas_de_seguridad),
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center,
            )

            Spacer(modifier = Modifier.height(24.dp))

            Button(
                onClick = onCreateClick,
                shape = MaterialTheme.shapes.medium,
            ) {
                Icon(Icons.Default.Add, contentDescription = stringResource(R.string.auto_crear))
                Spacer(modifier = Modifier.width(8.dp))
                Text(stringResource(R.string.auto_crear_primer_documento))
            }
        }
    }
}

@Composable
fun DocumentoCard(
    documento: DocumentoLegalResponseDTO,
    onEdit: () -> Unit,
    onDelete: () -> Unit,
    onClick: () -> Unit,
) {
    val fechaFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
    val fechaTexto =
        try {
            documento.creadoEn?.let {
                LocalDateTime.parse(it).format(fechaFormatter)
            } ?: "Fecha no disponible"
        } catch (e: Exception) {
            "Fecha no disponible"
        }

    // Obtener el nombre del tipo de documento
    val tipoNombre =
        when (documento.tipo) {
            TipoDocumentoLegal.TERMINOS -> "Terminos y Condiciones"
            TipoDocumentoLegal.PRIVACIDAD -> "Politica de Privacidad"
            else -> "Documento Legal"
        }

    // Icono segun el tipo
    val tipoIcono =
        when (documento.tipo) {
            TipoDocumentoLegal.TERMINOS -> Icons.Default.Gavel
            TipoDocumentoLegal.PRIVACIDAD -> Icons.Default.Lock
            else -> Icons.Default.Description
        }

    Card(
        modifier =
            Modifier
                .fillMaxWidth()
                .clickable { onClick() },
        shape = MaterialTheme.shapes.medium,
        elevation = CardDefaults.cardElevation(2.dp),
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.Top,
            ) {
                Row(
                    modifier = Modifier.weight(1f),
                    horizontalArrangement = Arrangement.spacedBy(12.dp),
                ) {
                    Surface(
                        shape = MaterialTheme.shapes.small,
                        color = MaterialTheme.colorScheme.primaryContainer,
                        modifier = Modifier.size(48.dp),
                    ) {
                        Box(contentAlignment = Alignment.Center) {
                            Icon(
                                tipoIcono,
                                contentDescription = null,
                                tint = MaterialTheme.colorScheme.onPrimaryContainer,
                                modifier = Modifier.size(24.dp),
                            )
                        }
                    }

                    Column(modifier = Modifier.weight(1f)) {
                        Text(
                            text = documento.titulo,
                            style = MaterialTheme.typography.titleMedium,
                            color = MaterialTheme.colorScheme.onSurface,
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Surface(
                            shape = MaterialTheme.shapes.extraSmall,
                            color = MaterialTheme.colorScheme.secondaryContainer,
                            modifier = Modifier.padding(vertical = 2.dp),
                        ) {
                            Text(
                                text = tipoNombre,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSecondaryContainer,
                                modifier = Modifier.padding(horizontal = 8.dp, vertical = 2.dp),
                            )
                        }
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(
                            text = fechaTexto,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        if (!documento.activo) {
                            Spacer(modifier = Modifier.height(4.dp))
                            Text(
                                text = stringResource(R.string.auto_documento_inactivo),
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.error,
                            )
                        }
                    }
                }

                // Botones de accion
                Row(
                    horizontalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    IconButton(
                        onClick = onEdit,
                        modifier = Modifier.size(32.dp),
                    ) {
                        Icon(
                            Icons.Default.Edit,
                            contentDescription = stringResource(R.string.auto_editar),
                            modifier = Modifier.size(18.dp),
                            tint = MaterialTheme.colorScheme.primary,
                        )
                    }

                    IconButton(
                        onClick = onDelete,
                        modifier = Modifier.size(32.dp),
                    ) {
                        Icon(
                            Icons.Default.Delete,
                            contentDescription = stringResource(R.string.auto_eliminar),
                            modifier = Modifier.size(18.dp),
                            tint = MaterialTheme.colorScheme.error,
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Vista previa del contenido
            Text(
                text = documento.contenido.take(100) + if (documento.contenido.length > 100) "..." else "",
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DialogoCrearEditarDocumento(
    documento: DocumentoLegalResponseDTO?,
    onDismiss: () -> Unit,
    onSave: (DocumentoLegalRequestDTO) -> Unit,
) {
    val esEdicion = documento != null
    var titulo by remember { mutableStateOf(documento?.titulo ?: "") }
    var tipoSeleccionado by remember { mutableStateOf(documento?.tipo ?: TipoDocumentoLegal.TERMINOS) }
    var contenido by remember { mutableStateOf(documento?.contenido ?: "") }
    var activo by remember { mutableStateOf(documento?.activo ?: true) }
    var version by remember { mutableStateOf(documento?.version ?: "1.0") }
    var ordenVisualizacion by remember { mutableStateOf(documento?.ordenVisualizacion ?: 0) }
    var icono by remember { mutableStateOf(documento?.icono ?: "") }

    var tipoExpanded by remember { mutableStateOf(false) }

    val tiposDocumento =
        listOf(
            TipoDocumentoLegal.TERMINOS to "Terminos y Condiciones",
            TipoDocumentoLegal.PRIVACIDAD to "Politica de Privacidad",
        )

    AlertDialog(
        onDismissRequest = onDismiss,
        shape = MaterialTheme.shapes.extraLarge,
        title = {
            Column {
                Text(
                    if (esEdicion) "Editar Documento" else "Nuevo Documento",
                    style = MaterialTheme.typography.headlineSmall,
                    color = MaterialTheme.colorScheme.primary,
                )
                Text(
                    if (esEdicion) "Modifica la informacion del documento" else "Crea un nuevo documento legal",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        },
        text = {
            Column(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .heightIn(max = 500.dp)
                        .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(16.dp),
            ) {
                // Campo Titulo
                OutlinedTextField(
                    value = titulo,
                    onValueChange = { titulo = it },
                    label = { Text(stringResource(R.string.auto_titulo_del_documento)) },
                    placeholder = { Text(stringResource(R.string.auto_ej_terminos_y_condiciones)) },
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.medium,
                )

                // Selector de Tipo
                ExposedDropdownMenuBox(
                    expanded = tipoExpanded,
                    onExpandedChange = { tipoExpanded = it },
                ) {
                    OutlinedTextField(
                        value = tiposDocumento.find { it.first == tipoSeleccionado }?.second ?: "",
                        onValueChange = {},
                        readOnly = true,
                        label = { Text(stringResource(R.string.auto_tipo_de_documento_legal)) },
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = tipoExpanded) },
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable, true),
                        shape = MaterialTheme.shapes.medium,
                    )
                    ExposedDropdownMenu(
                        expanded = tipoExpanded,
                        onDismissRequest = { tipoExpanded = false },
                    ) {
                        tiposDocumento.forEach { (tipo, nombre) ->
                            DropdownMenuItem(
                                text = { Text(nombre) },
                                onClick = {
                                    tipoSeleccionado = tipo
                                    tipoExpanded = false
                                },
                            )
                        }
                    }
                }

                // Campo Version
                OutlinedTextField(
                    value = version,
                    onValueChange = { version = it },
                    label = { Text(stringResource(R.string.auto_version)) },
                    placeholder = { Text(stringResource(R.string.auto_ej_10_20_2024)) },
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.medium,
                )

                // Campo Orden de Visualizacion
                OutlinedTextField(
                    value = ordenVisualizacion.toString(),
                    onValueChange = {
                        ordenVisualizacion = it.toIntOrNull() ?: 0
                    },
                    label = { Text(stringResource(R.string.auto_orden_de_visualizacion)) },
                    placeholder = { Text(stringResource(R.string.auto_ej_0_1_2)) },
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.medium,
                )

                // Campo Icono (opcional)
                OutlinedTextField(
                    value = icono,
                    onValueChange = { icono = it },
                    label = { Text(stringResource(R.string.auto_icono_opcional)) },
                    placeholder = { Text(stringResource(R.string.auto_ej_description_gavel_lock)) },
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.medium,
                )

                // Campo Contenido
                OutlinedTextField(
                    value = contenido,
                    onValueChange = { contenido = it },
                    label = { Text(stringResource(R.string.auto_contenido_del_documento)) },
                    placeholder = { Text(stringResource(R.string.auto_escribe_aqui_el_contenido)) },
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .height(200.dp),
                    shape = MaterialTheme.shapes.medium,
                )

                // Checkbox Activo
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Checkbox(
                        checked = activo,
                        onCheckedChange = { activo = it },
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = stringResource(R.string.auto_documento_activo_visible_para),
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurface,
                    )
                }
            }
        },
        confirmButton = {
            Button(
                onClick = {
                    if (titulo.isNotBlank() && contenido.isNotBlank()) {
                        onSave(
                            DocumentoLegalRequestDTO(
                                tipo = tipoSeleccionado.name,
                                titulo = titulo,
                                contenido = contenido,
                                icono = icono.takeIf { it.isNotBlank() },
                                ordenVisualizacion = ordenVisualizacion,
                                version = version.takeIf { it.isNotBlank() },
                                activo = activo,
                            ),
                        )
                    }
                },
                enabled = titulo.isNotBlank() && contenido.isNotBlank(),
                shape = MaterialTheme.shapes.medium,
                modifier = Modifier.fillMaxWidth(),
            ) {
                Text(if (esEdicion) "Guardar cambios" else "Crear documento")
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                shape = MaterialTheme.shapes.medium,
            ) {
                Text(stringResource(R.string.auto_cancelar))
            }
        },
    )
}

@Composable
fun DialogoVerDocumento(
    documento: DocumentoLegalResponseDTO,
    onDismiss: () -> Unit,
) {
    val fechaFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
    val fechaCreacion =
        try {
            documento.creadoEn?.let {
                LocalDateTime.parse(it).format(fechaFormatter)
            } ?: "Fecha no disponible"
        } catch (e: Exception) {
            "Fecha no disponible"
        }

    val fechaActualizacion =
        try {
            documento.actualizadoEn?.let {
                LocalDateTime.parse(it).format(fechaFormatter)
            } ?: "Fecha no disponible"
        } catch (e: Exception) {
            "Fecha no disponible"
        }

    val tipoNombre =
        when (documento.tipo) {
            TipoDocumentoLegal.TERMINOS -> "Terminos y Condiciones"
            TipoDocumentoLegal.PRIVACIDAD -> "Politica de Privacidad"
            else -> "Documento Legal"
        }

    val tipoIcono =
        when (documento.tipo) {
            TipoDocumentoLegal.TERMINOS -> Icons.Default.Gavel
            TipoDocumentoLegal.PRIVACIDAD -> Icons.Default.Lock
            else -> Icons.Default.Description
        }

    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
            shape = MaterialTheme.shapes.extraLarge,
            elevation = CardDefaults.cardElevation(6.dp),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .heightIn(max = 600.dp)
                        .verticalScroll(rememberScrollState())
                        .padding(24.dp),
            ) {
                // Header
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.Top,
                ) {
                    Row(
                        modifier = Modifier.weight(1f),
                        horizontalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        Surface(
                            shape = MaterialTheme.shapes.small,
                            color = MaterialTheme.colorScheme.primaryContainer,
                            modifier = Modifier.size(48.dp),
                        ) {
                            Box(contentAlignment = Alignment.Center) {
                                Icon(
                                    tipoIcono,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.onPrimaryContainer,
                                    modifier = Modifier.size(24.dp),
                                )
                            }
                        }

                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = documento.titulo,
                                style = MaterialTheme.typography.titleLarge,
                                color = MaterialTheme.colorScheme.primary,
                            )
                            Text(
                                text = tipoNombre,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.secondary,
                            )
                        }
                    }

                    IconButton(onClick = onDismiss) {
                        Icon(Icons.Default.Close, contentDescription = stringResource(R.string.auto_cerrar))
                    }
                }

                Spacer(modifier = Modifier.height(12.dp))

                // Metadatos
                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.medium,
                    color = MaterialTheme.colorScheme.surfaceVariant,
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(4.dp),
                    ) {
                        Text(
                            text = "Creado: $fechaCreacion",
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Text(
                            text = "Actualizado: $fechaActualizacion",
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        if (documento.version != null) {
                            Text(
                                text = "Version: ${documento.version}",
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                        }
                        Text(
                            text = if (documento.activo) "Activo" else "Inactivo",
                            style = MaterialTheme.typography.labelSmall,
                            color = if (documento.activo) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.error,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                HorizontalDivider()

                Spacer(modifier = Modifier.height(16.dp))

                // Contenido
                Text(
                    text = documento.contenido,
                    style = MaterialTheme.typography.bodyLarge,
                    color = MaterialTheme.colorScheme.onSurface,
                )

                Spacer(modifier = Modifier.height(24.dp))

                Button(
                    onClick = onDismiss,
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.medium,
                ) {
                    Text(stringResource(R.string.auto_cerrar))
                }
            }
        }
    }
}
