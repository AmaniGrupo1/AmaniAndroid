package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.documentoLegal

import android.content.res.Configuration
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
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
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Gavel
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Checkbox
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
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
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.window.Dialog
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.enumm.TipoDocumentoLegal
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.documentoLegal.DocumentoLegalViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

/**
 * Pantalla de gestión de políticas legales con enfoque en visualización y edición.
 *
 * Muestra una lista de políticas legales (términos y condiciones, privacidad)
 * en tarjetas que se pueden expandir para ver el contenido completo. Permite
 * editar el contenido de cada política mediante un diálogo de edición.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona el CRUD de documentos legales.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GestionPoliticasScreen(
    navController: NavController,
    viewModel: DocumentoLegalViewModel = koinViewModel(),
) {
    val documentos by viewModel.documentos.collectAsStateWithLifecycle()
    val isLoading by viewModel.loading.collectAsStateWithLifecycle()
    val error by viewModel.error.collectAsStateWithLifecycle()
    val context = LocalContext.current

    var mostrarDialogoEditar by remember { mutableStateOf(false) }
    var documentoEditando by remember { mutableStateOf<DocumentoLegalResponseDTO?>(null) }
    var documentoSeleccionado by remember { mutableStateOf<DocumentoLegalResponseDTO?>(null) }

    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    LaunchedEffect(Unit) {
        viewModel.getAllDocumentos()
    }

    LaunchedEffect(error) {
        error?.let {
            scope.launch {
                snackbarHostState.showSnackbar(it)
                viewModel.clearError()
            }
        }
    }

    GestionPoliticasContent(
        documentos = documentos,
        isLoading = isLoading,
        snackbarHostState = snackbarHostState,
        onBackClick = { navController.navigateUp() },
        onEditClick = { documento ->
            documentoEditando = documento
            mostrarDialogoEditar = true
        },
        onViewClick = { documentoSeleccionado = it },
    )

    if (mostrarDialogoEditar && documentoEditando != null) {
        DialogoEditarPolitica(
            documento = documentoEditando!!,
            onDismiss = {
                mostrarDialogoEditar = false
                documentoEditando = null
            },
            onSave = { request ->
                scope.launch {
                    viewModel.editarDocumento(documentoEditando!!.idDocumento, request)
                    snackbarHostState.showSnackbar(context.getString(R.string.admin_doc_actualizado))
                    mostrarDialogoEditar = false
                    documentoEditando = null
                }
            },
        )
    }

    if (documentoSeleccionado != null) {
        DialogoVerPolitica(
            documento = documentoSeleccionado!!,
            onDismiss = { documentoSeleccionado = null },
            onEdit = {
                documentoEditando = documentoSeleccionado
                documentoSeleccionado = null
                mostrarDialogoEditar = true
            },
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GestionPoliticasContent(
    documentos: List<DocumentoLegalResponseDTO>,
    isLoading: Boolean,
    snackbarHostState: SnackbarHostState,
    onBackClick: () -> Unit,
    onEditClick: (DocumentoLegalResponseDTO) -> Unit,
    onViewClick: (DocumentoLegalResponseDTO) -> Unit,
    modifier: Modifier = Modifier,
) {
    Scaffold(
        modifier = modifier,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_politicas_y_privacidad),
                        style = MaterialTheme.typography.titleLarge,
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
        snackbarHost = { SnackbarHost(snackbarHostState) },
        containerColor = MaterialTheme.colorScheme.background,
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues),
        ) {
            when {
                isLoading -> {
                    LoadingState()
                }

                documentos.isEmpty() -> {
                    EmptyPoliticasState()
                }

                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(Spacing.m),
                        verticalArrangement = Arrangement.spacedBy(Spacing.m),
                    ) {
                        items(documentos, key = { it.idDocumento }) { documento ->
                            PoliticaCard(
                                documento = documento,
                                onEdit = { onEditClick(documento) },
                                onView = { onViewClick(documento) },
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun LoadingState() {
    Box(
        modifier = Modifier.fillMaxSize(),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
        ) {
            CircularProgressIndicator(
                modifier = Modifier.size(Dimensions.avatarMedium),
            )
            Spacer(modifier = Modifier.height(Spacing.m))
            Text(
                text = stringResource(R.string.auto_cargando_politicas),
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }
    }
}

@Composable
fun EmptyPoliticasState() {
    Box(
        modifier = Modifier.fillMaxSize(),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
            modifier = Modifier.padding(Spacing.l),
        ) {
            Surface(
                modifier = Modifier.size(Dimensions.avatarProfile),
                shape = CircleShape,
                color = MaterialTheme.colorScheme.primaryContainer,
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Icon(
                        Icons.Default.Description,
                        contentDescription = null,
                        modifier = Modifier.size(Dimensions.iconExtraLarge),
                        tint = MaterialTheme.colorScheme.onPrimaryContainer,
                    )
                }
            }

            Spacer(modifier = Modifier.height(Spacing.l))

            Text(
                text = stringResource(R.string.auto_no_hay_politicas_creadas),
                style = MaterialTheme.typography.headlineSmall,
                color = MaterialTheme.colorScheme.onSurface,
            )

            Spacer(modifier = Modifier.height(Spacing.s))

            Text(
                text = stringResource(R.string.auto_las_politicas_de_privacidad),
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center,
            )
        }
    }
}

@Composable
fun PoliticaCard(
    documento: DocumentoLegalResponseDTO,
    onEdit: () -> Unit,
    onView: () -> Unit,
) {
    val fechaNoDisponible = stringResource(R.string.admin_fecha_no_disponible)
    val fechaFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
    val fechaTexto =
        try {
            documento.creadoEn?.let {
                LocalDateTime.parse(it).format(fechaFormatter)
            } ?: fechaNoDisponible
        } catch (e: Exception) {
            fechaNoDisponible
        }

    val tipoNombre =
        when (documento.tipo) {
            TipoDocumentoLegal.TERMINOS -> stringResource(R.string.terminos_y_condiciones)
            TipoDocumentoLegal.PRIVACIDAD -> stringResource(R.string.politica_de_privacidad)
            else -> stringResource(R.string.admin_doc_legal_titulo_default)
        }

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
                .clickable { onView() },
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainerLow),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
    ) {
        Column(modifier = Modifier.fillMaxWidth()) {
            Box(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .background(MaterialTheme.colorScheme.primaryContainer)
                        .padding(Spacing.m),
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(Spacing.sm),
                        modifier = Modifier.weight(1f),
                    ) {
                        Surface(
                            shape = MaterialTheme.shapes.small,
                            color = MaterialTheme.colorScheme.surface.copy(alpha = 0.6f),
                            modifier = Modifier.size(Dimensions.avatarMedium),
                        ) {
                            Box(contentAlignment = Alignment.Center) {
                                Icon(
                                    tipoIcono,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.onPrimaryContainer,
                                    modifier = Modifier.size(Dimensions.iconDefault),
                                )
                            }
                        }

                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = documento.titulo,
                                style = MaterialTheme.typography.titleMedium,
                                color = MaterialTheme.colorScheme.onPrimaryContainer,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                            )
                            Text(
                                text = tipoNombre,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onPrimaryContainer,
                            )
                        }
                    }

                    IconButton(
                        onClick = onEdit,
                        modifier =
                            Modifier
                                .clip(MaterialTheme.shapes.small)
                                .background(MaterialTheme.colorScheme.surface.copy(alpha = 0.6f)),
                    ) {
                        Icon(
                            Icons.Default.Edit,
                            contentDescription = stringResource(R.string.auto_editar),
                            tint = MaterialTheme.colorScheme.onPrimaryContainer,
                            modifier = Modifier.size(Dimensions.iconButton),
                        )
                    }
                }
            }

            Column(modifier = Modifier.padding(Spacing.m)) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(Spacing.m),
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.Info,
                            contentDescription = null,
                            modifier = Modifier.size(Dimensions.iconSmall),
                            tint = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Spacer(modifier = Modifier.width(Spacing.xs))
                        Text(
                            text = stringResource(R.string.admin_doc_version_formato, documento.version ?: "1.0"),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }

                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.CalendarToday,
                            contentDescription = null,
                            modifier = Modifier.size(Dimensions.iconSmall),
                            tint = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Spacer(modifier = Modifier.width(Spacing.xs))
                        Text(
                            text = fechaTexto,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }

                    if (!documento.activo) {
                        Surface(
                            shape = MaterialTheme.shapes.extraSmall,
                            color = MaterialTheme.colorScheme.errorContainer,
                        ) {
                            Text(
                                text = stringResource(R.string.auto_inactivo),
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onErrorContainer,
                                modifier = Modifier.padding(horizontal = Spacing.s, vertical = Spacing.xxs),
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.sm))

                Text(
                    text = documento.contenido.take(120) + if (documento.contenido.length > 120) "..." else "",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 3,
                    overflow = TextOverflow.Ellipsis,
                )

                Spacer(modifier = Modifier.height(Spacing.sm))

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.End,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Text(
                        text = stringResource(R.string.auto_ver_detalles_completos),
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.primary,
                        fontWeight = FontWeight.Medium,
                    )
                    Icon(
                        Icons.Default.ChevronRight,
                        contentDescription = null,
                        modifier = Modifier.size(Dimensions.iconSmall),
                        tint = MaterialTheme.colorScheme.primary,
                    )
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DialogoEditarPolitica(
    documento: DocumentoLegalResponseDTO,
    onDismiss: () -> Unit,
    onSave: (DocumentoLegalRequestDTO) -> Unit,
) {
    var titulo by remember { mutableStateOf(documento.titulo) }
    var contenido by remember { mutableStateOf(documento.contenido) }
    var version by remember { mutableStateOf(documento.version ?: "1.0") }
    var activo by remember { mutableStateOf(documento.activo) }

    val tipoStr =
        if (documento.tipo == TipoDocumentoLegal.TERMINOS) {
            stringResource(R.string.terminos_y_condiciones)
        } else {
            stringResource(R.string.politica_de_privacidad)
        }

    AlertDialog(
        onDismissRequest = onDismiss,
        shape = MaterialTheme.shapes.large,
        title = {
            Column {
                Text(
                    text = stringResource(R.string.admin_editar_politica_formato, tipoStr),
                    style = MaterialTheme.typography.headlineSmall,
                    color = MaterialTheme.colorScheme.primary,
                )
                Text(
                    text = stringResource(R.string.auto_modifica_el_contenido_del),
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
                        .heightIn(max = Dimensions.dialogMaxHeight)
                        .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(Spacing.m),
            ) {
                OutlinedTextField(
                    value = titulo,
                    onValueChange = { titulo = it },
                    label = { Text(stringResource(R.string.auto_titulo_del_documento)) },
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.medium,
                )

                OutlinedTextField(
                    value = version,
                    onValueChange = { version = it },
                    label = { Text(stringResource(R.string.auto_version)) },
                    placeholder = { Text(stringResource(R.string.auto_ej_20_21_2024)) },
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.medium,
                )

                OutlinedTextField(
                    value = contenido,
                    onValueChange = { contenido = it },
                    label = { Text(stringResource(R.string.auto_contenido_del_documento)) },
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .height(Dimensions.wheelSize),
                    shape = MaterialTheme.shapes.medium,
                )

                Row(verticalAlignment = Alignment.CenterVertically) {
                    Checkbox(
                        checked = activo,
                        onCheckedChange = { activo = it },
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
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
                                tipo = documento.tipo?.name ?: TipoDocumentoLegal.TERMINOS.name,
                                titulo = titulo,
                                contenido = contenido,
                                icono = documento.icono,
                                ordenVisualizacion = documento.ordenVisualizacion,
                                version = version,
                                activo = activo,
                            ),
                        )
                        onDismiss()
                    }
                },
                enabled = titulo.isNotBlank() && contenido.isNotBlank(),
                shape = MaterialTheme.shapes.medium,
                modifier = Modifier.fillMaxWidth(),
            ) {
                Text(stringResource(R.string.auto_guardar_cambios))
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
fun DialogoVerPolitica(
    documento: DocumentoLegalResponseDTO,
    onDismiss: () -> Unit,
    onEdit: () -> Unit,
) {
    val fechaNoDisponible = stringResource(R.string.admin_fecha_no_disponible)
    val fechaFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
    val fechaCreacion =
        try {
            documento.creadoEn?.let {
                LocalDateTime.parse(it).format(fechaFormatter)
            } ?: fechaNoDisponible
        } catch (e: Exception) {
            fechaNoDisponible
        }

    val fechaActualizacion =
        try {
            documento.actualizadoEn?.let {
                LocalDateTime.parse(it).format(fechaFormatter)
            } ?: fechaNoDisponible
        } catch (e: Exception) {
            fechaNoDisponible
        }

    val tipoNombre =
        when (documento.tipo) {
            TipoDocumentoLegal.TERMINOS -> stringResource(R.string.terminos_y_condiciones)
            TipoDocumentoLegal.PRIVACIDAD -> stringResource(R.string.politica_de_privacidad)
            else -> stringResource(R.string.admin_doc_legal_titulo_default)
        }

    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .fillMaxHeight(0.9f)
                    .padding(Spacing.s),
            shape = MaterialTheme.shapes.large,
            colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
            elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level3),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .verticalScroll(rememberScrollState())
                        .padding(Spacing.m),
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.Top,
                ) {
                    Row(
                        modifier = Modifier.weight(1f),
                        horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                    ) {
                        Surface(
                            shape = MaterialTheme.shapes.small,
                            color = MaterialTheme.colorScheme.primaryContainer,
                            modifier = Modifier.size(Dimensions.avatarSmall),
                        ) {
                            Box(contentAlignment = Alignment.Center) {
                                Icon(
                                    if (documento.tipo == TipoDocumentoLegal.TERMINOS) Icons.Default.Gavel else Icons.Default.Lock,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.onPrimaryContainer,
                                    modifier = Modifier.size(Dimensions.iconMedium),
                                )
                            }
                        }

                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = documento.titulo,
                                style = MaterialTheme.typography.titleMedium,
                                fontWeight = FontWeight.Bold,
                                color = MaterialTheme.colorScheme.primary,
                            )
                            Text(
                                text = tipoNombre,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.secondary,
                            )
                        }
                    }

                    Row {
                        IconButton(onClick = onEdit) {
                            Icon(
                                Icons.Default.Edit,
                                contentDescription = stringResource(R.string.auto_editar),
                                tint = MaterialTheme.colorScheme.primary,
                                modifier = Modifier.size(Dimensions.iconButton),
                            )
                        }
                        IconButton(onClick = onDismiss) {
                            Icon(
                                Icons.Default.Close,
                                contentDescription = stringResource(R.string.auto_cerrar),
                                tint = MaterialTheme.colorScheme.onSurfaceVariant,
                                modifier = Modifier.size(Dimensions.iconButton),
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.s))

                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.medium,
                    color = MaterialTheme.colorScheme.surfaceVariant,
                ) {
                    Column(
                        modifier = Modifier.padding(Spacing.s),
                        verticalArrangement = Arrangement.spacedBy(Spacing.xxs),
                    ) {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(Spacing.sm),
                        ) {
                            Text(
                                text = stringResource(R.string.admin_doc_version_formato, documento.version ?: "1.0"),
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                            Text(
                                text =
                                    if (documento.activo) {
                                        stringResource(R.string.activo)
                                    } else {
                                        stringResource(R.string.inactivo)
                                    },
                                style = MaterialTheme.typography.labelSmall,
                                color =
                                    if (documento.activo) {
                                        AmaniTheme.colors.success
                                    } else {
                                        MaterialTheme.colorScheme.error
                                    },
                            )
                        }
                        Text(
                            text = stringResource(R.string.admin_doc_creado_formato, fechaCreacion),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Text(
                            text = stringResource(R.string.admin_doc_actualizado_formato, fechaActualizacion),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.s))

                HorizontalDivider(
                    color = MaterialTheme.colorScheme.outlineVariant,
                    modifier = Modifier.padding(vertical = Spacing.xs),
                )

                Spacer(modifier = Modifier.height(Spacing.s))

                Text(
                    text = documento.contenido,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface,
                )

                Spacer(modifier = Modifier.height(Spacing.sm))

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                ) {
                    OutlinedButton(
                        onClick = onEdit,
                        modifier = Modifier.weight(1f),
                        colors =
                            ButtonDefaults.outlinedButtonColors(
                                contentColor = MaterialTheme.colorScheme.primary,
                            ),
                        shape = MaterialTheme.shapes.medium,
                    ) {
                        Icon(
                            Icons.Default.Edit,
                            contentDescription = stringResource(R.string.auto_editar),
                            modifier = Modifier.size(Dimensions.iconSmall),
                        )
                        Spacer(modifier = Modifier.width(Spacing.s))
                        Text(stringResource(R.string.auto_editar), style = MaterialTheme.typography.labelLarge)
                    }

                    Button(
                        onClick = onDismiss,
                        modifier = Modifier.weight(1f),
                        colors =
                            ButtonDefaults.buttonColors(
                                containerColor = MaterialTheme.colorScheme.primary,
                            ),
                        shape = MaterialTheme.shapes.medium,
                    ) {
                        Text(stringResource(R.string.auto_cerrar), style = MaterialTheme.typography.labelLarge)
                    }
                }
            }
        }
    }
}

@Preview(name = "GestionPoliticas Light", showBackground = true)
@Preview(name = "GestionPoliticas Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "GestionPoliticas FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun GestionPoliticasScreenPreview() {
    org.ies.tierno.applicationamani.ui.theme.AppTheme {
        GestionPoliticasContent(
            documentos =
                listOf(
                    DocumentoLegalResponseDTO(
                        idDocumento = 1L,
                        tipo = TipoDocumentoLegal.PRIVACIDAD,
                        titulo = "Política de Privacidad RGPD",
                        contenido = "Tratamiento de datos de carácter personal conforme a la normativa vigente.",
                        icono = "lock",
                        ordenVisualizacion = 1,
                        version = "2.0",
                        activo = true,
                        creadoEn = "2026-02-01T12:00:00",
                        actualizadoEn = "2026-02-01T12:00:00",
                    ),
                ),
            isLoading = false,
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onEditClick = {},
            onViewClick = {},
        )
    }
}
