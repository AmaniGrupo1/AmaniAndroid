package org.ies.tierno.applicationamani.presentation.ui.screen.psicologo

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.animation.*
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
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
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.utils.enviarCitaAlCalendario
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDate
import java.time.YearMonth
import java.time.format.DateTimeFormatter
import java.util.*

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PsicologoAgendaScreen(
    navController: NavController,
    viewModel: PsicologoAgendaViewModel = koinViewModel()
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    val agendaMensual by viewModel.agendaMensual.collectAsStateWithLifecycle()
    val errorMessage by viewModel.errorMessage.collectAsStateWithLifecycle()
    val isLoading by viewModel.isLoading.collectAsStateWithLifecycle()

    var fechaSeleccionada by remember { mutableStateOf<LocalDate?>(null) }
    var mesVisible by remember { mutableStateOf(YearMonth.now()) }
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    var mostrarDialogoHorario by remember { mutableStateOf(false) }
    var mostrarDialogoNoDisponible by remember { mutableStateOf(false) }

    val citasPorDia: Map<LocalDate, List<AgendaItemDTO>> = remember(agendaMensual) {
        agendaMensual.groupBy { it.fecha }
    }

    val fechasConCitas = citasPorDia.keys
    val diasNoDisponibles = emptySet<LocalDate>()

    val citasDelDia = fechaSeleccionada?.let { citasPorDia[it] } ?: emptyList()
    val esDiaNoDisponible = fechaSeleccionada in diasNoDisponibles

    LaunchedEffect(mesVisible) {
        viewModel.cargarAgendaMensual(mesVisible)
    }

    LaunchedEffect(errorMessage) {
        errorMessage?.let {
            scope.launch {
                snackbarHostState.showSnackbar(it)
                viewModel.clearError()
            }
        }
    }

    Scaffold(
        snackbarHost = { SnackbarHost(snackbarHostState) },
        containerColor = colors.background
    ) { innerPadding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(horizontal = 20.dp, vertical = 16.dp)
            ) {
                // Header con gradiente
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(bottom = 16.dp)
                ) {
                    Column {
                        Text(
                            text = "Mi Agenda",
                            style = typography.displaySmall,
                            fontWeight = FontWeight.Bold,
                            color = colors.primary
                        )
                        Text(
                            text = "Gestiona tus horarios y citas profesionales",
                            style = typography.bodyLarge,
                            color = colors.onSurfaceVariant
                        )
                    }
                }

                // Botones de acción rápida mejorados
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    BotonAccionRapida(
                        icono = Icons.Default.Schedule,
                        texto = "Horario",
                        subtitulo = "Configurar",
                        modifier = Modifier.weight(1f),
                        onClick = { mostrarDialogoHorario = true }
                    )

                    BotonAccionRapida(
                        icono = Icons.Default.EventBusy,
                        texto = "Disponibilidad",
                        subtitulo = if (fechaSeleccionada != null) "Marcar día" else "Selecciona un día",
                        modifier = Modifier.weight(1f),
                        onClick = {
                            if (fechaSeleccionada != null) {
                                mostrarDialogoNoDisponible = true
                            } else {
                                scope.launch {
                                    snackbarHostState.showSnackbar("Selecciona primero un día en el calendario")
                                }
                            }
                        }
                    )
                }

                Spacer(modifier = Modifier.height(24.dp))

                LeyendaPsicologa()

                Spacer(modifier = Modifier.height(16.dp))

                // Calendario con diseño mejorado
                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .shadow(4.dp, RoundedCornerShape(20.dp)),
                    shape = RoundedCornerShape(20.dp),
                    colors = CardDefaults.cardColors(containerColor = colors.surface)
                ) {
                    CalendarioView(
                        modifier = Modifier.fillMaxWidth(),
                        mesVisible = mesVisible,
                        fechaSeleccionada = fechaSeleccionada,
                        fechasConCitas = fechasConCitas,
                        onMesChange = { mesVisible = it },
                        onFechaSeleccionada = { fecha ->
                            fechaSeleccionada = if (fechaSeleccionada == fecha) null else fecha
                        }
                    )
                }

                Spacer(modifier = Modifier.height(24.dp))

                // Detalle del día seleccionado
                AnimatedVisibility(
                    visible = fechaSeleccionada != null,
                    enter = fadeIn() + slideInVertically(),
                    exit = fadeOut() + slideOutVertically()
                ) {
                    fechaSeleccionada?.let { fecha ->
                        Card(
                            modifier = Modifier
                                .fillMaxWidth()
                                .shadow(4.dp, RoundedCornerShape(20.dp)),
                            shape = RoundedCornerShape(20.dp),
                            colors = CardDefaults.cardColors(containerColor = colors.surface)
                        ) {
                            Column(modifier = Modifier.padding(20.dp)) {
                                CabeceraDiaPsicologa(fecha, esDiaNoDisponible)

                                Spacer(modifier = Modifier.height(16.dp))

                                when {
                                    esDiaNoDisponible -> {
                                        DiaNoDisponibleCard()
                                    }
                                    citasDelDia.isNotEmpty() -> {
                                        Row(
                                            modifier = Modifier.fillMaxWidth(),
                                            horizontalArrangement = Arrangement.SpaceBetween,
                                            verticalAlignment = Alignment.CenterVertically
                                        ) {
                                            Text(
                                                text = "Citas programadas",
                                                style = typography.titleLarge,
                                                fontWeight = FontWeight.Bold
                                            )
                                            Badge(
                                                modifier = Modifier.clip(RoundedCornerShape(12.dp)),
                                                containerColor = colors.primary
                                            ) {
                                                Text(
                                                    text = "${citasDelDia.size}",
                                                    color = colors.onPrimary,
                                                    modifier = Modifier.padding(horizontal = 8.dp, vertical = 2.dp)
                                                )
                                            }
                                        }
                                        Spacer(modifier = Modifier.height(12.dp))

                                        citasDelDia.forEachIndexed { index, cita ->
                                            TarjetaCitaPsicologa(cita = cita)
                                            if (index < citasDelDia.size - 1) {
                                                Spacer(modifier = Modifier.height(12.dp))
                                            }
                                        }
                                    }
                                    else -> {
                                        Card(
                                            modifier = Modifier.fillMaxWidth(),
                                            shape = RoundedCornerShape(16.dp),
                                            colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.5f))
                                        ) {
                                            Column(
                                                modifier = Modifier
                                                    .fillMaxWidth()
                                                    .padding(32.dp),
                                                horizontalAlignment = Alignment.CenterHorizontally
                                            ) {
                                                Icon(
                                                    Icons.Default.EventNote,
                                                    contentDescription = null,
                                                    modifier = Modifier.size(48.dp),
                                                    tint = colors.onSurfaceVariant.copy(alpha = 0.6f)
                                                )
                                                Spacer(modifier = Modifier.height(12.dp))
                                                Text(
                                                    text = "No hay citas programadas",
                                                    style = typography.bodyLarge,
                                                    color = colors.onSurfaceVariant
                                                )
                                                Text(
                                                    text = "Este día está disponible para nuevas citas",
                                                    style = typography.bodySmall,
                                                    color = colors.onSurfaceVariant.copy(alpha = 0.7f)
                                                )
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                Spacer(modifier = Modifier.height(80.dp))
            }

            if (isLoading) {
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(Color.Black.copy(alpha = 0.3f))
                        .clickable(enabled = false) { },
                    contentAlignment = Alignment.Center
                ) {
                    Card(
                        shape = RoundedCornerShape(16.dp),
                        colors = CardDefaults.cardColors(containerColor = colors.surface)
                    ) {
                        Column(
                            modifier = Modifier.padding(32.dp),
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            CircularProgressIndicator(color = colors.primary)
                            Spacer(modifier = Modifier.height(16.dp))
                            Text("Cargando agenda...", style = typography.bodyMedium)
                        }
                    }
                }
            }
        }
    }

    if (mostrarDialogoHorario) {
        DialogoModificarHorario(
            onConfirmar = { franjas ->
                scope.launch {
                    viewModel.actualizarHorario(franjas)
                    mostrarDialogoHorario = false
                }
            },
            onDismiss = { mostrarDialogoHorario = false }
        )
    }

    if (mostrarDialogoNoDisponible && fechaSeleccionada != null) {
        val fecha = fechaSeleccionada!!
        val yaNoDisponible = fecha in diasNoDisponibles

        DialogoNoDisponible(
            fecha = fecha,
            yaNoDisponible = yaNoDisponible,
            onConfirmar = {
                scope.launch {
                    viewModel.alternarDiaNoDisponible(fecha, yaNoDisponible)
                    mostrarDialogoNoDisponible = false
                    val msg = if (!yaNoDisponible) "Día $fecha marcado como no disponible"
                    else "Día $fecha vuelve a estar disponible"
                    snackbarHostState.showSnackbar(msg)
                }
            },
            onDismiss = { mostrarDialogoNoDisponible = false }
        )
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CalendarioView(
    modifier: Modifier = Modifier,
    mesVisible: YearMonth,
    fechaSeleccionada: LocalDate?,
    fechasConCitas: Set<LocalDate>,
    onMesChange: (YearMonth) -> Unit,
    onFechaSeleccionada: (LocalDate) -> Unit
) {
    val colors = MaterialTheme.colorScheme

    Column(modifier = modifier) {
        // Header del calendario
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            IconButton(
                onClick = { onMesChange(mesVisible.minusMonths(1)) },
                modifier = Modifier
                    .clip(CircleShape)
                    .background(colors.surfaceVariant.copy(alpha = 0.5f))
            ) {
                Icon(Icons.Default.ChevronLeft, contentDescription = "Mes anterior")
            }

            Text(
                text = mesVisible.format(
                    DateTimeFormatter.ofPattern("MMMM yyyy", Locale("es", "ES"))
                ).replaceFirstChar { it.uppercase() },
                style = MaterialTheme.typography.headlineSmall,
                fontWeight = FontWeight.Bold,
                color = colors.primary
            )

            IconButton(
                onClick = { onMesChange(mesVisible.plusMonths(1)) },
                modifier = Modifier
                    .clip(CircleShape)
                    .background(colors.surfaceVariant.copy(alpha = 0.5f))
            ) {
                Icon(Icons.Default.ChevronRight, contentDescription = "Mes siguiente")
            }
        }

        // Días de la semana
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 8.dp, vertical = 8.dp),
            horizontalArrangement = Arrangement.SpaceEvenly
        ) {
            listOf("LUN", "MAR", "MIÉ", "JUE", "VIE", "SÁB", "DOM").forEach { dia ->
                Text(
                    text = dia,
                    style = MaterialTheme.typography.labelMedium,
                    modifier = Modifier.weight(1f),
                    textAlign = TextAlign.Center,
                    fontWeight = FontWeight.Bold,
                    color = colors.primary.copy(alpha = 0.7f)
                )
            }
        }

        // Grid de días
        val firstDay = mesVisible.atDay(1)
        val offset = (firstDay.dayOfWeek.value - 1) % 7
        val daysInMonth = mesVisible.lengthOfMonth()

        LazyVerticalGrid(
            columns = GridCells.Fixed(7),
            modifier = Modifier
                .fillMaxWidth()
                .heightIn(min = 320.dp)
                .padding(horizontal = 8.dp, vertical = 4.dp),
            horizontalArrangement = Arrangement.spacedBy(4.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            items(offset) {
                Box(modifier = Modifier.size(44.dp))
            }

            items(daysInMonth) { day ->
                val fecha = mesVisible.atDay(day + 1)
                val isSelected = fecha == fechaSeleccionada
                val tieneCitas = fecha in fechasConCitas

                DiaCalendario(
                    dia = day + 1,
                    isSelected = isSelected,
                    tieneCitas = tieneCitas,
                    onClick = { onFechaSeleccionada(fecha) }
                )
            }
        }
    }
}

@Composable
fun DiaCalendario(
    dia: Int,
    isSelected: Boolean,
    tieneCitas: Boolean,
    onClick: () -> Unit
) {
    val colors = MaterialTheme.colorScheme

    val backgroundColor = when {
        isSelected -> colors.primary
        tieneCitas -> colors.primaryContainer
        else -> colors.surfaceVariant
    }

    val textColor = when {
        isSelected -> colors.onPrimary
        tieneCitas -> colors.onPrimaryContainer
        else -> colors.onSurface
    }

    Card(
        modifier = Modifier
            .size(44.dp)
            .shadow(
                elevation = if (isSelected) 4.dp else 0.dp,
                shape = CircleShape
            ),
        onClick = onClick,
        colors = CardDefaults.cardColors(containerColor = backgroundColor),
        shape = CircleShape
    ) {
        Box(
            modifier = Modifier.fillMaxSize(),
            contentAlignment = Alignment.Center
        ) {
            Text(
                text = dia.toString(),
                style = MaterialTheme.typography.bodyLarge,
                color = textColor,
                fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Medium
            )

            if (tieneCitas && !isSelected) {
                Box(
                    modifier = Modifier
                        .align(Alignment.BottomCenter)
                        .size(4.dp)
                        .clip(CircleShape)
                        .background(colors.primary)
                        .padding(bottom = 4.dp)
                )
            }
        }
    }
}

@Composable
fun BotonAccionRapida(
    icono: ImageVector,
    texto: String,
    subtitulo: String,
    modifier: Modifier = Modifier,
    onClick: () -> Unit
) {
    val colors = MaterialTheme.colorScheme

    Card(
        modifier = modifier
            .shadow(2.dp, RoundedCornerShape(16.dp)),
        shape = RoundedCornerShape(16.dp),
        onClick = onClick,
        colors = CardDefaults.cardColors(containerColor = colors.primaryContainer)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Box(
                modifier = Modifier
                    .size(48.dp)
                    .clip(CircleShape)
                    .background(colors.primary.copy(alpha = 0.15f)),
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    icono,
                    contentDescription = texto,
                    modifier = Modifier.size(24.dp),
                    tint = colors.primary
                )
            }

            Column {
                Text(
                    text = texto,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = colors.onPrimaryContainer
                )
                Text(
                    text = subtitulo,
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.onPrimaryContainer.copy(alpha = 0.7f)
                )
            }
        }
    }
}

@Composable
fun LeyendaPsicologa() {
    val colors = MaterialTheme.colorScheme

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.5f))
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            horizontalArrangement = Arrangement.SpaceEvenly
        ) {
            LeyendaItem(colors.primary, "Con citas")
            LeyendaItem(colors.primaryContainer, "Disponible")
            LeyendaItem(colors.errorContainer, "No disponible")
        }
    }
}

@Composable
fun LeyendaItem(color: Color, texto: String) {
    Row(verticalAlignment = Alignment.CenterVertically) {
        Box(
            modifier = Modifier
                .size(10.dp)
                .clip(CircleShape)
                .background(color)
        )
        Spacer(modifier = Modifier.width(6.dp))
        Text(
            texto,
            style = MaterialTheme.typography.labelSmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

@Composable
fun CabeceraDiaPsicologa(fecha: LocalDate, esDiaNoDisponible: Boolean) {
    val colors = MaterialTheme.colorScheme
    val formatter = DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM", Locale("es", "ES"))

    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column {
            Text(
                text = fecha.format(formatter)
                    .replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale("es", "ES")) else it.toString() },
                style = MaterialTheme.typography.headlineSmall,
                fontWeight = FontWeight.Bold,
                color = colors.onSurface
            )
            Text(
                text = if (esDiaNoDisponible) "No disponible para citas" else "Horario disponible",
                style = MaterialTheme.typography.bodySmall,
                color = if (esDiaNoDisponible) colors.error else colors.primary
            )
        }

        if (esDiaNoDisponible) {
            Badge(
                modifier = Modifier.clip(RoundedCornerShape(8.dp)),
                containerColor = colors.errorContainer
            ) {
                Text(
                    "No disponible",
                    color = colors.onErrorContainer,
                    modifier = Modifier.padding(horizontal = 12.dp, vertical = 4.dp)
                )
            }
        }
    }
}

@Composable
fun DiaNoDisponibleCard() {
    val colors = MaterialTheme.colorScheme

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = colors.errorContainer)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(20.dp),
            horizontalArrangement = Arrangement.Center,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                Icons.Default.EventBusy,
                contentDescription = "No disponible",
                modifier = Modifier.size(32.dp),
                tint = colors.error
            )
            Spacer(modifier = Modifier.width(12.dp))
            Column {
                Text(
                    "Día no disponible",
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = colors.onErrorContainer
                )
                Text(
                    "No se pueden agendar citas en esta fecha",
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.onErrorContainer.copy(alpha = 0.8f)
                )
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun TarjetaCitaPsicologa(cita: AgendaItemDTO) {
    val context = LocalContext.current
    val colors = MaterialTheme.colorScheme
    val formatterTime = DateTimeFormatter.ofPattern("HH:mm")

    val estadoColor = when (cita.estado.lowercase()) {
        "pendiente" -> colors.error
        "confirmada" -> colors.primary
        "completada" -> colors.tertiary
        else -> colors.onSurfaceVariant
    }

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .shadow(2.dp, RoundedCornerShape(16.dp)),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Row(
                modifier = Modifier.weight(1f),
                horizontalArrangement = Arrangement.spacedBy(12.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                // Indicador de hora
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Text(
                        text = cita.horaInicio.format(formatterTime),
                        style = MaterialTheme.typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                        color = colors.primary
                    )
                    Text(
                        text = cita.horaFin.format(formatterTime),
                        style = MaterialTheme.typography.labelSmall,
                        color = colors.onSurfaceVariant
                    )
                }

                // Línea vertical decorativa
                Box(
                    modifier = Modifier
                        .width(2.dp)
                        .height(40.dp)
                        .background(colors.onSurfaceVariant.copy(alpha = 0.2f))
                )

                // Información de la cita
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        cita.nombrePaciente,
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold
                    )
                    Text(
                        cita.motivo ?: "Sin motivo especificado",
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.onSurfaceVariant
                    )
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.padding(top = 4.dp)
                    ) {
                        Box(
                            modifier = Modifier
                                .size(6.dp)
                                .clip(CircleShape)
                                .background(estadoColor)
                        )
                        Spacer(modifier = Modifier.width(6.dp))
                        Text(
                            cita.estado.replaceFirstChar { it.uppercase() },
                            style = MaterialTheme.typography.labelSmall,
                            color = estadoColor
                        )
                    }
                }
            }

            // Botón calendario
            IconButton(
                onClick = {
                    enviarCitaAlCalendario(
                        context = context,
                        titulo = "Cita con ${cita.nombrePaciente}",
                        descripcion = cita.motivo ?: "Cita psicológica",
                        fecha = cita.fecha,
                        hora = cita.horaInicio,
                        duracionMinutos = cita.duracionMinutos
                    )
                },
                modifier = Modifier
                    .clip(CircleShape)
                    .background(colors.primary.copy(alpha = 0.1f))
            ) {
                Icon(
                    Icons.Default.CalendarMonth,
                    contentDescription = "Añadir a calendario",
                    tint = colors.primary
                )
            }
        }
    }
}

@Composable
fun DialogoModificarHorario(
    onConfirmar: (List<FranjaHorarioDTO>) -> Unit,
    onDismiss: () -> Unit
) {
    val colors = MaterialTheme.colorScheme
    val diasSemana = listOf("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo")
    val horariosInicio = remember { mutableStateListOf(*Array(7) { 9 }) }
    val horariosFin = remember { mutableStateListOf(*Array(7) { 17 }) }
    val activo = remember { mutableStateListOf(*Array(7) { true }) }

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colors.surface,
        title = {
            Column {
                Text(
                    "Configurar horario",
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold
                )
                Text(
                    "Define tu disponibilidad semanal",
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.onSurfaceVariant
                )
            }
        },
        text = {
            Column(
                modifier = Modifier
                    .heightIn(max = 450.dp)
                    .verticalScroll(rememberScrollState())
            ) {
                diasSemana.forEachIndexed { index, dia ->
                    Card(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(vertical = 4.dp),
                        shape = RoundedCornerShape(12.dp),
                        colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.5f))
                    ) {
                        Column(modifier = Modifier.padding(12.dp)) {
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                Checkbox(
                                    checked = activo[index],
                                    onCheckedChange = { activo[index] = it },
                                    colors = CheckboxDefaults.colors(checkedColor = colors.primary)
                                )
                                Text(
                                    dia,
                                    fontWeight = FontWeight.Bold,
                                    style = MaterialTheme.typography.titleSmall,
                                    modifier = Modifier.weight(1f)
                                )
                                if (activo[index]) {
                                    Text(
                                        "${horariosInicio[index]}:00 - ${horariosFin[index]}:00",
                                        style = MaterialTheme.typography.labelSmall,
                                        color = colors.primary
                                    )
                                }
                            }

                            if (activo[index]) {
                                Spacer(modifier = Modifier.height(12.dp))
                                Row(
                                    modifier = Modifier.fillMaxWidth(),
                                    horizontalArrangement = Arrangement.spacedBy(16.dp)
                                ) {
                                    Column(modifier = Modifier.weight(1f)) {
                                        Text("Hora inicio", style = MaterialTheme.typography.labelSmall)
                                        Slider(
                                            value = horariosInicio[index].toFloat(),
                                            onValueChange = { horariosInicio[index] = it.toInt() },
                                            valueRange = 0f..23f,
                                            steps = 23,
                                            colors = SliderDefaults.colors(thumbColor = colors.primary)
                                        )
                                        Text(
                                            "${horariosInicio[index]}:00",
                                            style = MaterialTheme.typography.bodyMedium,
                                            fontWeight = FontWeight.Bold
                                        )
                                    }
                                    Column(modifier = Modifier.weight(1f)) {
                                        Text("Hora fin", style = MaterialTheme.typography.labelSmall)
                                        Slider(
                                            value = horariosFin[index].toFloat(),
                                            onValueChange = { horariosFin[index] = it.toInt() },
                                            valueRange = (horariosInicio[index] + 1).toFloat()..24f,
                                            steps = 23 - horariosInicio[index],
                                            colors = SliderDefaults.colors(thumbColor = colors.primary)
                                        )
                                        Text(
                                            "${horariosFin[index]}:00",
                                            style = MaterialTheme.typography.bodyMedium,
                                            fontWeight = FontWeight.Bold
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        },
        confirmButton = {
            Button(
                onClick = {
                    val franjas = diasSemana.indices.flatMap { i ->
                        if (activo[i]) {
                            listOf(
                                FranjaHorarioDTO(
                                    diaSemana = (i + 1).toShort(),
                                    horaInicio = "${horariosInicio[i].toString().padStart(2, '0')}:00",
                                    horaFin = "${horariosFin[i].toString().padStart(2, '0')}:00",
                                    activo = true,
                                    motivo = null
                                )
                            )
                        } else emptyList()
                    }
                    onConfirmar(franjas)
                },
                shape = RoundedCornerShape(12.dp)
            ) {
                Text("Guardar horario")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("Cancelar")
            }
        }
    )
}

@Composable
fun DialogoNoDisponible(
    fecha: LocalDate,
    yaNoDisponible: Boolean,
    onConfirmar: () -> Unit,
    onDismiss: () -> Unit
) {
    val colors = MaterialTheme.colorScheme
    val formatter = DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM", Locale("es", "ES"))
    val fechaFormateada = fecha.format(formatter)
        .replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale("es", "ES")) else it.toString() }

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colors.surface,
        title = {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(
                    if (yaNoDisponible) Icons.Default.CheckCircle else Icons.Default.Warning,
                    contentDescription = null,
                    tint = if (yaNoDisponible) colors.primary else colors.error
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    if (yaNoDisponible) "Habilitar día" else "Marcar como no disponible",
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold
                )
            }
        },
        text = {
            Column {
                Text(
                    fechaFormateada,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = colors.primary
                )
                Spacer(modifier = Modifier.height(12.dp))
                Text(
                    if (yaNoDisponible) {
                        "¿Deseas habilitar este día para recibir citas?"
                    } else {
                        "Al marcar este día como no disponible, los pacientes no podrán agendar citas en esta fecha."
                    },
                    style = MaterialTheme.typography.bodyMedium
                )
            }
        },
        confirmButton = {
            Button(
                onClick = onConfirmar,
                colors = ButtonDefaults.buttonColors(
                    containerColor = if (yaNoDisponible) colors.primary else colors.error
                ),
                shape = RoundedCornerShape(12.dp)
            ) {
                Text(if (yaNoDisponible) "Habilitar día" else "Marcar como no disponible")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("Cancelar")
            }
        }
    )
}