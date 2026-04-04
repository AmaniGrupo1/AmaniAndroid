package org.ies.tierno.applicationamani.presentation.ui.screen.psicologo

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.animation.*
import androidx.compose.foundation.background
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
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.utils.enviarCitaAlCalendario
import org.koin.androidx.compose.koinViewModel
import org.koin.core.parameter.parametersOf
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth
import java.time.format.DateTimeFormatter
import java.util.*

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PsicologoAgendaScreen(
    navController: NavController,
    citasRepository: CitasRepository,
    userSessionDataStore: UserSessionDataStore,
    viewModel: PsicologoAgendaViewModel = koinViewModel(
        parameters = { parametersOf(citasRepository, userSessionDataStore) }
    )
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

    // agendaMensual es List<AgendaItemDTO> - cada elemento es UNA CITA
    // Agrupar citas por fecha
    val citasPorDia: Map<LocalDate, List<AgendaItemDTO>> = remember(agendaMensual) {
        agendaMensual.groupBy { it.fecha }
    }

    val fechasConCitas = citasPorDia.keys

    // NOTA: No existe "diasNoDisponibles" en tu modelo
    // Si necesitas esta funcionalidad, el backend debería proveerla
    val diasNoDisponibles = emptySet<LocalDate>() // Temporalmente vacío

    val citasDelDia = fechaSeleccionada?.let { citasPorDia[it] } ?: emptyList()
    val esDiaNoDisponible = fechaSeleccionada in diasNoDisponibles

    // Cargar agenda al cambiar el mes
    LaunchedEffect(mesVisible) {
        viewModel.cargarAgendaMensual(mesVisible)
    }

    // Mostrar errores
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
                    .verticalScroll(rememberScrollState())
                    .padding(horizontal = 16.dp, vertical = 12.dp)
            ) {
                Text(
                    text = "Mi agenda",
                    style = typography.headlineMedium,
                    fontWeight = FontWeight.Bold,
                    color = colors.onBackground,
                    modifier = Modifier.padding(bottom = 4.dp)
                )

                Text(
                    text = "Gestiona tu horario y revisa tus citas",
                    style = typography.bodyMedium,
                    color = colors.onSurfaceVariant,
                    modifier = Modifier.padding(bottom = 16.dp)
                )

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    BotonAccionRapida(
                        icono = Icons.Default.Schedule,
                        texto = "Modificar\nhorario",
                        modifier = Modifier.weight(1f),
                        onClick = { mostrarDialogoHorario = true }
                    )

                    BotonAccionRapida(
                        icono = Icons.Default.EventBusy,
                        texto = "Día no\ndisponible",
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

                Spacer(modifier = Modifier.height(16.dp))

                LeyendaPsicologa()

                Spacer(modifier = Modifier.height(8.dp))

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

                Spacer(modifier = Modifier.height(16.dp))

                AnimatedVisibility(
                    visible = fechaSeleccionada != null,
                    enter = fadeIn() + expandVertically(),
                    exit = fadeOut() + shrinkVertically()
                ) {
                    fechaSeleccionada?.let { fecha ->
                        Column {
                            CabeceraDiaPsicologa(fecha, esDiaNoDisponible)
                            Spacer(modifier = Modifier.height(12.dp))

                            when {
                                esDiaNoDisponible -> {
                                    DiaNoDisponibleCard()
                                }
                                citasDelDia.isNotEmpty() -> {
                                    Text(
                                        text = "Citas del día (${citasDelDia.size})",
                                        style = typography.titleSmall,
                                        fontWeight = FontWeight.SemiBold,
                                        color = colors.onBackground,
                                        modifier = Modifier.padding(bottom = 8.dp)
                                    )

                                    citasDelDia.forEach { cita ->
                                        TarjetaCitaPsicologa(
                                            cita = cita
                                        )
                                        Spacer(modifier = Modifier.height(8.dp))
                                    }
                                }
                                else -> {
                                    Card(
                                        modifier = Modifier.fillMaxWidth(),
                                        shape = RoundedCornerShape(12.dp),
                                        colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant)
                                    ) {
                                        Text(
                                            text = "No hay citas programadas para este día",
                                            style = typography.bodyMedium,
                                            color = colors.onSurfaceVariant,
                                            modifier = Modifier.padding(20.dp),
                                            textAlign = TextAlign.Center
                                        )
                                    }
                                }
                            }
                        }
                    }
                }

                Spacer(modifier = Modifier.height(24.dp))
            }

            if (isLoading) {
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(MaterialTheme.colorScheme.surface.copy(alpha = 0.7f)),
                    contentAlignment = Alignment.Center
                ) {
                    CircularProgressIndicator()
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
                    snackbarHostState.showSnackbar("Horario actualizado correctamente")
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
    Card(
        modifier = modifier,
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant)
    ) {
        Column {
            Row(
                modifier = Modifier.fillMaxWidth().padding(12.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                IconButton(onClick = { onMesChange(mesVisible.minusMonths(1)) }) {
                    Icon(Icons.Default.ChevronLeft, contentDescription = "Mes anterior")
                }
                Text(
                    text = mesVisible.format(DateTimeFormatter.ofPattern("MMMM yyyy", Locale("es", "ES"))),
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold
                )
                IconButton(onClick = { onMesChange(mesVisible.plusMonths(1)) }) {
                    Icon(Icons.Default.ChevronRight, contentDescription = "Mes siguiente")
                }
            }

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                listOf("L", "M", "X", "J", "V", "S", "D").forEach { dia ->
                    Text(
                        text = dia,
                        style = MaterialTheme.typography.labelSmall,
                        modifier = Modifier.weight(1f),
                        textAlign = TextAlign.Center,
                        fontWeight = FontWeight.Bold
                    )
                }
            }

            val firstDay = mesVisible.atDay(1)
            val offset = (firstDay.dayOfWeek.value - 1) % 7
            val daysInMonth = mesVisible.lengthOfMonth()

            LazyVerticalGrid(
                columns = GridCells.Fixed(7),
                modifier = Modifier.fillMaxWidth().heightIn(min = 300.dp).padding(8.dp),
                horizontalArrangement = Arrangement.spacedBy(4.dp),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                items(offset) { Box(modifier = Modifier.size(40.dp)) }

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
        isSelected -> colors.primary.copy(alpha = 0.2f)
        tieneCitas -> colors.primaryContainer.copy(alpha = 0.5f)
        else -> colors.surface
    }

    Card(
        modifier = Modifier.size(40.dp).clip(CircleShape),
        onClick = onClick,
        colors = CardDefaults.cardColors(containerColor = backgroundColor),
        shape = CircleShape
    ) {
        Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
            Text(
                text = dia.toString(),
                style = MaterialTheme.typography.bodyMedium,
                color = colors.onSurface,
                fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal
            )
        }
    }
}

@Composable
fun BotonAccionRapida(icono: ImageVector, texto: String, modifier: Modifier = Modifier, onClick: () -> Unit) {
    Card(
        modifier = modifier,
        shape = RoundedCornerShape(12.dp),
        onClick = onClick,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.primaryContainer)
    ) {
        Column(modifier = Modifier.fillMaxWidth().padding(12.dp), horizontalAlignment = Alignment.CenterHorizontally) {
            Icon(icono, contentDescription = texto, tint = MaterialTheme.colorScheme.primary)
            Spacer(modifier = Modifier.height(4.dp))
            Text(texto, style = MaterialTheme.typography.labelSmall, textAlign = TextAlign.Center)
        }
    }
}

@Composable
fun LeyendaPsicologa() {
    Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceEvenly) {
        LeyendaItem(MaterialTheme.colorScheme.primary, "Día con citas")
        LeyendaItem(MaterialTheme.colorScheme.tertiary, "Día libre")
    }
}

@Composable
fun LeyendaItem(color: androidx.compose.ui.graphics.Color, texto: String) {
    Row(verticalAlignment = Alignment.CenterVertically) {
        Box(modifier = Modifier.size(12.dp).clip(CircleShape).background(color))
        Spacer(modifier = Modifier.width(4.dp))
        Text(texto, style = MaterialTheme.typography.labelSmall)
    }
}

@Composable
fun CabeceraDiaPsicologa(fecha: LocalDate, esDiaNoDisponible: Boolean) {
    val formatter = DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM", Locale("es", "ES"))
    Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween, verticalAlignment = Alignment.CenterVertically) {
        Text(
            text = fecha.format(formatter).replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale("es", "ES")) else it.toString() },
            style = MaterialTheme.typography.titleMedium,
            fontWeight = FontWeight.Bold
        )
        if (esDiaNoDisponible) Badge(containerColor = MaterialTheme.colorScheme.error) { Text("No disponible") }
    }
}

@Composable
fun DiaNoDisponibleCard() {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.errorContainer)
    ) {
        Row(modifier = Modifier.fillMaxWidth().padding(16.dp), horizontalArrangement = Arrangement.Center, verticalAlignment = Alignment.CenterVertically) {
            Icon(Icons.Default.EventBusy, contentDescription = "No disponible", tint = MaterialTheme.colorScheme.error)
            Spacer(modifier = Modifier.width(8.dp))
            Text("Día marcado como no disponible", style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onErrorContainer)
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun TarjetaCitaPsicologa(cita: AgendaItemDTO) {
    val context = LocalContext.current
    val formatterTime = DateTimeFormatter.ofPattern("HH:mm")

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant)
    ) {
        Row(modifier = Modifier.fillMaxWidth().padding(12.dp), horizontalArrangement = Arrangement.SpaceBetween, verticalAlignment = Alignment.CenterVertically) {
            Column {
                Text(
                    text = "${cita.horaInicio.format(formatterTime)} - ${cita.horaFin.format(formatterTime)}",
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.Bold
                )
                Text(cita.nombrePaciente, style = MaterialTheme.typography.bodyMedium)
                Text(cita.motivo ?: "Sin motivo", style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                Text(cita.estado, style = MaterialTheme.typography.labelSmall, color = if (cita.estado == "pendiente") MaterialTheme.colorScheme.error else MaterialTheme.colorScheme.primary)
            }
            IconButton(onClick = {
                enviarCitaAlCalendario(
                    context = context,
                    titulo = "Cita con ${cita.nombrePaciente}",
                    descripcion = cita.motivo ?: "Cita psicológica",
                    fecha = cita.fecha,
                    hora = cita.horaInicio,
                    duracionMinutos = cita.duracionMinutos
                )
            }) {
                Icon(Icons.Default.CalendarMonth, contentDescription = "Añadir a calendario")
            }
        }
    }
}

@Composable
fun DialogoModificarHorario(
    onConfirmar: (List<FranjaHorarioDTO>) -> Unit,
    onDismiss: () -> Unit
) {
    val diasSemana = listOf("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo")
    val horariosInicio = remember { mutableStateListOf(*Array(7) { 9 }) }
    val horariosFin = remember { mutableStateListOf(*Array(7) { 17 }) }
    val activo = remember { mutableStateListOf(*Array(7) { true }) }

    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text("Configurar horario semanal") },
        text = {
            Column(modifier = Modifier.heightIn(max = 400.dp).verticalScroll(rememberScrollState())) {
                diasSemana.forEachIndexed { index, dia ->
                    Card(modifier = Modifier.fillMaxWidth().padding(vertical = 4.dp), shape = RoundedCornerShape(8.dp)) {
                        Column(modifier = Modifier.padding(8.dp)) {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                Checkbox(checked = activo[index], onCheckedChange = { activo[index] = it })
                                Text(dia, fontWeight = FontWeight.Bold, modifier = Modifier.weight(1f))
                            }
                            if (activo[index]) {
                                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                                    Column {
                                        Text("Inicio", style = MaterialTheme.typography.labelSmall)
                                        Slider(
                                            value = horariosInicio[index].toFloat(),
                                            onValueChange = { horariosInicio[index] = it.toInt() },
                                            valueRange = 0f..23f,
                                            steps = 23
                                        )
                                        Text("${horariosInicio[index]}:00", style = MaterialTheme.typography.bodySmall)
                                    }
                                    Column {
                                        Text("Fin", style = MaterialTheme.typography.labelSmall)
                                        Slider(
                                            value = horariosFin[index].toFloat(),
                                            onValueChange = { horariosFin[index] = it.toInt() },
                                            valueRange = (horariosInicio[index] + 1).toFloat()..24f,
                                            steps = 23 - horariosInicio[index]
                                        )
                                        Text("${horariosFin[index]}:00", style = MaterialTheme.typography.bodySmall)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        },
        confirmButton = {
            TextButton(onClick = {
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
            }) {
                Text("Guardar")
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
fun DialogoNoDisponible(fecha: LocalDate, yaNoDisponible: Boolean, onConfirmar: () -> Unit, onDismiss: () -> Unit) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(if (yaNoDisponible) "Habilitar día" else "Marcar como no disponible") },
        text = {
            Text(
                if (yaNoDisponible) "¿Deseas habilitar el día ${fecha.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))} para recibir citas?"
                else "¿Deseas marcar el día ${fecha.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))} como no disponible? Los pacientes no podrán agendar citas en este día."
            )
        },
        confirmButton = { TextButton(onClick = onConfirmar) { Text(if (yaNoDisponible) "Habilitar" else "Marcar") } },
        dismissButton = { TextButton(onClick = onDismiss) { Text("Cancelar") } }
    )
}