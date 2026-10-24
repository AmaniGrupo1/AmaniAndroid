package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import android.content.res.Configuration
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.foundation.layout.Arrangement
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
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ShowChart
import androidx.compose.material.icons.automirrored.filled.TrendingDown
import androidx.compose.material.icons.automirrored.filled.TrendingUp
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.Timeline
import androidx.compose.material.icons.outlined.BarChart
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CenterAlignedTopAppBar
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuAnchorType
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.patrykandpatrick.vico.compose.axis.horizontal.rememberBottomAxis
import com.patrykandpatrick.vico.compose.axis.vertical.rememberStartAxis
import com.patrykandpatrick.vico.compose.chart.Chart
import com.patrykandpatrick.vico.compose.chart.column.columnChart
import com.patrykandpatrick.vico.compose.chart.line.lineChart
import com.patrykandpatrick.vico.compose.chart.scroll.rememberChartScrollState
import com.patrykandpatrick.vico.compose.component.shape.shader.fromBrush
import com.patrykandpatrick.vico.core.axis.AxisItemPlacer
import com.patrykandpatrick.vico.core.chart.line.LineChart
import com.patrykandpatrick.vico.core.component.shape.LineComponent
import com.patrykandpatrick.vico.core.component.shape.Shapes
import com.patrykandpatrick.vico.core.component.shape.shader.DynamicShaders
import com.patrykandpatrick.vico.core.entry.ChartEntryModelProducer
import com.patrykandpatrick.vico.core.entry.entryOf
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO
import org.ies.tierno.applicationamani.domain.models.psicologo.EstadisticasEmocionales
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.EstadisticasPsicologoUiState
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.EstadisticasPsicologoViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.ies.tierno.applicationamani.utils.DateUtils.toLocalDateSafe
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDate
import java.time.format.DateTimeFormatter
import java.util.Locale

/**
 * Pantalla de estadísticas de bienestar para el psicólogo.
 *
 * Muestra gráficos de evolución emocional de los pacientes, métricas
 * agregadas (promedio, mejor/peor sesión, total de sesiones) y una
 * tarjeta de observaciones. Utiliza la librería Vico para los gráficos
 * de líneas y columnas.
 *
 * @param viewModel ViewModel que gestiona el estado de las estadísticas.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun EstadisticasPsicologoScreen(viewModel: EstadisticasPsicologoViewModel = koinViewModel()) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()

    EstadisticasPsicologoContent(
        uiState = uiState,
        onPacienteChange = viewModel::seleccionarPaciente,
        onPeriodoChange = viewModel::seleccionarPeriodo,
        onVistaChange = viewModel::seleccionarVista,
    )
}

@RequiresApi(Build.VERSION_CODES.O)
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun EstadisticasPsicologoContent(
    uiState: EstadisticasPsicologoUiState,
    onPacienteChange: (PacientePsicologoResponseDTO) -> Unit,
    onPeriodoChange: (String) -> Unit,
    onVistaChange: (String) -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme

    Scaffold(
        modifier = modifier,
        topBar = {
            CenterAlignedTopAppBar(
                title = {
                    Text(
                        stringResource(R.string.auto_estadisticas_de_bienestar),
                        style = MaterialTheme.typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.onSurface,
                    )
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colorScheme.surface,
                        titleContentColor = colorScheme.onSurface,
                        navigationIconContentColor = colorScheme.onSurface,
                    ),
            )
        },
        containerColor = colorScheme.background,
    ) { padding ->
        LazyColumn(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(padding)
                    .testTag("stats_list"),
            contentPadding = PaddingValues(Spacing.m),
            verticalArrangement = Arrangement.spacedBy(Spacing.m),
        ) {
            item(key = "filters") {
                FiltersSection(
                    pacientes = uiState.pacientes,
                    pacienteSeleccionado = uiState.pacienteSeleccionado,
                    periodoSeleccionado = uiState.periodoSeleccionado,
                    vistaSeleccionada = uiState.vistaSeleccionada,
                    onPacienteChange = onPacienteChange,
                    onPeriodoChange = onPeriodoChange,
                    onVistaChange = onVistaChange,
                )
            }

            item(key = "chart") {
                ChartCard(
                    chartData = uiState.chartData,
                    vistaSeleccionada = uiState.vistaSeleccionada,
                )
            }

            item(key = "metrics") {
                MetricsGrid(uiState = uiState)
            }

            item(key = "observation") {
                ObservationCard(observacion = uiState.estadisticas.observacion)
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun FiltersSection(
    pacientes: List<PacientePsicologoResponseDTO>,
    pacienteSeleccionado: PacientePsicologoResponseDTO?,
    periodoSeleccionado: String,
    vistaSeleccionada: String,
    onPacienteChange: (PacientePsicologoResponseDTO) -> Unit,
    onPeriodoChange: (String) -> Unit,
    onVistaChange: (String) -> Unit,
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.medium,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
    ) {
        Column(
            modifier = Modifier.padding(Spacing.m),
            verticalArrangement = Arrangement.spacedBy(Spacing.sm),
        ) {
            var expandedPaciente by remember { mutableStateOf(false) }
            ExposedDropdownMenuBox(
                expanded = expandedPaciente,
                onExpandedChange = { expandedPaciente = !expandedPaciente },
            ) {
                OutlinedTextField(
                    value = "${pacienteSeleccionado?.nombre ?: ""} ${pacienteSeleccionado?.apellido ?: ""}",
                    onValueChange = {},
                    readOnly = true,
                    label = { Text(stringResource(R.string.auto_paciente)) },
                    trailingIcon = {
                        ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedPaciente)
                    },
                    modifier =
                        Modifier
                            .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable)
                            .fillMaxWidth()
                            .testTag("dropdown_paciente"),
                    shape = MaterialTheme.shapes.small,
                )
                ExposedDropdownMenu(
                    expanded = expandedPaciente,
                    onDismissRequest = { expandedPaciente = false },
                ) {
                    pacientes.forEach { paciente ->
                        DropdownMenuItem(
                            text = { Text("${paciente.nombre} ${paciente.apellido}") },
                            onClick = {
                                onPacienteChange(paciente)
                                expandedPaciente = false
                            },
                        )
                    }
                }
            }

            val periodos =
                listOf(
                    stringResource(R.string.stats_periodo_ultimo_mes),
                    stringResource(R.string.stats_periodo_ultimos_3_meses),
                    stringResource(R.string.stats_periodo_ultimos_6_meses),
                    stringResource(R.string.stats_periodo_ultimo_ano),
                )
            val vistas =
                listOf(
                    stringResource(R.string.stats_vista_linea),
                    stringResource(R.string.stats_vista_barras),
                )

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(Spacing.sm),
            ) {
                var expandedPeriodo by remember { mutableStateOf(false) }
                ExposedDropdownMenuBox(
                    expanded = expandedPeriodo,
                    onExpandedChange = { expandedPeriodo = !expandedPeriodo },
                    modifier = Modifier.weight(1f),
                ) {
                    OutlinedTextField(
                        value = periodoSeleccionado,
                        onValueChange = {},
                        readOnly = true,
                        label = { Text(stringResource(R.string.auto_periodo)) },
                        trailingIcon = {
                            ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedPeriodo)
                        },
                        modifier =
                            Modifier
                                .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable)
                                .testTag("dropdown_periodo"),
                        shape = MaterialTheme.shapes.small,
                    )
                    ExposedDropdownMenu(
                        expanded = expandedPeriodo,
                        onDismissRequest = { expandedPeriodo = false },
                    ) {
                        periodos.forEach { p ->
                            DropdownMenuItem(
                                text = { Text(p) },
                                onClick = {
                                    onPeriodoChange(p)
                                    expandedPeriodo = false
                                },
                            )
                        }
                    }
                }

                var expandedVista by remember { mutableStateOf(false) }
                ExposedDropdownMenuBox(
                    expanded = expandedVista,
                    onExpandedChange = { expandedVista = !expandedVista },
                    modifier = Modifier.weight(1f),
                ) {
                    OutlinedTextField(
                        value = vistaSeleccionada,
                        onValueChange = {},
                        readOnly = true,
                        label = { Text(stringResource(R.string.auto_vista)) },
                        trailingIcon = {
                            ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedVista)
                        },
                        modifier = Modifier.menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable),
                        shape = MaterialTheme.shapes.small,
                    )
                    ExposedDropdownMenu(
                        expanded = expandedVista,
                        onDismissRequest = { expandedVista = false },
                    ) {
                        vistas.forEach { v ->
                            DropdownMenuItem(
                                text = { Text(v) },
                                onClick = {
                                    onVistaChange(v)
                                    expandedVista = false
                                },
                            )
                        }
                    }
                }
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun ChartCard(
    chartData: List<Pair<LocalDate, Float>>,
    vistaSeleccionada: String,
) {
    Card(
        modifier =
            Modifier
                .fillMaxWidth()
                .height(Dimensions.chartCardHeight),
        shape = MaterialTheme.shapes.medium,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
    ) {
        Column(modifier = Modifier.padding(Spacing.m)) {
            Text(
                stringResource(R.string.auto_evolucion_emocional),
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
            Spacer(modifier = Modifier.height(Spacing.m))

            when {
                chartData.isEmpty() -> EmptyStateContent()
                chartData.size == 1 -> SinglePointChart(chartData.first())
                else ->
                    EmotionalEvolutionChart(
                        chartData = chartData,
                        vistaSeleccionada = vistaSeleccionada,
                        modifier = Modifier.fillMaxSize(),
                    )
            }
        }
    }
}

@Composable
private fun EmptyStateContent() {
    Column(
        modifier =
            Modifier
                .fillMaxSize()
                .testTag("chart_empty_state"),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Icon(
            imageVector = Icons.Outlined.BarChart,
            contentDescription = null,
            tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.4f),
            modifier = Modifier.size(Dimensions.iconHero),
        )
        Spacer(modifier = Modifier.height(Spacing.m))
        Text(
            text = stringResource(R.string.auto_sin_datos_disponibles),
            style = MaterialTheme.typography.titleMedium,
            color = MaterialTheme.colorScheme.onSurface,
        )
        Text(
            text = stringResource(R.string.auto_este_paciente_no_tiene),
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center,
            modifier = Modifier.padding(horizontal = Spacing.l),
        )
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun EmotionalEvolutionChart(
    chartData: List<Pair<LocalDate, Float>>,
    vistaSeleccionada: String = "Línea",
    modifier: Modifier = Modifier,
) {
    val modelProducer = remember { ChartEntryModelProducer() }
    val colorScheme = MaterialTheme.colorScheme
    val primaryColor = colorScheme.primary

    val dateLabels =
        remember(chartData) {
            val formatter = DateTimeFormatter.ofPattern("d MMM", Locale.forLanguageTag("es"))
            chartData.map { it.first.format(formatter) }
        }

    LaunchedEffect(chartData) {
        val entries =
            chartData.mapIndexed { index, item ->
                entryOf(index.toFloat(), item.second)
            }
        modelProducer.setEntries(entries)
    }

    val chart =
        if (vistaSeleccionada == "Barras") {
            columnChart(
                columns =
                    listOf(
                        LineComponent(
                            color = primaryColor.toArgb(),
                            thicknessDp = (200f / maxOf(chartData.size, 1)).coerceIn(8f, 24f),
                            shape = Shapes.pillShape,
                        ),
                    ),
                axisValuesOverrider =
                    com.patrykandpatrick.vico.core.chart.values.AxisValuesOverrider.fixed(
                        minY = 0f,
                        maxY = 10f,
                    ),
            )
        } else {
            lineChart(
                lines =
                    listOf(
                        LineChart.LineSpec(
                            lineColor = primaryColor.toArgb(),
                            lineThicknessDp = 2f,
                            lineBackgroundShader =
                                DynamicShaders.fromBrush(
                                    Brush.verticalGradient(
                                        listOf(
                                            primaryColor.copy(alpha = 0.3f),
                                            primaryColor.copy(alpha = 0.0f),
                                        ),
                                    ),
                                ),
                            point = null,
                            pointSizeDp = 6f,
                        ),
                    ),
                axisValuesOverrider =
                    com.patrykandpatrick.vico.core.chart.values.AxisValuesOverrider.fixed(
                        minY = 0f,
                        maxY = 10f,
                    ),
            )
        }

    Chart(
        chart = chart,
        chartModelProducer = modelProducer,
        startAxis =
            rememberStartAxis(
                valueFormatter = { value, _ -> value.toInt().toString() },
                itemPlacer = AxisItemPlacer.Vertical.default(maxItemCount = 6),
            ),
        bottomAxis =
            rememberBottomAxis(
                valueFormatter = { value, _ ->
                    val index = value.toInt()
                    if (index in dateLabels.indices) dateLabels[index] else ""
                },
                itemPlacer =
                    AxisItemPlacer.Horizontal.default(
                        spacing = maxOf(1, chartData.size / 6),
                    ),
            ),
        modifier = modifier,
        chartScrollState = rememberChartScrollState(),
    )
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun SinglePointChart(point: Pair<LocalDate, Float>) {
    val formatter = DateTimeFormatter.ofPattern("d MMM yyyy", Locale.forLanguageTag("es"))
    Column(
        modifier = Modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Text(
            text = point.second.toInt().toString(),
            style = MaterialTheme.typography.displayMedium,
            fontWeight = FontWeight.Bold,
            color = MaterialTheme.colorScheme.primary,
        )
        Text(
            text = "/ 10  ·  ${point.first.format(formatter)}",
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        Spacer(modifier = Modifier.height(Spacing.s))
        Text(
            text = stringResource(R.string.auto_solo_hay_una_entrada),
            style = MaterialTheme.typography.labelSmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center,
            modifier = Modifier.padding(horizontal = Spacing.l),
        )
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun MetricsGrid(uiState: EstadisticasPsicologoUiState) {
    val stats = uiState.estadisticas
    val hasData = uiState.chartData.isNotEmpty() || stats != EstadisticasEmocionales()
    val colorScheme = MaterialTheme.colorScheme
    val successColor = AmaniTheme.colors.success
    val locale = androidx.compose.ui.platform.LocalConfiguration.current.locales[0]
    val sinDatos = stringResource(R.string.stats_sin_datos)
    val naText = stringResource(R.string.stats_na)

    Column(verticalArrangement = Arrangement.spacedBy(Spacing.sm)) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(Spacing.sm),
        ) {
            MetricCard(
                title = stringResource(R.string.stats_promedio_periodo),
                value = if (hasData) String.format(locale, "%.1f / 10", stats.promedioPeriodo) else "— / 10",
                subtitle = if (hasData) getEmotionalLevel(stats.promedioPeriodo) else sinDatos,
                icon = Icons.AutoMirrored.Filled.ShowChart,
                modifier = Modifier.weight(1f),
            )
            MetricCard(
                title = stringResource(R.string.stats_mejor_sesion),
                value = if (hasData) String.format(locale, "%d / 10", stats.mejorSesion?.intensidad ?: 0) else "— / 10",
                subtitle =
                    stats.mejorSesion
                        ?.fecha
                        .toLocalDateSafe()
                        ?.format(DateTimeFormatter.ofPattern("d MMM yyyy")) ?: naText,
                icon = Icons.AutoMirrored.Filled.TrendingUp,
                color = successColor,
                modifier = Modifier.weight(1f),
            )
        }
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(Spacing.sm),
        ) {
            MetricCard(
                title = stringResource(R.string.stats_peor_sesion),
                value = if (hasData) String.format(locale, "%d / 10", stats.peorSesion?.intensidad ?: 0) else "— / 10",
                subtitle =
                    stats.peorSesion
                        ?.fecha
                        .toLocalDateSafe()
                        ?.format(DateTimeFormatter.ofPattern("d MMM yyyy")) ?: naText,
                icon = Icons.AutoMirrored.Filled.TrendingDown,
                color = colorScheme.error,
                modifier = Modifier.weight(1f),
            )
            MetricCard(
                title = stringResource(R.string.stats_total_sesiones),
                value = if (hasData) stats.totalSesiones.toString() else "0",
                subtitle = uiState.periodoSeleccionado,
                icon = Icons.Default.CalendarToday,
                modifier = Modifier.weight(1f),
            )
        }
        MetricCard(
            title = stringResource(R.string.stats_tendencia_general),
            value =
                when {
                    !hasData -> naText
                    stats.tendenciaPuntos > 1.0 -> stringResource(R.string.stats_tendencia_mejorando)
                    stats.tendenciaPuntos < -1.0 -> stringResource(R.string.stats_tendencia_bajando)
                    else -> stringResource(R.string.stats_tendencia_estable)
                },
            subtitle =
                if (hasData) {
                    String.format(locale, "%+.1f puntos", stats.tendenciaPuntos)
                } else {
                    stringResource(R.string.stats_sin_tendencia)
                },
            icon = Icons.Default.Timeline,
            color =
                when {
                    !hasData -> colorScheme.onSurfaceVariant
                    stats.tendenciaPuntos > 1.0 -> successColor
                    stats.tendenciaPuntos < -1.0 -> colorScheme.error
                    else -> colorScheme.onSurfaceVariant
                },
            modifier = Modifier.fillMaxWidth(),
        )
    }
}

/**
 * Tarjeta de métrica individual con icono, valor y subtítulo.
 *
 * @param title Título de la métrica.
 * @param value Valor principal a mostrar.
 * @param subtitle Texto secundario con información adicional.
 * @param icon Icono vectorial representativo.
 * @param color Color del icono y del valor.
 * @param modifier Modificador de diseño opcional.
 */
@Composable
fun MetricCard(
    title: String,
    value: String,
    subtitle: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    color: Color = MaterialTheme.colorScheme.primary,
    modifier: Modifier = Modifier,
) {
    val successColor = AmaniTheme.colors.success
    Card(
        modifier = modifier,
        shape = MaterialTheme.shapes.medium,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
    ) {
        Column(modifier = Modifier.padding(Spacing.m)) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(
                    icon,
                    contentDescription = null,
                    tint = color,
                    modifier = Modifier.size(Dimensions.iconButton),
                )
                Spacer(modifier = Modifier.width(Spacing.s))
                Text(
                    title,
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
            Spacer(modifier = Modifier.height(Spacing.s))
            Text(
                value,
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold,
                color = color,
            )
            Text(
                subtitle,
                style = MaterialTheme.typography.labelSmall,
                color =
                    if (color != MaterialTheme.colorScheme.primary) {
                        color
                    } else {
                        successColor
                    },
            )
        }
    }
}

/**
 * Tarjeta que muestra una observación cualitativa sobre las estadísticas.
 *
 * @param observacion Texto de la observación a mostrar.
 */
@Composable
fun ObservationCard(observacion: String) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.medium,
        colors =
            CardDefaults.cardColors(
                containerColor = MaterialTheme.colorScheme.tertiaryContainer.copy(alpha = 0.25f),
            ),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level0),
    ) {
        Row(
            modifier = Modifier.padding(Spacing.m),
            verticalAlignment = Alignment.Top,
        ) {
            Icon(
                Icons.AutoMirrored.Filled.ShowChart,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.primary,
                modifier = Modifier.size(Dimensions.iconDefault),
            )
            Spacer(modifier = Modifier.width(Spacing.sm))
            Column {
                Text(
                    stringResource(R.string.auto_observacion),
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.Bold,
                    color = MaterialTheme.colorScheme.primary,
                )
                Text(
                    observacion,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface,
                    modifier = Modifier.testTag("observation_text"),
                )
            }
        }
    }
}

/**
 * Determina el nivel emocional cualitativo a partir de un promedio numérico.
 *
 * @param promedio Valor promedio de intensidad emocional.
 * @return Etiqueta descriptiva del nivel emocional.
 */
@Composable
private fun getEmotionalLevel(promedio: Double): String =
    when {
        promedio >= 8 -> stringResource(R.string.stats_nivel_muy_positivo)
        promedio >= 6 -> stringResource(R.string.stats_nivel_positivo)
        promedio >= 4 -> stringResource(R.string.stats_nivel_neutro)
        promedio >= 2 -> stringResource(R.string.stats_nivel_negativo)
        else -> stringResource(R.string.stats_nivel_muy_negativo)
    }

@RequiresApi(Build.VERSION_CODES.O)
@Preview(name = "EstadisticasPsicologo Light", showBackground = true)
@Preview(
    name = "EstadisticasPsicologo Dark",
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
)
@Preview(name = "EstadisticasPsicologo Large Font", showBackground = true, fontScale = 1.5f)
@Composable
private fun EstadisticasPsicologoScreenPreview() {
    AppTheme {
        EstadisticasPsicologoContent(
            uiState =
                EstadisticasPsicologoUiState(
                    pacientes =
                        listOf(
                            PacientePsicologoResponseDTO(
                                idPaciente = 1L,
                                idUsuario = 10L,
                                nombre = "Ana",
                                apellido = "Martínez",
                                email = "ana@amani.es",
                                dni = "12345678A",
                                telefono = "600111222",
                            ),
                        ),
                    estadisticas =
                        EstadisticasEmocionales(
                            promedioPeriodo = 7.6,
                            mejorSesion = DiarioEmocionResponseDTO(1, "2026-04-12", "Calma", "Feliz", 9, ""),
                            peorSesion = DiarioEmocionResponseDTO(2, "2026-04-02", "Estrés", "Ansioso", 4, ""),
                            totalSesiones = 8,
                            tendenciaPuntos = 1.4,
                            observacion = "La paciente muestra una evolución favorable y sostenida durante el último mes.",
                        ),
                ),
            onPacienteChange = {},
            onPeriodoChange = {},
            onVistaChange = {},
        )
    }
}
