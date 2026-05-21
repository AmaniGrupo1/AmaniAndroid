package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.documentoLegal

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
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
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

/**
 * Pantalla de visualización detallada de un documento legal.
 *
 * Muestra el contenido completo de un documento legal (Términos y Condiciones
 * o Política de Privacidad) junto con sus metadatos: versión, estado
 * (activo/inactivo), fecha de creación y última actualización. El contenido
 * se carga desde [DocumentoLegalViewModel] según el [tipoDocumento].
 *
 * @param navController Controlador de navegación para volver atrás.
 * @param tipoDocumento Tipo de documento a visualizar (\»terminos\» o \»privacidad\»).
 * @param viewModel ViewModel que gestiona la carga del documento legal.
 */
@RequiresApi(Build.VERSION_CODES.O)
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DocumentoLegalDetailScreen(
    navController: NavController,
    tipoDocumento: String, // "terminos" o "privacidad"
    viewModel: DocumentoLegalViewModel = koinViewModel(),
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    // Estados del ViewModel
    val documento by viewModel.documentoSeleccionado.collectAsStateWithLifecycle()
    val isLoading by viewModel.loading.collectAsStateWithLifecycle()
    val error by viewModel.error.collectAsStateWithLifecycle()

    // Determinar título e icono según el tipo
    val titulo =
        when (tipoDocumento) {
            "terminos" -> "📜 Términos y Condiciones"
            "privacidad" -> "🔒 Política de Privacidad"
            else -> "📄 Documento Legal"
        }

    val icono =
        when (tipoDocumento) {
            "terminos" -> Icons.Default.Gavel
            "privacidad" -> Icons.Default.Lock
            else -> Icons.Default.Description
        }

    // Cargar el documento cuando la pantalla se abre
    LaunchedEffect(tipoDocumento) {
        viewModel.getDocumentoByTipo(tipoDocumento)
    }

    Scaffold(
        containerColor = colorScheme.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = titulo,
                        style = typography.titleLarge,
                        fontWeight = FontWeight.SemiBold,
                        color = colorScheme.onPrimary,
                        maxLines = 1,
                        overflow = androidx.compose.ui.text.style.TextOverflow.Ellipsis,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = colorScheme.onPrimary,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colorScheme.primary,
                    ),
            )
        },
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
                                color = colorScheme.primary,
                                strokeWidth = 3.dp,
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "Cargando documento...",
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                                fontFamily = roboto,
                            )
                        }
                    }
                }

                error != null -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center,
                            modifier = Modifier.padding(24.dp),
                        ) {
                            Icon(
                                Icons.Default.Error,
                                contentDescription = null,
                                modifier = Modifier.size(64.dp),
                                tint = colorScheme.error,
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "Error al cargar el documento",
                                style = typography.headlineSmall,
                                fontWeight = FontWeight.Bold,
                                color = colorScheme.onSurface,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center,
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = error ?: "Error desconocido",
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center,
                            )
                            Spacer(modifier = Modifier.height(24.dp))
                            Button(
                                onClick = { viewModel.getDocumentoByTipo(tipoDocumento) },
                                colors = ButtonDefaults.buttonColors(containerColor = colorScheme.primary),
                                shape = shapes.medium,
                            ) {
                                Icon(Icons.Default.Refresh, contentDescription = "Reintentar")
                                Spacer(modifier = Modifier.width(8.dp))
                                Text("Reintentar", style = typography.labelLarge, fontFamily = roboto)
                            }
                        }
                    }
                }

                documento == null -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center,
                            modifier = Modifier.padding(24.dp),
                        ) {
                            Icon(
                                icono,
                                contentDescription = null,
                                modifier = Modifier.size(80.dp),
                                tint = colorScheme.primary.copy(alpha = 0.4f),
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "Documento no disponible",
                                style = typography.headlineSmall,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.onSurface,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center,
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = "El documento no está disponible en este momento.",
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center,
                            )
                        }
                    }
                }

                else -> {
                    DocumentoContent(
                        documento = documento!!,
                        roboto = roboto,
                    )
                }
            }
        }
    }
}

/**
 * Contenido visual del documento legal con título, metadatos y texto completo.
 *
 * @param documento DTO con los datos del documento legal.
 * @param roboto Familia tipográfica Roboto utilizada en los textos.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun DocumentoContent(
    documento: DocumentoLegalResponseDTO,
    roboto: FontFamily,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

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

    Column(
        modifier =
            Modifier
                .fillMaxSize()
                .verticalScroll(rememberScrollState())
                .background(colorScheme.surface)
                .padding(16.dp),
    ) {
        // Título
        Text(
            text = documento.titulo,
            style = typography.headlineMedium,
            fontWeight = FontWeight.Bold,
            color = colorScheme.primary,
            fontFamily = roboto,
            modifier = Modifier.padding(bottom = 8.dp),
        )

        // Metadatos
        Surface(
            modifier = Modifier.fillMaxWidth(),
            shape = shapes.medium,
            color = colorScheme.surfaceVariant,
        ) {
            Column(
                modifier = Modifier.padding(12.dp),
                verticalArrangement = Arrangement.spacedBy(4.dp),
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                ) {
                    Text(
                        text = "📌 Versión: ${documento.version ?: "1.0"}",
                        style = typography.labelSmall,
                        color = colorScheme.onSurfaceVariant,
                        fontFamily = roboto,
                    )
                    Text(
                        text = if (documento.activo) "✅ Activo" else "❌ Inactivo",
                        style = typography.labelSmall,
                        color = if (documento.activo) Color(0xFF4CAF50) else colorScheme.error,
                        fontFamily = roboto,
                    )
                }
                Text(
                    text = "📅 Creado: $fechaCreacion",
                    style = typography.labelSmall,
                    color = colorScheme.onSurfaceVariant,
                    fontFamily = roboto,
                )
                Text(
                    text = "🔄 Actualizado: $fechaActualizacion",
                    style = typography.labelSmall,
                    color = colorScheme.onSurfaceVariant,
                    fontFamily = roboto,
                )
            }
        }

        Spacer(modifier = Modifier.height(20.dp))

        // Línea decorativa
        Box(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .height(2.dp)
                    .background(colorScheme.primary.copy(alpha = 0.3f)),
        )

        Spacer(modifier = Modifier.height(20.dp))

        // Contenido del documento
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = shapes.large,
            colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceVariant.copy(alpha = 0.5f)),
            elevation = CardDefaults.cardElevation(defaultElevation = 1.dp),
        ) {
            Text(
                text = documento.contenido,
                style = typography.bodyMedium,
                lineHeight = 22.sp,
                color = colorScheme.onSurface,
                fontFamily = roboto,
                modifier = Modifier.padding(16.dp),
            )
        }

        Spacer(modifier = Modifier.height(24.dp))
    }
}
