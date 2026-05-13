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
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Gavel
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Checkbox
import androidx.compose.material3.CheckboxDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
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
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.enumm.TipoDocumentoLegal
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalRequestDTO
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.documentoLegal.DocumentoLegalViewModel
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

// Colores originales para el modo DEFECTO (Amani)
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
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val documentos by viewModel.documentos.collectAsStateWithLifecycle()
    val isLoading by viewModel.loading.collectAsStateWithLifecycle()
    val error by viewModel.error.collectAsStateWithLifecycle()

    var mostrarDialogoCrear by remember { mutableStateOf(false) }
    var documentoEditando by remember { mutableStateOf<DocumentoLegalResponseDTO?>(null) }
    var documentoSeleccionado by remember { mutableStateOf<DocumentoLegalResponseDTO?>(null) }

    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Determinar colores segun el tema
    val backgroundColor = if (isDark) screenColors.background else AmaniDocumentColors.Background
    val surfaceColor = if (isDark) cardColors.cardBackground else AmaniDocumentColors.Surface
    val primaryColor = if (isDark) MaterialTheme.colorScheme.primary else AmaniDocumentColors.Primary
    val accentColor = if (isDark) cardColors.cardBackground else AmaniDocumentColors.Accent
    val textPrimaryColor = if (isDark) cardColors.cardContent else AmaniDocumentColors.TextPrimary
    val textSecondaryColor = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else AmaniDocumentColors.TextSecondary
    val errorColor = AmaniDocumentColors.Error
    val successColor = AmaniDocumentColors.Success
    val warningColor = AmaniDocumentColors.Warning

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
                        "Gestion de Documentos",
                        fontWeight = FontWeight.Bold,
                        fontSize = 20.sp,
                        fontFamily = roboto,
                        color = if (isDark) MaterialTheme.colorScheme.onPrimary else Color.White
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.Default.ArrowBack,
                            contentDescription = "Volver",
                            tint = if (isDark) MaterialTheme.colorScheme.onPrimary else Color.White
                        )
                    }
                },
                actions = {
                    IconButton(onClick = { mostrarDialogoCrear = true }) {
                        Icon(
                            Icons.Default.Add,
                            contentDescription = "Nuevo documento",
                            tint = if (isDark) MaterialTheme.colorScheme.onPrimary else Color.White
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = primaryColor
                )
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        containerColor = backgroundColor
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
                                color = primaryColor,
                                strokeWidth = 3.dp
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                "Cargando documentos...",
                                fontSize = 14.sp,
                                color = textSecondaryColor,
                                fontFamily = roboto
                            )
                        }
                    }
                }

                documentos.isEmpty() -> {
                    EmptyDocumentState(
                        onCreateClick = { mostrarDialogoCrear = true },
                        primaryColor = primaryColor,
                        textPrimaryColor = textPrimaryColor,
                        textSecondaryColor = textSecondaryColor,
                        roboto = roboto,
                        isDark = isDark
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
                                        snackbarHostState.showSnackbar("Documento eliminado")
                                    }
                                },
                                onClick = { documentoSeleccionado = documento },
                                primaryColor = primaryColor,
                                surfaceColor = surfaceColor,
                                textPrimaryColor = textPrimaryColor,
                                textSecondaryColor = textSecondaryColor,
                                errorColor = errorColor,
                                warningColor = warningColor,
                                successColor = successColor,
                                roboto = roboto,
                                isDark = isDark
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
            primaryColor = primaryColor,
            surfaceColor = surfaceColor,
            textPrimaryColor = textPrimaryColor,
            textSecondaryColor = textSecondaryColor,
            successColor = successColor,
            roboto = roboto,
            isDark = isDark
        )
    }

    // Dialogo Ver Detalle del Documento
    if (documentoSeleccionado != null) {
        DialogoVerDocumento(
            documento = documentoSeleccionado!!,
            onDismiss = { documentoSeleccionado = null },
            primaryColor = primaryColor,
            surfaceColor = surfaceColor,
            accentColor = accentColor,
            textPrimaryColor = textPrimaryColor,
            textSecondaryColor = textSecondaryColor,
            successColor = successColor,
            errorColor = errorColor,
            roboto = roboto,
            isDark = isDark
        )
    }
}

@Composable
fun EmptyDocumentState(
    onCreateClick: () -> Unit,
    primaryColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    roboto: FontFamily,
    isDark: Boolean
) {
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
                color = primaryColor.copy(alpha = 0.1f)
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Icon(
                        Icons.Default.Description,
                        contentDescription = null,
                        modifier = Modifier.size(48.dp),
                        tint = primaryColor
                    )
                }
            }

            Spacer(modifier = Modifier.height(24.dp))

            Text(
                text = "No hay documentos creados",
                fontSize = 20.sp,
                fontWeight = FontWeight.Bold,
                color = textPrimaryColor,
                fontFamily = roboto
            )

            Spacer(modifier = Modifier.height(8.dp))

            Text(
                text = "Crea politicas de seguridad, terminos y condiciones,\n o cualquier documento legal para tus pacientes",
                fontSize = 14.sp,
                color = textSecondaryColor,
                textAlign = TextAlign.Center,
                fontFamily = roboto
            )

            Spacer(modifier = Modifier.height(24.dp))

            Button(
                onClick = onCreateClick,
                colors = ButtonDefaults.buttonColors(
                    containerColor = primaryColor
                ),
                shape = RoundedCornerShape(12.dp)
            ) {
                Icon(Icons.Default.Add, contentDescription = "Crear")
                Spacer(modifier = Modifier.width(8.dp))
                Text("Crear primer documento", fontFamily = roboto)
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
    primaryColor: Color,
    surfaceColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    errorColor: Color,
    warningColor: Color,
    successColor: Color,
    roboto: FontFamily,
    isDark: Boolean
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
        TipoDocumentoLegal.terminos -> "Terminos y Condiciones"
        TipoDocumentoLegal.privacidad -> "Politica de Privacidad"
        else -> "Documento Legal"
    }

    // Icono segun el tipo
    val tipoIcono = when (documento.tipo) {
        TipoDocumentoLegal.terminos -> Icons.Default.Gavel
        TipoDocumentoLegal.privacidad -> Icons.Default.Lock
        else -> Icons.Default.Description
    }

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { onClick() },
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = surfaceColor)
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
                        color = primaryColor.copy(alpha = 0.1f),
                        modifier = Modifier.size(48.dp)
                    ) {
                        Box(contentAlignment = Alignment.Center) {
                            Icon(
                                tipoIcono,
                                contentDescription = null,
                                tint = primaryColor,
                                modifier = Modifier.size(24.dp)
                            )
                        }
                    }

                    Column(modifier = Modifier.weight(1f)) {
                        Text(
                            text = documento.titulo,
                            fontSize = 16.sp,
                            fontWeight = FontWeight.Bold,
                            color = textPrimaryColor,
                            fontFamily = roboto
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(
                            text = tipoNombre,
                            fontSize = 12.sp,
                            color = primaryColor,
                            modifier = Modifier.padding(
                                horizontal = 8.dp,
                                vertical = 2.dp
                            ),
                            fontFamily = roboto
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(
                            text = "$fechaTexto",
                            fontSize = 11.sp,
                            color = textSecondaryColor,
                            fontFamily = roboto
                        )
                        if (!documento.activo) {
                            Spacer(modifier = Modifier.height(4.dp))
                            Text(
                                text = "Documento inactivo",
                                fontSize = 10.sp,
                                color = warningColor,
                                fontFamily = roboto
                            )
                        }
                    }
                }

                // Botones de accion
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
                            tint = primaryColor
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
                            tint = errorColor
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Vista previa del contenido
            Text(
                text = documento.contenido.take(100) + if (documento.contenido.length > 100) "..." else "",
                fontSize = 13.sp,
                color = textSecondaryColor,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
                fontFamily = roboto
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
    primaryColor: Color,
    surfaceColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    successColor: Color,
    roboto: FontFamily,
    isDark: Boolean
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
        TipoDocumentoLegal.terminos to "Terminos y Condiciones",
        TipoDocumentoLegal.privacidad to "Politica de Privacidad"
    )

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = surfaceColor,
        shape = RoundedCornerShape(24.dp),
        title = {
            Column {
                Text(
                    if (esEdicion) "Editar Documento" else "Nuevo Documento",
                    fontSize = 22.sp,
                    fontWeight = FontWeight.Bold,
                    color = primaryColor,
                    fontFamily = roboto
                )
                Text(
                    if (esEdicion) "Modifica la informacion del documento" else "Crea un nuevo documento legal",
                    fontSize = 13.sp,
                    color = textSecondaryColor,
                    fontFamily = roboto
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
                // Campo Titulo
                OutlinedTextField(
                    value = titulo,
                    onValueChange = { titulo = it },
                    label = { Text("Titulo del documento", fontFamily = roboto) },
                    placeholder = { Text("Ej: Terminos y Condiciones de Uso", fontFamily = roboto) },
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = primaryColor,
                        unfocusedBorderColor = textSecondaryColor.copy(alpha = 0.3f),
                        cursorColor = primaryColor,
                        focusedTextColor = textPrimaryColor,
                        unfocusedTextColor = textPrimaryColor
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
                        label = { Text("Tipo de documento legal", fontFamily = roboto) },
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = tipoExpanded) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .menuAnchor(),
                        shape = RoundedCornerShape(12.dp),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = primaryColor,
                            unfocusedBorderColor = textSecondaryColor.copy(alpha = 0.3f),
                            cursorColor = primaryColor,
                            focusedTextColor = textPrimaryColor,
                            unfocusedTextColor = textPrimaryColor
                        )
                    )
                    ExposedDropdownMenu(
                        expanded = tipoExpanded,
                        onDismissRequest = { tipoExpanded = false }
                    ) {
                        tiposDocumento.forEach { (tipo, nombre) ->
                            DropdownMenuItem(
                                text = { Text(nombre, fontFamily = roboto) },
                                onClick = {
                                    tipoSeleccionado = tipo
                                    tipoExpanded = false
                                }
                            )
                        }
                    }
                }

                // Campo Version
                OutlinedTextField(
                    value = version,
                    onValueChange = { version = it },
                    label = { Text("Version", fontFamily = roboto) },
                    placeholder = { Text("Ej: 1.0, 2.0, 2024", fontFamily = roboto) },
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = primaryColor,
                        unfocusedBorderColor = textSecondaryColor.copy(alpha = 0.3f),
                        cursorColor = primaryColor,
                        focusedTextColor = textPrimaryColor,
                        unfocusedTextColor = textPrimaryColor
                    )
                )

                // Campo Orden de Visualizacion
                OutlinedTextField(
                    value = ordenVisualizacion.toString(),
                    onValueChange = {
                        ordenVisualizacion = it.toIntOrNull() ?: 0
                    },
                    label = { Text("Orden de visualizacion", fontFamily = roboto) },
                    placeholder = { Text("Ej: 0, 1, 2...", fontFamily = roboto) },
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = primaryColor,
                        unfocusedBorderColor = textSecondaryColor.copy(alpha = 0.3f),
                        cursorColor = primaryColor,
                        focusedTextColor = textPrimaryColor,
                        unfocusedTextColor = textPrimaryColor
                    )
                )

                // Campo Icono (opcional)
                OutlinedTextField(
                    value = icono,
                    onValueChange = { icono = it },
                    label = { Text("Icono (opcional)", fontFamily = roboto) },
                    placeholder = { Text("Ej: description, gavel, lock", fontFamily = roboto) },
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = primaryColor,
                        unfocusedBorderColor = textSecondaryColor.copy(alpha = 0.3f),
                        cursorColor = primaryColor,
                        focusedTextColor = textPrimaryColor,
                        unfocusedTextColor = textPrimaryColor
                    )
                )

                // Campo Contenido
                OutlinedTextField(
                    value = contenido,
                    onValueChange = { contenido = it },
                    label = { Text("Contenido del documento", fontFamily = roboto) },
                    placeholder = { Text("Escribe aqui el contenido completo del documento legal...", fontFamily = roboto) },
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(200.dp),
                    shape = RoundedCornerShape(12.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = primaryColor,
                        unfocusedBorderColor = textSecondaryColor.copy(alpha = 0.3f),
                        cursorColor = primaryColor,
                        focusedTextColor = textPrimaryColor,
                        unfocusedTextColor = textPrimaryColor
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
                            checkedColor = primaryColor
                        )
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = "Documento activo (visible para usuarios)",
                        fontSize = 13.sp,
                        color = textPrimaryColor,
                        fontFamily = roboto
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
                    containerColor = primaryColor
                ),
                shape = RoundedCornerShape(12.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(
                    if (esEdicion) "Guardar cambios" else "Crear documento",
                    fontFamily = roboto,
                    color = if (isDark) Color.Black else Color.White
                )
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                shape = RoundedCornerShape(12.dp)
            ) {
                Text("Cancelar", color = textSecondaryColor, fontFamily = roboto)
            }
        }
    )
}

@Composable
fun DialogoVerDocumento(
    documento: DocumentoLegalResponseDTO,
    onDismiss: () -> Unit,
    primaryColor: Color,
    surfaceColor: Color,
    accentColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    successColor: Color,
    errorColor: Color,
    roboto: FontFamily,
    isDark: Boolean
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
        TipoDocumentoLegal.terminos -> "Terminos y Condiciones"
        TipoDocumentoLegal.privacidad -> "Politica de Privacidad"
        else -> "Documento Legal"
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
            colors = CardDefaults.cardColors(containerColor = surfaceColor)
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
                            color = primaryColor.copy(alpha = 0.1f),
                            modifier = Modifier.size(48.dp)
                        ) {
                            Box(contentAlignment = Alignment.Center) {
                                Icon(
                                    tipoIcono,
                                    contentDescription = null,
                                    tint = primaryColor,
                                    modifier = Modifier.size(24.dp)
                                )
                            }
                        }

                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = documento.titulo,
                                fontSize = 20.sp,
                                fontWeight = FontWeight.Bold,
                                color = primaryColor,
                                fontFamily = roboto
                            )
                            Text(
                                text = tipoNombre,
                                fontSize = 12.sp,
                                color = primaryColor,
                                fontFamily = roboto
                            )
                        }
                    }

                    IconButton(onClick = onDismiss) {
                        Icon(Icons.Default.Close, contentDescription = "Cerrar", tint = textSecondaryColor)
                    }
                }

                Spacer(modifier = Modifier.height(12.dp))

                // Metadatos
                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    color = accentColor
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        Text(
                            text = "Creado: $fechaCreacion",
                            fontSize = 11.sp,
                            color = textSecondaryColor,
                            fontFamily = roboto
                        )
                        Text(
                            text = "Actualizado: $fechaActualizacion",
                            fontSize = 11.sp,
                            color = textSecondaryColor,
                            fontFamily = roboto
                        )
                        if (documento.version != null) {
                            Text(
                                text = "Version: ${documento.version}",
                                fontSize = 11.sp,
                                color = textSecondaryColor,
                                fontFamily = roboto
                            )
                        }
                        Text(
                            text = if (documento.activo) "Activo" else "Inactivo",
                            fontSize = 11.sp,
                            color = if (documento.activo) successColor else errorColor,
                            fontFamily = roboto
                        )
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                HorizontalDivider(color = accentColor)

                Spacer(modifier = Modifier.height(16.dp))

                // Contenido
                Text(
                    text = documento.contenido,
                    fontSize = 14.sp,
                    lineHeight = 22.sp,
                    color = textPrimaryColor,
                    fontFamily = roboto
                )

                Spacer(modifier = Modifier.height(24.dp))

                Button(
                    onClick = onDismiss,
                    modifier = Modifier.fillMaxWidth(),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = primaryColor
                    ),
                    shape = RoundedCornerShape(12.dp)
                ) {
                    Text("Cerrar", fontFamily = roboto, color = if (isDark) Color.Black else Color.White)
                }
            }
        }
    }
}
