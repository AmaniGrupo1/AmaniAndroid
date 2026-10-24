@file:Suppress("DEPRECATION")

package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import android.content.Intent
import android.content.res.Configuration
import android.net.Uri
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
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AccessTime
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.CalendarMonth
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.Cancel
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.ChevronLeft
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.CreditCard
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.DoneAll
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.EventBusy
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.LocationOn
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.Money
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Phone
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Timer
import androidx.compose.material.icons.filled.VideoCall
import androidx.compose.material.icons.filled.Warning
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Badge
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Checkbox
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ColorScheme
import androidx.compose.material3.Divider
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuBoxScope
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
import androidx.compose.runtime.MutableState
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO
import org.ies.tierno.applicationamani.dto.citas.FranjaDisponibilidadResponse
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.dto.terapias.TerapiaResponseDTO
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.jitsi.meet.sdk.JitsiMeetActivity
import org.jitsi.meet.sdk.JitsiMeetConferenceOptions
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth
import java.time.format.DateTimeFormatter

/**
 * Pantalla de agenda del psicólogo con vista de calendario mensual.
 *
 * Muestra un [CalendarioView] interactivo con las citas del mes, días
 * bloqueados y no laborables. Permite al psicólogo crear nuevas citas,
 * editar las existentes, cancelar citas y configurar su horario de
 * disponibilidad semanal. Incluye diálogos de confirmación para las
 * acciones destructivas y un [SnackbarHost] para notificaciones.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona la agenda del psicólogo.
 * @param listarTerapiasViewModel ViewModel que gestiona las terapias disponibles.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PsicologoAgendaScreen(
    navController: NavController,
    viewModel: PsicologoAgendaViewModel,
    listarTerapiasViewModel: ListarTerapiasViewModel
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val context = LocalContext.current
    val citasRepository: org.ies.tierno.applicationamani.data.repositorio.CitasRepository = org.koin.compose.koinInject()

    val agendaMensual by viewModel.agendaMensual.collectAsStateWithLifecycle()
    val errorMessage by viewModel.errorMessage.collectAsStateWithLifecycle()
    val isLoading by viewModel.isLoading.collectAsStateWithLifecycle()
    val successMessage by viewModel.successMessage.collectAsStateWithLifecycle()
    val horarioActual by viewModel.horarioActual.collectAsStateWithLifecycle()
    val terapias by listarTerapiasViewModel.terapias.collectAsStateWithLifecycle()

    val userSession by viewModel.userSession.collectAsStateWithLifecycle()
    val idPsicologo = userSession?.idPsicologo
    val isPsicologoReady = idPsicologo != null && idPsicologo > 0L

    var fechaSeleccionada by remember { mutableStateOf<LocalDate?>(null) }
    var mesVisible by remember { mutableStateOf(YearMonth.now()) }

    val msgCargandoPsicologo = stringResource(R.string.agenda_cargando_psicologo)
    val msgSeleccionaFecha = stringResource(R.string.agenda_selecciona_fecha_calendario)
    val msgSeleccionaDia = stringResource(R.string.agenda_selecciona_dia_calendario)

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
                            snackbarHostState.showSnackbar(msgCargandoPsicologo)
                        }
                    } else {
                        scope.launch {
                            snackbarHostState.showSnackbar(msgSeleccionaFecha)
                        }
                    }
                },
                containerColor = if (isPsicologoReady) colors.primary else colors.primary.copy(alpha = 0.5f),
                contentColor = if (isPsicologoReady) colors.onPrimary else colors.onPrimary.copy(
                    alpha = 0.5f
                ),
                shape = MaterialTheme.shapes.large,
                modifier = Modifier.size(Dimensions.buttonHeightLarge)
            ) {
                Icon(
                    Icons.Default.Add,
                    contentDescription = stringResource(R.string.auto_anadir_cita),
                    modifier = Modifier.size(Dimensions.iconDefault)
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
                    .padding(horizontal = Spacing.m, vertical = Spacing.sm)
            ) {
                // Header
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(bottom = Spacing.m)
                ) {
                    Column {
                        Text(
                            text = stringResource(R.string.auto_mi_agenda),
                            style = typography.headlineLarge,
                            fontWeight = FontWeight.Bold,
                            color = colors.primary,
                            modifier = Modifier.padding(bottom = Spacing.xs)
                        )
                        Text(
                            text = stringResource(R.string.auto_gestiona_tus_citas_y),
                            style = typography.bodyMedium,
                            color = colors.onSurfaceVariant,
                        )
                    }
                }

                // Tarjetas de acciones rápidas
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(Spacing.sm)
                ) {
                    TarjetaAccionRapidaMejorada(
                        icono = Icons.Default.Schedule,
                        titulo = stringResource(R.string.agenda_accion_horario_titulo),
                        subtitulo = stringResource(R.string.agenda_accion_horario_subtitulo),
                        colorFondo = colors.primaryContainer.copy(alpha = 0.5f),
                        colorIcono = colors.primary,
                        modifier = Modifier.weight(1f),
                        onClick = { mostrarDialogoHorario = true }
                    )
                    TarjetaAccionRapidaMejorada(
                        icono = Icons.Default.EventBusy,
                        titulo = if (esDiaNoDisponible) {
                            stringResource(R.string.agenda_dia_bloqueado)
                        } else {
                            stringResource(R.string.agenda_bloquear_dia)
                        },
                        subtitulo = when {
                            fechaSeleccionada == null -> stringResource(R.string.agenda_selecciona_un_dia)
                            esDiaNoDisponible -> stringResource(R.string.agenda_habilitar_dia_subtitulo)
                            else -> stringResource(R.string.agenda_bloquear_dia_subtitulo)
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
                                    snackbarHostState.showSnackbar(msgSeleccionaDia)
                                }
                            }
                        }
                    )
                }

                Spacer(modifier = Modifier.height(Spacing.l))
                LeyendaMejorada()
                Spacer(modifier = Modifier.height(Spacing.m))

                // Calendario
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.extraLarge,
                    colors = CardDefaults.cardColors(containerColor = colors.surface),
                    elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2)
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

                Spacer(modifier = Modifier.height(Spacing.l))

                // Sección de citas del día
                AnimatedVisibility(
                    visible = fechaSeleccionada != null,
                    enter = fadeIn() + slideInVertically(),
                    exit = fadeOut() + slideOutVertically()
                ) {
                    fechaSeleccionada?.let { fecha ->
                        Card(
                            modifier = Modifier.fillMaxWidth(),
                            shape = MaterialTheme.shapes.extraLarge,
                            colors = CardDefaults.cardColors(containerColor = colors.surface),
                            elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2)
                        ) {
                            Column(modifier = Modifier.padding(Spacing.m)) {
                                CabeceraDiaMejorada(fecha, esDiaNoDisponible)
                                Spacer(modifier = Modifier.height(Spacing.m))

                                when {
                                    esDiaNoDisponible -> DiaNoDisponibleCardMejorado()
                                    citasDelDia.isNotEmpty() -> {
                                        Row(
                                            modifier = Modifier.fillMaxWidth(),
                                            horizontalArrangement = Arrangement.SpaceBetween,
                                            verticalAlignment = Alignment.CenterVertically
                                        ) {
                                            Text(
                                                text = stringResource(R.string.auto_citas_del_dia),
                                                style = typography.titleLarge,
                                                fontWeight = FontWeight.Bold
                                            )
                                            Badge(
                                                modifier = Modifier.clip(MaterialTheme.shapes.large),
                                                containerColor = colors.primary
                                            ) {
                                                Text(
                                                    text = "${citasDelDia.size}",
                                                    color = colors.onPrimary,
                                                    modifier = Modifier.padding(
                                                        horizontal = Spacing.s,
                                                        vertical = Spacing.xs
                                                    ),
                                                    fontWeight = FontWeight.Bold
                                                )
                                            }
                                        }
                                        Spacer(modifier = Modifier.height(Spacing.m))
                                        citasDelDia.forEachIndexed { index, cita ->
                                            val paciente = pacientesAsignados.find { it.idPaciente == cita.idPaciente }
                                            val telefonoPaciente = paciente?.telefono
                                            TarjetaCitaMejorada(
                                                cita = cita,
                                                pacienteTelefono = telefonoPaciente,
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
                                                }
                                            )
                                            if (index < citasDelDia.size - 1) {
                                                Spacer(modifier = Modifier.height(Spacing.sm))
                                            }
                                        }
                                    }

                                    else -> {
                                        Card(
                                            modifier = Modifier.fillMaxWidth(),
                                            shape = MaterialTheme.shapes.large,
                                            colors = CardDefaults.cardColors(
                                                containerColor = colors.primaryContainer.copy(
                                                    alpha = 0.2f
                                                )
                                            )
                                        ) {
                                            Column(
                                                modifier = Modifier
                                                    .fillMaxWidth()
                                                    .padding(Spacing.xl),
                                                horizontalAlignment = Alignment.CenterHorizontally
                                            ) {
                                                Icon(
                                                    Icons.Default.CalendarMonth,
                                                    contentDescription = null,
                                                    modifier = Modifier.size(Dimensions.iconExtraLarge),
                                                    tint = colors.primary.copy(alpha = 0.6f)
                                                )
                                                Spacer(modifier = Modifier.height(Spacing.sm))
                                                Text(
                                                    text = stringResource(R.string.auto_sin_citas_programadas),
                                                    style = typography.titleMedium,
                                                    fontWeight = FontWeight.Medium,
                                                    color = colors.onSurfaceVariant
                                                )
                                                Text(
                                                    text = stringResource(R.string.auto_este_dia_esta_disponible),
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
                Spacer(modifier = Modifier.height(Dimensions.bottomContentSpacer))
            }

            if (isLoading) {
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(colors.scrim.copy(alpha = 0.4f))
                        .clickable(enabled = false) { },
                    contentAlignment = Alignment.Center
                ) {
                    Card(
                        shape = MaterialTheme.shapes.large,
                        colors = CardDefaults.cardColors(containerColor = colors.surface),
                        modifier = Modifier.padding(Spacing.l)
                    ) {
                        Column(
                            modifier = Modifier.padding(Spacing.xl),
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            CircularProgressIndicator(
                                color = colors.primary,
                                modifier = Modifier.size(Dimensions.iconExtraLarge)
                            )
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(
                                stringResource(R.string.auto_cargando_agenda),
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
                    val fechaFormateada = fecha.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))
                    if (bloquear) {
                        viewModel.bloquearDia(fecha, motivo)
                        snackbarHostState.showSnackbar(
                            context.getString(R.string.agenda_dia_bloqueado_msg, fechaFormateada)
                        )
                    } else {
                        viewModel.quitarBloqueoDia(fecha)
                        snackbarHostState.showSnackbar(
                            context.getString(R.string.agenda_dia_habilitado_msg, fechaFormateada)
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
                            snackbarHostState.showSnackbar(
                                context.getString(R.string.agenda_error_formato, e.message.orEmpty())
                            )
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
                                val nombreCompleto = "${paciente?.nombre.orEmpty()} ${paciente?.apellido.orEmpty()}".trim()
                                snackbarHostState.showSnackbar(
                                    context.getString(
                                        R.string.agenda_cita_creada_msg,
                                        nombreCompleto,
                                        fecha.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")),
                                        hora.toString()
                                    )
                                )
                            } else {
                                snackbarHostState.showSnackbar(
                                    context.getString(R.string.agenda_error_crear_cita)
                                )
                            }
                        } catch (e: Exception) {
                            snackbarHostState.showSnackbar(
                                context.getString(R.string.agenda_error_formato, e.message.orEmpty())
                            )
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
                    snackbarHostState.showSnackbar(
                        context.getString(R.string.agenda_cita_cancelada_msg)
                    )
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
        modifier = modifier.clickable { onClick() },
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(containerColor = colorFondo),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1)
    ) {
        Column(
            modifier = Modifier.padding(Spacing.m),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Box(
                modifier = Modifier
                    .size(Dimensions.avatarMedium)
                    .background(colorIcono.copy(alpha = 0.15f), MaterialTheme.shapes.medium),
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    imageVector = icono,
                    contentDescription = titulo,
                    tint = colorIcono,
                    modifier = Modifier.size(Dimensions.iconDefault)
                )
            }
            Spacer(modifier = Modifier.height(Spacing.s))
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
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.3f))
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(Spacing.sm),
            horizontalArrangement = Arrangement.SpaceEvenly
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Box(
                    modifier = Modifier
                        .size(Dimensions.iconSmall)
                        .clip(MaterialTheme.shapes.extraSmall)
                        .background(colors.primary)
                )
                Spacer(modifier = Modifier.width(Spacing.s))
                Text(
                    stringResource(R.string.auto_seleccionado),
                    style = MaterialTheme.typography.labelSmall,
                    color = colors.onSurfaceVariant
                )
            }
            Row(verticalAlignment = Alignment.CenterVertically) {
                Box(
                    modifier = Modifier
                        .size(Dimensions.iconSmall)
                        .clip(MaterialTheme.shapes.extraSmall)
                        .background(colors.tertiary)
                )
                Spacer(modifier = Modifier.width(Spacing.s))
                Text(
                    stringResource(R.string.auto_con_citas),
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
    val formatterFecha = DateTimeFormatter.ofPattern(
        "EEEE, d 'de' MMMM",
        java.util.Locale.Builder().setLanguage("es").setRegion("ES").build()
    )
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.large,
        color = if (esDiaNoDisponible) colors.errorContainer.copy(alpha = 0.3f) else colors.primaryContainer.copy(
            alpha = 0.3f
        )
    ) {
        Row(modifier = Modifier.padding(Spacing.m), verticalAlignment = Alignment.CenterVertically) {
            Icon(
                imageVector = if (esDiaNoDisponible) Icons.Default.EventBusy else Icons.Default.CalendarToday,
                contentDescription = null,
                tint = if (esDiaNoDisponible) colors.error else colors.primary,
                modifier = Modifier.size(Dimensions.iconLarge)
            )
            Spacer(modifier = Modifier.width(Spacing.m))
            Column {
                Text(
                    text = fecha.format(formatterFecha).replaceFirstChar { it.uppercase() },
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = if (esDiaNoDisponible) colors.error else colors.onSurface
                )
                if (esDiaNoDisponible) {
                    Text(
                        stringResource(R.string.auto__dia_no_disponible),
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.error
                    )
                } else {
                    Text(
                        stringResource(R.string.auto_horario_disponible_segun_configuracion),
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
    cita: AgendaItemDTO,
    pacienteTelefono: String?,
    onEdit: () -> Unit,
    onCancel: () -> Unit,
    onChangeEstado: (EstadoCita) -> Unit
) {
    val context = LocalContext.current
    val colors = MaterialTheme.colorScheme
    val extraColors = AmaniTheme.colors
    val scope = rememberCoroutineScope()
    val citasRepository: org.ies.tierno.applicationamani.data.repositorio.CitasRepository = org.koin.compose.koinInject()
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")
    var menuExpanded by remember { mutableStateOf(false) }
    var isUpdating by remember { mutableStateOf(false) }

    val estadosDisponibles = listOf(
        EstadoCita.PENDIENTE to stringResource(R.string.agenda_estado_pendiente),
        EstadoCita.CONFIRMADA to stringResource(R.string.agenda_estado_confirmada),
        EstadoCita.COMPLETADA to stringResource(R.string.agenda_estado_completada),
        EstadoCita.CANCELADA to stringResource(R.string.agenda_estado_cancelada)
    )

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(containerColor = colors.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1)
    ) {
        Column(modifier = Modifier.padding(Spacing.m)) {
            // Cabecera: Icono + Nombre del paciente
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.weight(1f)) {
                    Box(
                        modifier = Modifier
                            .size(Dimensions.avatarSmall)
                            .background(colors.primary.copy(alpha = 0.15f), MaterialTheme.shapes.medium),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(
                            Icons.Default.Person,
                            contentDescription = null,
                            tint = colors.primary,
                            modifier = Modifier.size(Dimensions.iconMedium)
                        )
                    }
                    Spacer(modifier = Modifier.width(Spacing.sm))
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(Spacing.s)
                    ) {
                        Text(
                            cita.nombrePaciente ?: stringResource(R.string.auto_paciente),
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold
                        )
                        if (!pacienteTelefono.isNullOrBlank()) {
                            IconButton(
                                onClick = {
                                    val intent = Intent(Intent.ACTION_DIAL).apply {
                                        data = Uri.parse("tel:$pacienteTelefono")
                                    }
                                    context.startActivity(intent)
                                },
                                modifier = Modifier.size(Dimensions.iconLarge)
                            ) {
                                Icon(
                                    Icons.Default.Phone,
                                    contentDescription = stringResource(R.string.agenda_llamar_paciente),
                                    tint = colors.primary,
                                    modifier = Modifier.size(Dimensions.iconButton)
                                )
                            }
                        }
                    }
                }

                // Indicador visual del estado actual
                Surface(
                    shape = MaterialTheme.shapes.medium,
                    color = when (cita.estado?.uppercase()) {
                        "CONFIRMADA" -> colors.primary.copy(alpha = 0.15f)
                        "CANCELADA" -> colors.error.copy(alpha = 0.15f)
                        "COMPLETADA" -> extraColors.success.copy(alpha = 0.15f)
                        else -> colors.tertiary.copy(alpha = 0.15f)
                    },
                    modifier = Modifier.size(Dimensions.iconLarge)
                ) {
                    Box(contentAlignment = Alignment.Center) {
                        if (isUpdating) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(Dimensions.iconMedium),
                                strokeWidth = Dimensions.borderMedium,
                                color = when (cita.estado?.uppercase()) {
                                    "CONFIRMADA" -> colors.primary
                                    "CANCELADA" -> colors.error
                                    "COMPLETADA" -> extraColors.success
                                    else -> colors.tertiary
                                }
                            )
                        } else {
                            IconButton(
                                onClick = { menuExpanded = true },
                                modifier = Modifier.size(Dimensions.iconLarge)
                            ) {
                                Icon(
                                    when (cita.estado?.uppercase()) {
                                        "CONFIRMADA" -> Icons.Default.CheckCircle
                                        "CANCELADA" -> Icons.Default.Cancel
                                        "COMPLETADA" -> Icons.Default.DoneAll
                                        else -> Icons.Default.Schedule
                                    },
                                    contentDescription = stringResource(R.string.auto_cambiar_estado),
                                    modifier = Modifier.size(Dimensions.iconMedium),
                                    tint = when (cita.estado?.uppercase()) {
                                        "CONFIRMADA" -> colors.primary
                                        "CANCELADA" -> colors.error
                                        "COMPLETADA" -> extraColors.success
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
                                            EstadoCita.CONFIRMADA -> Icons.Default.CheckCircle
                                            EstadoCita.CANCELADA -> Icons.Default.Cancel
                                            EstadoCita.COMPLETADA -> Icons.Default.DoneAll
                                            else -> Icons.Default.Schedule
                                        },
                                        contentDescription = null,
                                        modifier = Modifier.size(Dimensions.iconButton),
                                        tint = when (estado) {
                                            EstadoCita.CONFIRMADA -> colors.primary
                                            EstadoCita.CANCELADA -> colors.error
                                            EstadoCita.COMPLETADA -> extraColors.success
                                            else -> colors.tertiary
                                        }
                                    )
                                    Spacer(modifier = Modifier.width(Spacing.s))
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

            Spacer(modifier = Modifier.height(Spacing.sm))

            // Horario
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Icon(
                    Icons.Default.AccessTime,
                    contentDescription = null,
                    modifier = Modifier.size(Dimensions.iconButton),
                    tint = colors.onSurfaceVariant
                )
                Spacer(modifier = Modifier.width(Spacing.s))
                Text(
                    "${cita.horaInicio.format(formatterHora)} - ${cita.horaFin.format(formatterHora)}",
                    style = MaterialTheme.typography.bodyMedium,
                    color = colors.onSurfaceVariant
                )
            }

            // Duración de la terapia
            Spacer(modifier = Modifier.height(Spacing.xs))
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Icon(
                    Icons.Default.Timer,
                    contentDescription = null,
                    modifier = Modifier.size(Dimensions.iconSmall),
                    tint = colors.primary
                )
                Spacer(modifier = Modifier.width(Spacing.s))
                Text(
                    stringResource(R.string.agenda_duracion_min_formato, cita.duracionMinutos ?: 60),
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.primary,
                    fontWeight = FontWeight.Medium
                )
            }

            // Modalidad de la cita
            Spacer(modifier = Modifier.height(Spacing.xs))
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(Spacing.s)
            ) {
                Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.weight(1f)) {
                    Icon(
                        when (cita.modalidad) {
                            ModalidadCita.PRESENCIAL -> Icons.Default.LocationOn
                            ModalidadCita.LLAMADA -> Icons.Default.Phone
                        },
                        contentDescription = null,
                        modifier = Modifier.size(Dimensions.iconSmall),
                        tint = colors.primary
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(
                        text = when (cita.modalidad) {
                            ModalidadCita.PRESENCIAL -> stringResource(R.string.auto_presencial)
                            ModalidadCita.LLAMADA -> stringResource(R.string.auto_llamada)
                        },
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.primary,
                        fontWeight = FontWeight.Medium
                    )
                }

                if (cita.modalidad == ModalidadCita.LLAMADA) {
                    IconButton(
                        onClick = {
                            val roomName = "AmaniSession_${cita.id}"
                            scope.launch(kotlinx.coroutines.Dispatchers.IO) {
                                try {
                                    val result = citasRepository.getJitsiToken(roomName)
                                    if (result.isFailure) {
                                        kotlinx.coroutines.withContext(kotlinx.coroutines.Dispatchers.Main) {
                                            android.widget.Toast.makeText(
                                                context,
                                                "Fallo al obtener token: ${result.exceptionOrNull()?.message}",
                                                android.widget.Toast.LENGTH_LONG
                                            ).show()
                                        }
                                        return@launch
                                    }
                                    val jwtToken = result.getOrNull()
                                    kotlinx.coroutines.withContext(kotlinx.coroutines.Dispatchers.Main) {
                                        val options = JitsiMeetConferenceOptions.Builder()
                                            .setServerURL(java.net.URL("https://jitsi.amanipsicologia.org/"))
                                            .setRoom(roomName)
                                            .setFeatureFlag("welcomepage.enabled", false)
                                            .setFeatureFlag("prejoinpage.enabled", false)
                                            .setFeatureFlag("invite.enabled", false)
                                            .apply {
                                                if (!jwtToken.isNullOrEmpty()) {
                                                    setToken(jwtToken)
                                                }
                                            }
                                            .build()
                                        JitsiMeetActivity.launch(context, options)
                                    }
                                } catch (e: Exception) {
                                    kotlinx.coroutines.withContext(kotlinx.coroutines.Dispatchers.Main) {
                                        android.widget.Toast.makeText(
                                            context,
                                            "Error al iniciar videollamada: ${e.message}",
                                            android.widget.Toast.LENGTH_SHORT
                                        ).show()
                                    }
                                }
                            }
                        },
                        modifier = Modifier.size(Dimensions.iconLarge)
                    ) {
                        Icon(
                            Icons.Default.VideoCall,
                            contentDescription = stringResource(R.string.agenda_iniciar_videollamada),
                            tint = colors.primary,
                            modifier = Modifier.size(Dimensions.iconDefault)
                        )
                    }
                }
            }

            // Método de pago
            Spacer(modifier = Modifier.height(Spacing.xs))
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Icon(
                    when (cita.metodoPago) {
                        MetodoPago.EFECTIVO -> Icons.Default.Money
                        MetodoPago.TARJETA -> Icons.Default.CreditCard
                        else -> Icons.Default.Info
                    },
                    contentDescription = null,
                    modifier = Modifier.size(Dimensions.iconSmall),
                    tint = colors.primary
                )
                Spacer(modifier = Modifier.width(Spacing.s))
                Text(
                    text = when (cita.metodoPago) {
                        MetodoPago.EFECTIVO -> stringResource(R.string.agenda_pago_efectivo)
                        MetodoPago.TARJETA -> stringResource(R.string.agenda_pago_tarjeta)
                        else -> stringResource(R.string.agenda_metodo_pago_no_especificado)
                    },
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.primary,
                    fontWeight = FontWeight.Medium
                )
            }

            // Motivo
            if (!cita.motivo.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(Spacing.s))
                Row(verticalAlignment = Alignment.Top, modifier = Modifier.fillMaxWidth()) {
                    Icon(
                        Icons.Default.Description,
                        contentDescription = null,
                        modifier = Modifier.size(Dimensions.iconButton),
                        tint = colors.onSurfaceVariant
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(
                        cita.motivo,
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.onSurfaceVariant,
                        modifier = Modifier.weight(1f)
                    )
                }
            }

            // Tipo de terapia
            Spacer(modifier = Modifier.height(Spacing.s))
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Icon(
                    Icons.Default.MedicalServices,
                    contentDescription = null,
                    modifier = Modifier.size(Dimensions.iconButton),
                    tint = colors.primary
                )
                Spacer(modifier = Modifier.width(Spacing.s))
                Text(
                    cita.terapia?.nombre ?: stringResource(R.string.agenda_terapia_no_especificada),
                    style = MaterialTheme.typography.bodyMedium,
                    color = colors.primary,
                    fontWeight = FontWeight.Medium
                )
            }

            // Estado de Pago
            Spacer(modifier = Modifier.height(Spacing.s))
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
                    modifier = Modifier.size(Dimensions.iconButton),
                    tint = when (cita.estadoPago) {
                        EstadoPago.PAGADO -> extraColors.success
                        EstadoPago.PENDIENTE -> extraColors.warning
                        EstadoPago.FALLIDO -> colors.error
                        EstadoPago.REEMBOLSADO -> colors.primary
                        null -> colors.onSurfaceVariant
                    }
                )
                Spacer(modifier = Modifier.width(Spacing.s))
                Text(
                    text = when (cita.estadoPago) {
                        EstadoPago.PAGADO -> stringResource(R.string.agenda_pago_estado_pagado)
                        EstadoPago.PENDIENTE -> stringResource(R.string.agenda_pago_estado_pendiente)
                        EstadoPago.FALLIDO -> stringResource(R.string.agenda_pago_estado_fallido)
                        EstadoPago.REEMBOLSADO -> stringResource(R.string.agenda_pago_estado_reembolsado)
                        null -> stringResource(R.string.agenda_sin_informacion)
                    },
                    style = MaterialTheme.typography.bodySmall,
                    color = when (cita.estadoPago) {
                        EstadoPago.PAGADO -> extraColors.success
                        EstadoPago.PENDIENTE -> extraColors.warning
                        EstadoPago.FALLIDO -> colors.error
                        EstadoPago.REEMBOLSADO -> colors.primary
                        null -> colors.onSurfaceVariant
                    }
                )
            }

            Spacer(modifier = Modifier.height(Spacing.sm))
            Divider(color = colors.outline.copy(alpha = 0.3f))
            Spacer(modifier = Modifier.height(Spacing.sm))

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
                    Icon(Icons.Default.Edit, contentDescription = null, modifier = Modifier.size(Dimensions.iconButton))
                    Spacer(modifier = Modifier.width(Spacing.xs))
                    Text(stringResource(R.string.auto_editar), style = MaterialTheme.typography.labelMedium)
                }
                Spacer(modifier = Modifier.width(Spacing.s))
                TextButton(
                    onClick = onCancel,
                    colors = ButtonDefaults.textButtonColors(contentColor = colors.error),
                    enabled = !isUpdating
                ) {
                    Icon(Icons.Default.Cancel, contentDescription = null, modifier = Modifier.size(Dimensions.iconButton))
                    Spacer(modifier = Modifier.width(Spacing.xs))
                    Text(stringResource(R.string.auto_cancelar), style = MaterialTheme.typography.labelMedium)
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
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(containerColor = colors.errorContainer.copy(alpha = 0.2f))
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(Spacing.xl),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Box(
                modifier = Modifier
                    .size(Dimensions.iconHero)
                    .background(colors.error.copy(alpha = 0.15f), MaterialTheme.shapes.large),
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    Icons.Default.EventBusy,
                    contentDescription = null,
                    modifier = Modifier.size(Dimensions.iconLarge),
                    tint = colors.error
                )
            }
            Spacer(modifier = Modifier.height(Spacing.m))
            Text(
                stringResource(R.string.auto_dia_no_disponible),
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold,
                color = colors.error
            )
            Text(
                stringResource(R.string.auto_no_se_pueden_agendar),
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
        stringResource(R.string.dia_lunes) to 0,
        stringResource(R.string.dia_martes) to 1,
        stringResource(R.string.dia_miercoles) to 2,
        stringResource(R.string.dia_jueves) to 3,
        stringResource(R.string.dia_viernes) to 4,
        stringResource(R.string.dia_sabado) to 5,
        stringResource(R.string.dia_domingo) to 6
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
        shape = MaterialTheme.shapes.extraLarge,
        title = {
            Column {
                Text(
                    stringResource(R.string.auto__configurar_horario),
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                    color = colors.primary
                )
                Text(
                    stringResource(R.string.auto_define_tus_dias_y),
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.onSurfaceVariant
                )
            }
        },
        text = {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = Dimensions.dialogMaxHeight)
                    .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(Spacing.sm)
            ) {
                franjasEditables.forEachIndexed { index, state ->
                    val franja = state.value
                    val diaNombre = diasSemana[index].first

                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = MaterialTheme.shapes.large,
                        colors = CardDefaults.cardColors(
                            containerColor = if (franja.activo) colors.primaryContainer.copy(alpha = 0.15f) else colors.surfaceVariant.copy(
                                alpha = 0.3f
                            )
                        )
                    ) {
                        Column(modifier = Modifier.padding(Spacing.m)) {
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
                                    Spacer(modifier = Modifier.height(Spacing.sm))
                                    Divider()
                                    Spacer(modifier = Modifier.height(Spacing.sm))
                                    Row(
                                        modifier = Modifier.fillMaxWidth(),
                                        horizontalArrangement = Arrangement.spacedBy(Spacing.sm)
                                    ) {
                                        Column(modifier = Modifier.weight(1f)) {
                                            Text(stringResource(R.string.auto_hora_inicio))
                                            HoraSelector(horaActual = franja.horaInicio) { nueva ->
                                                state.value = franja.copy(horaInicio = nueva)
                                            }
                                        }
                                        Column(modifier = Modifier.weight(1f)) {
                                            Text(stringResource(R.string.auto_hora_fin))
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
                                            stringResource(R.string.auto__la_hora_de),
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
                Text(stringResource(R.string.auto__guardar_horario))
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) { Text(stringResource(R.string.auto_cancelar)) }
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
    val formatterFecha = DateTimeFormatter.ofPattern(
        "EEEE, d 'de' MMMM",
        java.util.Locale.Builder().setLanguage("es").setRegion("ES").build()
    )
    var motivoBloqueo by remember { mutableStateOf("") }

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colors.surface,
        shape = MaterialTheme.shapes.extraLarge,
        title = {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(
                    if (yaNoDisponible) Icons.Default.CheckCircle else Icons.Default.Warning,
                    contentDescription = null,
                    tint = if (yaNoDisponible) colors.primary else colors.error
                )
                Spacer(modifier = Modifier.width(Spacing.sm))
                Text(
                    if (yaNoDisponible) {
                        stringResource(R.string.agenda_habilitar_dia)
                    } else {
                        stringResource(R.string.agenda_bloquear_dia)
                    },
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold
                )
            }
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(Spacing.sm)) {
                Text(
                    fecha.format(formatterFecha).replaceFirstChar { it.uppercase() },
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.primary
                )
                if (yaNoDisponible) {
                    Text(
                        stringResource(R.string.auto_deseas_habilitar_este_dia),
                        style = MaterialTheme.typography.bodyMedium
                    )
                } else {
                    Text(
                        stringResource(R.string.auto_deseas_bloquear_este_dia),
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Spacer(modifier = Modifier.height(Spacing.s))
                    OutlinedTextField(
                        value = motivoBloqueo,
                        onValueChange = { motivoBloqueo = it },
                        label = { Text(stringResource(R.string.auto_motivo_opcional)) },
                        placeholder = { Text(stringResource(R.string.auto_ej_formacion_vacaciones_etc)) },
                        modifier = Modifier.fillMaxWidth(),
                        shape = MaterialTheme.shapes.medium,
                        minLines = 2,
                        maxLines = 3
                    )
                }
                if (!yaNoDisponible) {
                    Card(
                        shape = MaterialTheme.shapes.medium,
                        colors = CardDefaults.cardColors(
                            containerColor = colors.surfaceContainerLow.copy(alpha = 0.3f)
                        )
                    ) {
                        Row(
                            modifier = Modifier.padding(Spacing.sm),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Icon(
                                Icons.Default.Info,
                                contentDescription = null,
                                tint = colors.onSurfaceVariant,
                                modifier = Modifier.size(Dimensions.iconMedium)
                            )
                            Spacer(modifier = Modifier.width(Spacing.s))
                            Text(
                                stringResource(R.string.auto_las_citas_existentes_no),
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
                shape = MaterialTheme.shapes.medium,
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(
                    if (yaNoDisponible) {
                        stringResource(R.string.agenda_habilitar_dia)
                    } else {
                        stringResource(R.string.agenda_bloquear_dia)
                    },
                    modifier = Modifier.padding(vertical = Spacing.xs)
                )
            }
        },
        dismissButton = {
            TextButton(
                onClick = { motivoBloqueo = ""; onDismiss() },
                shape = MaterialTheme.shapes.medium
            ) { Text(stringResource(R.string.auto_cancelar)) }
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
        if (esEdicion) {
            val horaEdicion = citaAEditar.horaInicio
            if (horaEdicion !in libres) (listOf(horaEdicion) + libres).distinct()
                .sorted() else libres
        } else libres
    }

    var horaSeleccionada by remember { mutableStateOf(if (esEdicion) citaAEditar.horaInicio else horasDisponibles.firstOrNull()) }
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
        shape = MaterialTheme.shapes.extraLarge,
        title = {
            Column {
                Text(
                    if (esEdicion) {
                        stringResource(R.string.agenda_editar_cita_titulo)
                    } else {
                        stringResource(R.string.agenda_nueva_cita_titulo)
                    },
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                    color = colors.primary
                )
                Text(
                    if (esEdicion) {
                        stringResource(R.string.agenda_editar_cita_subtitulo)
                    } else {
                        stringResource(R.string.agenda_nueva_cita_subtitulo)
                    },
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.onSurfaceVariant
                )
            }
        },
        text = {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = Dimensions.dialogMaxHeight)
                    .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(Spacing.m)
            ) {
                // Paciente
                CampoSeleccionConIcono(
                    label = stringResource(R.string.auto_paciente),
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
                                        contentDescription = null,
                                        tint = colors.error
                                    )
                                    Spacer(modifier = Modifier.width(Spacing.s))
                                    Column {
                                        Text(
                                            stringResource(R.string.auto_error_al_cargar_pacientes),
                                            color = colors.error
                                        )
                                        Text(
                                            pacientesError,
                                            style = MaterialTheme.typography.bodySmall
                                        )
                                    }
                                }
                            },
                            onClick = { onRecargarPacientes() },
                            leadingIcon = { Icon(Icons.Default.Refresh, contentDescription = null) }
                        )

                        pacientes.isEmpty() -> DropdownMenuItem(
                            text = { Text(stringResource(R.string.auto_no_hay_pacientes_asignados)) },
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

                // Terapia
                CampoSeleccionConIcono(
                    label = stringResource(R.string.auto_tipo_de_terapia),
                    icono = Icons.Default.MedicalServices,
                    valor = terapiaSeleccionada?.nombre ?: "",
                    expanded = terapiaDropdownExpanded,
                    onExpandedChange = { terapiaDropdownExpanded = it },
                    error = terapias.isEmpty()
                ) {
                    if (terapias.isEmpty()) DropdownMenuItem(
                        text = { Text(stringResource(R.string.auto_no_hay_tipos_de)) },
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
                                    )
                                    Text(
                                        stringResource(
                                            R.string.agenda_terapia_duracion_precio_formato,
                                            terapia.duracionMinutos,
                                            terapia.precio.toString()
                                        ),
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

                // Fecha
                CampoFecha(fechaSeleccionada, onFechaChange, colors, formatterFecha)

                // Hora
                CampoSeleccionConIcono(
                    label = stringResource(R.string.auto_hora_de_inicio),
                    icono = Icons.Default.Schedule,
                    valor = horaSeleccionada?.format(formatterHora)
                        ?: stringResource(R.string.agenda_sin_horarios_disponibles),
                    expanded = horaDropdownExpanded,
                    onExpandedChange = { horaDropdownExpanded = it },
                    error = horasDisponibles.isEmpty() && !esEdicion
                ) {
                    if (horasDisponibles.isEmpty() && !esEdicion) {
                        DropdownMenuItem(text = {
                            Column {
                                Text(
                                    stringResource(R.string.auto__no_hay_horarios),
                                    color = colors.error
                                )
                                Text(
                                    stringResource(R.string.auto_prueba_con_otra_fecha),
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
                                            contentDescription = null,
                                            modifier = Modifier.size(Dimensions.iconButton),
                                            tint = colors.primary
                                        )
                                        Spacer(modifier = Modifier.width(Spacing.s))
                                        Column {
                                            Text(
                                                hora.format(formatterHora),
                                                fontWeight = FontWeight.Medium
                                            )
                                            Text(
                                                stringResource(
                                                    R.string.agenda_duracion_min_formato,
                                                    duracionMinutos
                                                ),
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
                    shape = MaterialTheme.shapes.large,
                    colors = CardDefaults.cardColors(
                        containerColor = colors.primaryContainer.copy(alpha = 0.2f)
                    )
                ) {
                    Row(
                        modifier = Modifier.padding(Spacing.m),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Column {
                            Text(
                                if (terapiaSeleccionada != null) {
                                    stringResource(R.string.agenda_duracion_terapia)
                                } else {
                                    stringResource(R.string.agenda_duracion)
                                },
                                style = MaterialTheme.typography.labelSmall,
                                color = colors.primary
                            )
                            Text(
                                stringResource(
                                    R.string.agenda_duracion_minutos_formato,
                                    duracionMinutos
                                ),
                                style = MaterialTheme.typography.titleMedium,
                                fontWeight = FontWeight.Bold
                            )
                        }
                        Icon(
                            Icons.Default.Timer,
                            contentDescription = null,
                            tint = colors.primary,
                            modifier = Modifier.size(Dimensions.iconDefault)
                        )
                    }
                }

                // Motivo
                OutlinedTextField(
                    value = motivo,
                    onValueChange = { motivo = it },
                    label = { Text(stringResource(R.string.auto_motivo_de_la_cita)) },
                    modifier = Modifier.fillMaxWidth(),
                    minLines = 2,
                    maxLines = 3,
                    shape = MaterialTheme.shapes.large
                )

                // Modalidad
                Text(
                    stringResource(R.string.auto_modalidad_de_la_cita),
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.onSurface
                )
                Spacer(modifier = Modifier.height(Spacing.xs))
                ExposedDropdownMenuBox(
                    expanded = modalidadDropdownExpanded,
                    onExpandedChange = { modalidadDropdownExpanded = it }) {
                    OutlinedTextField(
                        value = when (modalidadSeleccionada) {
                            ModalidadCita.PRESENCIAL -> stringResource(R.string.auto_presencial)
                            ModalidadCita.LLAMADA -> stringResource(R.string.auto_llamada)
                        },
                        onValueChange = {},
                        readOnly = true,
                        leadingIcon = {
                            Icon(
                                if (modalidadSeleccionada == ModalidadCita.PRESENCIAL) Icons.Default.LocationOn else Icons.Default.Phone,
                                contentDescription = stringResource(R.string.auto_modalidad)
                            )
                        },
                        trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = modalidadDropdownExpanded) },
                        modifier = Modifier
                            .fillMaxWidth()
                            .menuAnchor(),
                        shape = MaterialTheme.shapes.medium
                    )
                    ExposedDropdownMenu(
                        expanded = modalidadDropdownExpanded,
                        onDismissRequest = { modalidadDropdownExpanded = false }) {
                        DropdownMenuItem(
                            text = {
                                Row {
                                    Icon(
                                        Icons.Default.LocationOn,
                                        contentDescription = null,
                                        modifier = Modifier.size(Dimensions.iconMedium)
                                    )
                                    Spacer(modifier = Modifier.width(Spacing.s))
                                    Text(stringResource(R.string.auto_presencial))
                                }
                            },
                            onClick = {
                                modalidadSeleccionada = ModalidadCita.PRESENCIAL
                                modalidadDropdownExpanded = false
                            })
                        DropdownMenuItem(
                            text = {
                                Row {
                                    Icon(
                                        Icons.Default.Phone,
                                        contentDescription = null,
                                        modifier = Modifier.size(Dimensions.iconMedium)
                                    )
                                    Spacer(modifier = Modifier.width(Spacing.s))
                                    Text(stringResource(R.string.auto_llamada))
                                }
                            },
                            onClick = {
                                modalidadSeleccionada = ModalidadCita.LLAMADA
                                modalidadDropdownExpanded = false
                            })
                    }
                }

                // Información de pago
                Text(
                    stringResource(R.string.auto_informacion_de_pago),
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.onSurface
                )
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.large,
                    colors = CardDefaults.cardColors(
                        containerColor = colors.surfaceVariant.copy(alpha = 0.3f)
                    )
                ) {
                    Column(modifier = Modifier.padding(Spacing.m)) {
                        Text(
                            stringResource(R.string.auto_metodo_de_pago),
                            style = MaterialTheme.typography.labelSmall,
                            color = colors.onSurfaceVariant
                        )
                        Spacer(modifier = Modifier.height(Spacing.s))
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(Spacing.l)
                        ) {
                            Row(
                                modifier = Modifier.weight(1f),
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.EFECTIVO,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.EFECTIVO })
                                Text(stringResource(R.string.auto_efectivo))
                            }
                            Row(
                                modifier = Modifier.weight(1f),
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                RadioButton(
                                    selected = metodoPagoSeleccionado == MetodoPago.TARJETA,
                                    onClick = { metodoPagoSeleccionado = MetodoPago.TARJETA })
                                Text(stringResource(R.string.auto_tarjeta))
                            }
                        }

                        Spacer(modifier = Modifier.height(Spacing.sm))
                        Text(
                            stringResource(R.string.auto_estado_del_pago),
                            style = MaterialTheme.typography.labelSmall,
                            color = colors.onSurfaceVariant
                        )
                        Spacer(modifier = Modifier.height(Spacing.s))

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
                                shape = MaterialTheme.shapes.medium
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
                                                        "PAGADO" -> Icons.Default.CheckCircle
                                                        "PENDIENTE" -> Icons.Default.Schedule
                                                        "FALLIDO" -> Icons.Default.Error
                                                        else -> Icons.Default.Info
                                                    },
                                                    contentDescription = null,
                                                    modifier = Modifier.size(Dimensions.iconButton)
                                                )
                                                Spacer(modifier = Modifier.width(Spacing.s))
                                                Text(opcion)
                                            }
                                        },
                                        onClick = {
                                            estadoPagoSeleccionado = EstadoPago.valueOf(opcion)
                                            estadoPagoExpanded = false
                                        }
                                    )
                                }
                            }
                        }

                        Spacer(modifier = Modifier.height(Spacing.sm))
                        OutlinedTextField(
                            value = monto,
                            onValueChange = { monto = it; montoError = !validarMonto(it) },
                            label = { Text(stringResource(R.string.auto_monto_)) },
                            placeholder = { Text(stringResource(R.string.auto_ej_5000)) },
                            isError = montoError,
                            supportingText = {
                                if (montoError) {
                                    Text(stringResource(R.string.auto_ingresa_un_monto_valido))
                                } else if (terapiaSeleccionada != null && monto.isNotBlank()) {
                                    Text(
                                        stringResource(
                                            R.string.agenda_precio_sugerido_formato,
                                            terapiaSeleccionada!!.precio.toString()
                                        ),
                                        style = MaterialTheme.typography.bodySmall,
                                        color = colors.primary
                                    )
                                }
                            },
                            leadingIcon = { Text(stringResource(R.string.auto_euro_symbol)) },
                            singleLine = true,
                            shape = MaterialTheme.shapes.medium,
                            modifier = Modifier.fillMaxWidth()
                        )
                        Spacer(modifier = Modifier.height(Spacing.xs))
                        Text(
                            when (metodoPagoSeleccionado) {
                                MetodoPago.TARJETA -> stringResource(R.string.agenda_info_pago_tarjeta)
                                MetodoPago.EFECTIVO -> stringResource(R.string.agenda_info_pago_efectivo)
                                else -> stringResource(R.string.agenda_metodo_pago_no_especificado)
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
                shape = MaterialTheme.shapes.medium,
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(
                    if (esEdicion) {
                        stringResource(R.string.agenda_guardar_cambios)
                    } else {
                        stringResource(R.string.agenda_crear_cita)
                    },
                    modifier = Modifier.padding(vertical = Spacing.xs)
                )
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss, shape = MaterialTheme.shapes.medium) {
                Text(stringResource(R.string.auto_cancelar))
            }
        }
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CampoSeleccionConIcono(
    label: String,
    icono: ImageVector,
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
            fontWeight = FontWeight.SemiBold,
            color = colors.onSurface
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
                        modifier = Modifier.size(Dimensions.iconMedium)
                    )
                },
                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded) },
                modifier = Modifier
                    .fillMaxWidth()
                    .menuAnchor(MenuAnchorType.PrimaryNotEditable, true),
                singleLine = true,
                shape = MaterialTheme.shapes.medium,
                isError = error,
                colors = OutlinedTextFieldDefaults.colors(
                    focusedBorderColor = colors.primary,
                    unfocusedBorderColor = colors.outline
                )
            )
            ExposedDropdownMenu(
                expanded = expanded,
                onDismissRequest = { onExpandedChange(false) },
                modifier = Modifier.heightIn(max = Dimensions.dropdownMaxHeight)
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
            stringResource(R.string.auto_fecha),
            style = MaterialTheme.typography.labelMedium,
            fontWeight = FontWeight.SemiBold,
            color = colors.onSurface
        )
        Spacer(modifier = Modifier.height(Spacing.xs))
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.medium,
            colors = CardDefaults.cardColors(containerColor = colors.surfaceVariant.copy(alpha = 0.3f))
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(Spacing.sm),
                horizontalArrangement = Arrangement.SpaceEvenly,
                verticalAlignment = Alignment.CenterVertically
            ) {
                IconButton(onClick = { onFechaChange(fechaSeleccionada.minusDays(1)) }) {
                    Icon(
                        Icons.Default.ChevronLeft,
                        contentDescription = stringResource(R.string.auto_dia_anterior)
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
                                java.util.Locale.Builder().setLanguage("es").setRegion("ES").build()
                            )
                        ).replaceFirstChar { it.uppercase() },
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.onSurfaceVariant
                    )
                }
                IconButton(onClick = { onFechaChange(fechaSeleccionada.plusDays(1)) }) {
                    Icon(
                        Icons.Default.ChevronRight,
                        contentDescription = stringResource(R.string.auto_dia_siguiente)
                    )
                }
            }
        }
    }
}

// ==================== DIÁLOGO CONFIRMAR CANCELACIÓN ====================

/**
 * Diálogo de confirmación mejorado para cancelar una cita desde la agenda del psicólogo.
 *
 * Muestra los detalles de la cita (paciente, fecha, hora, motivo) y
 * advierte que la acción es irreversible.
 *
 * @param cita Datos de la cita a cancelar.
 * @param onConfirmar Callback invocado al confirmar la cancelación.
 * @param onDismiss Callback invocado al cerrar el diálogo sin cancelar.
 */
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
        shape = MaterialTheme.shapes.extraLarge,
        title = {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(
                    Icons.Default.Warning,
                    contentDescription = null,
                    tint = colors.error,
                    modifier = Modifier.size(Dimensions.iconDefault)
                )
                Spacer(modifier = Modifier.width(Spacing.sm))
                Text(
                    stringResource(R.string.auto_cancelar_cita_1),
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold
                )
            }
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(Spacing.sm)) {
                Text(stringResource(R.string.auto_estas_seguro_de_que_2))
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.large,
                    colors = CardDefaults.cardColors(
                        containerColor = colors.errorContainer.copy(alpha = 0.2f)
                    )
                ) {
                    Column(modifier = Modifier.padding(Spacing.m)) {
                        Text(
                            cita.nombrePaciente ?: stringResource(R.string.auto_paciente),
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
                            Spacer(modifier = Modifier.height(Spacing.s))
                            Text(
                                cita.motivo,
                                style = MaterialTheme.typography.bodySmall,
                                color = colors.onSurfaceVariant
                            )
                        }
                    }
                }
                Text(
                    stringResource(R.string.auto__esta_accion_no),
                    style = MaterialTheme.typography.bodySmall,
                    color = colors.error
                )
            }
        },
        confirmButton = {
            Button(
                onClick = onConfirmar,
                colors = ButtonDefaults.buttonColors(containerColor = colors.error),
                shape = MaterialTheme.shapes.medium,
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(
                    stringResource(R.string.auto__cancelar_cita),
                    modifier = Modifier.padding(vertical = Spacing.xs)
                )
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss, shape = MaterialTheme.shapes.medium) {
                Text(stringResource(R.string.auto_volver))
            }
        }
    )
}

@RequiresApi(Build.VERSION_CODES.O)
@Preview(name = "PsicologoAgenda - Light", showBackground = true)
@Preview(
    name = "PsicologoAgenda - Dark",
    uiMode = Configuration.UI_MODE_NIGHT_YES,
    showBackground = true
)
@Preview(name = "PsicologoAgenda - Font 1.5x", fontScale = 1.5f, showBackground = true)
@Composable
private fun PsicologoAgendaScreenPreview() {
    AppTheme {
        Surface(color = MaterialTheme.colorScheme.background) {
            Column(modifier = Modifier.padding(Spacing.m)) {
                CabeceraDiaMejorada(
                    fecha = LocalDate.of(2026, 10, 24),
                    esDiaNoDisponible = false
                )
                Spacer(modifier = Modifier.height(Spacing.m))
                DiaNoDisponibleCardMejorado()
            }
        }
    }
}