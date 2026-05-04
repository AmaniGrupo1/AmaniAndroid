package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
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
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
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
                .padding(padding),
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
                    entradas = uiState.entradas
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
        colors = CardDefaults.cardColors(containerColor = Color.White),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        shape = RoundedCornerShape(16.dp)
    ) {
        Column(modifier = Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
            // Selector de Paciente
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
                    trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedPaciente) },
                    modifier = Modifier
                        .menuAnchor()
                        .fillMaxWidth(),
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

            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                // Selector de Periodo
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
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedPeriodo) },
                        modifier = Modifier.menuAnchor(),
                        shape = RoundedCornerShape(12.dp)
                    )
                    ExposedDropdownMenu(
                        expanded = expandedPeriodo,
                        onDismissRequest = { expandedPeriodo = false }
                    ) {
                        listOf("Último mes", "Últimos 3 meses", "Últimos 6 meses", "Último año").forEach { p ->
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

                // Selector de Vista
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
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedVista) },
                        modifier = Modifier.menuAnchor(),
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
            .height(350.dp),
        colors = CardDefaults.cardColors(containerColor = Color.White),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        shape = RoundedCornerShape(16.dp)
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Text(
                "Nivel emocional",
                style = MaterialTheme.typography.titleSmall,
                color = AmaniPsicologoColors.TextSecondary
            )
            Spacer(modifier = Modifier.height(16.dp))
            EmotionalEvolutionChart(
                entradas = entradas,
                modifier = Modifier.fillMaxSize()
            )
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun EmotionalEvolutionChart(
    entradas: List<DiarioEmocionResponseDTO>,
    modifier: Modifier = Modifier
) {
    val labels = listOf("Muy positivo", "Positivo", "Neutro", "Negativo", "Muy negativo")
    val zoneColors = listOf(
        Color(0xFFE8F5E9), // Green
        Color(0xFFF1F8E9), // Light Green
        Color(0xFFFFFDE7), // Yellow
        Color(0xFFFFF3E0), // Orange
        Color(0xFFFFEBEE)  // Red
    )

    Canvas(modifier = modifier) {
        val width = size.width
        val height = size.height
        val paddingLeft = 100f
        val paddingBottom = 60f
        val chartWidth = width - paddingLeft
        val chartHeight = height - paddingBottom

        // Draw background zones
        val zoneHeight = chartHeight / 5
        zoneColors.forEachIndexed { index, color ->
            drawRect(
                color = color,
                topLeft = Offset(paddingLeft, index * zoneHeight),
                size = androidx.compose.ui.geometry.Size(chartWidth, zoneHeight)
            )
            // Separator lines
            if (index > 0) {
                drawLine(
                    color = Color.Black.copy(alpha = 0.05f),
                    start = Offset(paddingLeft, index * zoneHeight),
                    end = Offset(width, index * zoneHeight),
                    strokeWidth = 1f
                )
            }
        }

        // Draw Y-axis labels
        labels.forEachIndexed { index, label ->
            drawContext.canvas.nativeCanvas.drawText(
                label,
                10f,
                index * zoneHeight + (zoneHeight / 2) + 10f,
                android.graphics.Paint().apply {
                    color = android.graphics.Color.GRAY
                    textSize = 24f
                }
            )
        }

        if (entradas.isNotEmpty()) {
            val xStep = chartWidth / (entradas.size.coerceAtLeast(2) - 1).coerceAtLeast(1)
            val path = Path()

            entradas.forEachIndexed { index, entry ->
                // Intensity is 1-10. Map it to Y (0 to chartHeight)
                // 10 (Muy positivo) -> Y=0
                // 1 (Muy negativo) -> Y=chartHeight
                val y = chartHeight - ((entry.intensidad - 1) / 9f * chartHeight)
                val x = paddingLeft + (index * xStep)

                if (index == 0) {
                    path.moveTo(x, y)
                } else {
                    path.lineTo(x, y)
                }

                // Draw point
                drawCircle(
                    color = AmaniPsicologoColors.Primary,
                    radius = 8f,
                    center = Offset(x, y)
                )

                // Draw point value
                drawContext.canvas.nativeCanvas.drawText(
                    entry.intensidad.toString(),
                    x - 10f,
                    y - 20f,
                    android.graphics.Paint().apply {
                        color = android.graphics.Color.BLACK
                        textSize = 28f
                        typeface = android.graphics.Typeface.DEFAULT_BOLD
                    }
                )

                // Draw X-axis labels (Dates)
                if (index % (entradas.size / 5 + 1) == 0 || index == entradas.size - 1) {
                    val dateLabel = try {
                        val date = LocalDate.parse(entry.fecha.substring(0, 10))
                        date.format(DateTimeFormatter.ofPattern("d MMM", Locale("es")))
                    } catch (e: Exception) {
                        entry.fecha.take(5)
                    }
                    drawContext.canvas.nativeCanvas.drawText(
                        dateLabel,
                        x - 30f,
                        height - 10f,
                        android.graphics.Paint().apply {
                            color = android.graphics.Color.GRAY
                            textSize = 24f
                        }
                    )
                }
            }

            drawPath(
                path = path,
                color = AmaniPsicologoColors.Primary,
                style = Stroke(width = 4f)
            )
        }
    }
}

@Composable
fun MetricsGrid(uiState: EstadisticasPsicologoUiState) {
    val stats = uiState.estadisticas
    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(12.dp)) {
            MetricCard(
                title = "Promedio periodo",
                value = String.format(Locale.getDefault(), "%.1f / 10", stats.promedioPeriodo),
                subtitle = getEmotionalLevel(stats.promedioPeriodo),
                icon = Icons.AutoMirrored.Filled.ShowChart,
                modifier = Modifier.weight(1f)
            )
            MetricCard(
                title = "Mejor sesión",
                value = String.format(Locale.getDefault(), "%d / 10", stats.mejorSesion?.intensidad ?: 0),
                subtitle = stats.mejorSesion?.fecha?.substring(0, 10) ?: "N/A",
                icon = Icons.AutoMirrored.Filled.TrendingUp,
                color = AmaniPsicologoColors.Success,
                modifier = Modifier.weight(1f)
            )
        }
        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(12.dp)) {
            MetricCard(
                title = "Peor sesión",
                value = String.format(Locale.getDefault(), "%d / 10", stats.peorSesion?.intensidad ?: 0),
                subtitle = stats.peorSesion?.fecha?.substring(0, 10) ?: "N/A",
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
            value = if (stats.tendenciaPuntos > 0) "Mejorando" else if (stats.tendenciaPuntos < 0) "Bajando" else "Estable",
            subtitle = String.format(Locale.getDefault(), "%+ .1f puntos", stats.tendenciaPuntos),
            icon = Icons.Default.Timeline,
            color = if (stats.tendenciaPuntos > 0) AmaniPsicologoColors.Success else if (stats.tendenciaPuntos < 0) AmaniPsicologoColors.Error else AmaniPsicologoColors.TextSecondary,
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
                Icon(icon, contentDescription = null, tint = color, modifier = Modifier.size(16.dp))
                Spacer(modifier = Modifier.width(8.dp))
                Text(title, fontSize = 12.sp, color = AmaniPsicologoColors.TextSecondary)
            }
            Spacer(modifier = Modifier.height(8.dp))
            Text(value, fontSize = 20.sp, fontWeight = FontWeight.Bold, color = color)
            Text(subtitle, fontSize = 11.sp, color = if (color != AmaniPsicologoColors.Primary) color else AmaniPsicologoColors.Success)
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
        Row(modifier = Modifier.padding(16.dp), verticalAlignment = Alignment.Top) {
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
                    lineHeight = 18.sp
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
