package org.ies.tierno.applicationamani.presentation.ui.screen.documentoLegal

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.enumm.TipoDocumentoLegal
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.documentoLegal.DocumentoLegalViewModel
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

// Colores corporativos AMANI
object AmaniDocumentColors {
    val Primary = Color(0xFF6B4E71)
    val PrimaryLight = Color(0xFF9B7E9F)
    val PrimaryDark = Color(0xFF4A2B50)
    val Secondary = Color(0xFFE8B4B8)
    val Accent = Color(0xFFF5E6E8)
    val Background = Color(0xFFFDF8F9)
    val Surface = Color(0xFFFFFFFF)
    val TextPrimary = Color(0xFF2D1B30)
    val TextSecondary = Color(0xFF7A6B7E)
    val Success = Color(0xFF81C784)
    val Warning = Color(0xFFFFB74D)
    val Error = Color(0xFFE57373)
    val Info = Color(0xFF64B5F6)
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GestionDocumentosScreen(
    navController: NavController,
    viewModel: DocumentoLegalViewModel = koinViewModel()
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
                    Text(
                        "📋 Gestión de Documentos",
                        fontWeight = FontWeight.Bold,
                        fontSize = 20.sp
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Volver")
                    }
                },
                actions = {
                    IconButton(onClick = { mostrarDialogoCrear = true }) {
                        Icon(Icons.Default.Add, contentDescription = "Nuevo documento")
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = AmaniDocumentColors.Primary,
                    titleContentColor = Color.White,
                    navigationIconContentColor = Color.White,
                    actionIconContentColor = Color.White
                )
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        containerColor = AmaniDocumentColors.Background
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            when {
                isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center
                        ) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(48.dp),
                                color = AmaniDocumentColors.Primary,
                                strokeWidth = 3.dp
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                "Cargando documentos...",
                                fontSize = 14.sp,
                                color = AmaniDocumentColors.TextSecondary
                            )
                        }
                    }
                }

                documentos.isEmpty() -> {
                    EmptyDocumentState(
                        onCreateClick = { mostrarDialogoCrear = true }
                    )
                }

                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        items(documentos) { documento ->
                            DocumentoCard(
                                documento = documento,
                                onEdit = { documentoEditando = documento },
                                onDelete = {
                                    scope.launch {
                                        viewModel.eliminarDocumento(documento.idDocumento)
                                        snackbarHostState.showSnackbar("✅ Documento eliminado")
                                    }
                                },
                                onClick = { documentoSeleccionado = documento }
                            )
                        }
                    }
                }
            }
        }
    }

    // Diálogo Crear/Editar Documento
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
                        snackbarHostState.showSnackbar("✏️ Documento actualizado")
                    } else {
                        viewModel.crearDocumento(request)
                        snackbarHostState.showSnackbar("✅ Documento creado")
                    }
                    mostrarDialogoCrear = false
                    documentoEditando = null
                }
            }
        )
    }

    // Diálogo Ver Detalle del Documento
    if (documentoSeleccionado != null) {
        DialogoVerDocumento(
            documento = documentoSeleccionado!!,
            onDismiss = { documentoSeleccionado = null }
        )
    }
}

@Composable
fun EmptyDocumentState(onCreateClick: () -> Unit) {
    Box(
        modifier = Modifier.fillMaxSize(),
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
            modifier = Modifier.padding(24.dp)
        ) {
            Surface(
                modifier = Modifier.size(100.dp),
                shape = RoundedCornerShape(50.dp),
                color = AmaniDocumentColors.Primary.copy(alpha = 0.1f)
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Icon(
                        Icons.Default.Description,
                        contentDescription = null,
                        modifier = Modifier.size(48.dp),
                        tint = AmaniDocumentColors.Primary
                    )
                }
            }

            Spacer(modifier = Modifier.height(24.dp))

            Text(
                text = "No hay documentos creados",
                fontSize = 20.sp,
                fontWeight = FontWeight.Bold,
                color = AmaniDocumentColors.TextPrimary
            )

            Spacer(modifier = Modifier.height(8.dp))

            Text(
                text = "Crea políticas de seguridad, términos y condiciones,\n o cualquier documento legal para tus pacientes",
                fontSize = 14.sp,
                color = AmaniDocumentColors.TextSecondary,
                textAlign = TextAlign.Center
            )

            Spacer(modifier = Modifier.height(24.dp))

            Button(
                onClick = onCreateClick,
                colors = ButtonDefaults.buttonColors(
                    containerColor = AmaniDocumentColors.Primary
                ),
                shape = RoundedCornerShape(12.dp)
            ) {
                Icon(Icons.Default.Add, contentDescription = "Crear")
                Spacer(modifier = Modifier.width(8.dp))
                Text("Crear primer documento")
            }
        }
    }
}

@Composable
fun DocumentoCard(
    documento: DocumentoLegalResponseDTO,
    onEdit: () -> Unit,
    onDelete: () -> Unit,
    onClick: () -> Unit
) {
    val fechaFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
    val fechaTexto = try {
        documento.creadoEn?.let {
            LocalDateTime.parse(it).format(fechaFormatter)
        } ?: "Fecha no disponible"
    } catch (e: Exception) {
        "Fecha no disponible"
    }

    // Obtener el nombre del tipo de documento
    val tipoNombre = when (documento.tipo) {
        TipoDocumentoLegal.terminos -> "📜 Términos y Condiciones"
        TipoDocumentoLegal.privacidad -> "🔒 Política de Privacidad"
        else -> "📄 Documento Legal"
    }

    // Icono según el tipo
    val tipoIcono = when (documento.tipo) {
        TipoDocumentoLegal.terminos -> Icons.Default.Gavel
        TipoDocumentoLegal.privacidad -> Icons.Default.Lock
        else -> Icons.Default.Description
    }

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { onClick() }
            .shadow(4.dp, RoundedCornerShape(16.dp)),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = AmaniDocumentColors.Surface)
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.Top
            ) {
                Row(
                    modifier = Modifier.weight(1f),
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Surface(
                        shape = RoundedCornerShape(12.dp),
                        color = AmaniDocumentColors.Primary.copy(alpha = 0.1f),
                        modifier = Modifier.size(48.dp)
                    ) {
                        Box(contentAlignment = Alignment.Center) {
                            Icon(
                                tipoIcono,
                                contentDescription = null,
                                tint = AmaniDocumentColors.Primary,
                                modifier = Modifier.size(24.dp)
                            )
                        }
                    }

                    Column(modifier = Modifier.weight(1f)) {
                        Text(
                            text = documento.titulo,
                            fontSize = 16.sp,
                            fontWeight = FontWeight.Bold,
                            color = AmaniDocumentColors.TextPrimary
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(
                            text = tipoNombre,
                            fontSize = 12.sp,
                            color = AmaniDocumentColors.Primary,
                            modifier = Modifier.padding(
                                horizontal = 8.dp,
                                vertical = 2.dp
                            )
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(
                            text = "📅 $fechaTexto",
                            fontSize = 11.sp,
                            color = AmaniDocumentColors.TextSecondary
                        )
                        if (!documento.activo) {
                            Spacer(modifier = Modifier.height(4.dp))
                            Text(
                                text = "⚠️ Documento inactivo",
                                fontSize = 10.sp,
                                color = AmaniDocumentColors.Warning
                            )
                        }
                    }
                }

                // Botones de acción
                Row(
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    IconButton(
                        onClick = onEdit,
                        modifier = Modifier.size(32.dp)
                    ) {
                        Icon(
                            Icons.Default.Edit,
                            contentDescription = "Editar",
                            modifier = Modifier.size(18.dp),
                            tint = AmaniDocumentColors.Primary
                        )
                    }

                    IconButton(
                        onClick = onDelete,
                        modifier = Modifier.size(32.dp)
                    ) {
                        Icon(
                            Icons.Default.Delete,
                            contentDescription = "Eliminar",
                            modifier = Modifier.size(18.dp),
                            tint = AmaniDocumentColors.Error
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Vista previa del contenido
            Text(
                text = documento.contenido.take(100) + if (documento.contenido.length > 100) "..." else "",
                fontSize = 13.sp,
                color = AmaniDocumentColors.TextSecondary,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis
            )
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DialogoCrearEditarDocumento(
    documento: DocumentoLegalResponseDTO?,
    onDismiss: () -> Unit,
    onSave: (DocumentoLegalRequestDTO) -> Unit
) {
    val esEdicion = documento != null
    var titulo by remember { mutableStateOf(documento?.titulo ?: "") }
    var tipoSeleccionado by remember { mutableStateOf(documento?.tipo ?: TipoDocumentoLegal.terminos) }
    var contenido by remember { mutableStateOf(documento?.contenido ?: "") }
    var activo by remember { mutableStateOf(documento?.activo ?: true) }
    var version by remember { mutableStateOf(documento?.version ?: "1.0") }
    var ordenVisualizacion by remember { mutableStateOf(documento?.ordenVisualizacion ?: 0) }
    var icono by remember { mutableStateOf(documento?.icono ?: "") }

    var tipoExpanded by remember { mutableStateOf(false) }

    val tiposDocumento = listOf(
        TipoDocumentoLegal.terminos to "📜 Términos y Condiciones",
        TipoDocumentoLegal.privacidad to "🔒 Política de Privacidad"
    )

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = AmaniDocumentColors.Surface,
        shape = RoundedCornerShape(24.dp),
        title = {
            Column {
                Text(
                    if (esEdicion) "✏️ Editar Documento" else "📝 Nuevo Documento",
                    fontSize = 22.sp,
                    fontWeight = FontWeight.Bold,
                    color = AmaniDocumentColors.Primary
                )
                Text(
                    if (esEdicion) "Modifica la información del documento" else "Crea un nuevo documento legal",
                    fontSize = 13.sp,
                    color = AmaniDocumentColors.TextSecondary
                )
            }
        },
        text = {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = 500.dp)
                    .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                // Campo Título
                OutlinedTextField(
                    value = titulo,
                    onValueChange = { titulo = it },
                    label = { Text("Título del documento") },
                    placeholder = { Text("Ej: Términos y Condiciones de Uso") },
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = AmaniDocumentColors.Primary,
                        unfocusedBorderColor = AmaniDocumentColors.TextSecondary.copy(alpha = 0.3f),
                        cursorColor = AmaniDocumentColors.Primary
                    )
                )

                // Selector de Tipo
                ExposedDropdownMenuBox(
                    expanded = tipoExpanded,
                    onExpandedChange = { tipoExpanded = it }
                ) {
                    OutlinedTextField(
                        value = tiposDocumento.find { it.first == tipoSeleccionado }?.second ?: "",
                        onValueChange = {},
                        readOnly = true,
                        label = { Text("Tipo de documento legal") },
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = tipoExpanded) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .menuAnchor(),
                        shape = RoundedCornerShape(12.dp),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = AmaniDocumentColors.Primary,
                            unfocusedBorderColor = AmaniDocumentColors.TextSecondary.copy(alpha = 0.3f),
                            cursorColor = AmaniDocumentColors.Primary
                        )
                    )
                    ExposedDropdownMenu(
                        expanded = tipoExpanded,
                        onDismissRequest = { tipoExpanded = false }
                    ) {
                        tiposDocumento.forEach { (tipo, nombre) ->
                            DropdownMenuItem(
                                text = { Text(nombre) },
                                onClick = {
                                    tipoSeleccionado = tipo
                                    tipoExpanded = false
                                }
                            )
                        }
                    }
                }

                // Campo Versión
                OutlinedTextField(
                    value = version,
                    onValueChange = { version = it },
                    label = { Text("Versión") },
                    placeholder = { Text("Ej: 1.0, 2.0, 2024") },
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = AmaniDocumentColors.Primary,
                        unfocusedBorderColor = AmaniDocumentColors.TextSecondary.copy(alpha = 0.3f),
                        cursorColor = AmaniDocumentColors.Primary
                    )
                )

                // Campo Orden de Visualización
                OutlinedTextField(
                    value = ordenVisualizacion.toString(),
                    onValueChange = {
                        ordenVisualizacion = it.toIntOrNull() ?: 0
                    },
                    label = { Text("Orden de visualización") },
                    placeholder = { Text("Ej: 0, 1, 2...") },
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = AmaniDocumentColors.Primary,
                        unfocusedBorderColor = AmaniDocumentColors.TextSecondary.copy(alpha = 0.3f),
                        cursorColor = AmaniDocumentColors.Primary
                    )
                )

                // Campo Icono (opcional)
                OutlinedTextField(
                    value = icono,
                    onValueChange = { icono = it },
                    label = { Text("Ícono (opcional)") },
                    placeholder = { Text("Ej: description, gavel, lock") },
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = AmaniDocumentColors.Primary,
                        unfocusedBorderColor = AmaniDocumentColors.TextSecondary.copy(alpha = 0.3f),
                        cursorColor = AmaniDocumentColors.Primary
                    )
                )

                // Campo Contenido
                OutlinedTextField(
                    value = contenido,
                    onValueChange = { contenido = it },
                    label = { Text("Contenido del documento") },
                    placeholder = { Text("Escribe aquí el contenido completo del documento legal...") },
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(200.dp),
                    shape = RoundedCornerShape(12.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = AmaniDocumentColors.Primary,
                        unfocusedBorderColor = AmaniDocumentColors.TextSecondary.copy(alpha = 0.3f),
                        cursorColor = AmaniDocumentColors.Primary
                    )
                )

                // Checkbox Activo
                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Checkbox(
                        checked = activo,
                        onCheckedChange = { activo = it },
                        colors = CheckboxDefaults.colors(
                            checkedColor = AmaniDocumentColors.Primary
                        )
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = "Documento activo (visible para usuarios)",
                        fontSize = 13.sp,
                        color = AmaniDocumentColors.TextPrimary
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
                                activo = activo
                            )
                        )
                    }
                },
                enabled = titulo.isNotBlank() && contenido.isNotBlank(),
                colors = ButtonDefaults.buttonColors(
                    containerColor = AmaniDocumentColors.Primary
                ),
                shape = RoundedCornerShape(12.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(if (esEdicion) "💾 Guardar cambios" else "✅ Crear documento")
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                shape = RoundedCornerShape(12.dp)
            ) {
                Text("Cancelar", color = AmaniDocumentColors.TextSecondary)
            }
        }
    )
}

@Composable
fun DialogoVerDocumento(
    documento: DocumentoLegalResponseDTO,
    onDismiss: () -> Unit
) {
    val fechaFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
    val fechaCreacion = try {
        documento.creadoEn?.let {
            LocalDateTime.parse(it).format(fechaFormatter)
        } ?: "Fecha no disponible"
    } catch (e: Exception) {
        "Fecha no disponible"
    }

    val fechaActualizacion = try {
        documento.actualizadoEn?.let {
            LocalDateTime.parse(it).format(fechaFormatter)
        } ?: "Fecha no disponible"
    } catch (e: Exception) {
        "Fecha no disponible"
    }

    val tipoNombre = when (documento.tipo) {
        TipoDocumentoLegal.terminos -> "📜 Términos y Condiciones"
        TipoDocumentoLegal.privacidad -> "🔒 Política de Privacidad"
        else -> "📄 Documento Legal"
    }

    val tipoIcono = when (documento.tipo) {
        TipoDocumentoLegal.terminos -> Icons.Default.Gavel
        TipoDocumentoLegal.privacidad -> Icons.Default.Lock
        else -> Icons.Default.Description
    }

    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            shape = RoundedCornerShape(24.dp),
            colors = CardDefaults.cardColors(containerColor = AmaniDocumentColors.Surface)
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = 600.dp)
                    .verticalScroll(rememberScrollState())
                    .padding(24.dp)
            ) {
                // Header
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.Top
                ) {
                    Row(
                        modifier = Modifier.weight(1f),
                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        Surface(
                            shape = RoundedCornerShape(12.dp),
                            color = AmaniDocumentColors.Primary.copy(alpha = 0.1f),
                            modifier = Modifier.size(48.dp)
                        ) {
                            Box(contentAlignment = Alignment.Center) {
                                Icon(
                                    tipoIcono,
                                    contentDescription = null,
                                    tint = AmaniDocumentColors.Primary,
                                    modifier = Modifier.size(24.dp)
                                )
                            }
                        }

                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = documento.titulo,
                                fontSize = 20.sp,
                                fontWeight = FontWeight.Bold,
                                color = AmaniDocumentColors.Primary
                            )
                            Text(
                                text = tipoNombre,
                                fontSize = 12.sp,
                                color = AmaniDocumentColors.Primary
                            )
                        }
                    }

                    IconButton(onClick = onDismiss) {
                        Icon(Icons.Default.Close, contentDescription = "Cerrar")
                    }
                }

                Spacer(modifier = Modifier.height(12.dp))

                // Metadatos
                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    color = AmaniDocumentColors.Accent
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        Text(
                            text = "📅 Creado: $fechaCreacion",
                            fontSize = 11.sp,
                            color = AmaniDocumentColors.TextSecondary
                        )
                        Text(
                            text = "🔄 Actualizado: $fechaActualizacion",
                            fontSize = 11.sp,
                            color = AmaniDocumentColors.TextSecondary
                        )
                        if (documento.version != null) {
                            Text(
                                text = "📌 Versión: ${documento.version}",
                                fontSize = 11.sp,
                                color = AmaniDocumentColors.TextSecondary
                            )
                        }
                        Text(
                            text = if (documento.activo) "✅ Activo" else "❌ Inactivo",
                            fontSize = 11.sp,
                            color = if (documento.activo) AmaniDocumentColors.Success else AmaniDocumentColors.Error
                        )
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                HorizontalDivider(color = AmaniDocumentColors.Accent)

                Spacer(modifier = Modifier.height(16.dp))

                // Contenido
                Text(
                    text = documento.contenido,
                    fontSize = 14.sp,
                    lineHeight = 22.sp,
                    color = AmaniDocumentColors.TextPrimary
                )

                Spacer(modifier = Modifier.height(24.dp))

                Button(
                    onClick = onDismiss,
                    modifier = Modifier.fillMaxWidth(),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = AmaniDocumentColors.Primary
                    ),
                    shape = RoundedCornerShape(12.dp)
                ) {
                    Text("Cerrar")
                }
            }
        }
    }
}