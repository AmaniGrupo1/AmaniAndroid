package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.foundation.background
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
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ShowChart
import androidx.compose.material.icons.automirrored.filled.TrendingDown
import androidx.compose.material.icons.automirrored.filled.TrendingUp
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.Psychology
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
import androidx.compose.runtime.collectAsState
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
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.patrykandpatrick.vico.compose.axis.horizontal.rememberBottomAxis
import com.patrykandpatrick.vico.compose.axis.vertical.rememberStartAxis
import com.patrykandpatrick.vico.compose.chart.Chart
import com.patrykandpatrick.vico.compose.chart.column.columnChart
import com.patrykandpatrick.vico.compose.chart.line.lineChart
import com.patrykandpatrick.vico.compose.chart.scroll.rememberChartScrollState
import com.patrykandpatrick.vico.core.axis.AxisItemPlacer
import com.patrykandpatrick.vico.core.chart.line.LineChart
import com.patrykandpatrick.vico.core.component.shape.LineComponent
import com.patrykandpatrick.vico.core.component.shape.Shapes
import com.patrykandpatrick.vico.compose.component.shape.shader.fromBrush
import com.patrykandpatrick.vico.core.component.shape.shader.DynamicShaders
import com.patrykandpatrick.vico.core.entry.ChartEntryModelProducer
import com.patrykandpatrick.vico.core.entry.entryOf
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.EstadisticasPsicologoUiState
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.EstadisticasPsicologoViewModel
import org.ies.tierno.applicationamani.utils.DateUtils.toLocalDateSafe
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDate
import java.time.format.DateTimeFormatter
import java.util.Locale

@RequiresApi(Build.VERSION_CODES.O)
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun EstadisticasPsicologoScreen(
    viewModel: EstadisticasPsicologoViewModel = koinViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val colorScheme = MaterialTheme.colorScheme

    Scaffold(
        topBar = {
            CenterAlignedTopAppBar(
                title = {
                    Text(
                        "Estadísticas de Bienestar",
                        style = MaterialTheme.typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.onPrimary
                    )
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = colorScheme.primary
                )
            )
        },
        containerColor = colorScheme.background
    ) { padding ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .testTag("stats_list"),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            item {
                FiltersSection(
                    pacientes = uiState.pacientes,
                    pacienteSeleccionado = uiState.pacienteSeleccionado,
                    periodoSeleccionado = uiState.periodoSeleccionado,
                    vistaSeleccionada = uiState.vistaSeleccionada,
                    onPacienteChange = viewModel::seleccionarPaciente,
                    onPeriodoChange = viewModel::seleccionarPeriodo,
                    onVistaChange = viewModel::seleccionarVista
                )
            }

            item {
                ChartCard(
                    chartData = uiState.chartData,
                    vistaSeleccionada = uiState.vistaSeleccionada
                )
            }

            item {
                MetricsGrid(uiState = uiState)
            }

            item {
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
    onVistaChange: (String) -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.medium,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            var expandedPaciente by remember { mutableStateOf(false) }
            ExposedDropdownMenuBox(
                expanded = expandedPaciente,
                onExpandedChange = { expandedPaciente = !expandedPaciente }
            ) {
                OutlinedTextField(
                    value = "${pacienteSeleccionado?.nombre ?: ""} ${pacienteSeleccionado?.apellido ?: ""}",
                    onValueChange = {},
                    readOnly = true,
                    label = { Text("Paciente") },
                    trailingIcon = {
                        ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedPaciente)
                    },
                    modifier = Modifier
                        .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable)
                        .fillMaxWidth()
                        .testTag("dropdown_paciente"),
                    shape = MaterialTheme.shapes.small
                )
                ExposedDropdownMenu(
                    expanded = expandedPaciente,
                    onDismissRequest = { expandedPaciente = false }
                ) {
                    pacientes.forEach { paciente ->
                        DropdownMenuItem(
                            text = { Text("${paciente.nombre} ${paciente.apellido}") },
                            onClick = {
                                onPacienteChange(paciente)
                                expandedPaciente = false
                            }
                        )
                    }
                }
            }

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                var expandedPeriodo by remember { mutableStateOf(false) }
                ExposedDropdownMenuBox(
                    expanded = expandedPeriodo,
                    onExpandedChange = { expandedPeriodo = !expandedPeriodo },
                    modifier = Modifier.weight(1f)
                ) {
                    OutlinedTextField(
                        value = periodoSeleccionado,
                        onValueChange = {},
                        readOnly = true,
                        label = { Text("Periodo") },
                        trailingIcon = {
                            ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedPeriodo)
                        },
                        modifier = Modifier
                            .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable)
                            .testTag("dropdown_periodo"),
                        shape = MaterialTheme.shapes.small
                    )
                    ExposedDropdownMenu(
                        expanded = expandedPeriodo,
                        onDismissRequest = { expandedPeriodo = false }
                    ) {
                        listOf(
                            "Último mes", "Últimos 3 meses", "Últimos 6 meses", "Último año"
                        ).forEach { p ->
                            DropdownMenuItem(
                                text = { Text(p) },
                                onClick = {
                                    onPeriodoChange(p)
                                    expandedPeriodo = false
                                }
                            )
                        }
                    }
                }

                var expandedVista by remember { mutableStateOf(false) }
                ExposedDropdownMenuBox(
                    expanded = expandedVista,
                    onExpandedChange = { expandedVista = !expandedVista },
                    modifier = Modifier.weight(1f)
                ) {
                    OutlinedTextField(
                        value = vistaSeleccionada,
                        onValueChange = {},
                        readOnly = true,
                        label = { Text("Vista") },
                        trailingIcon = {
                            ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedVista)
                        },
                        modifier = Modifier.menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable),
                        shape = MaterialTheme.shapes.small
                    )
                    ExposedDropdownMenu(
                        expanded = expandedVista,
                        onDismissRequest = { expandedVista = false }
                    ) {
                        listOf("Línea", "Barras").forEach { v ->
                            DropdownMenuItem(
                                text = { Text(v) },
                                onClick = {
                                    onVistaChange(v)
                                    expandedVista = false
                                }
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
    vistaSeleccionada: String
) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .height(350.dp),
        shape = MaterialTheme.shapes.medium,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Text(
                "Evolución emocional",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            Spacer(modifier = Modifier.height(16.dp))

            when {
                chartData.isEmpty() -> EmptyStateContent()
                chartData.size == 1 -> SinglePointChart(chartData.first())
                else -> EmotionalEvolutionChart(
                    chartData = chartData,
                    vistaSeleccionada = vistaSeleccionada,
                    modifier = Modifier.fillMaxSize()
                )
            }
        }
    }
}

@Composable
private fun EmptyStateContent() {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .testTag("chart_empty_state"),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(
            imageVector = Icons.Outlined.BarChart,
            contentDescription = null,
            tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.4f),
            modifier = Modifier.size(64.dp)
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(
            text = "Sin datos disponibles",
            style = MaterialTheme.typography.titleMedium,
            color = MaterialTheme.colorScheme.onSurface
        )
        Text(
            text = "Este paciente no tiene registros en el periodo seleccionado",
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center,
            modifier = Modifier.padding(horizontal = 24.dp)
        )
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun EmotionalEvolutionChart(
    chartData: List<Pair<LocalDate, Float>>,
    vistaSeleccionada: String = "Línea",
    modifier: Modifier = Modifier
) {
    val modelProducer = remember { ChartEntryModelProducer() }
    val colorScheme = MaterialTheme.colorScheme
    val primaryColor = colorScheme.primary

    val dateLabels = remember(chartData) {
        val formatter = DateTimeFormatter.ofPattern("d MMM", Locale.forLanguageTag("es"))
        chartData.map { it.first.format(formatter) }
    }

    LaunchedEffect(chartData) {
        val entries = chartData.mapIndexed { index, item ->
            entryOf(index.toFloat(), item.second)
        }
        modelProducer.setEntries(entries)
    }

    val chart = if (vistaSeleccionada == "Barras") {
        columnChart(
            columns = listOf(
                LineComponent(
                    color = primaryColor.toArgb(),
                    thicknessDp = (200f / maxOf(chartData.size, 1)).coerceIn(8f, 24f),
                    shape = Shapes.pillShape
                )
            ),
            axisValuesOverrider = com.patrykandpatrick.vico.core.chart.values.AxisValuesOverrider.fixed(
                minY = 0f, maxY = 10f
            )
        )
    } else {
        lineChart(
            lines = listOf(
                LineChart.LineSpec(
                    lineColor = primaryColor.toArgb(),
                    lineThicknessDp = 2f,
                    lineBackgroundShader = DynamicShaders.fromBrush(
                        Brush.verticalGradient(
                            listOf(
                                primaryColor.copy(alpha = 0.3f),
                                primaryColor.copy(alpha = 0.0f)
                            )
                        )
                    ),
                    point = null,
                    pointSizeDp = 6f
                )
            ),
            axisValuesOverrider = com.patrykandpatrick.vico.core.chart.values.AxisValuesOverrider.fixed(
                minY = 0f, maxY = 10f
            )
        )
    }

    Chart(
        chart = chart,
        chartModelProducer = modelProducer,
        startAxis = rememberStartAxis(
            valueFormatter = { value, _ -> value.toInt().toString() },
            itemPlacer = AxisItemPlacer.Vertical.default(maxItemCount = 6)
        ),
        bottomAxis = rememberBottomAxis(
            valueFormatter = { value, _ ->
                val index = value.toInt()
                if (index in dateLabels.indices) dateLabels[index] else ""
            },
            itemPlacer = AxisItemPlacer.Horizontal.default(
                spacing = maxOf(1, chartData.size / 6)
            )
        ),
        modifier = modifier,
        chartScrollState = rememberChartScrollState()
    )
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun SinglePointChart(point: Pair<LocalDate, Float>) {
    val formatter = DateTimeFormatter.ofPattern("d MMM yyyy", Locale.forLanguageTag("es"))
    Column(
        modifier = Modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Text(
            text = point.second.toInt().toString(),
            style = MaterialTheme.typography.displayMedium,
            fontWeight = FontWeight.Bold,
            color = MaterialTheme.colorScheme.primary
        )
        Text(
            text = "/ 10  ·  ${point.first.format(formatter)}",
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(
            text = "Solo hay una entrada registrada en este periodo.",
            style = MaterialTheme.typography.labelSmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center,
            modifier = Modifier.padding(horizontal = 24.dp)
        )
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun MetricsGrid(uiState: EstadisticasPsicologoUiState) {
    val stats = uiState.estadisticas
    val hasData = uiState.chartData.isNotEmpty()
    val colorScheme = MaterialTheme.colorScheme
    val locale = androidx.compose.ui.platform.LocalConfiguration.current.locales[0]

    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            MetricCard(
                title = "Promedio periodo",
                value = if (hasData) String.format(locale, "%.1f / 10", stats.promedioPeriodo) else "— / 10",
                subtitle = if (hasData) getEmotionalLevel(stats.promedioPeriodo) else "Sin datos",
                icon = Icons.AutoMirrored.Filled.ShowChart,
                modifier = Modifier.weight(1f)
            )
            MetricCard(
                title = "Mejor sesión",
                value = if (hasData) String.format(locale, "%d / 10", stats.mejorSesion?.intensidad ?: 0) else "— / 10",
                subtitle = stats.mejorSesion?.fecha.toLocalDateSafe()?.format(DateTimeFormatter.ofPattern("d MMM yyyy")) ?: "N/A",
                icon = Icons.AutoMirrored.Filled.TrendingUp,
                color = Color(0xFF4CAF50),
                modifier = Modifier.weight(1f)
            )
        }
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            MetricCard(
                title = "Peor sesión",
                value = if (hasData) String.format(locale, "%d / 10", stats.peorSesion?.intensidad ?: 0) else "— / 10",
                subtitle = stats.peorSesion?.fecha.toLocalDateSafe()?.format(DateTimeFormatter.ofPattern("d MMM yyyy")) ?: "N/A",
                icon = Icons.AutoMirrored.Filled.TrendingDown,
                color = colorScheme.error,
                modifier = Modifier.weight(1f)
            )
            MetricCard(
                title = "Total sesiones",
                value = if (hasData) stats.totalSesiones.toString() else "0",
                subtitle = uiState.periodoSeleccionado,
                icon = Icons.Default.CalendarToday,
                modifier = Modifier.weight(1f)
            )
        }
        MetricCard(
            title = "Tendencia general",
            value = when {
                !hasData -> "N/A"
                stats.tendenciaPuntos > 1.0 -> "Mejorando"
                stats.tendenciaPuntos < -1.0 -> "Bajando"
                else -> "Estable"
            },
            subtitle = if (hasData) String.format(locale, "%+.1f puntos", stats.tendenciaPuntos) else "Sin tendencia",
            icon = Icons.Default.Timeline,
            color = when {
                !hasData -> colorScheme.onSurfaceVariant
                stats.tendenciaPuntos > 1.0 -> Color(0xFF4CAF50)
                stats.tendenciaPuntos < -1.0 -> colorScheme.error
                else -> colorScheme.onSurfaceVariant
            },
            modifier = Modifier.fillMaxWidth()
        )
    }
}

@Composable
fun MetricCard(
    title: String,
    value: String,
    subtitle: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    color: Color = MaterialTheme.colorScheme.primary,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier,
        shape = MaterialTheme.shapes.medium,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(
                    icon,
                    contentDescription = null,
                    tint = color,
                    modifier = Modifier.size(18.dp)
                )
                Spacer(modifier = Modifier.width(6.dp))
                Text(
                    title,
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                value,
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold,
                color = color
            )
            Text(
                subtitle,
                style = MaterialTheme.typography.labelSmall,
                color = if (color != MaterialTheme.colorScheme.primary) color
                else Color(0xFF4CAF50)
            )
        }
    }
}

@Composable
fun ObservationCard(observacion: String) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.medium,
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.tertiaryContainer.copy(alpha = 0.2f)
        ),
        elevation = CardDefaults.cardElevation(defaultElevation = 0.dp)
    ) {
        Row(
            modifier = Modifier.padding(16.dp),
            verticalAlignment = Alignment.Top
        ) {
            Icon(
                Icons.Default.Psychology,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.primary,
                modifier = Modifier.size(24.dp)
            )
            Spacer(modifier = Modifier.width(12.dp))
            Column {
                Text(
                    "Observación",
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.Bold,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    observacion,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface,
                    lineHeight = 18.sp,
                    modifier = Modifier.testTag("observation_text")
                )
            }
        }
    }
}

private fun getEmotionalLevel(promedio: Double): String {
    return when {
        promedio >= 8 -> "Muy positivo"
        promedio >= 6 -> "Positivo"
        promedio >= 4 -> "Neutro"
        promedio >= 2 -> "Negativo"
        else -> "Muy negativo"
    }
}
