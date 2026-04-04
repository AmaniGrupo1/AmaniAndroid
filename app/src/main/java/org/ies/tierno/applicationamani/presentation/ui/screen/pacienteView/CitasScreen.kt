package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import android.Manifest
import android.os.Build
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.annotation.RequiresApi
import androidx.compose.animation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.presentation.components.BottomBar
import org.ies.tierno.applicationamani.presentation.ui.componente.FranjaHoraria
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView
import org.ies.tierno.applicationamani.presentation.ui.componente.VistaDiariaHoras
import org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel
import org.ies.tierno.applicationamani.utils.enviarCitaAlCalendario
import org.ies.tierno.applicationamani.utils.programarRecordatorioCita
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

    LaunchedEffect(mesVisible) {
        viewModel.cargarAgendaMensual(mesVisible)
    }

    LaunchedEffect(errorMessage) {
        errorMessage?.let {
            scope.launch {
                snackbarHostState.showSnackbar(it)
                viewModel.clearError()
            }
        }
    }

    // agendaMensual es List<AgendaItemDTO?> - cada elemento es UNA cita del paciente
    // Extraer las fechas donde hay citas
    val fechasConCitas = remember(agendaMensual) {
        agendaMensual.mapNotNull { it?.fecha }.toSet()
    }

    // Convertir franjas de disponibilidad al formato que espera VistaDiariaHoras
    // VistaDiariaHoras espera List<FranjaHoraria>? - necesito ver ese componente
    val franjasParaVista = remember(disponibilidadDia) {
        disponibilidadDia?.franjas?.map { franja ->
            // Crear objeto que VistaDiariaHoras espera
            // Como no tengo la definición de FranjaHoraria, asumo que tiene estas propiedades
            FranjaHoraria(
                diaSemana = disponibilidadDia!!.fecha.dayOfWeek.value.toShort(),
                horaInicio = franja.hora.format(DateTimeFormatter.ofPattern("HH:mm")),
                horaFin = franja.hora.plusMinutes(60).format(DateTimeFormatter.ofPattern("HH:mm")),
                activo = !franja.ocupada,
                motivo = franja.descripcion
            )
        } ?: emptyList()
    }

    Scaffold(
        snackbarHost = { SnackbarHost(snackbarHostState) },
        bottomBar = { BottomBar(navController) },
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
                    modifier = Modifier.padding(bottom = 12.dp)
                )

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

                Spacer(modifier = Modifier.height(16.dp))

                AnimatedVisibility(
                    visible = fechaSeleccionada != null && !isLoading,
                    enter = fadeIn() + expandVertically(),
                    exit = fadeOut() + shrinkVertically()
                ) {
                    fechaSeleccionada?.let { fecha ->
                        if (disponibilidadDia?.diaCompleto == true) {
                            Card(
                                modifier = Modifier.fillMaxWidth(),
                                shape = MaterialTheme.shapes.medium,
                                colors = CardDefaults.cardColors(
                                    containerColor = MaterialTheme.colorScheme.surfaceVariant
                                )
                            ) {
                                Text(
                                    text = "No hay disponibilidad para este día",
                                    style = typography.bodyMedium,
                                    modifier = Modifier.padding(16.dp),
                                    textAlign = androidx.compose.ui.text.style.TextAlign.Center
                                )
                            }
                        } else if (franjasParaVista.isEmpty()) {
                            Card(
                                modifier = Modifier.fillMaxWidth(),
                                shape = MaterialTheme.shapes.medium,
                                colors = CardDefaults.cardColors(
                                    containerColor = MaterialTheme.colorScheme.surfaceVariant
                                )
                            ) {
                                Text(
                                    text = "No hay franjas horarias disponibles",
                                    style = typography.bodyMedium,
                                    modifier = Modifier.padding(16.dp),
                                    textAlign = androidx.compose.ui.text.style.TextAlign.Center
                                )
                            }
                        } else {
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
                                            programarConPermiso(fecha, hora)

                                            val actionResult = snackbarHostState.showSnackbar(
                                                message = "Cita reservada a las ${franja.horaInicio}",
                                                actionLabel = "Calendario",
                                                duration = SnackbarDuration.Long
                                            )
                                            if (actionResult == SnackbarResult.ActionPerformed) {
                                                enviarCitaAlCalendario(
                                                    context = context,
                                                    fecha = fecha,
                                                    hora = hora,
                                                    duracionMinutos = 60,
                                                    titulo = "Cita - Amani",
                                                    descripcion = "Cita reservada el $fecha a las ${franja.horaInicio}"
                                                )
                                            }

                                            // Recargar agenda y disponibilidad
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
            }
        }
    }
}