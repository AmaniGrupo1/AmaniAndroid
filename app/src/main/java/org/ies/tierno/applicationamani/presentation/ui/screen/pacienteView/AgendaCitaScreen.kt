package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ContactSupport
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.material3.HorizontalDivider
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO
import org.ies.tierno.applicationamani.dto.ContactoPsicologoDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.ies.tierno.applicationamani.presentation.viewmodels.citas.ListarCitasViewModel
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDate
import java.time.LocalTime
import java.time.format.DateTimeFormatter
import java.util.Locale
import java.util.Calendar
import java.math.BigDecimal
import org.jitsi.meet.sdk.JitsiMeetActivity
import org.jitsi.meet.sdk.JitsiMeetConferenceOptions
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago

// Colores originales para el modo DEFECTO (Amani)
object AgendaCitaDefaultColors {
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
@Composable
fun AgendaCitaScreen(
    navController: NavController,
    viewModel: ListarCitasViewModel
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val context = LocalContext.current

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Determinar colores según el tema
    val colors = if (isDark) {
        AgendaCitaThemeColors(
            primary = Color.White,
            primaryLight = Color.White.copy(alpha = 0.7f),
            primaryDark = Color.DarkGray,
            secondary = Color.Gray,
            accent = cardColors.cardBackground,
            background = screenColors.background,
            surface = cardColors.cardBackground,
            textPrimary = cardColors.cardContent,
            textSecondary = cardColors.cardContent.copy(alpha = 0.7f),
            error = AgendaCitaDefaultColors.Error,
            success = AgendaCitaDefaultColors.Success,
            warning = AgendaCitaDefaultColors.Warning,
            textFieldContainer = Color.DarkGray,
            textFieldText = Color.White
        )
    } else {
        AgendaCitaThemeColors(
            primary = AgendaCitaDefaultColors.Primary,
            primaryLight = AgendaCitaDefaultColors.PrimaryLight,
            primaryDark = AgendaCitaDefaultColors.PrimaryDark,
            secondary = AgendaCitaDefaultColors.Secondary,
            accent = AgendaCitaDefaultColors.Accent,
            background = AgendaCitaDefaultColors.Background,
            surface = AgendaCitaDefaultColors.Surface,
            textPrimary = AgendaCitaDefaultColors.TextPrimary,
            textSecondary = AgendaCitaDefaultColors.TextSecondary,
            error = AgendaCitaDefaultColors.Error,
            success = AgendaCitaDefaultColors.Success,
            warning = AgendaCitaDefaultColors.Warning,
            textFieldContainer = Color.White,
            textFieldText = Color.Black
        )
    }

    val citas = viewModel.citas
    val isLoading = viewModel.isLoading.value
    val error = viewModel.error.value
    val isCancelling = viewModel.isCancelling.value

    var showContactDialog by remember { mutableStateOf(false) }
    var showCancelDialog by remember { mutableStateOf(false) }
    var citaToCancel by remember { mutableStateOf<CitaPacienteViewResponseDTO?>(null) }
    var showTerapiaInfoDialog by remember { mutableStateOf(false) }
    var terapiaInfoSeleccionada by remember { mutableStateOf<CitaPacienteViewResponseDTO?>(null) }
    var citaIdEditando by remember { mutableStateOf<Long?>(null) }

    LaunchedEffect(Unit) {
        viewModel.cargarCitas()
        viewModel.cargarTerapias()
    }

    LaunchedEffect(error) {
        error?.let {
            android.widget.Toast.makeText(context, it, android.widget.Toast.LENGTH_LONG).show()
            viewModel.clearError()
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "Mis Citas",
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = if (isDark) Color.Black else Color.White,
                        fontFamily = roboto
                    )
                },
                actions = {
                    IconButton(onClick = { viewModel.refrescar() }) {
                        Icon(Icons.Default.Refresh, contentDescription = "Refrescar", tint = if (isDark) Color.Black else Color.White)
                    }
                    IconButton(onClick = { showContactDialog = true }) {
                        Icon(Icons.AutoMirrored.Filled.ContactSupport, contentDescription = "Contacto", tint = if (isDark) Color.Black else Color.White)
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = colors.primary
                )
            )
        },
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    navController.navigate(Screens.citas.route)
                },
                containerColor = colors.primary,
                contentColor = if (isDark) Color.Black else Color.White,
                shape = RoundedCornerShape(16.dp),
                elevation = FloatingActionButtonDefaults.elevation(8.dp)
            ) {
                Icon(Icons.Default.Add, contentDescription = "Agendar Cita", modifier = Modifier.size(24.dp))
            }
        },
        containerColor = colors.background
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
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
            when {
                isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center
                        ) {
                            CircularProgressIndicator(color = colors.primary)
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                "Cargando tus citas...",
                                fontSize = 14.sp,
                                color = colors.textSecondary,
                                fontFamily = roboto
                            )
                        }
                    }
                }

                citas.isEmpty() -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center
                        ) {
                            Icon(
                                Icons.Default.Event,
                                contentDescription = null,
                                modifier = Modifier.size(80.dp),
                                tint = colors.primary.copy(alpha = 0.3f)
                            )
                            Spacer(modifier = Modifier.height(20.dp))
                            Text(
                                text = "No tienes citas agendadas",
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Medium,
                                color = colors.textPrimary,
                                fontFamily = roboto
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = "Presiona el botón + para agendar una nueva cita",
                                fontSize = 14.sp,
                                color = colors.textSecondary,
                                fontFamily = roboto
                            )
                        }
                    }
                }

                else -> {
                    val disponibilidadDia by viewModel.disponibilidadDia.collectAsState()

                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        items(citas) { cita ->
                            if (citaIdEditando == cita.idCita) {
                                CitaCardEditableInline(
                                    cita = cita,
                                    viewModel = viewModel,
                                    disponibilidadDia = disponibilidadDia,
                                    onCancelEdit = {
                                        citaIdEditando = null
                                        viewModel.limpiarDisponibilidad()
                                    },
                                    onSaveSuccess = {
                                        citaIdEditando = null
                                        viewModel.limpiarDisponibilidad()
                                    },
                                    colors = colors,
                                    roboto = roboto,
                                    isDark = isDark
                                )
                            } else {
                                CitaCardAmani(
                                    cita = cita,
                                    onCancelClick = {
                                        citaToCancel = cita
                                        showCancelDialog = true
                                    },
                                    onRescheduleClick = {
                                        val citaId = cita.idCita
                                        if (citaId != null && citaId > 0) {
                                            citaIdEditando = citaId
                                            val fechaCita = try {
                                                cita.fecha?.let { LocalDate.parse(it) }
                                            } catch (e: Exception) { null }
                                            if (fechaCita != null) {
                                                val matchedTerapia = viewModel.listTerapias.find { it.nombre == cita.tipoTerapia }
                                                val duracion = matchedTerapia?.duracionMinutos ?: cita.durationMinutes ?: 60
                                                viewModel.cargarDisponibilidadDia(fechaCita, cita.idPsicologo, duracion)
                                            }
                                        } else {
                                            android.widget.Toast.makeText(
                                                context,
                                                "No se puede reagendar esta cita",
                                                android.widget.Toast.LENGTH_SHORT
                                            ).show()
                                        }
                                    },
                                    onCardClick = {
                                        viewModel.selectCita(cita)
                                    },
                                    onTerapiaClick = {
                                        terapiaInfoSeleccionada = cita
                                        showTerapiaInfoDialog = true
                                    },
                                    colors = colors,
                                    roboto = roboto,
                                    isDark = isDark
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    if (showContactDialog) {
        ContactDialogAmani(
            onDismiss = { showContactDialog = false },
            colors = colors,
            roboto = roboto,
            isDark = isDark
        )
    }

    if (showTerapiaInfoDialog && terapiaInfoSeleccionada != null) {
        TerapiaInfoDialogAmani(
            cita = terapiaInfoSeleccionada!!,
            onDismiss = {
                showTerapiaInfoDialog = false
                terapiaInfoSeleccionada = null
            },
            colors = colors,
            roboto = roboto,
            isDark = isDark
        )
    }

    if (showCancelDialog && citaToCancel != null) {
        CancelConfirmationDialogAmani(
            cita = citaToCancel!!,
            isCancelling = isCancelling,
            onConfirm = {
                viewModel.cancelarCita(citaToCancel!!.idCita!!) {
                    showCancelDialog = false
                    citaToCancel = null
                    android.widget.Toast.makeText(
                        context,
                        "Cita cancelada exitosamente",
                        android.widget.Toast.LENGTH_SHORT
                    ).show()
                }
            },
            onDismiss = {
                showCancelDialog = false
                citaToCancel = null
            },
            colors = colors,
            roboto = roboto
        )
    }
}

@Composable
fun CitaCardAmani(
    cita: CitaPacienteViewResponseDTO,
    onCancelClick: () -> Unit,
    onRescheduleClick: () -> Unit,
    onCardClick: () -> Unit,
    onTerapiaClick: () -> Unit,
    colors: AgendaCitaThemeColors,
    roboto: FontFamily,
    isDark: Boolean
) {
    val context = LocalContext.current
    val dateFormatter = DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM 'de' yyyy", Locale("es", "ES"))
    val timeFormatter = DateTimeFormatter.ofPattern("HH:mm")

    val fecha = try {
        cita.fecha?.let { LocalDate.parse(it) }
    } catch (e: Exception) { null }

    val horaInicio = try {
        cita.horaInicio?.let { LocalTime.parse(it) }
    } catch (e: Exception) { null }

    val horaFin = try {
        cita.horaFin?.let { LocalTime.parse(it) }
    } catch (e: Exception) { null }

    val estadoColor = when (cita.estado?.lowercase()) {
        "confirmada" -> colors.success
        "pendiente" -> colors.warning
        "cancelada" -> colors.error
        "completada" -> colors.textSecondary
        else -> colors.textSecondary
    }

    val estadoTexto = when (cita.estado?.lowercase()) {
        "confirmada" -> "Confirmada"
        "pendiente" -> "Pendiente"
        "cancelada" -> "Cancelada"
        "completada" -> "Completada"
        else -> cita.estado ?: "Desconocido"
    }

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { onCardClick() },
        shape = RoundedCornerShape(20.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
        colors = CardDefaults.cardColors(
            containerColor = if (cita.estado?.lowercase() == "cancelada")
                colors.surface.copy(alpha = 0.7f)
            else
                colors.surface
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            // Cabecera con fecha y estado
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Icon(
                        Icons.Default.Event,
                        contentDescription = null,
                        tint = colors.primary,
                        modifier = Modifier.size(20.dp)
                    )
                    Text(
                        text = fecha?.format(dateFormatter)?.replaceFirstChar { it.uppercase() }
                            ?: cita.fecha ?: "Fecha no disponible",
                        fontSize = 13.sp,
                        fontWeight = FontWeight.Medium,
                        color = colors.textPrimary,
                        fontFamily = roboto
                    )
                }

                Surface(
                    shape = RoundedCornerShape(12.dp),
                    color = estadoColor.copy(alpha = 0.1f)
                ) {
                    Text(
                        text = estadoTexto,
                        fontSize = 11.sp,
                        fontWeight = FontWeight.Bold,
                        color = estadoColor,
                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                        fontFamily = roboto
                    )
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Horario y Duración
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(20.dp)
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Schedule,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp),
                        tint = colors.textSecondary
                    )
                    Spacer(modifier = Modifier.width(6.dp))
                    Text(
                        text = if (horaInicio != null && horaFin != null)
                            "${horaInicio.format(timeFormatter)} - ${horaFin.format(timeFormatter)}"
                        else
                            "${cita.horaInicio ?: "?"} - ${cita.horaFin ?: "?"}",
                        fontSize = 13.sp,
                        color = colors.textSecondary,
                        fontFamily = roboto
                    )
                }

                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Timer,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp),
                        tint = colors.textSecondary
                    )
                    Spacer(modifier = Modifier.width(6.dp))
                    Text(
                        text = "${cita.durationMinutes ?: 0} min",
                        fontSize = 13.sp,
                        color = colors.textSecondary,
                        fontFamily = roboto
                    )
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            // ✅ NUEVO: Método de pago (solo si existe)
            if (cita.metodoPago != null) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Icon(
                        when (cita.metodoPago.name) {
                            "EFECTIVO" -> Icons.Default.Money
                            "TARJETA" -> Icons.Default.CreditCard
                            else -> Icons.Default.Payment
                        },
                        contentDescription = null,
                        modifier = Modifier.size(16.dp),
                        tint = colors.primary
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = when (cita.metodoPago.name) {
                            "EFECTIVO" -> "💰 Pago en efectivo"
                            "TARJETA" -> "💳 Pago con tarjeta"
                            else -> "Método de pago: ${cita.metodoPago.name}"
                        },
                        fontSize = 12.sp,
                        color = colors.textSecondary,
                        fontFamily = roboto
                    )
                }
            }

            // ✅ NUEVO: Estado del pago (solo si existe)
            if (cita.estadoPago != null) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Icon(
                        when (cita.estadoPago.name) {
                            "PAGADO" -> Icons.Default.CheckCircle
                            "PENDIENTE" -> Icons.Default.Schedule
                            "FALLIDO" -> Icons.Default.Error
                            "REEMBOLSADO" -> Icons.Default.Info
                            else -> Icons.Default.Info
                        },
                        contentDescription = null,
                        modifier = Modifier.size(16.dp),
                        tint = when (cita.estadoPago.name) {
                            "PAGADO" -> colors.success
                            "PENDIENTE" -> colors.warning
                            "FALLIDO" -> colors.error
                            "REEMBOLSADO" -> colors.primary
                            else -> colors.textSecondary
                        }
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = when (cita.estadoPago.name) {
                            "PAGADO" -> "✅ Pagado"
                            "PENDIENTE" -> "⏳ Pendiente de pago"
                            "FALLIDO" -> "❌ Pago fallido"
                            "REEMBOLSADO" -> "🔄 Reembolsado"
                            else -> "Estado: ${cita.estadoPago.name}"
                        },
                        fontSize = 12.sp,
                        color = when (cita.estadoPago.name) {
                            "PAGADO" -> colors.success
                            "PENDIENTE" -> colors.warning
                            "FALLIDO" -> colors.error
                            "REEMBOLSADO" -> colors.primary
                            else -> colors.textSecondary
                        },
                        fontFamily = roboto,
                        fontWeight = FontWeight.Medium
                    )
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Tipo de terapia y modalidad
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                cita.tipoTerapia?.let { terapia ->
                    Surface(
                        shape = RoundedCornerShape(8.dp),
                        color = colors.primary.copy(alpha = 0.1f),
                        modifier = Modifier.clickable { onTerapiaClick() }
                    ) {
                        Row(
                            modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(6.dp)
                        ) {
                            Text(
                                text = terapia,
                                fontSize = 12.sp,
                                fontWeight = FontWeight.Medium,
                                color = colors.primary,
                                fontFamily = roboto
                            )
                            Icon(
                                Icons.Default.Info,
                                contentDescription = "Info terapia",
                                modifier = Modifier.size(14.dp),
                                tint = colors.primary
                            )
                        }
                    }
                }

                cita.modalidad?.let { modalidad ->
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(6.dp)
                    ) {
                        Surface(
                            shape = RoundedCornerShape(8.dp),
                            color = colors.primaryLight.copy(alpha = 0.1f)
                        ) {
                            Text(
                                text = modalidad,
                                fontSize = 12.sp,
                                modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp),
                                color = colors.primaryLight,
                                fontFamily = roboto
                            )
                        }

                        if (modalidad.uppercase() == "LLAMADA") {
                            IconButton(
                                onClick = {
                                    val options = JitsiMeetConferenceOptions.Builder()
                                        .setRoom("AmaniSession_${cita.idCita ?: 0L}")
                                        .setFeatureFlag("welcomepage.enabled", false)
                                        .build()
                                    JitsiMeetActivity.launch(context, options)
                                },
                                modifier = Modifier.size(32.dp)
                            ) {
                                Icon(
                                    Icons.Default.VideoCall,
                                    contentDescription = "Iniciar Videollamada Jitsi",
                                    tint = colors.primary,
                                    modifier = Modifier.size(24.dp)
                                )
                            }
                        }
                    }
                }
            }

            // Motivo
            cita.motivo?.let { motivo ->
                if (motivo.isNotBlank()) {
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = motivo,
                        fontSize = 13.sp,
                        color = colors.textSecondary,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis,
                        fontFamily = roboto
                    )
                }
            }

            // Botones de acción (solo si no está cancelada/completada)
            if (cita.estado?.lowercase() !in listOf("cancelada", "completada")) {
                Spacer(modifier = Modifier.height(14.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    OutlinedButton(
                        onClick = onCancelClick,
                        modifier = Modifier.weight(1f).height(44.dp),
                        colors = ButtonDefaults.outlinedButtonColors(
                            contentColor = colors.error
                        ),
                        shape = RoundedCornerShape(12.dp),
                        border = ButtonDefaults.outlinedButtonBorder.copy(
                            brush = Brush.horizontalGradient(listOf(colors.error, colors.error))
                        )
                    ) {
                        Icon(
                            Icons.Default.Cancel,
                            contentDescription = null,
                            modifier = Modifier.size(18.dp),
                            tint = colors.error
                        )
                        Spacer(modifier = Modifier.width(6.dp))
                        Text("Cancelar", fontSize = 13.sp, fontWeight = FontWeight.Medium, fontFamily = roboto)
                    }

                    Button(
                        onClick = onRescheduleClick,
                        modifier = Modifier.weight(1f).height(44.dp),
                        colors = ButtonDefaults.buttonColors(
                            containerColor = colors.primary
                        ),
                        shape = RoundedCornerShape(12.dp),
                        elevation = ButtonDefaults.buttonElevation(4.dp)
                    ) {
                        Icon(
                            Icons.Default.Edit,
                            contentDescription = null,
                            modifier = Modifier.size(18.dp),
                            tint = if (isDark) Color.Black else Color.White
                        )
                        Spacer(modifier = Modifier.width(6.dp))
                        Text(
                            "Reagendar",
                            fontSize = 13.sp,
                            fontWeight = FontWeight.Medium,
                            color = if (isDark) Color.Black else Color.White,
                            fontFamily = roboto
                        )
                    }
                }
            }
        }
    }
}

@Composable
fun TerapiaInfoDialogAmani(
    cita: CitaPacienteViewResponseDTO,
    onDismiss: () -> Unit,
    colors: AgendaCitaThemeColors,
    roboto: FontFamily,
    isDark: Boolean
) {
    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .padding(20.dp),
            shape = RoundedCornerShape(28.dp),
            colors = CardDefaults.cardColors(containerColor = colors.surface),
            elevation = CardDefaults.cardElevation(12.dp)
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(24.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = "🎯 Información de la Terapia",
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Bold,
                        color = colors.primary,
                        fontFamily = roboto
                    )
                    IconButton(onClick = onDismiss) {
                        Icon(Icons.Default.Close, contentDescription = "Cerrar", tint = colors.textSecondary)
                    }
                }

                Spacer(modifier = Modifier.height(20.dp))

                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(20.dp),
                    color = colors.primary.copy(alpha = 0.08f)
                ) {
                    Column(
                        modifier = Modifier.padding(24.dp),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Icon(
                            Icons.Default.Psychology,
                            contentDescription = null,
                            modifier = Modifier.size(56.dp),
                            tint = colors.primary
                        )
                        Spacer(modifier = Modifier.height(12.dp))
                        Text(
                            text = cita.tipoTerapia ?: "Terapia no especificada",
                            fontSize = 18.sp,
                            fontWeight = FontWeight.Bold,
                            color = colors.primary,
                            fontFamily = roboto
                        )
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(16.dp),
                    colors = CardDefaults.cardColors(
                        containerColor = colors.primaryLight.copy(alpha = 0.1f)
                    )
                ) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(16.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(16.dp)
                    ) {
                        Box(
                            modifier = Modifier
                                .size(70.dp)
                                .clip(RoundedCornerShape(16.dp))
                                .background(colors.primary.copy(alpha = 0.1f)),
                            contentAlignment = Alignment.Center
                        ) {
                            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                Text(
                                    text = "${cita.durationMinutes ?: 60}",
                                    fontSize = 26.sp,
                                    fontWeight = FontWeight.Bold,
                                    color = colors.primary,
                                    fontFamily = roboto
                                )
                                Text(
                                    text = "minutos",
                                    fontSize = 11.sp,
                                    color = colors.primary,
                                    fontFamily = roboto
                                )
                            }
                        }

                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = "⏰ Duración de la sesión",
                                fontSize = 12.sp,
                                color = colors.textSecondary,
                                fontFamily = roboto
                            )
                            Text(
                                text = "${cita.durationMinutes ?: 60} minutos",
                                fontSize = 16.sp,
                                fontWeight = FontWeight.Bold,
                                color = colors.textPrimary,
                                fontFamily = roboto
                            )
                            Text(
                                text = if ((cita.durationMinutes ?: 60) <= 60)
                                    "Sesión estándar de una hora"
                                else
                                    "Sesión extendida para mayor profundidad",
                                fontSize = 12.sp,
                                color = colors.textSecondary,
                                fontFamily = roboto
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(12.dp))

                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(16.dp),
                    color = colors.primary.copy(alpha = 0.05f)
                ) {
                    Column(
                        modifier = Modifier.padding(16.dp)
                    ) {
                        Text(
                            text = "💡 Recomendaciones",
                            fontSize = 14.sp,
                            fontWeight = FontWeight.Bold,
                            color = colors.primary,
                            fontFamily = roboto
                        )
                        Spacer(modifier = Modifier.height(10.dp))
                        Text(
                            text = "• Llega 5 minutos antes para prepararte\n• Ten lista tu identificación\n• Prepara tus preguntas o temas a tratar\n• Busca un lugar tranquilo si es online",
                            fontSize = 12.sp,
                            color = colors.textSecondary,
                            lineHeight = 20.sp,
                            fontFamily = roboto
                        )
                    }
                }

                Spacer(modifier = Modifier.height(20.dp))

                Button(
                    onClick = onDismiss,
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(48.dp),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = colors.primary
                    ),
                    shape = RoundedCornerShape(14.dp),
                    elevation = ButtonDefaults.buttonElevation(4.dp)
                ) {
                    Text(
                        "Entendido",
                        fontSize = 15.sp,
                        fontWeight = FontWeight.Medium,
                        color = if (isDark) Color.Black else Color.White,
                        fontFamily = roboto
                    )
                }
            }
        }
    }
}

@Composable
fun ContactDialogAmani(
    onDismiss: () -> Unit,
    colors: AgendaCitaThemeColors,
    roboto: FontFamily,
    isDark: Boolean
) {
    val contacto = ContactoPsicologoDTO()
    val context = LocalContext.current

    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .padding(20.dp),
            shape = RoundedCornerShape(28.dp),
            colors = CardDefaults.cardColors(containerColor = colors.surface),
            elevation = CardDefaults.cardElevation(12.dp)
        ) {
            Column(
                modifier = Modifier.padding(24.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = "Contacto Amani Psicología",
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Bold,
                        color = colors.primary,
                        fontFamily = roboto
                    )
                    IconButton(onClick = onDismiss) {
                        Icon(Icons.Default.Close, contentDescription = "Cerrar", tint = colors.textSecondary)
                    }
                }

                Spacer(modifier = Modifier.height(20.dp))

                ContactInfoItemAmani(
                    icon = Icons.Default.Phone,
                    text = contacto.telefono,
                    onClick = { },
                    colors = colors,
                    roboto = roboto
                )

                ContactInfoItemAmani(
                    icon = Icons.Default.Email,
                    text = contacto.email,
                    onClick = { },
                    colors = colors,
                    roboto = roboto
                )

                ContactInfoItemAmani(
                    icon = Icons.Default.Language,
                    text = contacto.website,
                    onClick = { },
                    colors = colors,
                    roboto = roboto
                )

                Spacer(modifier = Modifier.height(16.dp))

                HorizontalDivider(
                    modifier = Modifier,
                    thickness = 1.dp,
                    color = colors.textSecondary.copy(alpha = 0.2f)
                )
                Spacer(modifier = Modifier.height(16.dp))

                Text(
                    text = "Horario de atención",
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Bold,
                    color = colors.textPrimary,
                    fontFamily = roboto
                )
                Spacer(modifier = Modifier.height(10.dp))

                Text(
                    text = "Lunes a Viernes: 9:00 - 20:00",
                    fontSize = 14.sp,
                    color = colors.textSecondary,
                    fontFamily = roboto
                )
                Text(
                    text = "Sábados: 10:00 - 14:00",
                    fontSize = 14.sp,
                    color = colors.textSecondary,
                    fontFamily = roboto
                )
                Text(
                    text = "Domingos: Cerrado",
                    fontSize = 14.sp,
                    color = colors.textSecondary,
                    fontFamily = roboto
                )

                Spacer(modifier = Modifier.height(24.dp))

                Button(
                    onClick = onDismiss,
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(48.dp),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = colors.primary
                    ),
                    shape = RoundedCornerShape(14.dp),
                    elevation = ButtonDefaults.buttonElevation(4.dp)
                ) {
                    Text(
                        "Cerrar",
                        fontSize = 15.sp,
                        fontWeight = FontWeight.Medium,
                        color = if (isDark) Color.Black else Color.White,
                        fontFamily = roboto
                    )
                }
            }
        }
    }
}

@Composable
fun ContactInfoItemAmani(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    text: String,
    onClick: () -> Unit,
    colors: AgendaCitaThemeColors,
    roboto: FontFamily
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { onClick() }
            .padding(vertical = 12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Icon(
            icon,
            contentDescription = null,
            modifier = Modifier.size(24.dp),
            tint = colors.primary
        )
        Spacer(modifier = Modifier.width(14.dp))
        Text(
            text = text,
            fontSize = 14.sp,
            color = colors.primary,
            fontWeight = FontWeight.Medium,
            fontFamily = roboto
        )
    }
}

@Composable
fun CancelConfirmationDialogAmani(
    cita: CitaPacienteViewResponseDTO,
    isCancelling: Boolean,
    onConfirm: () -> Unit,
    onDismiss: () -> Unit,
    colors: AgendaCitaThemeColors,
    roboto: FontFamily
) {
    val fechaFormateada = try {
        cita.fecha?.let {
            LocalDate.parse(it).format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))
        } ?: cita.fecha ?: "Fecha no disponible"
    } catch (e: Exception) {
        cita.fecha ?: "Fecha no disponible"
    }

    val horaFormateada = try {
        cita.horaInicio?.let {
            LocalTime.parse(it).format(DateTimeFormatter.ofPattern("HH:mm"))
        } ?: cita.horaInicio ?: "Hora no disponible"
    } catch (e: Exception) {
        cita.horaInicio ?: "Hora no disponible"
    }

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colors.surface,
        shape = RoundedCornerShape(24.dp),
        icon = {
            Icon(
                Icons.Default.Warning,
                contentDescription = null,
                tint = colors.error,
                modifier = Modifier.size(40.dp)
            )
        },
        title = {
            Text(
                text = "Cancelar Cita",
                fontSize = 18.sp,
                fontWeight = FontWeight.Bold,
                color = colors.textPrimary,
                fontFamily = roboto
            )
        },
        text = {
            Column {
                Text(
                    text = "¿Estás seguro de que deseas cancelar esta cita?",
                    fontSize = 14.sp,
                    color = colors.textPrimary,
                    fontFamily = roboto
                )
                Spacer(modifier = Modifier.height(12.dp))
                Surface(
                    shape = RoundedCornerShape(12.dp),
                    color = colors.primaryLight.copy(alpha = 0.1f)
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp)
                    ) {
                        Text(
                            text = "📅 $fechaFormateada",
                            fontSize = 14.sp,
                            fontWeight = FontWeight.Medium,
                            color = colors.primary,
                            fontFamily = roboto
                        )
                        Text(
                            text = "⏰ $horaFormateada",
                            fontSize = 14.sp,
                            fontWeight = FontWeight.Medium,
                            color = colors.primary,
                            fontFamily = roboto
                        )
                    }
                }
                Spacer(modifier = Modifier.height(10.dp))
                Text(
                    text = "Esta acción no se puede deshacer.",
                    fontSize = 12.sp,
                    color = colors.error,
                    fontFamily = roboto
                )
            }
        },
        confirmButton = {
            Button(
                onClick = onConfirm,
                enabled = !isCancelling,
                colors = ButtonDefaults.buttonColors(
                    containerColor = colors.error,
                    contentColor = Color.White
                ),
                shape = RoundedCornerShape(12.dp),
                modifier = Modifier.height(40.dp)
            ) {
                if (isCancelling) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(18.dp),
                        strokeWidth = 2.dp,
                        color = Color.White
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                }
                Text("Sí, cancelar", fontSize = 13.sp, fontWeight = FontWeight.Medium, fontFamily = roboto)
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                shape = RoundedCornerShape(12.dp),
                colors = ButtonDefaults.textButtonColors(
                    contentColor = colors.textSecondary
                )
            ) {
                Text("No, mantener", fontSize = 13.sp, fontFamily = roboto)
            }
        }
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CitaCardEditableInline(
    cita: CitaPacienteViewResponseDTO,
    viewModel: ListarCitasViewModel,
    disponibilidadDia: org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse?,
    onCancelEdit: () -> Unit,
    onSaveSuccess: () -> Unit,
    colors: AgendaCitaThemeColors,
    roboto: FontFamily,
    isDark: Boolean
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()

    // Original appointment values
    val originalFecha = try {
        cita.fecha?.let { LocalDate.parse(it) }
    } catch (e: Exception) { null }

    val originalHora = try {
        cita.horaInicio?.let { LocalTime.parse(it) }
    } catch (e: Exception) { null }

    val originalModalidad = when (cita.modalidad?.uppercase()) {
        "LLAMADA" -> ModalidadCita.LLAMADA
        else -> ModalidadCita.PRESENCIAL
    }

    // State variables for form
    var fechaSeleccionada by remember { mutableStateOf(originalFecha) }
    var horaSeleccionada by remember { mutableStateOf(originalHora) }
    var motivo by remember { mutableStateOf(cita.motivo ?: "") }
    var modalidadSeleccionada by remember { mutableStateOf(originalModalidad) }

    // Find therapy details from ListarCitasViewModel.listTerapias
    val matchedTerapia = remember(cita.tipoTerapia, viewModel.listTerapias) {
        viewModel.listTerapias.find { it.nombre == cita.tipoTerapia }
    }
    val idTipoTerapia = matchedTerapia?.idTipo ?: 1L
    val monto = matchedTerapia?.precio ?: BigDecimal.ZERO
    val duracionMinutos = matchedTerapia?.duracionMinutos ?: cita.durationMinutes ?: 60

    val slotsLibres = remember(disponibilidadDia) {
        disponibilidadDia?.slotsLibres?.filter { !it.ocupado }?.map { it.hora } ?: emptyList()
    }

    val horasDisponibles = remember(slotsLibres, originalHora, fechaSeleccionada) {
        if (fechaSeleccionada == originalFecha && originalHora != null) {
            (listOf(originalHora) + slotsLibres).distinct().sorted()
        } else {
            slotsLibres.sorted()
        }
    }

    var horaDropdownExpanded by remember { mutableStateOf(false) }
    var isSaving by remember { mutableStateOf(false) }

    val hasChanges = remember(fechaSeleccionada, horaSeleccionada, motivo, modalidadSeleccionada) {
        fechaSeleccionada != originalFecha ||
        horaSeleccionada != originalHora ||
        motivo != (cita.motivo ?: "") ||
        modalidadSeleccionada != originalModalidad
    }

    val saveEnabled = fechaSeleccionada != null && horaSeleccionada != null && hasChanges && !isSaving

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 6.dp),
        colors = CardDefaults.cardColors(containerColor = colors.surface)
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Text(
                text = "✏️ Reagendar Cita",
                fontSize = 16.sp,
                fontWeight = FontWeight.Bold,
                color = colors.primary,
                fontFamily = roboto
            )

            // Date Selection
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Column {
                    Text(
                        text = "📅 Fecha",
                        fontSize = 12.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = colors.textSecondary,
                        fontFamily = roboto
                    )
                    Text(
                        text = fechaSeleccionada?.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")) ?: "No seleccionada",
                        fontSize = 14.sp,
                        color = colors.textPrimary,
                        fontFamily = roboto
                    )
                }
                Button(
                    onClick = {
                        val calendar = Calendar.getInstance()
                        val datePickerDialog = android.app.DatePickerDialog(
                            context,
                            { _, year, month, dayOfMonth ->
                                val selected = LocalDate.of(year, month + 1, dayOfMonth)
                                fechaSeleccionada = selected
                                horaSeleccionada = null
                                viewModel.cargarDisponibilidadDia(selected, cita.idPsicologo, duracionMinutos)
                            },
                            fechaSeleccionada?.year ?: calendar.get(Calendar.YEAR),
                            fechaSeleccionada?.monthValue?.minus(1) ?: calendar.get(Calendar.MONTH),
                            fechaSeleccionada?.dayOfMonth ?: calendar.get(Calendar.DAY_OF_MONTH)
                        )
                        datePickerDialog.show()
                    },
                    colors = ButtonDefaults.buttonColors(containerColor = colors.primary),
                    shape = RoundedCornerShape(10.dp)
                ) {
                    Text("Cambiar", color = if (isDark) Color.Black else Color.White, fontSize = 12.sp, fontFamily = roboto)
                }
            }

            // Time Slot Dropdown
            if (fechaSeleccionada != null) {
                Column(modifier = Modifier.fillMaxWidth()) {
                    Text(
                        text = "⏰ Hora de la cita",
                        fontSize = 12.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = colors.textSecondary,
                        fontFamily = roboto,
                        modifier = Modifier.padding(bottom = 4.dp)
                    )
                    ExposedDropdownMenuBox(
                        expanded = horaDropdownExpanded,
                        onExpandedChange = { horaDropdownExpanded = it }
                    ) {
                        OutlinedTextField(
                            value = horaSeleccionada?.format(DateTimeFormatter.ofPattern("HH:mm")) ?: "Selecciona horario",
                            onValueChange = {},
                            readOnly = true,
                            trailingIcon = {
                                ExposedDropdownMenuDefaults.TrailingIcon(expanded = horaDropdownExpanded)
                            },
                            modifier = Modifier.fillMaxWidth().menuAnchor(),
                            shape = RoundedCornerShape(12.dp),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = colors.textPrimary,
                                unfocusedTextColor = colors.textPrimary,
                                focusedBorderColor = colors.primary,
                                unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.5f),
                                focusedContainerColor = colors.textFieldContainer,
                                unfocusedContainerColor = colors.textFieldContainer
                            )
                        )
                        ExposedDropdownMenu(
                            expanded = horaDropdownExpanded,
                            onDismissRequest = { horaDropdownExpanded = false }
                        ) {
                            if (horasDisponibles.isEmpty()) {
                                DropdownMenuItem(
                                    text = { Text("No hay horarios disponibles", color = colors.textSecondary, fontFamily = roboto) },
                                    onClick = {}
                                )
                            } else {
                                horasDisponibles.forEach { hora ->
                                    DropdownMenuItem(
                                        text = {
                                            Row(verticalAlignment = Alignment.CenterVertically) {
                                                Icon(
                                                    Icons.Default.AccessTime,
                                                    contentDescription = null,
                                                    modifier = Modifier.size(16.dp),
                                                    tint = colors.primary
                                                )
                                                Spacer(modifier = Modifier.width(8.dp))
                                                Text(
                                                    text = hora.format(DateTimeFormatter.ofPattern("HH:mm")),
                                                    color = colors.textPrimary,
                                                    fontFamily = roboto
                                                )
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
                    }
                }
            }

            // Modality Selection
            Column(modifier = Modifier.fillMaxWidth()) {
                Text(
                    text = "📍 Modalidad",
                    fontSize = 12.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.textSecondary,
                    fontFamily = roboto
                )
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        RadioButton(
                            selected = modalidadSeleccionada == ModalidadCita.PRESENCIAL,
                            onClick = { modalidadSeleccionada = ModalidadCita.PRESENCIAL },
                            colors = RadioButtonDefaults.colors(selectedColor = colors.primary)
                        )
                        Text("Presencial", color = colors.textPrimary, fontSize = 13.sp, fontFamily = roboto)
                    }
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        RadioButton(
                            selected = modalidadSeleccionada == ModalidadCita.LLAMADA,
                            onClick = { modalidadSeleccionada = ModalidadCita.LLAMADA },
                            colors = RadioButtonDefaults.colors(selectedColor = colors.primary)
                        )
                        Text("Llamada", color = colors.textPrimary, fontSize = 13.sp, fontFamily = roboto)
                    }
                }
            }

            // Motivo text field
            OutlinedTextField(
                value = motivo,
                onValueChange = { motivo = it },
                label = { Text("Motivo de la cita", fontFamily = roboto) },
                placeholder = { Text("Ej: Seguimiento o primera consulta", fontFamily = roboto) },
                modifier = Modifier.fillMaxWidth(),
                maxLines = 2,
                shape = RoundedCornerShape(12.dp),
                colors = OutlinedTextFieldDefaults.colors(
                    focusedTextColor = colors.textPrimary,
                    unfocusedTextColor = colors.textPrimary,
                    focusedBorderColor = colors.primary,
                    unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.5f),
                    focusedContainerColor = colors.textFieldContainer,
                    unfocusedContainerColor = colors.textFieldContainer
                )
            )

            // Buttons
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                OutlinedButton(
                    onClick = onCancelEdit,
                    modifier = Modifier.weight(1f).height(44.dp),
                    shape = RoundedCornerShape(12.dp),
                    colors = ButtonDefaults.outlinedButtonColors(contentColor = colors.error),
                    border = ButtonDefaults.outlinedButtonBorder.copy(
                        brush = Brush.horizontalGradient(listOf(colors.error, colors.error))
                    )
                ) {
                    Text("Cancelar", fontSize = 13.sp, fontFamily = roboto)
                }

                Button(
                    onClick = {
                        if (fechaSeleccionada != null && horaSeleccionada != null && !isSaving) {
                            isSaving = true
                            viewModel.editarCita(
                                idCita = cita.idCita ?: 0L,
                                idPaciente = cita.idPaciente,
                                idPsicologo = cita.idPsicologo,
                                fecha = fechaSeleccionada!!,
                                hora = horaSeleccionada!!,
                                duracionMinutos = duracionMinutos,
                                motivo = motivo,
                                idTipoTerapia = idTipoTerapia,
                                metodoPago = cita.metodoPago ?: MetodoPago.EFECTIVO,
                                estadoPago = cita.estadoPago ?: EstadoPago.PENDIENTE,
                                monto = monto,
                                modalidad = modalidadSeleccionada,
                                onSuccess = {
                                    isSaving = false
                                    onSaveSuccess()
                                },
                                onError = { errorMsg ->
                                    isSaving = false
                                    android.widget.Toast.makeText(context, errorMsg, android.widget.Toast.LENGTH_LONG).show()
                                }
                            )
                        }
                    },
                    enabled = saveEnabled,
                    modifier = Modifier.weight(1f).height(44.dp),
                    shape = RoundedCornerShape(12.dp),
                    colors = ButtonDefaults.buttonColors(containerColor = colors.primary)
                ) {
                    if (isSaving) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(20.dp),
                            strokeWidth = 2.dp,
                            color = if (isDark) Color.Black else Color.White
                        )
                    } else {
                        Text("Guardar", color = if (isDark) Color.Black else Color.White, fontSize = 13.sp, fontFamily = roboto)
                    }
                }
            }
        }
    }
}

// Clase auxiliar para los colores del tema
data class AgendaCitaThemeColors(
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
    val textFieldText: Color
)