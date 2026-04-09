package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

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
import androidx.compose.foundation.layout.IntrinsicSize
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.EventNote
import androidx.compose.material.icons.filled.CalendarMonth
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.PersonOff
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Badge
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomBarConfig
import org.ies.tierno.applicationamani.presentation.ui.componente.FranjaHoraria
import org.ies.tierno.applicationamani.presentation.ui.componente.VistaDiariaHoras
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.CabeceraDiaPsicologa
import org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.CalendarioView
import org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.ies.tierno.applicationamani.utils.enviarCitaAlCalendario
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth
import java.time.format.DateTimeFormatter

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CitasScreen(
    navController: NavController,
    viewModel: CitasViewModel = koinViewModel()
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val amani = LocalAmaniColors.current

    val agendaMensual by viewModel.agendaMensual.collectAsStateWithLifecycle()
    val disponibilidadDia by viewModel.disponibilidadDia.collectAsStateWithLifecycle()
    val psicologoId by viewModel.psicologoId.collectAsStateWithLifecycle()
    val errorMessage by viewModel.errorMessage.collectAsStateWithLifecycle()
    val isLoading by viewModel.isLoading.collectAsStateWithLifecycle()
    val userSession by viewModel.userSession.collectAsStateWithLifecycle()

    var fechaSeleccionada by remember { mutableStateOf<LocalDate?>(null) }
    var mesVisible by remember { mutableStateOf(YearMonth.now()) }
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    var citaParaCancelar by remember { mutableStateOf<AgendaItemDTO?>(null) }

    val citasPorDia: Map<LocalDate, List<AgendaItemDTO>> = remember(agendaMensual) {
        agendaMensual.groupBy { it.fecha }
    }

    val fechasConCitas = citasPorDia.keys

    val citasDelDia = fechaSeleccionada?.let { citasPorDia[it] } ?: emptyList()

    val franjasParaVista = remember(disponibilidadDia) {
        disponibilidadDia?.slotsLibres?.map { franja ->
            FranjaHoraria(
                diaSemana = disponibilidadDia!!.fecha.dayOfWeek.value.toShort(),
                horaInicio = franja.hora.format(DateTimeFormatter.ofPattern("HH:mm")),
                horaFin = (franja.horaFin ?: franja.hora.plusMinutes(60)).format(DateTimeFormatter.ofPattern("HH:mm")),
                activo = !franja.ocupado,
                motivo = null
            )
        } ?: emptyList()
    }

    LaunchedEffect(mesVisible, userSession) {
        if (userSession?.idPaciente != null || userSession?.idUsuario != null) {
            viewModel.cargarAgendaMensual(mesVisible)
        }
    }

    LaunchedEffect(fechaSeleccionada) {
        if (fechaSeleccionada != null && psicologoId != null) {
            viewModel.cargarDisponibilidad(fechaSeleccionada!!)
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

    val sinPsicologoAsignado = psicologoId == null && (userSession?.idPaciente != null || userSession?.idUsuario != null)

    Scaffold(
        snackbarHost = { SnackbarHost(snackbarHostState) },
        containerColor = colors.background,
        bottomBar = { AmaniBottomBar(navController, BottomBarConfig.Paciente) }
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
                    text = "Mis citas",
                    style = typography.headlineMedium,
                    fontWeight = FontWeight.Bold,
                    color = colors.onBackground,
                    modifier = Modifier.padding(bottom = 4.dp)
                )

                Text(
                    text = "Gestiona tus citas programadas",
                    style = typography.bodyMedium,
                    color = colors.onSurfaceVariant,
                    modifier = Modifier.padding(bottom = 16.dp)
                )

                Spacer(modifier = Modifier.height(8.dp))
                LeyendaPaciente()
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
                                CabeceraDiaPsicologa(fecha, false)
                                Spacer(modifier = Modifier.height(16.dp))

                                if (citasDelDia.isNotEmpty()) {
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
                                        TarjetaCitaPaciente(
                                            cita = cita,
                                            onCancel = { citaParaCancelar = cita },
                                            context = LocalContext.current
                                        )
                                        if (index < citasDelDia.size - 1) {
                                            Spacer(modifier = Modifier.height(12.dp))
                                        }
                                    }
                                } else if (sinPsicologoAsignado) {
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
                                                Icons.Default.PersonOff,
                                                contentDescription = null,
                                                modifier = Modifier.size(48.dp),
                                                tint = colors.onSurfaceVariant.copy(alpha = 0.6f)
                                            )
                                            Spacer(modifier = Modifier.height(12.dp))
                                            Text(text = "Sin psicólogo asignado", style = typography.bodyLarge, color = colors.onSurfaceVariant)
                                            Text(text = "Contacta con administración para asignarte un psychologist", style = typography.bodySmall, color = colors.onSurfaceVariant.copy(alpha = 0.7f), textAlign = TextAlign.Center)
                                        }
                                    }
                                } else if (franjasParaVista.isNotEmpty()) {
                                    Text(
                                        text = "Horas disponibles",
                                        style = typography.titleLarge,
                                        fontWeight = FontWeight.Bold,
                                        modifier = Modifier.padding(bottom = 8.dp)
                                    )
                                    Text(
                                        text = "Selecciona una hora para reservar tu cita",
                                        style = typography.bodyMedium,
                                        color = colors.onSurfaceVariant,
                                        modifier = Modifier.padding(bottom = 16.dp)
                                    )
                                    VistaDiariaHoras(
                                        fecha = fecha,
                                        franjas = franjasParaVista,
                                        modifier = Modifier.fillMaxWidth(),
                                        onFranjaSeleccionada = { franja ->
                                            scope.launch {
                                                val hora = LocalTime.parse(franja.horaInicio)
                                                val result = viewModel.reservarCita(
                                                    fecha = fecha,
                                                    hora = hora,
                                                    motivo = "Cita psicológica",
                                                    duracionMinutos = 60
                                                )
                                                if (result.isSuccess) {
                                                    snackbarHostState.showSnackbar(
                                                        message = "Cita reservada a las ${franja.horaInicio}",
                                                        duration = SnackbarDuration.Long
                                                    )
                                                    viewModel.cargarAgendaMensual(mesVisible)
                                                    viewModel.cargarDisponibilidad(fecha)
                                                } else {
                                                    snackbarHostState.showSnackbar(
                                                        result.exceptionOrNull()?.message
                                                            ?: "No se pudo reservar la cita"
                                                    )
                                                }
                                            }
                                        }
                                    )
                                } else {
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
                                                Icons.AutoMirrored.Filled.EventNote,
                                                contentDescription = null,
                                                modifier = Modifier.size(48.dp),
                                                tint = colors.onSurfaceVariant.copy(alpha = 0.6f)
                                            )
                                            Spacer(modifier = Modifier.height(12.dp))
                                            Text(text = "No hay disponibilidad", style = typography.bodyLarge, color = colors.onSurfaceVariant)
                                            Text(text = "No hay horas disponibles para este día", style = typography.bodySmall, color = colors.onSurfaceVariant.copy(alpha = 0.7f))
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
                            Text("Cargando...", style = typography.bodyMedium)
                        }
                    }
                }
            }
        }
    }

    if (citaParaCancelar != null) {
        DialogoConfirmarCancelacionPaciente(
            cita = citaParaCancelar!!,
            onConfirmar = {
                viewModel.cancelarCita(citaParaCancelar!!.id)
                scope.launch { snackbarHostState.showSnackbar("Cita cancelada correctamente") }
                citaParaCancelar = null
                viewModel.cargarAgendaMensual(mesVisible)
            },
            onDismiss = { citaParaCancelar = null }
        )
    }
}

@Composable
fun LeyendaPaciente() {
    val colors = MaterialTheme.colorScheme
    val amani = LocalAmaniColors.current
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
            LeyendaItem(amani.citaConfirmada, "Confirmada")
            LeyendaItem(amani.citaPendiente, "Pendiente")
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

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun TarjetaCitaPaciente(
    cita: AgendaItemDTO,
    onCancel: () -> Unit,
    context: android.content.Context
) {
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
                modifier = Modifier
                    .width(5.dp)
                    .fillMaxHeight()
                    .clip(RoundedCornerShape(topStart = 12.dp, bottomStart = 12.dp))
                    .background(estadoColor)
            )
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 14.dp, vertical = 12.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.width(60.dp), horizontalAlignment = Alignment.CenterHorizontally) {
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
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = "Cita con ${cita.nombrePsicologo ?: "Psicólogo"}",
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
                    IconButton(
                        onClick = {
                            enviarCitaAlCalendario(
                                context = context,
                                titulo = "Cita con ${cita.nombrePsicologo ?: "psicólogo"}",
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
                    if (cita.estado?.lowercase() != "cancelada") {
                        IconButton(onClick = onCancel, modifier = Modifier.size(36.dp)) {
                            Icon(
                                Icons.Default.Delete,
                                contentDescription = "Cancelar",
                                tint = colors.error,
                                modifier = Modifier.size(18.dp)
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
fun DialogoConfirmarCancelacionPaciente(
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
                    colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant)
                ) {
                    Column(modifier = Modifier.padding(12.dp)) {
                        Text(
                            text = "Fecha: ${cita.fecha.format(formatterFecha)}",
                            style = MaterialTheme.typography.bodyMedium,
                            fontWeight = FontWeight.Bold
                        )
                        Text(
                            text = "Hora: ${cita.horaInicio.format(formatterHora)} - ${cita.horaFin.format(formatterHora)}",
                            style = MaterialTheme.typography.bodyMedium
                        )
                        if (!cita.motivo.isNullOrBlank()) {
                            Text(
                                text = "Motivo: ${cita.motivo}",
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }
                Text(
                    text = "Esta acción no se puede deshacer.",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.error
                )
            }
        },
        confirmButton = {
            Button(
                onClick = onConfirmar,
                colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.error)
            ) {
                Text("Cancelar cita")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("Volver")
            }
        }
    )
}