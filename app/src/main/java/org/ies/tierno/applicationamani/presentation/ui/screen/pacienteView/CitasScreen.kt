package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import androidx.compose.ui.res.stringResource
import android.Manifest
import android.os.Build
import android.util.Log
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.annotation.RequiresApi
import androidx.compose.animation.*
import androidx.compose.foundation.background
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
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
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

object CitasScreenDefaultColors {
    val Primary = Color(0xFF6B4E71)
    val PrimaryLight = Color(0xFF9B7E9F)
    val PrimaryDark = Color(0xFF4A2B50)
    val Secondary = Color(0xFFE8B4B8)
    val Accent = Color(0xFFF5E6E8)
    val Background = Color(0xFFFDF8F9)
    val Surface = Color(0xFFFFFFFF)
    val TextPrimary = Color(0xFF2D1B30)
    val TextSecondary = Color(0xFF7A6B7E)
    val Error = Color(0xFFE57373)
    val Success = Color(0xFF81C784)
    val Warning = Color(0xFFFF9800)
}

@OptIn(ExperimentalMaterial3Api::class)
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CitasScreen(
    navController: NavController,
    viewModel: PsicologoAgendaViewModel,
    listarTerapiasViewModel: ListarTerapiasViewModel
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val context = LocalContext.current

    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    val colors = if (isDark) {
        CitasScreenThemeColors(
            primary = Color.White,
            primaryLight = Color.White.copy(alpha = 0.7f),
            primaryDark = Color.DarkGray,
            secondary = Color.Gray,
            accent = cardColors.cardBackground,
            background = screenColors.background,
            surface = cardColors.cardBackground,
            textPrimary = cardColors.cardContent,
            textSecondary = cardColors.cardContent.copy(alpha = 0.7f),
            error = CitasScreenDefaultColors.Error,
            success = CitasScreenDefaultColors.Success,
            warning = CitasScreenDefaultColors.Warning,
            textFieldContainer = Color.DarkGray,
            textFieldText = Color.White,
            textFieldLabel = Color.White.copy(alpha = 0.8f),
            textFieldBorder = Color.White
        )
    } else {
        CitasScreenThemeColors(
            primary = CitasScreenDefaultColors.Primary,
            primaryLight = CitasScreenDefaultColors.PrimaryLight,
            primaryDark = CitasScreenDefaultColors.PrimaryDark,
            secondary = CitasScreenDefaultColors.Secondary,
            accent = CitasScreenDefaultColors.Accent,
            background = CitasScreenDefaultColors.Background,
            surface = CitasScreenDefaultColors.Surface,
            textPrimary = CitasScreenDefaultColors.TextPrimary,
            textSecondary = CitasScreenDefaultColors.TextSecondary,
            error = CitasScreenDefaultColors.Error,
            success = CitasScreenDefaultColors.Success,
            warning = CitasScreenDefaultColors.Warning,
            textFieldContainer = Color.White,
            textFieldText = Color.Black,
            textFieldLabel = CitasScreenDefaultColors.Primary,
            textFieldBorder = CitasScreenDefaultColors.Primary
        )
    }

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

    val agendaFiltrada = remember(agendaMensual, idPaciente) {
        agendaMensual.filter { it.idPaciente == idPaciente }
    }

    val fechasConCitas = remember(agendaFiltrada) {
        agendaFiltrada.map { it.fecha }.toSet()
    }

    val citasDelDia = remember(fechaSeleccionada, agendaFiltrada) {
        fechaSeleccionada?.let { fecha ->
            agendaFiltrada.filter { it.fecha == fecha }
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
        topBar = {
            TopAppBar(
                title = {},
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.Default.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = colors.textPrimary
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = colors.background,
                    navigationIconContentColor = colors.textPrimary
                ),
                modifier = Modifier.background(
                    brush = Brush.verticalGradient(
                        colors = if (isDark) {
                            listOf(colors.background, colors.background)
                        } else {
                            listOf(colors.accent, Color.White)
                        }
                    )
                )
            )
        },
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
                contentColor = if (isDark) Color.Black else Color.White,
                shape = RoundedCornerShape(16.dp),
                elevation = FloatingActionButtonDefaults.elevation(8.dp)
            ) {
                Icon(
                    Icons.Default.Add,
                    contentDescription = stringResource(R.string.auto_nueva_cita),
                    modifier = Modifier.size(24.dp)
                )
            }
        }
    ) { innerPadding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .background(
                    brush = Brush.verticalGradient(
                        colors = if (isDark) {
                            listOf(colors.background, colors.background)
                        } else {
                            listOf(colors.accent, Color.White)
                        }
                    )
                )
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .verticalScroll(rememberScrollState())
                    .padding(horizontal = 20.dp, vertical = 16.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column {
                        Text(
                            text = stringResource(R.string.auto_mis_citas_1),
                            fontSize = 28.sp,
                            fontWeight = FontWeight.Bold,
                            color = colors.textPrimary,
                            fontFamily = roboto
                        )
                        Text(
                            text = stringResource(R.string.auto_selecciona_una_fecha_y),
                            fontSize = 14.sp,
                            color = colors.textSecondary,
                            fontFamily = roboto
                        )
                    }
                }

                Spacer(modifier = Modifier.height(20.dp))

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(20.dp)
                ) {
                    LeyendaItemAmani(colors.primary, "Con citas", colors.textSecondary, roboto)
                    LeyendaItemAmani(
                        colors.primaryLight,
                        "Día disponible",
                        colors.textSecondary,
                        roboto
                    )
                    LeyendaItemAmani(
                        colors.error,
                        "Sin disponibilidad",
                        colors.textSecondary,
                        roboto
                    )
                }

                Spacer(modifier = Modifier.height(16.dp))

                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .shadow(12.dp, RoundedCornerShape(24.dp)),
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

                AnimatedVisibility(
                    visible = fechaSeleccionada != null && citasDelDia.isNotEmpty(),
                    enter = fadeIn() + expandVertically(),
                    exit = fadeOut() + shrinkVertically()
                ) {
                    Column {
                        Text(
                            text = stringResource(R.string.auto__mis_citas_programadas),
                            fontSize = 16.sp,
                            fontWeight = FontWeight.SemiBold,
                            color = colors.textPrimary,
                            fontFamily = roboto,
                            modifier = Modifier.padding(vertical = 8.dp)
                        )

                        val citasActivas = citasDelDia.filter { cita ->
                            cita.estado?.lowercase() != "cancelada"
                        }

                        if (citasActivas.isEmpty()) {
                            Card(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .padding(vertical = 8.dp),
                                shape = RoundedCornerShape(16.dp),
                                colors = CardDefaults.cardColors(containerColor = colors.surface),
                                elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
                            ) {
                                Row(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .padding(24.dp),
                                    horizontalArrangement = Arrangement.Center,
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Icon(
                                        Icons.Default.EventBusy,
                                        contentDescription = "Sin citas",
                                        tint = colors.textSecondary,
                                        modifier = Modifier.size(32.dp)
                                    )
                                    Spacer(modifier = Modifier.width(12.dp))
                                    Text(
                                        text = "No tienes citas activas para este día",
                                        fontSize = 14.sp,
                                        color = colors.textSecondary,
                                        fontFamily = roboto
                                    )
                                }
                            }
                        } else {
                            citasActivas.forEach { cita ->
                                Card(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .padding(vertical = 8.dp),
                                    shape = RoundedCornerShape(16.dp),
                                    colors = CardDefaults.cardColors(containerColor = colors.surface),
                                    elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
                                ) {
                                    Row(
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .padding(16.dp),
                                        horizontalArrangement = Arrangement.SpaceBetween,
                                        verticalAlignment = Alignment.CenterVertically
                                    ) {
                                        Column(
                                            modifier = Modifier.weight(1f),
                                            verticalArrangement = Arrangement.spacedBy(8.dp)
                                        ) {
                                            Row(
                                                verticalAlignment = Alignment.CenterVertically,
                                                horizontalArrangement = Arrangement.spacedBy(8.dp)
                                            ) {
                                                Icon(
                                                    Icons.Default.AccessTime,
                                                    contentDescription = stringResource(R.string.auto_hora),
                                                    modifier = Modifier.size(18.dp),
                                                    tint = colors.primary
                                                )
                                                Text(
                                                    text = "${
                                                        cita.horaInicio.format(
                                                            DateTimeFormatter.ofPattern("HH:mm")
                                                        )
                                                    } - ${
                                                        cita.horaFin.format(
                                                            DateTimeFormatter.ofPattern("HH:mm")
                                                        )
                                                    }",
                                                    fontWeight = FontWeight.Bold,
                                                    fontSize = 15.sp,
                                                    color = colors.textPrimary,
                                                    fontFamily = roboto
                                                )

                                                Surface(
                                                    shape = RoundedCornerShape(12.dp),
                                                    color = colors.primary.copy(alpha = 0.1f),
                                                    modifier = Modifier.padding(start = 4.dp)
                                                ) {
                                                    Text(
                                                        text = "${cita.duracionMinutos ?: 60} min",
                                                        fontSize = 11.sp,
                                                        fontWeight = FontWeight.Medium,
                                                        color = colors.primary,
                                                        modifier = Modifier.padding(
                                                            horizontal = 8.dp,
                                                            vertical = 3.dp
                                                        ),
                                                        fontFamily = roboto
                                                    )
                                                }
                                            }

                                            if (!cita.motivo.isNullOrBlank()) {
                                                Text(
                                                    text = cita.motivo,
                                                    fontSize = 13.sp,
                                                    color = colors.textSecondary,
                                                    fontFamily = roboto,
                                                    maxLines = 2
                                                )
                                            }

                                            Surface(
                                                shape = RoundedCornerShape(12.dp),
                                                color = when (cita.estado?.lowercase()) {
                                                    "confirmada" -> colors.success.copy(alpha = 0.15f)
                                                    "cancelada" -> colors.error.copy(alpha = 0.15f)
                                                    else -> colors.primaryLight.copy(alpha = 0.15f)
                                                }
                                            ) {
                                                Text(
                                                    text = when (cita.estado?.lowercase()) {
                                                        "confirmada" -> "✓ Confirmada"
                                                        "cancelada" -> "✗ Cancelada"
                                                        "pendiente" -> "⏳ Pendiente"
                                                        else -> cita.estado?.replaceFirstChar { it.uppercase() }
                                                            ?: "Pendiente"
                                                    },
                                                    fontSize = 11.sp,
                                                    fontWeight = FontWeight.Medium,
                                                    color = when (cita.estado?.lowercase()) {
                                                        "confirmada" -> colors.success
                                                        "cancelada" -> colors.error
                                                        else -> colors.primary
                                                    },
                                                    modifier = Modifier.padding(
                                                        horizontal = 10.dp,
                                                        vertical = 4.dp
                                                    ),
                                                    fontFamily = roboto
                                                )
                                            }
                                        }

                                        Spacer(modifier = Modifier.width(12.dp))

                                        Column(
                                            horizontalAlignment = Alignment.CenterHorizontally,
                                            verticalArrangement = Arrangement.Center
                                        ) {
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
                                                },
                                                modifier = Modifier
                                                    .size(44.dp)
                                                    .background(
                                                        brush = Brush.linearGradient(
                                                            colors = listOf(
                                                                colors.primary,
                                                                colors.primaryLight
                                                            )
                                                        ),
                                                        shape = RoundedCornerShape(12.dp)
                                                    )
                                            ) {
                                                Icon(
                                                    Icons.Default.CalendarMonth,
                                                    contentDescription = stringResource(R.string.auto_agregar_a_calendario),
                                                    tint = if (isDark) Color.Black else Color.White,
                                                    modifier = Modifier.size(22.dp)
                                                )
                                            }

                                            Text(
                                                "Agendar",
                                                fontSize = 10.sp,
                                                color = colors.textSecondary,
                                                fontFamily = roboto,
                                                modifier = Modifier.padding(top = 4.dp)
                                            )
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
                                .shadow(12.dp, RoundedCornerShape(24.dp)),
                            shape = RoundedCornerShape(24.dp),
                            colors = CardDefaults.cardColors(containerColor = colors.surface),
                            elevation = CardDefaults.cardElevation(0.dp)
                        ) {
                            Column(modifier = Modifier.padding(20.dp)) {
                                Surface(
                                    modifier = Modifier.fillMaxWidth(),
                                    shape = RoundedCornerShape(16.dp),
                                    color = if (tieneDisponibilidad) colors.primaryLight.copy(alpha = 0.15f)
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
                                                        Locale.Builder().setLanguage("es")
                                                            .setRegion("ES").build()
                                                    )
                                                ).replaceFirstChar { it.uppercase() },
                                                fontSize = 16.sp,
                                                fontWeight = FontWeight.Bold,
                                                color = colors.textPrimary,
                                                fontFamily = roboto
                                            )
                                            if (tieneDisponibilidad) {
                                                Text(
                                                    stringResource(R.string.auto__hay_horarios_disponibles),
                                                    fontSize = 13.sp,
                                                    color = colors.primary,
                                                    fontFamily = roboto
                                                )
                                            } else {
                                                Text(
                                                    stringResource(R.string.auto__no_hay_disponibilidad),
                                                    fontSize = 13.sp,
                                                    color = colors.error,
                                                    fontFamily = roboto
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
                Log.d("CITAS_SCREEN", "========== CREAR CITA ==========")
                Log.d("CITAS_SCREEN", "idPaciente: $idPacienteParam")
                Log.d("CITAS_SCREEN", "fecha: $fecha, hora: $hora")
                Log.d("CITAS_SCREEN", "duracion: $duracion, motivo: $motivo")
                Log.d("CITAS_SCREEN", "idTerapia: $idTerapia")
                Log.d("CITAS_SCREEN", "metodoPago: $metodoPago, estadoPago: $estadoPago")
                Log.d("CITAS_SCREEN", "monto: $monto, modalidad: $modalidad")
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
                    Log.d("CITAS_SCREEN", "Resultado creación cita: ${result.isSuccess}")
                    if (result.isSuccess) {
                        programarConPermiso(fecha, hora)
                        snackbarHostState.showSnackbar("✅ Cita creada correctamente")
                        mostrarDialogo = false
                        viewModel.cargarAgendaMensual(mesVisible)
                        viewModel.cargarDisponibilidadDia(fecha)

                        if (metodoPago == MetodoPago.TARJETA) {
                            val citaId = result.getOrNull() ?: 0L
                            if (citaId > 0) {
                                navController.navigate(
                                    Screens.paymentScreen.createRoute(
                                        citaId = citaId,
                                        psicologoName = "Tu psicólogo",
                                        fecha = fecha.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")),
                                        monto = "$monto €"
                                    )
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
                        Log.e("CITAS_SCREEN", "Error: ${result.exceptionOrNull()?.message}")
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
            },
            colors = colors,
            roboto = roboto,
            isDark = isDark
        )
    }
}

@Composable
fun LeyendaItemAmani(
    color: Color,
    texto: String,
    textSecondary: Color,
    roboto: FontFamily
) {
    Row(verticalAlignment = Alignment.CenterVertically) {
        Box(
            modifier = Modifier
                .size(12.dp)
                .clip(RoundedCornerShape(4.dp))
                .background(color)
        )
        Spacer(modifier = Modifier.width(6.dp))
        Text(
            text = texto,
            fontSize = 12.sp,
            color = textSecondary,
            fontFamily = roboto
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
    colors: CitasScreenThemeColors,
    roboto: FontFamily,
    isDark: Boolean
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

    val horasDisponibles = remember(slotsLibres, citasExistentes, fechaSeleccionada, modoEdicion, citaExistente) {
        val horasLibres = slotsLibres.map { it.hora }.sorted()
        val horasOcupadas = citasExistentes.filter {
            if (modoEdicion && citaExistente != null) it.id != citaExistente.id else true
        }.map { it.horaInicio }
        horasLibres.filter { hora -> hora !in horasOcupadas }
    }

    var horaSeleccionada by remember {
        mutableStateOf(
            if (modoEdicion && citaExistente != null) citaExistente.horaInicio
            else horasDisponibles.firstOrNull()
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
        containerColor = colors.surface,
        shape = RoundedCornerShape(28.dp),
        title = {
            Column {
                Text(
                    text = if (modoEdicion) "✏️ Reagendar cita" else "📅 Agendar nueva cita",
                    fontSize = 22.sp,
                    fontWeight = FontWeight.Bold,
                    color = colors.textPrimary,
                    fontFamily = roboto
                )
                Text(
                    text = if (modoEdicion) "Modifica los datos de tu cita" else "Completa la información para agendar",
                    fontSize = 13.sp,
                    color = colors.textSecondary,
                    fontFamily = roboto
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
                CampoSeleccionAmani(
                    label = stringResource(R.string.auto_tipo_de_terapia),
                    icono = Icons.Default.MedicalServices,
                    valor = terapiaSeleccionada?.nombre ?: "",
                    expanded = terapiaDropdownExpanded,
                    onExpandedChange = { terapiaDropdownExpanded = it },
                    colors = colors,
                    roboto = roboto
                ) {
                    if (terapias.isEmpty()) {
                        DropdownMenuItem(
                            text = {
                                Text(
                                    stringResource(R.string.auto_no_hay_tipos_de),
                                    color = colors.textSecondary,
                                    fontFamily = roboto
                                )
                            },
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
                                            color = colors.textPrimary,
                                            fontFamily = roboto
                                        )
                                        Text(
                                            "Duración: ${terapia.duracionMinutos} min | Precio: ${terapia.precio} €",
                                            fontSize = 12.sp,
                                            color = colors.textSecondary,
                                            fontFamily = roboto
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

                CampoFechaAmani(
                    fechaSeleccionada = fechaSeleccionada,
                    onFechaChange = { fechaSeleccionada = it },
                    colors = colors,
                    roboto = roboto,
                    isDark = isDark
                )

                CampoSeleccionAmani(
                    label = stringResource(R.string.auto_hora_de_inicio),
                    icono = Icons.Default.Schedule,
                    valor = horaSeleccionada?.format(formatterHora) ?: "Sin horarios disponibles",
                    expanded = horaDropdownExpanded,
                    onExpandedChange = { horaDropdownExpanded = it },
                    error = horasDisponibles.isEmpty() && !modoEdicion,
                    colors = colors,
                    roboto = roboto
                ) {
                    if (horasDisponibles.isEmpty() && !modoEdicion) {
                        DropdownMenuItem(
                            text = {
                                Column {
                                    Text(
                                        stringResource(R.string.auto__no_hay_horarios),
                                        color = colors.error,
                                        fontFamily = roboto
                                    )
                                    Text(
                                        stringResource(R.string.auto_prueba_con_otra_fecha),
                                        fontSize = 12.sp,
                                        color = colors.textSecondary,
                                        fontFamily = roboto
                                    )
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
                                                color = colors.textPrimary,
                                                fontFamily = roboto
                                            )
                                            Text(
                                                "Duración: $duracionMinutos min",
                                                fontSize = 12.sp,
                                                color = colors.textSecondary,
                                                fontFamily = roboto
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

                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(16.dp),
                    colors = CardDefaults.cardColors(containerColor = colors.primaryLight.copy(alpha = 0.1f))
                ) {
                    Row(
                        modifier = Modifier.padding(16.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Column {
                            Text(
                                stringResource(R.string.auto_duracion_de_la_terapia),
                                fontSize = 12.sp,
                                color = colors.primary,
                                fontFamily = roboto
                            )
                            Text(
                                "$duracionMinutos minutos",
                                fontWeight = FontWeight.Bold,
                                color = colors.textPrimary,
                                fontFamily = roboto
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

                OutlinedTextField(
                    value = motivo,
                    onValueChange = { motivo = it },
                    label = {
                        Text(
                            stringResource(R.string.auto_motivo_de_la_cita),
                            color = colors.textSecondary,
                            fontFamily = roboto
                        )
                    },
                    modifier = Modifier.fillMaxWidth(),
                    minLines = 2,
                    maxLines = 3,
                    shape = RoundedCornerShape(16.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = colors.textFieldText,
                        unfocusedTextColor = colors.textFieldText,
                        focusedBorderColor = colors.primary,
                        unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.3f),
                        focusedLabelColor = colors.primary,
                        unfocusedLabelColor = colors.textSecondary,
                        focusedContainerColor = colors.textFieldContainer,
                        unfocusedContainerColor = colors.textFieldContainer
                    )
                )

                Text(
                    stringResource(R.string.auto_modalidad_de_la_cita),
                    fontSize = 14.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.textPrimary,
                    fontFamily = roboto
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
                                contentDescription = stringResource(R.string.auto_modalidad),
                                tint = colors.primary
                            )
                        },
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = modalidadDropdownExpanded) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .menuAnchor(
                                type = ExposedDropdownMenuAnchorType.PrimaryNotEditable,
                                enabled = true
                            ),
                        shape = RoundedCornerShape(14.dp),
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = colors.textFieldText,
                            unfocusedTextColor = colors.textFieldText,
                            focusedBorderColor = colors.primary,
                            unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.3f),
                            focusedContainerColor = colors.textFieldContainer,
                            unfocusedContainerColor = colors.textFieldContainer
                        )
                    )
                    ExposedDropdownMenu(
                        expanded = modalidadDropdownExpanded,
                        onDismissRequest = { modalidadDropdownExpanded = false }
                    ) {
                        DropdownMenuItem(
                            text = {
                                Row {
                                    Icon(
                                        Icons.Default.LocationOn,
                                        contentDescription = "",
                                        modifier = Modifier.size(20.dp),
                                        tint = colors.primary
                                    )
                                    Spacer(modifier = Modifier.width(8.dp))
                                    Text(
                                        stringResource(R.string.auto_presencial),
                                        color = colors.textPrimary,
                                        fontFamily = roboto
                                    )
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
                                    Icon(
                                        Icons.Default.Phone,
                                        contentDescription = "",
                                        modifier = Modifier.size(20.dp),
                                        tint = colors.primary
                                    )
                                    Spacer(modifier = Modifier.width(8.dp))
                                    Text(
                                        stringResource(R.string.auto_llamada),
                                        color = colors.textPrimary,
                                        fontFamily = roboto
                                    )
                                }
                            },
                            onClick = {
                                modalidadSeleccionada = ModalidadCita.LLAMADA
                                modalidadDropdownExpanded = false
                            }
                        )
                    }
                }

                Text(
                    stringResource(R.string.auto_informacion_de_pago),
                    fontSize = 14.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.textPrimary,
                    fontFamily = roboto
                )
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(16.dp),
                    colors = CardDefaults.cardColors(containerColor = colors.surface.copy(alpha = 0.7f))
                ) {
                    Column(modifier = Modifier.padding(16.dp)) {
                        Text(
                            stringResource(R.string.auto_metodo_de_pago),
                            fontSize = 12.sp,
                            color = colors.textSecondary,
                            fontFamily = roboto
                        )
                        Spacer(modifier = Modifier.height(8.dp))
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(24.dp)
                        ) {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.EFECTIVO,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.EFECTIVO },
                                    colors = RadioButtonDefaults.colors(selectedColor = colors.primary)
                                )
                                Text(
                                    "Efectivo",
                                    color = colors.textPrimary,
                                    fontFamily = roboto
                                )
                            }
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.TARJETA,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.TARJETA },
                                    colors = RadioButtonDefaults.colors(selectedColor = colors.primary)
                                )
                                Text(
                                    "Tarjeta",
                                    color = colors.textPrimary,
                                    fontFamily = roboto
                                )
                            }
                        }
                        Spacer(modifier = Modifier.height(12.dp))

                        OutlinedTextField(
                            value = montoCalculado.toString(),
                            onValueChange = {},
                            readOnly = true,
                            label = {
                                Text(
                                    stringResource(R.string.auto_monto_),
                                    color = colors.textSecondary,
                                    fontFamily = roboto
                                )
                            },
                            leadingIcon = {
                                Text(
                                    "€",
                                    color = colors.primary,
                                    fontFamily = roboto
                                )
                            },
                            singleLine = true,
                            shape = RoundedCornerShape(12.dp),
                            modifier = Modifier.fillMaxWidth(),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colors.textFieldText,
                                unfocusedTextColor = colors.textFieldText,
                                focusedBorderColor = colors.primary,
                                unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.3f),
                                focusedContainerColor = colors.textFieldContainer,
                                unfocusedContainerColor = colors.textFieldContainer
                            )
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(
                            when (metodoPagoSeleccionado) {
                                MetodoPago.TARJETA -> "💳 El pago se procesará online al momento de agendar la cita"
                                MetodoPago.EFECTIVO -> "💰 El pago se realizará en consulta el día de la cita"
                                else -> "Método de pago no especificado"
                            },
                            fontSize = 12.sp,
                            color = colors.textSecondary,
                            fontFamily = roboto
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
                modifier = Modifier
                    .fillMaxWidth()
                    .height(52.dp),
                shape = RoundedCornerShape(26.dp),
                colors = ButtonDefaults.buttonColors(
                    containerColor = colors.primary,
                    contentColor = if (isDark) Color.Black else Color.White
                ),
                elevation = ButtonDefaults.buttonElevation(4.dp)
            ) {
                Text(
                    if (modoEdicion) "💾 Guardar cambios" else "✅ Crear cita",
                    fontSize = 16.sp,
                    fontFamily = roboto,
                    color = if (isDark) Color.Black else Color.White
                )
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                shape = RoundedCornerShape(14.dp)
            ) {
                Text(
                    stringResource(R.string.auto_cancelar),
                    color = colors.textSecondary,
                    fontSize = 14.sp,
                    fontFamily = roboto
                )
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
    colors: CitasScreenThemeColors,
    roboto: FontFamily,
    content: @Composable ExposedDropdownMenuBoxScope.() -> Unit
) {
    Column {
        Text(
            label,
            fontSize = 14.sp,
            fontWeight = FontWeight.SemiBold,
            color = colors.textPrimary,
            fontFamily = roboto
        )
        Spacer(modifier = Modifier.height(6.dp))
        ExposedDropdownMenuBox(expanded = expanded, onExpandedChange = onExpandedChange) {
            OutlinedTextField(
                value = valor,
                onValueChange = {},
                readOnly = true,
                leadingIcon = {
                    Icon(
                        icono,
                        contentDescription = label,
                        modifier = Modifier.size(20.dp),
                        tint = colors.primary
                    )
                },
                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded) },
                modifier = Modifier
                    .fillMaxWidth()
                    .menuAnchor(
                        type = ExposedDropdownMenuAnchorType.PrimaryNotEditable,
                        enabled = true
                    ),
                singleLine = true,
                shape = RoundedCornerShape(14.dp),
                isError = error,
                colors = OutlinedTextFieldDefaults.colors(
                    focusedTextColor = colors.textFieldText,
                    unfocusedTextColor = colors.textFieldText,
                    focusedBorderColor = colors.primary,
                    unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.3f),
                    focusedLabelColor = colors.primary,
                    unfocusedLabelColor = colors.textSecondary,
                    cursorColor = colors.primary,
                    focusedContainerColor = colors.textFieldContainer,
                    unfocusedContainerColor = colors.textFieldContainer
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
    onFechaChange: (LocalDate) -> Unit,
    colors: CitasScreenThemeColors,
    roboto: FontFamily,
    isDark: Boolean
) {
    val formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy")

    Column {
        Text(
            stringResource(R.string.auto_fecha),
            fontSize = 14.sp,
            fontWeight = FontWeight.SemiBold,
            color = colors.textPrimary,
            fontFamily = roboto
        )
        Spacer(modifier = Modifier.height(6.dp))
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(14.dp),
            colors = CardDefaults.cardColors(containerColor = colors.primaryLight.copy(alpha = 0.1f)),
            elevation = CardDefaults.cardElevation(2.dp)
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
                        contentDescription = stringResource(R.string.auto_dia_anterior),
                        tint = colors.primary
                    )
                }
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(
                        fechaSeleccionada.format(formatterFecha),
                        fontSize = 16.sp,
                        fontWeight = FontWeight.Bold,
                        color = colors.textPrimary,
                        fontFamily = roboto
                    )
                    Text(
                        fechaSeleccionada.format(
                            DateTimeFormatter.ofPattern(
                                "EEEE",
                                Locale.Builder().setLanguage("es").setRegion("ES").build()
                            )
                        ).replaceFirstChar { it.uppercase() },
                        fontSize = 12.sp,
                        color = colors.textSecondary,
                        fontFamily = roboto
                    )
                }
                IconButton(onClick = { onFechaChange(fechaSeleccionada.plusDays(1)) }) {
                    Icon(
                        Icons.Default.ChevronRight,
                        contentDescription = stringResource(R.string.auto_dia_siguiente),
                        tint = colors.primary
                    )
                }
            }
        }
    }
}

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
    val textFieldBorder: Color
)