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
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.SnackbarResult
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.presentation.components.BottomBar
import org.ies.tierno.applicationamani.presentation.ui.componente.CalendarioView
import org.ies.tierno.applicationamani.presentation.ui.componente.FranjaHoraria
import org.ies.tierno.applicationamani.presentation.ui.componente.VistaDiariaHoras
import org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel
import org.ies.tierno.applicationamani.utils.enviarCitaAlCalendario
import org.ies.tierno.applicationamani.utils.programarRecordatorioCita
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth

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
                    mensaje = "Tu cita es a las $hora"
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
                mensaje = "Tu cita es a las $hora"
            )
        }
    }

    LaunchedEffect(mesVisible) {
        viewModel.cargarAgendaMensual(mesVisible)
    }

    LaunchedEffect(errorMessage) {
        errorMessage?.let {
            snackbarHostState.showSnackbar(it)
            viewModel.clearError()
        }
    }

    val citasPorDia = remember(agendaMensual) {
        agendaMensual
            .mapNotNull { cita ->
                cita?.let {
                    it.fecha to (it.horaInicio to (it.motivo ?: it.nombrePsicologo))
                }
            }
            .groupBy(
                keySelector = { it.first },
                valueTransform = { it.second }
            )
            .mapValues { (_, items) -> items.toMap() }
    }

    val fechasDestacadas = citasPorDia.keys

    val franjasDelDia = remember(disponibilidadDia) {
        disponibilidadDia?.franjas?.mapNotNull { franja ->
            runCatching {
                FranjaHoraria(
                    hora = LocalTime.parse(franja.hora),
                    libre = !franja.ocupada,
                    motivo = franja.descripcion
                )
            }.getOrNull()
        } ?: emptyList()
    }

    Scaffold(
        snackbarHost = { SnackbarHost(snackbarHostState) },
        bottomBar = { BottomBar(navController) },
        containerColor = colors.background
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
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
                fechasDestacadas = fechasDestacadas,
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
                visible = fechaSeleccionada != null,
                enter = fadeIn() + expandVertically(),
                exit = fadeOut() + shrinkVertically()
            ) {
                fechaSeleccionada?.let { fecha ->
                    VistaDiariaHoras(
                        fecha = fecha,
                        franjas = franjasDelDia,
                        modifier = Modifier.fillMaxWidth(),
                        onFranjaSeleccionada = { franja ->
                            scope.launch {
                                val result = viewModel.reservarCita(fecha, franja.hora)
                                if (result.isSuccess) {
                                    programarConPermiso(fecha, franja.hora)

                                    val actionResult = snackbarHostState.showSnackbar(
                                        message = "Cita reservada a las ${franja.hora}",
                                        actionLabel = "Calendario",
                                        duration = SnackbarDuration.Long
                                    )
                                    if (actionResult == SnackbarResult.ActionPerformed) {
                                        enviarCitaAlCalendario(
                                            context = context,
                                            fecha = fecha,
                                            hora = franja.hora,
                                            duracionMinutos = 60,
                                            titulo = "Cita - Amani",
                                            descripcion = "Cita reservada el $fecha a las ${franja.hora}"
                                        )
                                    }
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
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Preview(showBackground = true)
@Composable
fun CitasScreenPreview() {
    CitasScreen(navController = rememberNavController())
}
