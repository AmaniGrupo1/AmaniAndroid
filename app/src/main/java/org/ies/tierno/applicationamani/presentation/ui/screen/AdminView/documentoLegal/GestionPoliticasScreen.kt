package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.documentoLegal

import androidx.compose.foundation.background
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
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
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
object AmaniPoliticasColors {
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

// Fuente Roboto
val robotoFontFamily = FontFamily(
    Font(R.font.roboto_variablefont_wdth_wght)
)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GestionPoliticasScreen(
    navController: NavController,
    viewModel: DocumentoLegalViewModel = koinViewModel()
) {
    val documentos by viewModel.documentos.collectAsStateWithLifecycle()
    val isLoading by viewModel.loading.collectAsStateWithLifecycle()
    val error by viewModel.error.collectAsStateWithLifecycle()

    var mostrarDialogoEditar by remember { mutableStateOf(false) }
    var documentoEditando by remember { mutableStateOf<DocumentoLegalResponseDTO?>(null) }
    var documentoSeleccionado by remember { mutableStateOf<DocumentoLegalResponseDTO?>(null) }

    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Determinar colores según el tema
    val backgroundColor = if (isDark) screenColors.background else AmaniPoliticasColors.Background
    val surfaceColor = if (isDark) cardColors.cardBackground else AmaniPoliticasColors.Surface
    val primaryColor = if (isDark) MaterialTheme.colorScheme.primary else AmaniPoliticasColors.Primary
    val primaryLightColor = if (isDark) MaterialTheme.colorScheme.primary.copy(alpha = 0.7f) else AmaniPoliticasColors.PrimaryLight
    val accentColor = if (isDark) cardColors.cardBackground else AmaniPoliticasColors.Accent
    val textPrimaryColor = if (isDark) cardColors.cardContent else AmaniPoliticasColors.TextPrimary
    val textSecondaryColor = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else AmaniPoliticasColors.TextSecondary
    val successColor = AmaniPoliticasColors.Success
    val warningColor = AmaniPoliticasColors.Warning
    val errorColor = AmaniPoliticasColors.Error

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
                        text = "📋 Políticas y Privacidad",
                        fontFamily = robotoFontFamily,
                        fontWeight = FontWeight.Bold,
                        fontSize = 20.sp,
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
                    LoadingState(
                        primaryColor = primaryColor,
                        textSecondaryColor = textSecondaryColor,
                        robotoFontFamily = robotoFontFamily
                    )
                }

                documentos.isEmpty() -> {
                    EmptyPoliticasState(
                        primaryColor = primaryColor,
                        textPrimaryColor = textPrimaryColor,
                        textSecondaryColor = textSecondaryColor,
                        robotoFontFamily = robotoFontFamily
                    )
                }

                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(16.dp),
                        verticalArrangement = Arrangement.spacedBy(16.dp)
                    ) {
                        items(documentos) { documento ->
                            PoliticaCard(
                                documento = documento,
                                onEdit = {
                                    documentoEditando = documento
                                    mostrarDialogoEditar = true
                                },
                                onView = { documentoSeleccionado = documento },
                                primaryColor = primaryColor,
                                primaryLightColor = primaryLightColor,
                                surfaceColor = surfaceColor,
                                textPrimaryColor = textPrimaryColor,
                                textSecondaryColor = textSecondaryColor,
                                warningColor = warningColor,
                                robotoFontFamily = robotoFontFamily,
                                isDark = isDark
                            )
                        }
                    }
                }
            }
        }
    }

    // Diálogo Editar Documento
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
                    snackbarHostState.showSnackbar("✏️ Documento actualizado exitosamente")
                    mostrarDialogoEditar = false
                    documentoEditando = null
                }
            },
            primaryColor = primaryColor,
            surfaceColor = surfaceColor,
            textPrimaryColor = textPrimaryColor,
            textSecondaryColor = textSecondaryColor,
            robotoFontFamily = robotoFontFamily,
            isDark = isDark
        )
    }

    // Diálogo Ver Detalle del Documento
    if (documentoSeleccionado != null) {
        DialogoVerPolitica(
            documento = documentoSeleccionado!!,
            onDismiss = { documentoSeleccionado = null },
            onEdit = {
                documentoEditando = documentoSeleccionado
                documentoSeleccionado = null
                mostrarDialogoEditar = true
            },
            primaryColor = primaryColor,
            surfaceColor = surfaceColor,
            accentColor = accentColor,
            textPrimaryColor = textPrimaryColor,
            textSecondaryColor = textSecondaryColor,
            successColor = successColor,
            errorColor = errorColor,
            robotoFontFamily = robotoFontFamily,
            isDark = isDark
        )
    }
}

@Composable
fun LoadingState(
    primaryColor: Color,
    textSecondaryColor: Color,
    robotoFontFamily: FontFamily
) {
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
                text = "Cargando políticas...",
                fontFamily = robotoFontFamily,
                fontSize = 14.sp,
                color = textSecondaryColor
            )
        }
    }
}

@Composable
fun EmptyPoliticasState(
    primaryColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    robotoFontFamily: FontFamily
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
                text = "No hay políticas creadas",
                fontFamily = robotoFontFamily,
                fontSize = 20.sp,
                fontWeight = FontWeight.Bold,
                color = textPrimaryColor
            )

            Spacer(modifier = Modifier.height(8.dp))

            Text(
                text = "Las políticas de privacidad y términos\nse crearán automáticamente desde el sistema",
                fontFamily = robotoFontFamily,
                fontSize = 14.sp,
                color = textSecondaryColor,
                textAlign = TextAlign.Center
            )
        }
    }
}

@Composable
fun PoliticaCard(
    documento: DocumentoLegalResponseDTO,
    onEdit: () -> Unit,
    onView: () -> Unit,
    primaryColor: Color,
    primaryLightColor: Color,
    surfaceColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    warningColor: Color,
    robotoFontFamily: FontFamily,
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

    val gradientBrush = Brush.linearGradient(
        colors = listOf(primaryColor, primaryLightColor)
    )

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { onView() }
            .shadow(8.dp, RoundedCornerShape(20.dp)),
        shape = RoundedCornerShape(20.dp),
        colors = CardDefaults.cardColors(containerColor = surfaceColor),
        elevation = CardDefaults.cardElevation(defaultElevation = 0.dp)
    ) {
        Column(
            modifier = Modifier.fillMaxWidth()
        ) {
            // Header con degradado
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(gradientBrush)
                    .padding(16.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        Surface(
                            shape = RoundedCornerShape(12.dp),
                            color = Color.White.copy(alpha = 0.2f),
                            modifier = Modifier.size(48.dp)
                        ) {
                            Box(contentAlignment = Alignment.Center) {
                                Icon(
                                    tipoIcono,
                                    contentDescription = null,
                                    tint = Color.White,
                                    modifier = Modifier.size(24.dp)
                                )
                            }
                        }

                        Column {
                            Text(
                                text = documento.titulo,
                                fontSize = 16.sp,
                                fontWeight = FontWeight.Bold,
                                color = Color.White,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                                fontFamily = robotoFontFamily
                            )
                            Text(
                                text = tipoNombre,
                                fontSize = 12.sp,
                                color = Color.White.copy(alpha = 0.9f),
                                fontFamily = robotoFontFamily
                            )
                        }
                    }

                    // Botón Editar
                    IconButton(
                        onClick = onEdit,
                        modifier = Modifier
                            .size(36.dp)
                            .clip(RoundedCornerShape(10.dp))
                            .background(Color.White.copy(alpha = 0.2f))
                    ) {
                        Icon(
                            Icons.Default.Edit,
                            contentDescription = "Editar",
                            tint = Color.White,
                            modifier = Modifier.size(18.dp)
                        )
                    }
                }
            }

            // Contenido
            Column(
                modifier = Modifier.padding(16.dp)
            ) {
                // Metadatos
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.Info,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = textSecondaryColor
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text(
                            text = "Versión ${documento.version ?: "1.0"}",
                            fontSize = 11.sp,
                            color = textSecondaryColor,
                            fontFamily = robotoFontFamily
                        )
                    }

                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.CalendarToday,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = textSecondaryColor
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text(
                            text = fechaTexto,
                            fontSize = 11.sp,
                            color = textSecondaryColor,
                            fontFamily = robotoFontFamily
                        )
                    }

                    if (!documento.activo) {
                        Surface(
                            shape = RoundedCornerShape(8.dp),
                            color = warningColor.copy(alpha = 0.2f)
                        ) {
                            Text(
                                text = "Inactivo",
                                fontSize = 10.sp,
                                color = warningColor,
                                modifier = Modifier.padding(horizontal = 6.dp, vertical = 2.dp),
                                fontFamily = robotoFontFamily
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(12.dp))

                // Vista previa del contenido
                Text(
                    text = documento.contenido.take(120) + if (documento.contenido.length > 120) "..." else "",
                    fontSize = 13.sp,
                    color = textSecondaryColor,
                    lineHeight = 18.sp,
                    maxLines = 3,
                    overflow = TextOverflow.Ellipsis,
                    fontFamily = robotoFontFamily
                )

                Spacer(modifier = Modifier.height(12.dp))

                // Indicador de clic para ver más
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.End,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = "Ver detalles completos",
                        fontSize = 11.sp,
                        color = primaryColor,
                        fontWeight = FontWeight.Medium,
                        fontFamily = robotoFontFamily
                    )
                    Icon(
                        Icons.Default.ChevronRight,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp),
                        tint = primaryColor
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
    primaryColor: Color,
    surfaceColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    robotoFontFamily: FontFamily,
    isDark: Boolean
) {
    var titulo by remember { mutableStateOf(documento.titulo) }
    var contenido by remember { mutableStateOf(documento.contenido) }
    var version by remember { mutableStateOf(documento.version ?: "1.0") }
    var activo by remember { mutableStateOf(documento.activo) }

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = surfaceColor,
        shape = RoundedCornerShape(24.dp),
        title = {
            Column {
                Text(
                    text = "✏️ Editar ${if (documento.tipo == TipoDocumentoLegal.terminos) "Términos y Condiciones" else "Política de Privacidad"}",
                    fontSize = 22.sp,
                    fontWeight = FontWeight.Bold,
                    color = primaryColor,
                    fontFamily = robotoFontFamily
                )
                Text(
                    text = "Modifica el contenido del documento legal",
                    fontSize = 13.sp,
                    color = textSecondaryColor,
                    fontFamily = robotoFontFamily
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
                    label = { Text("Título del documento", fontFamily = robotoFontFamily) },
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

                // Campo Versión
                OutlinedTextField(
                    value = version,
                    onValueChange = { version = it },
                    label = { Text("Versión", fontFamily = robotoFontFamily) },
                    placeholder = { Text("Ej: 2.0, 2.1, 2024", fontFamily = robotoFontFamily) },
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
                    label = { Text("Contenido del documento", fontFamily = robotoFontFamily) },
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(300.dp),
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
                        fontFamily = robotoFontFamily
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
                                tipo = documento.tipo.name,
                                titulo = titulo,
                                contenido = contenido,
                                icono = documento.icono,
                                ordenVisualizacion = documento.ordenVisualizacion,
                                version = version,
                                activo = activo
                            )
                        )
                        onDismiss()
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
                    "💾 Guardar cambios",
                    fontFamily = robotoFontFamily,
                    color = if (isDark) Color.Black else Color.White
                )
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                shape = RoundedCornerShape(12.dp)
            ) {
                Text("Cancelar", color = textSecondaryColor, fontFamily = robotoFontFamily)
            }
        }
    )
}

@Composable
fun DialogoVerPolitica(
    documento: DocumentoLegalResponseDTO,
    onDismiss: () -> Unit,
    onEdit: () -> Unit,
    primaryColor: Color,
    surfaceColor: Color,
    accentColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    successColor: Color,
    errorColor: Color,
    robotoFontFamily: FontFamily,
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
        TipoDocumentoLegal.terminos -> "📜 Términos y Condiciones"
        TipoDocumentoLegal.privacidad -> "🔒 Política de Privacidad"
        else -> "📄 Documento Legal"
    }

    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .fillMaxHeight(0.9f)  // Aumentado de 0.85f a 0.9f para mejor visibilidad
                .padding(8.dp),  // Reducido de 16.dp a 8.dp
            shape = RoundedCornerShape(20.dp),  // Reducido de 24.dp a 20.dp
            colors = CardDefaults.cardColors(containerColor = surfaceColor)
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .verticalScroll(rememberScrollState())
                    .padding(12.dp)  // Reducido de 24.dp a 12.dp
            ) {
                // Header
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.Top
                ) {
                    Row(
                        modifier = Modifier.weight(1f),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)  // Reducido de 12.dp a 8.dp
                    ) {
                        Surface(
                            shape = RoundedCornerShape(10.dp),  // Reducido de 12.dp a 10.dp
                            color = primaryColor.copy(alpha = 0.1f),
                            modifier = Modifier.size(40.dp)  // Reducido de 48.dp a 40.dp
                        ) {
                            Box(contentAlignment = Alignment.Center) {
                                Icon(
                                    if (documento.tipo == TipoDocumentoLegal.terminos) Icons.Default.Gavel else Icons.Default.Lock,
                                    contentDescription = null,
                                    tint = primaryColor,
                                    modifier = Modifier.size(20.dp)  // Reducido de 24.dp a 20.dp
                                )
                            }
                        }

                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = documento.titulo,
                                fontSize = 16.sp,  // Reducido de 18.sp a 16.sp
                                fontWeight = FontWeight.Bold,
                                color = primaryColor,
                                fontFamily = robotoFontFamily
                            )
                            Text(
                                text = tipoNombre,
                                fontSize = 11.sp,  // Reducido de 12.sp a 11.sp
                                color = primaryColor,
                                fontFamily = robotoFontFamily
                            )
                        }
                    }

                    Row {
                        IconButton(onClick = onEdit, modifier = Modifier.size(32.dp)) {  // Añadido tamaño fijo
                            Icon(
                                Icons.Default.Edit,
                                contentDescription = "Editar",
                                tint = primaryColor,
                                modifier = Modifier.size(18.dp)
                            )
                        }
                        IconButton(onClick = onDismiss, modifier = Modifier.size(32.dp)) {
                            Icon(
                                Icons.Default.Close,
                                contentDescription = "Cerrar",
                                tint = textSecondaryColor,
                                modifier = Modifier.size(18.dp)
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(8.dp))  // Reducido de 16.dp a 8.dp

                // Metadatos
                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(10.dp),  // Reducido de 12.dp a 10.dp
                    color = accentColor
                ) {
                    Column(
                        modifier = Modifier.padding(8.dp),  // Reducido de 12.dp a 8.dp
                        verticalArrangement = Arrangement.spacedBy(2.dp)  // Reducido de 4.dp a 2.dp
                    ) {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(12.dp)  // Reducido de 16.dp a 12.dp
                        ) {
                            Text(
                                text = "📌 Versión: ${documento.version ?: "1.0"}",
                                fontSize = 10.sp,  // Reducido de 11.sp a 10.sp
                                color = textSecondaryColor,
                                fontFamily = robotoFontFamily
                            )
                            Text(
                                text = if (documento.activo) "✅ Activo" else "❌ Inactivo",
                                fontSize = 10.sp,
                                color = if (documento.activo) successColor else errorColor,
                                fontFamily = robotoFontFamily
                            )
                        }
                        Text(
                            text = "📅 Creado: $fechaCreacion",
                            fontSize = 10.sp,
                            color = textSecondaryColor,
                            fontFamily = robotoFontFamily
                        )
                        Text(
                            text = "🔄 Actualizado: $fechaActualizacion",
                            fontSize = 10.sp,
                            color = textSecondaryColor,
                            fontFamily = robotoFontFamily
                        )
                    }
                }

                Spacer(modifier = Modifier.height(8.dp))  // Reducido de 16.dp a 8.dp

                HorizontalDivider(color = accentColor, modifier = Modifier.padding(vertical = 4.dp))

                Spacer(modifier = Modifier.height(8.dp))

                // Contenido
                Text(
                    text = documento.contenido,
                    fontSize = 12.sp,  // Reducido de 13.sp a 12.sp
                    lineHeight = 18.sp,  // Reducido de 20.sp a 18.sp
                    color = textPrimaryColor,
                    fontFamily = robotoFontFamily
                )

                Spacer(modifier = Modifier.height(12.dp))  // Reducido de 24.dp a 12.dp

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)  // Reducido de 12.dp a 8.dp
                ) {
                    OutlinedButton(
                        onClick = onEdit,
                        modifier = Modifier.weight(1f).height(36.dp),  // Reducido de altura por defecto a 36.dp
                        colors = ButtonDefaults.outlinedButtonColors(
                            contentColor = primaryColor
                        ),
                        shape = RoundedCornerShape(10.dp)  // Reducido de 12.dp a 10.dp
                    ) {
                        Icon(Icons.Default.Edit, contentDescription = "Editar", modifier = Modifier.size(16.dp))
                        Spacer(modifier = Modifier.width(6.dp))
                        Text("Editar", fontFamily = robotoFontFamily, fontSize = 12.sp)
                    }

                    Button(
                        onClick = onDismiss,
                        modifier = Modifier.weight(1f).height(36.dp),
                        colors = ButtonDefaults.buttonColors(
                            containerColor = primaryColor
                        ),
                        shape = RoundedCornerShape(10.dp)
                    ) {
                        Text("Cerrar", fontFamily = robotoFontFamily, fontSize = 12.sp, color = if (isDark) Color.Black else Color.White)
                    }
                }
            }
        }
    }
}