package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.content.res.Configuration
import android.widget.Toast
import androidx.compose.foundation.background
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
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Note
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material.icons.filled.Healing
import androidx.compose.material.icons.filled.History
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.filled.Share
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
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.ies.tierno.applicationamani.presentation.ui.screen.generacionPDFhISTORIAL.HistorialPDFGenerator
import org.ies.tierno.applicationamani.presentation.viewmodels.historialClinico.HistorialClinicoPacienteViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

/**
 * Encuentra la [Activity] asociada a un [Context], recorriendo los
 * [ContextWrapper] si es necesario.
 *
 * @return La Activity encontrada, o `null` si no se encuentra.
 */
fun Context.findActivity(): Activity? {
    var context = this
    while (context is ContextWrapper) {
        if (context is Activity) return context
        context = context.baseContext
    }
    return null
}

/**
 * Pantalla de visualización del historial clínico del paciente.
 *
 * Muestra una lista de entradas del historial con diagnóstico, tratamiento
 * y observaciones en tarjetas expandibles. Permite generar y compartir un
 * PDF del historial completo mediante [HistorialPDFGenerator].
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param idPaciente Identificador del paciente cuyo historial se muestra.
 * @param viewModel ViewModel que gestiona la carga del historial clínico.
 * @param userSessionDataStore Almacén de sesión para obtener el nombre del paciente.
 */
@Composable
fun HistorialClinicoScreen(
    navController: NavController,
    idPaciente: Long,
    viewModel: HistorialClinicoPacienteViewModel = koinViewModel(),
    userSessionDataStore: UserSessionDataStore,
    modifier: Modifier = Modifier,
) {
    val scope = rememberCoroutineScope()
    val context = LocalContext.current
    val tokenDataStore = remember { TokenDataStore(context) }

    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)
    val nombrePaciente = session?.nombre ?: stringResource(R.string.rol_paciente_default)

    val historial by viewModel.historial
    val isLoading by viewModel.isLoading
    val error by viewModel.error

    LaunchedEffect(idPaciente) {
        val token = tokenDataStore.getToken()
        if (token.isNullOrEmpty()) {
            Toast.makeText(context, "Error: No hay sesión activa", Toast.LENGTH_LONG).show()
            navController.navigateUp()
            return@LaunchedEffect
        }
        viewModel.cargarHistorialClinico(idPaciente, "Bearer $token")
    }

    HistorialClinicoContent(
        historial = historial,
        isLoading = isLoading,
        error = error,
        onBackClick = { navController.navigateUp() },
        onSharePdf = {
            scope.launch {
                if (historial.isNotEmpty()) {
                    try {
                        val loadingToast =
                            Toast.makeText(
                                context,
                                "Generando PDF...",
                                Toast.LENGTH_SHORT,
                            )
                        loadingToast.show()

                        val pdfFile =
                            HistorialPDFGenerator.generarPDF(
                                context = context,
                                historial = historial,
                                nombrePaciente = nombrePaciente,
                            )

                        loadingToast.cancel()

                        if (!pdfFile.exists() || pdfFile.length() == 0L) {
                            Toast
                                .makeText(
                                    context,
                                    "Error: No se pudo generar el PDF",
                                    Toast.LENGTH_LONG,
                                ).show()
                            return@launch
                        }

                        HistorialPDFGenerator.compartirPDF(context, pdfFile)
                    } catch (e: Exception) {
                        Toast
                            .makeText(
                                context,
                                "Error: ${e.message}",
                                Toast.LENGTH_LONG,
                            ).show()
                    }
                } else {
                    Toast
                        .makeText(
                            context,
                            "No hay datos para compartir",
                            Toast.LENGTH_SHORT,
                        ).show()
                }
            }
        },
        onRetry = {
            scope.launch {
                val token = tokenDataStore.getToken() ?: ""
                viewModel.cargarHistorialClinico(idPaciente, "Bearer $token")
            }
        },
        modifier = modifier,
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HistorialClinicoContent(
    historial: List<HistorialClinicoResponseDTO>,
    isLoading: Boolean,
    error: String?,
    onBackClick: () -> Unit,
    onSharePdf: () -> Unit,
    onRetry: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    var expandedCardId by remember { mutableStateOf<Long?>(null) }

    fun formatFecha(fechaStr: String): String =
        try {
            val fecha = LocalDateTime.parse(fechaStr)
            val formatter =
                DateTimeFormatter.ofPattern(
                    "dd 'de' MMMM 'de' yyyy",
                    java.util.Locale.Builder().setLanguage("es").setRegion("ES").build(),
                )
            fecha.format(formatter)
        } catch (_: Exception) {
            fechaStr
        }

    Scaffold(
        modifier = modifier,
        containerColor = colorScheme.background,
        topBar = {
            TopAppBar(
                title = {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween,
                    ) {
                        Text(
                            text = stringResource(R.string.auto_historial_clinico),
                            style = typography.titleLarge,
                            fontWeight = FontWeight.SemiBold,
                            color = colorScheme.onSurface,
                            modifier = Modifier.weight(1f),
                        )
                        IconButton(onClick = onSharePdf) {
                            Icon(
                                Icons.Default.Share,
                                contentDescription = stringResource(R.string.auto_compartir_pdf),
                                tint = colorScheme.onSurface,
                            )
                        }
                    }
                },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
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
                    .padding(paddingValues)
                    .background(colorScheme.background),
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
                            CircularProgressIndicator(color = colorScheme.primary)
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(
                                text = stringResource(R.string.auto_cargando_historial_clinico),
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }

                historial.isEmpty() && !isLoading -> {
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
                                Icons.Default.History,
                                contentDescription = null,
                                modifier = Modifier.size(Dimensions.avatarLarge),
                                tint = colorScheme.primary.copy(alpha = 0.3f),
                            )
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(
                                text = stringResource(R.string.auto_no_hay_registros_en),
                                style = typography.titleMedium,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.onSurface,
                                textAlign = TextAlign.Center,
                            )
                            Spacer(modifier = Modifier.height(Spacing.s))
                            Text(
                                text = stringResource(R.string.auto_las_consultas_con_tu),
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                                textAlign = TextAlign.Center,
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
                                text = stringResource(R.string.auto_error_al_cargar_el_2),
                                style = typography.titleMedium,
                                fontWeight = FontWeight.Bold,
                                color = colorScheme.onSurface,
                                textAlign = TextAlign.Center,
                            )
                            Spacer(modifier = Modifier.height(Spacing.s))
                            Text(
                                text = error,
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                                textAlign = TextAlign.Center,
                            )
                            Spacer(modifier = Modifier.height(Spacing.l))
                            Button(
                                onClick = onRetry,
                                colors = ButtonDefaults.buttonColors(containerColor = colorScheme.primary),
                                shape = CircleShape,
                            ) {
                                Icon(
                                    Icons.Default.Refresh,
                                    contentDescription = stringResource(R.string.auto_reintentar),
                                )
                                Spacer(modifier = Modifier.width(Spacing.s))
                                Text(
                                    stringResource(R.string.auto_reintentar),
                                    style = typography.labelLarge,
                                )
                            }
                        }
                    }
                }

                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = Spacing.m, vertical = Spacing.m),
                        verticalArrangement = Arrangement.spacedBy(Spacing.m),
                    ) {
                        items(
                            items = historial,
                            key = { it.id },
                            contentType = { "historial_clinico_item" },
                        ) { item ->
                            HistorialCard(
                                item = item,
                                isExpanded = expandedCardId == item.id,
                                onCardClick = {
                                    expandedCardId = if (expandedCardId == item.id) null else item.id
                                },
                                formatFecha = { formatFecha(it) },
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun HistorialCard(
    item: HistorialClinicoResponseDTO,
    isExpanded: Boolean,
    onCardClick: () -> Unit,
    formatFecha: (String) -> String,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Card(
        modifier =
            modifier
                .fillMaxWidth()
                .clickable { onCardClick() },
        shape = shapes.medium,
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2),
        colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
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
                verticalAlignment = Alignment.Top,
            ) {
                Column(
                    modifier = Modifier.weight(1f),
                ) {
                    Text(
                        text = item.titulo,
                        style = typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.primary,
                    )
                    Spacer(modifier = Modifier.height(Spacing.xs))
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Icon(
                            Icons.Default.DateRange,
                            contentDescription = stringResource(R.string.auto_fecha),
                            modifier = Modifier.size(Dimensions.iconSmall),
                            tint = colorScheme.onSurfaceVariant,
                        )
                        Spacer(modifier = Modifier.width(Spacing.xs))
                        Text(
                            text = formatFecha(item.creadoEn),
                            style = typography.bodySmall,
                            color = colorScheme.onSurfaceVariant,
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(Spacing.sm))

            Surface(
                modifier = Modifier.fillMaxWidth(),
                shape = shapes.medium,
                color = colorScheme.primary.copy(alpha = 0.1f),
            ) {
                Column(
                    modifier = Modifier.padding(Spacing.sm),
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.Healing,
                            contentDescription = stringResource(R.string.auto_diagnostico),
                            modifier = Modifier.size(Dimensions.iconSmall),
                            tint = colorScheme.primary,
                        )
                        Spacer(modifier = Modifier.width(Spacing.s))
                        Text(
                            text = stringResource(R.string.auto_diagnostico),
                            style = typography.labelSmall,
                            fontWeight = FontWeight.Medium,
                            color = colorScheme.primary,
                        )
                    }
                    Spacer(modifier = Modifier.height(Spacing.xs))
                    Text(
                        text = item.diagnostico.ifEmpty { stringResource(R.string.valor_no_especificado) },
                        style = typography.bodyMedium,
                        color = colorScheme.onSurface,
                    )
                }
            }

            if (isExpanded) {
                Spacer(modifier = Modifier.height(Spacing.sm))

                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.medium,
                    color = colorScheme.primary.copy(alpha = 0.05f),
                ) {
                    Column(
                        modifier = Modifier.padding(Spacing.sm),
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.Favorite,
                                contentDescription = stringResource(R.string.auto_tratamiento),
                                modifier = Modifier.size(Dimensions.iconSmall),
                                tint = colorScheme.primary.copy(alpha = 0.8f),
                            )
                            Spacer(modifier = Modifier.width(Spacing.s))
                            Text(
                                text = stringResource(R.string.auto_tratamiento),
                                style = typography.labelSmall,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.primary.copy(alpha = 0.8f),
                            )
                        }
                        Spacer(modifier = Modifier.height(Spacing.xs))
                        Text(
                            text = item.tratamiento.ifEmpty { stringResource(R.string.valor_no_especificado) },
                            style = typography.bodyMedium,
                            color = colorScheme.onSurface,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.s))

                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.medium,
                    color = colorScheme.onSurfaceVariant.copy(alpha = 0.1f),
                ) {
                    Column(
                        modifier = Modifier.padding(Spacing.sm),
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.AutoMirrored.Filled.Note,
                                contentDescription = stringResource(R.string.auto_observaciones),
                                modifier = Modifier.size(Dimensions.iconSmall),
                                tint = colorScheme.onSurfaceVariant,
                            )
                            Spacer(modifier = Modifier.width(Spacing.s))
                            Text(
                                text = stringResource(R.string.auto_observaciones),
                                style = typography.labelSmall,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.onSurfaceVariant,
                            )
                        }
                        Spacer(modifier = Modifier.height(Spacing.xs))
                        Text(
                            text = item.observaciones.ifEmpty { stringResource(R.string.historial_sin_observaciones) },
                            style = typography.bodyMedium,
                            color = colorScheme.onSurfaceVariant,
                        )
                    }
                }
            }
        }
    }
}

@Preview(name = "Light", showBackground = true)
@Preview(name = "Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "FontScale 1.5x", fontScale = 1.5f, showBackground = true)
@Composable
private fun HistorialClinicoScreenPreview() {
    AppTheme {
        HistorialClinicoContent(
            historial = emptyList(),
            isLoading = false,
            error = null,
            onBackClick = {},
            onSharePdf = {},
            onRetry = {},
        )
    }
}
