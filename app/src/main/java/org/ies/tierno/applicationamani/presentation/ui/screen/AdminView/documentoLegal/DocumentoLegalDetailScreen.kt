package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.documentoLegal

import android.content.res.Configuration
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.Gavel
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.documentoLegal.DocumentoLegalResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.documentoLegal.DocumentoLegalViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
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
 * @param tipoDocumento Tipo de documento a visualizar ("terminos" o "privacidad").
 * @param viewModel ViewModel que gestiona la carga del documento legal.
 */
@RequiresApi(Build.VERSION_CODES.O)
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DocumentoLegalDetailScreen(
    navController: NavController,
    tipoDocumento: String,
    viewModel: DocumentoLegalViewModel = koinViewModel(),
) {
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
            "terminos" -> stringResource(R.string.terminos_condiciones)
            "privacidad" -> stringResource(R.string.politica_privacidad)
            else -> stringResource(R.string.admin_doc_legal_titulo_default)
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
                        color = colorScheme.onSurface,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = colorScheme.onSurface,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colorScheme.surface,
                        titleContentColor = colorScheme.onSurface,
                        navigationIconContentColor = colorScheme.onSurface,
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
                                modifier = Modifier.size(Dimensions.iconExtraLarge),
                                color = colorScheme.primary,
                                strokeWidth = Dimensions.progressStroke,
                            )
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(
                                text = stringResource(R.string.auto_cargando_documento),
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
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
                            modifier = Modifier.padding(Spacing.l),
                        ) {
                            Icon(
                                Icons.Default.Error,
                                contentDescription = null,
                                modifier = Modifier.size(Dimensions.iconHero),
                                tint = colorScheme.error,
                            )
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(
                                text = stringResource(R.string.auto_error_al_cargar_el_1),
                                style = typography.headlineSmall,
                                fontWeight = FontWeight.Bold,
                                color = colorScheme.onSurface,
                                textAlign = TextAlign.Center,
                            )
                            Spacer(modifier = Modifier.height(Spacing.s))
                            Text(
                                text = error ?: stringResource(R.string.error_desconocido),
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                                textAlign = TextAlign.Center,
                            )
                            Spacer(modifier = Modifier.height(Spacing.l))
                            Button(
                                onClick = { viewModel.getDocumentoByTipo(tipoDocumento) },
                                colors = ButtonDefaults.buttonColors(containerColor = colorScheme.primary),
                                shape = shapes.medium,
                            ) {
                                Icon(Icons.Default.Refresh, contentDescription = stringResource(R.string.auto_reintentar))
                                Spacer(modifier = Modifier.width(Spacing.s))
                                Text(stringResource(R.string.auto_reintentar), style = typography.labelLarge)
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
                            modifier = Modifier.padding(Spacing.l),
                        ) {
                            Icon(
                                icono,
                                contentDescription = null,
                                modifier = Modifier.size(Dimensions.avatarLarge),
                                tint = colorScheme.primary.copy(alpha = 0.4f),
                            )
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(
                                text = stringResource(R.string.auto_documento_no_disponible),
                                style = typography.headlineSmall,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.onSurface,
                                textAlign = TextAlign.Center,
                            )
                            Spacer(modifier = Modifier.height(Spacing.s))
                            Text(
                                text = stringResource(R.string.auto_el_documento_no_esta),
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                                textAlign = TextAlign.Center,
                            )
                        }
                    }
                }

                else -> {
                    DocumentoContent(documento = documento!!)
                }
            }
        }
    }
}

/**
 * Contenido visual del documento legal con título, metadatos y texto completo.
 *
 * @param documento DTO con los datos del documento legal.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun DocumentoContent(
    documento: DocumentoLegalResponseDTO,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    val extraColors = AmaniTheme.colors

    val fechaNoDisponible = stringResource(R.string.cita_fecha_no_disponible)
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

    Column(
        modifier =
            modifier
                .fillMaxSize()
                .verticalScroll(rememberScrollState())
                .background(colorScheme.surface)
                .padding(Spacing.m),
    ) {
        // Título
        Text(
            text = documento.titulo,
            style = typography.headlineMedium,
            fontWeight = FontWeight.Bold,
            color = colorScheme.primary,
            modifier = Modifier.padding(bottom = Spacing.s),
        )

        // Metadatos
        Surface(
            modifier = Modifier.fillMaxWidth(),
            shape = shapes.medium,
            color = colorScheme.surfaceVariant,
        ) {
            Column(
                modifier = Modifier.padding(Spacing.sm),
                verticalArrangement = Arrangement.spacedBy(Spacing.xs),
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                ) {
                    Text(
                        text = stringResource(R.string.admin_doc_version_formato, documento.version ?: "1.0"),
                        style = typography.labelSmall,
                        color = colorScheme.onSurfaceVariant,
                    )
                    Text(
                        text =
                            if (documento.activo) {
                                stringResource(R.string.settings_estado_activo)
                            } else {
                                stringResource(R.string.settings_estado_inactivo)
                            },
                        style = typography.labelSmall,
                        color = if (documento.activo) extraColors.success else colorScheme.error,
                    )
                }
                Text(
                    text = stringResource(R.string.admin_doc_creado_formato, fechaCreacion),
                    style = typography.labelSmall,
                    color = colorScheme.onSurfaceVariant,
                )
                Text(
                    text = stringResource(R.string.admin_doc_actualizado_formato, fechaActualizacion),
                    style = typography.labelSmall,
                    color = colorScheme.onSurfaceVariant,
                )
            }
        }

        Spacer(modifier = Modifier.height(Spacing.l))

        // Línea divisoria
        Box(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .height(Dimensions.borderMedium)
                    .background(colorScheme.primary.copy(alpha = 0.3f)),
        )

        Spacer(modifier = Modifier.height(Spacing.l))

        // Contenido del documento
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = shapes.large,
            colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceContainerLow),
            elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
        ) {
            Text(
                text = documento.contenido,
                style = typography.bodyMedium,
                color = colorScheme.onSurface,
                modifier = Modifier.padding(Spacing.m),
            )
        }

        Spacer(modifier = Modifier.height(Spacing.l))
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Preview(name = "DocumentoLegalDetail Light", showBackground = true)
@Preview(
    name = "DocumentoLegalDetail Dark",
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
)
@Preview(name = "DocumentoLegalDetail Large Font", showBackground = true, fontScale = 1.5f)
@Composable
private fun DocumentoLegalDetailScreenPreview() {
    AppTheme {
        Surface(color = MaterialTheme.colorScheme.background) {
            DocumentoContent(
                documento =
                    DocumentoLegalResponseDTO(
                        idDocumento = 1L,
                        tipo = null,
                        titulo = "Política de Privacidad",
                        contenido = "En Amani Psicología garantizamos la confidencialidad y protección de tus datos personales conforme al RGPD.",
                        icono = "lock",
                        ordenVisualizacion = 1,
                        version = "1.2",
                        activo = true,
                        creadoEn = "2026-01-15T10:00:00",
                        actualizadoEn = "2026-06-20T14:30:00",
                    ),
            )
        }
    }
}
