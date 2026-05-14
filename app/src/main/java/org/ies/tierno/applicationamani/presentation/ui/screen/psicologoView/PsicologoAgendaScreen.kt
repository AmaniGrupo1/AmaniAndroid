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
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.FranjaDisponibilidadResponse
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth
import java.time.format.DateTimeFormatter
import java.util.*

// Extensiones de color
val ColorScheme.success: Color
    get() = Color(0xFF4CAF50)

val ColorScheme.warning: Color
    get() = Color(0xFFFF9800)

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PsicologoAgendaScreen(
    navController: NavController,
    viewModel: PsicologoAgendaViewModel,
    listarTerapiasViewModel: ListarTerapiasViewModel
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    val agendaMensual by viewModel.agendaMensual.collectAsStateWithLifecycle()
    val errorMessage by viewModel.errorMessage.collectAsStateWithLifecycle()
    val isLoading by viewModel.isLoading.collectAsStateWithLifecycle()
    val successMessage by viewModel.successMessage.collectAsStateWithLifecycle()
    val horarioActual by viewModel.horarioActual.collectAsStateWithLifecycle()
    val terapias by listarTerapiasViewModel.terapias.collectAsStateWithLifecycle()

    // ✅ MOVIDAS ANTES DEL SCAFFOLD para que estén disponibles
    val userSession by viewModel.userSession.collectAsStateWithLifecycle()
    val idPsicologo = userSession?.idPsicologo
    val isPsicologoReady = idPsicologo != null && idPsicologo > 0L

    var fechaSeleccionada by remember { mutableStateOf<LocalDate?>(null) }
    var mesVisible by remember { mutableStateOf(YearMonth.now()) }

    // Días no laborables (sábados y domingos por defecto)
    val diasNoLaborables = remember(mesVisible) {
        val dias = mutableSetOf<LocalDate>()
        val inicioMes = mesVisible.atDay(1)
        val finMes = mesVisible.atEndOfMonth()
        var fecha = inicioMes
        while (fecha <= finMes) {
            val diaSemana = fecha.dayOfWeek
            if (diaSemana == java.time.DayOfWeek.SATURDAY || diaSemana == java.time.DayOfWeek.SUNDAY) {
                dias.add(fecha)
            }
            fecha = fecha.plusDays(1)
        }
        dias
    }

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
        agendaMensual
            .filter { it.estado?.uppercase() != "CANCELADA" }
            .groupBy { it.fecha }
    }

    val fechasConCitas = citasPorDia.keys
    val citasDelDia = fechaSeleccionada?.let { citasPorDia[it] } ?: emptyList()

    // Días bloqueados extraídos de la agenda
    val diasNoDisponibles = remember(agendaMensual) {
        agendaMensual
            .filter { it.tipo == "bloqueo" }
            .map { it.fecha }
            .toSet()
    }

    val esDiaNoDisponible = fechaSeleccionada?.let { it in diasNoDisponibles } ?: false

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
                    if (isPsicologoReady && fechaSeleccionada != null) {
                        citaParaEditar = null
                        mostrarDialogoCrearEditar = true
                        viewModel.cargarDisponibilidadDia(fechaSeleccionada!!, 60)
                    } else if (!isPsicologoReady) {
                        scope.launch {
                            snackbarHostState.showSnackbar("Cargando datos del psicólogo...")
                        }
                    } else {
                        scope.launch {
                            snackbarHostState.showSnackbar("📅 Selecciona primero una fecha en el calendario")
                        }
                    }
                },
                containerColor = if (isPsicologoReady) colors.primary else colors.primary.copy(alpha = 0.5f),
                contentColor = if (isPsicologoReady) colors.onPrimary else colors.onPrimary.copy(
                    alpha = 0.5f
                ),
                shape = RoundedCornerShape(16.dp),
                modifier = Modifier.size(56.dp)
            ) {
                Icon(
                    Icons.Default.Add,
                    contentDescription = "Añadir Cita",
                    modifier = Modifier.size(28.dp)
                )
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
                        titulo = if (esDiaNoDisponible) "Día bloqueado" else "Bloquear día",
                        subtitulo = when {
                            fechaSeleccionada == null -> "Selecciona un día"
                            esDiaNoDisponible -> "Habilitar día para citas"
                            else -> "Marcar como no disponible"
                        },
                        colorFondo = if (esDiaNoDisponible) colors.primaryContainer.copy(alpha = 0.5f) else colors.errorContainer.copy(
                            alpha = 0.3f
                        ),
                        colorIcono = if (esDiaNoDisponible) colors.primary else colors.error,
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
                        diasBloqueados = diasNoDisponibles,
                        diasNoLaborables = diasNoLaborables,
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
                                                    modifier = Modifier.padding(
                                                        horizontal = 10.dp,
                                                        vertical = 4.dp
                                                    ),
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
                                                    viewModel.cargarDisponibilidadDia(
                                                        cita.fecha,
                                                        cita.duracionMinutos ?: 60
                                                    )
                                                },
                                                onCancel = { citaParaCancelar = cita },
                                                onChangeEstado = { nuevoEstado ->
                                                    viewModel.cambiarEstadoCita(
                                                        cita.id,
                                                        nuevoEstado
                                                    )
                                                },
                                                scope = scope
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
                                            colors = CardDefaults.cardColors(
                                                containerColor = colors.primaryContainer.copy(
                                                    alpha = 0.2f
                                                )
                                            )
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
                            CircularProgressIndicator(
                                color = colors.primary,
                                modifier = Modifier.size(48.dp)
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                "Cargando agenda...",
                                style = typography.bodyMedium,
                                fontWeight = FontWeight.Medium
                            )
                        }
                    }
                }
            }
        }
    }

    // Diálogo Modificar Horario
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

    // Diálogo No Disponible
    if (mostrarDialogoNoDisponible && fechaSeleccionada != null) {
        val fecha = fechaSeleccionada!!

        DialogoNoDisponibleMejorado(
            fecha = fecha,
            yaNoDisponible = esDiaNoDisponible,
            onConfirmar = { bloquear, motivo ->
                scope.launch {
                    if (bloquear) {
                        viewModel.bloquearDia(fecha, motivo)
                        snackbarHostState.showSnackbar(
                            "✅ Día ${
                                fecha.format(
                                    DateTimeFormatter.ofPattern(
                                        "dd/MM/yyyy"
                                    )
                                )
                            } bloqueado"
                        )
                    } else {
                        viewModel.quitarBloqueoDia(fecha)
                        snackbarHostState.showSnackbar(
                            "✅ Día ${
                                fecha.format(
                                    DateTimeFormatter.ofPattern(
                                        "dd/MM/yyyy"
                                    )
                                )
                            } habilitado"
                        )
                    }
                    viewModel.cargarAgendaMensual(mesVisible)
                    mostrarDialogoNoDisponible = false
                }
            },
            onDismiss = {
                mostrarDialogoNoDisponible = false
            }
        )
    }

    // Diálogo Crear/Editar Cita
    if (mostrarDialogoCrearEditar) {
        val citaEditando = citaParaEditar

        DialogoCrearEditarCitaMejorado(
            citaAEditar = citaEditando,
            fechaInicial = fechaSeleccionada ?: LocalDate.now(),
            pacientes = pacientesAsignados,
            pacientesError = pacientesError,
            terapias = terapias,
            onRecargarPacientes = { viewModel.reintentarCargarPacientes() },
            slotsLibres = disponibilidadDia?.slotsLibres ?: emptyList(),
            onFechaChange = { nuevaFecha ->
                viewModel.cargarDisponibilidadDia(nuevaFecha, 60)
            },
            onConfirmar = { idPaciente, fecha, hora, duracion, motivo, idTerapia, metodoPago, estadoPago, monto, modalidad ->
                if (citaEditando != null) {
                    // Modo Edición
                    scope.launch {
                        try {
                            viewModel.editarCita(
                                idCita = citaEditando.id,
                                idPaciente = idPaciente,
                                fecha = fecha,
                                hora = hora,
                                duracionMinutos = duracion,
                                motivo = motivo,
                                idTipoTerapia = idTerapia,
                                metodoPago = metodoPago,
                                estadoPago = estadoPago,
                                monto = monto,
                                modalidad = modalidad
                            )

                        } catch (e: Exception) {
                            snackbarHostState.showSnackbar("Error: ${e.message}")
                        } finally {
                            mostrarDialogoCrearEditar = false
                            citaParaEditar = null
                            viewModel.limpiarDisponibilidad()
                        }
                    }
                } else {
                    // Modo Creación
                    scope.launch {
                        try {
                            val resultado = viewModel.crearCitaDesdePsicologo(
                                idPaciente = idPaciente,
                                fecha = fecha,
                                hora = hora,
                                duracionMinutos = duracion,
                                motivo = motivo,
                                idTipoTerapia = idTerapia,
                                metodoPago = metodoPago,
                                estadoPago = estadoPago,
                                monto = monto,
                                modalidad = modalidad
                            )

                            if (resultado.isSuccess) {
                                val paciente =
                                    pacientesAsignados.find { it.idPaciente == idPaciente }
                                snackbarHostState.showSnackbar(
                                    "✅ Cita creada: ${paciente?.nombre} ${paciente?.apellido} - ${
                                        fecha.format(
                                            DateTimeFormatter.ofPattern("dd/MM/yyyy")
                                        )
                                    } a las $hora"
                                )
                            } else {
                                snackbarHostState.showSnackbar("❌ Error al crear la cita")
                            }
                        } catch (e: Exception) {
                            snackbarHostState.showSnackbar("Error: ${e.message}")
                        } finally {
                            mostrarDialogoCrearEditar = false
                            citaParaEditar = null
                            viewModel.limpiarDisponibilidad()
                        }
                    }
                }
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
                viewModel.cancelarCita(
                    idCita = citaParaCancelar!!.id,
                    fecha = citaParaCancelar!!.fecha,
                    horaInicio = citaParaCancelar!!.horaInicio,
                    duracionMinutos = citaParaCancelar!!.duracionMinutos ?: 60
                )
                scope.launch {
                    snackbarHostState.showSnackbar("🗑️ Cita cancelada correctamente")
                }
                citaParaCancelar = null
            },
            onDismiss = { citaParaCancelar = null }
        )
    }
}

// ==================== COMPONENTES ====================

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
            Text(titulo, style = MaterialTheme.typography.titleSmall, fontWeight = FontWeight.Bold)
            Text(
                subtitulo,
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
                Text(
                    "Seleccionado",
                    style = MaterialTheme.typography.labelSmall,
                    color = colors.onSurfaceVariant
                )
            }
            Row(verticalAlignment = Alignment.CenterVertically) {
                Box(
                    modifier = Modifier
                        .size(14.dp)
                        .clip(RoundedCornerShape(4.dp))
                        .background(colors.tertiary)
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    "Con citas",
                    style = MaterialTheme.typography.labelSmall,
                    color = colors.onSurfaceVariant
                )
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
        color = if (esDiaNoDisponible) colors.errorContainer.copy(alpha = 0.3f) else colors.primaryContainer.copy(
            alpha = 0.3f
        )
    ) {
        Row(modifier = Modifier.padding(16.dp), verticalAlignment = Alignment.CenterVertically) {
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
                        "⚠️ Día no disponible para citas",
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.error
                    )
                } else {
                    Text(
                        "Horario disponible según configuración",
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
fun TarjetaCitaMejorada(
    scope: CoroutineScope,
    cita: AgendaItemDTO,
    onEdit: () -> Unit,
    onCancel: () -> Unit,
    onChangeEstado: (EstadoCita) -> Unit
) {
    val colors = MaterialTheme.colorScheme
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")
    var menuExpanded by remember { mutableStateOf(false) }
    var isUpdating by remember { mutableStateOf(false) }

    val estadosDisponibles = listOf(
        EstadoCita.pendiente to "⏳ Pendiente",
        EstadoCita.confirmada to "✅ Confirmada",
        EstadoCita.completada to "🏁 Completada",
        EstadoCita.cancelada to "❌ Cancelada"
    )

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        colors = CardDefaults.cardColors(containerColor = colors.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            // Cabecera: Icono + Nombre del paciente
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.weight(1f)) {
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
                    Text(
                        cita.nombrePaciente ?: "Paciente",
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold
                    )
                }

                // Indicador visual del estado actual
                Surface(
                    shape = RoundedCornerShape(12.dp),
                    color = when (cita.estado?.uppercase()) {
                        "CONFIRMADA" -> colors.primary.copy(alpha = 0.15f)
                        "CANCELADA" -> colors.error.copy(alpha = 0.15f)
                        "COMPLETADA" -> colors.success.copy(alpha = 0.15f)
                        else -> colors.tertiary.copy(alpha = 0.15f)
                    },
                    modifier = Modifier.size(32.dp)
                ) {
                    Box(contentAlignment = Alignment.Center) {
                        if (isUpdating) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(20.dp),
                                strokeWidth = 2.dp,
                                color = when (cita.estado?.uppercase()) {
                                    "CONFIRMADA" -> colors.primary
                                    "CANCELADA" -> colors.error
                                    "COMPLETADA" -> colors.success
                                    else -> colors.tertiary
                                }
                            )
                        } else {
                            IconButton(
                                onClick = { menuExpanded = true },
                                modifier = Modifier.size(32.dp)
                            ) {
                                Icon(
                                    when (cita.estado?.uppercase()) {
                                        "CONFIRMADA" -> Icons.Default.CheckCircle
                                        "CANCELADA" -> Icons.Default.Cancel
                                        "COMPLETADA" -> Icons.Default.DoneAll
                                        else -> Icons.Default.Schedule
                                    },
                                    contentDescription = "Cambiar estado",
                                    modifier = Modifier.size(20.dp),
                                    tint = when (cita.estado?.uppercase()) {
                                        "CONFIRMADA" -> colors.primary
                                        "CANCELADA" -> colors.error
                                        "COMPLETADA" -> colors.success
                                        else -> colors.tertiary
                                    }
                                )
                            }
                        }
                    }
                }

                DropdownMenu(
                    expanded = menuExpanded,
                    onDismissRequest = { menuExpanded = false }
                ) {
                    estadosDisponibles.forEach { (estado, label) ->
                        DropdownMenuItem(
                            text = {
                                Row(verticalAlignment = Alignment.CenterVertically) {
                                    Icon(
                                        when (estado) {
                                            EstadoCita.confirmada -> Icons.Default.CheckCircle
                                            EstadoCita.cancelada -> Icons.Default.Cancel
                                            EstadoCita.completada -> Icons.Default.DoneAll
                                            else -> Icons.Default.Schedule
                                        },
                                        contentDescription = null,
                                        modifier = Modifier.size(18.dp),
                                        tint = when (estado) {
                                            EstadoCita.confirmada -> colors.primary
                                            EstadoCita.cancelada -> colors.error
                                            EstadoCita.completada -> colors.success
                                            else -> colors.tertiary
                                        }
                                    )
                                    Spacer(modifier = Modifier.width(8.dp))
                                    Text(label)
                                }
                            },
                            onClick = {
                                if (estado.name.uppercase() != cita.estado?.uppercase()) {
                                    isUpdating = true
                                    menuExpanded = false
                                    onChangeEstado(estado)
                                    scope.launch {
                                        delay(1000)
                                        isUpdating = false
                                    }
                                } else {
                                    menuExpanded = false
                                }
                            }
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Horario
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Icon(
                    Icons.Default.AccessTime,
                    contentDescription = null,
                    modifier = Modifier.size(18.dp),
                    tint = colors.onSurfaceVariant
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    "${cita.horaInicio.format(formatterHora)} - ${cita.horaFin.format(formatterHora)}",
                    style = MaterialTheme.typography.bodyMedium,
                    color = colors.onSurfaceVariant
                )
            }

            // ✅ Duración de la terapia
            Spacer(modifier = Modifier.height(6.dp))
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Icon(
                    Icons.Default.Timer,
                    contentDescription = null,
                    modifier = Modifier.size(16.dp),
                    tint = colors.primary
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    "Duración: ${cita.duracionMinutos ?: 60} min",
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.primary,
                    fontWeight = FontWeight.Medium
                )
            }

            // ✅ Modalidad de la cita
            Spacer(modifier = Modifier.height(4.dp))
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Icon(
                    when (cita.modalidad) {
                        ModalidadCita.PRESENCIAL -> Icons.Default.LocationOn
                        ModalidadCita.LLAMADA -> Icons.Default.Phone
                        null -> Icons.Default.Info
                    },
                    contentDescription = null,
                    modifier = Modifier.size(16.dp),
                    tint = colors.primary
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    text = when (cita.modalidad) {
                        ModalidadCita.PRESENCIAL -> "Presencial"
                        ModalidadCita.LLAMADA -> "Llamada"
                        null -> "Modalidad no especificada"
                    },
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.primary,
                    fontWeight = FontWeight.Medium
                )
            }

            // ✅ Método de pago
            Spacer(modifier = Modifier.height(4.dp))
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Icon(
                    when (cita.metodoPago) {
                        MetodoPago.EFECTIVO -> Icons.Default.Money
                        MetodoPago.TARJETA -> Icons.Default.CreditCard
                        null -> Icons.Default.Info
                    },
                    contentDescription = null,
                    modifier = Modifier.size(16.dp),
                    tint = colors.primary
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    text = when (cita.metodoPago) {
                        MetodoPago.EFECTIVO -> "Pago en efectivo"
                        MetodoPago.TARJETA -> "Pago con tarjeta"
                        null -> "Método de pago no especificado"
                    },
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.primary,
                    fontWeight = FontWeight.Medium
                )
            }

            // Motivo
            if (!cita.motivo.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(8.dp))
                Row(verticalAlignment = Alignment.Top, modifier = Modifier.fillMaxWidth()) {
                    Icon(
                        Icons.Default.Description,
                        contentDescription = null,
                        modifier = Modifier.size(18.dp),
                        tint = colors.onSurfaceVariant
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        cita.motivo,
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.onSurfaceVariant,
                        modifier = Modifier.weight(1f)
                    )
                }
            }

            // Tipo de terapia
            Spacer(modifier = Modifier.height(8.dp))
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Icon(
                    Icons.Default.MedicalServices,
                    contentDescription = null,
                    modifier = Modifier.size(18.dp),
                    tint = colors.primary
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    cita.terapia?.nombre ?: "Terapia no especificada",
                    style = MaterialTheme.typography.bodyMedium,
                    color = colors.primary,
                    fontWeight = FontWeight.Medium
                )
            }

            // Estado de Pago
            Spacer(modifier = Modifier.height(8.dp))
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Icon(
                    when (cita.estadoPago) {
                        EstadoPago.PAGADO -> Icons.Default.CheckCircle
                        EstadoPago.PENDIENTE -> Icons.Default.Schedule
                        EstadoPago.FALLIDO -> Icons.Default.Error
                        EstadoPago.REEMBOLSADO -> Icons.Default.Info
                        null -> Icons.Default.Info
                    },
                    contentDescription = null,
                    modifier = Modifier.size(18.dp),
                    tint = when (cita.estadoPago) {
                        EstadoPago.PAGADO -> colors.success
                        EstadoPago.PENDIENTE -> colors.warning
                        EstadoPago.FALLIDO -> colors.error
                        EstadoPago.REEMBOLSADO -> colors.primary
                        null -> colors.onSurfaceVariant
                    }
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    text = when (cita.estadoPago) {
                        EstadoPago.PAGADO -> "Pagado"
                        EstadoPago.PENDIENTE -> "Pendiente"
                        EstadoPago.FALLIDO -> "Fallido"
                        EstadoPago.REEMBOLSADO -> "Reembolsado"
                        null -> "Sin información"
                    },
                    style = MaterialTheme.typography.bodySmall,
                    color = when (cita.estadoPago) {
                        EstadoPago.PAGADO -> colors.success
                        EstadoPago.PENDIENTE -> colors.warning
                        EstadoPago.FALLIDO -> colors.error
                        EstadoPago.REEMBOLSADO -> colors.primary
                        null -> colors.onSurfaceVariant
                    }
                )
            }

            Spacer(modifier = Modifier.height(12.dp))
            Divider(color = colors.outline.copy(alpha = 0.3f))
            Spacer(modifier = Modifier.height(12.dp))

            // Botones de acción
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.End,
                verticalAlignment = Alignment.CenterVertically
            ) {
                TextButton(
                    onClick = onEdit,
                    colors = ButtonDefaults.textButtonColors(contentColor = colors.primary),
                    enabled = !isUpdating
                ) {
                    Icon(Icons.Default.Edit, contentDescription = null, modifier = Modifier.size(18.dp))
                    Spacer(modifier = Modifier.width(6.dp))
                    Text("Editar", style = MaterialTheme.typography.labelMedium)
                }
                Spacer(modifier = Modifier.width(8.dp))
                TextButton(
                    onClick = onCancel,
                    colors = ButtonDefaults.textButtonColors(contentColor = colors.error),
                    enabled = !isUpdating
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
                "Día no disponible",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold,
                color = colors.error
            )
            Text(
                "No se pueden agendar citas en esta fecha",
                style = MaterialTheme.typography.bodySmall,
                color = colors.onSurfaceVariant,
                textAlign = TextAlign.Center
            )
        }
    }
}

// ==================== DIÁLOGO MODIFICAR HORARIO ====================

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
        "Lunes" to 0, "Martes" to 1, "Miércoles" to 2, "Jueves" to 3,
        "Viernes" to 4, "Sábado" to 5, "Domingo" to 6
    )

    val franjasEditables = remember { mutableStateListOf<MutableState<FranjaHorarioDTO>>() }

    LaunchedEffect(horario) {
        val data = horario ?: return@LaunchedEffect
        franjasEditables.clear()
        diasSemana.forEach { (_, diaNum) ->
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
                    "⏰ Configurar Horario",
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                    color = colors.primary
                )
                Text(
                    "Define tus días y horas de atención",
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
                            containerColor = if (franja.activo) colors.primaryContainer.copy(alpha = 0.15f) else colors.surfaceVariant.copy(
                                alpha = 0.3f
                            )
                        )
                    ) {
                        Column(modifier = Modifier.padding(16.dp)) {
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
                                        })
                                    Text(
                                        diaNombre,
                                        style = MaterialTheme.typography.titleSmall,
                                        fontWeight = FontWeight.Medium
                                    )
                                }
                                if (franja.activo) {
                                    Text(
                                        "${franja.horaInicio} - ${franja.horaFin}",
                                        style = MaterialTheme.typography.labelSmall,
                                        color = colors.primary
                                    )
                                }
                            }

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
                                            HoraSelector(horaActual = franja.horaInicio) { nueva ->
                                                state.value = franja.copy(horaInicio = nueva)
                                            }
                                        }
                                        Column(modifier = Modifier.weight(1f)) {
                                            Text("Hora fin")
                                            HoraSelector(horaActual = franja.horaFin) { nueva ->
                                                state.value = franja.copy(horaFin = nueva)
                                            }
                                        }
                                    }
                                    val inicio =
                                        runCatching { LocalTime.parse(franja.horaInicio) }.getOrNull()
                                    val fin =
                                        runCatching { LocalTime.parse(franja.horaFin) }.getOrNull()
                                    if (inicio != null && fin != null && !inicio.isBefore(fin)) {
                                        Text(
                                            "⚠️ La hora de inicio debe ser anterior a la hora de fin",
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
                onClick = { onConfirmar(franjasEditables.map { it.value }) },
                modifier = Modifier.fillMaxWidth()
            ) {
                Text("💾 Guardar horario")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) { Text("Cancelar") }
        }
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HoraSelector(horaActual: String, onHoraSeleccionada: (String) -> Unit) {
    var expanded by remember { mutableStateOf(false) }
    val horas =
        (0..23).flatMap { h -> listOf("00", "30").map { m -> String.format("%02d:%s", h, m) } }

    ExposedDropdownMenuBox(expanded = expanded, onExpandedChange = { expanded = !expanded }) {
        OutlinedTextField(
            value = horaActual,
            onValueChange = {},
            readOnly = true,
            modifier = Modifier.menuAnchor()
        )
        ExposedDropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }) {
            horas.forEach { hora ->
                DropdownMenuItem(
                    text = { Text(hora) },
                    onClick = { onHoraSeleccionada(hora); expanded = false })
            }
        }
    }
}

// ==================== DIÁLOGO NO DISPONIBLE ====================

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun DialogoNoDisponibleMejorado(
    fecha: LocalDate,
    yaNoDisponible: Boolean,
    onConfirmar: (bloquear: Boolean, motivo: String?) -> Unit,
    onDismiss: () -> Unit
) {
    val colors = MaterialTheme.colorScheme
    val formatterFecha = DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM", Locale("es", "ES"))
    var motivoBloqueo by remember { mutableStateOf("") }

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
                    if (yaNoDisponible) "Habilitar día" else "Bloquear día",
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold
                )
            }
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                Text(
                    fecha.format(formatterFecha).replaceFirstChar { it.uppercase() },
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.primary
                )
                if (yaNoDisponible) {
                    Text(
                        "¿Deseas habilitar este día para recibir citas?",
                        style = MaterialTheme.typography.bodyMedium
                    )
                } else {
                    Text(
                        "¿Deseas bloquear este día? No se podrán agendar nuevas citas.",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    OutlinedTextField(
                        value = motivoBloqueo,
                        onValueChange = { motivoBloqueo = it },
                        label = { Text("Motivo (opcional)") },
                        placeholder = { Text("Ej: Formación, Vacaciones, etc.") },
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(14.dp),
                        minLines = 2,
                        maxLines = 3
                    )
                }
                if (!yaNoDisponible) {
                    Card(
                        shape = RoundedCornerShape(12.dp),
                        colors = CardDefaults.cardColors(
                            containerColor = colors.surfaceContainerLow.copy(alpha = 0.3f)
                        )
                    ) {
                        Row(
                            modifier = Modifier.padding(12.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Icon(
                                Icons.Default.Info,
                                contentDescription = "",
                                tint = colors.onSurfaceVariant,
                                modifier = Modifier.size(20.dp)
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                "Las citas existentes no se cancelarán automáticamente",
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
                onClick = {
                    if (yaNoDisponible) onConfirmar(false, null)
                    else onConfirmar(true, motivoBloqueo.takeIf { it.isNotBlank() })
                    onDismiss()
                },
                colors = ButtonDefaults.buttonColors(containerColor = if (yaNoDisponible) colors.primary else colors.error),
                shape = RoundedCornerShape(14.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(
                    if (yaNoDisponible) "✅ Habilitar día" else "🚫 Bloquear día",
                    modifier = Modifier.padding(vertical = 4.dp)
                )
            }
        },
        dismissButton = {
            TextButton(
                onClick = { motivoBloqueo = ""; onDismiss() },
                shape = RoundedCornerShape(14.dp)
            ) { Text("Cancelar") }
        }
    )
}

// ==================== DIÁLOGO CREAR/EDITAR CITA ====================

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
    onConfirmar: (idPaciente: Long, fecha: LocalDate, hora: LocalTime, duracion: Int, motivo: String, idTerapia: Long, metodoPago: MetodoPago, estadoPago: EstadoPago, monto: BigDecimal, modalidad: ModalidadCita) -> Unit,
    onDismiss: () -> Unit
) {
    val esEdicion = citaAEditar != null
    val colors = MaterialTheme.colorScheme
    val formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy")
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")

    var fechaSeleccionada by remember { mutableStateOf(citaAEditar?.fecha ?: fechaInicial) }
    var motivo by remember { mutableStateOf(citaAEditar?.motivo ?: "") }
    var duracionMinutos by remember { mutableIntStateOf(citaAEditar?.duracionMinutos ?: 60) }

    val metodoPagoInicial =
        remember(citaAEditar) { citaAEditar?.metodoPago ?: MetodoPago.EFECTIVO }
    var metodoPagoSeleccionado by remember { mutableStateOf(metodoPagoInicial) }

    val estadoPagoInicial =
        remember(citaAEditar) { citaAEditar?.estadoPago ?: EstadoPago.PENDIENTE }
    var estadoPagoSeleccionado by remember { mutableStateOf(estadoPagoInicial) }

    val modalidadInicial =
        remember(citaAEditar) { citaAEditar?.modalidad ?: ModalidadCita.PRESENCIAL }
    var modalidadSeleccionada by remember { mutableStateOf(modalidadInicial) }
    var modalidadDropdownExpanded by remember { mutableStateOf(false) }

    var monto by remember { mutableStateOf(citaAEditar?.terapia?.precio?.toString() ?: "") }
    var montoError by remember { mutableStateOf(false) }

    var pacienteSeleccionado by remember { mutableStateOf(citaAEditar?.let { pacientes.find { it.idPaciente == citaAEditar.id } }) }
    var pacienteDropdownExpanded by remember { mutableStateOf(false) }

    var terapiaSeleccionada by remember { mutableStateOf(citaAEditar?.terapia?.let { terapias.find { it.idTipo == it.idTipo } }) }
    var terapiaDropdownExpanded by remember { mutableStateOf(false) }

    val horasDisponibles = remember(slotsLibres, citaAEditar, fechaSeleccionada) {
        val libres = slotsLibres.filter { !it.ocupado }.map { it.hora }.sorted()
        if (esEdicion && citaAEditar != null) {
            val horaEdicion = citaAEditar.horaInicio
            if (horaEdicion !in libres) (listOf(horaEdicion) + libres).distinct()
                .sorted() else libres
        } else libres
    }

    var horaSeleccionada by remember { mutableStateOf(if (esEdicion && citaAEditar != null) citaAEditar.horaInicio else horasDisponibles.firstOrNull()) }
    var horaDropdownExpanded by remember { mutableStateOf(false) }

    LaunchedEffect(terapiaSeleccionada) {
        terapiaSeleccionada?.let { terapia ->
            duracionMinutos = terapia.duracionMinutos
            val precio = terapia.precio ?: BigDecimal.ZERO
            monto = precio.toString()
            montoError = false
        }
    }

    fun validarMonto(input: String): Boolean =
        input.isNotBlank() && runCatching { BigDecimal(input.replace(",", ".")) }.isSuccess

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colors.surface,
        shape = RoundedCornerShape(28.dp),
        title = {
            Column {
                Text(
                    if (esEdicion) "✏️ Editar cita" else "📅 Nueva cita",
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                    color = colors.primary
                )
                Text(
                    if (esEdicion) "Modifica los datos de la cita" else "Completa la información para agendar",
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.onSurfaceVariant
                )
            }
        },
        text = {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = 600.dp)
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
                        pacientesError != null -> DropdownMenuItem(
                            text = {
                                Row {
                                    Icon(
                                        Icons.Default.Error,
                                        contentDescription = "",
                                        tint = colors.error
                                    ); Spacer(modifier = Modifier.width(8.dp)); Column {
                                    Text(
                                        "Error al cargar pacientes",
                                        color = colors.error
                                    ); Text(
                                    pacientesError!!,
                                    style = MaterialTheme.typography.bodySmall
                                )
                                }
                                }
                            },
                            onClick = { onRecargarPacientes() },
                            leadingIcon = { Icon(Icons.Default.Refresh, contentDescription = "") }
                        )

                        pacientes.isEmpty() -> DropdownMenuItem(
                            text = { Text("No hay pacientes asignados") },
                            onClick = { pacienteDropdownExpanded = false },
                            enabled = false
                        )

                        else -> pacientes.forEach { paciente ->
                            DropdownMenuItem(
                                text = {
                                    Column {
                                        Text(
                                            "${paciente.nombre ?: ""} ${paciente.apellido ?: ""}",
                                            fontWeight = FontWeight.Medium
                                        ); Text(
                                        paciente.email ?: "",
                                        style = MaterialTheme.typography.bodySmall,
                                        color = colors.onSurfaceVariant
                                    )
                                    }
                                },
                                onClick = {
                                    pacienteSeleccionado = paciente; pacienteDropdownExpanded =
                                    false
                                }
                            )
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
                    if (terapias.isEmpty()) DropdownMenuItem(
                        text = { Text("No hay tipos de terapia disponibles") },
                        onClick = { terapiaDropdownExpanded = false },
                        enabled = false
                    )
                    else terapias.forEach { terapia ->
                        DropdownMenuItem(
                            text = {
                                Column {
                                    Text(
                                        terapia.nombre,
                                        fontWeight = FontWeight.Medium
                                    ); Text(
                                    "Duración: ${terapia.duracionMinutos} min | Precio: ${terapia.precio} €",
                                    style = MaterialTheme.typography.bodySmall,
                                    color = colors.onSurfaceVariant
                                )
                                }
                            },
                            onClick = {
                                terapiaSeleccionada = terapia; terapiaDropdownExpanded = false
                            }
                        )
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
                        DropdownMenuItem(text = {
                            Column {
                                Text(
                                    "❌ No hay horarios libres",
                                    color = colors.error
                                ); Text(
                                "Prueba con otra fecha",
                                style = MaterialTheme.typography.bodySmall
                            )
                            }
                        }, onClick = { horaDropdownExpanded = false }, enabled = false)
                    } else {
                        horasDisponibles.forEach { hora ->
                            DropdownMenuItem(
                                text = {
                                    Row(verticalAlignment = Alignment.CenterVertically) {
                                        Icon(
                                            Icons.Default.AccessTime,
                                            contentDescription = "",
                                            modifier = Modifier.size(18.dp),
                                            tint = colors.primary
                                        )
                                        Spacer(modifier = Modifier.width(8.dp))
                                        Column {
                                            Text(
                                                hora.format(formatterHora),
                                                fontWeight = FontWeight.Medium
                                            )
                                            Text(
                                                "Duración: $duracionMinutos min",
                                                style = MaterialTheme.typography.bodySmall,
                                                color = colors.onSurfaceVariant
                                            )
                                        }
                                    }
                                },
                                onClick = { horaSeleccionada = hora; horaDropdownExpanded = false }
                            )
                        }
                    }
                }

                // Duración
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(16.dp),
                    colors = CardDefaults.cardColors(
                        containerColor = colors.primaryContainer.copy(alpha = 0.2f)
                    )
                ) {
                    Row(
                        modifier = Modifier.padding(16.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Column {
                            Text(
                                if (terapiaSeleccionada != null) "Duración de la terapia" else "Duración",
                                style = MaterialTheme.typography.labelSmall,
                                color = colors.primary
                            ); Text(
                            "$duracionMinutos minutos",
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold
                        )
                        }
                        Icon(
                            Icons.Default.Timer,
                            contentDescription = "",
                            tint = colors.primary,
                            modifier = Modifier.size(28.dp)
                        )
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

                // Modalidad
                Text(
                    "Modalidad de la cita",
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.onSurface
                )
                Spacer(modifier = Modifier.height(6.dp))
                ExposedDropdownMenuBox(
                    expanded = modalidadDropdownExpanded,
                    onExpandedChange = { modalidadDropdownExpanded = it }) {
                    OutlinedTextField(
                        value = when (modalidadSeleccionada) {
                            ModalidadCita.PRESENCIAL -> "🏢 Presencial"; ModalidadCita.LLAMADA -> "📞 Llamada"
                        },
                        onValueChange = {},
                        readOnly = true,
                        leadingIcon = {
                            Icon(
                                if (modalidadSeleccionada == ModalidadCita.PRESENCIAL) Icons.Default.LocationOn else Icons.Default.Phone,
                                contentDescription = "Modalidad"
                            )
                        },
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = modalidadDropdownExpanded) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .menuAnchor(),
                        shape = RoundedCornerShape(14.dp)
                    )
                    ExposedDropdownMenu(
                        expanded = modalidadDropdownExpanded,
                        onDismissRequest = { modalidadDropdownExpanded = false }) {
                        DropdownMenuItem(
                            text = {
                                Row {
                                    Icon(
                                        Icons.Default.LocationOn,
                                        contentDescription = "",
                                        modifier = Modifier.size(20.dp)
                                    ); Spacer(modifier = Modifier.width(8.dp)); Text("Presencial")
                                }
                            },
                            onClick = {
                                modalidadSeleccionada =
                                    ModalidadCita.PRESENCIAL; modalidadDropdownExpanded = false
                            })
                        DropdownMenuItem(
                            text = {
                                Row {
                                    Icon(
                                        Icons.Default.Phone,
                                        contentDescription = "",
                                        modifier = Modifier.size(20.dp)
                                    ); Spacer(modifier = Modifier.width(8.dp)); Text("Llamada")
                                }
                            },
                            onClick = {
                                modalidadSeleccionada =
                                    ModalidadCita.LLAMADA; modalidadDropdownExpanded = false
                            })
                    }
                }

                // Información de pago
                Text(
                    "Información de pago",
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.onSurface
                )
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(16.dp),
                    colors = CardDefaults.cardColors(
                        containerColor = colors.surfaceVariant.copy(alpha = 0.3f)
                    )
                ) {
                    Column(modifier = Modifier.padding(16.dp)) {
                        Text(
                            "Método de pago",
                            style = MaterialTheme.typography.labelSmall,
                            color = colors.onSurfaceVariant
                        )
                        Spacer(modifier = Modifier.height(8.dp))
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(24.dp)
                        ) {
                            Row(
                                modifier = Modifier.weight(1f),
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.EFECTIVO,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.EFECTIVO })
                                Text("Presencial")
                            }
                            Row(
                                modifier = Modifier.weight(1f),
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.TARJETA,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.TARJETA })
                                Text("Online")
                            }
                        }

                        Spacer(modifier = Modifier.height(12.dp))
                        Text(
                            "Estado del pago",
                            style = MaterialTheme.typography.labelSmall,
                            color = colors.onSurfaceVariant
                        )
                        Spacer(modifier = Modifier.height(8.dp))

                        var estadoPagoExpanded by remember { mutableStateOf(false) }
                        val opcionesEstadoPago =
                            listOf("PENDIENTE", "PAGADO", "FALLIDO", "REEMBOLSADO")

                        ExposedDropdownMenuBox(
                            expanded = estadoPagoExpanded,
                            onExpandedChange = { estadoPagoExpanded = it }) {
                            OutlinedTextField(
                                value = estadoPagoSeleccionado.name,
                                onValueChange = {},
                                readOnly = true,
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .menuAnchor(),
                                shape = RoundedCornerShape(12.dp)
                            )
                            ExposedDropdownMenu(
                                expanded = estadoPagoExpanded,
                                onDismissRequest = { estadoPagoExpanded = false }) {
                                opcionesEstadoPago.forEach { opcion ->
                                    DropdownMenuItem(
                                        text = {
                                            Row {
                                                Icon(
                                                    when (opcion) {
                                                        "PAGADO" -> Icons.Default.CheckCircle; "PENDIENTE" -> Icons.Default.Schedule; "FALLIDO" -> Icons.Default.Error; else -> Icons.Default.Info
                                                    },
                                                    contentDescription = "Estado $opcion",
                                                    modifier = Modifier.size(18.dp)
                                                ); Spacer(modifier = Modifier.width(8.dp)); Text(
                                                opcion
                                            )
                                            }
                                        },
                                        onClick = {
                                            estadoPagoSeleccionado =
                                                EstadoPago.valueOf(opcion); estadoPagoExpanded =
                                            false
                                        }
                                    )
                                }
                            }
                        }

                        Spacer(modifier = Modifier.height(12.dp))
                        OutlinedTextField(
                            value = monto,
                            onValueChange = { monto = it; montoError = !validarMonto(it) },
                            label = { Text("Monto (€)") },
                            placeholder = { Text("Ej: 50.00") },
                            isError = montoError,
                            supportingText = {
                                if (montoError) Text("Ingresa un monto válido") else if (terapiaSeleccionada != null && monto.isNotBlank()) Text(
                                    "Precio sugerido: ${terapiaSeleccionada!!.precio} €",
                                    style = MaterialTheme.typography.bodySmall,
                                    color = colors.primary
                                )
                            },
                            leadingIcon = { Text("€") },
                            singleLine = true,
                            shape = RoundedCornerShape(12.dp),
                            modifier = Modifier.fillMaxWidth()
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(
                            when (metodoPagoSeleccionado) {
                                MetodoPago.TARJETA -> "💳 El pago se procesará online al momento de agendar la cita"; MetodoPago.EFECTIVO -> "💰 El pago se realizará en consulta el día de la cita"
                            },
                            style = MaterialTheme.typography.bodySmall,
                            color = colors.onSurfaceVariant
                        )
                    }
                }
            }
        },
        confirmButton = {
            val habilitado =
                pacienteSeleccionado?.idPaciente != null && horaSeleccionada != null && terapiaSeleccionada != null && (horasDisponibles.isNotEmpty() || esEdicion) && (!montoError && monto.isNotBlank())
            Button(
                onClick = {
                    pacienteSeleccionado?.idPaciente?.let { idPaciente ->
                        val montoDecimal =
                            if (metodoPagoSeleccionado == MetodoPago.TARJETA) runCatching {
                                BigDecimal(monto.replace(",", "."))
                            }.getOrElse(
                                { terapiaSeleccionada!!.precio }) else BigDecimal.ZERO
                        onConfirmar(
                            idPaciente,
                            fechaSeleccionada,
                            horaSeleccionada!!,
                            duracionMinutos,
                            motivo.ifBlank { "${terapiaSeleccionada!!.nombre} - Cita psicológica" },
                            terapiaSeleccionada!!.idTipo,
                            metodoPagoSeleccionado,
                            estadoPagoSeleccionado,
                            montoDecimal,
                            modalidadSeleccionada
                        )
                        onDismiss()
                    }
                },
                enabled = habilitado,
                shape = RoundedCornerShape(14.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(
                    if (esEdicion) "💾 Guardar cambios" else "✅ Crear cita",
                    modifier = Modifier.padding(vertical = 4.dp)
                )
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss, shape = RoundedCornerShape(14.dp)) {
                Text(
                    "Cancelar"
                )
            }
        }
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CampoSeleccionConIcono(
    label: String, icono: ImageVector, valor: String, expanded: Boolean,
    onExpandedChange: (Boolean) -> Unit, error: Boolean = false,
    content: @Composable ExposedDropdownMenuBoxScope.() -> Unit
) {
    val colors = MaterialTheme.colorScheme
    Column {
        Text(
            label,
            style = MaterialTheme.typography.labelMedium,
            fontWeight = FontWeight.SemiBold,
            color = colors.onSurface
        )
        Spacer(modifier = Modifier.height(6.dp))
        ExposedDropdownMenuBox(expanded = expanded, onExpandedChange = onExpandedChange) {
            OutlinedTextField(
                value = valor, onValueChange = {}, readOnly = true,
                leadingIcon = {
                    Icon(
                        icono,
                        contentDescription = label,
                        modifier = Modifier.size(20.dp)
                    )
                },
                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded) },
                modifier = Modifier
                    .fillMaxWidth()
                    .menuAnchor(MenuAnchorType.PrimaryNotEditable, true),
                singleLine = true, shape = RoundedCornerShape(14.dp), isError = error,
                colors = OutlinedTextFieldDefaults.colors(
                    focusedBorderColor = colors.primary,
                    unfocusedBorderColor = colors.outline
                )
            )
            ExposedDropdownMenu(
                expanded = expanded,
                onDismissRequest = { onExpandedChange(false) },
                modifier = Modifier.heightIn(max = 300.dp)
            ) { content() }
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
            "Fecha",
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
                IconButton(onClick = { onFechaChange(fechaSeleccionada.minusDays(1)) }) {
                    Icon(
                        Icons.Default.ChevronLeft,
                        contentDescription = "Día anterior"
                    )
                }
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(
                        fechaSeleccionada.format(formatterFecha),
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold
                    )
                    Text(
                        fechaSeleccionada.format(
                            DateTimeFormatter.ofPattern(
                                "EEEE",
                                Locale("es", "ES")
                            )
                        ).replaceFirstChar { it.uppercase() },
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.onSurfaceVariant
                    )
                }
                IconButton(onClick = { onFechaChange(fechaSeleccionada.plusDays(1)) }) {
                    Icon(
                        Icons.Default.ChevronRight,
                        contentDescription = "Día siguiente"
                    )
                }
            }
        }
    }
}

// ==================== DIÁLOGO CONFIRMAR CANCELACIÓN ====================

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
                Icon(
                    Icons.Default.Warning,
                    contentDescription = " ",
                    tint = colors.error,
                    modifier = Modifier.size(28.dp)
                )
                Spacer(modifier = Modifier.width(12.dp))
                Text(
                    "Cancelar cita",
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
                    colors = CardDefaults.cardColors(
                        containerColor = colors.errorContainer.copy(alpha = 0.2f)
                    )
                ) {
                    Column(modifier = Modifier.padding(16.dp)) {
                        Text(
                            cita.nombrePaciente ?: "Paciente",
                            fontWeight = FontWeight.Bold,
                            style = MaterialTheme.typography.titleMedium
                        )
                        Text(
                            "${cita.fecha.format(formatterFecha)} • ${
                                cita.horaInicio.format(
                                    formatterHora
                                )
                            } - ${cita.horaFin.format(formatterHora)}",
                            style = MaterialTheme.typography.bodyMedium,
                            color = colors.onSurfaceVariant
                        )
                        if (!cita.motivo.isNullOrBlank()) {
                            Spacer(modifier = Modifier.height(8.dp)); Text(
                                cita.motivo,
                                style = MaterialTheme.typography.bodySmall,
                                color = colors.onSurfaceVariant
                            )
                        }
                    }
                }
                Text(
                    "⚠️ Esta acción no se puede deshacer.",
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.error
                )
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
            TextButton(onClick = onDismiss, shape = RoundedCornerShape(14.dp)) { Text("Volver") }
        }
    )
}