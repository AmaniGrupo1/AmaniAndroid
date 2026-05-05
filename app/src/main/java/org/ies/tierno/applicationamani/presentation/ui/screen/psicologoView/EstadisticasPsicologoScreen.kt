package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ShowChart
import androidx.compose.material.icons.automirrored.filled.TrendingDown
import androidx.compose.material.icons.automirrored.filled.TrendingUp
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.patrykandpatrick.vico.compose.cartesian.CartesianChartHost
import com.patrykandpatrick.vico.compose.cartesian.axis.HorizontalAxis
import com.patrykandpatrick.vico.compose.cartesian.axis.VerticalAxis
import com.patrykandpatrick.vico.compose.cartesian.data.CartesianChartModelProducer
import com.patrykandpatrick.vico.compose.cartesian.data.CartesianValueFormatter
import com.patrykandpatrick.vico.compose.cartesian.data.lineSeries
import com.patrykandpatrick.vico.compose.cartesian.layer.LineCartesianLayer
import com.patrykandpatrick.vico.compose.cartesian.layer.rememberLine
import com.patrykandpatrick.vico.compose.cartesian.layer.rememberLineCartesianLayer
import com.patrykandpatrick.vico.compose.cartesian.rememberCartesianChart
import com.patrykandpatrick.vico.compose.cartesian.rememberVicoScrollState
import com.patrykandpatrick.vico.compose.common.Fill
import androidx.compose.ui.platform.testTag
import org.ies.tierno.applicationamani.domain.models.diario.DiarioEmocionResponseDTO
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.AmaniPsicologoColors
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.EstadisticasPsicologoUiState
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.EstadisticasPsicologoViewModel
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

    Scaffold(
        topBar = {
            CenterAlignedTopAppBar(
                title = {
                    Text(
                        "Estadísticas de Bienestar",
                        fontWeight = FontWeight.Bold,
                        color = Color.White
                    )
                },
                colors = TopAppBarDefaults.centerAlignedTopAppBarColors(
                    containerColor = AmaniPsicologoColors.Primary
                )
            )
        },
        containerColor = AmaniPsicologoColors.Background
    ) { padding ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .testTag("stats_list"), // FIX: Added testTag for scrolling in tests
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
                ChartCard(entradas = uiState.entradas)
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
        colors = CardDefaults.cardColors(containerColor = Color.White),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        shape = RoundedCornerShape(16.dp)
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
                        .testTag("dropdown_paciente"), // FIX: Added testTag
                    shape = RoundedCornerShape(12.dp)
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
                            .testTag("dropdown_periodo"), // FIX: Added testTag
                        shape = RoundedCornerShape(12.dp)
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
                        shape = RoundedCornerShape(12.dp)
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
fun ChartCard(entradas: List<DiarioEmocionResponseDTO>) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .height(300.dp),
        colors = CardDefaults.cardColors(containerColor = Color.White),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        shape = RoundedCornerShape(16.dp)
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Text(
                "Evolución emocional",
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.SemiBold,
                color = AmaniPsicologoColors.TextSecondary
            )
            Spacer(modifier = Modifier.height(8.dp))
            if (entradas.isEmpty()) {
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .testTag("chart_empty_state"), // FIX: Added testTag
                    contentAlignment = Alignment.Center
                ) {
                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                        Icon(
                            Icons.AutoMirrored.Filled.ShowChart,
                            contentDescription = null,
                            tint = AmaniPsicologoColors.TextSecondary.copy(alpha = 0.4f),
                            modifier = Modifier.size(48.dp)
                        )
                        Spacer(modifier = Modifier.height(8.dp))
                        Text(
                            "Sin datos disponibles",
                            color = AmaniPsicologoColors.TextSecondary.copy(alpha = 0.6f),
                            fontSize = 14.sp
                        )
                    }
                }
            } else {
                EmotionalEvolutionChart(
                    entradas = entradas,
                    modifier = Modifier.fillMaxSize()
                )
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun EmotionalEvolutionChart(
    entradas: List<DiarioEmocionResponseDTO>,
    modifier: Modifier = Modifier
) {
    val modelProducer = remember { CartesianChartModelProducer() }
    val primaryColor = AmaniPsicologoColors.Primary

    val dateLabels = remember(entradas) {
        val formatter = DateTimeFormatter.ofPattern("d MMM", Locale.forLanguageTag("es"))
        entradas.map {
            try {
                // FIX: Added safer date parsing to prevent substring crash
                val dateString = if (it.fecha.length >= 10) it.fecha.substring(0, 10) else it.fecha
                val date = LocalDate.parse(dateString)
                date.format(formatter)
            } catch (e: Exception) {
                it.fecha.take(5)
            }
        }
    }

    LaunchedEffect(entradas) {
        modelProducer.runTransaction {
            lineSeries {
                series(
                    entradas.mapIndexed { index, _ -> index },
                    entradas.map { it.intensidad }
                )
            }
        }
    }

    CartesianChartHost(
        chart = rememberCartesianChart(
            rememberLineCartesianLayer(
                lineProvider = LineCartesianLayer.LineProvider.series(
                    LineCartesianLayer.rememberLine(
                        fill = LineCartesianLayer.LineFill.single(Fill(primaryColor)),
                        areaFill = LineCartesianLayer.AreaFill.single(
                            Fill(
                                Brush.verticalGradient(
                                    listOf(
                                        primaryColor.copy(alpha = 0.25f),
                                        Color.Transparent
                                    )
                                )
                            )
                        ),
                    )
                ),
            ),
            startAxis = VerticalAxis.rememberStart(
                valueFormatter = CartesianValueFormatter.decimal(),
            ),
            bottomAxis = HorizontalAxis.rememberBottom(
                valueFormatter = CartesianValueFormatter { _, x, _ ->
                    val index = x.toInt()
                    if (index in dateLabels.indices) dateLabels[index] else ""
                },
            ),
        ),
        modelProducer = modelProducer,
        modifier = modifier,
        scrollState = rememberVicoScrollState(scrollEnabled = entradas.size > 7),
    )
}

@Composable
fun MetricsGrid(uiState: EstadisticasPsicologoUiState) {
    val stats = uiState.estadisticas
    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            MetricCard(
                title = "Promedio periodo",
                value = String.format(Locale.getDefault(), "%.1f / 10", stats.promedioPeriodo),
                subtitle = getEmotionalLevel(stats.promedioPeriodo),
                icon = Icons.AutoMirrored.Filled.ShowChart,
                modifier = Modifier.weight(1f)
            )
            MetricCard(
                title = "Mejor sesión",
                value = String.format(
                    Locale.getDefault(), "%d / 10", stats.mejorSesion?.intensidad ?: 0
                ),
                // FIX: Added safe substring
                subtitle = stats.mejorSesion?.fecha?.let { 
                    if (it.length >= 10) it.substring(0, 10) else it 
                } ?: "N/A",
                icon = Icons.AutoMirrored.Filled.TrendingUp,
                color = AmaniPsicologoColors.Success,
                modifier = Modifier.weight(1f)
            )
        }
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            MetricCard(
                title = "Peor sesión",
                value = String.format(
                    Locale.getDefault(), "%d / 10", stats.peorSesion?.intensidad ?: 0
                ),
                // FIX: Added safe substring
                subtitle = stats.peorSesion?.fecha?.let { 
                    if (it.length >= 10) it.substring(0, 10) else it 
                } ?: "N/A",
                icon = Icons.AutoMirrored.Filled.TrendingDown,
                color = AmaniPsicologoColors.Error,
                modifier = Modifier.weight(1f)
            )
            MetricCard(
                title = "Total sesiones",
                value = stats.totalSesiones.toString(),
                subtitle = uiState.periodoSeleccionado,
                icon = Icons.Default.CalendarToday,
                modifier = Modifier.weight(1f)
            )
        }
        MetricCard(
            title = "Tendencia general",
            value = if (stats.tendenciaPuntos > 0) "Mejorando"
            else if (stats.tendenciaPuntos < 0) "Bajando"
            else "Estable",
            subtitle = String.format(
                Locale.getDefault(), "%+.1f puntos", stats.tendenciaPuntos
            ),
            icon = Icons.Default.Timeline,
            color = when {
                stats.tendenciaPuntos > 0 -> AmaniPsicologoColors.Success
                stats.tendenciaPuntos < 0 -> AmaniPsicologoColors.Error
                else -> AmaniPsicologoColors.TextSecondary
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
    color: Color = AmaniPsicologoColors.Primary,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier,
        colors = CardDefaults.cardColors(containerColor = Color.White),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        shape = RoundedCornerShape(16.dp)
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
                    fontSize = 12.sp,
                    color = AmaniPsicologoColors.TextSecondary
                )
            }
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                value,
                fontSize = 22.sp,
                fontWeight = FontWeight.Bold,
                color = color
            )
            Text(
                subtitle,
                fontSize = 11.sp,
                color = if (color != AmaniPsicologoColors.Primary) color
                else AmaniPsicologoColors.Success
            )
        }
    }
}

@Composable
fun ObservationCard(observacion: String) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(containerColor = Color(0xFFF3E5F5)),
        shape = RoundedCornerShape(16.dp)
    ) {
        Row(
            modifier = Modifier.padding(16.dp),
            verticalAlignment = Alignment.Top
        ) {
            Icon(
                Icons.Default.Psychology,
                contentDescription = null,
                tint = AmaniPsicologoColors.Primary,
                modifier = Modifier.size(24.dp)
            )
            Spacer(modifier = Modifier.width(12.dp))
            Column {
                Text(
                    "Observación",
                    fontWeight = FontWeight.Bold,
                    color = AmaniPsicologoColors.Primary
                )
                Text(
                    observacion,
                    fontSize = 13.sp,
                    color = AmaniPsicologoColors.TextPrimary,
                    lineHeight = 18.sp,
                    modifier = Modifier.testTag("observation_text") // FIX: Added testTag
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
