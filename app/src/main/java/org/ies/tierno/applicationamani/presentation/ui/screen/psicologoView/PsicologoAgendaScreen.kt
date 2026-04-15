@file:Suppress("DEPRECATION")

package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.animation.*
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.FranjaDisponibilidadResponse
import org.ies.tierno.applicationamani.dto.citas.TerapiaResponseDTO
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView
import org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import org.koin.androidx.compose.koinViewModel
import java.math.BigDecimal
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
    listarTerapiasViewModel: ListarTerapiasViewModel = koinViewModel(),
    citaViewModel: CitasViewModel = koinViewModel()
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

    val citasDelDia = fechaSeleccionada?.let { citasPorDia[it] } ?: emptyList()

    // Estado local para días no disponibles
    var diasNoDisponibles by remember { mutableStateOf<Set<LocalDate>>(emptySet()) }

    // Cargar días no disponibles cuando cambia la agenda o la fecha seleccionada
    LaunchedEffect(agendaMensual, fechaSeleccionada) {
        // Aquí deberías cargar los días no disponibles desde el ViewModel
        // Por ahora mantenemos vacío
        diasNoDisponibles = emptySet()
    }

    val esDiaNoDisponible = fechaSeleccionada?.let { it in diasNoDisponibles } ?: false

    val userSession by viewModel.userSession.collectAsStateWithLifecycle()

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
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    citaParaEditar = null
                    mostrarDialogoCrearEditar = true
                    val fechaParaCargar = fechaSeleccionada ?: LocalDate.now()
                    // IMPORTANTE: Cargar disponibilidad antes de abrir el diálogo
                    viewModel.cargarDisponibilidadDia(fechaParaCargar, 60) },
                containerColor = colors.primary,
                contentColor = colors.onPrimary,
                shape = RoundedCornerShape(16.dp),
                modifier = Modifier.size(56.dp)
            ) {
                Icon(Icons.Default.Add, contentDescription = "Añadir Cita", modifier = Modifier.size(28.dp))
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
                // Header
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(bottom = 16.dp)
                ) {
                    Column {
                        Text(
                            text = "Mi Agenda",
                            style = typography.headlineLarge,
                            fontWeight = FontWeight.Bold,
                            color = colors.primary,
                            modifier = Modifier.padding(bottom = 4.dp)
                        )
                        Text(
                            text = "Gestiona tus citas y horarios profesionales",
                            style = typography.bodyMedium,
                            color = colors.onSurfaceVariant,
                        )
                    }
                }

                // Tarjetas de acciones rápidas
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    TarjetaAccionRapidaMejorada(
                        icono = Icons.Default.Schedule,
                        titulo = "Horario",
                        subtitulo = "Configurar horario laboral",
                        colorFondo = colors.primaryContainer.copy(alpha = 0.5f),
                        colorIcono = colors.primary,
                        modifier = Modifier.weight(1f),
                        onClick = { mostrarDialogoHorario = true }
                    )
                    TarjetaAccionRapidaMejorada(
                        icono = Icons.Default.EventBusy,
                        titulo = "Bloquear día",
                        subtitulo = if (fechaSeleccionada != null) "Marcar como no disponible" else "Selecciona un día",
                        colorFondo = colors.errorContainer.copy(alpha = 0.3f),
                        colorIcono = colors.error,
                        modifier = Modifier.weight(1f),
                        onClick = {
                            if (fechaSeleccionada != null) {
                                mostrarDialogoNoDisponible = true
                            } else {
                                scope.launch {
                                    snackbarHostState.showSnackbar("📅 Selecciona primero un día en el calendario")
                                }
                            }
                        }
                    )
                }

                Spacer(modifier = Modifier.height(20.dp))

                // Leyenda
                LeyendaMejorada()

                Spacer(modifier = Modifier.height(16.dp))

                // Calendario
                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .shadow(8.dp, RoundedCornerShape(24.dp)),
                    shape = RoundedCornerShape(24.dp),
                    colors = CardDefaults.cardColors(containerColor = colors.surface)
                ) {
                    CalendarioView(
                        modifier = Modifier.fillMaxWidth(),
                        mesVisible = mesVisible,
                        fechaSeleccionada = fechaSeleccionada,
                        fechasDestacadas = fechasConCitas,
                        onMesVisibleChange = { mesVisible = it },
                        onFechaSeleccionada = { fecha ->
                            fechaSeleccionada = if (fechaSeleccionada == fecha) null else fecha
                        }
                    )
                }

                Spacer(modifier = Modifier.height(24.dp))

                // Sección de citas del día
                AnimatedVisibility(
                    visible = fechaSeleccionada != null,
                    enter = fadeIn() + slideInVertically(),
                    exit = fadeOut() + slideOutVertically()
                ) {
                    fechaSeleccionada?.let { fecha ->
                        Card(
                            modifier = Modifier
                                .fillMaxWidth()
                                .shadow(8.dp, RoundedCornerShape(24.dp)),
                            shape = RoundedCornerShape(24.dp),
                            colors = CardDefaults.cardColors(containerColor = colors.surface)
                        ) {
                            Column(modifier = Modifier.padding(20.dp)) {
                                CabeceraDiaMejorada(fecha, esDiaNoDisponible)
                                Spacer(modifier = Modifier.height(16.dp))

                                when {
                                    esDiaNoDisponible -> DiaNoDisponibleCardMejorado()
                                    citasDelDia.isNotEmpty() -> {
                                        Row(
                                            modifier = Modifier.fillMaxWidth(),
                                            horizontalArrangement = Arrangement.SpaceBetween,
                                            verticalAlignment = Alignment.CenterVertically
                                        ) {
                                            Text(
                                                text = "Citas del día",
                                                style = typography.titleLarge,
                                                fontWeight = FontWeight.Bold
                                            )
                                            Badge(
                                                modifier = Modifier.clip(RoundedCornerShape(16.dp)),
                                                containerColor = colors.primary
                                            ) {
                                                Text(
                                                    text = "${citasDelDia.size}",
                                                    color = colors.onPrimary,
                                                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                                                    fontWeight = FontWeight.Bold
                                                )
                                            }
                                        }
                                        Spacer(modifier = Modifier.height(16.dp))
                                        citasDelDia.forEachIndexed { index, cita ->
                                            TarjetaCitaMejorada(
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
                                            shape = RoundedCornerShape(20.dp),
                                            colors = CardDefaults.cardColors(containerColor = colors.primaryContainer.copy(alpha = 0.2f))
                                        ) {
                                            Column(
                                                modifier = Modifier
                                                    .fillMaxWidth()
                                                    .padding(40.dp),
                                                horizontalAlignment = Alignment.CenterHorizontally
                                            ) {
                                                Icon(
                                                    Icons.Default.CalendarMonth,
                                                    contentDescription = null,
                                                    modifier = Modifier.size(56.dp),
                                                    tint = colors.primary.copy(alpha = 0.6f)
                                                )
                                                Spacer(modifier = Modifier.height(12.dp))
                                                Text(
                                                    text = "Sin citas programadas",
                                                    style = typography.titleMedium,
                                                    fontWeight = FontWeight.Medium,
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
                        .background(Color.Black.copy(alpha = 0.4f))
                        .clickable(enabled = false) { },
                    contentAlignment = Alignment.Center
                ) {
                    Card(
                        shape = RoundedCornerShape(20.dp),
                        colors = CardDefaults.cardColors(containerColor = colors.surface),
                        modifier = Modifier.padding(24.dp)
                    ) {
                        Column(
                            modifier = Modifier.padding(32.dp),
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            CircularProgressIndicator(color = colors.primary, modifier = Modifier.size(48.dp))
                            Spacer(modifier = Modifier.height(16.dp))
                            Text("Cargando agenda...", style = typography.bodyMedium, fontWeight = FontWeight.Medium)
                        }
                    }
                }
            }
        }
    }

    // Diálogo Modificar Horario MEJORADO con selectores de hora
    if (mostrarDialogoHorario) {
        DialogoModificarHorarioMejorado(
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

    // Diálogo No Disponible - CORREGIDO
    if (mostrarDialogoNoDisponible && fechaSeleccionada != null) {
        val fecha = fechaSeleccionada!!

        DialogoNoDisponibleMejorado(
            fecha = fecha,
            yaNoDisponible = esDiaNoDisponible,
            onConfirmar = {
                scope.launch {
                    viewModel.alternarDiaNoDisponible(
                        fecha = fecha,
                        yaNoDisponible = esDiaNoDisponible
                    )
                    mostrarDialogoNoDisponible = false
                    // Actualizar estado local
                    diasNoDisponibles = if (esDiaNoDisponible) {
                        diasNoDisponibles - fecha
                    } else {
                        diasNoDisponibles + fecha
                    }
                    val msg = if (!esDiaNoDisponible) "✅ Día ${fecha.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))} bloqueado"
                    else "✅ Día ${fecha.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))} habilitado"
                    snackbarHostState.showSnackbar(msg)
                }
            },
            onDismiss = { mostrarDialogoNoDisponible = false }
        )
    }

    // Diálogo Crear/Editar Cita
    if (mostrarDialogoCrearEditar) {
        DialogoCrearEditarCitaMejorado(
            citaAEditar = citaParaEditar,
            fechaInicial = fechaSeleccionada ?: LocalDate.now(),
            pacientes = pacientesAsignados,
            pacientesError = pacientesError,
            terapias = terapias,
            onRecargarPacientes = { viewModel.reintentarCargarPacientes() },
            slotsLibres = disponibilidadDia?.slotsLibres ?: emptyList(),
            onFechaChange = { viewModel.cargarDisponibilidadDia(it, 60) },
            onConfirmar = { idPaciente, fecha, hora, duracion, motivo, idTerapia, metodoPago, monto ->
                if (citaParaEditar != null) {
                    viewModel.editarCita(
                        idCita = citaParaEditar!!.id,
                        idPaciente = idPaciente,
                        fecha = fecha,
                        hora = hora,
                        duracionMinutos = duracion,
                        motivo = motivo,
                        idTipoTerapia = idTerapia,
                        metodoPago = metodoPago,
                        monto = monto
                    )
                    scope.launch {
                        val paciente = pacientesAsignados.find { it.idPaciente == idPaciente }
                        snackbarHostState.showSnackbar(
                            "✏️ Cita editada: ${paciente?.nombre} ${paciente?.apellido}"
                        )
                    }
                } else {
                    scope.launch {
                        citaViewModel.reservarCita(
                            idPaciente = idPaciente,
                            fecha = fecha,
                            hora = hora,
                            duracionMinutos = duracion,
                            motivo = motivo,
                            idTipoTerapia = idTerapia,
                            metodoPago = metodoPago,
                            monto = monto
                        )
                    }
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
        DialogoConfirmarCancelacionMejorado(
            cita = citaParaCancelar!!,
            onConfirmar = {
                viewModel.cancelarCita(citaParaCancelar!!.id, citaParaCancelar!!.fecha)
                scope.launch {
                    snackbarHostState.showSnackbar("🗑️ Cita cancelada correctamente")
                }
                citaParaCancelar = null
            },
            onDismiss = { citaParaCancelar = null }
        )
    }
}

// ==================== COMPONENTES MEJORADOS (sin cambios) ====================

@Composable
fun TarjetaAccionRapidaMejorada(
    icono: ImageVector,
    titulo: String,
    subtitulo: String,
    colorFondo: Color,
    colorIcono: Color,
    modifier: Modifier = Modifier,
    onClick: () -> Unit
) {
    Card(
        modifier = modifier
            .clickable { onClick() }
            .shadow(4.dp, RoundedCornerShape(16.dp)),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = colorFondo)
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Box(
                modifier = Modifier
                    .size(48.dp)
                    .background(colorIcono.copy(alpha = 0.15f), RoundedCornerShape(14.dp)),
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    imageVector = icono,
                    contentDescription = titulo,
                    tint = colorIcono,
                    modifier = Modifier.size(26.dp)
                )
            }
            Spacer(modifier = Modifier.height(10.dp))
            Text(
                text = titulo,
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.Bold
            )
            Text(
                text = subtitulo,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center,
                maxLines = 2
            )
        }
    }
}

@Composable
fun LeyendaMejorada() {
    val colors = MaterialTheme.colorScheme

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.3f))
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            horizontalArrangement = Arrangement.SpaceEvenly
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Box(
                    modifier = Modifier
                        .size(14.dp)
                        .clip(RoundedCornerShape(4.dp))
                        .background(colors.primary)
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text("Seleccionado", style = MaterialTheme.typography.labelSmall, color = colors.onSurfaceVariant)
            }
            Row(verticalAlignment = Alignment.CenterVertically) {
                Box(
                    modifier = Modifier
                        .size(14.dp)
                        .clip(RoundedCornerShape(4.dp))
                        .background(colors.tertiary)
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text("Con citas", style = MaterialTheme.typography.labelSmall, color = colors.onSurfaceVariant)
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CabeceraDiaMejorada(fecha: LocalDate, esDiaNoDisponible: Boolean) {
    val colors = MaterialTheme.colorScheme
    val formatterFecha = DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM", Locale("es", "ES"))

    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        color = if (esDiaNoDisponible) colors.errorContainer.copy(alpha = 0.3f) else colors.primaryContainer.copy(alpha = 0.3f)
    ) {
        Row(
            modifier = Modifier.padding(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                imageVector = if (esDiaNoDisponible) Icons.Default.EventBusy else Icons.Default.CalendarToday,
                contentDescription = null,
                tint = if (esDiaNoDisponible) colors.error else colors.primary,
                modifier = Modifier.size(32.dp)
            )
            Spacer(modifier = Modifier.width(16.dp))
            Column {
                Text(
                    text = fecha.format(formatterFecha).replaceFirstChar { it.uppercase() },
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = if (esDiaNoDisponible) colors.error else colors.onSurface
                )
                if (esDiaNoDisponible) {
                    Text(
                        text = "⚠️ Día no disponible para citas",
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.error
                    )
                } else {
                    Text(
                        text = "Horario disponible según configuración",
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.onSurfaceVariant
                    )
                }
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun TarjetaCitaMejorada(cita: AgendaItemDTO, onEdit: () -> Unit, onCancel: () -> Unit) {
    val colors = MaterialTheme.colorScheme
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        colors = CardDefaults.cardColors(containerColor = colors.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.Top
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Box(
                        modifier = Modifier
                            .size(40.dp)
                            .background(colors.primary.copy(alpha = 0.15f), RoundedCornerShape(12.dp)),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(
                            Icons.Default.Person,
                            contentDescription = null,
                            tint = colors.primary,
                            modifier = Modifier.size(22.dp)
                        )
                    }
                    Spacer(modifier = Modifier.width(12.dp))
                    Column {
                        Text(
                            text = cita.nombrePaciente ?: "Paciente",
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold
                        )
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.AccessTime,
                                contentDescription = null,
                                modifier = Modifier.size(14.dp),
                                tint = colors.onSurfaceVariant
                            )
                            Spacer(modifier = Modifier.width(4.dp))
                            Text(
                                text = "${cita.horaInicio.format(formatterHora)} - ${cita.horaFin.format(formatterHora)}",
                                style = MaterialTheme.typography.bodySmall,
                                color = colors.onSurfaceVariant
                            )
                        }
                    }
                }

                cita.estado?.let { estado ->
                    Surface(
                        shape = RoundedCornerShape(12.dp),
                        color = when (estado.uppercase()) {
                            "CONFIRMADA" -> colors.primary.copy(alpha = 0.15f)
                            "CANCELADA" -> colors.error.copy(alpha = 0.15f)
                            else -> colors.tertiary.copy(alpha = 0.15f)
                        }
                    ) {
                        Text(
                            text = estado,
                            modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                            style = MaterialTheme.typography.labelSmall,
                            fontWeight = FontWeight.Medium,
                            color = when (estado.uppercase()) {
                                "CONFIRMADA" -> colors.primary
                                "CANCELADA" -> colors.error
                                else -> colors.tertiary
                            }
                        )
                    }
                }
            }

            if (!cita.motivo.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(8.dp))
                Row(verticalAlignment = Alignment.Top) {
                    Icon(
                        Icons.Default.Description,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp),
                        tint = colors.onSurfaceVariant
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = cita.motivo,
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.onSurfaceVariant
                    )
                }
            }

            Spacer(modifier = Modifier.height(8.dp))
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(
                    Icons.Default.MedicalServices,
                    contentDescription = null,
                    modifier = Modifier.size(16.dp),
                    tint = colors.primary
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    text = cita.terapiaResponseDTO.nombre,
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.primary,
                    fontWeight = FontWeight.Medium
                )
            }

            Spacer(modifier = Modifier.height(12.dp))
            Divider(color = colors.outline.copy(alpha = 0.3f))
            Spacer(modifier = Modifier.height(8.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.End,
                verticalAlignment = Alignment.CenterVertically
            ) {
                TextButton(
                    onClick = onEdit,
                    colors = ButtonDefaults.textButtonColors(contentColor = colors.primary)
                ) {
                    Icon(Icons.Default.Edit, contentDescription = null, modifier = Modifier.size(18.dp))
                    Spacer(modifier = Modifier.width(6.dp))
                    Text("Editar", style = MaterialTheme.typography.labelMedium)
                }
                Spacer(modifier = Modifier.width(8.dp))
                TextButton(
                    onClick = onCancel,
                    colors = ButtonDefaults.textButtonColors(contentColor = colors.error)
                ) {
                    Icon(Icons.Default.Cancel, contentDescription = null, modifier = Modifier.size(18.dp))
                    Spacer(modifier = Modifier.width(6.dp))
                    Text("Cancelar", style = MaterialTheme.typography.labelMedium)
                }
            }
        }
    }
}

@Composable
fun DiaNoDisponibleCardMejorado() {
    val colors = MaterialTheme.colorScheme

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        colors = CardDefaults.cardColors(containerColor = colors.errorContainer.copy(alpha = 0.2f))
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(32.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Box(
                modifier = Modifier
                    .size(64.dp)
                    .background(colors.error.copy(alpha = 0.15f), RoundedCornerShape(20.dp)),
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    Icons.Default.EventBusy,
                    contentDescription = null,
                    modifier = Modifier.size(36.dp),
                    tint = colors.error
                )
            }
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = "Día no disponible",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold,
                color = colors.error
            )
            Text(
                text = "No se pueden agendar citas en esta fecha",
                style = MaterialTheme.typography.bodySmall,
                color = colors.onSurfaceVariant,
                textAlign = TextAlign.Center
            )
        }
    }
}

// ==================== DIÁLOGO MODIFICAR HORARIO MEJORADO ====================

@RequiresApi(Build.VERSION_CODES.O)
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DialogoModificarHorarioMejorado(
    horarioActual: StateFlow<HorarioRequestDTO?>,
    onConfirmar: (List<FranjaHorarioDTO>) -> Unit,
    onDismiss: () -> Unit
) {
    val colors = MaterialTheme.colorScheme
    val horario by horarioActual.collectAsStateWithLifecycle()

    val diasSemana = listOf(
        "Lunes" to 0,
        "Martes" to 1,
        "Miércoles" to 2,
        "Jueves" to 3,
        "Viernes" to 4,
        "Sábado" to 5,
        "Domingo" to 6
    )

    // 🔥 Estado estable editable (NO depende de remember(horario))
    val franjasEditables = remember {
        mutableStateListOf<MutableState<FranjaHorarioDTO>>()
    }

    // 🔥 Sincronización cuando llega horario del backend
    LaunchedEffect(horario) {
        val data = horario ?: return@LaunchedEffect

        franjasEditables.clear()

        diasSemana.forEach { (nombre, diaNum) ->
            val existing = data.franjas.find { it.diaSemana == diaNum.toShort() }

            franjasEditables.add(
                mutableStateOf(
                    FranjaHorarioDTO(
                        diaSemana = diaNum.toShort(),
                        horaInicio = existing?.horaInicio ?: "09:00",
                        horaFin = existing?.horaFin ?: "17:00",
                        activo = existing?.activo ?: (diaNum in 0..4),
                        motivo = null
                    )
                )
            )
        }
    }

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colors.surface,
        shape = RoundedCornerShape(28.dp),

        title = {
            Column {
                Text(
                    text = "⏰ Configurar Horario",
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                    color = colors.primary
                )
                Text(
                    text = "Define tus días y horas de atención",
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.onSurfaceVariant
                )
            }
        },

        text = {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = 500.dp)
                    .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {

                franjasEditables.forEachIndexed { index, state ->
                    val franja = state.value
                    val diaNombre = diasSemana[index].first

                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(16.dp),
                        colors = CardDefaults.cardColors(
                            containerColor =
                                if (franja.activo)
                                    colors.primaryContainer.copy(alpha = 0.15f)
                                else
                                    colors.surfaceVariant.copy(alpha = 0.3f)
                        )
                    ) {

                        Column(modifier = Modifier.padding(16.dp)) {

                            // HEADER
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.SpaceBetween
                            ) {

                                Row(
                                    verticalAlignment = Alignment.CenterVertically,
                                    modifier = Modifier.weight(1f)
                                ) {
                                    Checkbox(
                                        checked = franja.activo,
                                        onCheckedChange = { checked ->
                                            state.value = franja.copy(activo = checked)
                                        }
                                    )

                                    Text(
                                        text = diaNombre,
                                        style = MaterialTheme.typography.titleSmall,
                                        fontWeight = FontWeight.Medium
                                    )
                                }

                                if (franja.activo) {
                                    Text(
                                        text = "${franja.horaInicio} - ${franja.horaFin}",
                                        style = MaterialTheme.typography.labelSmall,
                                        color = colors.primary
                                    )
                                }
                            }

                            // EXPANSIÓN
                            AnimatedVisibility(visible = franja.activo) {

                                Column {
                                    Spacer(modifier = Modifier.height(12.dp))
                                    Divider()
                                    Spacer(modifier = Modifier.height(12.dp))

                                    Row(
                                        modifier = Modifier.fillMaxWidth(),
                                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                                    ) {

                                        Column(modifier = Modifier.weight(1f)) {
                                            Text("Hora inicio")
                                            HoraSelector(
                                                horaActual = franja.horaInicio,
                                                onHoraSeleccionada = { nueva ->
                                                    state.value = franja.copy(horaInicio = nueva)
                                                }
                                            )
                                        }

                                        Column(modifier = Modifier.weight(1f)) {
                                            Text("Hora fin")
                                            HoraSelector(
                                                horaActual = franja.horaFin,
                                                onHoraSeleccionada = { nueva ->
                                                    state.value = franja.copy(horaFin = nueva)
                                                }
                                            )
                                        }
                                    }

                                    // VALIDACIÓN REAL (NO STRING)
                                    val inicio = runCatching {
                                        LocalTime.parse(franja.horaInicio)
                                    }.getOrNull()

                                    val fin = runCatching {
                                        LocalTime.parse(franja.horaFin)
                                    }.getOrNull()

                                    if (inicio != null && fin != null && !inicio.isBefore(fin)) {
                                        Text(
                                            text = "⚠️ La hora de inicio debe ser anterior a la hora de fin",
                                            color = colors.error,
                                            style = MaterialTheme.typography.labelSmall
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
                    val resultado = franjasEditables.map { it.value }
                    onConfirmar(resultado)
                },
                modifier = Modifier.fillMaxWidth()
            ) {
                Text("💾 Guardar horario")
            }
        },

        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("Cancelar")
            }
        }
    )
}
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HoraSelector(
    horaActual: String,
    onHoraSeleccionada: (String) -> Unit
) {
    var expanded by remember { mutableStateOf(false) }

    val horas = (0..23).flatMap { h ->
        listOf("00", "30").map { m ->
            String.format("%02d:%s", h, m)
        }
    }

    ExposedDropdownMenuBox(
        expanded = expanded,
        onExpandedChange = { expanded = !expanded }
    ) {
        OutlinedTextField(
            value = horaActual,
            onValueChange = {},
            readOnly = true,
            modifier = Modifier.menuAnchor(),
            trailingIcon = {
                ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded)
            }
        )

        ExposedDropdownMenu(
            expanded = expanded,
            onDismissRequest = { expanded = false }
        ) {
            horas.forEach { hora ->
                DropdownMenuItem(
                    text = { Text(hora) },
                    onClick = {
                        onHoraSeleccionada(hora)
                        expanded = false
                    }
                )
            }
        }
    }
}
// ==================== DIÁLOGO NO DISPONIBLE MEJORADO ====================

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun DialogoNoDisponibleMejorado(
    fecha: LocalDate,
    yaNoDisponible: Boolean,
    onConfirmar: () -> Unit,
    onDismiss: () -> Unit
) {
    val colors = MaterialTheme.colorScheme
    val formatterFecha = DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM", Locale("es", "ES"))

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colors.surface,
        shape = RoundedCornerShape(28.dp),
        title = {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(
                    if (yaNoDisponible) Icons.Default.CheckCircle else Icons.Default.Warning,
                    contentDescription = null,
                    tint = if (yaNoDisponible) colors.primary else colors.error
                )
                Spacer(modifier = Modifier.width(12.dp))
                Text(
                    text = if (yaNoDisponible) "Habilitar día" else "Bloquear día",
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold
                )
            }
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                Text(
                    text = fecha.format(formatterFecha).replaceFirstChar { it.uppercase() },
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.primary
                )
                Text(
                    text = if (yaNoDisponible)
                        "¿Deseas habilitar este día para recibir citas?"
                    else
                        "¿Deseas bloquear este día? No se podrán agendar nuevas citas.",
                    style = MaterialTheme.typography.bodyMedium
                )
                if (!yaNoDisponible) {
                    Card(
                        shape = RoundedCornerShape(12.dp),
                        colors = CardDefaults.cardColors(containerColor = colors.surfaceContainerLow.copy(alpha = 0.3f))
                    ) {
                        Row(
                            modifier = Modifier.padding(12.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Icon(Icons.Default.Info, contentDescription = "", tint = colors.onSurfaceVariant, modifier = Modifier.size(20.dp))
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = "Las citas existentes no se cancelarán automáticamente",
                                style = MaterialTheme.typography.bodySmall,
                                color = colors.onSurfaceVariant
                            )
                        }
                    }
                }
            }
        },
        confirmButton = {
            Button(
                onClick = onConfirmar,
                colors = ButtonDefaults.buttonColors(
                    containerColor = if (yaNoDisponible) colors.primary else colors.error
                ),
                shape = RoundedCornerShape(14.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(if (yaNoDisponible) "✅ Habilitar día" else "🚫 Bloquear día", modifier = Modifier.padding(vertical = 4.dp))
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss, shape = RoundedCornerShape(14.dp)) {
                Text("Cancelar")
            }
        }
    )
}

// ==================== DIÁLOGO CREAR/EDITAR CITA MEJORADO ====================

@OptIn(ExperimentalMaterial3Api::class)
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun DialogoCrearEditarCitaMejorado(
    citaAEditar: AgendaItemDTO?,
    fechaInicial: LocalDate,
    pacientes: List<PacientePsicologoResponseDTO>,
    pacientesError: String?,
    terapias: List<TerapiaResponseDTO>,
    onRecargarPacientes: () -> Unit,
    slotsLibres: List<FranjaDisponibilidadResponse>,
    onFechaChange: (LocalDate) -> Unit,
    onConfirmar: (idPaciente: Long, fecha: LocalDate, hora: LocalTime, duracion: Int, motivo: String, idTerapia: Long, metodoPago: MetodoPago, monto: BigDecimal) -> Unit,
    onDismiss: () -> Unit
) {
    val esEdicion = citaAEditar != null
    val colors = MaterialTheme.colorScheme
    val formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy")
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")

    var fechaSeleccionada by remember { mutableStateOf(citaAEditar?.fecha ?: fechaInicial) }
    var motivo by remember { mutableStateOf(citaAEditar?.motivo ?: "") }
    var duracionMinutos by remember { mutableIntStateOf(citaAEditar?.duracionMinutos ?: 60) }

    val metodoPagoInicial = remember(citaAEditar) {
        when (citaAEditar?.metodoPago?.uppercase()) {
            "ONLINE" -> MetodoPago.ONLINE
            else -> MetodoPago.PRESENCIAL
        }
    }
    var metodoPagoSeleccionado by remember { mutableStateOf(metodoPagoInicial) }

    val montoInicial = remember(citaAEditar) {
        // Si es edición y tiene monto, usar ese; si no, string vacío
        if (citaAEditar?.monto != null && citaAEditar.monto > BigDecimal.ZERO) {
            citaAEditar.monto.toString()
        } else {
            ""
        }
    }
    var monto by remember { mutableStateOf(montoInicial) }
    var montoError by remember { mutableStateOf(false) }

    val pacienteInicial = if (esEdicion && citaAEditar != null) {
        pacientes.firstOrNull {
            it.idPaciente == citaAEditar.id ||
                    "${it.nombre} ${it.apellido}" == citaAEditar.nombrePaciente
        }
    } else null

    var pacienteSeleccionado by remember { mutableStateOf(pacienteInicial) }
    var pacienteDropdownExpanded by remember { mutableStateOf(false) }

    val terapiaInicial = remember(citaAEditar, terapias) {
        citaAEditar?.idTipoTerapia?.let { id ->
            terapias.find { it.idTipo == id }
        } ?: citaAEditar?.terapiaResponseDTO?.let { terapiaDTO ->
            terapias.find { it.idTipo == terapiaDTO.idTipo }
        }
    }
    var terapiaSeleccionada by remember { mutableStateOf(terapiaInicial) }
    var terapiaDropdownExpanded by remember { mutableStateOf(false) }

    val horasDisponibles = remember(slotsLibres, citaAEditar, fechaSeleccionada) {
        val libres = slotsLibres.filter { !it.ocupado }.map { it.hora }.sorted()
        if (esEdicion && citaAEditar != null) {
            val horaEdicion = citaAEditar.horaInicio
            if (horaEdicion !in libres) {
                (listOf(horaEdicion) + libres).distinct().sorted()
            } else {
                libres
            }
        } else {
            libres
        }
    }

    var horaSeleccionada by remember {
        mutableStateOf(
            if (esEdicion && citaAEditar != null) citaAEditar.horaInicio
            else horasDisponibles.firstOrNull()
        )
    }
    var horaDropdownExpanded by remember { mutableStateOf(false) }

    // ==================== NUEVO: Efecto para actualizar duración y monto al seleccionar terapia ====================
    LaunchedEffect(terapiaSeleccionada) {
        terapiaSeleccionada?.let { terapia ->
            // Actualizar duración
            duracionMinutos = terapia.duracionMinutos

            // Si el método de pago es ONLINE, actualizar el monto con el precio de la terapia
            if (metodoPagoSeleccionado == MetodoPago.ONLINE) {
                monto = terapia.precio.toString()
                montoError = false
            }
        }
    }

    // ==================== NUEVO: Efecto para cuando cambia el método de pago ====================
    LaunchedEffect(metodoPagoSeleccionado, terapiaSeleccionada) {
        // Si se cambia a ONLINE y hay una terapia seleccionada, establecer el precio
        if (metodoPagoSeleccionado == MetodoPago.ONLINE && terapiaSeleccionada != null && monto.isBlank()) {
            monto = terapiaSeleccionada!!.precio.toString()
            montoError = false
        }
        // Si se cambia a PRESENCIAL, limpiar el monto (opcional)
        if (metodoPagoSeleccionado == MetodoPago.PRESENCIAL) {
            // Opcional: limpiar el monto al cambiar a presencial
            // monto = ""
            // montoError = false
        }
    }

    LaunchedEffect(fechaSeleccionada, slotsLibres) {
        if (!esEdicion && (horaSeleccionada == null || horaSeleccionada !in horasDisponibles)) {
            horaSeleccionada = horasDisponibles.firstOrNull()
        }
    }

    fun validarMonto(input: String): Boolean {
        if (input.isBlank()) return false
        return runCatching { BigDecimal(input.replace(",", ".")) }.isSuccess
    }

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colors.surface,
        shape = RoundedCornerShape(28.dp),
        title = {
            Column {
                Text(
                    text = if (esEdicion) "✏️ Editar cita" else "📅 Nueva cita",
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                    color = colors.primary
                )
                Text(
                    text = if (esEdicion) "Modifica los datos de la cita" else "Completa la información para agendar",
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.onSurfaceVariant
                )
            }
        },
        text = {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = 550.dp)
                    .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                // Paciente
                CampoSeleccionConIcono(
                    label = "Paciente",
                    icono = Icons.Default.Person,
                    valor = pacienteSeleccionado?.let { "${it.nombre} ${it.apellido}" } ?: "",
                    expanded = pacienteDropdownExpanded,
                    onExpandedChange = { pacienteDropdownExpanded = it },
                    error = pacientesError != null || pacientes.isEmpty()
                ) {
                    when {
                        pacientesError != null -> {
                            DropdownMenuItem(
                                text = {
                                    Row {
                                        Icon(Icons.Default.Error, contentDescription = "", tint = colors.error)
                                        Spacer(modifier = Modifier.width(8.dp))
                                        Column {
                                            Text("Error al cargar pacientes", color = colors.error)
                                            Text(pacientesError!!, style = MaterialTheme.typography.bodySmall)
                                        }
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
                                            Text("${paciente.nombre ?: ""} ${paciente.apellido ?: ""}", fontWeight = FontWeight.Medium)
                                            Text(paciente.email ?: "", style = MaterialTheme.typography.bodySmall, color = colors.onSurfaceVariant)
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

                // Terapia
                CampoSeleccionConIcono(
                    label = "Tipo de terapia",
                    icono = Icons.Default.MedicalServices,
                    valor = terapiaSeleccionada?.nombre ?: "",
                    expanded = terapiaDropdownExpanded,
                    onExpandedChange = { terapiaDropdownExpanded = it },
                    error = terapias.isEmpty()
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
                                        Text(terapia.nombre, fontWeight = FontWeight.Medium)
                                        Text("Duración: ${terapia.duracionMinutos} min | Precio: ${terapia.precio} €",
                                            style = MaterialTheme.typography.bodySmall,
                                            color = colors.onSurfaceVariant)
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

                // Fecha
                CampoFecha(fechaSeleccionada, onFechaChange, colors, formatterFecha)

                // Hora
                CampoSeleccionConIcono(
                    label = "Hora de inicio",
                    icono = Icons.Default.Schedule,
                    valor = horaSeleccionada?.format(formatterHora) ?: "Sin horarios disponibles",
                    expanded = horaDropdownExpanded,
                    onExpandedChange = { horaDropdownExpanded = it },
                    error = horasDisponibles.isEmpty() && !esEdicion
                ) {
                    if (horasDisponibles.isEmpty() && !esEdicion) {
                        DropdownMenuItem(
                            text = { Text("❌ No hay horarios libres", color = colors.error) },
                            onClick = { horaDropdownExpanded = false },
                            enabled = false
                        )
                    } else {
                        horasDisponibles.forEach { hora ->
                            DropdownMenuItem(
                                text = {
                                    Row(verticalAlignment = Alignment.CenterVertically) {
                                        Icon(Icons.Default.AccessTime, contentDescription = "", modifier = Modifier.size(18.dp), tint = colors.primary)
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

                // Duración
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(16.dp),
                    colors = CardDefaults.cardColors(containerColor = colors.primaryContainer.copy(alpha = 0.2f))
                ) {
                    Row(
                        modifier = Modifier.padding(16.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Column {
                            Text(
                                text = if (terapiaSeleccionada != null) "Duración de la terapia" else "Duración",
                                style = MaterialTheme.typography.labelSmall,
                                color = colors.primary
                            )
                            Text(
                                text = "$duracionMinutos minutos",
                                style = MaterialTheme.typography.titleMedium,
                                fontWeight = FontWeight.Bold
                            )
                        }
                        Icon(Icons.Default.Timer, contentDescription = "", tint = colors.primary, modifier = Modifier.size(28.dp))
                    }
                }

                // Motivo
                OutlinedTextField(
                    value = motivo,
                    onValueChange = { motivo = it },
                    label = { Text("Motivo de la cita (opcional)") },
                    modifier = Modifier.fillMaxWidth(),
                    minLines = 2,
                    maxLines = 3,
                    shape = RoundedCornerShape(16.dp)
                )

                // Forma de pago
                Text(
                    text = "Forma de pago",
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.onSurface
                )

                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(16.dp),
                    colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.3f))
                ) {
                    Column(modifier = Modifier.padding(16.dp)) {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(24.dp)
                        ) {
                            Row(
                                modifier = Modifier.weight(1f).clickable { metodoPagoSeleccionado = MetodoPago.PRESENCIAL },
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.PRESENCIAL,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.PRESENCIAL }
                                )
                                Text("Presencial")
                            }
                            Row(
                                modifier = Modifier.weight(1f).clickable { metodoPagoSeleccionado = MetodoPago.ONLINE },
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.ONLINE,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.ONLINE }
                                )
                                Text("Online")
                            }
                        }

                        if (metodoPagoSeleccionado == MetodoPago.ONLINE) {
                            Spacer(modifier = Modifier.height(12.dp))
                            OutlinedTextField(
                                value = monto,
                                onValueChange = {
                                    monto = it
                                    montoError = !validarMonto(it)
                                },
                                label = { Text("Monto (€)") },
                                placeholder = { Text("Ej: 50.00") },
                                isError = montoError,
                                supportingText = {
                                    if (montoError) {
                                        Text("Ingresa un monto válido")
                                    } else if (terapiaSeleccionada != null && monto.isNotBlank()) {
                                        Text("Precio sugerido: ${terapiaSeleccionada!!.precio} €",
                                            style = MaterialTheme.typography.bodySmall,
                                            color = colors.primary)
                                    }
                                },
                                leadingIcon = { Text("€") },
                                singleLine = true,
                                shape = RoundedCornerShape(12.dp),
                                modifier = Modifier.fillMaxWidth()
                            )
                        }
                    }
                }

                // Resumen
                if (!esEdicion && pacienteSeleccionado != null && horaSeleccionada != null && terapiaSeleccionada != null) {
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(16.dp),
                        colors = CardDefaults.cardColors(containerColor = colors.primaryContainer.copy(alpha = 0.15f))
                    ) {
                        Column(modifier = Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
                            Text("📋 Resumen", style = MaterialTheme.typography.titleSmall, fontWeight = FontWeight.Bold, color = colors.primary)
                            Text("• ${pacienteSeleccionado!!.nombre} ${pacienteSeleccionado!!.apellido}")
                            Text("• ${terapiaSeleccionada!!.nombre} - ${terapiaSeleccionada!!.precio} €")
                            Text("• ${fechaSeleccionada.format(formatterFecha)} - ${horaSeleccionada!!.format(formatterHora)}")
                            Text("• Pago: ${if (metodoPagoSeleccionado == MetodoPago.ONLINE) "Online - $monto €" else "Presencial"}")
                            if (motivo.isNotBlank()) Text("• Motivo: $motivo")
                        }
                    }
                }
            }
        },
        confirmButton = {
            val habilitado = pacienteSeleccionado?.idPaciente != null &&
                    horaSeleccionada != null &&
                    terapiaSeleccionada != null &&
                    (horasDisponibles.isNotEmpty() || esEdicion) &&
                    (metodoPagoSeleccionado != MetodoPago.ONLINE || (!montoError && monto.isNotBlank()))

            Button(
                onClick = {
                    val idPaciente = pacienteSeleccionado?.idPaciente
                    if (idPaciente != null && horaSeleccionada != null && terapiaSeleccionada != null) {
                        val montoDecimal = if (metodoPagoSeleccionado == MetodoPago.ONLINE) {
                            try {
                                BigDecimal(monto.replace(",", "."))
                            } catch (e: Exception) {
                                terapiaSeleccionada!!.precio // Fallback al precio de la terapia
                            }
                        } else {
                            BigDecimal.ZERO
                        }
                        onConfirmar(
                            idPaciente,
                            fechaSeleccionada,
                            horaSeleccionada!!,
                            duracionMinutos,
                            motivo.ifBlank { "${terapiaSeleccionada!!.nombre} - Cita psicológica" },
                            terapiaSeleccionada!!.idTipo,
                            metodoPagoSeleccionado,
                            montoDecimal
                        )
                        onDismiss()
                    }
                },
                enabled = habilitado,
                shape = RoundedCornerShape(14.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(if (esEdicion) "💾 Guardar cambios" else "✅ Crear cita", modifier = Modifier.padding(vertical = 4.dp))
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss, shape = RoundedCornerShape(14.dp)) {
                Text("Cancelar")
            }
        }
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CampoSeleccionConIcono(
    label: String,
    icono: ImageVector,
    valor: String,
    expanded: Boolean,
    onExpandedChange: (Boolean) -> Unit,
    error: Boolean = false,
    content: @Composable ExposedDropdownMenuBoxScope.() -> Unit
) {
    val colors = MaterialTheme.colorScheme

    Column {
        Text(
            text = label,
            style = MaterialTheme.typography.labelMedium,
            fontWeight = FontWeight.SemiBold,
            color = colors.onSurface
        )
        Spacer(modifier = Modifier.height(6.dp))
        ExposedDropdownMenuBox(
            expanded = expanded,
            onExpandedChange = onExpandedChange
        ) {
            OutlinedTextField(
                value = valor,
                onValueChange = {},
                readOnly = true,
                leadingIcon = { Icon(icono, contentDescription = null, modifier = Modifier.size(20.dp)) },
                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded) },
                modifier = Modifier
                    .fillMaxWidth()
                    .menuAnchor(MenuAnchorType.PrimaryNotEditable, true),
                singleLine = true,
                shape = RoundedCornerShape(14.dp),
                isError = error,
                colors = OutlinedTextFieldDefaults.colors(
                    focusedBorderColor = colors.primary,
                    unfocusedBorderColor = colors.outline
                )
            )
            ExposedDropdownMenu(
                expanded = expanded,
                onDismissRequest = { onExpandedChange(false) },
                modifier = Modifier.heightIn(max = 300.dp)
            ) {
                content()
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CampoFecha(
    fechaSeleccionada: LocalDate,
    onFechaChange: (LocalDate) -> Unit,
    colors: ColorScheme,
    formatterFecha: DateTimeFormatter
) {
    Column {
        Text(
            text = "Fecha",
            style = MaterialTheme.typography.labelMedium,
            fontWeight = FontWeight.SemiBold,
            color = colors.onSurface
        )
        Spacer(modifier = Modifier.height(6.dp))
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(14.dp),
            colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.3f))
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(12.dp),
                horizontalArrangement = Arrangement.SpaceEvenly,
                verticalAlignment = Alignment.CenterVertically
            ) {
                IconButton(onClick = {
                    fechaSeleccionada.minusDays(1).let { onFechaChange(it) }
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
                            DateTimeFormatter.ofPattern("EEEE", Locale("es", "ES"))
                        ).replaceFirstChar { it.uppercase() },
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.onSurfaceVariant
                    )
                }
                IconButton(onClick = {
                    fechaSeleccionada.plusDays(1).let { onFechaChange(it) }
                }) {
                    Icon(Icons.Default.ChevronRight, contentDescription = "Día siguiente")
                }
            }
        }
    }
}

// ==================== DIÁLOGO CONFIRMAR CANCELACIÓN MEJORADO ====================

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun DialogoConfirmarCancelacionMejorado(
    cita: AgendaItemDTO,
    onConfirmar: () -> Unit,
    onDismiss: () -> Unit
) {
    val colors = MaterialTheme.colorScheme
    val formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy")
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colors.surface,
        shape = RoundedCornerShape(28.dp),
        title = {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(Icons.Default.Warning, contentDescription = " ", tint = colors.error, modifier = Modifier.size(28.dp))
                Spacer(modifier = Modifier.width(12.dp))
                Text(
                    text = "Cancelar cita",
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold
                )
            }
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                Text("¿Estás seguro de que deseas cancelar esta cita?")
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(16.dp),
                    colors = CardDefaults.cardColors(containerColor = colors.errorContainer.copy(alpha = 0.2f))
                ) {
                    Column(modifier = Modifier.padding(16.dp)) {
                        Text(
                            text = cita.nombrePaciente ?: "Paciente",
                            fontWeight = FontWeight.Bold,
                            style = MaterialTheme.typography.titleMedium
                        )
                        Text(
                            text = "${cita.fecha.format(formatterFecha)} • ${cita.horaInicio.format(formatterHora)} - ${cita.horaFin.format(formatterHora)}",
                            style = MaterialTheme.typography.bodyMedium,
                            color = colors.onSurfaceVariant
                        )
                        if (!cita.motivo.isNullOrBlank()) {
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(text = cita.motivo, style = MaterialTheme.typography.bodySmall, color = colors.onSurfaceVariant)
                        }
                    }
                }
                Text("⚠️ Esta acción no se puede deshacer.", style = MaterialTheme.typography.bodySmall, color = colors.error)
            }
        },
        confirmButton = {
            Button(
                onClick = onConfirmar,
                colors = ButtonDefaults.buttonColors(containerColor = colors.error),
                shape = RoundedCornerShape(14.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Text("🗑️ Cancelar cita", modifier = Modifier.padding(vertical = 4.dp))
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss, shape = RoundedCornerShape(14.dp)) {
                Text("Volver")
            }
        }
    )
}