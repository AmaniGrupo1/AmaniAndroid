package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import android.Manifest
import android.content.res.Configuration
import android.os.Build
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.annotation.RequiresApi
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
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.AccessTime
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Save
import androidx.compose.material.icons.filled.Warning
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuAnchorType
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.RadioButton
import androidx.compose.material3.RadioButtonDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
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
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.ies.tierno.applicationamani.utils.programarRecordatorioCita
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth
import java.time.format.DateTimeFormatter
import java.util.Locale

/**
 * Pantalla de edición/reagendamiento de una cita existente.
 *
 * Carga los datos actuales de la cita y permite modificar la fecha, hora,
 * terapia, modalidad, método de pago, estado de pago y monto. Al guardar,
 * actualiza la cita en el backend y opcionalmente la reagenda en el
 * calendario del dispositivo.
 *
 * @param navController Controlador de navegación para volver atrás.
 * @param citaId Identificador de la cita a editar.
 * @param viewModel ViewModel que gestiona la agenda del psicólogo.
 * @param listarTerapiasViewModel ViewModel que gestiona las terapias disponibles.
 */
@OptIn(ExperimentalMaterial3Api::class)
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun EditarCitaScreen(
    navController: NavController,
    citaId: String?,
    viewModel: PsicologoAgendaViewModel,
    listarTerapiasViewModel: ListarTerapiasViewModel,
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }

    val colorScheme = MaterialTheme.colorScheme
    val amaniColors = AmaniTheme.colors

    val colors =
        EditarCitaThemeColors(
            primary = colorScheme.primary,
            primaryContainer = colorScheme.primaryContainer,
            onPrimary = colorScheme.onPrimary,
            surface = colorScheme.surface,
            surfaceVariant = colorScheme.surfaceVariant,
            onSurfaceVariant = colorScheme.onSurfaceVariant,
            error = colorScheme.error,
            errorContainer = colorScheme.errorContainer,
            warning = amaniColors.warning,
            onSurface = colorScheme.onSurface,
            onBackground = colorScheme.onBackground,
            background = colorScheme.background,
        )

    // Estados
    var isLoading by remember { mutableStateOf(true) }
    var isSaving by remember { mutableStateOf(false) }
    var errorMessage by remember { mutableStateOf<String?>(null) }

    // Estados del formulario
    var fechaSeleccionada by remember { mutableStateOf<LocalDate?>(null) }
    var horaSeleccionada by remember { mutableStateOf<LocalTime?>(null) }
    var motivo by remember { mutableStateOf("") }
    var terapiaSeleccionada by remember { mutableStateOf<TerapiaResponseDTO?>(null) }
    var metodoPagoSeleccionado by remember { mutableStateOf(MetodoPago.EFECTIVO) }
    var estadoPagoSeleccionado by remember { mutableStateOf(EstadoPago.PENDIENTE) }
    var modalidadSeleccionada by remember { mutableStateOf(ModalidadCita.PRESENCIAL) }
    var duracionMinutos by remember { mutableIntStateOf(60) }
    var monto by remember { mutableStateOf(BigDecimal.ZERO) }

    // Estado del calendario y disponibilidad
    var mesVisible by remember { mutableStateOf(YearMonth.now()) }
    val agendaMensual by viewModel.agendaMensual.collectAsStateWithLifecycle()
    val disponibilidadDia by viewModel.disponibilidadDia.collectAsStateWithLifecycle()
    val terapias by listarTerapiasViewModel.terapias.collectAsStateWithLifecycle()
    val session by viewModel.userSession.collectAsStateWithLifecycle()
    val idPaciente = session?.idPaciente ?: session?.idUsuario ?: 0L

    // Estado local para la cita
    var citaCargada by remember { mutableStateOf<AgendaItemDTO?>(null) }

    LaunchedEffect(mesVisible, session) {
        if (session?.idPsicologo != null) {
            viewModel.cargarAgendaMensual(mesVisible)
        }
    }

    LaunchedEffect(agendaMensual, citaId) {
        if (!citaId.isNullOrBlank()) {
            val id = citaId.toLongOrNull()
            if (id != null) {
                if (agendaMensual.isNotEmpty()) {
                    val citaEncontrada = agendaMensual.find { it.id == id }
                    if (citaEncontrada != null) {
                        citaCargada = citaEncontrada
                        fechaSeleccionada = citaEncontrada.fecha
                        horaSeleccionada = citaEncontrada.horaInicio
                        motivo = citaEncontrada.motivo ?: ""
                        modalidadSeleccionada = citaEncontrada.modalidad ?: ModalidadCita.PRESENCIAL
                        metodoPagoSeleccionado = citaEncontrada.metodoPago ?: MetodoPago.EFECTIVO
                        estadoPagoSeleccionado = citaEncontrada.estadoPago ?: EstadoPago.PENDIENTE
                        duracionMinutos = citaEncontrada.duracionMinutos ?: 60

                        viewModel.cargarDisponibilidadDia(citaEncontrada.fecha)
                    } else {
                        errorMessage = context.getString(R.string.cita_no_encontrada_id, id)
                        isLoading = false
                    }
                }
            } else {
                errorMessage = context.getString(R.string.cita_id_invalido, citaId)
                isLoading = false
            }
        } else {
            errorMessage = context.getString(R.string.cita_id_no_proporcionado)
            isLoading = false
        }
    }

    LaunchedEffect(Unit) {
        listarTerapiasViewModel.cargarTerapias()
    }

    LaunchedEffect(citaCargada, terapias) {
        if (citaCargada != null && terapias.isNotEmpty()) {
            terapiaSeleccionada =
                terapias.find {
                    it.idTipo == citaCargada!!.terapia?.idTipo
                }
            terapiaSeleccionada?.let { terapia ->
                duracionMinutos = terapia.duracionMinutos
                monto = terapia.precio
            }
            isLoading = false
        }
    }

    val citasDelDia =
        remember(fechaSeleccionada, agendaMensual, citaId) {
            val idActual = citaId?.toLongOrNull()
            fechaSeleccionada?.let { fecha ->
                agendaMensual.filter {
                    it.fecha == fecha && it.id != idActual
                }
            } ?: emptyList()
        }

    val horasDisponibles =
        remember(disponibilidadDia, citasDelDia, fechaSeleccionada, citaCargada) {
            if (disponibilidadDia?.diaCompleto == true) {
                emptyList()
            } else {
                val slotsLibres =
                    disponibilidadDia
                        ?.slotsLibres
                        ?.filter { !it.ocupado }
                        ?.map { it.hora }
                        ?: emptyList()

                val horasOcupadas = citasDelDia.map { it.horaInicio }
                val disponibles =
                    slotsLibres
                        .filter { hora -> hora !in horasOcupadas }
                        .sorted()

                if (citaCargada != null && citaCargada!!.horaInicio !in disponibles) {
                    (listOf(citaCargada!!.horaInicio) + disponibles).distinct().sorted()
                } else {
                    disponibles
                }
            }
        }

    val tieneDisponibilidad = horasDisponibles.isNotEmpty()

    val hayCambios =
        remember(
            citaCargada,
            fechaSeleccionada,
            horaSeleccionada,
            motivo,
            terapiaSeleccionada,
            modalidadSeleccionada,
        ) {
            citaCargada != null &&
                (
                    fechaSeleccionada != citaCargada?.fecha ||
                        horaSeleccionada != citaCargada?.horaInicio ||
                        motivo != (citaCargada?.motivo ?: "") ||
                        terapiaSeleccionada?.idTipo != citaCargada?.terapia?.idTipo ||
                        modalidadSeleccionada != citaCargada?.modalidad
                )
        }

    val botonHabilitado =
        fechaSeleccionada != null &&
            horaSeleccionada != null &&
            tieneDisponibilidad &&
            hayCambios &&
            !isSaving

    val notifPermissionLauncher =
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.RequestPermission(),
        ) { granted ->
            if (granted && fechaSeleccionada != null && horaSeleccionada != null) {
                programarRecordatorioCita(
                    context = context,
                    fecha = fechaSeleccionada!!,
                    hora = horaSeleccionada!!,
                    minutosAntes = 30,
                    titulo = context.getString(R.string.cita_notif_titulo),
                    mensaje =
                        context.getString(
                            R.string.cita_notif_reagendada_msg,
                            horaSeleccionada!!.format(DateTimeFormatter.ofPattern("HH:mm")),
                        ),
                )
            }
        }

    fun programarConPermiso(
        fecha: LocalDate,
        hora: LocalTime,
    ) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
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
                        R.string.cita_notif_reagendada_msg,
                        hora.format(DateTimeFormatter.ofPattern("HH:mm")),
                    ),
            )
        }
    }

    EditarCitaContent(
        isLoading = isLoading,
        isSaving = isSaving,
        errorMessage = errorMessage,
        citaCargada = citaCargada,
        mesVisible = mesVisible,
        fechaSeleccionada = fechaSeleccionada,
        horaSeleccionada = horaSeleccionada,
        fechasDestacadas = agendaMensual.map { it.fecha }.toSet(),
        horasDisponibles = horasDisponibles,
        tieneDisponibilidad = tieneDisponibilidad,
        terapiaSeleccionada = terapiaSeleccionada,
        duracionMinutos = duracionMinutos,
        monto = monto,
        motivo = motivo,
        modalidadSeleccionada = modalidadSeleccionada,
        hayCambios = hayCambios,
        botonHabilitado = botonHabilitado,
        colors = colors,
        snackbarHostState = snackbarHostState,
        onBackClick = { navController.navigateUp() },
        onMesVisibleChange = { mesVisible = it },
        onFechaSeleccionada = { fecha ->
            fechaSeleccionada = fecha
            viewModel.cargarDisponibilidadDia(fecha)
        },
        onHoraSeleccionada = { horaSeleccionada = it },
        onMotivoChange = { motivo = it },
        onModalidadChange = { modalidadSeleccionada = it },
        onSaveClick = {
            if (fechaSeleccionada != null && horaSeleccionada != null && citaCargada != null && !isSaving) {
                scope.launch {
                    isSaving = true
                    try {
                        viewModel.editarCita(
                            idCita = citaCargada!!.id,
                            idPaciente = idPaciente,
                            fecha = fechaSeleccionada!!,
                            hora = horaSeleccionada!!,
                            duracionMinutos = duracionMinutos,
                            motivo =
                                motivo.ifBlank {
                                    if (citaCargada?.motivo.isNullOrBlank()) {
                                        "${terapiaSeleccionada?.nombre ?: "Cita"} - Consulta"
                                    } else {
                                        motivo
                                    }
                                },
                            idTipoTerapia =
                                terapiaSeleccionada?.idTipo
                                    ?: citaCargada!!.terapia?.idTipo
                                    ?: return@launch,
                            metodoPago = metodoPagoSeleccionado,
                            estadoPago = estadoPagoSeleccionado,
                            monto = monto,
                            modalidad = modalidadSeleccionada,
                        )

                        viewModel.cargarAgendaMensual(mesVisible)

                        if (fechaSeleccionada != citaCargada?.fecha || horaSeleccionada != citaCargada?.horaInicio) {
                            programarConPermiso(
                                fechaSeleccionada!!,
                                horaSeleccionada!!,
                            )
                        }

                        snackbarHostState.showSnackbar(context.getString(R.string.cita_reagendada_exito))
                        delay(1500)
                        navController.navigateUp()
                    } catch (e: Exception) {
                        snackbarHostState.showSnackbar(
                            context.getString(R.string.cita_reagendar_error, e.message ?: ""),
                        )
                    } finally {
                        isSaving = false
                    }
                }
            }
        },
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun EditarCitaContent(
    isLoading: Boolean,
    isSaving: Boolean,
    errorMessage: String?,
    citaCargada: AgendaItemDTO?,
    mesVisible: YearMonth,
    fechaSeleccionada: LocalDate?,
    horaSeleccionada: LocalTime?,
    fechasDestacadas: Set<LocalDate>,
    horasDisponibles: List<LocalTime>,
    tieneDisponibilidad: Boolean,
    terapiaSeleccionada: TerapiaResponseDTO?,
    duracionMinutos: Int,
    monto: BigDecimal,
    motivo: String,
    modalidadSeleccionada: ModalidadCita,
    hayCambios: Boolean,
    botonHabilitado: Boolean,
    colors: EditarCitaThemeColors,
    snackbarHostState: SnackbarHostState,
    onBackClick: () -> Unit,
    onMesVisibleChange: (YearMonth) -> Unit,
    onFechaSeleccionada: (LocalDate) -> Unit,
    onHoraSeleccionada: (LocalTime) -> Unit,
    onMotivoChange: (String) -> Unit,
    onModalidadChange: (ModalidadCita) -> Unit,
    onSaveClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    var horaDropdownExpanded by remember { mutableStateOf(false) }

    Scaffold(
        modifier = modifier,
        snackbarHost = { SnackbarHost(snackbarHostState) },
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_reagendar_cita),
                        style = typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                        color = colors.onSurface,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = colors.onSurface,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colors.surface,
                        titleContentColor = colors.onSurface,
                        navigationIconContentColor = colors.onSurface,
                    ),
            )
        },
    ) { innerPadding ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(innerPadding)
                    .background(colors.background),
        ) {
            if (isLoading) {
                Box(
                    modifier = Modifier.fillMaxSize(),
                    contentAlignment = Alignment.Center,
                ) {
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.Center,
                    ) {
                        CircularProgressIndicator(color = colors.primary)
                        Spacer(modifier = Modifier.height(Spacing.m))
                        Text(
                            stringResource(R.string.auto_cargando_datos_de_la),
                            style = typography.bodyMedium,
                            color = colors.onSurface,
                        )
                    }
                }
            } else if (errorMessage != null) {
                Box(
                    modifier = Modifier.fillMaxSize(),
                    contentAlignment = Alignment.Center,
                ) {
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.Center,
                    ) {
                        Icon(
                            Icons.Default.Error,
                            contentDescription = null,
                            modifier = Modifier.size(Dimensions.iconHero),
                            tint = colors.error,
                        )
                        Spacer(modifier = Modifier.height(Spacing.m))
                        Text(
                            errorMessage,
                            style = typography.bodyMedium,
                            color = colors.error,
                        )
                        Spacer(modifier = Modifier.height(Spacing.m))
                        Button(onClick = onBackClick) {
                            Text(
                                stringResource(R.string.auto_volver),
                                style = typography.labelLarge,
                            )
                        }
                    }
                }
            } else if (citaCargada == null) {
                Box(
                    modifier = Modifier.fillMaxSize(),
                    contentAlignment = Alignment.Center,
                ) {
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.Center,
                    ) {
                        CircularProgressIndicator(color = colors.primary)
                        Spacer(modifier = Modifier.height(Spacing.m))
                        Text(
                            stringResource(R.string.auto_buscando_cita),
                            style = typography.bodyMedium,
                            color = colors.onSurface,
                        )
                    }
                }
            } else {
                Column(
                    modifier =
                        Modifier
                            .fillMaxSize()
                            .verticalScroll(rememberScrollState())
                            .padding(Spacing.m),
                ) {
                    // Información de la cita original
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = shapes.large,
                        colors =
                            CardDefaults.cardColors(
                                containerColor = colors.primaryContainer.copy(alpha = 0.4f),
                            ),
                    ) {
                        Column(modifier = Modifier.padding(Spacing.m)) {
                            Text(
                                text = stringResource(R.string.auto__cita_actual),
                                style = typography.titleSmall,
                                fontWeight = FontWeight.Bold,
                                color = colors.primary,
                            )
                            Spacer(modifier = Modifier.height(Spacing.s))
                            Text(
                                text =
                                    stringResource(
                                        R.string.cita_actual_fecha,
                                        citaCargada.fecha.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")),
                                    ),
                                style = typography.bodyMedium,
                                color = colors.onSurface,
                            )
                            Text(
                                text =
                                    stringResource(
                                        R.string.cita_actual_hora,
                                        citaCargada.horaInicio.format(DateTimeFormatter.ofPattern("HH:mm")),
                                    ),
                                style = typography.bodyMedium,
                                color = colors.onSurface,
                            )
                            Text(
                                text =
                                    stringResource(
                                        R.string.cita_actual_terapia,
                                        citaCargada.terapia?.nombre ?: stringResource(R.string.valor_no_especificado),
                                    ),
                                style = typography.bodyMedium,
                                color = colors.onSurface,
                            )
                            Text(
                                text =
                                    stringResource(
                                        R.string.cita_actual_modalidad,
                                        if (citaCargada.modalidad == ModalidadCita.PRESENCIAL) {
                                            stringResource(R.string.auto_presencial)
                                        } else {
                                            stringResource(R.string.auto_llamada)
                                        },
                                    ),
                                style = typography.bodyMedium,
                                color = colors.onSurface,
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(Spacing.l))

                    // Calendario para nueva fecha
                    Text(
                        text = stringResource(R.string.auto__selecciona_nueva_fecha),
                        style = typography.titleSmall,
                        fontWeight = FontWeight.Bold,
                        color = colors.onSurface,
                        modifier = Modifier.padding(bottom = Spacing.s),
                    )

                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = shapes.extraLarge,
                        colors = CardDefaults.cardColors(containerColor = colors.surface),
                    ) {
                        CalendarioView(
                            modifier = Modifier.fillMaxWidth(),
                            mesVisible = mesVisible,
                            fechaSeleccionada = fechaSeleccionada,
                            fechasDestacadas = fechasDestacadas,
                            onMesVisibleChange = onMesVisibleChange,
                            onFechaSeleccionada = onFechaSeleccionada,
                        )
                    }

                    Spacer(modifier = Modifier.height(Spacing.l))

                    // Mostrar disponibilidad y selector de hora
                    if (fechaSeleccionada != null) {
                        Card(
                            modifier = Modifier.fillMaxWidth(),
                            shape = shapes.large,
                            colors =
                                CardDefaults.cardColors(
                                    containerColor =
                                        if (tieneDisponibilidad) {
                                            colors.primaryContainer.copy(alpha = 0.4f)
                                        } else {
                                            colors.errorContainer
                                        },
                                ),
                        ) {
                            Column(modifier = Modifier.padding(Spacing.m)) {
                                Row(
                                    modifier = Modifier.fillMaxWidth(),
                                    verticalAlignment = Alignment.CenterVertically,
                                ) {
                                    Icon(
                                        if (tieneDisponibilidad) Icons.Default.CheckCircle else Icons.Default.Warning,
                                        contentDescription = null,
                                        tint = if (tieneDisponibilidad) colors.primary else colors.error,
                                        modifier = Modifier.size(Dimensions.iconDefault),
                                    )
                                    Spacer(modifier = Modifier.width(Spacing.sm))
                                    Column {
                                        Text(
                                            text =
                                                fechaSeleccionada
                                                    .format(
                                                        DateTimeFormatter.ofPattern(
                                                            "EEEE, d 'de' MMMM",
                                                            Locale.forLanguageTag("es-ES"),
                                                        ),
                                                    ).replaceFirstChar { it.uppercase() },
                                            style = typography.titleSmall,
                                            fontWeight = FontWeight.Bold,
                                            color = colors.onSurface,
                                        )
                                        Text(
                                            text =
                                                if (tieneDisponibilidad) {
                                                    stringResource(R.string.auto__hay_horarios_disponibles)
                                                } else {
                                                    stringResource(R.string.auto__no_hay_disponibilidad)
                                                },
                                            style = typography.bodySmall,
                                            color = if (tieneDisponibilidad) colors.primary else colors.error,
                                        )
                                    }
                                }

                                if (tieneDisponibilidad) {
                                    Spacer(modifier = Modifier.height(Spacing.m))
                                    Text(
                                        text = stringResource(R.string.auto_selecciona_nueva_hora),
                                        style = typography.titleSmall,
                                        fontWeight = FontWeight.SemiBold,
                                        color = colors.onSurface,
                                    )
                                    Spacer(modifier = Modifier.height(Spacing.s))

                                    ExposedDropdownMenuBox(
                                        expanded = horaDropdownExpanded,
                                        onExpandedChange = { horaDropdownExpanded = it },
                                    ) {
                                        OutlinedTextField(
                                            value =
                                                horaSeleccionada?.format(
                                                    DateTimeFormatter.ofPattern("HH:mm"),
                                                ) ?: stringResource(R.string.cita_seleccionar_hora),
                                            onValueChange = {},
                                            readOnly = true,
                                            trailingIcon = {
                                                ExposedDropdownMenuDefaults.TrailingIcon(
                                                    expanded = horaDropdownExpanded,
                                                )
                                            },
                                            modifier =
                                                Modifier
                                                    .fillMaxWidth()
                                                    .menuAnchor(type = ExposedDropdownMenuAnchorType.PrimaryNotEditable, enabled = true),
                                            shape = shapes.medium,
                                            colors =
                                                OutlinedTextFieldDefaults.colors(
                                                    focusedTextColor = colors.onSurface,
                                                    unfocusedTextColor = colors.onSurface,
                                                    focusedBorderColor = colors.primary,
                                                    unfocusedBorderColor = colors.onSurfaceVariant,
                                                ),
                                        )
                                        ExposedDropdownMenu(
                                            expanded = horaDropdownExpanded,
                                            onDismissRequest = { horaDropdownExpanded = false },
                                        ) {
                                            horasDisponibles.forEach { hora ->
                                                DropdownMenuItem(
                                                    text = {
                                                        Row(verticalAlignment = Alignment.CenterVertically) {
                                                            Icon(
                                                                Icons.Default.AccessTime,
                                                                contentDescription = null,
                                                                modifier = Modifier.size(Dimensions.iconSmall),
                                                                tint = colors.primary,
                                                            )
                                                            Spacer(modifier = Modifier.width(Spacing.s))
                                                            Text(
                                                                hora.format(DateTimeFormatter.ofPattern("HH:mm")),
                                                                style = typography.bodyMedium,
                                                                color = colors.onSurface,
                                                            )
                                                        }
                                                    },
                                                    onClick = {
                                                        onHoraSeleccionada(hora)
                                                        horaDropdownExpanded = false
                                                    },
                                                )
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Spacer(modifier = Modifier.height(Spacing.l))

                    // Tipo de terapia (solo visual, no editable)
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = shapes.large,
                        colors =
                            CardDefaults.cardColors(
                                containerColor = colors.surfaceVariant.copy(alpha = 0.4f),
                            ),
                    ) {
                        Column(modifier = Modifier.padding(Spacing.m)) {
                            Text(
                                text = stringResource(R.string.auto__tipo_de_terapia),
                                style = typography.labelLarge,
                                fontWeight = FontWeight.SemiBold,
                                color = colors.onSurfaceVariant,
                            )
                            Spacer(modifier = Modifier.height(Spacing.s))
                            Text(
                                text = terapiaSeleccionada?.nombre ?: stringResource(R.string.valor_no_especificado),
                                style = typography.bodyLarge,
                                fontWeight = FontWeight.Medium,
                                color = colors.onSurface,
                            )
                            Text(
                                text = stringResource(R.string.cita_duracion_precio_formato, duracionMinutos, monto.toString()),
                                style = typography.bodyMedium,
                                color = colors.primary,
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(Spacing.m))

                    // Motivo
                    OutlinedTextField(
                        value = motivo,
                        onValueChange = onMotivoChange,
                        label = { Text(stringResource(R.string.auto_motivo_de_la_cita)) },
                        placeholder = { Text(stringResource(R.string.auto_ej_seguimiento_de_tratamiento)) },
                        modifier = Modifier.fillMaxWidth(),
                        minLines = 2,
                        maxLines = 3,
                        shape = shapes.medium,
                        colors =
                            OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colors.onSurface,
                                unfocusedTextColor = colors.onSurface,
                                focusedBorderColor = colors.primary,
                                unfocusedBorderColor = colors.onSurfaceVariant,
                            ),
                    )

                    Spacer(modifier = Modifier.height(Spacing.m))

                    // Modalidad
                    Text(
                        text = stringResource(R.string.auto_modalidad_de_la_cita),
                        style = typography.titleSmall,
                        fontWeight = FontWeight.SemiBold,
                        color = colors.onSurface,
                    )
                    Spacer(modifier = Modifier.height(Spacing.s))
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(Spacing.m),
                    ) {
                        Row(
                            modifier = Modifier.weight(1f),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            RadioButton(
                                selected = modalidadSeleccionada == ModalidadCita.PRESENCIAL,
                                onClick = { onModalidadChange(ModalidadCita.PRESENCIAL) },
                                colors = RadioButtonDefaults.colors(selectedColor = colors.primary),
                            )
                            Text(
                                stringResource(R.string.auto_presencial),
                                style = typography.bodyMedium,
                                color = colors.onSurface,
                            )
                        }
                        Row(
                            modifier = Modifier.weight(1f),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            RadioButton(
                                selected = modalidadSeleccionada == ModalidadCita.LLAMADA,
                                onClick = { onModalidadChange(ModalidadCita.LLAMADA) },
                                colors = RadioButtonDefaults.colors(selectedColor = colors.primary),
                            )
                            Text(
                                stringResource(R.string.auto_llamada),
                                style = typography.bodyMedium,
                                color = colors.onSurface,
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(Spacing.l))

                    // Botones de acción
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(Spacing.sm),
                    ) {
                        OutlinedButton(
                            onClick = onBackClick,
                            modifier = Modifier.weight(1f),
                            shape = shapes.medium,
                            enabled = !isSaving,
                            colors =
                                ButtonDefaults.outlinedButtonColors(
                                    contentColor = colors.primary,
                                ),
                        ) {
                            Text(
                                stringResource(R.string.auto_cancelar),
                                style = typography.labelLarge,
                            )
                        }

                        Button(
                            onClick = onSaveClick,
                            enabled = botonHabilitado,
                            modifier = Modifier.weight(1f),
                            shape = shapes.medium,
                            colors =
                                ButtonDefaults.buttonColors(
                                    containerColor = colors.primary,
                                ),
                        ) {
                            if (isSaving) {
                                CircularProgressIndicator(
                                    modifier = Modifier.size(Dimensions.iconMedium),
                                    strokeWidth = Dimensions.borderMedium,
                                    color = colors.onPrimary,
                                )
                                Spacer(modifier = Modifier.width(Spacing.s))
                                Text(
                                    stringResource(R.string.auto_guardando),
                                    style = typography.labelLarge,
                                    color = colors.onPrimary,
                                )
                            } else {
                                Icon(
                                    Icons.Default.Save,
                                    contentDescription = null,
                                    modifier = Modifier.size(Dimensions.iconButton),
                                    tint = colors.onPrimary,
                                )
                                Spacer(modifier = Modifier.width(Spacing.s))
                                Text(
                                    stringResource(R.string.auto_guardar_cambios),
                                    style = typography.labelLarge,
                                    color = colors.onPrimary,
                                )
                            }
                        }
                    }

                    if (!hayCambios && fechaSeleccionada != null && horaSeleccionada != null) {
                        Spacer(modifier = Modifier.height(Spacing.sm))
                        Card(
                            modifier = Modifier.fillMaxWidth(),
                            shape = shapes.medium,
                            colors =
                                CardDefaults.cardColors(
                                    containerColor = colors.warning.copy(alpha = 0.12f),
                                ),
                        ) {
                            Row(
                                modifier = Modifier.padding(Spacing.sm),
                                verticalAlignment = Alignment.CenterVertically,
                            ) {
                                Icon(
                                    Icons.Default.Info,
                                    contentDescription = null,
                                    modifier = Modifier.size(Dimensions.iconMedium),
                                    tint = colors.warning,
                                )
                                Spacer(modifier = Modifier.width(Spacing.s))
                                Text(
                                    text = stringResource(R.string.auto_no_has_realizado_cambios),
                                    style = typography.bodySmall,
                                    color = colors.warning,
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

/**
 * Conjunto de colores temáticos para la pantalla de edición de citas.
 */
data class EditarCitaThemeColors(
    val primary: Color,
    val primaryContainer: Color,
    val onPrimary: Color,
    val surface: Color,
    val surfaceVariant: Color,
    val onSurfaceVariant: Color,
    val error: Color,
    val errorContainer: Color,
    val warning: Color,
    val onSurface: Color,
    val onBackground: Color,
    val background: Color,
)

private val previewTerapiaEditar =
    TerapiaResponseDTO(
        idTipo = 1L,
        nombre = "Terapia Cognitivo-Conductual",
        duracionMinutos = 60,
        precio = BigDecimal("50.00"),
    )

@RequiresApi(Build.VERSION_CODES.O)
private val previewCitaEditar =
    AgendaItemDTO(
        id = 101L,
        idPaciente = 42L,
        fecha = LocalDate.of(2026, 10, 28),
        horaInicio = LocalTime.of(10, 0),
        horaFin = LocalTime.of(11, 0),
        tipo = "CITA",
        estado = "CONFIRMADA",
        motivo = "Seguimiento mensual de ansiedad",
        duracionMinutos = 60,
        nombrePaciente = "Laura Gómez",
        nombrePsicologo = "Elena Martínez",
        terapia = previewTerapiaEditar,
        metodoPago = MetodoPago.TARJETA,
        estadoPago = EstadoPago.PAGADO,
        modalidad = ModalidadCita.PRESENCIAL,
    )

@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun rememberPreviewEditarCitaColors(): EditarCitaThemeColors {
    val cs = MaterialTheme.colorScheme
    val amani = AmaniTheme.colors
    return EditarCitaThemeColors(
        primary = cs.primary,
        primaryContainer = cs.primaryContainer,
        onPrimary = cs.onPrimary,
        surface = cs.surface,
        surfaceVariant = cs.surfaceVariant,
        onSurfaceVariant = cs.onSurfaceVariant,
        error = cs.error,
        errorContainer = cs.errorContainer,
        warning = amani.warning,
        onSurface = cs.onSurface,
        onBackground = cs.onBackground,
        background = cs.background,
    )
}

@RequiresApi(Build.VERSION_CODES.O)
@Preview(showBackground = true, name = "EditarCita - Light")
@Composable
private fun EditarCitaScreenLightPreview() {
    AppTheme(darkTheme = false) {
        EditarCitaContent(
            isLoading = false,
            isSaving = false,
            errorMessage = null,
            citaCargada = previewCitaEditar,
            mesVisible = YearMonth.of(2026, 10),
            fechaSeleccionada = LocalDate.of(2026, 10, 29),
            horaSeleccionada = LocalTime.of(11, 0),
            fechasDestacadas = setOf(LocalDate.of(2026, 10, 28)),
            horasDisponibles = listOf(LocalTime.of(10, 0), LocalTime.of(11, 0), LocalTime.of(16, 0)),
            tieneDisponibilidad = true,
            terapiaSeleccionada = previewTerapiaEditar,
            duracionMinutos = 60,
            monto = BigDecimal("50.00"),
            motivo = "Seguimiento mensual de ansiedad",
            modalidadSeleccionada = ModalidadCita.PRESENCIAL,
            hayCambios = true,
            botonHabilitado = true,
            colors = rememberPreviewEditarCitaColors(),
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onMesVisibleChange = {},
            onFechaSeleccionada = {},
            onHoraSeleccionada = {},
            onMotivoChange = {},
            onModalidadChange = {},
            onSaveClick = {},
        )
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Preview(
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
    name = "EditarCita - Dark",
)
@Composable
private fun EditarCitaScreenDarkPreview() {
    AppTheme(darkTheme = true) {
        EditarCitaContent(
            isLoading = false,
            isSaving = false,
            errorMessage = null,
            citaCargada = previewCitaEditar,
            mesVisible = YearMonth.of(2026, 10),
            fechaSeleccionada = LocalDate.of(2026, 10, 28),
            horaSeleccionada = LocalTime.of(10, 0),
            fechasDestacadas = setOf(LocalDate.of(2026, 10, 28)),
            horasDisponibles = listOf(LocalTime.of(10, 0), LocalTime.of(11, 0)),
            tieneDisponibilidad = true,
            terapiaSeleccionada = previewTerapiaEditar,
            duracionMinutos = 60,
            monto = BigDecimal("50.00"),
            motivo = "Seguimiento mensual de ansiedad",
            modalidadSeleccionada = ModalidadCita.PRESENCIAL,
            hayCambios = false,
            botonHabilitado = false,
            colors = rememberPreviewEditarCitaColors(),
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onMesVisibleChange = {},
            onFechaSeleccionada = {},
            onHoraSeleccionada = {},
            onMotivoChange = {},
            onModalidadChange = {},
            onSaveClick = {},
        )
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Preview(
    showBackground = true,
    fontScale = 1.5f,
    name = "EditarCita - FontScale 1.5x",
)
@Composable
private fun EditarCitaScreenFontScalePreview() {
    AppTheme(darkTheme = false) {
        EditarCitaContent(
            isLoading = false,
            isSaving = false,
            errorMessage = null,
            citaCargada = previewCitaEditar,
            mesVisible = YearMonth.of(2026, 10),
            fechaSeleccionada = LocalDate.of(2026, 10, 29),
            horaSeleccionada = LocalTime.of(11, 0),
            fechasDestacadas = setOf(LocalDate.of(2026, 10, 28)),
            horasDisponibles = emptyList(),
            tieneDisponibilidad = false,
            terapiaSeleccionada = previewTerapiaEditar,
            duracionMinutos = 60,
            monto = BigDecimal("50.00"),
            motivo = "Seguimiento mensual de ansiedad",
            modalidadSeleccionada = ModalidadCita.LLAMADA,
            hayCambios = true,
            botonHabilitado = false,
            colors = rememberPreviewEditarCitaColors(),
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onMesVisibleChange = {},
            onFechaSeleccionada = {},
            onHoraSeleccionada = {},
            onMotivoChange = {},
            onModalidadChange = {},
            onSaveClick = {},
        )
    }
}
