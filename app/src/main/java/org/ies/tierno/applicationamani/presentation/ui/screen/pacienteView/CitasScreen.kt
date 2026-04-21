package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import android.Manifest
import android.os.Build
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
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
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.citas.FranjaDisponibilidadResponse
import org.ies.tierno.applicationamani.dto.citas.TerapiaResponseDTO
import org.ies.tierno.applicationamani.presentation.ui.componente.AmaniBottomBar
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomBarConfig
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
import java.util.*

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CitasScreen(
    navController: NavController,
    citaIdEditar: Long? = null,
    viewModel: PsicologoAgendaViewModel,
    listarTerapiasViewModel: ListarTerapiasViewModel
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

    // Buscar cita a editar
    LaunchedEffect(agendaMensual, citaIdEditar) {
        if (citaIdEditar != null && citaIdEditar > 0 && !modoEdicion) {
            val cita = agendaMensual.find { it.id == citaIdEditar }
            if (cita != null) {
                modoEdicion = true
                citaEditando = cita
                fechaSeleccionada = cita.fecha
                mostrarDialogo = true
                viewModel.cargarDisponibilidadDia(cita.fecha)
            }
        }
    }

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

    val tieneDisponibilidad = remember(disponibilidadDia, citasDelDia, modoEdicion, citaEditando) {
        if (disponibilidadDia?.diaCompleto == true) {
            false
        } else {
            val slotsLibres = disponibilidadDia?.slotsLibres?.filter { !it.ocupado } ?: emptyList()
            slotsLibres.any { franja ->
                if (modoEdicion && citaEditando?.horaInicio == franja.hora) {
                    true
                } else {
                    !citasDelDia.any { cita -> cita.horaInicio == franja.hora }
                }
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
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column {
                        Text(
                            text = if (modoEdicion) "Reagendar cita" else "Mis citas",
                            style = typography.headlineMedium,
                            fontWeight = FontWeight.Bold,
                            color = colors.onBackground
                        )
                        Text(
                            text = if (modoEdicion) "Modifica los datos de tu cita" else "Selecciona una fecha y agenda tu cita",
                            style = typography.bodyMedium,
                            color = colors.onSurfaceVariant
                        )
                    }
                    if (modoEdicion) {
                        TextButton(onClick = {
                            modoEdicion = false
                            citaEditando = null
                            fechaSeleccionada = null
                            navController.navigateUp()
                        }) {
                            Icon(Icons.Default.Close, contentDescription = "Cancelar")
                            Spacer(modifier = Modifier.width(4.dp))
                            Text("Cancelar")
                        }
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    LeyendaItem(colors.primary, "Con citas")
                    LeyendaItem(colors.primaryContainer, "Día disponible")
                    LeyendaItem(colors.errorContainer, "Sin disponibilidad")
                }

                Spacer(modifier = Modifier.height(16.dp))

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
                            if (fechaSeleccionada != null) {
                                viewModel.cargarDisponibilidadDia(fechaSeleccionada!!)
                            }
                        }
                    )
                }

                Spacer(modifier = Modifier.height(16.dp))

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
                                shape = RoundedCornerShape(20.dp),
                                colors = CardDefaults.cardColors(
                                    containerColor = colors.primaryContainer.copy(alpha = 0.3f)
                                )
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
                                            style = typography.titleSmall
                                        )
                                        if (!cita.motivo.isNullOrBlank()) {
                                            Text(
                                                text = cita.motivo,
                                                style = typography.bodySmall,
                                                color = colors.onSurfaceVariant
                                            )
                                        }
                                        Surface(
                                            shape = RoundedCornerShape(12.dp),
                                            color = when (cita.estado?.lowercase()) {
                                                "confirmada" -> colors.primary.copy(alpha = 0.2f)
                                                "cancelada" -> colors.error.copy(alpha = 0.2f)
                                                else -> colors.secondary.copy(alpha = 0.2f)
                                            }
                                        ) {
                                            Text(
                                                text = cita.estado?.replaceFirstChar { it.uppercase() } ?: "Pendiente",
                                                style = typography.labelSmall,
                                                modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
                                            )
                                        }
                                    }
                                    Row {
                                        IconButton(onClick = {
                                            modoEdicion = true
                                            citaEditando = cita
                                            fechaSeleccionada = cita.fecha
                                            mostrarDialogo = true
                                            viewModel.cargarDisponibilidadDia(cita.fecha)
                                        }) {
                                            Icon(Icons.Default.Edit, contentDescription = "Editar")
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
                                            Icon(Icons.Default.CalendarMonth, contentDescription = "Calendario")
                                        }
                                    }
                                }
                            }
                        }
                        Spacer(modifier = Modifier.height(16.dp))
                    }
                }

                AnimatedVisibility(
                    visible = fechaSeleccionada != null && !isLoading,
                    enter = fadeIn() + expandVertically(),
                    exit = fadeOut() + shrinkVertically()
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
                                Surface(
                                    modifier = Modifier.fillMaxWidth(),
                                    shape = RoundedCornerShape(16.dp),
                                    color = if (tieneDisponibilidad) colors.primaryContainer.copy(alpha = 0.3f) else colors.errorContainer.copy(alpha = 0.3f)
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
                                                text = fecha.format(DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM", Locale("es", "ES"))).replaceFirstChar { it.uppercase() },
                                                style = typography.titleMedium,
                                                fontWeight = FontWeight.Bold
                                            )
                                            if (tieneDisponibilidad) {
                                                Text(
                                                    if (modoEdicion) "✅ Puedes reagendar a este horario" else "✅ Hay horarios disponibles",
                                                    style = typography.bodySmall,
                                                    color = colors.primary
                                                )
                                            } else {
                                                Text(
                                                    "❌ No hay disponibilidad para este día",
                                                    style = typography.bodySmall,
                                                    color = colors.error
                                                )
                                            }
                                        }
                                    }
                                }

                                Spacer(modifier = Modifier.height(20.dp))

                                Button(
                                    onClick = { mostrarDialogo = true },
                                    enabled = tieneDisponibilidad,
                                    shape = RoundedCornerShape(16.dp),
                                    modifier = Modifier.fillMaxWidth().height(56.dp)
                                ) {
                                    Icon(
                                        if (modoEdicion) Icons.Default.Edit else Icons.Default.Add,
                                        contentDescription = null,
                                        modifier = Modifier.size(24.dp)
                                    )
                                    Spacer(modifier = Modifier.width(8.dp))
                                    Text(
                                        if (modoEdicion) "Reagendar cita" else "Agendar nueva cita",
                                        style = typography.titleMedium,
                                        fontWeight = FontWeight.SemiBold
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
        }
    }

    if (mostrarDialogo && fechaSeleccionada != null && idPaciente > 0) {
        DialogoGestionCita(
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
                        snackbarHostState.showSnackbar("✅ Cita agendada correctamente")
                        mostrarDialogo = false
                        modoEdicion = false
                        citaEditando = null
                        viewModel.cargarDisponibilidadDia(fecha)
                    } else {
                        snackbarHostState.showSnackbar(result.exceptionOrNull()?.message ?: "Error al crear cita")
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
                    snackbarHostState.showSnackbar("✏️ Cita reagendada correctamente")
                    mostrarDialogo = false
                    modoEdicion = false
                    citaEditando = null
                    viewModel.cargarDisponibilidadDia(fecha)
                }
            },
            onDismiss = {
                mostrarDialogo = false
                if (citaIdEditar == null) {
                    modoEdicion = false
                    citaEditando = null
                }
            }
        )
    }
}

@Composable
fun LeyendaItem(color: Color, texto: String) {
    Row(verticalAlignment = Alignment.CenterVertically) {
        Box(
            modifier = Modifier
                .size(12.dp)
                .clip(RoundedCornerShape(4.dp))
                .background(color)
        )
        Spacer(modifier = Modifier.width(6.dp))
        Text(text = texto, style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun DialogoGestionCita(
    modoEdicion: Boolean,
    citaExistente: AgendaItemDTO?,
    fechaInicial: LocalDate,
    terapias: List<TerapiaResponseDTO>,
    slotsLibres: List<FranjaDisponibilidadResponse>,
    citasExistentes: List<AgendaItemDTO>,
    idPaciente: Long,
    onFechaChange: (LocalDate) -> Unit,
    onCrearCita: (Long, LocalDate, LocalTime, Int, String, Long, MetodoPago, EstadoPago, BigDecimal, ModalidadCita) -> Unit,
    onEditarCita: (Long, Long, LocalDate, LocalTime, Int, String, Long, MetodoPago, EstadoPago, BigDecimal, ModalidadCita) -> Unit,
    onDismiss: () -> Unit
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy")
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")

    var fechaSeleccionada by remember { mutableStateOf(fechaInicial) }
    var motivo by remember { mutableStateOf(citaExistente?.motivo ?: "") }
    var duracionMinutos by remember { mutableIntStateOf(citaExistente?.duracionMinutos ?: 60) }
    var metodoPagoSeleccionado by remember { mutableStateOf(citaExistente?.metodoPago ?: MetodoPago.PRESENCIAL) }
    var estadoPagoSeleccionado by remember { mutableStateOf(citaExistente?.estadoPago ?: EstadoPago.PENDIENTE) }
    var modalidadSeleccionada by remember { mutableStateOf(citaExistente?.modalidad ?: ModalidadCita.PRESENCIAL) }
    var modalidadDropdownExpanded by remember { mutableStateOf(false) }

    // Obtener el ID de la terapia desde la cita existente usando el nombre
    var terapiaSeleccionada by remember {
        mutableStateOf<TerapiaResponseDTO?>(
            citaExistente?.let { cita ->
                terapias.find { it.nombre == cita.tipo }
            }
        )
    }
    var terapiaDropdownExpanded by remember { mutableStateOf(false) }

    val horasDisponibles = remember(slotsLibres, citasExistentes, fechaSeleccionada, modoEdicion, citaExistente) {
        val horasLibres = slotsLibres.filter { !it.ocupado }.map { it.hora }.sorted()
        val horasOcupadas = citasExistentes
            .filter { if (modoEdicion && citaExistente != null) it.id != citaExistente.id else true }
            .map { it.horaInicio }
        horasLibres.filter { hora -> hora !in horasOcupadas }
    }

    var horaSeleccionada by remember {
        mutableStateOf(
            if (modoEdicion && citaExistente != null && horasDisponibles.contains(citaExistente.horaInicio))
                citaExistente.horaInicio
            else
                horasDisponibles.firstOrNull()
        )
    }
    var horaDropdownExpanded by remember { mutableStateOf(false) }

    val montoCalculado = remember(terapiaSeleccionada, metodoPagoSeleccionado) {
        when {
            terapiaSeleccionada == null -> BigDecimal.ZERO
            metodoPagoSeleccionado == MetodoPago.ONLINE -> terapiaSeleccionada!!.precio
            else -> BigDecimal.ZERO
        }
    }

    LaunchedEffect(terapiaSeleccionada) {
        terapiaSeleccionada?.let { terapia ->
            duracionMinutos = terapia.duracionMinutos
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
                    if (modoEdicion) "✏️ Reagendar cita" else "📅 Agendar nueva cita",
                    style = typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                    color = colors.primary
                )
                Text(
                    if (modoEdicion) "Modifica los datos de tu cita" else "Completa la información",
                    style = typography.bodySmall,
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
                OutlinedTextField(
                    value = terapiaSeleccionada?.nombre ?: "",
                    onValueChange = {},
                    readOnly = true,
                    label = { Text("Tipo de terapia") },
                    trailingIcon = { Icon(Icons.Default.ArrowDropDown, null) },
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .clickable { terapiaDropdownExpanded = true },
                // Tipo de terapia
                shape = RoundedCornerShape(14.dp)
                )
                DropdownMenu(
                    expanded = terapiaDropdownExpanded,
                    onDismissRequest = { terapiaDropdownExpanded = false },
                    modifier = Modifier.heightIn(max = 300.dp)
                ) {
                    terapias.forEach { terapia ->
                        DropdownMenuItem(
                            text = {
                                Column {
                                    Text(terapia.nombre, fontWeight = FontWeight.Medium)
                                    Text("${terapia.duracionMinutos} min | ${terapia.precio}€", fontSize = 12.sp)
                                }
                            },
                            onClick = {
                                terapiaSeleccionada = terapia
                                terapiaDropdownExpanded = false
                            }
                        )
                    }
                }

                // Fecha
                CampoFecha(
                    fechaSeleccionada = fechaSeleccionada,
                    onFechaChange = { fechaSeleccionada = it },
                    colors = colors,
                    formatterFecha = formatterFecha
                )

                // Hora
                OutlinedTextField(
                    value = horaSeleccionada?.format(formatterHora) ?: "Seleccionar hora",
                    onValueChange = {},
                    readOnly = true,
                    label = { Text("Hora de inicio") },
                    trailingIcon = { Icon(Icons.Default.ArrowDropDown, null) },
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .clickable { terapiaDropdownExpanded = true },
                    shape = RoundedCornerShape(14.dp),
                    isError = horasDisponibles.isEmpty(),
                )
                DropdownMenu(
                    expanded = horaDropdownExpanded,
                    onDismissRequest = { horaDropdownExpanded = false }
                ) {
                    horasDisponibles.forEach { hora ->
                        DropdownMenuItem(
                            text = { Text(hora.format(formatterHora)) },
                            onClick = {
                                horaSeleccionada = hora
                                horaDropdownExpanded = false
                            }
                        )
                    }
                }

                // Duración
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(14.dp),
                    colors = CardDefaults.cardColors(containerColor = colors.primaryContainer.copy(alpha = 0.2f))
                ) {
                    Row(
                        modifier = Modifier.padding(14.dp),
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Text("Duración", color = colors.primary)
                        Text("$duracionMinutos minutos", fontWeight = FontWeight.Bold)
                    }
                }

                // Motivo
                OutlinedTextField(
                    value = motivo,
                    onValueChange = { motivo = it },
                    label = { Text("Motivo (opcional)") },
                    modifier = Modifier.fillMaxWidth(),
                    minLines = 2,
                    shape = RoundedCornerShape(14.dp)
                )

                // Modalidad
                OutlinedTextField(
                    value = when (modalidadSeleccionada) {
                        ModalidadCita.PRESENCIAL -> "Presencial"
                        ModalidadCita.LLAMADA -> "Llamada"
                    },
                    onValueChange = {},
                    readOnly = true,
                    label = { Text("Modalidad") },
                    trailingIcon = { Icon(Icons.Default.ArrowDropDown, null) },
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .clickable { terapiaDropdownExpanded = true },
                    shape = RoundedCornerShape(14.dp)
                )
                DropdownMenu(
                    expanded = modalidadDropdownExpanded,
                    onDismissRequest = { modalidadDropdownExpanded = false }
                ) {
                    DropdownMenuItem(text = { Text("Presencial") }, onClick = {
                        modalidadSeleccionada = ModalidadCita.PRESENCIAL
                        modalidadDropdownExpanded = false
                    })
                    DropdownMenuItem(text = { Text("Llamada") }, onClick = {
                        modalidadSeleccionada = ModalidadCita.LLAMADA
                        modalidadDropdownExpanded = false
                    })
                }

                // Pago
                Text("Información de pago", style = typography.labelMedium, fontWeight = FontWeight.SemiBold)
                Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                    Row {
                        RadioButton(
                            selected = metodoPagoSeleccionado == MetodoPago.PRESENCIAL,
                            onClick = { metodoPagoSeleccionado = MetodoPago.PRESENCIAL }
                        )
                        Text("Presencial")
                    }
                    Row {
                        RadioButton(
                            selected = metodoPagoSeleccionado == MetodoPago.ONLINE,
                            onClick = { metodoPagoSeleccionado = MetodoPago.ONLINE }
                        )
                        Text("Online")
                    }
                }

                // Estado de pago
                Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                    Row {
                        RadioButton(
                            selected = estadoPagoSeleccionado == EstadoPago.PENDIENTE,
                            onClick = { estadoPagoSeleccionado = EstadoPago.PENDIENTE }
                        )
                        Text("Pendiente")
                    }
                    Row {
                        RadioButton(
                            selected = estadoPagoSeleccionado == EstadoPago.PAGADO,
                            onClick = { estadoPagoSeleccionado = EstadoPago.PAGADO }
                        )
                        Text("Pagado")
                    }
                }

                OutlinedTextField(
                    value = montoCalculado.toString(),
                    onValueChange = {},
                    readOnly = true,
                    label = { Text("Monto (€)") },
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(14.dp)
                )
            }
        },
        confirmButton = {
            val habilitado = terapiaSeleccionada != null && horaSeleccionada != null && horasDisponibles.isNotEmpty()
            Button(
                onClick = {
                    val terapia = terapiaSeleccionada ?: return@Button
                    val hora = horaSeleccionada ?: return@Button
                    if (modoEdicion && citaExistente != null) {
                        onEditarCita(
                            citaExistente.id, idPaciente, fechaSeleccionada, hora, duracionMinutos,
                            motivo.ifBlank { "${terapia.nombre} - Consulta" }, terapia.idTipo,
                            metodoPagoSeleccionado, estadoPagoSeleccionado, montoCalculado, modalidadSeleccionada
                        )
                    } else {
                        onCrearCita(
                            idPaciente, fechaSeleccionada, hora, duracionMinutos,
                            motivo.ifBlank { "${terapia.nombre} - Consulta" }, terapia.idTipo,
                            metodoPagoSeleccionado, estadoPagoSeleccionado, montoCalculado, modalidadSeleccionada
                        )
                    }
                },
                enabled = habilitado,
                modifier = Modifier.fillMaxWidth().height(52.dp),
                shape = RoundedCornerShape(14.dp)
            ) {
                Text(if (modoEdicion) "Guardar cambios" else "Confirmar cita")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) { Text("Cancelar") }
        }
    )
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CampoFecha(
    fechaSeleccionada: LocalDate,
    onFechaChange: (LocalDate) -> Unit,
    colors: ColorScheme,
    formatterFecha: DateTimeFormatter
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(14.dp),
        colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.3f))
    ) {
        Row(
            modifier = Modifier.padding(12.dp),
            horizontalArrangement = Arrangement.SpaceEvenly,
            verticalAlignment = Alignment.CenterVertically
        ) {
            IconButton(onClick = { onFechaChange(fechaSeleccionada.minusDays(1)) }) {
                Icon(Icons.Default.ChevronLeft, null)
            }
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Text(fechaSeleccionada.format(formatterFecha), fontWeight = FontWeight.Bold)
                Text(
                    fechaSeleccionada.format(DateTimeFormatter.ofPattern("EEEE", Locale("es", "ES"))),
                    fontSize = 11.sp
                )
            }
            IconButton(onClick = { onFechaChange(fechaSeleccionada.plusDays(1)) }) {
                Icon(Icons.Default.ChevronRight, null)
            }
        }
    }
}