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
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
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
    listarTerapiasViewModel: ListarTerapiasViewModel = koinViewModel(),
) {
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

    val notifPermissionLauncher =
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.RequestPermission(),
        ) { granted ->
            if (granted) {
                pendingRecordatorio?.let { (fecha, hora) ->
                    programarRecordatorioCita(
                        context = context,
                        fecha = fecha,
                        hora = hora,
                        minutosAntes = 30,
                        titulo = "Cita en Amani",
                        mensaje = "Tu cita es a las ${hora.format(DateTimeFormatter.ofPattern("HH:mm"))}",
                    )
                }
            }
            pendingRecordatorio = null
        }

    fun programarConPermiso(
        fecha: LocalDate,
        hora: LocalTime,
    ) {
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
                mensaje = "Tu cita es a las ${hora.format(DateTimeFormatter.ofPattern("HH:mm"))}",
            )
        }
    }

    val fechasConCitas =
        remember(agendaMensual) {
            agendaMensual.map { it.fecha }.toSet()
        }

    val citasDelDia =
        remember(fechaSeleccionada, agendaMensual) {
            fechaSeleccionada?.let { fecha ->
                agendaMensual.filter { it.fecha == fecha }
            } ?: emptyList()
        }

    val tieneDisponibilidad =
        remember(disponibilidadDia, citasDelDia) {
            if (disponibilidadDia?.diaCompleto == true) {
                false
            } else {
                val slotsLibres = disponibilidadDia?.slotsLibres?.filter { !it.ocupado } ?: emptyList()
                slotsLibres.isNotEmpty()
            }
        }

    Scaffold(
        snackbarHost = { SnackbarHost(snackbarHostState) },
        containerColor = MaterialTheme.colorScheme.surface,
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    modoEdicion = false
                    citaEditando = null
                    mostrarDialogo = true
                    val fechaParaCargar = fechaSeleccionada ?: LocalDate.now()
                    viewModel.cargarDisponibilidadDia(fechaParaCargar)
                },
                containerColor = MaterialTheme.colorScheme.primary,
                contentColor = MaterialTheme.colorScheme.onPrimary,
                shape = CircleShape,
                elevation = FloatingActionButtonDefaults.elevation(2.dp),
            ) {
                Icon(Icons.Default.Add, contentDescription = "Nueva cita")
            }
        },
    ) { innerPadding ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(innerPadding),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .verticalScroll(rememberScrollState())
                        .padding(horizontal = 20.dp, vertical = 16.dp),
            ) {
                // Header
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Column {
                        Text(
                            text = "Mis Citas",
                            style = MaterialTheme.typography.headlineMedium,
                            color = MaterialTheme.colorScheme.onSurface,
                        )
                        Text(
                            text = "Selecciona una fecha y agenda tu cita",
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(20.dp))

                // Leyenda
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(20.dp),
                ) {
                    LeyendaItemAmani(MaterialTheme.colorScheme.primary, "Con citas")
                    LeyendaItemAmani(MaterialTheme.colorScheme.secondary, "Día disponible")
                    LeyendaItemAmani(MaterialTheme.colorScheme.error, "Sin disponibilidad")
                }

                Spacer(modifier = Modifier.height(16.dp))

                // Calendario
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.large,
                    colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant),
                    elevation = CardDefaults.cardElevation(0.dp),
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
                        },
                    )
                }

                Spacer(modifier = Modifier.height(20.dp))

                // Mostrar citas existentes del día seleccionado
                AnimatedVisibility(
                    visible = fechaSeleccionada != null && citasDelDia.isNotEmpty(),
                    enter = fadeIn() + expandVertically(),
                    exit = fadeOut() + shrinkVertically(),
                ) {
                    Column {
                        Text(
                            text = "📋 Mis citas programadas",
                            style = MaterialTheme.typography.titleMedium,
                            color = MaterialTheme.colorScheme.onSurface,
                            modifier = Modifier.padding(vertical = 8.dp),
                        )
                        citasDelDia.forEach { cita ->
                            Card(
                                modifier =
                                    Modifier
                                        .fillMaxWidth()
                                        .padding(vertical = 6.dp),
                                shape = MaterialTheme.shapes.medium,
                                colors =
                                    CardDefaults.cardColors(
                                        containerColor = MaterialTheme.colorScheme.secondaryContainer,
                                    ),
                                elevation = CardDefaults.cardElevation(1.dp),
                            ) {
                                Row(
                                    modifier = Modifier.padding(16.dp),
                                    horizontalArrangement = Arrangement.SpaceBetween,
                                    verticalAlignment = Alignment.CenterVertically,
                                ) {
                                    Column {
                                        Text(
                                            text = "🕐 ${cita.horaInicio.format(
                                                DateTimeFormatter.ofPattern("HH:mm"),
                                            )} - ${cita.horaFin.format(DateTimeFormatter.ofPattern("HH:mm"))}",
                                            style = MaterialTheme.typography.titleSmall,
                                            color = MaterialTheme.colorScheme.onSecondaryContainer,
                                        )
                                        if (!cita.motivo.isNullOrBlank()) {
                                            Text(
                                                text = cita.motivo,
                                                style = MaterialTheme.typography.bodySmall,
                                                color = MaterialTheme.colorScheme.onSecondaryContainer,
                                            )
                                        }
                                        Surface(
                                            shape = MaterialTheme.shapes.small,
                                            color =
                                                when (cita.estado?.lowercase()) {
                                                    "confirmada" -> MaterialTheme.colorScheme.primaryContainer
                                                    "cancelada" -> MaterialTheme.colorScheme.errorContainer
                                                    else -> MaterialTheme.colorScheme.tertiaryContainer
                                                },
                                        ) {
                                            Text(
                                                text = cita.estado?.replaceFirstChar { it.uppercase() } ?: "Pendiente",
                                                style = MaterialTheme.typography.labelSmall,
                                                color =
                                                    when (cita.estado?.lowercase()) {
                                                        "confirmada" -> MaterialTheme.colorScheme.onPrimaryContainer
                                                        "cancelada" -> MaterialTheme.colorScheme.onErrorContainer
                                                        else -> MaterialTheme.colorScheme.onTertiaryContainer
                                                    },
                                                modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                                            )
                                        }
                                    }
                                    Row {
                                        IconButton(onClick = {
                                            navController.navigate(
                                                Screens.editarCitaScreen.pass(cita.id.toString()),
                                            )
                                        }) {
                                            Icon(
                                                Icons.Default.Edit,
                                                contentDescription = "Editar",
                                                tint = MaterialTheme.colorScheme.primary,
                                            )
                                        }
                                        IconButton(onClick = {
                                            enviarCitaAlCalendario(
                                                context = context,
                                                titulo = "Cita en Amani",
                                                descripcion = cita.motivo ?: "Cita psicológica",
                                                fecha = cita.fecha,
                                                hora = cita.horaInicio,
                                                duracionMinutos = cita.duracionMinutos ?: 60,
                                            )
                                        }) {
                                            Icon(
                                                Icons.Default.CalendarMonth,
                                                contentDescription = "Calendario",
                                                tint = MaterialTheme.colorScheme.primary,
                                            )
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
                    exit = fadeOut() + shrinkVertically(),
                ) {
                    fechaSeleccionada?.let { fecha ->
                        Card(
                            modifier = Modifier.fillMaxWidth(),
                            shape = MaterialTheme.shapes.large,
                            colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant),
                            elevation = CardDefaults.cardElevation(0.dp),
                        ) {
                            Column(modifier = Modifier.padding(20.dp)) {
                                Surface(
                                    modifier = Modifier.fillMaxWidth(),
                                    shape = MaterialTheme.shapes.medium,
                                    color =
                                        if (tieneDisponibilidad) {
                                            MaterialTheme.colorScheme.secondaryContainer
                                        } else {
                                            MaterialTheme.colorScheme.errorContainer
                                        },
                                ) {
                                    Row(
                                        modifier = Modifier.padding(16.dp),
                                        verticalAlignment = Alignment.CenterVertically,
                                    ) {
                                        Icon(
                                            imageVector = if (tieneDisponibilidad) Icons.Default.CalendarToday else Icons.Default.EventBusy,
                                            contentDescription = null,
                                            tint = if (tieneDisponibilidad) MaterialTheme.colorScheme.onSecondaryContainer else MaterialTheme.colorScheme.onErrorContainer,
                                            modifier = Modifier.size(32.dp),
                                        )
                                        Spacer(modifier = Modifier.width(16.dp))
                                        Column {
                                            Text(
                                                text =
                                                    fecha
                                                        .format(
                                                            DateTimeFormatter.ofPattern(
                                                                "EEEE, d 'de' MMMM",
                                                                Locale.forLanguageTag("es-ES"),
                                                            ),
                                                        ).replaceFirstChar { it.uppercase() },
                                                style = MaterialTheme.typography.titleMedium,
                                                color = if (tieneDisponibilidad) MaterialTheme.colorScheme.onSecondaryContainer else MaterialTheme.colorScheme.onErrorContainer,
                                            )
                                            if (tieneDisponibilidad) {
                                                Text(
                                                    "✅ Hay horarios disponibles",
                                                    style = MaterialTheme.typography.bodySmall,
                                                    color = MaterialTheme.colorScheme.onSecondaryContainer,
                                                )
                                            } else {
                                                Text(
                                                    "❌ No hay disponibilidad para este día",
                                                    style = MaterialTheme.typography.bodySmall,
                                                    color = MaterialTheme.colorScheme.onErrorContainer,
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
                        CircularProgressIndicator()
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
                    val result =
                        viewModel.crearCitaParaPaciente(
                            idPaciente = idPacienteParam,
                            fecha = fecha,
                            hora = hora,
                            duracionMinutos = duracion,
                            motivo = motivo,
                            idTipoTerapia = idTerapia,
                            metodoPago = metodoPago,
                            estadoPago = estadoPago,
                            monto = monto,
                            modalidad = modalidad,
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
                        modalidad = modalidad,
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
            },
        )
    }
}

@Composable
fun LeyendaItemAmani(
    color: Color,
    texto: String,
) {
    Row(verticalAlignment = Alignment.CenterVertically) {
        Box(
            modifier =
                Modifier
                    .size(12.dp)
                    .clip(MaterialTheme.shapes.extraSmall)
                    .background(color),
        )
        Spacer(modifier = Modifier.width(8.dp))
        Text(
            text = texto,
            style = MaterialTheme.typography.labelSmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
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
    onDismiss: () -> Unit,
) {
    val formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy")
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")

    var fechaSeleccionada by remember { mutableStateOf(fechaInicial) }
    var motivo by remember { mutableStateOf(citaExistente?.motivo ?: "") }

    var metodoPagoSeleccionado by remember { mutableStateOf(MetodoPago.EFECTIVO) }
    var estadoPagoSeleccionado by remember { mutableStateOf(EstadoPago.PENDIENTE) }
    var modalidadSeleccionada by remember { mutableStateOf(ModalidadCita.PRESENCIAL) }
    var modalidadDropdownExpanded by remember { mutableStateOf(false) }

    var terapiaSeleccionada by remember { mutableStateOf<TerapiaResponseDTO?>(null) }
    var terapiaDropdownExpanded by remember { mutableStateOf(false) }

    var duracionMinutos by remember { mutableIntStateOf(60) }
    var montoCalculado by remember { mutableStateOf(BigDecimal.ZERO) }

    val colorScheme = MaterialTheme.colorScheme

    val horasDisponibles =
        remember(slotsLibres, citasExistentes, fechaSeleccionada, modoEdicion, citaExistente) {
            val horasLibres = slotsLibres.map { it.hora }.sorted()
            val horasOcupadas =
                citasExistentes
                    .filter {
                        if (modoEdicion && citaExistente != null) it.id != citaExistente.id else true
                    }.map { it.horaInicio }
            horasLibres.filter { hora -> hora !in horasOcupadas }
        }

    var horaSeleccionada by remember {
        mutableStateOf(
            if (modoEdicion && citaExistente != null && horasDisponibles.contains(citaExistente.horaInicio)) {
                citaExistente.horaInicio
            } else {
                horasDisponibles.firstOrNull()
            },
        )
    }
    var horaDropdownExpanded by remember { mutableStateOf(false) }

    LaunchedEffect(terapiaSeleccionada) {
        terapiaSeleccionada?.let { terapia ->
            duracionMinutos = terapia.duracionMinutos
            montoCalculado = if (metodoPagoSeleccionado == MetodoPago.TARJETA) terapia.precio else BigDecimal.ZERO
        }
    }

    LaunchedEffect(metodoPagoSeleccionado, terapiaSeleccionada) {
        if (metodoPagoSeleccionado == MetodoPago.TARJETA && terapiaSeleccionada != null) {
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
        shape = MaterialTheme.shapes.extraLarge,
        title = {
            Column {
                Text(
                    text = if (modoEdicion) "✏️ Reagendar cita" else "📅 Agendar nueva cita",
                    style = MaterialTheme.typography.headlineSmall,
                    color = MaterialTheme.colorScheme.primary,
                )
                Text(
                    text = if (modoEdicion) "Modifica los datos de tu cita" else "Completa la información para agendar",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        },
        text = {
            Column(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .heightIn(max = 550.dp)
                        .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(16.dp),
            ) {
                // Tipo de terapia
                CampoSeleccionAmani(
                    label = "Tipo de terapia",
                    icono = Icons.Default.MedicalServices,
                    valor = terapiaSeleccionada?.nombre ?: "",
                    expanded = terapiaDropdownExpanded,
                    onExpandedChange = { terapiaDropdownExpanded = it },
                ) {
                    if (terapias.isEmpty()) {
                        DropdownMenuItem(
                            text = {
                                Text(
                                    "No hay tipos de terapia disponibles",
                                    style = MaterialTheme.typography.bodyMedium,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                )
                            },
                            onClick = { terapiaDropdownExpanded = false },
                            enabled = false,
                        )
                    } else {
                        terapias.forEach { terapia ->
                            DropdownMenuItem(
                                text = {
                                    Column {
                                        Text(
                                            terapia.nombre,
                                            style = MaterialTheme.typography.bodyLarge,
                                            color = MaterialTheme.colorScheme.onSurface,
                                        )
                                        Text(
                                            "Duración: ${terapia.duracionMinutos} min | Precio: ${terapia.precio} €",
                                            style = MaterialTheme.typography.labelSmall,
                                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                                        )
                                    }
                                },
                                onClick = {
                                    terapiaSeleccionada = terapia
                                    terapiaDropdownExpanded = false
                                },
                            )
                        }
                    }
                }

                // Fecha
                CampoFechaAmani(
                    fechaSeleccionada = fechaSeleccionada,
                    onFechaChange = { fechaSeleccionada = it },
                )

                // Hora
                CampoSeleccionAmani(
                    label = "Hora de inicio",
                    icono = Icons.Default.Schedule,
                    valor = horaSeleccionada?.format(formatterHora) ?: "Sin horarios disponibles",
                    expanded = horaDropdownExpanded,
                    onExpandedChange = { horaDropdownExpanded = it },
                    error = horasDisponibles.isEmpty() && !modoEdicion,
                ) {
                    if (horasDisponibles.isEmpty() && !modoEdicion) {
                        DropdownMenuItem(
                            text = {
                                Column {
                                    Text(
                                        "❌ No hay horarios libres",
                                        style = MaterialTheme.typography.bodyMedium,
                                        color = MaterialTheme.colorScheme.error,
                                    )
                                    Text(
                                        "Prueba con otra fecha",
                                        style = MaterialTheme.typography.labelSmall,
                                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                                    )
                                }
                            },
                            onClick = { horaDropdownExpanded = false },
                            enabled = false,
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
                                            tint = MaterialTheme.colorScheme.primary,
                                        )
                                        Spacer(modifier = Modifier.width(8.dp))
                                        Column {
                                            Text(
                                                hora.format(formatterHora),
                                                style = MaterialTheme.typography.bodyLarge,
                                                color = MaterialTheme.colorScheme.onSurface,
                                            )
                                            Text(
                                                "Duración: $duracionMinutos min",
                                                style = MaterialTheme.typography.labelSmall,
                                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                                            )
                                        }
                                    }
                                },
                                onClick = {
                                    horaSeleccionada = hora
                                    horaDropdownExpanded = false
                                },
                            )
                        }
                    }
                }

                // Duración
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.medium,
                    colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.5f)),
                ) {
                    Row(
                        modifier = Modifier.padding(16.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween,
                    ) {
                        Column {
                            Text(
                                "Duración de la terapia",
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onPrimaryContainer,
                            )
                            Text(
                                "$duracionMinutos minutos",
                                style = MaterialTheme.typography.titleMedium,
                                color = MaterialTheme.colorScheme.onPrimaryContainer,
                            )
                        }
                        Icon(
                            Icons.Default.Timer,
                            contentDescription = "",
                            tint = MaterialTheme.colorScheme.onPrimaryContainer,
                            modifier = Modifier.size(28.dp),
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
                    shape = MaterialTheme.shapes.medium,
                )

                // Modalidad
                Text(
                    "Modalidad de la cita",
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.onSurface,
                )
                Spacer(modifier = Modifier.height(6.dp))
                ExposedDropdownMenuBox(
                    expanded = modalidadDropdownExpanded,
                    onExpandedChange = { modalidadDropdownExpanded = it },
                ) {
                    OutlinedTextField(
                        value =
                            when (modalidadSeleccionada) {
                                ModalidadCita.PRESENCIAL -> "🏢 Presencial"
                                ModalidadCita.LLAMADA -> "📞 Llamada"
                            },
                        onValueChange = {},
                        readOnly = true,
                        leadingIcon = {
                            Icon(
                                if (modalidadSeleccionada == ModalidadCita.PRESENCIAL) Icons.Default.LocationOn else Icons.Default.Phone,
                                contentDescription = "Modalidad",
                                tint = MaterialTheme.colorScheme.primary,
                            )
                        },
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = modalidadDropdownExpanded) },
                        modifier = Modifier.fillMaxWidth().menuAnchor(),
                        shape = MaterialTheme.shapes.medium,
                    )
                    ExposedDropdownMenu(
                        expanded = modalidadDropdownExpanded,
                        onDismissRequest = { modalidadDropdownExpanded = false },
                    ) {
                        DropdownMenuItem(
                            text = {
                                Row {
                                    Icon(
                                        Icons.Default.LocationOn,
                                        contentDescription = "",
                                        modifier = Modifier.size(20.dp),
                                        tint = MaterialTheme.colorScheme.primary,
                                    )
                                    Spacer(modifier = Modifier.width(8.dp))
                                    Text("Presencial")
                                }
                            },
                            onClick = {
                                modalidadSeleccionada = ModalidadCita.PRESENCIAL
                                modalidadDropdownExpanded = false
                            },
                        )
                        DropdownMenuItem(
                            text = {
                                Row {
                                    Icon(
                                        Icons.Default.Phone,
                                        contentDescription = "",
                                        modifier = Modifier.size(20.dp),
                                        tint = MaterialTheme.colorScheme.primary,
                                    )
                                    Spacer(modifier = Modifier.width(8.dp))
                                    Text("Llamada")
                                }
                            },
                            onClick = {
                                modalidadSeleccionada = ModalidadCita.LLAMADA
                                modalidadDropdownExpanded = false
                            },
                        )
                    }
                }

                // Información de pago
                Text(
                    "Información de pago",
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.onSurface,
                )
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.medium,
                    colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.7f)),
                ) {
                    Column(modifier = Modifier.padding(16.dp)) {
                        Text(
                            "Método de pago",
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Spacer(modifier = Modifier.height(8.dp))
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(24.dp),
                        ) {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.EFECTIVO,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.EFECTIVO },
                                    colors = RadioButtonDefaults.colors(selectedColor = colorScheme.primary),
                                )
                                Text("Efectivo", style = MaterialTheme.typography.bodyMedium)
                            }
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.TARJETA,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.TARJETA },
                                    colors = RadioButtonDefaults.colors(selectedColor = colorScheme.primary),
                                )
                                Text("Tarjeta", style = MaterialTheme.typography.bodyMedium)
                            }
                        }
                        Spacer(modifier = Modifier.height(12.dp))

                        OutlinedTextField(
                            value = montoCalculado.toString(),
                            onValueChange = {},
                            readOnly = true,
                            label = { Text("Monto (€)") },
                            leadingIcon = { Text("€", color = MaterialTheme.colorScheme.primary) },
                            singleLine = true,
                            shape = MaterialTheme.shapes.small,
                            modifier = Modifier.fillMaxWidth(),
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(
                            when (metodoPagoSeleccionado) {
                                MetodoPago.TARJETA, MetodoPago.ONLINE -> "💳 El pago se procesará online al momento de agendar la cita"
                                MetodoPago.EFECTIVO, MetodoPago.PRESENCIAL -> "💰 El pago se realizará en consulta el día de la cita"
                            },
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
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
                            modalidadSeleccionada,
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
                            modalidadSeleccionada,
                        )
                    }
                    onDismiss()
                },
                enabled = habilitado,
                modifier = Modifier.fillMaxWidth().height(52.dp),
                shape = CircleShape,
            ) {
                Text(
                    if (modoEdicion) "💾 Guardar cambios" else "✅ Crear cita",
                    style = MaterialTheme.typography.labelLarge,
                )
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                shape = MaterialTheme.shapes.medium,
            ) {
                Text("Cancelar")
            }
        },
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
    content: @Composable ExposedDropdownMenuBoxScope.() -> Unit,
) {
    Column {
        Text(
            label,
            style = MaterialTheme.typography.titleMedium,
            color = MaterialTheme.colorScheme.onSurface,
        )
        Spacer(modifier = Modifier.height(6.dp))
        ExposedDropdownMenuBox(expanded = expanded, onExpandedChange = onExpandedChange) {
            OutlinedTextField(
                value = valor,
                onValueChange = {},
                readOnly = true,
                leadingIcon = {
                    Icon(icono, contentDescription = label, modifier = Modifier.size(20.dp), tint = MaterialTheme.colorScheme.primary)
                },
                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded) },
                modifier = Modifier.fillMaxWidth().menuAnchor(),
                singleLine = true,
                shape = MaterialTheme.shapes.medium,
                isError = error,
            )
            ExposedDropdownMenu(
                expanded = expanded,
                onDismissRequest = { onExpandedChange(false) },
                modifier = Modifier.heightIn(max = 300.dp),
            ) { content() }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CampoFechaAmani(
    fechaSeleccionada: LocalDate,
    onFechaChange: (LocalDate) -> Unit,
) {
    val formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy")

    Column {
        Text(
            "Fecha",
            style = MaterialTheme.typography.titleMedium,
            color = MaterialTheme.colorScheme.onSurface,
        )
        Spacer(modifier = Modifier.height(6.dp))
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.medium,
            colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant),
            elevation = CardDefaults.cardElevation(1.dp),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth().padding(12.dp),
                horizontalArrangement = Arrangement.SpaceEvenly,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                IconButton(onClick = { onFechaChange(fechaSeleccionada.minusDays(1)) }) {
                    Icon(Icons.Default.ChevronLeft, contentDescription = "Día anterior", tint = MaterialTheme.colorScheme.primary)
                }
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(
                        fechaSeleccionada.format(formatterFecha),
                        style = MaterialTheme.typography.titleMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                    Text(
                        fechaSeleccionada
                            .format(
                                DateTimeFormatter.ofPattern("EEEE", Locale("es", "ES")),
                            ).replaceFirstChar { it.uppercase() },
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
                IconButton(onClick = { onFechaChange(fechaSeleccionada.plusDays(1)) }) {
                    Icon(Icons.Default.ChevronRight, contentDescription = "Día siguiente", tint = MaterialTheme.colorScheme.primary)
                }
            }
        }
    }
}
