package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import android.Manifest
import android.content.res.Configuration
import android.os.Build
import android.util.Log
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
import androidx.compose.foundation.layout.PaddingValues
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
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.CornerSize
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.AccessTime
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.CalendarMonth
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.ChevronLeft
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.EventBusy
import androidx.compose.material.icons.filled.LocationOn
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.Payment
import androidx.compose.material.icons.filled.Phone
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Timer
import androidx.compose.material.icons.filled.VideoCall
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuAnchorType
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuBoxScope
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.FloatingActionButtonDefaults
import androidx.compose.material3.HorizontalDivider
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
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.citas.FranjaDisponibilidadResponse
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.ies.tierno.applicationamani.utils.enviarCitaAlCalendario
import org.ies.tierno.applicationamani.utils.programarRecordatorioCita
import org.jitsi.meet.sdk.JitsiMeetActivity
import org.jitsi.meet.sdk.JitsiMeetConferenceOptions
import org.koin.compose.koinInject
import java.math.BigDecimal
import java.net.URL
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth
import java.time.format.DateTimeFormatter
import java.util.Locale

@Composable
private fun rememberCitasScreenThemeColors(): CitasScreenThemeColors {
    val colorScheme = MaterialTheme.colorScheme
    val amaniColors = AmaniTheme.colors
    return CitasScreenThemeColors(
        primary = colorScheme.primary,
        primaryLight = colorScheme.primaryContainer,
        primaryDark = colorScheme.onPrimaryContainer,
        secondary = colorScheme.secondary,
        accent = colorScheme.secondaryContainer,
        background = colorScheme.background,
        surface = colorScheme.surface,
        textPrimary = colorScheme.onSurface,
        textSecondary = colorScheme.onSurfaceVariant,
        error = colorScheme.error,
        success = amaniColors.success,
        warning = amaniColors.warning,
        textFieldContainer = colorScheme.surfaceContainerLow,
        textFieldText = colorScheme.onSurface,
        textFieldLabel = colorScheme.primary,
        textFieldBorder = colorScheme.primary,
    )
}

/**
 * Pantalla de creación de una nueva cita para el paciente.
 *
 * Permite seleccionar fecha, hora, terapia, modalidad (presencial/online)
 * y método de pago. Incluye un [CalendarioView] para la selección visual
 * de la fecha y un selector de franjas horarias disponibles. Al confirmar,
 * agenda la cita y permite añadirla al calendario del dispositivo.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona la agenda del psicólogo.
 * @param listarTerapiasViewModel ViewModel que gestiona la lista de terapias disponibles.
 */
@OptIn(ExperimentalMaterial3Api::class)
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CitasScreen(
    navController: NavController,
    viewModel: PsicologoAgendaViewModel,
    listarTerapiasViewModel: ListarTerapiasViewModel,
) {
    val context = LocalContext.current
    val citasRepository: CitasRepository = koinInject()
    val isDark = isDarkTheme()
    val colors = rememberCitasScreenThemeColors()

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
                        titulo = context.getString(R.string.cita_notif_titulo),
                        mensaje =
                            context.getString(
                                R.string.cita_notif_creada_msg,
                                hora.format(DateTimeFormatter.ofPattern("HH:mm")),
                            ),
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
                titulo = context.getString(R.string.cita_notif_titulo),
                mensaje =
                    context.getString(
                        R.string.cita_notif_creada_msg,
                        hora.format(DateTimeFormatter.ofPattern("HH:mm")),
                    ),
            )
        }
    }

    val agendaFiltrada =
        remember(agendaMensual, idPaciente) {
            agendaMensual.filter { it.idPaciente == idPaciente }
        }

    val fechasConCitas =
        remember(agendaFiltrada) {
            agendaFiltrada.map { it.fecha }.toSet()
        }

    val citasDelDia =
        remember(fechaSeleccionada, agendaFiltrada) {
            fechaSeleccionada?.let { fecha ->
                agendaFiltrada.filter { it.fecha == fecha }
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

    CitasScreenContent(
        mesVisible = mesVisible,
        fechaSeleccionada = fechaSeleccionada,
        fechasConCitas = fechasConCitas,
        citasDelDia = citasDelDia,
        tieneDisponibilidad = tieneDisponibilidad,
        isLoading = isLoading,
        colors = colors,
        isDark = isDark,
        snackbarHostState = snackbarHostState,
        onBackClick = { navController.navigateUp() },
        onNewCitaClick = {
            modoEdicion = false
            citaEditando = null
            mostrarDialogo = true
            val fechaParaCargar = fechaSeleccionada ?: LocalDate.now()
            viewModel.cargarDisponibilidadDia(fechaParaCargar)
        },
        onMesVisibleChange = { mesVisible = it },
        onFechaSeleccionada = { fecha ->
            fechaSeleccionada = if (fechaSeleccionada == fecha) null else fecha
            if (fechaSeleccionada != null) {
                viewModel.cargarDisponibilidadDia(fechaSeleccionada!!)
            }
        },
        onVideoCallClick = { cita ->
            val roomName = "AmaniSession_${cita.id}"
            scope.launch(Dispatchers.IO) {
                try {
                    val result = citasRepository.getJitsiToken(roomName)
                    if (result.isFailure) {
                        withContext(Dispatchers.Main) {
                            android.widget.Toast
                                .makeText(
                                    context,
                                    context.getString(R.string.cita_token_error, result.exceptionOrNull()?.message ?: ""),
                                    android.widget.Toast.LENGTH_LONG,
                                ).show()
                        }
                        return@launch
                    }
                    val jwtToken = result.getOrNull()
                    withContext(Dispatchers.Main) {
                        val options =
                            JitsiMeetConferenceOptions
                                .Builder()
                                .setServerURL(URL("https://jitsi.amanipsicologia.org/"))
                                .setRoom(roomName)
                                .setFeatureFlag("welcomepage.enabled", false)
                                .setFeatureFlag("prejoinpage.enabled", false)
                                .setFeatureFlag("invite.enabled", false)
                                .apply {
                                    if (!jwtToken.isNullOrEmpty()) {
                                        setToken(jwtToken)
                                    }
                                }.build()
                        JitsiMeetActivity.launch(context, options)
                    }
                } catch (e: Exception) {
                    withContext(Dispatchers.Main) {
                        android.widget.Toast
                            .makeText(
                                context,
                                context.getString(R.string.cita_videollamada_error, e.message ?: ""),
                                android.widget.Toast.LENGTH_SHORT,
                            ).show()
                    }
                }
            }
        },
        onAddToCalendarClick = { cita ->
            enviarCitaAlCalendario(
                context = context,
                titulo = context.getString(R.string.cita_notif_titulo),
                descripcion = cita.motivo ?: context.getString(R.string.cita_descripcion_default),
                fecha = cita.fecha,
                hora = cita.horaInicio,
                duracionMinutos = cita.duracionMinutos ?: 60,
            )
        },
        onPayClick = { cita, fechaFormateada ->
            navController.navigate(
                Screens.paymentScreen.createRoute(
                    citaId = cita.id,
                    psicologoName = cita.nombrePsicologo ?: context.getString(R.string.pago_psicologo),
                    fecha = fechaFormateada,
                    monto = context.getString(R.string.cita_monto_consulta),
                ),
            )
        },
    )

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
                Log.d("CITAS_SCREEN", "========== CREAR CITA ==========")
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
                        snackbarHostState.showSnackbar(context.getString(R.string.cita_creada_exito))
                        mostrarDialogo = false
                        viewModel.cargarAgendaMensual(mesVisible)
                        viewModel.cargarDisponibilidadDia(fecha)

                        if (metodoPago == MetodoPago.TARJETA) {
                            val citaId = result.getOrNull() ?: 0L
                            if (citaId > 0) {
                                navController.navigate(
                                    Screens.paymentScreen.createRoute(
                                        citaId = citaId,
                                        psicologoName = context.getString(R.string.pago_psicologo),
                                        fecha = fecha.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")),
                                        monto = "$monto €",
                                    ),
                                )
                            } else {
                                delay(3000)
                                navController.navigateUp()
                            }
                        } else {
                            delay(3000)
                            navController.navigateUp()
                        }
                    } else {
                        snackbarHostState.showSnackbar(context.getString(R.string.cita_crear_error))
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

                    snackbarHostState.showSnackbar(context.getString(R.string.cita_actualizada_exito))
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
            colors = colors,
            isDark = isDark,
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CitasScreenContent(
    mesVisible: YearMonth,
    fechaSeleccionada: LocalDate?,
    fechasConCitas: Set<LocalDate>,
    citasDelDia: List<AgendaItemDTO>,
    tieneDisponibilidad: Boolean,
    isLoading: Boolean,
    colors: CitasScreenThemeColors,
    isDark: Boolean,
    snackbarHostState: SnackbarHostState,
    onBackClick: () -> Unit,
    onNewCitaClick: () -> Unit,
    onMesVisibleChange: (YearMonth) -> Unit,
    onFechaSeleccionada: (LocalDate) -> Unit,
    onVideoCallClick: (AgendaItemDTO) -> Unit,
    onAddToCalendarClick: (AgendaItemDTO) -> Unit,
    onPayClick: (AgendaItemDTO, String) -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Scaffold(
        modifier = modifier,
        snackbarHost = { SnackbarHost(snackbarHostState) },
        containerColor = colors.background,
        topBar = {
            TopAppBar(
                title = {},
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = colors.textPrimary,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colors.background,
                        navigationIconContentColor = colors.textPrimary,
                    ),
            )
        },
        floatingActionButton = {
            FloatingActionButton(
                onClick = onNewCitaClick,
                containerColor = colors.primary,
                contentColor = colorScheme.onPrimary,
                shape = shapes.large,
                elevation = FloatingActionButtonDefaults.elevation(Elevation.level3),
            ) {
                Icon(
                    Icons.Default.Add,
                    contentDescription = stringResource(R.string.auto_nueva_cita),
                    modifier = Modifier.size(Dimensions.iconDefault),
                )
            }
        },
    ) { innerPadding ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(innerPadding)
                    .background(colors.background),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .verticalScroll(rememberScrollState())
                        .padding(horizontal = Spacing.m, vertical = Spacing.m),
            ) {
                // Header
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Column {
                        Text(
                            text = stringResource(R.string.auto_mis_citas_1),
                            style = typography.headlineMedium,
                            fontWeight = FontWeight.Bold,
                            color = colors.textPrimary,
                        )
                        Text(
                            text = stringResource(R.string.auto_selecciona_una_fecha_y),
                            style = typography.bodyMedium,
                            color = colors.textSecondary,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.l))

                // Leyenda
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(Spacing.l),
                ) {
                    LeyendaItemAmani(
                        colors.primary,
                        stringResource(R.string.cita_leyenda_con_citas),
                        colors.textSecondary,
                    )
                    LeyendaItemAmani(
                        colors.primaryLight,
                        stringResource(R.string.cita_leyenda_dia_disponible),
                        colors.textSecondary,
                    )
                    LeyendaItemAmani(
                        colors.error,
                        stringResource(R.string.cita_leyenda_sin_disponibilidad),
                        colors.textSecondary,
                    )
                }

                Spacer(modifier = Modifier.height(Spacing.m))

                // Calendario
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.extraLarge,
                    colors = CardDefaults.cardColors(containerColor = colors.surface),
                    elevation = CardDefaults.cardElevation(Elevation.level2),
                ) {
                    CalendarioView(
                        modifier = Modifier.fillMaxWidth(),
                        mesVisible = mesVisible,
                        fechaSeleccionada = fechaSeleccionada,
                        fechasDestacadas = fechasConCitas,
                        onMesVisibleChange = onMesVisibleChange,
                        onFechaSeleccionada = onFechaSeleccionada,
                    )
                }

                Spacer(modifier = Modifier.height(Spacing.l))

                AnimatedVisibility(
                    visible = fechaSeleccionada != null && citasDelDia.isNotEmpty(),
                    enter = fadeIn() + expandVertically(),
                    exit = fadeOut() + shrinkVertically(),
                ) {
                    Column {
                        Text(
                            text = stringResource(R.string.auto__mis_citas_programadas),
                            style = typography.titleMedium,
                            fontWeight = FontWeight.SemiBold,
                            color = colors.textPrimary,
                            modifier = Modifier.padding(vertical = Spacing.s),
                        )

                        val citasActivas =
                            citasDelDia.filter { cita ->
                                cita.estado?.lowercase() != "cancelada"
                            }

                        if (citasActivas.isEmpty()) {
                            Card(
                                modifier =
                                    Modifier
                                        .fillMaxWidth()
                                        .padding(vertical = Spacing.s),
                                shape = shapes.large,
                                colors = CardDefaults.cardColors(containerColor = colors.surface),
                                elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
                            ) {
                                Row(
                                    modifier =
                                        Modifier
                                            .fillMaxWidth()
                                            .padding(Spacing.l),
                                    horizontalArrangement = Arrangement.Center,
                                    verticalAlignment = Alignment.CenterVertically,
                                ) {
                                    Icon(
                                        Icons.Default.EventBusy,
                                        contentDescription = null,
                                        tint = colors.textSecondary,
                                        modifier = Modifier.size(Dimensions.iconLarge),
                                    )
                                    Spacer(modifier = Modifier.width(Spacing.sm))
                                    Text(
                                        text = stringResource(R.string.cita_sin_citas_activas_dia),
                                        style = typography.bodyMedium,
                                        color = colors.textSecondary,
                                    )
                                }
                            }
                        } else {
                            citasActivas.forEach { cita ->
                                Card(
                                    modifier =
                                        Modifier
                                            .fillMaxWidth()
                                            .padding(vertical = Spacing.s),
                                    shape = shapes.large,
                                    colors =
                                        CardDefaults.cardColors(
                                            containerColor = colors.surface,
                                        ),
                                    elevation =
                                        CardDefaults.cardElevation(
                                            defaultElevation = Elevation.level1,
                                            pressedElevation = Elevation.level2,
                                        ),
                                ) {
                                    Column {
                                        Row(
                                            modifier =
                                                Modifier
                                                    .fillMaxWidth()
                                                    .padding(Spacing.m),
                                            horizontalArrangement = Arrangement.SpaceBetween,
                                            verticalAlignment = Alignment.CenterVertically,
                                        ) {
                                            Column(
                                                modifier = Modifier.weight(1f),
                                                verticalArrangement = Arrangement.spacedBy(Spacing.s),
                                            ) {
                                                // Hora y duración
                                                Row(
                                                    verticalAlignment = Alignment.CenterVertically,
                                                    horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                                                ) {
                                                    Icon(
                                                        Icons.Default.AccessTime,
                                                        contentDescription = stringResource(R.string.auto_hora),
                                                        modifier = Modifier.size(Dimensions.iconButton),
                                                        tint = colors.primary,
                                                    )
                                                    Text(
                                                        text = "${
                                                            cita.horaInicio.format(
                                                                DateTimeFormatter.ofPattern("HH:mm"),
                                                            )
                                                        } - ${
                                                            cita.horaFin.format(
                                                                DateTimeFormatter.ofPattern("HH:mm"),
                                                            )
                                                        }",
                                                        fontWeight = FontWeight.Bold,
                                                        style = typography.bodyLarge,
                                                        color = colors.textPrimary,
                                                    )

                                                    Surface(
                                                        shape = shapes.medium,
                                                        color = colors.primary.copy(alpha = 0.1f),
                                                        modifier = Modifier.padding(start = Spacing.xs),
                                                    ) {
                                                        Text(
                                                            text = stringResource(R.string.cita_duracion_min_corto, cita.duracionMinutos ?: 60),
                                                            style = typography.labelSmall,
                                                            fontWeight = FontWeight.Medium,
                                                            color = colors.primary,
                                                            modifier =
                                                                Modifier.padding(
                                                                    horizontal = Spacing.s,
                                                                    vertical = Spacing.xxs,
                                                                ),
                                                        )
                                                    }
                                                }

                                                // Motivo de la cita (si existe)
                                                if (!cita.motivo.isNullOrBlank()) {
                                                    Text(
                                                        text = cita.motivo,
                                                        style = typography.bodySmall,
                                                        color = colors.textSecondary,
                                                        maxLines = 2,
                                                        overflow = TextOverflow.Ellipsis,
                                                    )
                                                }

                                                // Estado de la cita
                                                Surface(
                                                    shape = shapes.medium,
                                                    color =
                                                        when (cita.estado?.lowercase()) {
                                                            "confirmada" -> colors.success.copy(alpha = 0.15f)
                                                            "cancelada" -> colors.error.copy(alpha = 0.15f)
                                                            else -> colors.primaryLight.copy(alpha = 0.4f)
                                                        },
                                                ) {
                                                    Text(
                                                        text =
                                                            when (cita.estado?.lowercase()) {
                                                                "confirmada" -> stringResource(R.string.cita_estado_confirmada)
                                                                "cancelada" -> stringResource(R.string.cita_estado_cancelada)
                                                                "pendiente" -> stringResource(R.string.cita_estado_pendiente)
                                                                else ->
                                                                    cita.estado?.replaceFirstChar { it.uppercase() }
                                                                        ?: stringResource(R.string.cita_estado_pendiente)
                                                            },
                                                        style = typography.labelSmall,
                                                        fontWeight = FontWeight.Medium,
                                                        color =
                                                            when (cita.estado?.lowercase()) {
                                                                "confirmada" -> colors.success
                                                                "cancelada" -> colors.error
                                                                else -> colors.primary
                                                            },
                                                        modifier =
                                                            Modifier.padding(
                                                                horizontal = Spacing.s,
                                                                vertical = Spacing.xs,
                                                            ),
                                                    )
                                                }
                                            }

                                            Spacer(modifier = Modifier.width(Spacing.sm))

                                            // Botones de acción (Llamada y Calendario)
                                            Row(
                                                horizontalArrangement = Arrangement.spacedBy(Spacing.sm),
                                                verticalAlignment = Alignment.CenterVertically,
                                            ) {
                                                if (cita.modalidad == ModalidadCita.LLAMADA) {
                                                    Column(
                                                        horizontalAlignment = Alignment.CenterHorizontally,
                                                        verticalArrangement = Arrangement.Center,
                                                    ) {
                                                        IconButton(
                                                            onClick = { onVideoCallClick(cita) },
                                                            modifier =
                                                                Modifier
                                                                    .size(Dimensions.touchTarget)
                                                                    .background(
                                                                        color = colors.primary,
                                                                        shape = shapes.medium,
                                                                    ),
                                                        ) {
                                                            Icon(
                                                                Icons.Default.VideoCall,
                                                                contentDescription = stringResource(R.string.cita_videollamada_iniciar),
                                                                tint = colorScheme.onPrimary,
                                                                modifier = Modifier.size(Dimensions.iconDefault),
                                                            )
                                                        }

                                                        Text(
                                                            text = stringResource(R.string.auto_llamada),
                                                            style = typography.labelSmall,
                                                            color = colors.textSecondary,
                                                            modifier = Modifier.padding(top = Spacing.xs),
                                                        )
                                                    }
                                                }

                                                // Botón para agregar al calendario
                                                Column(
                                                    horizontalAlignment = Alignment.CenterHorizontally,
                                                    verticalArrangement = Arrangement.Center,
                                                ) {
                                                    IconButton(
                                                        onClick = { onAddToCalendarClick(cita) },
                                                        modifier =
                                                            Modifier
                                                                .size(Dimensions.touchTarget)
                                                                .background(
                                                                    color = colors.primary,
                                                                    shape = shapes.medium,
                                                                ),
                                                    ) {
                                                        Icon(
                                                            Icons.Default.CalendarMonth,
                                                            contentDescription = stringResource(R.string.auto_agregar_a_calendario),
                                                            tint = colorScheme.onPrimary,
                                                            modifier = Modifier.size(Dimensions.iconDefault),
                                                        )
                                                    }

                                                    Text(
                                                        text = stringResource(R.string.auto_calendario),
                                                        style = typography.labelSmall,
                                                        color = colors.textSecondary,
                                                        modifier = Modifier.padding(top = Spacing.xs),
                                                    )
                                                }
                                            }
                                        }

                                        // Botón de pago: fuera del Row, ocupa todo el ancho de la card
                                        if (cita.estadoPago == EstadoPago.PENDIENTE) {
                                            val fechaFormateada =
                                                cita.fecha.format(
                                                    DateTimeFormatter.ofPattern("d 'de' MMMM yyyy", Locale.forLanguageTag("es-ES")),
                                                )
                                            HorizontalDivider(
                                                color = colorScheme.outlineVariant,
                                                thickness = Dimensions.dividerThickness,
                                                modifier = Modifier.padding(horizontal = Spacing.m),
                                            )
                                            Button(
                                                onClick = { onPayClick(cita, fechaFormateada) },
                                                colors =
                                                    ButtonDefaults.buttonColors(
                                                        containerColor = colorScheme.primaryContainer.copy(alpha = 0.5f),
                                                        contentColor = colors.primary,
                                                    ),
                                                shape =
                                                    shapes.large.copy(
                                                        topStart = CornerSize(Spacing.none),
                                                        topEnd = CornerSize(Spacing.none),
                                                    ),
                                                contentPadding = PaddingValues(horizontal = Spacing.m, vertical = Spacing.sm),
                                                modifier = Modifier.fillMaxWidth(),
                                            ) {
                                                Icon(
                                                    Icons.Default.Payment,
                                                    contentDescription = stringResource(R.string.cita_pagar_consulta),
                                                    modifier = Modifier.size(Dimensions.iconButton),
                                                )
                                                Spacer(modifier = Modifier.width(Spacing.s))
                                                Text(
                                                    text = stringResource(R.string.cita_pagar_consulta),
                                                    style = typography.labelLarge,
                                                    fontWeight = FontWeight.SemiBold,
                                                )
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Spacer(modifier = Modifier.height(Spacing.m))
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
                            shape = shapes.extraLarge,
                            colors = CardDefaults.cardColors(containerColor = colors.surface),
                            elevation = CardDefaults.cardElevation(Elevation.level2),
                        ) {
                            Column(modifier = Modifier.padding(Spacing.m)) {
                                Surface(
                                    modifier = Modifier.fillMaxWidth(),
                                    shape = shapes.large,
                                    color =
                                        if (tieneDisponibilidad) {
                                            colors.primaryLight.copy(alpha = 0.4f)
                                        } else {
                                            colors.error.copy(alpha = 0.1f)
                                        },
                                ) {
                                    Row(
                                        modifier = Modifier.padding(Spacing.m),
                                        verticalAlignment = Alignment.CenterVertically,
                                    ) {
                                        Icon(
                                            imageVector = if (tieneDisponibilidad) Icons.Default.CalendarToday else Icons.Default.EventBusy,
                                            contentDescription = null,
                                            tint = if (tieneDisponibilidad) colors.primary else colors.error,
                                            modifier = Modifier.size(Dimensions.iconLarge),
                                        )
                                        Spacer(modifier = Modifier.width(Spacing.m))
                                        Column {
                                            Text(
                                                text =
                                                    fecha
                                                        .format(
                                                            DateTimeFormatter.ofPattern(
                                                                "EEEE, d 'de' MMMM",
                                                                Locale
                                                                    .Builder()
                                                                    .setLanguage("es")
                                                                    .setRegion("ES")
                                                                    .build(),
                                                            ),
                                                        ).replaceFirstChar { it.uppercase() },
                                                style = typography.titleMedium,
                                                fontWeight = FontWeight.Bold,
                                                color = colors.textPrimary,
                                            )
                                            if (tieneDisponibilidad) {
                                                Text(
                                                    stringResource(R.string.auto__hay_horarios_disponibles),
                                                    style = typography.bodySmall,
                                                    color = colors.primary,
                                                )
                                            } else {
                                                Text(
                                                    stringResource(R.string.auto__no_hay_disponibilidad),
                                                    style = typography.bodySmall,
                                                    color = colors.error,
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
                    Spacer(modifier = Modifier.height(Spacing.m))
                    Box(modifier = Modifier.fillMaxWidth(), contentAlignment = Alignment.Center) {
                        CircularProgressIndicator(color = colors.primary)
                    }
                }
                Spacer(modifier = Modifier.height(Dimensions.bottomContentSpacer))
            }
        }
    }
}

@Composable
fun LeyendaItemAmani(
    color: Color,
    texto: String,
    textSecondary: Color,
) {
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Row(verticalAlignment = Alignment.CenterVertically) {
        Box(
            modifier =
                Modifier
                    .size(Spacing.sm)
                    .clip(shapes.extraSmall)
                    .background(color),
        )
        Spacer(modifier = Modifier.width(Spacing.s))
        Text(
            text = texto,
            style = typography.labelMedium,
            color = textSecondary,
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
    slotsLibres: List<FranjaDisponibilidadResponse>,
    citasExistentes: List<AgendaItemDTO>,
    idPaciente: Long,
    onFechaChange: (LocalDate) -> Unit,
    onCrearCita: (Long, LocalDate, LocalTime, Int, String, Long, MetodoPago, EstadoPago, BigDecimal, ModalidadCita) -> Unit,
    onEditarCita: (Long, Long, LocalDate, LocalTime, Int, String, Long, MetodoPago, EstadoPago, BigDecimal, ModalidadCita) -> Unit,
    onDismiss: () -> Unit,
    colors: CitasScreenThemeColors,
    isDark: Boolean,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
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
            montoCalculado =
                if (metodoPagoSeleccionado == MetodoPago.TARJETA) terapia.precio else BigDecimal.ZERO
        }
    }

    LaunchedEffect(metodoPagoSeleccionado, terapiaSeleccionada) {
        montoCalculado =
            if (metodoPagoSeleccionado == MetodoPago.TARJETA && terapiaSeleccionada != null) {
                terapiaSeleccionada!!.precio
            } else {
                BigDecimal.ZERO
            }
    }

    LaunchedEffect(fechaSeleccionada) {
        onFechaChange(fechaSeleccionada)
    }

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colors.surface,
        shape = shapes.extraLarge,
        title = {
            Column {
                Text(
                    text =
                        if (modoEdicion) {
                            stringResource(R.string.cita_dialog_titulo_editar)
                        } else {
                            stringResource(R.string.cita_dialog_titulo_nueva)
                        },
                    style = typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                    color = colors.textPrimary,
                )
                Text(
                    text =
                        if (modoEdicion) {
                            stringResource(R.string.cita_dialog_subtitulo_editar)
                        } else {
                            stringResource(R.string.cita_dialog_subtitulo_nueva)
                        },
                    style = typography.bodySmall,
                    color = colors.textSecondary,
                )
            }
        },
        text = {
            Column(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .heightIn(max = Dimensions.dialogMaxHeight)
                        .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(Spacing.m),
            ) {
                // Tipo de terapia
                CampoSeleccionAmani(
                    label = stringResource(R.string.auto_tipo_de_terapia),
                    icono = Icons.Default.MedicalServices,
                    valor = terapiaSeleccionada?.nombre ?: "",
                    expanded = terapiaDropdownExpanded,
                    onExpandedChange = { terapiaDropdownExpanded = it },
                    colors = colors,
                ) {
                    if (terapias.isEmpty()) {
                        DropdownMenuItem(
                            text = {
                                Text(
                                    stringResource(R.string.auto_no_hay_tipos_de),
                                    style = typography.bodyMedium,
                                    color = colors.textSecondary,
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
                                            style = typography.bodyMedium,
                                            fontWeight = FontWeight.Medium,
                                            color = colors.textPrimary,
                                        )
                                        Text(
                                            stringResource(
                                                R.string.cita_duracion_precio_formato,
                                                terapia.duracionMinutos,
                                                terapia.precio.toString(),
                                            ),
                                            style = typography.bodySmall,
                                            color = colors.textSecondary,
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
                    colors = colors,
                    isDark = isDark,
                )

                // Hora
                CampoSeleccionAmani(
                    label = stringResource(R.string.auto_hora_de_inicio),
                    icono = Icons.Default.Schedule,
                    valor = horaSeleccionada?.format(formatterHora) ?: stringResource(R.string.cita_sin_horarios_disponibles),
                    expanded = horaDropdownExpanded,
                    onExpandedChange = { horaDropdownExpanded = it },
                    error = horasDisponibles.isEmpty() && !modoEdicion,
                    colors = colors,
                ) {
                    if (horasDisponibles.isEmpty() && !modoEdicion) {
                        DropdownMenuItem(
                            text = {
                                Column {
                                    Text(
                                        stringResource(R.string.auto__no_hay_horarios),
                                        style = typography.bodyMedium,
                                        color = colors.error,
                                    )
                                    Text(
                                        stringResource(R.string.auto_prueba_con_otra_fecha),
                                        style = typography.bodySmall,
                                        color = colors.textSecondary,
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
                                            contentDescription = null,
                                            modifier = Modifier.size(Dimensions.iconButton),
                                            tint = colors.primary,
                                        )
                                        Spacer(modifier = Modifier.width(Spacing.s))
                                        Column {
                                            Text(
                                                hora.format(formatterHora),
                                                style = typography.bodyMedium,
                                                fontWeight = FontWeight.Medium,
                                                color = colors.textPrimary,
                                            )
                                            Text(
                                                stringResource(R.string.cita_duracion_minutos, duracionMinutos),
                                                style = typography.bodySmall,
                                                color = colors.textSecondary,
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
                    shape = shapes.large,
                    colors = CardDefaults.cardColors(containerColor = colors.primaryLight.copy(alpha = 0.35f)),
                ) {
                    Row(
                        modifier = Modifier.padding(Spacing.m),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween,
                    ) {
                        Column {
                            Text(
                                stringResource(R.string.auto_duracion_de_la_terapia),
                                style = typography.labelMedium,
                                color = colors.primary,
                            )
                            Text(
                                stringResource(R.string.cita_duracion_minutos_valor, duracionMinutos),
                                style = typography.titleMedium,
                                fontWeight = FontWeight.Bold,
                                color = colors.textPrimary,
                            )
                        }
                        Icon(
                            Icons.Default.Timer,
                            contentDescription = null,
                            tint = colors.primary,
                            modifier = Modifier.size(Dimensions.iconDefault),
                        )
                    }
                }

                // Motivo
                OutlinedTextField(
                    value = motivo,
                    onValueChange = { motivo = it },
                    label = {
                        Text(
                            stringResource(R.string.auto_motivo_de_la_cita),
                            color = colors.textSecondary,
                        )
                    },
                    modifier = Modifier.fillMaxWidth(),
                    minLines = 2,
                    maxLines = 3,
                    shape = shapes.large,
                    colors =
                        OutlinedTextFieldDefaults.colors(
                            focusedTextColor = colors.textFieldText,
                            unfocusedTextColor = colors.textFieldText,
                            focusedBorderColor = colors.primary,
                            unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.3f),
                            focusedLabelColor = colors.primary,
                            unfocusedLabelColor = colors.textSecondary,
                            cursorColor = colors.primary,
                            focusedContainerColor = colors.textFieldContainer,
                            unfocusedContainerColor = colors.textFieldContainer,
                        ),
                )

                // Modalidad
                Text(
                    stringResource(R.string.auto_modalidad_de_la_cita),
                    style = typography.titleSmall,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.textPrimary,
                )
                Spacer(modifier = Modifier.height(Spacing.xs))
                ExposedDropdownMenuBox(
                    expanded = modalidadDropdownExpanded,
                    onExpandedChange = { modalidadDropdownExpanded = it },
                ) {
                    OutlinedTextField(
                        value =
                            when (modalidadSeleccionada) {
                                ModalidadCita.PRESENCIAL -> stringResource(R.string.auto_presencial)
                                ModalidadCita.LLAMADA -> stringResource(R.string.auto_llamada)
                            },
                        onValueChange = {},
                        readOnly = true,
                        leadingIcon = {
                            Icon(
                                if (modalidadSeleccionada == ModalidadCita.PRESENCIAL) Icons.Default.LocationOn else Icons.Default.Phone,
                                contentDescription = stringResource(R.string.auto_modalidad),
                                tint = colors.primary,
                            )
                        },
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = modalidadDropdownExpanded) },
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .menuAnchor(
                                    type = ExposedDropdownMenuAnchorType.PrimaryNotEditable,
                                    enabled = true,
                                ),
                        shape = shapes.medium,
                        colors =
                            OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colors.textFieldText,
                                unfocusedTextColor = colors.textFieldText,
                                focusedBorderColor = colors.primary,
                                unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.3f),
                                focusedContainerColor = colors.textFieldContainer,
                                unfocusedContainerColor = colors.textFieldContainer,
                            ),
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
                                        contentDescription = null,
                                        modifier = Modifier.size(Dimensions.iconMedium),
                                        tint = colors.primary,
                                    )
                                    Spacer(modifier = Modifier.width(Spacing.s))
                                    Text(
                                        stringResource(R.string.auto_presencial),
                                        style = typography.bodyMedium,
                                        color = colors.textPrimary,
                                    )
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
                                        contentDescription = null,
                                        modifier = Modifier.size(Dimensions.iconMedium),
                                        tint = colors.primary,
                                    )
                                    Spacer(modifier = Modifier.width(Spacing.s))
                                    Text(
                                        stringResource(R.string.auto_llamada),
                                        style = typography.bodyMedium,
                                        color = colors.textPrimary,
                                    )
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
                    stringResource(R.string.auto_informacion_de_pago),
                    style = typography.titleSmall,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.textPrimary,
                )
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.large,
                    colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceContainerLow),
                ) {
                    Column(modifier = Modifier.padding(Spacing.m)) {
                        Text(
                            stringResource(R.string.auto_metodo_de_pago),
                            style = typography.labelMedium,
                            color = colors.textSecondary,
                        )
                        Spacer(modifier = Modifier.height(Spacing.s))
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(Spacing.l),
                        ) {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.EFECTIVO,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.EFECTIVO },
                                    colors = RadioButtonDefaults.colors(selectedColor = colors.primary),
                                )
                                Text(
                                    stringResource(R.string.auto_presencial),
                                    style = typography.bodyMedium,
                                    color = colors.textPrimary,
                                )
                            }
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.TARJETA,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.TARJETA },
                                    colors = RadioButtonDefaults.colors(selectedColor = colors.primary),
                                )
                                Text(
                                    stringResource(R.string.auto_online),
                                    style = typography.bodyMedium,
                                    color = colors.textPrimary,
                                )
                            }
                        }
                        Spacer(modifier = Modifier.height(Spacing.sm))

                        OutlinedTextField(
                            value = montoCalculado.toString(),
                            onValueChange = {},
                            readOnly = true,
                            label = {
                                Text(
                                    stringResource(R.string.auto_monto_),
                                    color = colors.textSecondary,
                                )
                            },
                            leadingIcon = {
                                Text(
                                    stringResource(R.string.auto_euro_symbol),
                                    style = typography.bodyLarge,
                                    color = colors.primary,
                                )
                            },
                            singleLine = true,
                            shape = shapes.medium,
                            modifier = Modifier.fillMaxWidth(),
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedTextColor = colors.textFieldText,
                                    unfocusedTextColor = colors.textFieldText,
                                    focusedBorderColor = colors.primary,
                                    unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.3f),
                                    focusedContainerColor = colors.textFieldContainer,
                                    unfocusedContainerColor = colors.textFieldContainer,
                                ),
                        )
                        Spacer(modifier = Modifier.height(Spacing.xs))
                        Text(
                            when (metodoPagoSeleccionado) {
                                MetodoPago.TARJETA -> stringResource(R.string.cita_pago_online_info)
                                MetodoPago.EFECTIVO -> stringResource(R.string.cita_pago_consulta_info)
                                else -> stringResource(R.string.cita_metodo_pago_no_especificado)
                            },
                            style = typography.bodySmall,
                            color = colors.textSecondary,
                        )
                    }
                }
            }
        },
        confirmButton = {
            val habilitado =
                terapiaSeleccionada != null && horaSeleccionada != null && (horasDisponibles.isNotEmpty() || modoEdicion)
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
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .height(Dimensions.buttonHeightLarge),
                shape = CircleShape,
                colors =
                    ButtonDefaults.buttonColors(
                        containerColor = colors.primary,
                        contentColor = colorScheme.onPrimary,
                        disabledContainerColor = colorScheme.surfaceVariant,
                    ),
                elevation = ButtonDefaults.buttonElevation(Elevation.level2),
            ) {
                Text(
                    if (modoEdicion) {
                        stringResource(R.string.auto_guardar_cambios)
                    } else {
                        stringResource(R.string.cita_btn_crear)
                    },
                    style = typography.labelLarge,
                    fontWeight = FontWeight.Medium,
                    color = colorScheme.onPrimary,
                )
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                shape = shapes.medium,
            ) {
                Text(
                    stringResource(R.string.auto_cancelar),
                    color = colors.textSecondary,
                    style = typography.labelLarge,
                )
            }
        },
    )
}

/**
 * Campo de selección desplegable personalizado con icono y etiqueta.
 *
 * @param label Etiqueta del campo.
 * @param icono Icono vectorial a la izquierda.
 * @param valor Valor actual seleccionado.
 * @param expanded Indica si el menú desplegable está expandido.
 * @param onExpandedChange Callback para cambiar el estado de expansión.
 * @param error Indica si el campo está en estado de error.
 * @param colors Conjunto de colores temáticos.
 * @param content Contenido del menú desplegable.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CampoSeleccionAmani(
    label: String,
    icono: ImageVector,
    valor: String,
    expanded: Boolean,
    onExpandedChange: (Boolean) -> Unit,
    error: Boolean = false,
    colors: CitasScreenThemeColors,
    content: @Composable ExposedDropdownMenuBoxScope.() -> Unit,
) {
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Column {
        Text(
            label,
            style = typography.titleSmall,
            fontWeight = FontWeight.SemiBold,
            color = colors.textPrimary,
        )
        Spacer(modifier = Modifier.height(Spacing.xs))
        ExposedDropdownMenuBox(expanded = expanded, onExpandedChange = onExpandedChange) {
            OutlinedTextField(
                value = valor,
                onValueChange = {},
                readOnly = true,
                leadingIcon = {
                    Icon(
                        icono,
                        contentDescription = label,
                        modifier = Modifier.size(Dimensions.iconMedium),
                        tint = colors.primary,
                    )
                },
                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded) },
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .menuAnchor(
                            type = ExposedDropdownMenuAnchorType.PrimaryNotEditable,
                            enabled = true,
                        ),
                singleLine = true,
                shape = shapes.medium,
                isError = error,
                colors =
                    OutlinedTextFieldDefaults.colors(
                        focusedTextColor = colors.textFieldText,
                        unfocusedTextColor = colors.textFieldText,
                        focusedBorderColor = colors.primary,
                        unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.3f),
                        focusedLabelColor = colors.primary,
                        unfocusedLabelColor = colors.textSecondary,
                        cursorColor = colors.primary,
                        focusedContainerColor = colors.textFieldContainer,
                        unfocusedContainerColor = colors.textFieldContainer,
                    ),
            )
            ExposedDropdownMenu(
                expanded = expanded,
                onDismissRequest = { onExpandedChange(false) },
                modifier = Modifier.heightIn(max = Dimensions.wheelSize),
            ) { content() }
        }
    }
}

/**
 * Selector de fecha con navegación por días y formato localizado.
 *
 * @param fechaSeleccionada Fecha actualmente seleccionada.
 * @param onFechaChange Callback invocado al cambiar la fecha.
 * @param colors Conjunto de colores temáticos.
 * @param isDark Indica si el tema oscuro está activo.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CampoFechaAmani(
    fechaSeleccionada: LocalDate,
    onFechaChange: (LocalDate) -> Unit,
    colors: CitasScreenThemeColors,
    isDark: Boolean,
) {
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    val formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy")

    Column {
        Text(
            stringResource(R.string.auto_fecha),
            style = typography.titleSmall,
            fontWeight = FontWeight.SemiBold,
            color = colors.textPrimary,
        )
        Spacer(modifier = Modifier.height(Spacing.xs))
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = shapes.medium,
            colors = CardDefaults.cardColors(containerColor = colors.primaryLight.copy(alpha = 0.35f)),
            elevation = CardDefaults.cardElevation(Elevation.level1),
        ) {
            Row(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .padding(Spacing.sm),
                horizontalArrangement = Arrangement.SpaceEvenly,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                IconButton(onClick = { onFechaChange(fechaSeleccionada.minusDays(1)) }) {
                    Icon(
                        Icons.Default.ChevronLeft,
                        contentDescription = stringResource(R.string.auto_dia_anterior),
                        tint = colors.primary,
                    )
                }
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(
                        fechaSeleccionada.format(formatterFecha),
                        style = typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        color = colors.textPrimary,
                    )
                    Text(
                        fechaSeleccionada
                            .format(
                                DateTimeFormatter.ofPattern(
                                    "EEEE",
                                    Locale.Builder().setLanguage("es").setRegion("ES").build(),
                                ),
                            ).replaceFirstChar { it.uppercase() },
                        style = typography.bodySmall,
                        color = colors.textSecondary,
                    )
                }
                IconButton(onClick = { onFechaChange(fechaSeleccionada.plusDays(1)) }) {
                    Icon(
                        Icons.Default.ChevronRight,
                        contentDescription = stringResource(R.string.auto_dia_siguiente),
                        tint = colors.primary,
                    )
                }
            }
        }
    }
}

/**
 * Conjunto de colores temáticos para la pantalla de citas.
 */
data class CitasScreenThemeColors(
    val primary: Color,
    val primaryLight: Color,
    val primaryDark: Color,
    val secondary: Color,
    val accent: Color,
    val background: Color,
    val surface: Color,
    val textPrimary: Color,
    val textSecondary: Color,
    val error: Color,
    val success: Color,
    val warning: Color,
    val textFieldContainer: Color,
    val textFieldText: Color,
    val textFieldLabel: Color,
    val textFieldBorder: Color,
)

@RequiresApi(Build.VERSION_CODES.O)
private val previewCitasDia =
    listOf(
        AgendaItemDTO(
            id = 10L,
            idPaciente = 42L,
            fecha = LocalDate.of(2026, 10, 28),
            horaInicio = LocalTime.of(10, 0),
            horaFin = LocalTime.of(11, 0),
            tipo = "CITA",
            estado = "CONFIRMADA",
            motivo = "Sesión de seguimiento",
            duracionMinutos = 60,
            nombrePaciente = "Laura Gómez",
            nombrePsicologo = "Elena Martínez",
            terapia = TerapiaResponseDTO(1L, "Terapia Individual", 60, BigDecimal("50.00")),
            metodoPago = MetodoPago.TARJETA,
            estadoPago = EstadoPago.PENDIENTE,
            modalidad = ModalidadCita.LLAMADA,
        ),
    )

@RequiresApi(Build.VERSION_CODES.O)
@Preview(showBackground = true, name = "CitasScreen - Light")
@Composable
private fun CitasScreenLightPreview() {
    AppTheme(darkTheme = false) {
        CitasScreenContent(
            mesVisible = YearMonth.of(2026, 10),
            fechaSeleccionada = LocalDate.of(2026, 10, 28),
            fechasConCitas = setOf(LocalDate.of(2026, 10, 28)),
            citasDelDia = previewCitasDia,
            tieneDisponibilidad = true,
            isLoading = false,
            colors = rememberCitasScreenThemeColors(),
            isDark = false,
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onNewCitaClick = {},
            onMesVisibleChange = {},
            onFechaSeleccionada = {},
            onVideoCallClick = {},
            onAddToCalendarClick = {},
            onPayClick = { _, _ -> },
        )
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Preview(
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
    name = "CitasScreen - Dark",
)
@Composable
private fun CitasScreenDarkPreview() {
    AppTheme(darkTheme = true) {
        CitasScreenContent(
            mesVisible = YearMonth.of(2026, 10),
            fechaSeleccionada = LocalDate.of(2026, 10, 28),
            fechasConCitas = setOf(LocalDate.of(2026, 10, 28)),
            citasDelDia = previewCitasDia,
            tieneDisponibilidad = true,
            isLoading = false,
            colors = rememberCitasScreenThemeColors(),
            isDark = true,
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onNewCitaClick = {},
            onMesVisibleChange = {},
            onFechaSeleccionada = {},
            onVideoCallClick = {},
            onAddToCalendarClick = {},
            onPayClick = { _, _ -> },
        )
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Preview(
    showBackground = true,
    fontScale = 1.5f,
    name = "CitasScreen - FontScale 1.5x",
)
@Composable
private fun CitasScreenFontScalePreview() {
    AppTheme(darkTheme = false) {
        CitasScreenContent(
            mesVisible = YearMonth.of(2026, 10),
            fechaSeleccionada = LocalDate.of(2026, 10, 29),
            fechasConCitas = setOf(LocalDate.of(2026, 10, 28)),
            citasDelDia = emptyList(),
            tieneDisponibilidad = false,
            isLoading = false,
            colors = rememberCitasScreenThemeColors(),
            isDark = false,
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onNewCitaClick = {},
            onMesVisibleChange = {},
            onFechaSeleccionada = {},
            onVideoCallClick = {},
            onAddToCalendarClick = {},
            onPayClick = { _, _ -> },
        )
    }
}