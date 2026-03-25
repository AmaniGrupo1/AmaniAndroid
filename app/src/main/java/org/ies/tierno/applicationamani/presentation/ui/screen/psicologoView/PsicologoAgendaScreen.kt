package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

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
import androidx.compose.foundation.border
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
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AccessTime
import androidx.compose.material.icons.filled.Block
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.CalendarMonth
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.EventBusy
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.FilledTonalButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Slider
import androidx.compose.material3.SliderDefaults
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.dto.citas.CitaDetalleResponse
import org.ies.tierno.applicationamani.presentation.ui.componente.CalendarioView
import org.ies.tierno.applicationamani.presentation.ui.componente.FranjaHoraria
import org.ies.tierno.applicationamani.presentation.ui.componente.generarFranjasDia
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.ies.tierno.applicationamani.utils.enviarCitaAlCalendario
import org.ies.tierno.applicationamani.utils.programarRecordatorioCita
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth
import java.time.format.DateTimeFormatter
import java.time.format.TextStyle
import java.util.Locale

// ─── Pantalla principal ────────────────────────────────────────

/**
 * Pantalla de agenda de la psicóloga.
 *
 * Permite:
 * - Visualizar un calendario mensual con días que tienen citas y días
 *   marcados como no disponibles.
 * - Al seleccionar un día, ver la lista de pacientes/citas de ese día
 *   o bien que el día está marcado como no disponible.
 * - Modificar su horario de trabajo (hora de inicio, hora de fin y
 *   duración de las sesiones).
 * - Marcar/desmarcar un día concreto como no disponible.
 *
 * @param navController Controlador de navegación.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PsicologoAgendaScreen(
    navController: NavController,
    viewModel: PsicologoAgendaViewModel = koinViewModel()
) {

    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val agendaMensual by viewModel.agendaMensual.collectAsState()
    val errorMessage by viewModel.errorMessage.collectAsState()

    // ── Estado ──
    var fechaSeleccionada by remember { mutableStateOf<LocalDate?>(null) }
    var mesVisible by remember { mutableStateOf(YearMonth.now()) }
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    // ── Diálogos ──
    var mostrarDialogoHorario by remember { mutableStateOf(false) }
    var mostrarDialogoNoDisponible by remember { mutableStateOf(false) }

    LaunchedEffect(mesVisible) {
        viewModel.cargarAgendaMensual(mesVisible)
    }

    LaunchedEffect(errorMessage) {
        errorMessage?.let {
            snackbarHostState.showSnackbar(it)
            viewModel.clearError()
        }
    }

    val horaInicio = agendaMensual.horaInicio
    val horaFin = agendaMensual.horaFin
    val duracionSesion = agendaMensual.duracionSesion

    val diasNoDisponibles = remember(agendaMensual.diasNoDisponibles) {
        agendaMensual.diasNoDisponibles.mapNotNull { fecha ->
            runCatching { LocalDate.parse(fecha) }.getOrNull()
        }.toSet()
    }

    val citasPorDia: Map<LocalDate, List<CitaPsicologa>> = remember(agendaMensual.citas) {
        agendaMensual.citas
            .mapNotNull(::toCitaPsicologa)
            .groupBy(
                keySelector = { it.first },
                valueTransform = { it.second }
            )
    }

    // Fechas que tienen citas
    val fechasConCitas = citasPorDia.keys
    // Todas las fechas destacadas = citas + no disponibles
    val fechasDestacadas = fechasConCitas + diasNoDisponibles

    // Franjas del día seleccionado
    val franjasDelDia: List<FranjaHoraria> = remember(fechaSeleccionada, horaInicio, horaFin, duracionSesion) {
        fechaSeleccionada?.let { fecha ->
            if (fecha in diasNoDisponibles) emptyList()
            else {
                val ocupadas = citasPorDia[fecha]
                    ?.associate { it.hora to "${it.paciente} — ${it.motivo}" }
                    ?: emptyMap()
                generarFranjasDia(
                    horaInicio = horaInicio,
                    horaFin = horaFin,
                    intervaloMinutos = duracionSesion,
                    citasOcupadas = ocupadas
                )
            }
        } ?: emptyList()
    }

    // Citas del día seleccionado
    val citasDelDia = fechaSeleccionada?.let { citasPorDia[it] } ?: emptyList()
    val esDiaNoDisponible = fechaSeleccionada in diasNoDisponibles

    Scaffold(
        snackbarHost = { SnackbarHost(snackbarHostState) },
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
                text = "Mi agenda",
                style = typography.headlineMedium,
                fontWeight = FontWeight.Bold,
                color = colors.onBackground,
                modifier = Modifier.padding(bottom = 4.dp)
            )
            Text(
                text = "Gestiona tu horario y revisa tus citas",
                style = typography.bodyMedium,
                color = colors.onSurfaceVariant,
                modifier = Modifier.padding(bottom = 16.dp)
            )

            // ── Botones de acción rápida ──
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                BotonAccionRapida(
                    icono = Icons.Default.Schedule,
                    texto = "Modificar\nhorario",
                    modifier = Modifier.weight(1f),
                    onClick = { mostrarDialogoHorario = true }
                )
                BotonAccionRapida(
                    icono = Icons.Default.EventBusy,
                    texto = "Día no\ndisponible",
                    modifier = Modifier.weight(1f),
                    onClick = {
                        if (fechaSeleccionada != null) {
                            mostrarDialogoNoDisponible = true
                        } else {
                            scope.launch {
                                snackbarHostState.showSnackbar(
                                    "Selecciona primero un día en el calendario"
                                )
                            }
                        }
                    }
                )
            }

            Spacer(modifier = Modifier.height(16.dp))

            // ── Info horario actual ──
            HorarioActualBanner(
                horaInicio = horaInicio,
                horaFin = horaFin,
                duracionSesion = duracionSesion
            )

            Spacer(modifier = Modifier.height(16.dp))

            // ── Leyenda del calendario ──
            LeyendaPsicologa()

            Spacer(modifier = Modifier.height(8.dp))

            // ── Calendario mensual ──
            CalendarioView(
                modifier = Modifier.fillMaxWidth(),
                mesVisible = mesVisible,
                fechaSeleccionada = fechaSeleccionada,
                fechasDestacadas = fechasDestacadas,
                onMesVisibleChange = { mesVisible = it },
                onFechaSeleccionada = { fecha ->
                    fechaSeleccionada = if (fechaSeleccionada == fecha) null else fecha
                }
            )

            Spacer(modifier = Modifier.height(16.dp))

            // ── Detalle del día seleccionado ──
            AnimatedVisibility(
                visible = fechaSeleccionada != null,
                enter = fadeIn() + expandVertically(),
                exit = fadeOut() + shrinkVertically()
            ) {
                fechaSeleccionada?.let { fecha ->
                    Column {
                        // Cabecera del día
                        CabeceraDiaPsicologa(fecha, esDiaNoDisponible)

                        Spacer(modifier = Modifier.height(12.dp))

                        if (esDiaNoDisponible) {
                            // Día marcado como no disponible
                            DiaNoDisponibleCard()
                        } else if (citasDelDia.isNotEmpty()) {
                            // Lista de pacientes del día
                            Text(
                                text = "Pacientes del día (${citasDelDia.size})",
                                style = typography.titleSmall,
                                fontWeight = FontWeight.SemiBold,
                                color = colors.onBackground,
                                modifier = Modifier.padding(bottom = 8.dp)
                            )
                            citasDelDia.forEach { cita ->
                                TarjetaCitaPsicologa(
                                    cita = cita,
                                    fecha = fecha,
                                    duracionMinutos = duracionSesion
                                )
                                Spacer(modifier = Modifier.height(8.dp))
                            }

                            Spacer(modifier = Modifier.height(8.dp))

                            // Franjas horarias del día
                            Text(
                                text = "Vista de franjas horarias",
                                style = typography.titleSmall,
                                fontWeight = FontWeight.SemiBold,
                                color = colors.onBackground,
                                modifier = Modifier.padding(bottom = 8.dp)
                            )
                            franjasDelDia.forEach { franja ->
                                TarjetaFranjaPsicologa(franja)
                                Spacer(modifier = Modifier.height(6.dp))
                            }
                        } else {
                            // Día sin citas
                            Card(
                                modifier = Modifier.fillMaxWidth(),
                                shape = RoundedCornerShape(12.dp),
                                colors = CardDefaults.cardColors(
                                    containerColor = colors.surfaceVariant
                                )
                            ) {
                                Text(
                                    text = "No hay citas programadas para este día",
                                    style = typography.bodyMedium,
                                    color = colors.onSurfaceVariant,
                                    modifier = Modifier.padding(20.dp),
                                    textAlign = TextAlign.Center
                                )
                            }
                        }
                    }
                }
            }

            Spacer(modifier = Modifier.height(24.dp))
        }
    }

    // ── Diálogo de modificar horario ──
    if (mostrarDialogoHorario) {
        DialogoModificarHorario(
            horaInicioActual = horaInicio,
            horaFinActual = horaFin,
            duracionActual = duracionSesion,
            onConfirmar = { nuevoInicio, nuevoFin, nuevaDuracion ->
                scope.launch {
                    val result = viewModel.actualizarHorario(nuevoInicio, nuevoFin, nuevaDuracion)
                    mostrarDialogoHorario = false
                    snackbarHostState.showSnackbar(
                        if (result.isSuccess) {
                            "Horario actualizado: $nuevoInicio:00 – $nuevoFin:00 ($nuevaDuracion min)"
                        } else {
                            result.exceptionOrNull()?.message ?: "No se pudo actualizar el horario"
                        }
                    )
                }
            },
            onDismiss = { mostrarDialogoHorario = false }
        )
    }

    // ── Diálogo de marcar día no disponible ──
    if (mostrarDialogoNoDisponible && fechaSeleccionada != null) {
        val fecha = fechaSeleccionada!!
        val yaNoDisponible = fecha in diasNoDisponibles
        DialogoNoDisponible(
            fecha = fecha,
            yaNoDisponible = yaNoDisponible,
            onConfirmar = {
                scope.launch {
                    val result = viewModel.alternarDiaNoDisponible(fecha, yaNoDisponible)
                    mostrarDialogoNoDisponible = false
                    val msg = if (result.isSuccess) {
                        if (!yaNoDisponible) {
                            "Día $fecha marcado como no disponible"
                        } else {
                            "Día $fecha vuelve a estar disponible"
                        }
                    } else {
                        result.exceptionOrNull()?.message ?: "No se pudo actualizar el día"
                    }
                    snackbarHostState.showSnackbar(msg)
                }
            },
            onDismiss = { mostrarDialogoNoDisponible = false }
        )
    }
}

// ─── Modelo de cita para la psicóloga ──—───────────────────────

/**
 * Representa una cita desde la perspectiva de la psicóloga.
 *
 * @property hora Hora de la cita.
 * @property paciente Nombre del paciente.
 * @property motivo Motivo o tipo de sesión.
 */
data class CitaPsicologa(
    val hora: LocalTime,
    val paciente: String,
    val motivo: String
)

@RequiresApi(Build.VERSION_CODES.O)
private fun toCitaPsicologa(cita: CitaDetalleResponse): Pair<LocalDate, CitaPsicologa>? {
    val fecha = runCatching { LocalDate.parse(cita.fecha) }.getOrNull() ?: return null
    val hora = runCatching { LocalTime.parse(cita.hora) }.getOrNull() ?: return null
    return fecha to CitaPsicologa(
        hora = hora,
        paciente = cita.pacienteNombre ?: "Paciente",
        motivo = cita.motivo ?: "Sesión"
    )
}

// ─── Componentes auxiliares ────────────────────────────────────

/**
 * Botón de acción rápida con icono y texto.
 */
@Composable
private fun BotonAccionRapida(
    icono: ImageVector,
    texto: String,
    modifier: Modifier = Modifier,
    onClick: () -> Unit
) {
    val colors = MaterialTheme.colorScheme

    FilledTonalButton(
        onClick = onClick,
        modifier = modifier.height(72.dp),
        shape = RoundedCornerShape(16.dp),
        colors = ButtonDefaults.filledTonalButtonColors(
            containerColor = colors.primaryContainer,
            contentColor = colors.onPrimaryContainer
        )
    ) {
        Icon(
            imageVector = icono,
            contentDescription = null,
            modifier = Modifier.size(22.dp)
        )
        Spacer(modifier = Modifier.width(8.dp))
        Text(
            text = texto,
            style = MaterialTheme.typography.labelMedium,
            fontWeight = FontWeight.SemiBold,
            textAlign = TextAlign.Center
        )
    }
}

/**
 * Banner que muestra la configuración de horario actual.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun HorarioActualBanner(
    horaInicio: Int,
    horaFin: Int,
    duracionSesion: Int
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(
            containerColor = colors.secondaryContainer
        )
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                imageVector = Icons.Default.AccessTime,
                contentDescription = null,
                tint = colors.onSecondaryContainer,
                modifier = Modifier.size(28.dp)
            )
            Spacer(modifier = Modifier.width(12.dp))
            Column {
                Text(
                    text = "Horario de atención",
                    style = typography.titleSmall,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.onSecondaryContainer
                )
                Text(
                    text = "${String.format(Locale.ROOT, "%02d", horaInicio)}:00 – ${String.format(Locale.ROOT, "%02d", horaFin)}:00  ·  Sesiones de $duracionSesion min",
                    style = typography.bodySmall,
                    color = colors.onSecondaryContainer.copy(alpha = 0.8f)
                )
            }
        }
    }
}

/**
 * Leyenda de colores para el calendario de la psicóloga.
 */
@Composable
private fun LeyendaPsicologa() {
    val amani = LocalAmaniColors.current
    val errorColor = MaterialTheme.colorScheme.error

    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.Center,
        verticalAlignment = Alignment.CenterVertically
    ) {
        IndicadorLeyenda(color = amani.citaLibre, texto = "Con citas")
        Spacer(modifier = Modifier.width(16.dp))
        IndicadorLeyenda(color = errorColor, texto = "No disponible")
    }
}

/**
 * Punto de color + texto para la leyenda.
 */
@Composable
private fun IndicadorLeyenda(
    color: androidx.compose.ui.graphics.Color,
    texto: String
) {
    Row(verticalAlignment = Alignment.CenterVertically) {
        Box(
            modifier = Modifier
                .size(10.dp)
                .clip(CircleShape)
                .background(color)
        )
        Spacer(modifier = Modifier.width(6.dp))
        Text(
            text = texto,
            style = MaterialTheme.typography.labelMedium,
            color = MaterialTheme.colorScheme.onSurface
        )
    }
}

/**
 * Cabecera que muestra la fecha seleccionada con estilo.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun CabeceraDiaPsicologa(fecha: LocalDate, esDiaNoDisponible: Boolean) {
    val localeEs = Locale.forLanguageTag("es-ES")
    val diaSemana = fecha.dayOfWeek
        .getDisplayName(TextStyle.FULL, localeEs)
        .replaceFirstChar { it.uppercase() }
    val formatter = DateTimeFormatter.ofPattern("d 'de' MMMM 'de' yyyy", localeEs)

    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val bgColor = if (esDiaNoDisponible) colors.errorContainer else colors.primaryContainer
    val contentColor = if (esDiaNoDisponible) colors.onErrorContainer else colors.onPrimaryContainer

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .background(color = bgColor, shape = RoundedCornerShape(12.dp))
            .padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text(
            text = diaSemana,
            style = typography.titleLarge,
            fontWeight = FontWeight.Bold,
            color = contentColor
        )
        Spacer(modifier = Modifier.height(4.dp))
        Text(
            text = fecha.format(formatter),
            style = typography.bodyMedium,
            color = contentColor
        )
        if (esDiaNoDisponible) {
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = "⛔ Día no disponible",
                style = typography.labelMedium,
                fontWeight = FontWeight.Bold,
                color = colors.error
            )
        }
    }
}

/**
 * Card informativa cuando el día está marcado como no disponible.
 */
@Composable
private fun DiaNoDisponibleCard() {
    val colors = MaterialTheme.colorScheme

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = colors.errorContainer)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(20.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.Center
        ) {
            Icon(
                imageVector = Icons.Default.Block,
                contentDescription = null,
                tint = colors.error,
                modifier = Modifier.size(24.dp)
            )
            Spacer(modifier = Modifier.width(12.dp))
            Text(
                text = "Este día está marcado como no disponible.\nNo se aceptan citas.",
                style = MaterialTheme.typography.bodyMedium,
                color = colors.onErrorContainer
            )
        }
    }
}

/**
 * Tarjeta que muestra la información de una cita con un paciente.
 *
 * Incluye un botón para exportar la cita al calendario del sistema.
 *
 * @param cita Datos de la cita.
 * @param fecha Fecha de la cita (necesaria para la exportación al calendario).
 * @param duracionMinutos Duración de la sesión en minutos.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun TarjetaCitaPsicologa(
    cita: CitaPsicologa,
    fecha: LocalDate,
    duracionMinutos: Int = 60
) {
    val context = LocalContext.current
    val colors = MaterialTheme.colorScheme
    val amani = LocalAmaniColors.current
    val typography = MaterialTheme.typography
    val formatter = DateTimeFormatter.ofPattern("HH:mm")

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .border(1.dp, colors.primary.copy(alpha = 0.3f), RoundedCornerShape(12.dp)),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = amani.textFieldContainer),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 14.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            // Hora
            Text(
                text = cita.hora.format(formatter),
                style = typography.titleMedium,
                fontWeight = FontWeight.SemiBold,
                color = colors.primary,
                modifier = Modifier.width(56.dp),
                textAlign = TextAlign.Center
            )

            Spacer(modifier = Modifier.width(12.dp))

            // Icono de paciente
            Icon(
                imageVector = Icons.Default.Person,
                contentDescription = "Paciente",
                tint = colors.primary,
                modifier = Modifier.size(22.dp)
            )

            Spacer(modifier = Modifier.width(12.dp))

            // Info del paciente
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = cita.paciente,
                    style = typography.bodyLarge,
                    fontWeight = FontWeight.Medium,
                    color = colors.onSurface
                )
                Text(
                    text = cita.motivo,
                    style = typography.bodySmall,
                    color = colors.onSurfaceVariant
                )
            }

            // Botón para enviar la cita al calendario del sistema
            IconButton(
                onClick = {
                    enviarCitaAlCalendario(
                        context = context,
                        fecha = fecha,
                        hora = cita.hora,
                        duracionMinutos = duracionMinutos,
                        titulo = "Cita con ${cita.paciente}",
                        descripcion = cita.motivo
                    )
                }
            ) {
                Icon(
                    imageVector = Icons.Default.CalendarMonth,
                    contentDescription = "Añadir al calendario",
                    tint = colors.primary
                )
            }
        }
    }
}

/**
 * Tarjeta compacta para mostrar una franja horaria (libre / ocupada).
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun TarjetaFranjaPsicologa(franja: FranjaHoraria) {
    val amani = LocalAmaniColors.current
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val formatter = DateTimeFormatter.ofPattern("HH:mm")

    val borderColor = if (franja.libre) amani.citaLibre else amani.citaOcupada
    val containerColor = if (franja.libre) amani.textFieldContainer else amani.citaOcupadaBg

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .border(1.dp, borderColor, RoundedCornerShape(10.dp)),
        shape = RoundedCornerShape(10.dp),
        colors = CardDefaults.cardColors(containerColor = containerColor)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 10.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = franja.hora.format(formatter),
                style = typography.bodyMedium,
                fontWeight = FontWeight.SemiBold,
                color = if (franja.libre) colors.onSurface else colors.onSurfaceVariant,
                modifier = Modifier.width(48.dp),
                textAlign = TextAlign.Center
            )
            Spacer(modifier = Modifier.width(10.dp))
            Icon(
                imageVector = if (franja.libre) Icons.Default.CheckCircle else Icons.Default.Close,
                contentDescription = null,
                tint = if (franja.libre) amani.citaLibre else amani.citaOcupada,
                modifier = Modifier.size(18.dp)
            )
            Spacer(modifier = Modifier.width(10.dp))
            Text(
                text = if (franja.libre) "Disponible" else franja.motivo ?: "Ocupado",
                style = typography.bodySmall,
                color = if (franja.libre) amani.citaLibre else amani.citaOcupada
            )
        }
    }
}

// ─── Diálogos ──────────────────────────────────────────────────

/**
 * Diálogo para modificar el horario de trabajo de la psicóloga.
 *
 * Permite ajustar la hora de inicio, la hora de fin y la duración
 * de cada sesión mediante sliders.
 */
@Composable
private fun DialogoModificarHorario(
    horaInicioActual: Int,
    horaFinActual: Int,
    duracionActual: Int,
    onConfirmar: (horaInicio: Int, horaFin: Int, duracion: Int) -> Unit,
    onDismiss: () -> Unit
) {
    var inicio by remember { mutableFloatStateOf(horaInicioActual.toFloat()) }
    var fin by remember { mutableFloatStateOf(horaFinActual.toFloat()) }
    var duracion by remember { mutableFloatStateOf(duracionActual.toFloat()) }

    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    AlertDialog(
        onDismissRequest = onDismiss,
        icon = {
            Icon(
                imageVector = Icons.Default.Edit,
                contentDescription = null,
                tint = colors.primary
            )
        },
        title = {
            Text(
                text = "Modificar horario",
                style = typography.titleLarge,
                fontWeight = FontWeight.Bold
            )
        },
        text = {
            Column(
                modifier = Modifier.fillMaxWidth(),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                // Hora de inicio
                Text(
                    text = "Hora de inicio: ${inicio.toInt()}:00",
                    style = typography.bodyLarge,
                    fontWeight = FontWeight.Medium
                )
                Slider(
                    value = inicio,
                    onValueChange = {
                        inicio = it
                        if (fin <= inicio) fin = inicio + 1f
                    },
                    valueRange = 6f..20f,
                    steps = 13,
                    colors = SliderDefaults.colors(
                        thumbColor = colors.primary,
                        activeTrackColor = colors.primary
                    )
                )

                // Hora de fin
                Text(
                    text = "Hora de fin: ${fin.toInt()}:00",
                    style = typography.bodyLarge,
                    fontWeight = FontWeight.Medium
                )
                Slider(
                    value = fin,
                    onValueChange = {
                        fin = it
                        if (fin <= inicio) inicio = fin - 1f
                    },
                    valueRange = 7f..22f,
                    steps = 14,
                    colors = SliderDefaults.colors(
                        thumbColor = colors.primary,
                        activeTrackColor = colors.primary
                    )
                )

                // Duración de sesión
                Text(
                    text = "Duración de sesión: ${duracion.toInt()} min",
                    style = typography.bodyLarge,
                    fontWeight = FontWeight.Medium
                )
                Slider(
                    value = duracion,
                    onValueChange = { duracion = it },
                    valueRange = 30f..120f,
                    steps = 5,
                    colors = SliderDefaults.colors(
                        thumbColor = colors.primary,
                        activeTrackColor = colors.primary
                    )
                )

                // Resumen
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(8.dp),
                    colors = CardDefaults.cardColors(
                        containerColor = colors.primaryContainer
                    )
                ) {
                    val totalHoras = fin.toInt() - inicio.toInt()
                    val sesionesAprox = (totalHoras * 60) / duracion.toInt()
                    Text(
                        text = "≈ $sesionesAprox sesiones por día",
                        style = typography.bodySmall,
                        color = colors.onPrimaryContainer,
                        modifier = Modifier.padding(12.dp),
                        textAlign = TextAlign.Center
                    )
                }
            }
        },
        confirmButton = {
            Button(
                onClick = {
                    onConfirmar(inicio.toInt(), fin.toInt(), duracion.toInt())
                }
            ) {
                Text("Guardar")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("Cancelar")
            }
        }
    )
}

/**
 * Diálogo para marcar o desmarcar un día como no disponible.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun DialogoNoDisponible(
    fecha: LocalDate,
    yaNoDisponible: Boolean,
    onConfirmar: () -> Unit,
    onDismiss: () -> Unit
) {
    val localeEs = Locale.forLanguageTag("es-ES")
    val formatter = DateTimeFormatter.ofPattern("d 'de' MMMM", localeEs)
    val colors = MaterialTheme.colorScheme

    AlertDialog(
        onDismissRequest = onDismiss,
        icon = {
            Icon(
                imageVector = if (yaNoDisponible) Icons.Default.CheckCircle else Icons.Default.EventBusy,
                contentDescription = null,
                tint = if (yaNoDisponible) LocalAmaniColors.current.citaLibre else colors.error
            )
        },
        title = {
            Text(
                text = if (yaNoDisponible)
                    "Volver a habilitar día"
                else
                    "Marcar como no disponible",
                fontWeight = FontWeight.Bold
            )
        },
        text = {
            Text(
                text = if (yaNoDisponible)
                    "¿Quieres volver a habilitar el ${fecha.format(formatter)} para recibir citas?"
                else
                    "¿Quieres marcar el ${fecha.format(formatter)} como no disponible? No se podrán agendar citas ese día."
            )
        },
        confirmButton = {
            Button(
                onClick = onConfirmar,
                colors = if (yaNoDisponible)
                    ButtonDefaults.buttonColors()
                else
                    ButtonDefaults.buttonColors(containerColor = colors.error)
            ) {
                Text(if (yaNoDisponible) "Habilitar" else "Marcar")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("Cancelar")
            }
        }
    )
}

// ─── Preview ───────────────────────────────────────────────────

@RequiresApi(Build.VERSION_CODES.O)
@Preview(showBackground = true)
@Composable
fun PsicologoAgendaScreenPreview() {
    PsicologoAgendaScreen(navController = rememberNavController())
}
