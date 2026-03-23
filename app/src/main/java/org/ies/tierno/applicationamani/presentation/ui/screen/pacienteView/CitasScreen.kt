package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import android.os.Build
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
import org.ies.tierno.applicationamani.presentation.ui.componente.generarFranjasDia
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.ies.tierno.applicationamani.utils.enviarCitaAlCalendario
import java.time.LocalDate
import java.time.LocalTime

/**
 * Pantalla de citas del paciente.
 *
 * Muestra un calendario mensual ([CalendarioView]). Al pulsar sobre un día,
 * se despliega debajo la vista diaria ([VistaDiariaHoras]) con las franjas
 * horarias libres y ocupadas de ese día. Al pulsar una franja libre el
 * usuario puede iniciar la reserva de una cita.
 *
 * Colores obtenidos de [LocalAmaniColors] y [MaterialTheme.colorScheme].
 * Tipografías obtenidas de [MaterialTheme.typography].
 *
 * @param navController Controlador de navegación.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun CitasScreen(navController: NavController) {

    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val amaniColors = LocalAmaniColors.current

    val context = LocalContext.current

    // ── Estado ──
    var fechaSeleccionada by remember { mutableStateOf<LocalDate?>(null) }
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    // ── Datos de ejemplo: fechas con citas y horas ocupadas por día ──
    // TODO: reemplazar por datos reales del ViewModel / repositorio
    val citasPorDia: Map<LocalDate, Map<LocalTime, String>> = remember {
        mapOf(
            LocalDate.now() to mapOf(
                LocalTime.of(9, 0) to "Sesión con Dra. López",
                LocalTime.of(15, 0) to "Terapia grupal"
            ),
            LocalDate.now().plusDays(2) to mapOf(
                LocalTime.of(10, 0) to "Seguimiento telefónico",
                LocalTime.of(12, 0) to "Evaluación inicial"
            ),
            LocalDate.now().plusDays(5) to mapOf(
                LocalTime.of(16, 0) to "Sesión con Dr. García"
            )
        )
    }
    val fechasDestacadas = citasPorDia.keys

    // Franjas del día seleccionado
    val franjasDelDia: List<FranjaHoraria> = remember(fechaSeleccionada) {
        fechaSeleccionada?.let { fecha ->
            generarFranjasDia(
                citasOcupadas = citasPorDia[fecha] ?: emptyMap()
            )
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
            // ── Título ──
            Text(
                text = "Mis citas",
                style = typography.headlineMedium,
                fontWeight = FontWeight.Bold,
                color = colors.onBackground,
                modifier = Modifier.padding(bottom = 12.dp)
            )

            // ── Calendario mensual ──
            CalendarioView(
                modifier = Modifier.fillMaxWidth(),
                fechaSeleccionada = fechaSeleccionada,
                fechasDestacadas = fechasDestacadas,
                onFechaSeleccionada = { fecha ->
                    // Toggle: pulsar el mismo día lo deselecciona
                    fechaSeleccionada = if (fechaSeleccionada == fecha) null else fecha
                }
            )

            Spacer(modifier = Modifier.height(16.dp))

            // ── Vista diaria (aparece con animación al seleccionar un día) ──
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
                                val result = snackbarHostState.showSnackbar(
                                    message = "Reservar cita a las ${franja.hora} el $fecha",
                                    actionLabel = "📅 Calendario",
                                    duration = SnackbarDuration.Long
                                )
                                if (result == SnackbarResult.ActionPerformed) {
                                    enviarCitaAlCalendario(
                                        context = context,
                                        fecha = fecha,
                                        hora = franja.hora,
                                        duracionMinutos = 60,
                                        titulo = "Cita – Amani",
                                        descripcion = "Cita reservada el $fecha a las ${franja.hora}"
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
