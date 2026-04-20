package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import android.Manifest
import android.os.Build
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.annotation.RequiresApi
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.expandVertically
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.shrinkVertically
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AccessTime
import androidx.compose.material.icons.filled.CalendarMonth
import androidx.compose.material.icons.filled.EventBusy
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.SnackbarResult
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.presentation.ui.componente.FranjaHoraria
import org.ies.tierno.applicationamani.presentation.ui.componente.VistaDiariaHoras
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView
import org.ies.tierno.applicationamani.presentation.viewmodels.citas.CitasViewModel
import org.ies.tierno.applicationamani.utils.enviarCitaAlCalendario
import org.ies.tierno.applicationamani.utils.programarRecordatorioCita
import org.koin.androidx.compose.koinViewModel
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth
import java.time.format.DateTimeFormatter
import java.util.Locale

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CitasScreen(
    navController: NavController,
    viewModel: CitasViewModel = koinViewModel()
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val context = LocalContext.current

    val agendaMensual by viewModel.agendaMensual.collectAsState()
    val disponibilidadDia by viewModel.disponibilidadDia.collectAsState()
    val errorMessage by viewModel.errorMessage.collectAsState()
    val isLoading by viewModel.isLoading.collectAsState()

    var fechaSeleccionada by remember { mutableStateOf<LocalDate?>(null) }
    var mesVisible by remember { mutableStateOf(YearMonth.now()) }
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    var pendingRecordatorio by remember { mutableStateOf<Pair<LocalDate, LocalTime>?>(null) }
    var mostrarDialogoMotivo by remember { mutableStateOf(false) }
    var franjaSeleccionadaTemp by remember { mutableStateOf<FranjaHoraria?>(null) }
    var motivoCita by remember { mutableStateOf("") }

    val session by viewModel.userSession.collectAsState()

    LaunchedEffect(session) {
        if (session?.idPsicologo != null && fechaSeleccionada != null) {
            viewModel.cargarDisponibilidad(fechaSeleccionada!!)
        }
    }

    val notifPermissionLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.RequestPermission()
    ) { granted ->
        if (granted) {
            pendingRecordatorio?.let { (fecha, hora) ->
                programarRecordatorioCita(
                    context = context,
                    fecha = fecha,
                    hora = hora,
                    minutosAntes = 30,
                    titulo = "Cita en Amani",
                    mensaje = "Tu cita es a las ${hora.format(DateTimeFormatter.ofPattern("HH:mm"))}"
                )
            }
        }
        pendingRecordatorio = null
    }

    fun programarConPermiso(fecha: LocalDate, hora: LocalTime) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            pendingRecordatorio = fecha to hora
            notifPermissionLauncher.launch(Manifest.permission.POST_NOTIFICATIONS)
        } else {
            programarRecordatorioCita(
                context = context,
                fecha = fecha,
                hora = hora,
                minutosAntes = 30,
                titulo = "Cita en Amani",
                mensaje = "Tu cita es a las ${hora.format(DateTimeFormatter.ofPattern("HH:mm"))}"
            )
        }
    }

    // Cargar agenda cuando cambia el mes
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

    // Obtener las fechas donde hay citas
    val fechasConCitas = remember(agendaMensual) {
        agendaMensual.map { it.fecha }.toSet()
    }

    // Obtener las citas del día seleccionado
    val citasDelDia = remember(fechaSeleccionada, agendaMensual) {
        fechaSeleccionada?.let { fecha ->
            agendaMensual.filter { it.fecha == fecha }
        } ?: emptyList()
    }

    // Función auxiliar para mostrar el elemento de leyenda
    @Composable
    fun LeyendaItem(color: Color, texto: String) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Box(
                modifier = Modifier
                    .size(12.dp)
                    .clip(MaterialTheme.shapes.small)
                    .background(color)
            )
            Spacer(modifier = Modifier.width(6.dp))
            Text(text = texto, style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
        }
    }

    // Convertir franjas de disponibilidad al formato que espera VistaDiariaHoras
    val franjasParaVista = remember(disponibilidadDia, citasDelDia) {
        if (disponibilidadDia?.diaCompleto == true) {
            emptyList()
        } else {
            disponibilidadDia?.slotsLibres?.map { franja ->
                // Verificar si esta franja ya está ocupada por una cita existente
                val yaReservada = citasDelDia.any { cita ->
                    cita.horaInicio == franja.hora
                }

                FranjaHoraria(
                    diaSemana = disponibilidadDia!!.fecha.dayOfWeek.value.toShort(),
                    horaInicio = franja.hora.format(DateTimeFormatter.ofPattern("HH:mm")),
                    horaFin = (franja.horaFin ?: franja.hora.plusMinutes(60)).format(DateTimeFormatter.ofPattern("HH:mm")),
                    activo = !franja.ocupado && !yaReservada,
                    motivo = franja.descripcion
                )
            } ?: emptyList()
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
                    text = "Mis citas",
                    style = typography.headlineMedium,
                    fontWeight = FontWeight.Bold,
                    color = colors.onBackground,
                    modifier = Modifier.padding(bottom = 4.dp)
                )

                Text(
                    text = "Selecciona una fecha y horario para agendar tu cita",
                    style = typography.bodyMedium,
                    color = colors.onSurfaceVariant,
                    modifier = Modifier.padding(bottom = 16.dp)
                )

                Spacer(modifier = Modifier.height(16.dp))

                // Leyenda
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    LeyendaItem(colors.primary, "Con citas")
                    LeyendaItem(colors.primaryContainer, "Día disponible")
                    LeyendaItem(colors.errorContainer, "Sin disponibilidad")
                }

                Spacer(modifier = Modifier.height(16.dp))

                // Calendario
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.medium,
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
                            if (fechaSeleccionada != null) {
                                viewModel.cargarDisponibilidad(fecha)
                            }
                        }
                    )
                }

                Spacer(modifier = Modifier.height(16.dp))

                // Mostrar citas existentes del día seleccionado
                AnimatedVisibility(
                    visible = fechaSeleccionada != null && citasDelDia.isNotEmpty(),
                    enter = fadeIn() + expandVertically(),
                    exit = fadeOut() + shrinkVertically()
                ) {
                    Column {
                        Text(
                            text = "📋 Mis citas programadas",
                            style = typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        citasDelDia.forEach { cita ->
                            Card(
                                modifier = Modifier.fillMaxWidth().padding(vertical = 4.dp),
                                shape = MaterialTheme.shapes.medium,
                                colors = CardDefaults.cardColors(
                                    containerColor = colors.primaryContainer.copy(alpha = 0.3f)
                                )
                            ) {
                                Row(
                                    modifier = Modifier.padding(12.dp),
                                    horizontalArrangement = Arrangement.SpaceBetween,
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Column {
                                        Text(
                                            text = "🕐 ${cita.horaInicio.format(DateTimeFormatter.ofPattern("HH:mm"))} - ${cita.horaFin.format(DateTimeFormatter.ofPattern("HH:mm"))}",
                                            fontWeight = FontWeight.Bold
                                        )
                                        if (!cita.motivo.isNullOrBlank()) {
                                            Text(
                                                text = cita.motivo,
                                                style = typography.bodySmall,
                                                color = colors.onSurfaceVariant
                                            )
                                        }
                                        Surface(
                                            shape = MaterialTheme.shapes.small,
                                            color = when (cita.estado?.lowercase()) {
                                                "confirmada" -> colors.primary.copy(alpha = 0.2f)
                                                "cancelada" -> colors.error.copy(alpha = 0.2f)
                                                else -> colors.secondary.copy(alpha = 0.2f)
                                            }
                                        ) {
                                            Text(
                                                text = cita.estado?.replaceFirstChar { it.uppercase() } ?: "Pendiente",
                                                style = typography.labelSmall,
                                                modifier = Modifier.padding(horizontal = 6.dp, vertical = 2.dp)
                                            )
                                        }
                                    }

                                    IconButton(
                                        onClick = {
                                            enviarCitaAlCalendario(
                                                context = context,
                                                titulo = "Cita en Amani",
                                                descripcion = cita.motivo ?: "Cita psicológica",
                                                fecha = cita.fecha,
                                                hora = cita.horaInicio,
                                                duracionMinutos = cita.duracionMinutos ?: 60
                                            )
                                        }
                                    ) {
                                        Icon(Icons.Default.CalendarMonth, contentDescription = "Añadir a calendario")
                                    }
                                }
                            }
                        }
                        Spacer(modifier = Modifier.height(16.dp))
                    }
                }

                // Mostrar horarios disponibles para agendar
                AnimatedVisibility(
                    visible = fechaSeleccionada != null && !isLoading,
                    enter = fadeIn() + expandVertically(),
                    exit = fadeOut() + shrinkVertically()
                ) {
                    fechaSeleccionada?.let { fecha ->
                        when {
                            disponibilidadDia?.diaCompleto == true -> {
                                Card(
                                    modifier = Modifier.fillMaxWidth(),
                                    shape = MaterialTheme.shapes.medium,
                                    colors = CardDefaults.cardColors(
                                        containerColor = colors.errorContainer.copy(alpha = 0.3f)
                                    )
                                ) {
                                    Column(
                                        modifier = Modifier.padding(16.dp),
                                        horizontalAlignment = Alignment.CenterHorizontally
                                    ) {
                                        Icon(
                                            Icons.Default.EventBusy,
                                            contentDescription = null,
                                            modifier = Modifier.size(48.dp),
                                            tint = colors.error
                                        )
                                        Spacer(modifier = Modifier.height(8.dp))
                                        Text(
                                            text = "No hay disponibilidad para este día",
                                            style = typography.bodyMedium,
                                            textAlign = androidx.compose.ui.text.style.TextAlign.Center
                                        )
                                        Text(
                                            text = "El psicólogo no atiende en esta fecha",
                                            style = typography.bodySmall,
                                            color = colors.onSurfaceVariant
                                        )
                                    }
                                }
                            }
                            franjasParaVista.isEmpty() -> {
                                Card(
                                    modifier = Modifier.fillMaxWidth(),
                                    shape = MaterialTheme.shapes.medium,
                                    colors = CardDefaults.cardColors(
                                        containerColor = colors.surfaceVariant
                                    )
                                ) {
                                    Column(
                                        modifier = Modifier.padding(16.dp),
                                        horizontalAlignment = Alignment.CenterHorizontally
                                    ) {
                                        Icon(
                                            Icons.Default.AccessTime,
                                            contentDescription = null,
                                            modifier = Modifier.size(48.dp),
                                            tint = colors.onSurfaceVariant
                                        )
                                        Spacer(modifier = Modifier.height(8.dp))
                                        Text(
                                            text = "No hay horarios disponibles",
                                            style = typography.bodyMedium,
                                            textAlign = androidx.compose.ui.text.style.TextAlign.Center
                                        )
                                        Text(
                                            text = "Todos los horarios ya están ocupados",
                                            style = typography.bodySmall,
                                            color = colors.onSurfaceVariant
                                        )
                                    }
                                }
                            }
                            else -> {
                                Column {
                                    Text(
                                        text = "✨ Horarios disponibles para agendar",
                                        style = typography.titleMedium,
                                        fontWeight = FontWeight.Bold,
                                        modifier = Modifier.padding(vertical = 8.dp)
                                    )

                                    VistaDiariaHoras(
                                        fecha = fecha,
                                        franjas = franjasParaVista,
                                        modifier = Modifier.fillMaxWidth(),
                                        onFranjaSeleccionada = { franja ->
                                            franjaSeleccionadaTemp = franja
                                            motivoCita = ""
                                            mostrarDialogoMotivo = true
                                        }
                                    )
                                }
                            }
                        }
                    }
                }

                if (isLoading) {
                    Spacer(modifier = Modifier.height(16.dp))
                    Box(
                        modifier = Modifier.fillMaxWidth(),
                        contentAlignment = Alignment.Center
                    ) {
                        CircularProgressIndicator()
                    }
                }

                Spacer(modifier = Modifier.height(80.dp))
            }
        } // Box
    } // Scaffold

    // Diálogo para ingresar motivo de la cita (fuera del Scaffold)
    if (mostrarDialogoMotivo && franjaSeleccionadaTemp != null && fechaSeleccionada != null) {
        AlertDialog(
            onDismissRequest = { mostrarDialogoMotivo = false },
            title = {
                Column {
                    Text(
                        "Confirmar cita",
                        style = typography.titleLarge,
                        fontWeight = FontWeight.Bold
                    )
                    Text(
                        "${fechaSeleccionada!!.format(DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM", Locale("es", "ES")))} a las ${franjaSeleccionadaTemp!!.horaInicio}",
                        style = typography.bodyMedium,
                        color = colors.primary
                    )
                }
            },
            text = {
                Column {
                    Text(
                        "¿Deseas confirmar esta cita?",
                        style = typography.bodyMedium,
                        modifier = Modifier.padding(bottom = 8.dp)
                    )
                    OutlinedTextField(
                        value = motivoCita,
                        onValueChange = { motivoCita = it },
                        placeholder = { Text("Motivo de la cita (opcional)") },
                        modifier = Modifier.fillMaxWidth(),
                        minLines = 2,
                        maxLines = 3,
                        shape = MaterialTheme.shapes.medium
                    )
                }
            },
            confirmButton = {
                Button(
                    onClick = {
                        scope.launch {
                            val hora = LocalTime.parse(franjaSeleccionadaTemp!!.horaInicio)

                            val session = viewModel.userSession.value
                            val idPaciente = session?.idPaciente ?: session?.idUsuario ?: return@launch

                            val result = viewModel.reservarCita(
                                idPaciente = idPaciente,
                                fecha = fechaSeleccionada!!,
                                hora = hora,
                                duracionMinutos = 60,
                                motivo = motivoCita.ifBlank { "Consulta psicológica" },
                                idTipoTerapia = 1L, // ⚠️ luego lo haces dinámico
                                metodoPago = MetodoPago.PRESENCIAL,
                                monto = BigDecimal.ZERO,
                                modalidadCita = ModalidadCita.PRESENCIAL
                            )

                            if (result.isSuccess) {
                                programarConPermiso(fechaSeleccionada!!, hora)

                                val actionResult = snackbarHostState.showSnackbar(
                                    message = "✅ Cita agendada a las ${franjaSeleccionadaTemp!!.horaInicio}",
                                    actionLabel = "Calendario",
                                    duration = SnackbarDuration.Long
                                )
                                if (actionResult == SnackbarResult.ActionPerformed) {
                                    enviarCitaAlCalendario(
                                        context = context,
                                        fecha = fechaSeleccionada!!,
                                        hora = hora,
                                        duracionMinutos = 60,
                                        titulo = "Cita - Amani",
                                        descripcion = motivoCita.ifBlank { "Consulta psicológica" }
                                    )
                                }

                                mostrarDialogoMotivo = false
                                franjaSeleccionadaTemp = null
                            } else {
                                snackbarHostState.showSnackbar(
                                    result.exceptionOrNull()?.message ?: "❌ No se pudo reservar la cita"
                                )
                            }
                        }
                    },
                    shape = MaterialTheme.shapes.medium
                ) {
                    Text("Confirmar cita")
                }
            },
            dismissButton = {
                TextButton(onClick = { mostrarDialogoMotivo = false }) {
                    Text("Cancelar")
                }
            }
        )
    }
}

