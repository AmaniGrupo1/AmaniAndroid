package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import android.Manifest
import androidx.compose.ui.graphics.Color
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
import androidx.compose.material.icons.filled.CalendarMonth
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.ChevronLeft
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.EventBusy
import androidx.compose.material.icons.filled.LocationOn
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.Phone
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Timer
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuBoxScope
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.FloatingActionButtonDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.RadioButton
import androidx.compose.material3.RadioButtonDefaults
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
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
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
    viewModel: PsicologoAgendaViewModel = koinViewModel(),
    listarTerapiasViewModel: ListarTerapiasViewModel = koinViewModel()
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val context = LocalContext.current

    val agendaMensual by viewModel.agendaMensual.collectAsStateWithLifecycle()
    val disponibilidadDia by viewModel.disponibilidadDia.collectAsStateWithLifecycle()
    val errorMessage by viewModel.errorMessage.collectAsStateWithLifecycle()
    val isLoading by viewModel.isLoading.collectAsStateWithLifecycle()
    val terapias by listarTerapiasViewModel.terapias.collectAsStateWithLifecycle()
    val session by viewModel.userSession.collectAsStateWithLifecycle()

    val idPaciente = session?.idPaciente ?: session?.idUsuario ?: 0L

    var fechaSeleccionada by remember { mutableStateOf<LocalDate?>(null) }
    var mesVisible by remember { mutableStateOf(YearMonth.now()) }
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    var mostrarDialogo by remember { mutableStateOf(false) }
    var modoEdicion by remember { mutableStateOf(false) }
    var citaEditando by remember { mutableStateOf<AgendaItemDTO?>(null) }

    var pendingRecordatorio by remember { mutableStateOf<Pair<LocalDate, LocalTime>?>(null) }

    LaunchedEffect(mesVisible, session) {
        if (session?.idPsicologo != null) {
            viewModel.cargarAgendaMensual(mesVisible)
        }
    }

    LaunchedEffect(Unit) {
        listarTerapiasViewModel.cargarTerapias()
    }

    LaunchedEffect(errorMessage) {
        errorMessage?.let {
            scope.launch {
                snackbarHostState.showSnackbar(it)
                viewModel.clearError()
            }
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

    val fechasConCitas = remember(agendaMensual) {
        agendaMensual.map { it.fecha }.toSet()
    }

    val citasDelDia = remember(fechaSeleccionada, agendaMensual) {
        fechaSeleccionada?.let { fecha ->
            agendaMensual.filter { it.fecha == fecha }
        } ?: emptyList()
    }

    val tieneDisponibilidad = remember(disponibilidadDia, citasDelDia) {
        if (disponibilidadDia?.diaCompleto == true) {
            false
        } else {
            val slotsLibres = disponibilidadDia?.slotsLibres?.filter { !it.ocupado } ?: emptyList()
            slotsLibres.isNotEmpty()
        }
    }

    Scaffold(
        snackbarHost = { SnackbarHost(snackbarHostState) },
        containerColor = colors.background,
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    modoEdicion = false
                    citaEditando = null
                    mostrarDialogo = true
                    val fechaParaCargar = fechaSeleccionada ?: LocalDate.now()
                    viewModel.cargarDisponibilidadDia(fechaParaCargar)
                },
                containerColor = colors.primary,
                contentColor = MaterialTheme.colorScheme.surface,
                shape = RoundedCornerShape(16.dp),
                elevation = FloatingActionButtonDefaults.elevation(8.dp)
            ) {
                Icon(Icons.Default.Add, contentDescription = "Nueva cita", modifier = Modifier.size(24.dp))
            }
        }
    ) { innerPadding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .background(
                    brush = Brush.verticalGradient(
                        colors = listOf(colors.surfaceContainerLow, MaterialTheme.colorScheme.surface)
                    )
                )
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .verticalScroll(rememberScrollState())
                    .padding(horizontal = 20.dp, vertical = 16.dp)
            ) {
                // Header
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column {
                        Text(
                            text = "Mis Citas",
                            style = typography.headlineMedium,
                            fontSize = 28.sp,
                            fontWeight = FontWeight.Bold,
                            color = colors.onSurface
                        )
                        Text(
                            text = "Selecciona una fecha y agenda tu cita",
                            style = typography.bodyMedium,
                            fontSize = 14.sp,
                            color = colors.onSurfaceVariant
                        )
                    }
                }

                Spacer(modifier = Modifier.height(20.dp))

                // Leyenda
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(20.dp)
                ) {
                    LeyendaItemAmani(colors.primary, "Con citas")
                    LeyendaItemAmani(colors.primaryContainer, "Día disponible")
                    LeyendaItemAmani(colors.error, "Sin disponibilidad")
                }

                Spacer(modifier = Modifier.height(16.dp))

                // Calendario
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(24.dp),
                    colors = CardDefaults.cardColors(containerColor = colors.surface),
                    elevation = CardDefaults.cardElevation(0.dp)
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
                                viewModel.cargarDisponibilidadDia(fechaSeleccionada!!)
                            }
                        }
                    )
                }

                Spacer(modifier = Modifier.height(20.dp))

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
                            fontSize = 16.sp,
                            fontWeight = FontWeight.SemiBold,
                            color = colors.onSurface,
                            modifier = Modifier.padding(vertical = 8.dp)
                        )
                        citasDelDia.forEach { cita ->
                            Card(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .padding(vertical = 6.dp),
                                shape = RoundedCornerShape(20.dp),
                                colors = CardDefaults.cardColors(
                                    containerColor = colors.primaryContainer.copy(alpha = 0.15f)
                                ),
                                elevation = CardDefaults.cardElevation(2.dp)
                            ) {
                                Row(
                                    modifier = Modifier.padding(16.dp),
                                    horizontalArrangement = Arrangement.SpaceBetween,
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Column {
                                        Text(
                                            text = "🕐 ${cita.horaInicio.format(DateTimeFormatter.ofPattern("HH:mm"))} - ${cita.horaFin.format(DateTimeFormatter.ofPattern("HH:mm"))}",
                                            fontWeight = FontWeight.Bold,
                                            fontSize = 14.sp,
                                            color = colors.onSurface
                                        )
                                        if (!cita.motivo.isNullOrBlank()) {
                                            Text(
                                                text = cita.motivo,
                                                style = typography.bodySmall,
                                                fontSize = 12.sp,
                                                color = colors.onSurfaceVariant
                                            )
                                        }
                                        Surface(
                                            shape = RoundedCornerShape(12.dp),
                                            color = when (cita.estado?.lowercase()) {
                                                "confirmada" -> colors.tertiary.copy(alpha = 0.15f)
                                                "cancelada" -> colors.error.copy(alpha = 0.15f)
                                                else -> colors.primaryContainer.copy(alpha = 0.15f)
                                            }
                                        ) {
                                            Text(
                                                text = cita.estado?.replaceFirstChar { it.uppercase() } ?: "Pendiente",
                                                style = typography.labelSmall,
                                                fontSize = 11.sp,
                                                fontWeight = FontWeight.Medium,
                                                color = when (cita.estado?.lowercase()) {
                                                    "confirmada" -> colors.tertiary
                                                    "cancelada" -> colors.error
                                                    else -> colors.primary
                                                },
                                                modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp)
                                            )
                                        }
                                    }
                                    Row {
                                        IconButton(onClick = {
                                            navController.navigate(
                                                Screens.editarCitaScreen.pass(cita.id.toString())
                                            )
                                        }) {
                                            Icon(Icons.Default.Edit, contentDescription = "Editar", tint = colors.primary)
                                        }
                                        IconButton(onClick = {
                                            enviarCitaAlCalendario(
                                                context = context,
                                                titulo = "Cita en Amani",
                                                descripcion = cita.motivo ?: "Cita psicológica",
                                                fecha = cita.fecha,
                                                hora = cita.horaInicio,
                                                duracionMinutos = cita.duracionMinutos ?: 60
                                            )
                                        }) {
                                            Icon(Icons.Default.CalendarMonth, contentDescription = "Calendario", tint = colors.primary)
                                        }
                                    }
                                }
                            }
                        }
                        Spacer(modifier = Modifier.height(16.dp))
                    }
                }

                // Mostrar información del día seleccionado
                AnimatedVisibility(
                    visible = fechaSeleccionada != null && !isLoading,
                    enter = fadeIn() + expandVertically(),
                    exit = fadeOut() + shrinkVertically()
                ) {
                    fechaSeleccionada?.let { fecha ->
                        Card(
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(24.dp),
                            colors = CardDefaults.cardColors(containerColor = colors.surface),
                            elevation = CardDefaults.cardElevation(0.dp)
                        ) {
                            Column(modifier = Modifier.padding(20.dp)) {
                                Surface(
                                    modifier = Modifier.fillMaxWidth(),
                                    shape = RoundedCornerShape(16.dp),
                                    color = if (tieneDisponibilidad) colors.primaryContainer.copy(alpha = 0.15f)
                                    else colors.error.copy(alpha = 0.1f)
                                ) {
                                    Row(
                                        modifier = Modifier.padding(16.dp),
                                        verticalAlignment = Alignment.CenterVertically
                                    ) {
                                        Icon(
                                            imageVector = if (tieneDisponibilidad) Icons.Default.CalendarToday else Icons.Default.EventBusy,
                                            contentDescription = null,
                                            tint = if (tieneDisponibilidad) colors.primary else colors.error,
                                            modifier = Modifier.size(32.dp)
                                        )
                                        Spacer(modifier = Modifier.width(16.dp))
                                        Column {
                                            Text(
                                                text = fecha.format(
                                                    DateTimeFormatter.ofPattern(
                                                        "EEEE, d 'de' MMMM",
                                                        Locale.forLanguageTag("es-ES")
                                                    )
                                                ).replaceFirstChar { it.uppercase() },
                                                style = typography.titleMedium,
                                                fontSize = 16.sp,
                                                fontWeight = FontWeight.Bold,
                                                color = colors.onSurface
                                            )
                                            if (tieneDisponibilidad) {
                                                Text(
                                                    "✅ Hay horarios disponibles",
                                                    style = typography.bodySmall,
                                                    fontSize = 13.sp,
                                                    color = colors.primary
                                                )
                                            } else {
                                                Text(
                                                    "❌ No hay disponibilidad para este día",
                                                    style = typography.bodySmall,
                                                    fontSize = 13.sp,
                                                    color = colors.error
                                                )
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                if (isLoading) {
                    Spacer(modifier = Modifier.height(16.dp))
                    Box(modifier = Modifier.fillMaxWidth(), contentAlignment = Alignment.Center) {
                        CircularProgressIndicator(color = colors.primary)
                    }
                }
                Spacer(modifier = Modifier.height(80.dp))
            }
        }
    }

    if (mostrarDialogo && fechaSeleccionada != null && idPaciente > 0) {
        DialogoGestionCitaAmani(
            modoEdicion = modoEdicion,
            citaExistente = citaEditando,
            fechaInicial = fechaSeleccionada!!,
            terapias = terapias,
            slotsLibres = disponibilidadDia?.slotsLibres?.filter { !it.ocupado } ?: emptyList(),
            citasExistentes = citasDelDia,
            idPaciente = idPaciente,
            onFechaChange = { nuevaFecha ->
                fechaSeleccionada = nuevaFecha
                viewModel.cargarDisponibilidadDia(nuevaFecha)
            },
            onCrearCita = { idPacienteParam, fecha, hora, duracion, motivo, idTerapia, metodoPago, estadoPago, monto, modalidad ->
                scope.launch {
                    val result = viewModel.crearCitaParaPaciente(
                        idPaciente = idPacienteParam,
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

                    if (result.isSuccess) {
                        programarConPermiso(fecha, hora)
                        snackbarHostState.showSnackbar("✅ Cita creada correctamente")
                        mostrarDialogo = false
                        viewModel.cargarAgendaMensual(mesVisible)
                        viewModel.cargarDisponibilidadDia(fecha)

                        delay(3000)
                        navController.navigateUp()
                    } else {
                        snackbarHostState.showSnackbar("❌ Error al crear cita")
                    }
                }
            },
            onEditarCita = { idCita, idPacienteParam, fecha, hora, duracion, motivo, idTerapia, metodoPago, estadoPago, monto, modalidad ->
                scope.launch {
                    viewModel.editarCita(
                        idCita = idCita,
                        idPaciente = idPacienteParam,
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

                    snackbarHostState.showSnackbar("✏️ Cita actualizada correctamente")
                    mostrarDialogo = false
                    modoEdicion = false
                    citaEditando = null
                    viewModel.cargarAgendaMensual(mesVisible)
                    viewModel.cargarDisponibilidadDia(fecha)

                    delay(3000)
                    navController.navigateUp()
                }
            },
            onDismiss = {
                mostrarDialogo = false
                modoEdicion = false
                citaEditando = null
            }
        )
    }
}

@Composable
fun LeyendaItemAmani(color: Color, texto: String) {
    Row(verticalAlignment = Alignment.CenterVertically) {
        Box(
            modifier = Modifier
                .size(12.dp)
                .clip(RoundedCornerShape(4.dp))
                .background(color)
        )
        Spacer(modifier = Modifier.width(8.dp))
        Text(
            text = texto,
            style = MaterialTheme.typography.labelSmall,
            fontSize = 12.sp,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun DialogoGestionCitaAmani(
    modoEdicion: Boolean,
    citaExistente: AgendaItemDTO?,
    fechaInicial: LocalDate,
    terapias: List<TerapiaResponseDTO>,
    slotsLibres: List<org.ies.tierno.applicationamani.dto.citas.FranjaDisponibilidadResponse>,
    citasExistentes: List<AgendaItemDTO>,
    idPaciente: Long,
    onFechaChange: (LocalDate) -> Unit,
    onCrearCita: (Long, LocalDate, LocalTime, Int, String, Long, MetodoPago, EstadoPago, BigDecimal, ModalidadCita) -> Unit,
    onEditarCita: (Long, Long, LocalDate, LocalTime, Int, String, Long, MetodoPago, EstadoPago, BigDecimal, ModalidadCita) -> Unit,
    onDismiss: () -> Unit
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")

    var fechaSeleccionada by remember { mutableStateOf(fechaInicial) }
    var motivo by remember { mutableStateOf(citaExistente?.motivo ?: "") }

    var metodoPagoSeleccionado by remember { mutableStateOf(MetodoPago.PRESENCIAL) }
    var estadoPagoSeleccionado by remember { mutableStateOf(EstadoPago.PENDIENTE) }
    var modalidadSeleccionada by remember { mutableStateOf(ModalidadCita.PRESENCIAL) }
    var modalidadDropdownExpanded by remember { mutableStateOf(false) }

    var terapiaSeleccionada by remember { mutableStateOf<TerapiaResponseDTO?>(null) }
    var terapiaDropdownExpanded by remember { mutableStateOf(false) }

    var duracionMinutos by remember { mutableIntStateOf(60) }
    var montoCalculado by remember { mutableStateOf(BigDecimal.ZERO) }

    val horasDisponibles = remember(slotsLibres, citasExistentes, fechaSeleccionada, modoEdicion, citaExistente) {
        val horasLibres = slotsLibres.map { it.hora }.sorted()
        val horasOcupadas = citasExistentes.filter {
            if (modoEdicion && citaExistente != null) it.id != citaExistente.id else true
        }.map { it.horaInicio }
        horasLibres.filter { hora -> hora !in horasOcupadas }
    }

    var horaSeleccionada by remember {
        mutableStateOf(
            if (modoEdicion && citaExistente != null && horasDisponibles.contains(citaExistente.horaInicio))
                citaExistente.horaInicio
            else horasDisponibles.firstOrNull()
        )
    }
    var horaDropdownExpanded by remember { mutableStateOf(false) }

    LaunchedEffect(terapiaSeleccionada) {
        terapiaSeleccionada?.let { terapia ->
            duracionMinutos = terapia.duracionMinutos
            montoCalculado = if (metodoPagoSeleccionado == MetodoPago.ONLINE) terapia.precio else BigDecimal.ZERO
        }
    }

    LaunchedEffect(metodoPagoSeleccionado, terapiaSeleccionada) {
        if (metodoPagoSeleccionado == MetodoPago.ONLINE && terapiaSeleccionada != null) {
            montoCalculado = terapiaSeleccionada!!.precio
        } else {
            montoCalculado = BigDecimal.ZERO
        }
    }

    LaunchedEffect(fechaSeleccionada) {
        onFechaChange(fechaSeleccionada)
    }

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colors.surface,
        shape = RoundedCornerShape(28.dp),
        title = {
            Column {
                Text(
                    text = if (modoEdicion) "✏️ Reagendar cita" else "📅 Agendar nueva cita",
                    style = typography.headlineSmall,
                    fontSize = 22.sp,
                    fontWeight = FontWeight.Bold,
                    color = colors.onSurface
                )
                Text(
                    text = if (modoEdicion) "Modifica los datos de tu cita" else "Completa la información para agendar",
                    style = typography.bodySmall,
                    fontSize = 13.sp,
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
                // Tipo de terapia
                CampoSeleccionAmani(
                    label = "Tipo de terapia",
                    icono = Icons.Default.MedicalServices,
                    valor = terapiaSeleccionada?.nombre ?: "",
                    expanded = terapiaDropdownExpanded,
                    onExpandedChange = { terapiaDropdownExpanded = it }
                ) {
                    if (terapias.isEmpty()) {
                        DropdownMenuItem(
                            text = { Text("No hay tipos de terapia disponibles", color = colors.onSurfaceVariant) },
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
                                            fontWeight = FontWeight.Medium,
                                            color = colors.onSurface
                                        )
                                        Text(
                                            "Duración: ${terapia.duracionMinutos} min | Precio: ${terapia.precio} €",
                                            style = typography.bodySmall,
                                            fontSize = 12.sp,
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

                // Fecha
                CampoFechaAmani(
                    fechaSeleccionada = fechaSeleccionada,
                    onFechaChange = { fechaSeleccionada = it }
                )

                // Hora
                CampoSeleccionAmani(
                    label = "Hora de inicio",
                    icono = Icons.Default.Schedule,
                    valor = horaSeleccionada?.format(formatterHora) ?: "Sin horarios disponibles",
                    expanded = horaDropdownExpanded,
                    onExpandedChange = { horaDropdownExpanded = it },
                    error = horasDisponibles.isEmpty() && !modoEdicion
                ) {
                    if (horasDisponibles.isEmpty() && !modoEdicion) {
                        DropdownMenuItem(
                            text = {
                                Column {
                                    Text("❌ No hay horarios libres", color = colors.error)
                                    Text("Prueba con otra fecha", style = typography.bodySmall, fontSize = 12.sp)
                                }
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
                                            contentDescription = "",
                                            modifier = Modifier.size(18.dp),
                                            tint = colors.primary
                                        )
                                        Spacer(modifier = Modifier.width(8.dp))
                                        Column {
                                            Text(
                                                hora.format(formatterHora),
                                                fontWeight = FontWeight.Medium,
                                                color = colors.onSurface
                                            )
                                            Text(
                                                "Duración: $duracionMinutos min",
                                                style = typography.bodySmall,
                                                fontSize = 12.sp,
                                                color = colors.onSurfaceVariant
                                            )
                                        }
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
                    colors = CardDefaults.cardColors(containerColor = colors.primaryContainer.copy(alpha = 0.1f))
                ) {
                    Row(
                        modifier = Modifier.padding(16.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Column {
                            Text(
                                "Duración de la terapia",
                                style = typography.labelSmall,
                                fontSize = 12.sp,
                                color = colors.primary
                            )
                            Text(
                                "$duracionMinutos minutos",
                                style = typography.titleMedium,
                                fontSize = 16.sp,
                                fontWeight = FontWeight.Bold,
                                color = colors.onSurface
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
                    label = { Text("Motivo de la cita (opcional)", color = colors.onSurfaceVariant) },
                    modifier = Modifier.fillMaxWidth(),
                    minLines = 2,
                    maxLines = 3,
                    shape = RoundedCornerShape(16.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = colors.onSurface,
                        unfocusedTextColor = colors.onSurface,
                        focusedBorderColor = colors.primary,
                        unfocusedBorderColor = colors.onSurfaceVariant.copy(alpha = 0.3f),
                        focusedLabelColor = colors.primary,
                        unfocusedLabelColor = colors.onSurfaceVariant,
                        cursorColor = colors.primary
                    )
                )

                // Modalidad
                Text(
                    "Modalidad de la cita",
                    style = typography.labelMedium,
                    fontSize = 14.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.onSurface
                )
                Spacer(modifier = Modifier.height(6.dp))
                ExposedDropdownMenuBox(
                    expanded = modalidadDropdownExpanded,
                    onExpandedChange = { modalidadDropdownExpanded = it }
                ) {
                    OutlinedTextField(
                        value = when (modalidadSeleccionada) {
                            ModalidadCita.PRESENCIAL -> "🏢 Presencial"
                            ModalidadCita.LLAMADA -> "📞 Llamada"
                        },
                        onValueChange = {},
                        readOnly = true,
                        leadingIcon = {
                            Icon(
                                if (modalidadSeleccionada == ModalidadCita.PRESENCIAL) Icons.Default.LocationOn else Icons.Default.Phone,
                                contentDescription = "Modalidad",
                                tint = colors.primary
                            )
                        },
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = modalidadDropdownExpanded) },
                        modifier = Modifier.fillMaxWidth().menuAnchor(),
                        shape = RoundedCornerShape(14.dp),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = colors.onSurface,
                            unfocusedTextColor = colors.onSurface,
                            focusedBorderColor = colors.primary,
                            unfocusedBorderColor = colors.onSurfaceVariant.copy(alpha = 0.3f)
                        )
                    )
                    ExposedDropdownMenu(
                        expanded = modalidadDropdownExpanded,
                        onDismissRequest = { modalidadDropdownExpanded = false }
                    ) {
                        DropdownMenuItem(
                            text = {
                                Row {
                                    Icon(Icons.Default.LocationOn, contentDescription = "", modifier = Modifier.size(20.dp), tint = colors.primary)
                                    Spacer(modifier = Modifier.width(8.dp))
                                    Text("Presencial", color = colors.onSurface)
                                }
                            },
                            onClick = {
                                modalidadSeleccionada = ModalidadCita.PRESENCIAL
                                modalidadDropdownExpanded = false
                            }
                        )
                        DropdownMenuItem(
                            text = {
                                Row {
                                    Icon(Icons.Default.Phone, contentDescription = "", modifier = Modifier.size(20.dp), tint = colors.primary)
                                    Spacer(modifier = Modifier.width(8.dp))
                                    Text("Llamada", color = colors.onSurface)
                                }
                            },
                            onClick = {
                                modalidadSeleccionada = ModalidadCita.LLAMADA
                                modalidadDropdownExpanded = false
                            }
                        )
                    }
                }

                // Información de pago
                Text(
                    "Información de pago",
                    style = typography.labelMedium,
                    fontSize = 14.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.onSurface
                )
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(16.dp),
                    colors = CardDefaults.cardColors(containerColor = colors.surface.copy(alpha = 0.7f))
                ) {
                    Column(modifier = Modifier.padding(16.dp)) {
                        Text(
                            "Método de pago",
                            style = typography.labelSmall,
                            fontSize = 12.sp,
                            color = colors.onSurfaceVariant
                        )
                        Spacer(modifier = Modifier.height(8.dp))
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(24.dp)
                        ) {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.PRESENCIAL,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.PRESENCIAL },
                                    colors = RadioButtonDefaults.colors(selectedColor = colors.primary)
                                )
                                Text("Presencial", color = colors.onSurface)
                            }
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.ONLINE,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.ONLINE },
                                    colors = RadioButtonDefaults.colors(selectedColor = colors.primary)
                                )
                                Text("Online", color = colors.onSurface)
                            }
                        }
                        Spacer(modifier = Modifier.height(12.dp))

                        OutlinedTextField(
                            value = montoCalculado.toString(),
                            onValueChange = {},
                            readOnly = true,
                            label = { Text("Monto (€)", color = colors.onSurfaceVariant) },
                            leadingIcon = { Text("€", color = colors.primary) },
                            singleLine = true,
                            shape = RoundedCornerShape(12.dp),
                            modifier = Modifier.fillMaxWidth(),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colors.onSurface,
                                unfocusedTextColor = colors.onSurface,
                                focusedBorderColor = colors.primary,
                                unfocusedBorderColor = colors.onSurfaceVariant.copy(alpha = 0.3f)
                            )
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(
                            when (metodoPagoSeleccionado) {
                                MetodoPago.ONLINE -> "💳 El pago se procesará online al momento de agendar la cita"
                                MetodoPago.PRESENCIAL -> "💰 El pago se realizará en consulta el día de la cita"
                            },
                            style = typography.bodySmall,
                            fontSize = 12.sp,
                            color = colors.onSurfaceVariant
                        )
                    }
                }
            }
        },
        confirmButton = {
            val habilitado = terapiaSeleccionada != null && horaSeleccionada != null && (horasDisponibles.isNotEmpty() || modoEdicion)
            Button(
                onClick = {
                    val terapia = terapiaSeleccionada ?: return@Button
                    val hora = horaSeleccionada ?: return@Button

                    if (modoEdicion && citaExistente != null) {
                        onEditarCita(
                            citaExistente.id,
                            idPaciente,
                            fechaSeleccionada,
                            hora,
                            duracionMinutos,
                            motivo.ifBlank { "${terapia.nombre} - Consulta" },
                            terapia.idTipo,
                            metodoPagoSeleccionado,
                            estadoPagoSeleccionado,
                            montoCalculado,
                            modalidadSeleccionada
                        )
                    } else {
                        onCrearCita(
                            idPaciente,
                            fechaSeleccionada,
                            hora,
                            duracionMinutos,
                            motivo.ifBlank { "${terapia.nombre} - Consulta" },
                            terapia.idTipo,
                            metodoPagoSeleccionado,
                            estadoPagoSeleccionado,
                            montoCalculado,
                            modalidadSeleccionada
                        )
                    }
                    onDismiss()
                },
                enabled = habilitado,
                modifier = Modifier.fillMaxWidth().height(52.dp),
                shape = RoundedCornerShape(26.dp),
                colors = ButtonDefaults.buttonColors(
                    containerColor = colors.primary,
                    contentColor = MaterialTheme.colorScheme.surface,
                    disabledContainerColor = colors.primaryContainer.copy(alpha = 0.5f)
                ),
                elevation = ButtonDefaults.buttonElevation(4.dp)
            ) {
                Text(
                    if (modoEdicion) "💾 Guardar cambios" else "✅ Crear cita",
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Medium
                )
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                shape = RoundedCornerShape(14.dp)
            ) {
                Text("Cancelar", color = colors.onSurfaceVariant, fontSize = 14.sp)
            }
        }
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CampoSeleccionAmani(
    label: String,
    icono: androidx.compose.ui.graphics.vector.ImageVector,
    valor: String,
    expanded: Boolean,
    onExpandedChange: (Boolean) -> Unit,
    error: Boolean = false,
    content: @Composable ExposedDropdownMenuBoxScope.() -> Unit
) {
    val colors = MaterialTheme.colorScheme
    Column {
        Text(
            label,
            style = MaterialTheme.typography.labelMedium,
            fontSize = 14.sp,
            fontWeight = FontWeight.SemiBold,
            color = colors.onSurface
        )
        Spacer(modifier = Modifier.height(6.dp))
        ExposedDropdownMenuBox(expanded = expanded, onExpandedChange = onExpandedChange) {
            OutlinedTextField(
                value = valor,
                onValueChange = {},
                readOnly = true,
                leadingIcon = {
                    Icon(icono, contentDescription = label, modifier = Modifier.size(20.dp), tint = colors.primary)
                },
                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded) },
                modifier = Modifier.fillMaxWidth().menuAnchor(),
                singleLine = true,
                shape = RoundedCornerShape(14.dp),
                isError = error,
                colors = OutlinedTextFieldDefaults.colors(
                    focusedTextColor = colors.onSurface,
                    unfocusedTextColor = colors.onSurface,
                    focusedBorderColor = colors.primary,
                    unfocusedBorderColor = colors.onSurfaceVariant.copy(alpha = 0.3f),
                    focusedLabelColor = colors.primary,
                    unfocusedLabelColor = colors.onSurfaceVariant,
                    cursorColor = colors.primary
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
fun CampoFechaAmani(
    fechaSeleccionada: LocalDate,
    onFechaChange: (LocalDate) -> Unit
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy")

    Column {
        Text(
            "Fecha",
            style = typography.labelMedium,
            fontSize = 14.sp,
            fontWeight = FontWeight.SemiBold,
            color = colors.onSurface
        )
        Spacer(modifier = Modifier.height(6.dp))
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(14.dp),
            colors = CardDefaults.cardColors(containerColor = colors.primaryContainer.copy(alpha = 0.1f)),
            elevation = CardDefaults.cardElevation(2.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth().padding(12.dp),
                horizontalArrangement = Arrangement.SpaceEvenly,
                verticalAlignment = Alignment.CenterVertically
            ) {
                IconButton(onClick = { onFechaChange(fechaSeleccionada.minusDays(1)) }) {
                    Icon(Icons.Default.ChevronLeft, contentDescription = "Día anterior", tint = colors.primary)
                }
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(
                        fechaSeleccionada.format(formatterFecha),
                        style = typography.titleMedium,
                        fontSize = 16.sp,
                        fontWeight = FontWeight.Bold,
                        color = colors.onSurface
                    )
                    Text(
                        fechaSeleccionada.format(DateTimeFormatter.ofPattern("EEEE", Locale("es", "ES"))).replaceFirstChar { it.uppercase() },
                        style = typography.bodySmall,
                        fontSize = 12.sp,
                        color = colors.onSurfaceVariant
                    )
                }
                IconButton(onClick = { onFechaChange(fechaSeleccionada.plusDays(1)) }) {
                    Icon(Icons.Default.ChevronRight, contentDescription = "Día siguiente", tint = colors.primary)
                }
            }
        }
    }
}
