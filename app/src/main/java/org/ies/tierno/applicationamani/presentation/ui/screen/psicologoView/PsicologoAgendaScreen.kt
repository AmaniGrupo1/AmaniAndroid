@file:Suppress("DEPRECATION")

package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.animation.*
import androidx.compose.foundation.background
import androidx.compose.foundation.border
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
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
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
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.FranjaDisponibilidadResponse
import org.ies.tierno.applicationamani.dto.citas.TerapiaResponseDTO
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import org.ies.tierno.applicationamani.utils.enviarCitaAlCalendario
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth
import java.time.format.DateTimeFormatter
import java.util.*

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PsicologoAgendaScreen(
    navController: NavController,
    viewModel: PsicologoAgendaViewModel = koinViewModel(),
    listarTerapiasViewModel: ListarTerapiasViewModel = koinViewModel()
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    val agendaMensual by viewModel.agendaMensual.collectAsStateWithLifecycle()
    val errorMessage by viewModel.errorMessage.collectAsStateWithLifecycle()
    val isLoading by viewModel.isLoading.collectAsStateWithLifecycle()
    val successMessage by viewModel.successMessage.collectAsStateWithLifecycle()
    val horarioActual by viewModel.horarioActual.collectAsStateWithLifecycle()

    val terapias by listarTerapiasViewModel.terapias.collectAsStateWithLifecycle()

    var fechaSeleccionada by remember { mutableStateOf<LocalDate?>(null) }
    var mesVisible by remember { mutableStateOf(YearMonth.now()) }
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    var mostrarDialogoHorario by remember { mutableStateOf(false) }
    var mostrarDialogoNoDisponible by remember { mutableStateOf(false) }
    var mostrarDialogoCrearEditar by remember { mutableStateOf(false) }
    var citaParaEditar by remember { mutableStateOf<AgendaItemDTO?>(null) }
    var citaParaCancelar by remember { mutableStateOf<AgendaItemDTO?>(null) }

    val pacientesAsignados by viewModel.pacientesAsignados.collectAsStateWithLifecycle()
    val pacientesError by viewModel.pacientesError.collectAsStateWithLifecycle()
    val disponibilidadDia by viewModel.disponibilidadDia.collectAsStateWithLifecycle()

    val citasPorDia: Map<LocalDate, List<AgendaItemDTO>> = remember(agendaMensual) {
        agendaMensual.groupBy { it.fecha }
    }

    val fechasConCitas = citasPorDia.keys
    val diasNoDisponibles = emptySet<LocalDate>()

    val citasDelDia = fechaSeleccionada?.let { citasPorDia[it] } ?: emptyList()
    val esDiaNoDisponible = fechaSeleccionada in diasNoDisponibles

    val userSession by viewModel.userSession.collectAsStateWithLifecycle()

    // Cargar horario cuando se abre el diálogo
    LaunchedEffect(mostrarDialogoHorario) {
        if (mostrarDialogoHorario) {
            viewModel.cargarHorarioActual()
        }
    }

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

    LaunchedEffect(successMessage) {
        successMessage?.let { message ->
            scope.launch {
                snackbarHostState.showSnackbar(message)
                viewModel.clearSuccess()
            }
        }
    }

    Scaffold(
        snackbarHost = { SnackbarHost(snackbarHostState) },
        containerColor = colors.background,
        bottomBar = { AmaniBottomBar(navController, BottomBarConfig.Psicologo) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    citaParaEditar = null
                    mostrarDialogoCrearEditar = true
                    fechaSeleccionada?.let { viewModel.cargarDisponibilidadDia(it, 60) }
                },
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
                                    esDiaNoDisponible -> DiaNoDisponibleCard()
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
                                            TarjetaCitaPsicologa(
                                                cita = cita,
                                                onEdit = {
                                                    citaParaEditar = cita
                                                    mostrarDialogoCrearEditar = true
                                                    viewModel.cargarDisponibilidadDia(cita.fecha, cita.duracionMinutos ?: 60)
                                                },
                                                onCancel = { citaParaCancelar = cita }
                                            )
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
                                                modifier = Modifier.fillMaxWidth().padding(32.dp),
                                                horizontalAlignment = Alignment.CenterHorizontally
                                            ) {
                                                Icon(
                                                    Icons.Default.EventNote,
                                                    contentDescription = null,
                                                    modifier = Modifier.size(48.dp),
                                                    tint = colors.onSurfaceVariant.copy(alpha = 0.6f)
                                                )
                                                Spacer(modifier = Modifier.height(12.dp))
                                                Text(text = "No hay citas programadas", style = typography.bodyLarge, color = colors.onSurfaceVariant)
                                                Text(text = "Este día está disponible para nuevas citas", style = typography.bodySmall, color = colors.onSurfaceVariant.copy(alpha = 0.7f))
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
                    Card(shape = RoundedCornerShape(16.dp), colors = CardDefaults.cardColors(containerColor = colors.surface)) {
                        Column(modifier = Modifier.padding(32.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                            CircularProgressIndicator(color = colors.primary)
                            Spacer(modifier = Modifier.height(16.dp))
                            Text("Cargando agenda...", style = typography.bodyMedium)
                        }
                    }
                }
            }
        }
    }

    // Diálogo Modificar Horario
    if (mostrarDialogoHorario) {
        DialogoModificarHorario(
            horarioActual = viewModel.horarioActual,
            onConfirmar = { franjas ->
                scope.launch {
                    viewModel.actualizarHorario(franjas)
                    mostrarDialogoHorario = false
                }
            },
            onDismiss = { mostrarDialogoHorario = false }
        )
    }

    // Diálogo No Disponible
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

    // Diálogo Crear/Editar Cita
    if (mostrarDialogoCrearEditar) {
        DialogoCrearEditarCita(
            citaAEditar = citaParaEditar,
            fechaInicial = fechaSeleccionada ?: LocalDate.now(),
            pacientes = pacientesAsignados,
            pacientesError = pacientesError,
            terapias = terapias,
            onRecargarPacientes = { viewModel.reintentarCargarPacientes() },
            slotsLibres = disponibilidadDia?.slotsLibres ?: emptyList(),
            onFechaChange = { viewModel.cargarDisponibilidadDia(it, 60) },
            onConfirmar = { idPaciente, fecha, hora, duracion, motivo, idTerapia ->
                if (citaParaEditar != null) {
                    viewModel.editarCita(
                        idCita = citaParaEditar!!.id,
                        idPaciente = idPaciente,
                        fecha = fecha,
                        hora = hora,
                        duracionMinutos = duracion,
                        motivo = motivo
                    )
                    scope.launch {
                        val paciente = pacientesAsignados.find { it.idPaciente == idPaciente }
                        snackbarHostState.showSnackbar(
                            "Cita editada: ${paciente?.nombre} ${paciente?.apellido} - $fecha a las $hora"
                        )
                    }
                } else {
                    viewModel.crearCita(
                        idPaciente = idPaciente,
                        fecha = fecha,
                        hora = hora,
                        duracionMinutos = duracion,
                        motivo = motivo,
                        idTipoTerapia = idTerapia
                    )
                    scope.launch {
                        val paciente = pacientesAsignados.find { it.idPaciente == idPaciente }
                        snackbarHostState.showSnackbar(
                            "✅ Cita creada: ${paciente?.nombre} ${paciente?.apellido} - ${fecha.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))} a las $hora"
                        )
                    }
                }
                mostrarDialogoCrearEditar = false
                citaParaEditar = null
                viewModel.limpiarDisponibilidad()
            },
            onDismiss = {
                mostrarDialogoCrearEditar = false
                citaParaEditar = null
                viewModel.limpiarDisponibilidad()
            }
        )
    }

    // Diálogo Confirmar Cancelación
    if (citaParaCancelar != null) {
        DialogoConfirmarCancelacion(
            cita = citaParaCancelar!!,
            onConfirmar = {
                viewModel.cancelarCita(citaParaCancelar!!.id, citaParaCancelar!!.fecha)
                scope.launch {
                    snackbarHostState.showSnackbar("Cita cancelada correctamente")
                }
                citaParaCancelar = null
            },
            onDismiss = { citaParaCancelar = null }
        )
    }
}

// ==================== COMPONENTES DEL CALENDARIO ====================

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
    val colors = MaterialTheme.colorScheme

    Card(
        modifier = modifier,
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f))
    ) {
        Column {
            Row(
                modifier = Modifier.fillMaxWidth().padding(horizontal = 4.dp, vertical = 8.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                IconButton(
                    onClick = { onMesChange(mesVisible.minusMonths(1)) },
                    modifier = Modifier.clip(CircleShape).background(colors.surfaceVariant.copy(alpha = 0.5f))
                ) {
                    Icon(Icons.Default.ChevronLeft, contentDescription = "Mes anterior")
                }
                Text(
                    text = mesVisible.format(DateTimeFormatter.ofPattern("MMMM yyyy", Locale("es", "ES"))).replaceFirstChar { it.uppercase() },
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                    color = colors.primary
                )
                IconButton(
                    onClick = { onMesChange(mesVisible.plusMonths(1)) },
                    modifier = Modifier.clip(CircleShape).background(colors.surfaceVariant.copy(alpha = 0.5f))
                ) {
                    Icon(Icons.Default.ChevronRight, contentDescription = "Mes siguiente")
                }
            }

            Row(
                modifier = Modifier.fillMaxWidth().padding(horizontal = 8.dp, vertical = 8.dp),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                listOf("LUN", "MAR", "MIÉ", "JUE", "VIE", "SÁB", "DOM").forEach { dia ->
                    Text(text = dia, style = MaterialTheme.typography.labelMedium, modifier = Modifier.weight(1f), textAlign = TextAlign.Center, fontWeight = FontWeight.Bold, color = colors.primary.copy(alpha = 0.7f))
                }
            }

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
                                Box(modifier = Modifier.weight(1f).aspectRatio(1f))
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
        isToday -> colors.primaryContainer
        else -> Color.Transparent
    }
    val textColor = when {
        isSelected -> colors.onPrimary
        isToday -> colors.onPrimaryContainer
        esNoDisponible -> colors.error
        else -> colors.onSurface
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
                    else -> FontWeight.Normal
                }
            )
            Row(horizontalArrangement = Arrangement.spacedBy(2.dp), modifier = Modifier.height(7.dp)) {
                if (tieneCitas) {
                    Box(modifier = Modifier.size(5.dp).clip(CircleShape).background(if (isSelected) colors.onPrimary else colors.primary))
                }
                if (esNoDisponible && !isSelected) {
                    Box(modifier = Modifier.size(5.dp).clip(CircleShape).background(colors.error))
                }
                if (!tieneCitas && !esNoDisponible) {
                    Spacer(modifier = Modifier.size(5.dp))
                }
            }
        }
    }
}

// ==================== TARJETA DE CITA ====================

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

    val estadoColor = when (cita.estado?.lowercase()?.trim()) {
        "confirmada", "confirmado", "aceptada", "aceptado" -> amani.citaConfirmada
        "cancelada", "cancelado" -> amani.citaCancelada
        else -> amani.citaPendiente
    }

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        colors = CardDefaults.cardColors(containerColor = colors.surface)
    ) {
        Row(modifier = Modifier.fillMaxWidth().height(IntrinsicSize.Min)) {
            Box(
                modifier = Modifier.width(5.dp).fillMaxHeight().clip(RoundedCornerShape(topStart = 12.dp, bottomStart = 12.dp)).background(estadoColor)
            )
            Row(
                modifier = Modifier.fillMaxWidth().padding(horizontal = 14.dp, vertical = 12.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.width(60.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(text = cita.horaInicio.format(formatterTime), style = typography.titleSmall, fontWeight = FontWeight.Bold, color = estadoColor)
                    Text(text = cita.horaFin.format(formatterTime), style = typography.bodySmall, color = colors.onSurfaceVariant)
                }
                Spacer(modifier = Modifier.width(12.dp))
                Column(modifier = Modifier.weight(1f)) {
                    Text(text = cita.nombrePaciente ?: "Bloqueo de agenda", style = typography.bodyLarge, fontWeight = FontWeight.SemiBold, color = colors.onSurface)
                    if (!cita.motivo.isNullOrBlank()) {
                        Text(text = cita.motivo, style = typography.bodySmall, color = colors.onSurfaceVariant, maxLines = 1)
                    }
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
                Column {
                    IconButton(onClick = onEdit, modifier = Modifier.size(36.dp)) {
                        Icon(Icons.Default.Edit, contentDescription = "Editar", tint = colors.primary, modifier = Modifier.size(18.dp))
                    }
                    IconButton(onClick = onCancel, modifier = Modifier.size(36.dp)) {
                        Icon(Icons.Default.Delete, contentDescription = "Cancelar", tint = colors.error, modifier = Modifier.size(18.dp))
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
                        Icon(Icons.Default.CalendarMonth, contentDescription = "Añadir a calendario", tint = colors.onSurfaceVariant, modifier = Modifier.size(18.dp))
                    }
                }
            }
        }
    }
}

// ==================== BOTONES Y LEYENDAS ====================

@Composable
fun BotonAccionRapida(icono: ImageVector, texto: String, subtitulo: String, modifier: Modifier = Modifier, onClick: () -> Unit) {
    val colors = MaterialTheme.colorScheme
    Card(
        modifier = modifier.shadow(2.dp, RoundedCornerShape(16.dp)),
        shape = RoundedCornerShape(16.dp),
        onClick = onClick,
        colors = CardDefaults.cardColors(containerColor = colors.primaryContainer)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth().padding(16.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Box(
                modifier = Modifier.size(48.dp).clip(CircleShape).background(colors.primary.copy(alpha = 0.15f)),
                contentAlignment = Alignment.Center
            ) {
                Icon(icono, contentDescription = texto, modifier = Modifier.size(24.dp), tint = colors.primary)
            }
            Column {
                Text(text = texto, style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold, color = colors.onPrimaryContainer)
                Text(text = subtitulo, style = MaterialTheme.typography.bodySmall, color = colors.onPrimaryContainer.copy(alpha = 0.7f))
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
            modifier = Modifier.fillMaxWidth().padding(12.dp),
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
        Box(modifier = Modifier.size(10.dp).clip(CircleShape).background(color))
        Spacer(modifier = Modifier.width(6.dp))
        Text(text = texto, style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
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
    val colors = MaterialTheme.colorScheme
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = colors.errorContainer)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth().padding(20.dp),
            horizontalArrangement = Arrangement.Center,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(Icons.Default.EventBusy, contentDescription = "No disponible", modifier = Modifier.size(32.dp), tint = colors.error)
            Spacer(modifier = Modifier.width(12.dp))
            Column {
                Text("Día no disponible", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold, color = colors.onErrorContainer)
                Text("No se pueden agendar citas en esta fecha", style = MaterialTheme.typography.bodySmall, color = colors.onErrorContainer.copy(alpha = 0.8f))
            }
        }
    }
}

// ==================== DIÁLOGO MODIFICAR HORARIO ====================

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DialogoModificarHorario(
    horarioActual: StateFlow<HorarioRequestDTO?>,
    onConfirmar: (List<FranjaHorarioDTO>) -> Unit,
    onDismiss: () -> Unit
) {
    val colors = MaterialTheme.colorScheme
    val diasSemana = listOf("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo")

    val horarioGuardado by horarioActual.collectAsState()

    val horariosInicio = remember(horarioGuardado) {
        mutableStateListOf(*Array(7) { dia ->
            horarioGuardado?.franjas?.find { it.diaSemana == dia.toShort() }?.horaInicio?.split(":")?.first()?.toInt() ?: 9
        })
    }

    val horariosFin = remember(horarioGuardado) {
        mutableStateListOf(*Array(7) { dia ->
            horarioGuardado?.franjas?.find { it.diaSemana == dia.toShort() }?.horaFin?.split(":")?.first()?.toInt() ?: 17
        })
    }

    val activo = remember(horarioGuardado) {
        mutableStateListOf(*Array(7) { dia ->
            horarioGuardado?.franjas?.any { it.diaSemana == dia.toShort() && it.activo == true } ?: (dia < 5)
        })
    }

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colors.surface,
        title = {
            Column {
                Text("Configurar horario", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
                Text("Define tu disponibilidad semanal", style = MaterialTheme.typography.bodySmall, color = colors.onSurfaceVariant)
            }
        },
        text = {
            Column(modifier = Modifier.heightIn(max = 550.dp).verticalScroll(rememberScrollState())) {
                Spacer(modifier = Modifier.height(8.dp))

                Text(
                    text = "📅 Horario semanal",
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.padding(vertical = 4.dp)
                )

                diasSemana.forEachIndexed { index, dia ->
                    Card(
                        modifier = Modifier.fillMaxWidth().padding(vertical = 4.dp),
                        shape = RoundedCornerShape(12.dp),
                        colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.5f))
                    ) {
                        Column(modifier = Modifier.padding(12.dp)) {
                            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                                Checkbox(
                                    checked = activo[index],
                                    onCheckedChange = { activo[index] = it },
                                    colors = CheckboxDefaults.colors(checkedColor = colors.primary)
                                )
                                Text(dia, fontWeight = FontWeight.Bold, style = MaterialTheme.typography.titleSmall, modifier = Modifier.weight(1f))
                                if (activo[index]) {
                                    Text(
                                        text = "${horariosInicio[index]}:00 - ${horariosFin[index]}:00",
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
                                        Text("${horariosInicio[index]}:00", style = MaterialTheme.typography.bodyMedium, fontWeight = FontWeight.Bold)
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
                                        Text("${horariosFin[index]}:00", style = MaterialTheme.typography.bodyMedium, fontWeight = FontWeight.Bold)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        },
        confirmButton = {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Button(
                    onClick = {
                        val franjas = diasSemana.indices.flatMap { i ->
                            if (activo[i]) {
                                listOf(
                                    FranjaHorarioDTO(
                                        diaSemana = i.toShort(),
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
                    shape = RoundedCornerShape(12.dp),
                    modifier = Modifier.weight(1f)
                ) {
                    Text("Guardar cambios")
                }
                TextButton(
                    onClick = onDismiss,
                    modifier = Modifier.weight(0.5f)
                ) {
                    Text("Cancelar")
                }
            }
        },
        dismissButton = {}
    )
}

// ==================== DIÁLOGO NO DISPONIBLE ====================

@Composable
fun DialogoNoDisponible(
    fecha: LocalDate,
    yaNoDisponible: Boolean,
    onConfirmar: () -> Unit,
    onDismiss: () -> Unit
) {
    val colors = MaterialTheme.colorScheme
    val formatter = DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM", Locale("es", "ES"))
    val fechaFormateada = fecha.format(formatter).replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale("es", "ES")) else it.toString() }

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colors.surface,
        title = {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(if (yaNoDisponible) Icons.Default.CheckCircle else Icons.Default.Warning, contentDescription = null, tint = if (yaNoDisponible) colors.primary else colors.error)
                Spacer(modifier = Modifier.width(8.dp))
                Text(if (yaNoDisponible) "Habilitar día" else "Marcar como no disponible", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
            }
        },
        text = {
            Column {
                Text(fechaFormateada, style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold, color = colors.primary)
                Spacer(modifier = Modifier.height(12.dp))
                Text(
                    if (yaNoDisponible) "¿Deseas habilitar este día para recibir citas?"
                    else "Al marcar este día como no disponible, los pacientes no podrán agendar citas en esta fecha.",
                    style = MaterialTheme.typography.bodyMedium
                )
            }
        },
        confirmButton = {
            Button(
                onClick = onConfirmar,
                colors = ButtonDefaults.buttonColors(containerColor = if (yaNoDisponible) colors.primary else colors.error),
                shape = RoundedCornerShape(12.dp)
            ) {
                Text(if (yaNoDisponible) "Habilitar día" else "Marcar como no disponible")
            }
        },
        dismissButton = { TextButton(onClick = onDismiss) { Text("Cancelar") } }
    )
}

// ==================== DIÁLOGO CREAR/EDITAR CITA ====================

@OptIn(ExperimentalMaterial3Api::class)
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun DialogoCrearEditarCita(
    citaAEditar: AgendaItemDTO?,
    fechaInicial: LocalDate,
    pacientes: List<PacientePsicologoResponseDTO>,
    pacientesError: String?,
    terapias: List<TerapiaResponseDTO>,
    onRecargarPacientes: () -> Unit,
    slotsLibres: List<FranjaDisponibilidadResponse>,
    onFechaChange: (LocalDate) -> Unit,
    onConfirmar: (idPaciente: Long, fecha: LocalDate, hora: LocalTime, duracion: Int, motivo: String, idTerapia: Long) -> Unit,
    onDismiss: () -> Unit
) {
    val esEdicion = citaAEditar != null
    val colors = MaterialTheme.colorScheme
    val formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy")
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")

    var fechaSeleccionada by remember { mutableStateOf(citaAEditar?.fecha ?: fechaInicial) }
    var motivo by remember { mutableStateOf(citaAEditar?.motivo ?: "") }
    var duracionMinutos by remember { mutableIntStateOf(citaAEditar?.duracionMinutos ?: 60) }

    val pacienteInicial = if (esEdicion && citaAEditar != null) {
        pacientes.firstOrNull {
            it.idPaciente == citaAEditar.id ||
                    "${it.nombre} ${it.apellido}" == citaAEditar.nombrePaciente
        }
    } else null

    var pacienteSeleccionado by remember { mutableStateOf(pacienteInicial) }
    var pacienteDropdownExpanded by remember { mutableStateOf(false) }
    var terapiaSeleccionada by remember { mutableStateOf<TerapiaResponseDTO?>(null) }
    var terapiaDropdownExpanded by remember { mutableStateOf(false) }

    val horasDisponibles = remember(slotsLibres, citaAEditar, fechaSeleccionada) {
        val libres = slotsLibres.filter { !it.ocupado }.map { it.hora }.sorted()
        if (esEdicion && citaAEditar != null && citaAEditar.horaInicio != null) {
            if (citaAEditar.horaInicio !in libres) {
                (listOf(citaAEditar.horaInicio) + libres).distinct().sorted()
            } else {
                libres
            }
        } else {
            libres
        }
    }

    var horaSeleccionada by remember { mutableStateOf(
        if (esEdicion && citaAEditar?.horaInicio != null) citaAEditar.horaInicio
        else horasDisponibles.firstOrNull()
    ) }
    var horaDropdownExpanded by remember { mutableStateOf(false) }

    LaunchedEffect(terapiaSeleccionada) {
        terapiaSeleccionada?.let {
            duracionMinutos = it.duracionMinutos
        }
    }

    LaunchedEffect(fechaSeleccionada, slotsLibres) {
        if (!esEdicion && (horaSeleccionada == null || horaSeleccionada !in horasDisponibles)) {
            horaSeleccionada = horasDisponibles.firstOrNull()
        }
    }

    AlertDialog(
        onDismissRequest = onDismiss,
        title = {
            Column {
                Text(
                    text = if (esEdicion) "✏️ Editar cita" else "📅 Nueva cita",
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold
                )
                if (!esEdicion) {
                    Text(
                        text = "Completa los datos para agendar",
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.onSurfaceVariant
                    )
                }
            }
        },
        text = {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = 550.dp)
                    .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                // Selección de Paciente
                Text(
                    text = "👤 Paciente *",
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.SemiBold
                )
                ExposedDropdownMenuBox(
                    expanded = pacienteDropdownExpanded,
                    onExpandedChange = { pacienteDropdownExpanded = it }
                ) {
                    OutlinedTextField(
                        value = pacienteSeleccionado?.let { "${it.nombre} ${it.apellido}" } ?: "",
                        onValueChange = {},
                        readOnly = true,
                        placeholder = { Text("Selecciona un paciente") },
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = pacienteDropdownExpanded) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .menuAnchor(MenuAnchorType.PrimaryNotEditable, true),
                        singleLine = true,
                        shape = RoundedCornerShape(12.dp),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = colors.primary,
                            unfocusedBorderColor = colors.outline
                        )
                    )
                    ExposedDropdownMenu(
                        expanded = pacienteDropdownExpanded,
                        onDismissRequest = { pacienteDropdownExpanded = false }
                    ) {
                        when {
                            pacientesError != null -> {
                                DropdownMenuItem(
                                    text = {
                                        Column {
                                            Text("⚠️ Error al cargar pacientes", color = colors.error)
                                            Text(pacientesError, style = MaterialTheme.typography.bodySmall)
                                        }
                                    },
                                    onClick = { onRecargarPacientes() },
                                    leadingIcon = { Icon(Icons.Default.Refresh, contentDescription = "Reintentar") }
                                )
                            }
                            pacientes.isEmpty() -> {
                                DropdownMenuItem(
                                    text = { Text("No hay pacientes asignados") },
                                    onClick = { pacienteDropdownExpanded = false },
                                    enabled = false
                                )
                            }
                            else -> {
                                pacientes.forEach { paciente ->
                                    DropdownMenuItem(
                                        text = {
                                            Column {
                                                Text(
                                                    "${paciente.nombre ?: ""} ${paciente.apellido ?: ""}",
                                                    fontWeight = FontWeight.Medium
                                                )
                                                Text(
                                                    paciente.email ?: "",
                                                    style = MaterialTheme.typography.bodySmall,
                                                    color = colors.onSurfaceVariant
                                                )
                                            }
                                        },
                                        onClick = {
                                            pacienteSeleccionado = paciente
                                            pacienteDropdownExpanded = false
                                        }
                                    )
                                }
                            }
                        }
                    }
                }

                // Selección de Tipo de Terapia
                Text(
                    text = "🩺 Tipo de terapia *",
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.SemiBold
                )
                ExposedDropdownMenuBox(
                    expanded = terapiaDropdownExpanded,
                    onExpandedChange = { terapiaDropdownExpanded = it }
                ) {
                    OutlinedTextField(
                        value = terapiaSeleccionada?.nombre ?: "",
                        onValueChange = {},
                        readOnly = true,
                        placeholder = { Text("Selecciona el tipo de terapia") },
                        leadingIcon = { Icon(Icons.Default.MedicalServices, contentDescription = null) },
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = terapiaDropdownExpanded) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .menuAnchor(MenuAnchorType.PrimaryNotEditable, true),
                        singleLine = true,
                        shape = RoundedCornerShape(12.dp),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = colors.primary,
                            unfocusedBorderColor = colors.outline
                        )
                    )
                    ExposedDropdownMenu(
                        expanded = terapiaDropdownExpanded,
                        onDismissRequest = { terapiaDropdownExpanded = false }
                    ) {
                        if (terapias.isEmpty()) {
                            DropdownMenuItem(
                                text = { Text("No hay tipos de terapia disponibles") },
                                onClick = { terapiaDropdownExpanded = false },
                                enabled = false
                            )
                        } else {
                            terapias.forEach { terapia ->
                                DropdownMenuItem(
                                    text = {
                                        Column {
                                            Text(
                                                terapia.nombre,
                                                fontWeight = FontWeight.Medium
                                            )
                                            Text(
                                                "Duración: ${terapia.duracionMinutos} minutos",
                                                style = MaterialTheme.typography.bodySmall,
                                                color = colors.onSurfaceVariant
                                            )
                                        }
                                    },
                                    onClick = {
                                        terapiaSeleccionada = terapia
                                        terapiaDropdownExpanded = false
                                    }
                                )
                            }
                        }
                    }
                }

                // Selección de Fecha
                Text(
                    text = "📆 Fecha *",
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.SemiBold
                )
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.3f))
                ) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(8.dp),
                        horizontalArrangement = Arrangement.SpaceEvenly,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        IconButton(onClick = {
                            fechaSeleccionada = fechaSeleccionada.minusDays(1)
                            onFechaChange(fechaSeleccionada)
                        }) {
                            Icon(Icons.Default.ChevronLeft, contentDescription = "Día anterior")
                        }
                        Column(horizontalAlignment = Alignment.CenterHorizontally) {
                            Text(
                                text = fechaSeleccionada.format(formatterFecha),
                                style = MaterialTheme.typography.titleMedium,
                                fontWeight = FontWeight.Bold
                            )
                            Text(
                                text = fechaSeleccionada.format(
                                    DateTimeFormatter.ofPattern("EEEE", Locale.forLanguageTag("es-ES"))
                                ).replaceFirstChar { it.uppercase() },
                                style = MaterialTheme.typography.bodySmall,
                                color = colors.onSurfaceVariant
                            )
                        }
                        IconButton(onClick = {
                            fechaSeleccionada = fechaSeleccionada.plusDays(1)
                            onFechaChange(fechaSeleccionada)
                        }) {
                            Icon(Icons.Default.ChevronRight, contentDescription = "Día siguiente")
                        }
                    }
                }

                // Selección de Hora
                Text(
                    text = "⏰ Hora de inicio *",
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.SemiBold
                )
                ExposedDropdownMenuBox(
                    expanded = horaDropdownExpanded,
                    onExpandedChange = { horaDropdownExpanded = it }
                ) {
                    OutlinedTextField(
                        value = horaSeleccionada?.format(formatterHora) ?: "Sin horarios disponibles",
                        onValueChange = {},
                        readOnly = true,
                        leadingIcon = { Icon(Icons.Default.Schedule, contentDescription = null) },
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = horaDropdownExpanded) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .menuAnchor(MenuAnchorType.PrimaryNotEditable, true),
                        singleLine = true,
                        shape = RoundedCornerShape(12.dp),
                        isError = horasDisponibles.isEmpty() && !esEdicion
                    )
                    ExposedDropdownMenu(
                        expanded = horaDropdownExpanded,
                        onDismissRequest = { horaDropdownExpanded = false }
                    ) {
                        if (horasDisponibles.isEmpty() && !esEdicion) {
                            DropdownMenuItem(
                                text = {
                                    Text(
                                        "❌ No hay horarios libres para este día",
                                        color = colors.error
                                    )
                                },
                                onClick = { horaDropdownExpanded = false },
                                enabled = false
                            )
                        } else {
                            horasDisponibles.forEach { hora ->
                                DropdownMenuItem(
                                    text = {
                                        Row(verticalAlignment = Alignment.CenterVertically) {
                                            Icon(
                                                Icons.Default.AccessTime,
                                                contentDescription = null,
                                                modifier = Modifier.size(18.dp),
                                                tint = colors.primary
                                            )
                                            Spacer(modifier = Modifier.width(8.dp))
                                            Text(hora.format(formatterHora))
                                        }
                                    },
                                    onClick = {
                                        horaSeleccionada = hora
                                        horaDropdownExpanded = false
                                    }
                                )
                            }
                        }
                    }
                }
                if (horasDisponibles.isEmpty() && !esEdicion) {
                    Text(
                        text = "⚠️ No hay horarios disponibles para esta fecha",
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.error
                    )
                }

                // Duración
                Text(
                    text = "⏱️ Duración",
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.SemiBold
                )

                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    colors = CardDefaults.cardColors(containerColor = colors.primaryContainer.copy(alpha = 0.2f))
                ) {
                    Row(
                        modifier = Modifier.padding(12.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Column {
                            Text(
                                text = if (terapiaSeleccionada != null) "Duración de la terapia" else "Duración por defecto",
                                style = MaterialTheme.typography.labelSmall,
                                color = colors.primary
                            )
                            Text(
                                text = "$duracionMinutos minutos",
                                style = MaterialTheme.typography.bodyLarge,
                                fontWeight = FontWeight.Bold
                            )
                        }
                        Icon(
                            Icons.Default.Info,
                            contentDescription = null,
                            tint = colors.primary,
                            modifier = Modifier.size(24.dp)
                        )
                    }
                }

                // Motivo
                Text(
                    text = "📝 Motivo de la cita",
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.SemiBold
                )
                OutlinedTextField(
                    value = motivo,
                    onValueChange = { motivo = it },
                    placeholder = { Text("Describe el motivo de la cita (opcional)") },
                    modifier = Modifier.fillMaxWidth(),
                    minLines = 2,
                    maxLines = 3,
                    shape = RoundedCornerShape(12.dp)
                )

                // Resumen
                if (pacienteSeleccionado != null && horaSeleccionada != null && terapiaSeleccionada != null && !esEdicion) {
                    Spacer(modifier = Modifier.height(8.dp))
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(12.dp),
                        colors = CardDefaults.cardColors(
                            containerColor = colors.primaryContainer.copy(alpha = 0.3f)
                        )
                    ) {
                        Column(
                            modifier = Modifier.padding(12.dp),
                            verticalArrangement = Arrangement.spacedBy(4.dp)
                        ) {
                            Text(
                                text = "📋 Resumen de la cita",
                                style = MaterialTheme.typography.titleSmall,
                                fontWeight = FontWeight.Bold,
                                color = colors.primary
                            )
                            Text(
                                text = "Paciente: ${pacienteSeleccionado!!.nombre} ${pacienteSeleccionado!!.apellido}",
                                style = MaterialTheme.typography.bodySmall
                            )
                            Text(
                                text = "Terapia: ${terapiaSeleccionada!!.nombre}",
                                style = MaterialTheme.typography.bodySmall
                            )
                            Text(
                                text = "Fecha: ${fechaSeleccionada.format(formatterFecha)} a las ${horaSeleccionada!!.format(formatterHora)}",
                                style = MaterialTheme.typography.bodySmall
                            )
                            Text(
                                text = "Duración: $duracionMinutos minutos",
                                style = MaterialTheme.typography.bodySmall
                            )
                            if (motivo.isNotBlank()) {
                                Text(
                                    text = "Motivo: $motivo",
                                    style = MaterialTheme.typography.bodySmall
                                )
                            }
                        }
                    }
                }
            }
        },
        confirmButton = {
            val habilitado = pacienteSeleccionado?.idPaciente != null &&
                    horaSeleccionada != null &&
                    terapiaSeleccionada != null &&
                    (horasDisponibles.isNotEmpty() || esEdicion)

            Button(
                onClick = {
                    val idPaciente = pacienteSeleccionado?.idPaciente
                    if (idPaciente != null && horaSeleccionada != null && terapiaSeleccionada != null) {
                        onConfirmar(
                            idPaciente,
                            fechaSeleccionada,
                            horaSeleccionada!!,
                            duracionMinutos,
                            motivo.ifBlank { "${terapiaSeleccionada!!.nombre} - Cita psicológica" },
                            terapiaSeleccionada!!.idTipo
                        )
                        onDismiss()
                    }
                },
                enabled = habilitado,
                shape = RoundedCornerShape(12.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(if (esEdicion) "💾 Guardar cambios" else "✅ Crear cita")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("Cancelar")
            }
        }
    )
}

// ==================== DIÁLOGO CONFIRMAR CANCELACIÓN ====================

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun DialogoConfirmarCancelacion(
    cita: AgendaItemDTO,
    onConfirmar: () -> Unit,
    onDismiss: () -> Unit
) {
    val formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy")
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")

    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text("Cancelar cita") },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                Text("¿Estás seguro de que deseas cancelar esta cita?")
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(8.dp),
                    colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.errorContainer.copy(alpha = 0.3f))
                ) {
                    Column(modifier = Modifier.padding(12.dp)) {
                        Text(text = cita.nombrePaciente ?: "Paciente", fontWeight = FontWeight.SemiBold, style = MaterialTheme.typography.bodyLarge)
                        Text(text = "${cita.fecha.format(formatterFecha)} • ${cita.horaInicio.format(formatterHora)} - ${cita.horaFin.format(formatterHora)}", style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
                        if (!cita.motivo.isNullOrBlank()) {
                            Text(text = cita.motivo, style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                        }
                    }
                }
                Text("Esta acción no se puede deshacer.", style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.error)
            }
        },
        confirmButton = {
            Button(onClick = onConfirmar, colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.error)) {
                Text("Cancelar cita")
            }
        },
        dismissButton = { TextButton(onClick = onDismiss) { Text("Volver") } }
    )
}