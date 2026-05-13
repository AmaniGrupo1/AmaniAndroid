package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.documentoLegal


import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.documentoLegal.DocumentoLegalViewModel
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DocumentoLegalDetailScreen(
    navController: NavController,
    tipoDocumento: String, // "terminos" o "privacidad"
    viewModel: DocumentoLegalViewModel = koinViewModel()
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Determinar colores según el tema
    val backgroundColor = if (isDark) screenColors.background else Color(0xFFFDF8F9)
    val surfaceColor = if (isDark) cardColors.cardBackground else Color.White
    val textPrimaryColor = if (isDark) cardColors.cardContent else Color(0xFF2D1B30)
    val textSecondaryColor = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else Color(0xFF7A6B7E)
    val primaryColor = if (isDark) Color.White else Color(0xFF6B4E71)

    // Estados del ViewModel
    val documento by viewModel.documentoSeleccionado.collectAsStateWithLifecycle()
    val isLoading by viewModel.loading.collectAsStateWithLifecycle()
    val error by viewModel.error.collectAsStateWithLifecycle()

    // Determinar título e icono según el tipo
    val titulo = when (tipoDocumento) {
        "terminos" -> "📜 Términos y Condiciones"
        "privacidad" -> "🔒 Política de Privacidad"
        else -> "📄 Documento Legal"
    }

    val icono = when (tipoDocumento) {
        "terminos" -> Icons.Default.Gavel
        "privacidad" -> Icons.Default.Lock
        else -> Icons.Default.Description
    }

    // Cargar el documento cuando la pantalla se abre
    LaunchedEffect(tipoDocumento) {
        viewModel.getDocumentoByTipo(tipoDocumento)
    }

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = titulo,
                        fontSize = 18.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = if (isDark) Color.Black else Color.White,
                        fontFamily = roboto,
                        maxLines = 1,
                        overflow = androidx.compose.ui.text.style.TextOverflow.Ellipsis
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = if (isDark) Color.Black else Color.White
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = primaryColor
                )
            )
        }
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
                                text = "Cargando documento...",
                                fontSize = 14.sp,
                                color = textSecondaryColor,
                                fontFamily = roboto
                            )
                        }
                    }
                }

                error != null -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center,
                            modifier = Modifier.padding(24.dp)
                        ) {
                            Icon(
                                Icons.Default.Error,
                                contentDescription = null,
                                modifier = Modifier.size(64.dp),
                                tint = MaterialTheme.colorScheme.error
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "Error al cargar el documento",
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Bold,
                                color = textPrimaryColor,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = error ?: "Error desconocido",
                                fontSize = 14.sp,
                                color = textSecondaryColor,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center
                            )
                            Spacer(modifier = Modifier.height(24.dp))
                            Button(
                                onClick = { viewModel.getDocumentoByTipo(tipoDocumento) },
                                colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                                shape = RoundedCornerShape(12.dp)
                            ) {
                                Icon(Icons.Default.Refresh, contentDescription = "Reintentar")
                                Spacer(modifier = Modifier.width(8.dp))
                                Text("Reintentar", fontFamily = roboto)
                            }
                        }
                    }
                }

                documento == null -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center,
                            modifier = Modifier.padding(24.dp)
                        ) {
                            Icon(
                                icono,
                                contentDescription = null,
                                modifier = Modifier.size(80.dp),
                                tint = primaryColor.copy(alpha = 0.4f)
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "Documento no disponible",
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Medium,
                                color = textPrimaryColor,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = "El documento no está disponible en este momento.",
                                fontSize = 14.sp,
                                color = textSecondaryColor,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center
                            )
                        }
                    }
                }

                else -> {
                    DocumentoContent(
                        documento = documento!!,
                        surfaceColor = surfaceColor,
                        textPrimaryColor = textPrimaryColor,
                        textSecondaryColor = textSecondaryColor,
                        primaryColor = primaryColor,
                        roboto = roboto,
                        isDark = isDark
                    )
                }
            }
        }
    }
}

@Composable
fun DocumentoContent(
    documento: DocumentoLegalResponseDTO,
    surfaceColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    primaryColor: Color,
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

    Column(
        modifier = Modifier
            .fillMaxSize()
            .verticalScroll(rememberScrollState())
            .background(surfaceColor)
            .padding(16.dp)
    ) {
        // Título
        Text(
            text = documento.titulo,
            fontSize = 24.sp,
            fontWeight = FontWeight.Bold,
            color = primaryColor,
            fontFamily = roboto,
            modifier = Modifier.padding(bottom = 8.dp)
        )

        // Metadatos
        Surface(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(12.dp),
            color = if (isDark) Color.DarkGray else Color(0xFFF5E6E8)
        ) {
            Column(
                modifier = Modifier.padding(12.dp),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    Text(
                        text = "📌 Versión: ${documento.version ?: "1.0"}",
                        fontSize = 12.sp,
                        color = textSecondaryColor,
                        fontFamily = roboto
                    )
                    Text(
                        text = if (documento.activo) "✅ Activo" else "❌ Inactivo",
                        fontSize = 12.sp,
                        color = if (documento.activo) Color(0xFF81C784) else Color(0xFFE57373),
                        fontFamily = roboto
                    )
                }
                Text(
                    text = "📅 Creado: $fechaCreacion",
                    fontSize = 12.sp,
                    color = textSecondaryColor,
                    fontFamily = roboto
                )
                Text(
                    text = "🔄 Actualizado: $fechaActualizacion",
                    fontSize = 12.sp,
                    color = textSecondaryColor,
                    fontFamily = roboto
                )
            }
        }

        Spacer(modifier = Modifier.height(20.dp))

        // Línea decorativa
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(2.dp)
                .background(primaryColor.copy(alpha = 0.3f))
        )

        Spacer(modifier = Modifier.height(20.dp))

        // Contenido del documento
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(16.dp),
            colors = CardDefaults.cardColors(containerColor = if (isDark) Color.DarkGray else Color(0xFFFAFAFA)),
            elevation = CardDefaults.cardElevation(defaultElevation = 1.dp)
        ) {
            Text(
                text = documento.contenido,
                fontSize = 14.sp,
                lineHeight = 22.sp,
                color = textPrimaryColor,
                fontFamily = roboto,
                modifier = Modifier.padding(16.dp)
            )
        }

        Spacer(modifier = Modifier.height(24.dp))

        // Botón de cierre
        Button(
            onClick = { /* El diálogo se cierra navegando hacia atrás */ },
            modifier = Modifier
                .fillMaxWidth()
                .height(48.dp),
            colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
            shape = RoundedCornerShape(12.dp)
        ) {
            Text(
                text = "Cerrar",
                fontSize = 15.sp,
                fontWeight = FontWeight.Medium,
                color = if (isDark) Color.Black else Color.White,
                fontFamily = roboto
            )
        }
    }
}