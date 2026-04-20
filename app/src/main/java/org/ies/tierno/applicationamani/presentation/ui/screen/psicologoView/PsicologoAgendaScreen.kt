@file:Suppress("DEPRECATION")

package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInVertically
import androidx.compose.animation.slideOutVertically
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AccessTime
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.Cancel
import androidx.compose.material.icons.filled.ChevronLeft
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.EventBusy
import androidx.compose.material.icons.filled.EventNote
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Badge
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Checkbox
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.MenuAnchorType
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.RadioButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
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
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import org.koin.androidx.compose.koinViewModel
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth
import java.time.format.DateTimeFormatter
import java.util.Locale

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
    val diasNoDisponibles = emptySet<LocalDate>() // Placeholder, implementar si se necesita

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
                        fechasDestacadas = fechasConCitas,
                        onMesVisibleChange = { mesVisible = it },
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
                                        // ...existing code... (Row with title + badge)
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

    // Diálogo Crear/Editar Cita (CON CORRECCIONES)
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
                        idTipoTerapia = idTerapia,
                        metodoPago = metodoPago,
                        monto = monto
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

// ==================== COMPONENTES AUXILIARES ====================

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun TarjetaCitaPsicologa(cita: AgendaItemDTO, onEdit: () -> Unit, onCancel: () -> Unit) {
    val colors = MaterialTheme.colorScheme
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.4f))
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = cita.nombrePaciente ?: "Paciente",
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold
                    )
                    Text(
                        text = "${cita.horaInicio.format(formatterHora)} - ${cita.horaFin.format(formatterHora)}",
                        style = MaterialTheme.typography.bodyMedium,
                        color = colors.onSurfaceVariant
                    )
                }
                cita.estado?.let { estado ->
                    Surface(
                        shape = RoundedCornerShape(8.dp),
                        color = when (estado.uppercase()) {
                            "CONFIRMADA" -> colors.primary.copy(alpha = 0.15f)
                            "CANCELADA" -> colors.error.copy(alpha = 0.15f)
                            else -> colors.tertiary.copy(alpha = 0.15f)
                        }
                    ) {
                        Text(
                            text = estado,
                            modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
                            style = MaterialTheme.typography.labelSmall,
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
                Text(
                    text = cita.motivo,
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.onSurfaceVariant
                )
            }

            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = "Terapia: ${cita.terapiaResponseDTO.nombre}",
                style = MaterialTheme.typography.bodySmall,
                color = colors.primary
            )

            Spacer(modifier = Modifier.height(12.dp))
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.End,
                verticalAlignment = Alignment.CenterVertically
            ) {
                TextButton(onClick = onEdit) {
                    Icon(Icons.Default.Edit, contentDescription = null, modifier = Modifier.size(16.dp))
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("Editar")
                }
                Spacer(modifier = Modifier.width(8.dp))
                TextButton(
                    onClick = onCancel,
                    colors = ButtonDefaults.textButtonColors(contentColor = colors.error)
                ) {
                    Icon(Icons.Default.Cancel, contentDescription = null, modifier = Modifier.size(16.dp))
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("Cancelar")
                }
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CabeceraDiaPsicologa(fecha: LocalDate, esDiaNoDisponible: Boolean) {
    val colors = MaterialTheme.colorScheme
    val formatterFecha = DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM", Locale.forLanguageTag("es-ES"))

    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Icon(
            imageVector = if (esDiaNoDisponible) Icons.Default.EventBusy else Icons.Default.CalendarToday,
            contentDescription = null,
            tint = if (esDiaNoDisponible) colors.error else colors.primary,
            modifier = Modifier.size(28.dp)
        )
        Spacer(modifier = Modifier.width(12.dp))
        Column {
            Text(
                text = fecha.format(formatterFecha).replaceFirstChar { it.uppercase() },
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold,
                color = if (esDiaNoDisponible) colors.error else colors.onSurface
            )
            if (esDiaNoDisponible) {
                Text(
                    text = "Día no disponible",
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.error
                )
            }
        }
    }
}

@Composable
fun LeyendaPsicologa() {
    val colors = MaterialTheme.colorScheme

    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Surface(
                modifier = Modifier.size(12.dp),
                shape = RoundedCornerShape(3.dp),
                color = colors.primary
            ) {}
            Spacer(modifier = Modifier.width(6.dp))
            Text("Día seleccionado", style = MaterialTheme.typography.labelSmall, color = colors.onSurfaceVariant)
        }
        Row(verticalAlignment = Alignment.CenterVertically) {
            Surface(
                modifier = Modifier.size(12.dp),
                shape = RoundedCornerShape(3.dp),
                color = colors.tertiary
            ) {}
            Spacer(modifier = Modifier.width(6.dp))
            Text("Con citas", style = MaterialTheme.typography.labelSmall, color = colors.onSurfaceVariant)
        }
    }
}

@Composable
fun BotonAccionRapida(
    icono: ImageVector,
    texto: String,
    subtitulo: String,
    modifier: Modifier = Modifier,
    onClick: () -> Any
) {
    val colors = MaterialTheme.colorScheme

    Card(
        modifier = modifier.clickable { onClick() },
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.5f))
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Icon(
                imageVector = icono,
                contentDescription = texto,
                tint = colors.primary,
                modifier = Modifier.size(28.dp)
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = texto,
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.Bold,
                textAlign = TextAlign.Center
            )
            Text(
                text = subtitulo,
                style = MaterialTheme.typography.bodySmall,
                color = colors.onSurfaceVariant,
                textAlign = TextAlign.Center
            )
        }
    }
}

@Composable
fun DiaNoDisponibleCard() {
    val colors = MaterialTheme.colorScheme

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = colors.errorContainer.copy(alpha = 0.3f))
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(32.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Icon(
                Icons.Default.EventBusy,
                contentDescription = null,
                modifier = Modifier.size(48.dp),
                tint = colors.error
            )
            Spacer(modifier = Modifier.height(12.dp))
            Text(
                text = "Día no disponible",
                style = MaterialTheme.typography.bodyLarge,
                fontWeight = FontWeight.SemiBold,
                color = colors.error
            )
            Text(
                text = "Has marcado este día como no disponible para citas",
                style = MaterialTheme.typography.bodySmall,
                color = colors.onSurfaceVariant,
                textAlign = TextAlign.Center
            )
        }
    }
}

// ==================== DIÁLOGO MODIFICAR HORARIO ====================

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun DialogoModificarHorario(
    horarioActual: StateFlow<HorarioRequestDTO?>,
    onConfirmar: (List<FranjaHorarioDTO>) -> Unit,
    onDismiss: () -> Unit
) {
    val horario by horarioActual.collectAsStateWithLifecycle()
    val diasSemana = listOf("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo")

    val franjasEditables = remember(horario) {
        mutableStateListOf<FranjaHorarioDTO>().apply {
            if (horario != null && horario!!.franjas.isNotEmpty()) {
                addAll(horario!!.franjas)
            } else {
                // Crear franjas por defecto Lunes-Viernes 09:00-17:00
                for (dia in 1..5) {
                    add(FranjaHorarioDTO(diaSemana = dia.toShort(), horaInicio = "09:00", horaFin = "17:00", activo = true))
                }
            }
        }
    }

    AlertDialog(
        onDismissRequest = onDismiss,
        title = {
            Text(
                text = "⏰ Configurar horario",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold
            )
        },
        text = {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = 450.dp)
                    .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Text(
                    text = "Activa o desactiva los días y ajusta las horas",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                franjasEditables.forEachIndexed { index, franja ->
                    val diaNombre = diasSemana.getOrElse(franja.diaSemana.toInt() - 1) { "Día ${franja.diaSemana}" }
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(12.dp),
                        colors = CardDefaults.cardColors(
                            containerColor = if (franja.activo)
                                MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.2f)
                            else
                                MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.3f)
                        )
                    ) {
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(12.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.SpaceBetween
                        ) {
                            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.weight(1f)) {
                                Checkbox(
                                    checked = franja.activo,
                                    onCheckedChange = { checked ->
                                        franjasEditables[index] = franja.copy(activo = checked)
                                    }
                                )
                                Text(
                                    text = diaNombre,
                                    style = MaterialTheme.typography.bodyMedium,
                                    fontWeight = FontWeight.Medium
                                )
                            }
                            if (franja.activo) {
                                Text(
                                    text = "${franja.horaInicio} - ${franja.horaFin}",
                                    style = MaterialTheme.typography.bodySmall,
                                    color = MaterialTheme.colorScheme.primary
                                )
                            }
                        }
                    }
                }
            }
        },
        confirmButton = {
            Button(
                onClick = { onConfirmar(franjasEditables.toList()) },
                shape = RoundedCornerShape(12.dp)
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

// ==================== DIÁLOGO NO DISPONIBLE ====================

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun DialogoNoDisponible(
    fecha: LocalDate,
    yaNoDisponible: Boolean,
    onConfirmar: () -> Unit,
    onDismiss: () -> Unit
) {
    val formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy")

    AlertDialog(
        onDismissRequest = onDismiss,
        title = {
            Text(
                text = if (yaNoDisponible) "✅ Habilitar día" else "🚫 Marcar como no disponible",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold
            )
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                Text(
                    text = if (yaNoDisponible)
                        "¿Deseas volver a habilitar el día ${fecha.format(formatterFecha)} para recibir citas?"
                    else
                        "¿Deseas marcar el día ${fecha.format(formatterFecha)} como no disponible? No se podrán agendar citas en esta fecha."
                )
                if (!yaNoDisponible) {
                    Text(
                        text = "Las citas existentes no se cancelarán automáticamente.",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
        },
        confirmButton = {
            Button(
                onClick = onConfirmar,
                colors = if (yaNoDisponible) ButtonDefaults.buttonColors()
                else ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.error),
                shape = RoundedCornerShape(12.dp)
            ) {
                Text(if (yaNoDisponible) "Habilitar" else "Marcar no disponible")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("Cancelar")
            }
        }
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

    // 🔥 CORRECCIÓN: Precargar método de pago desde citaAEditar
    val metodoPagoInicial = remember(citaAEditar) {
        when (citaAEditar?.metodoPago?.uppercase()) {
            "ONLINE" -> MetodoPago.ONLINE
            else -> MetodoPago.PRESENCIAL
        }
    }
    var metodoPagoSeleccionado by remember { mutableStateOf(metodoPagoInicial) }

    // 🔥 CORRECCIÓN: Precargar monto desde citaAEditar
    val montoInicial = remember(citaAEditar) {
        citaAEditar?.monto?.toString() ?: ""
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

    // 🔥 CORRECCIÓN: Precargar tipo de terapia desde citaAEditar
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

    // Validar monto en tiempo real
    fun validarMonto(input: String): Boolean {
        if (input.isBlank()) return false
        return runCatching { BigDecimal(input.replace(",", ".")) }.isSuccess
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
                                val errorMsg = pacientesError ?: ""
                                DropdownMenuItem(
                                    text = {
                                        Column {
                                            Text("⚠️ Error al cargar pacientes", color = colors.error)
                                            Text(errorMsg, style = MaterialTheme.typography.bodySmall)
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

                // Forma de Pago con validación en tiempo real
                Text(
                    text = "💳 Forma de pago *",
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.SemiBold
                )

                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.3f))
                ) {
                    Column(modifier = Modifier.padding(12.dp)) {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(16.dp)
                        ) {
                            Row(
                                modifier = Modifier
                                    .weight(1f)
                                    .clickable {
                                        metodoPagoSeleccionado = MetodoPago.PRESENCIAL
                                        montoError = false
                                    },
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.PRESENCIAL,
                                    onClick = {
                                        metodoPagoSeleccionado = MetodoPago.PRESENCIAL
                                        montoError = false
                                    }
                                )
                                Text("Presencial", modifier = Modifier.padding(start = 4.dp))
                            }
                            Row(
                                modifier = Modifier
                                    .weight(1f)
                                    .clickable { metodoPagoSeleccionado = MetodoPago.ONLINE },
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.ONLINE,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.ONLINE }
                                )
                                Text("Online", modifier = Modifier.padding(start = 4.dp))
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
                                        Text("Ingresa un monto válido (ej. 50.00)")
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

                // Resumen (solo en creación)
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
                            Text(
                                text = "Pago: ${if (metodoPagoSeleccionado == MetodoPago.ONLINE) "Online - $monto €" else "Presencial"}",
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
            // Botón habilitado solo si no hay error de monto
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
                            BigDecimal(monto.replace(",", "."))
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




