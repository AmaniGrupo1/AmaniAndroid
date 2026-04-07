package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.animation.*
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.foundation.layout.IntrinsicSize
import androidx.compose.ui.unit.dp
import org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomBarConfig
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.utils.enviarCitaAlCalendario
import org.koin.androidx.compose.koinViewModel
import org.koin.core.parameter.parametersOf
import java.time.LocalDate
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

    val citasPorDia: Map<LocalDate, List<AgendaItemDTO>> = remember(agendaMensual) {
        agendaMensual.groupBy { it.fecha }
    }

    val fechasConCitas = citasPorDia.keys
    val diasNoDisponibles = emptySet<LocalDate>() // Temporal

    val citasDelDia = fechaSeleccionada?.let { citasPorDia[it] } ?: emptyList()
    val esDiaNoDisponible = fechaSeleccionada in diasNoDisponibles

    val userSession by viewModel.userSession.collectAsStateWithLifecycle()

    LaunchedEffect(mesVisible, userSession) {
        if (userSession?.idPsicologo != null) {
            viewModel.cargarAgendaMensual(mesVisible)
        }
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
        containerColor = colors.background,
        bottomBar = { AmaniBottomBar(navController, BottomBarConfig.Psicologo) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = { /* Lógica para crear nueva cita o evento */ },
                containerColor = colors.primary,
                contentColor = colors.onPrimary
            ) {
                Icon(Icons.Default.Add, contentDescription = "Añadir Cita")
            }
        }
    ) { innerPadding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
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
                
                // Botones de acción rápida y leyenda se mantienen
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
                    diasNoDisponibles = diasNoDisponibles,
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

                            if (esDiaNoDisponible) {
                                DiaNoDisponibleCard()
                            } else if (citasDelDia.isNotEmpty()) {
                                citasDelDia.forEach { cita ->
                                    TarjetaCitaPsicologa(
                                        cita = cita,
                                        onEdit = { /* TODO: Lógica para editar */ },
                                        onCancel = { /* TODO: Lógica para cancelar */ }
                                    )
                                    Spacer(modifier = Modifier.height(8.dp))
                                }
                            } else {
                                SinCitasCard()
                            }
                        }
                    }
                }
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
    
    // Diálogos se mantienen
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
    diasNoDisponibles: Set<LocalDate> = emptySet(),
    onMesChange: (YearMonth) -> Unit,
    onFechaSeleccionada: (LocalDate) -> Unit
) {
    val hoy = LocalDate.now()

    Card(
        modifier = modifier,
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
        )
    ) {
        Column {
            // ── Cabecera de navegación de mes ──
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 4.dp, vertical = 8.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                IconButton(onClick = { onMesChange(mesVisible.minusMonths(1)) }) {
                    Icon(Icons.Default.ChevronLeft, contentDescription = "Mes anterior")
                }
                Text(
                    text = mesVisible.format(
                        DateTimeFormatter.ofPattern("MMMM yyyy", Locale.forLanguageTag("es-ES"))
                    ).replaceFirstChar { it.uppercase() },
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold
                )
                IconButton(onClick = { onMesChange(mesVisible.plusMonths(1)) }) {
                    Icon(Icons.Default.ChevronRight, contentDescription = "Mes siguiente")
                }
            }

            // ── Encabezados de días de la semana ──
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 8.dp),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                listOf("L", "M", "X", "J", "V", "S", "D").forEach { dia ->
                    Text(
                        text = dia,
                        style = MaterialTheme.typography.labelSmall,
                        modifier = Modifier.weight(1f),
                        textAlign = TextAlign.Center,
                        fontWeight = FontWeight.Bold,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }

            Spacer(modifier = Modifier.height(4.dp))

            // ── Cuadrícula del calendario (Column+Row, sin LazyVerticalGrid) ──
            val primerDia = mesVisible.atDay(1)
            val offset = (primerDia.dayOfWeek.value - 1)
            val diasEnMes = mesVisible.lengthOfMonth()

            val celdas: List<LocalDate?> = buildList {
                repeat(offset) { add(null) }
                for (dia in 1..diasEnMes) add(mesVisible.atDay(dia))
            }
            val filas = celdas.chunked(7)

            Column(modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)) {
                filas.forEach { fila ->
                    Row(modifier = Modifier.fillMaxWidth()) {
                        val filaPadded = fila + List(7 - fila.size) { null }
                        filaPadded.forEach { fecha ->
                            if (fecha == null) {
                                Box(
                                    modifier = Modifier
                                        .weight(1f)
                                        .aspectRatio(1f)
                                )
                            } else {
                                DiaCalendario(
                                    fecha = fecha,
                                    isSelected = fecha == fechaSeleccionada,
                                    tieneCitas = fecha in fechasConCitas,
                                    isToday = fecha == hoy,
                                    esNoDisponible = fecha in diasNoDisponibles,
                                    modifier = Modifier.weight(1f),
                                    onClick = { onFechaSeleccionada(fecha) }
                                )
                            }
                        }
                    }
                }
            }

            Spacer(modifier = Modifier.height(8.dp))
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun DiaCalendario(
    fecha: LocalDate,
    isSelected: Boolean,
    tieneCitas: Boolean,
    isToday: Boolean,
    modifier: Modifier = Modifier,
    esNoDisponible: Boolean = false,
    onClick: () -> Unit
) {
    val colors = MaterialTheme.colorScheme

    val backgroundColor = when {
        isSelected -> colors.primary
        isToday    -> colors.primaryContainer
        else       -> Color.Transparent
    }
    val textColor = when {
        isSelected         -> colors.onPrimary
        isToday            -> colors.onPrimaryContainer
        esNoDisponible     -> colors.error
        else               -> colors.onSurface
    }

    Box(
        modifier = modifier
            .aspectRatio(1f)
            .padding(2.dp)
            .clip(CircleShape)
            .background(backgroundColor)
            .clickable(onClick = onClick),
        contentAlignment = Alignment.Center
    ) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text(
                text = fecha.dayOfMonth.toString(),
                style = MaterialTheme.typography.bodyMedium,
                color = textColor,
                fontWeight = when {
                    isSelected || isToday -> FontWeight.Bold
                    else                 -> FontWeight.Normal
                }
            )
            // Indicadores de estado (citas y/o no disponible)
            Row(
                horizontalArrangement = Arrangement.spacedBy(2.dp),
                modifier = Modifier.height(7.dp)
            ) {
                if (tieneCitas) {
                    Box(
                        modifier = Modifier
                            .size(5.dp)
                            .clip(CircleShape)
                            .background(if (isSelected) colors.onPrimary else colors.primary)
                    )
                }
                if (esNoDisponible && !isSelected) {
                    Box(
                        modifier = Modifier
                            .size(5.dp)
                            .clip(CircleShape)
                            .background(colors.error)
                    )
                }
                if (!tieneCitas && !esNoDisponible) {
                    // Espacio reservado para mantener altura uniforme
                    Spacer(modifier = Modifier.size(5.dp))
                }
            }
        }
    }
}


@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun TarjetaCitaPsicologa(
    cita: AgendaItemDTO,
    onEdit: () -> Unit,
    onCancel: () -> Unit
) {
    val context = LocalContext.current
    val colors = MaterialTheme.colorScheme
    val amani = LocalAmaniColors.current
    val typography = MaterialTheme.typography
    val formatterTime = DateTimeFormatter.ofPattern("HH:mm")

    // Color semántico según el estado de la cita
    val estadoColor = when (cita.estado?.lowercase()?.trim()) {
        "confirmada", "confirmado", "aceptada", "aceptado" -> amani.citaConfirmada
        "cancelada", "cancelado"                           -> amani.citaCancelada
        else                                               -> amani.citaPendiente
    }

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        colors = CardDefaults.cardColors(containerColor = colors.surface)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .height(IntrinsicSize.Min)
        ) {
            // Barra lateral de estado (color semántico)
            Box(
                modifier = Modifier
                    .width(5.dp)
                    .fillMaxHeight()
                    .clip(RoundedCornerShape(topStart = 12.dp, bottomStart = 12.dp))
                    .background(estadoColor)
            )

            // Contenido principal
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 14.dp, vertical = 12.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                // Bloque horario
                Column(
                    modifier = Modifier.width(60.dp),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Text(
                        text = cita.horaInicio.format(formatterTime),
                        style = typography.titleSmall,
                        fontWeight = FontWeight.Bold,
                        color = estadoColor
                    )
                    Text(
                        text = cita.horaFin.format(formatterTime),
                        style = typography.bodySmall,
                        color = colors.onSurfaceVariant
                    )
                }

                Spacer(modifier = Modifier.width(12.dp))

                // Información del paciente
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = cita.nombrePaciente ?: "Bloqueo de agenda",
                        style = typography.bodyLarge,
                        fontWeight = FontWeight.SemiBold,
                        color = colors.onSurface
                    )
                    if (!cita.motivo.isNullOrBlank()) {
                        Text(
                            text = cita.motivo,
                            style = typography.bodySmall,
                            color = colors.onSurfaceVariant,
                            maxLines = 1
                        )
                    }
                    // Badge de estado
                    Surface(
                        shape = RoundedCornerShape(4.dp),
                        color = estadoColor.copy(alpha = 0.12f),
                        modifier = Modifier.padding(top = 4.dp)
                    ) {
                        Text(
                            text = cita.estado.orEmpty().replaceFirstChar { it.uppercase() }.ifEmpty { "Pendiente" },
                            style = typography.labelSmall,
                            color = estadoColor,
                            modifier = Modifier.padding(horizontal = 6.dp, vertical = 2.dp)
                        )
                    }
                }

                // Acciones (editar / cancelar / añadir al calendario)
                Column {
                    IconButton(
                        onClick = onEdit,
                        modifier = Modifier.size(36.dp)
                    ) {
                        Icon(
                            Icons.Default.Edit,
                            contentDescription = "Editar",
                            tint = colors.primary,
                            modifier = Modifier.size(18.dp)
                        )
                    }
                    IconButton(
                        onClick = onCancel,
                        modifier = Modifier.size(36.dp)
                    ) {
                        Icon(
                            Icons.Default.Delete,
                            contentDescription = "Cancelar",
                            tint = colors.error,
                            modifier = Modifier.size(18.dp)
                        )
                    }
                    IconButton(
                        onClick = {
                            enviarCitaAlCalendario(
                                context = context,
                                titulo = "Cita con ${cita.nombrePaciente ?: "paciente"}",
                                descripcion = cita.motivo ?: "Cita psicológica",
                                fecha = cita.fecha,
                                hora = cita.horaInicio,
                                duracionMinutos = cita.duracionMinutos ?: 60
                            )
                        },
                        modifier = Modifier.size(36.dp)
                    ) {
                        Icon(
                            Icons.Default.CalendarMonth,
                            contentDescription = "Añadir a calendario",
                            tint = colors.onSurfaceVariant,
                            modifier = Modifier.size(18.dp)
                        )
                    }
                }
            }
        }
    }
}

@Composable
fun SinCitasCard() {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(1.dp))
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(vertical = 32.dp, horizontal = 16.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Icon(
                imageVector = Icons.Default.EventAvailable,
                contentDescription = "Día libre",
                modifier = Modifier.size(48.dp),
                tint = MaterialTheme.colorScheme.primary
            )
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = "No hay citas programadas",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = "Puedes usar el botón '+' para añadir un nuevo bloqueo o disponibilidad.",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center
            )
        }
    }
}

// --- Componentes originales que se mantienen ---

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
    Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.Center, verticalAlignment = Alignment.CenterVertically) {
        LeyendaItem(MaterialTheme.colorScheme.primary, "Día con citas")
    }
}

@Composable
fun LeyendaItem(color: Color, texto: String) {
    Row(verticalAlignment = Alignment.CenterVertically) {
        Box(modifier = Modifier.size(10.dp).clip(CircleShape).background(color))
        Spacer(modifier = Modifier.width(6.dp))
        Text(texto, style = MaterialTheme.typography.labelSmall)
    }
}

@Composable
fun CabeceraDiaPsicologa(fecha: LocalDate, esDiaNoDisponible: Boolean) {
    val formatter = DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM", Locale.forLanguageTag("es-ES"))
    Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween, verticalAlignment = Alignment.CenterVertically) {
        Text(
            text = fecha.format(formatter).replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale.forLanguageTag("es-ES")) else it.toString() },
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

@Composable
fun DialogoModificarHorario(
    onConfirmar: (List<FranjaHorarioDTO>) -> Unit,
    onDismiss: () -> Unit
) {
    val diasSemana = listOf("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo")
    val horariosInicio = remember { mutableStateListOf(*Array(7) { 9 }) }
    val horariosFin = remember { mutableStateListOf(*Array(7) { 17 }) }
    val activo = remember { mutableStateListOf(*Array(7) { it < 5 }) } // L-V activos por defecto

    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text("Configurar horario semanal") },
        text = {
            Column(
                modifier = Modifier
                    .heightIn(max = 440.dp)
                    .verticalScroll(rememberScrollState())
            ) {
                Text(
                    text = "Activa los días y ajusta los horarios de inicio y fin.",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.padding(bottom = 8.dp)
                )
                diasSemana.forEachIndexed { index, dia ->
                    Card(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(vertical = 4.dp),
                        shape = RoundedCornerShape(10.dp),
                        colors = CardDefaults.cardColors(
                            containerColor = if (activo[index])
                                MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.4f)
                            else
                                MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
                        )
                    ) {
                        Column(modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp)) {
                            // Fila del día con checkbox
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                Checkbox(
                                    checked = activo[index],
                                    onCheckedChange = { activo[index] = it }
                                )
                                Text(
                                    text = dia,
                                    fontWeight = FontWeight.SemiBold,
                                    style = MaterialTheme.typography.bodyMedium,
                                    modifier = Modifier.weight(1f)
                                )
                                if (activo[index]) {
                                    Text(
                                        text = "${horariosInicio[index].toString().padStart(2, '0')}:00 – ${horariosFin[index].toString().padStart(2, '0')}:00",
                                        style = MaterialTheme.typography.labelMedium,
                                        color = MaterialTheme.colorScheme.primary,
                                        fontWeight = FontWeight.Bold
                                    )
                                }
                            }
                            // Sliders de horario (apilados verticalmente = más anchos y usables)
                            if (activo[index]) {
                                Row(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .padding(start = 8.dp),
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Text(
                                        text = "Inicio",
                                        style = MaterialTheme.typography.labelSmall,
                                        modifier = Modifier.width(44.dp),
                                        color = MaterialTheme.colorScheme.onSurfaceVariant
                                    )
                                    Slider(
                                        value = horariosInicio[index].toFloat(),
                                        onValueChange = { v ->
                                            horariosInicio[index] = v.toInt()
                                            if (horariosFin[index] <= horariosInicio[index]) {
                                                horariosFin[index] = horariosInicio[index] + 1
                                            }
                                        },
                                        valueRange = 0f..23f,
                                        steps = 22,
                                        modifier = Modifier.weight(1f)
                                    )
                                }
                                Row(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .padding(start = 8.dp),
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Text(
                                        text = "Fin",
                                        style = MaterialTheme.typography.labelSmall,
                                        modifier = Modifier.width(44.dp),
                                        color = MaterialTheme.colorScheme.onSurfaceVariant
                                    )
                                    Slider(
                                        value = horariosFin[index].toFloat(),
                                        onValueChange = { horariosFin[index] = it.toInt() },
                                        valueRange = (horariosInicio[index] + 1).toFloat()..24f,
                                        steps = (23 - horariosInicio[index]).coerceAtLeast(0),
                                        modifier = Modifier.weight(1f)
                                    )
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
                    if (activo[i]) listOf(
                        FranjaHorarioDTO(
                            diaSemana = i.toShort(),
                            horaInicio = "${horariosInicio[i].toString().padStart(2, '0')}:00",
                            horaFin = "${horariosFin[i].toString().padStart(2, '0')}:00",
                            activo = true,
                            motivo = null
                        )
                    ) else emptyList()
                }
                onConfirmar(franjas)
            }) {
                Text("Guardar")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) { Text("Cancelar") }
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
