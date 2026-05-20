package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import android.Manifest
import android.os.Build
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.annotation.RequiresApi
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
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
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
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
import org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.CalendarioView
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.terapia.ListarTerapiasViewModel
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.ies.tierno.applicationamani.utils.programarRecordatorioCita
import java.math.BigDecimal
import java.time.LocalDate
import java.time.LocalTime
import java.time.YearMonth
import java.time.format.DateTimeFormatter
import java.util.Locale

@OptIn(ExperimentalMaterial3Api::class)
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun EditarCitaScreen(
    navController: NavController,
    citaId: String?,
    viewModel: PsicologoAgendaViewModel,
    listarTerapiasViewModel: ListarTerapiasViewModel,
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Determinar colores según el tema
    val colors =
        if (isDark) {
            EditarCitaThemeColors(
                primary = Color.White,
                primaryContainer = Color.DarkGray,
                onPrimary = Color.Black,
                surface = cardColors.cardBackground,
                surfaceVariant = Color.DarkGray,
                onSurfaceVariant = Color.White.copy(alpha = 0.7f),
                error = Color(0xFFE57373),
                errorContainer = Color(0xFFE57373).copy(alpha = 0.2f),
                warning = Color(0xFFFF9800),
                onSurface = cardColors.cardContent,
                onBackground = cardColors.cardContent,
                background = screenColors.background,
            )
        } else {
            EditarCitaThemeColors(
                primary = Color(0xFF6B4E71),
                primaryContainer = Color(0xFF9B7E9F).copy(alpha = 0.3f),
                onPrimary = Color.White,
                surface = Color.White,
                surfaceVariant = Color(0xFFF5F5F5),
                onSurfaceVariant = Color(0xFF7A6B7E),
                error = Color(0xFFE57373),
                errorContainer = Color(0xFFE57373).copy(alpha = 0.2f),
                warning = Color(0xFFFF9800),
                onSurface = Color(0xFF2D1B30),
                onBackground = Color(0xFF2D1B30),
                background = Color(0xFFFDF8F9),
            )
        }

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

    // Variables para UI
    var horaDropdownExpanded by remember { mutableStateOf(false) }

    // Estado local para la cita
    var citaCargada by remember { mutableStateOf<AgendaItemDTO?>(null) }

    LaunchedEffect(Unit) {
        println("🟢 EditarCitaScreen iniciada con citaId: $citaId")
        println("🟢 session: ${viewModel.userSession.value?.idPsicologo}")
    }

    LaunchedEffect(agendaMensual) {
        println("📋 Agenda actualizada - tamaño: ${agendaMensual.size}")
        agendaMensual.forEach { cita ->
            println("   - Cita ID: ${cita.id}, Fecha: ${cita.fecha}, Paciente: ${cita.nombrePaciente}")
        }
    }

    LaunchedEffect(mesVisible, session) {
        if (session?.idPsicologo != null) {
            viewModel.cargarAgendaMensual(mesVisible)
        }
    }

    LaunchedEffect(agendaMensual, citaId) {
        println("🔍 Buscando cita - agenda size: ${agendaMensual.size}, citaId: $citaId")

        if (citaId != null && !citaId.isBlank()) {
            val id = citaId.toLongOrNull()
            println("🔍 ID convertido: $id")

            if (id != null) {
                if (agendaMensual.isNotEmpty()) {
                    val citaEncontrada = agendaMensual.find { it.id == id }
                    println("🔍 ¿Cita encontrada? ${citaEncontrada != null}")

                    if (citaEncontrada != null) {
                        println(
                            "✅ CITA ENCONTRADA: ID=${citaEncontrada.id}, Fecha=${citaEncontrada.fecha}, Hora=${citaEncontrada.horaInicio}",
                        )
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
                        println("❌ Cita NO encontrada con ID: $id")
                        println("📋 IDs disponibles: ${agendaMensual.map { it.id }}")
                        errorMessage = "No se encontró la cita con ID: $id"
                        isLoading = false
                    }
                } else {
                    println("⚠️ Agenda vacía, esperando carga...")
                }
            } else {
                println("❌ ID de cita inválido: $citaId")
                errorMessage = "ID de cita inválido: $citaId"
                isLoading = false
            }
        } else {
            println("❌ citaId es null o vacío")
            errorMessage = "No se proporcionó ID de cita"
            isLoading = false
        }
    }

    LaunchedEffect(Unit) {
        listarTerapiasViewModel.cargarTerapias()
        println("🎯 Cargando terapias...")
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
                    titulo = "Cita en Amani",
                    mensaje = "Tu cita reagendada es a las ${
                        horaSeleccionada!!.format(
                            DateTimeFormatter.ofPattern("HH:mm"),
                        )
                    }",
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
                titulo = "Cita en Amani",
                mensaje = "Tu cita reagendada es a las ${hora.format(DateTimeFormatter.ofPattern("HH:mm"))}",
            )
        }
    }

    Scaffold(
        snackbarHost = { SnackbarHost(snackbarHostState) },
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "Reagendar Cita",
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Bold,
                        color = colors.onPrimary,
                        fontFamily = roboto,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = colors.onPrimary,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colors.primary,
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
                        Spacer(modifier = Modifier.height(16.dp))
                        Text("Cargando datos de la cita...", color = colors.onSurface, fontFamily = roboto)
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
                            modifier = Modifier.size(64.dp),
                            tint = colors.error,
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                        Text(errorMessage!!, color = colors.error, fontFamily = roboto)
                        Spacer(modifier = Modifier.height(16.dp))
                        Button(onClick = { navController.navigateUp() }) {
                            Text("Volver", fontFamily = roboto)
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
                        Spacer(modifier = Modifier.height(16.dp))
                        Text("Buscando cita...", color = colors.onSurface, fontFamily = roboto)
                    }
                }
            } else {
                Column(
                    modifier =
                        Modifier
                            .fillMaxSize()
                            .verticalScroll(rememberScrollState())
                            .padding(16.dp),
                ) {
                    // Información de la cita original
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(16.dp),
                        colors =
                            CardDefaults.cardColors(
                                containerColor = colors.primaryContainer,
                            ),
                    ) {
                        Column(modifier = Modifier.padding(16.dp)) {
                            Text(
                                text = "📋 Cita actual",
                                fontWeight = FontWeight.Bold,
                                color = colors.primary,
                                fontFamily = roboto,
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = "Fecha: ${
                                    citaCargada?.fecha?.format(
                                        DateTimeFormatter.ofPattern("dd/MM/yyyy"),
                                    )
                                }",
                                color = colors.onSurface,
                                fontFamily = roboto,
                            )
                            Text(
                                text = "Hora: ${
                                    citaCargada?.horaInicio?.format(
                                        DateTimeFormatter.ofPattern("HH:mm"),
                                    )
                                }",
                                color = colors.onSurface,
                                fontFamily = roboto,
                            )
                            Text(
                                text = "Terapia: ${citaCargada?.terapia?.nombre ?: "No especificada"}",
                                color = colors.onSurface,
                                fontFamily = roboto,
                            )
                            Text(
                                text = "Modalidad: ${if (citaCargada?.modalidad == ModalidadCita.PRESENCIAL) "Presencial" else "Llamada"}",
                                color = colors.onSurface,
                                fontFamily = roboto,
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(20.dp))

                    // Calendario para nueva fecha
                    Text(
                        text = "📅 Selecciona nueva fecha",
                        fontWeight = FontWeight.Bold,
                        color = colors.onSurface,
                        fontFamily = roboto,
                        modifier = Modifier.padding(bottom = 8.dp),
                    )

                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(24.dp),
                        colors = CardDefaults.cardColors(containerColor = colors.surface),
                    ) {
                        CalendarioView(
                            modifier = Modifier.fillMaxWidth(),
                            mesVisible = mesVisible,
                            fechaSeleccionada = fechaSeleccionada,
                            fechasDestacadas = agendaMensual.map { it.fecha }.toSet(),
                            onMesVisibleChange = { mesVisible = it },
                            onFechaSeleccionada = { fecha ->
                                fechaSeleccionada = fecha
                                viewModel.cargarDisponibilidadDia(fecha)
                            },
                        )
                    }

                    Spacer(modifier = Modifier.height(20.dp))

                    // Mostrar disponibilidad y selector de hora
                    if (fechaSeleccionada != null) {
                        Card(
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(16.dp),
                            colors =
                                CardDefaults.cardColors(
                                    containerColor =
                                        if (tieneDisponibilidad) {
                                            colors.primaryContainer
                                        } else {
                                            colors.errorContainer
                                        },
                                ),
                        ) {
                            Column(modifier = Modifier.padding(16.dp)) {
                                Row(
                                    modifier = Modifier.fillMaxWidth(),
                                    verticalAlignment = Alignment.CenterVertically,
                                ) {
                                    Icon(
                                        if (tieneDisponibilidad) Icons.Default.CheckCircle else Icons.Default.Warning,
                                        contentDescription = null,
                                        tint = if (tieneDisponibilidad) colors.primary else colors.error,
                                        modifier = Modifier.size(24.dp),
                                    )
                                    Spacer(modifier = Modifier.width(12.dp))
                                    Column {
                                        Text(
                                            text =
                                                fechaSeleccionada!!
                                                    .format(
                                                        DateTimeFormatter.ofPattern(
                                                            "EEEE, d 'de' MMMM",
                                                            Locale.forLanguageTag("es-ES"),
                                                        ),
                                                    ).replaceFirstChar { it.uppercase() },
                                            fontWeight = FontWeight.Bold,
                                            color = colors.onSurface,
                                            fontFamily = roboto,
                                        )
                                        Text(
                                            text =
                                                if (tieneDisponibilidad) {
                                                    "✅ Hay horarios disponibles"
                                                } else {
                                                    "❌ No hay disponibilidad para este día"
                                                },
                                            color = if (tieneDisponibilidad) colors.primary else colors.error,
                                            fontFamily = roboto,
                                        )
                                    }
                                }

                                if (tieneDisponibilidad) {
                                    Spacer(modifier = Modifier.height(16.dp))
                                    Text(
                                        text = "Selecciona nueva hora",
                                        fontWeight = FontWeight.SemiBold,
                                        color = colors.onSurface,
                                        fontFamily = roboto,
                                    )
                                    Spacer(modifier = Modifier.height(8.dp))

                                    ExposedDropdownMenuBox(
                                        expanded = horaDropdownExpanded,
                                        onExpandedChange = { horaDropdownExpanded = it },
                                    ) {
                                        OutlinedTextField(
                                            value =
                                                horaSeleccionada?.format(
                                                    DateTimeFormatter.ofPattern("HH:mm"),
                                                ) ?: "Seleccionar hora",
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
                                                    .menuAnchor(),
                                            shape = RoundedCornerShape(12.dp),
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
                                                                modifier = Modifier.size(16.dp),
                                                                tint = colors.primary,
                                                            )
                                                            Spacer(modifier = Modifier.width(8.dp))
                                                            Text(
                                                                hora.format(DateTimeFormatter.ofPattern("HH:mm")),
                                                                color = colors.onSurface,
                                                                fontFamily = roboto,
                                                            )
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
                                }
                            }
                        }
                    }

                    Spacer(modifier = Modifier.height(20.dp))

                    // Tipo de terapia (solo visual, no editable)
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(16.dp),
                        colors =
                            CardDefaults.cardColors(
                                containerColor = colors.surfaceVariant.copy(alpha = 0.3f),
                            ),
                    ) {
                        Column(modifier = Modifier.padding(16.dp)) {
                            Text(
                                text = "🎯 Tipo de terapia",
                                fontWeight = FontWeight.SemiBold,
                                color = colors.onSurfaceVariant,
                                fontFamily = roboto,
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = terapiaSeleccionada?.nombre ?: "No especificada",
                                fontWeight = FontWeight.Medium,
                                color = colors.onSurface,
                                fontFamily = roboto,
                            )
                            Text(
                                text = "Duración: $duracionMinutos minutos | Precio: $monto€",
                                color = colors.primary,
                                fontFamily = roboto,
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(16.dp))

                    // Motivo
                    OutlinedTextField(
                        value = motivo,
                        onValueChange = { motivo = it },
                        label = { Text("Motivo de la cita (opcional)", fontFamily = roboto) },
                        placeholder = { Text("Ej: Seguimiento de tratamiento, Consulta inicial, etc.", fontFamily = roboto) },
                        modifier = Modifier.fillMaxWidth(),
                        minLines = 2,
                        maxLines = 3,
                        shape = RoundedCornerShape(12.dp),
                        colors =
                            OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colors.onSurface,
                                unfocusedTextColor = colors.onSurface,
                                focusedBorderColor = colors.primary,
                                unfocusedBorderColor = colors.onSurfaceVariant,
                            ),
                    )

                    Spacer(modifier = Modifier.height(16.dp))

                    // Modalidad
                    Text(
                        text = "Modalidad de la cita",
                        fontWeight = FontWeight.SemiBold,
                        color = colors.onSurface,
                        fontFamily = roboto,
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(16.dp),
                    ) {
                        Row(
                            modifier = Modifier.weight(1f),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            RadioButton(
                                selected = modalidadSeleccionada == ModalidadCita.PRESENCIAL,
                                onClick = { modalidadSeleccionada = ModalidadCita.PRESENCIAL },
                                colors = RadioButtonDefaults.colors(selectedColor = colors.primary),
                            )
                            Text("Presencial", color = colors.onSurface, fontFamily = roboto)
                        }
                        Row(
                            modifier = Modifier.weight(1f),
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            RadioButton(
                                selected = modalidadSeleccionada == ModalidadCita.LLAMADA,
                                onClick = { modalidadSeleccionada = ModalidadCita.LLAMADA },
                                colors = RadioButtonDefaults.colors(selectedColor = colors.primary),
                            )
                            Text("Llamada", color = colors.onSurface, fontFamily = roboto)
                        }
                    }

                    Spacer(modifier = Modifier.height(24.dp))

                    // Botones de acción
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        OutlinedButton(
                            onClick = { navController.navigateUp() },
                            modifier = Modifier.weight(1f),
                            shape = RoundedCornerShape(12.dp),
                            enabled = !isSaving,
                            colors =
                                ButtonDefaults.outlinedButtonColors(
                                    contentColor = colors.primary,
                                ),
                        ) {
                            Text("Cancelar", fontFamily = roboto)
                        }

                        Button(
                            onClick = {
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

                                            snackbarHostState.showSnackbar("✅ Cita reagendada correctamente")
                                            delay(1500)
                                            navController.navigateUp()
                                        } catch (e: Exception) {
                                            snackbarHostState.showSnackbar("❌ Error al reagendar: ${e.message}")
                                        } finally {
                                            isSaving = false
                                        }
                                    }
                                }
                            },
                            enabled = botonHabilitado,
                            modifier = Modifier.weight(1f),
                            shape = RoundedCornerShape(12.dp),
                            colors =
                                ButtonDefaults.buttonColors(
                                    containerColor = colors.primary,
                                ),
                        ) {
                            if (isSaving) {
                                CircularProgressIndicator(
                                    modifier = Modifier.size(20.dp),
                                    strokeWidth = 2.dp,
                                    color = colors.onPrimary,
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text("Guardando...", color = colors.onPrimary, fontFamily = roboto)
                            } else {
                                Icon(
                                    Icons.Default.Save,
                                    contentDescription = null,
                                    modifier = Modifier.size(18.dp),
                                    tint = colors.onPrimary,
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text("Guardar cambios", color = colors.onPrimary, fontFamily = roboto)
                            }
                        }
                    }

                    if (!hayCambios && fechaSeleccionada != null && horaSeleccionada != null) {
                        Spacer(modifier = Modifier.height(12.dp))
                        Card(
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(12.dp),
                            colors =
                                CardDefaults.cardColors(
                                    containerColor = colors.warning.copy(alpha = 0.1f),
                                ),
                        ) {
                            Row(
                                modifier = Modifier.padding(12.dp),
                                verticalAlignment = Alignment.CenterVertically,
                            ) {
                                Icon(
                                    Icons.Default.Info,
                                    contentDescription = null,
                                    modifier = Modifier.size(20.dp),
                                    tint = colors.warning,
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(
                                    text = "No has realizado cambios. Modifica la fecha u hora para reagendar.",
                                    color = colors.warning,
                                    fontFamily = roboto,
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

// Clase auxiliar para los colores del tema
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
