package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import android.content.res.Configuration
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.ContactSupport
import androidx.compose.material.icons.filled.AccessTime
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Cancel
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.CreditCard
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.Event
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Language
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.Payment
import androidx.compose.material.icons.filled.Payments
import androidx.compose.material.icons.filled.Phone
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Timer
import androidx.compose.material.icons.filled.VideoCall
import androidx.compose.material.icons.filled.Warning
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
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.FloatingActionButtonDefaults
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.RadioButton
import androidx.compose.material3.RadioButtonDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
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
import androidx.compose.ui.window.Dialog
import androidx.navigation.NavController
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago
import org.ies.tierno.applicationamani.domain.models.enumm.ModalidadCita
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO
import org.ies.tierno.applicationamani.dto.ContactoPsicologoDTO
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.citas.ListarCitasViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.jitsi.meet.sdk.JitsiMeetActivity
import org.jitsi.meet.sdk.JitsiMeetConferenceOptions
import org.koin.androidx.compose.koinViewModel
import org.koin.compose.koinInject
import java.math.BigDecimal
import java.net.URL
import java.time.LocalDate
import java.time.LocalTime
import java.time.format.DateTimeFormatter
import java.util.Calendar
import java.util.Locale

@Composable
private fun rememberAgendaCitaThemeColors(): AgendaCitaThemeColors {
    val colorScheme = MaterialTheme.colorScheme
    val amaniColors = AmaniTheme.colors
    return AgendaCitaThemeColors(
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
    )
}

/**
 * Pantalla de agenda de citas del paciente.
 *
 * Muestra una lista de citas programadas con información del psicólogo,
 * fecha, hora, estado de pago y modalidad. Permite cancelar citas, ver
 * información de la terapia asociada y contactar con el psicólogo.
 * Incluye un [FloatingActionButton] para agendar una nueva cita.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona la lista de citas.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AgendaCitaScreen(
    navController: NavController,
    viewModel: ListarCitasViewModel = koinViewModel(),
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val citasRepository: CitasRepository = koinInject()
    val isDark = isDarkTheme()
    val colors = rememberAgendaCitaThemeColors()

    val citas = viewModel.citas
    val isLoading = viewModel.isLoading.value
    val error = viewModel.error.value
    val isCancelling = viewModel.isCancelling.value
    val disponibilidadDia by viewModel.disponibilidadDia.collectAsState()

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
            android.widget.Toast
                .makeText(context, it, android.widget.Toast.LENGTH_LONG)
                .show()
            viewModel.clearError()
        }
    }

    fun launchJitsiVideoCall(cita: CitaPacienteViewResponseDTO) {
        val roomName = "AmaniSession_${cita.idCita ?: 0L}".replace(Regex("[^a-zA-Z0-9-]"), "")
        scope.launch(Dispatchers.IO) {
            try {
                val result = citasRepository.getJitsiToken(roomName)
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
                            .setFeatureFlag("conference.shortcuts.enabled", false)
                            .setFeatureFlag("filmstrip.enabled", true)
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
    }

    AgendaCitaContent(
        citas = citas,
        isLoading = isLoading,
        citaIdEditando = citaIdEditando,
        colors = colors,
        isDark = isDark,
        onBackClick = { navController.navigateUp() },
        onRefreshClick = { viewModel.refrescar() },
        onContactClick = { showContactDialog = true },
        onAddCitaClick = { navController.navigate(Screens.citas.route) },
        onCancelCitaClick = { cita ->
            citaToCancel = cita
            showCancelDialog = true
        },
        onRescheduleCitaClick = { cita ->
            val citaId = cita.idCita
            if (citaId != null && citaId > 0) {
                citaIdEditando = citaId
                val fechaCita =
                    try {
                        cita.fecha?.let { LocalDate.parse(it) }
                    } catch (e: Exception) {
                        null
                    }
                if (fechaCita != null) {
                    val matchedTerapia = viewModel.listTerapias.find { it.nombre == cita.tipoTerapia }
                    val duracion = matchedTerapia?.duracionMinutos ?: cita.durationMinutes ?: 60
                    viewModel.cargarDisponibilidadDia(fechaCita, cita.idPsicologo, duracion)
                }
            } else {
                android.widget.Toast
                    .makeText(
                        context,
                        context.getString(R.string.cita_no_reagendable),
                        android.widget.Toast.LENGTH_SHORT,
                    ).show()
            }
        },
        onCardClick = { viewModel.selectCita(it) },
        onTerapiaClick = { cita ->
            terapiaInfoSeleccionada = cita
            showTerapiaInfoDialog = true
        },
        onVideoCallClick = { launchJitsiVideoCall(it) },
        inlineEditCardContent = { cita ->
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
                isDark = isDark,
            )
        },
    )

    if (showContactDialog) {
        ContactDialogAmani(
            onDismiss = { showContactDialog = false },
            isDark = isDark,
        )
    }

    if (showTerapiaInfoDialog && terapiaInfoSeleccionada != null) {
        TerapiaInfoDialogAmani(
            cita = terapiaInfoSeleccionada!!,
            onDismiss = {
                showTerapiaInfoDialog = false
                terapiaInfoSeleccionada = null
            },
            isDark = isDark,
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
                    android.widget.Toast
                        .makeText(
                            context,
                            context.getString(R.string.cita_cancelada_exito),
                            android.widget.Toast.LENGTH_SHORT,
                        ).show()
                }
            },
            onDismiss = {
                showCancelDialog = false
                citaToCancel = null
            },
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AgendaCitaContent(
    citas: List<CitaPacienteViewResponseDTO>,
    isLoading: Boolean,
    citaIdEditando: Long?,
    colors: AgendaCitaThemeColors,
    isDark: Boolean,
    onBackClick: () -> Unit,
    onRefreshClick: () -> Unit,
    onContactClick: () -> Unit,
    onAddCitaClick: () -> Unit,
    onCancelCitaClick: (CitaPacienteViewResponseDTO) -> Unit,
    onRescheduleCitaClick: (CitaPacienteViewResponseDTO) -> Unit,
    onCardClick: (CitaPacienteViewResponseDTO) -> Unit,
    onTerapiaClick: (CitaPacienteViewResponseDTO) -> Unit,
    onVideoCallClick: (CitaPacienteViewResponseDTO) -> Unit,
    inlineEditCardContent: @Composable (CitaPacienteViewResponseDTO) -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Scaffold(
        modifier = modifier,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_mis_citas_1),
                        style = typography.titleLarge,
                        fontWeight = FontWeight.SemiBold,
                        color = colorScheme.onSurface,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = colorScheme.onSurface,
                        )
                    }
                },
                actions = {
                    IconButton(onClick = onRefreshClick) {
                        Icon(
                            Icons.Default.Refresh,
                            contentDescription = stringResource(R.string.auto_refrescar),
                            tint = colorScheme.onSurface,
                        )
                    }
                    IconButton(onClick = onContactClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ContactSupport,
                            contentDescription = stringResource(R.string.auto_contacto),
                            tint = colorScheme.onSurface,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colorScheme.surface,
                        titleContentColor = colorScheme.onSurface,
                        navigationIconContentColor = colorScheme.onSurface,
                        actionIconContentColor = colorScheme.onSurface,
                    ),
            )
        },
        floatingActionButton = {
            FloatingActionButton(
                onClick = onAddCitaClick,
                containerColor = colorScheme.primary,
                contentColor = colorScheme.onPrimary,
                shape = shapes.large,
                elevation = FloatingActionButtonDefaults.elevation(Elevation.level3),
            ) {
                Icon(
                    Icons.Default.Add,
                    contentDescription = stringResource(R.string.auto_agendar_cita),
                    modifier = Modifier.size(Dimensions.iconDefault),
                )
            }
        },
        containerColor = colorScheme.background,
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .background(colorScheme.background),
        ) {
            when {
                isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center,
                        ) {
                            CircularProgressIndicator(color = colorScheme.primary)
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(
                                stringResource(R.string.auto_cargando_tus_citas),
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }

                citas.isEmpty() -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center,
                        ) {
                            Icon(
                                Icons.Default.Event,
                                contentDescription = null,
                                modifier = Modifier.size(Dimensions.avatarLarge),
                                tint = colorScheme.primary.copy(alpha = 0.4f),
                            )
                            Spacer(modifier = Modifier.height(Spacing.l))
                            Text(
                                text = stringResource(R.string.auto_no_tienes_citas_agendadas),
                                style = typography.titleMedium,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.onSurface,
                            )
                            Spacer(modifier = Modifier.height(Spacing.s))
                            Text(
                                text = stringResource(R.string.auto_presiona_el_boton_para_2),
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }

                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = Spacing.m, vertical = Spacing.m),
                        verticalArrangement = Arrangement.spacedBy(Spacing.sm),
                    ) {
                        items(
                            items = citas,
                            key = { it.idCita ?: it.hashCode() },
                        ) { cita ->
                            if (citaIdEditando == cita.idCita) {
                                inlineEditCardContent(cita)
                            } else {
                                CitaCardAmani(
                                    cita = cita,
                                    onCancelClick = { onCancelCitaClick(cita) },
                                    onRescheduleClick = { onRescheduleCitaClick(cita) },
                                    onCardClick = { onCardClick(cita) },
                                    onTerapiaClick = { onTerapiaClick(cita) },
                                    onVideoCallClick = { onVideoCallClick(cita) },
                                    colors = colors,
                                    isDark = isDark,
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun CitaCardAmani(
    cita: CitaPacienteViewResponseDTO,
    onCancelClick: () -> Unit,
    onRescheduleClick: () -> Unit,
    onCardClick: () -> Unit,
    onTerapiaClick: () -> Unit,
    onVideoCallClick: () -> Unit = {},
    colors: AgendaCitaThemeColors,
    isDark: Boolean,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    val amaniColors = AmaniTheme.colors

    val dateFormatter = DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM 'de' yyyy", Locale.forLanguageTag("es-ES"))
    val timeFormatter = DateTimeFormatter.ofPattern("HH:mm")

    val fecha =
        try {
            cita.fecha?.let { LocalDate.parse(it) }
        } catch (e: Exception) {
            null
        }

    val horaInicio =
        try {
            cita.horaInicio?.let { LocalTime.parse(it) }
        } catch (e: Exception) {
            null
        }

    val horaFin =
        try {
            cita.horaFin?.let { LocalTime.parse(it) }
        } catch (e: Exception) {
            null
        }

    val estadoColor =
        when (cita.estado?.lowercase()) {
            "confirmada" -> amaniColors.success
            "pendiente" -> amaniColors.warning
            "cancelada" -> colorScheme.error
            "completada" -> colorScheme.onSurfaceVariant
            else -> colorScheme.onSurfaceVariant
        }

    val estadoTexto =
        when (cita.estado?.lowercase()) {
            "confirmada" -> stringResource(R.string.cita_estado_confirmada)
            "pendiente" -> stringResource(R.string.cita_estado_pendiente)
            "cancelada" -> stringResource(R.string.cita_estado_cancelada)
            "completada" -> stringResource(R.string.cita_estado_completada)
            else -> cita.estado ?: stringResource(R.string.cita_estado_desconocido)
        }

    Card(
        modifier =
            Modifier
                .fillMaxWidth()
                .clickable { onCardClick() },
        shape = shapes.medium,
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2),
        colors =
            CardDefaults.cardColors(
                containerColor =
                    if (cita.estado?.lowercase() == "cancelada") {
                        colorScheme.surface.copy(alpha = 0.7f)
                    } else {
                        colorScheme.surface
                    },
            ),
    ) {
        Column(
            modifier = Modifier.padding(Spacing.m),
        ) {
            // Cabecera con fecha y estado
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                ) {
                    Icon(
                        Icons.Default.Event,
                        contentDescription = null,
                        tint = colorScheme.primary,
                        modifier = Modifier.size(Dimensions.iconMedium),
                    )
                    Text(
                        text =
                            fecha?.format(dateFormatter)?.replaceFirstChar { it.uppercase() }
                                ?: cita.fecha ?: stringResource(R.string.cita_fecha_no_disponible),
                        style = typography.bodySmall,
                        fontWeight = FontWeight.Medium,
                        color = colorScheme.onSurface,
                    )
                }

                Surface(
                    shape = shapes.medium,
                    color = estadoColor.copy(alpha = 0.12f),
                ) {
                    Text(
                        text = estadoTexto,
                        style = typography.labelSmall,
                        fontWeight = FontWeight.Bold,
                        color = estadoColor,
                        modifier = Modifier.padding(horizontal = Spacing.s, vertical = Spacing.xs),
                    )
                }
            }

            Spacer(modifier = Modifier.height(Spacing.sm))

            // Horario y Duración
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(Spacing.l),
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Schedule,
                        contentDescription = null,
                        modifier = Modifier.size(Dimensions.iconSmall),
                        tint = colorScheme.onSurfaceVariant,
                    )
                    Spacer(modifier = Modifier.width(Spacing.xs))
                    Text(
                        text =
                            if (horaInicio != null && horaFin != null) {
                                "${horaInicio.format(timeFormatter)} - ${horaFin.format(timeFormatter)}"
                            } else {
                                "${cita.horaInicio ?: "?"} - ${cita.horaFin ?: "?"}"
                            },
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                    )
                }

                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Timer,
                        contentDescription = null,
                        modifier = Modifier.size(Dimensions.iconSmall),
                        tint = colorScheme.onSurfaceVariant,
                    )
                    Spacer(modifier = Modifier.width(Spacing.xs))
                    Text(
                        text = stringResource(R.string.cita_duracion_min_corto, cita.durationMinutes ?: 0),
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                    )
                }
            }

            Spacer(modifier = Modifier.height(Spacing.s))

            // Método de pago
            if (cita.metodoPago != null) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.fillMaxWidth(),
                ) {
                    Icon(
                        when (cita.metodoPago.name) {
                            "EFECTIVO" -> Icons.Default.Payments
                            "TARJETA" -> Icons.Default.CreditCard
                            else -> Icons.Default.Payment
                        },
                        contentDescription = null,
                        modifier = Modifier.size(Dimensions.iconSmall),
                        tint = colorScheme.primary,
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(
                        text =
                            when (cita.metodoPago.name) {
                                "EFECTIVO" -> stringResource(R.string.cita_pago_efectivo)
                                "TARJETA" -> stringResource(R.string.cita_pago_tarjeta)
                                else -> stringResource(R.string.cita_metodo_pago_otro, cita.metodoPago.name)
                            },
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                    )
                }
                Spacer(modifier = Modifier.height(Spacing.xs))
            }

            // Estado del pago
            if (cita.estadoPago != null) {
                val pagoColor =
                    when (cita.estadoPago.name) {
                        "PAGADO" -> amaniColors.success
                        "PENDIENTE" -> amaniColors.warning
                        "FALLIDO" -> colorScheme.error
                        "REEMBOLSADO" -> colorScheme.primary
                        else -> colorScheme.onSurfaceVariant
                    }

                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.fillMaxWidth(),
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
                        modifier = Modifier.size(Dimensions.iconSmall),
                        tint = pagoColor,
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(
                        text =
                            when (cita.estadoPago.name) {
                                "PAGADO" -> stringResource(R.string.cita_estado_pago_pagado)
                                "PENDIENTE" -> stringResource(R.string.cita_estado_pago_pendiente)
                                "FALLIDO" -> stringResource(R.string.cita_estado_pago_fallido)
                                "REEMBOLSADO" -> stringResource(R.string.cita_estado_pago_reembolsado)
                                else -> stringResource(R.string.cita_estado_pago_otro, cita.estadoPago.name)
                            },
                        style = typography.bodySmall.copy(fontWeight = FontWeight.Medium),
                        color = pagoColor,
                    )
                }
                Spacer(modifier = Modifier.height(Spacing.s))
            }

            // Tipo de terapia y modalidad
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(Spacing.s),
            ) {
                cita.tipoTerapia?.let { terapia ->
                    Surface(
                        shape = shapes.small,
                        color = colorScheme.primaryContainer.copy(alpha = 0.5f),
                        modifier = Modifier.clickable { onTerapiaClick() },
                    ) {
                        Row(
                            modifier = Modifier.padding(horizontal = Spacing.s, vertical = Spacing.xs),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(Spacing.xs),
                        ) {
                            Text(
                                text = terapia,
                                style = typography.labelMedium,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.primary,
                            )
                            Icon(
                                Icons.Default.Info,
                                contentDescription = stringResource(R.string.auto_info_terapia),
                                modifier = Modifier.size(Dimensions.iconSmall),
                                tint = colorScheme.primary,
                            )
                        }
                    }
                }

                cita.modalidad?.let { modalidad ->
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(Spacing.xs),
                    ) {
                        Surface(
                            shape = shapes.small,
                            color = colorScheme.secondaryContainer,
                        ) {
                            Text(
                                text = modalidad,
                                style = typography.labelMedium,
                                modifier = Modifier.padding(horizontal = Spacing.s, vertical = Spacing.xs),
                                color = colorScheme.onSecondaryContainer,
                            )
                        }

                        if (modalidad.uppercase() == "LLAMADA") {
                            IconButton(
                                onClick = onVideoCallClick,
                                modifier = Modifier.size(Dimensions.avatarSmall),
                            ) {
                                Icon(
                                    Icons.Default.VideoCall,
                                    contentDescription = stringResource(R.string.cita_videollamada_iniciar),
                                    tint = colors.primary,
                                    modifier = Modifier.size(Dimensions.iconDefault),
                                )
                            }
                        }
                    }
                }
            }

            // Motivo
            cita.motivo?.let { motivo ->
                if (motivo.isNotBlank()) {
                    Spacer(modifier = Modifier.height(Spacing.s))
                    Text(
                        text = motivo,
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
            }

            // Botones de acción (solo si no está cancelada/completada)
            if (cita.estado?.lowercase() !in listOf("cancelada", "completada")) {
                Spacer(modifier = Modifier.height(Spacing.sm))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                ) {
                    // Botón Cancelar
                    OutlinedButton(
                        onClick = onCancelClick,
                        modifier = Modifier.weight(1f).height(Dimensions.buttonHeight),
                        colors =
                            ButtonDefaults.outlinedButtonColors(
                                contentColor = colorScheme.error,
                            ),
                        shape = CircleShape,
                        border = BorderStroke(Dimensions.borderThin, colorScheme.error),
                    ) {
                        Icon(
                            Icons.Default.Cancel,
                            contentDescription = null,
                            modifier = Modifier.size(Dimensions.iconButton),
                            tint = colorScheme.error,
                        )
                        Spacer(modifier = Modifier.width(Spacing.xs))
                        Text(
                            stringResource(R.string.auto_cancelar),
                            style = typography.labelLarge,
                            fontWeight = FontWeight.Medium,
                        )
                    }

                    // Botón Reagendar
                    Button(
                        onClick = onRescheduleClick,
                        modifier = Modifier.weight(1f).height(Dimensions.buttonHeight),
                        colors =
                            ButtonDefaults.buttonColors(
                                containerColor = colorScheme.primary,
                                contentColor = colorScheme.onPrimary,
                            ),
                        shape = CircleShape,
                        elevation = ButtonDefaults.buttonElevation(Elevation.level2),
                    ) {
                        Icon(
                            Icons.Default.Edit,
                            contentDescription = null,
                            modifier = Modifier.size(Dimensions.iconButton),
                        )
                        Spacer(modifier = Modifier.width(Spacing.xs))
                        Text(
                            stringResource(R.string.auto_reagendar),
                            style = typography.labelLarge,
                            fontWeight = FontWeight.Medium,
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
    isDark: Boolean,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(Spacing.m),
            shape = shapes.extraLarge,
            colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
            elevation = CardDefaults.cardElevation(Elevation.level4),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .padding(Spacing.l),
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Text(
                        text = stringResource(R.string.auto_informacion_de_la_terapia),
                        style = typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.primary,
                    )
                    IconButton(onClick = onDismiss) {
                        Icon(
                            Icons.Default.Close,
                            contentDescription = stringResource(R.string.auto_cerrar),
                            tint = colorScheme.onSurfaceVariant,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.l))

                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.medium,
                    color = colorScheme.primaryContainer.copy(alpha = 0.35f),
                ) {
                    Column(
                        modifier = Modifier.padding(Spacing.l),
                        horizontalAlignment = Alignment.CenterHorizontally,
                    ) {
                        Icon(
                            Icons.Default.MedicalServices,
                            contentDescription = null,
                            modifier = Modifier.size(Dimensions.iconExtraLarge),
                            tint = colorScheme.primary,
                        )
                        Spacer(modifier = Modifier.height(Spacing.sm))
                        Text(
                            text = cita.tipoTerapia ?: stringResource(R.string.cita_terapia_no_especificada),
                            style = typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                            color = colorScheme.primary,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.m))

                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.medium,
                    colors =
                        CardDefaults.cardColors(
                            containerColor = colorScheme.surfaceContainerLow,
                        ),
                ) {
                    Row(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(Spacing.m),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(Spacing.m),
                    ) {
                        Box(
                            modifier =
                                Modifier
                                    .size(Dimensions.avatarLarge)
                                    .clip(shapes.medium)
                                    .background(colorScheme.primaryContainer.copy(alpha = 0.5f)),
                            contentAlignment = Alignment.Center,
                        ) {
                            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                Text(
                                    text = "${cita.durationMinutes ?: 60}",
                                    style = typography.headlineMedium,
                                    fontWeight = FontWeight.Bold,
                                    color = colorScheme.primary,
                                )
                                Text(
                                    text = stringResource(R.string.auto_minutos),
                                    style = typography.labelSmall,
                                    color = colorScheme.primary,
                                )
                            }
                        }

                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = stringResource(R.string.auto_duracion_de_la_sesion),
                                style = typography.labelSmall,
                                color = colorScheme.onSurfaceVariant,
                            )
                            Text(
                                text = stringResource(R.string.cita_duracion_minutos_valor, cita.durationMinutes ?: 60),
                                style = typography.titleMedium,
                                fontWeight = FontWeight.Bold,
                                color = colorScheme.onSurface,
                            )
                            Text(
                                text =
                                    if ((cita.durationMinutes ?: 60) <= 60) {
                                        stringResource(R.string.cita_sesion_estandar)
                                    } else {
                                        stringResource(R.string.cita_sesion_extendida)
                                    },
                                style = typography.bodySmall,
                                color = colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.sm))

                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.medium,
                    color = colorScheme.surfaceContainerLow,
                ) {
                    Column(
                        modifier = Modifier.padding(Spacing.m),
                    ) {
                        Text(
                            text = stringResource(R.string.auto_recomendaciones),
                            style = typography.labelLarge,
                            fontWeight = FontWeight.Bold,
                            color = colorScheme.primary,
                        )
                        Spacer(modifier = Modifier.height(Spacing.s))
                        Text(
                            text = stringResource(R.string.auto__llega_5_minutos),
                            style = typography.bodySmall,
                            color = colorScheme.onSurfaceVariant,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.l))

                Button(
                    onClick = onDismiss,
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .height(Dimensions.buttonHeight),
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = colorScheme.primary,
                            contentColor = colorScheme.onPrimary,
                        ),
                    shape = CircleShape,
                    elevation = ButtonDefaults.buttonElevation(Elevation.level2),
                ) {
                    Text(
                        stringResource(R.string.auto_entendido),
                        style = typography.labelLarge,
                        fontWeight = FontWeight.Medium,
                    )
                }
            }
        }
    }
}

@Composable
fun ContactDialogAmani(
    onDismiss: () -> Unit,
    isDark: Boolean,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    val contacto = ContactoPsicologoDTO()

    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(Spacing.m),
            shape = shapes.extraLarge,
            colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
            elevation = CardDefaults.cardElevation(Elevation.level4),
        ) {
            Column(
                modifier = Modifier.padding(Spacing.l),
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Text(
                        text = stringResource(R.string.auto_contacto_amani_psicologia),
                        style = typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.primary,
                    )
                    IconButton(onClick = onDismiss) {
                        Icon(
                            Icons.Default.Close,
                            contentDescription = stringResource(R.string.auto_cerrar),
                            tint = colorScheme.onSurfaceVariant,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.l))

                ContactInfoItemAmani(
                    icon = Icons.Default.Phone,
                    text = contacto.telefono,
                    onClick = { },
                )

                ContactInfoItemAmani(
                    icon = Icons.Default.Email,
                    text = contacto.email,
                    onClick = { },
                )

                ContactInfoItemAmani(
                    icon = Icons.Default.Language,
                    text = contacto.website,
                    onClick = { },
                )

                Spacer(modifier = Modifier.height(Spacing.m))

                HorizontalDivider(
                    thickness = Dimensions.dividerThickness,
                    color = colorScheme.outlineVariant,
                )
                Spacer(modifier = Modifier.height(Spacing.m))

                Text(
                    text = stringResource(R.string.auto_horario_de_atencion),
                    style = typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = colorScheme.onSurface,
                )
                Spacer(modifier = Modifier.height(Spacing.s))

                Text(
                    text = stringResource(R.string.auto_lunes_a_viernes_900),
                    style = typography.bodyMedium,
                    color = colorScheme.onSurfaceVariant,
                )
                Text(
                    text = stringResource(R.string.auto_sabados_1000_1400),
                    style = typography.bodyMedium,
                    color = colorScheme.onSurfaceVariant,
                )
                Text(
                    text = stringResource(R.string.auto_domingos_cerrado),
                    style = typography.bodyMedium,
                    color = colorScheme.onSurfaceVariant,
                )

                Spacer(modifier = Modifier.height(Spacing.l))

                Button(
                    onClick = onDismiss,
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .height(Dimensions.buttonHeight),
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = colorScheme.primary,
                            contentColor = colorScheme.onPrimary,
                        ),
                    shape = CircleShape,
                    elevation = ButtonDefaults.buttonElevation(Elevation.level2),
                ) {
                    Text(
                        stringResource(R.string.auto_cerrar),
                        style = typography.labelLarge,
                        fontWeight = FontWeight.Medium,
                    )
                }
            }
        }
    }
}

@Composable
fun ContactInfoItemAmani(
    icon: ImageVector,
    text: String,
    onClick: () -> Unit,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    Row(
        modifier =
            Modifier
                .fillMaxWidth()
                .clickable { onClick() }
                .padding(vertical = Spacing.sm),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Icon(
            icon,
            contentDescription = null,
            modifier = Modifier.size(Dimensions.iconDefault),
            tint = colorScheme.primary,
        )
        Spacer(modifier = Modifier.width(Spacing.sm))
        Text(
            text = text,
            style = typography.bodyMedium,
            color = colorScheme.primary,
            fontWeight = FontWeight.Medium,
        )
    }
}

/**
 * Diálogo de confirmación para cancelar una cita.
 *
 * Muestra los detalles de la cita (fecha, hora) y advierte que la acción
 * es irreversible.
 *
 * @param cita Datos de la cita a cancelar.
 * @param isCancelling Indica si la cancelación está en progreso.
 * @param onConfirm Callback invocado al confirmar la cancelación.
 * @param onDismiss Callback invocado al cerrar el diálogo sin cancelar.
 */
@Composable
fun CancelConfirmationDialogAmani(
    cita: CitaPacienteViewResponseDTO,
    isCancelling: Boolean,
    onConfirm: () -> Unit,
    onDismiss: () -> Unit,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    val fechaNoDisponibleText = stringResource(R.string.cita_fecha_no_disponible)
    val horaNoDisponibleText = stringResource(R.string.cita_hora_no_disponible)

    val fechaFormateada =
        try {
            cita.fecha?.let {
                LocalDate.parse(it).format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))
            } ?: cita.fecha ?: fechaNoDisponibleText
        } catch (e: Exception) {
            cita.fecha ?: fechaNoDisponibleText
        }

    val horaFormateada =
        try {
            cita.horaInicio?.let {
                LocalTime.parse(it).format(DateTimeFormatter.ofPattern("HH:mm"))
            } ?: cita.horaInicio ?: horaNoDisponibleText
        } catch (e: Exception) {
            cita.horaInicio ?: horaNoDisponibleText
        }

    AlertDialog(
        onDismissRequest = onDismiss,
        containerColor = colorScheme.surface,
        shape = shapes.extraLarge,
        icon = {
            Icon(
                Icons.Default.Warning,
                contentDescription = null,
                tint = colorScheme.error,
                modifier = Modifier.size(Dimensions.avatarSmall),
            )
        },
        title = {
            Text(
                text = stringResource(R.string.auto_cancelar_cita),
                style = typography.titleLarge,
                fontWeight = FontWeight.Bold,
                color = colorScheme.onSurface,
            )
        },
        text = {
            Column {
                Text(
                    text = stringResource(R.string.auto_estas_seguro_de_que_2),
                    style = typography.bodyMedium,
                    color = colorScheme.onSurface,
                )
                Spacer(modifier = Modifier.height(Spacing.sm))
                Surface(
                    shape = shapes.medium,
                    color = colorScheme.primaryContainer.copy(alpha = 0.35f),
                ) {
                    Column(
                        modifier = Modifier.padding(Spacing.sm),
                    ) {
                        Text(
                            text = fechaFormateada,
                            style = typography.bodyMedium,
                            fontWeight = FontWeight.Medium,
                            color = colorScheme.primary,
                        )
                        Text(
                            text = horaFormateada,
                            style = typography.bodyMedium,
                            fontWeight = FontWeight.Medium,
                            color = colorScheme.primary,
                        )
                    }
                }
                Spacer(modifier = Modifier.height(Spacing.s))
                Text(
                    text = stringResource(R.string.auto_esta_accion_no_se),
                    style = typography.bodySmall,
                    color = colorScheme.error,
                )
            }
        },
        confirmButton = {
            Button(
                onClick = onConfirm,
                enabled = !isCancelling,
                colors =
                    ButtonDefaults.buttonColors(
                        containerColor = colorScheme.error,
                        contentColor = colorScheme.onError,
                    ),
                shape = CircleShape,
                modifier = Modifier.height(Dimensions.buttonHeight),
            ) {
                if (isCancelling) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(Dimensions.iconButton),
                        strokeWidth = Dimensions.borderMedium,
                        color = colorScheme.onError,
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                }
                Text(
                    stringResource(R.string.auto_si_cancelar),
                    style = typography.labelLarge,
                    fontWeight = FontWeight.Medium,
                )
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                shape = CircleShape,
                colors =
                    ButtonDefaults.textButtonColors(
                        contentColor = colorScheme.onSurfaceVariant,
                    ),
            ) {
                Text(
                    stringResource(R.string.auto_no_mantener),
                    style = typography.labelLarge,
                )
            }
        },
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CitaCardEditableInline(
    cita: CitaPacienteViewResponseDTO,
    viewModel: ListarCitasViewModel,
    disponibilidadDia: DisponibilidadDiaResponse?,
    onCancelEdit: () -> Unit,
    onSaveSuccess: () -> Unit,
    colors: AgendaCitaThemeColors,
    isDark: Boolean,
) {
    val context = LocalContext.current
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    val originalFecha =
        try {
            cita.fecha?.let { LocalDate.parse(it) }
        } catch (e: Exception) {
            null
        }

    val originalHora =
        try {
            cita.horaInicio?.let { LocalTime.parse(it) }
        } catch (e: Exception) {
            null
        }

    val originalModalidad =
        when (cita.modalidad?.uppercase()) {
            "LLAMADA" -> ModalidadCita.LLAMADA
            else -> ModalidadCita.PRESENCIAL
        }

    var fechaSeleccionada by remember { mutableStateOf(originalFecha) }
    var horaSeleccionada by remember { mutableStateOf(originalHora) }
    var motivo by remember { mutableStateOf(cita.motivo ?: "") }
    var modalidadSeleccionada by remember { mutableStateOf(originalModalidad) }

    val matchedTerapia =
        remember(cita.tipoTerapia, viewModel.listTerapias) {
            viewModel.listTerapias.find { it.nombre == cita.tipoTerapia }
        }
    val idTipoTerapia = matchedTerapia?.idTipo ?: 1L
    val monto = matchedTerapia?.precio ?: BigDecimal.ZERO
    val duracionMinutos = matchedTerapia?.duracionMinutos ?: cita.durationMinutes ?: 60

    val slotsLibres =
        remember(disponibilidadDia) {
            disponibilidadDia?.slotsLibres?.filter { !it.ocupado }?.map { it.hora } ?: emptyList()
        }

    val horasDisponibles =
        remember(slotsLibres, originalHora, fechaSeleccionada) {
            if (fechaSeleccionada == originalFecha && originalHora != null) {
                (listOf(originalHora) + slotsLibres).distinct().sorted()
            } else {
                slotsLibres.sorted()
            }
        }

    var horaDropdownExpanded by remember { mutableStateOf(false) }
    var isSaving by remember { mutableStateOf(false) }

    val hasChanges =
        remember(fechaSeleccionada, horaSeleccionada, motivo, modalidadSeleccionada) {
            fechaSeleccionada != originalFecha ||
                horaSeleccionada != originalHora ||
                motivo != (cita.motivo ?: "") ||
                modalidadSeleccionada != originalModalidad
        }

    val saveEnabled = fechaSeleccionada != null && horaSeleccionada != null && hasChanges && !isSaving

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = shapes.large,
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level3),
        colors = CardDefaults.cardColors(containerColor = colors.surface),
    ) {
        Column(
            modifier = Modifier.padding(Spacing.m),
            verticalArrangement = Arrangement.spacedBy(Spacing.sm),
        ) {
            Text(
                text = stringResource(R.string.auto_reagendar_cita),
                style = typography.titleMedium,
                fontWeight = FontWeight.Bold,
                color = colors.primary,
            )

            // Date Selection
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.SpaceBetween,
            ) {
                Column {
                    Text(
                        text = stringResource(R.string.auto_fecha),
                        style = typography.labelMedium,
                        fontWeight = FontWeight.SemiBold,
                        color = colors.textSecondary,
                    )
                    Text(
                        text =
                            fechaSeleccionada?.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))
                                ?: stringResource(R.string.cita_no_seleccionada),
                        style = typography.bodyMedium,
                        color = colors.textPrimary,
                    )
                }
                Button(
                    onClick = {
                        val calendar = Calendar.getInstance()
                        val datePickerDialog =
                            android.app.DatePickerDialog(
                                context,
                                { _, year, month, dayOfMonth ->
                                    val selected = LocalDate.of(year, month + 1, dayOfMonth)
                                    fechaSeleccionada = selected
                                    horaSeleccionada = null
                                    viewModel.cargarDisponibilidadDia(selected, cita.idPsicologo, duracionMinutos)
                                },
                                fechaSeleccionada?.year ?: calendar.get(Calendar.YEAR),
                                fechaSeleccionada?.monthValue?.minus(1) ?: calendar.get(Calendar.MONTH),
                                fechaSeleccionada?.dayOfMonth ?: calendar.get(Calendar.DAY_OF_MONTH),
                            )
                        datePickerDialog.show()
                    },
                    colors = ButtonDefaults.buttonColors(containerColor = colors.primary),
                    shape = shapes.small,
                ) {
                    Text(
                        stringResource(R.string.cita_cambiar_fecha),
                        color = MaterialTheme.colorScheme.onPrimary,
                        style = typography.labelMedium,
                    )
                }
            }

            // Time Slot Dropdown
            if (fechaSeleccionada != null) {
                Column(modifier = Modifier.fillMaxWidth()) {
                    Text(
                        text = stringResource(R.string.cita_hora_label),
                        style = typography.labelMedium,
                        fontWeight = FontWeight.SemiBold,
                        color = colors.textSecondary,
                        modifier = Modifier.padding(bottom = Spacing.xs),
                    )
                    ExposedDropdownMenuBox(
                        expanded = horaDropdownExpanded,
                        onExpandedChange = { horaDropdownExpanded = it },
                    ) {
                        OutlinedTextField(
                            value =
                                horaSeleccionada?.format(DateTimeFormatter.ofPattern("HH:mm"))
                                    ?: stringResource(R.string.cita_selecciona_horario),
                            onValueChange = {},
                            readOnly = true,
                            trailingIcon = {
                                ExposedDropdownMenuDefaults.TrailingIcon(expanded = horaDropdownExpanded)
                            },
                            modifier =
                                Modifier
                                    .fillMaxWidth()
                                    .menuAnchor(type = ExposedDropdownMenuAnchorType.PrimaryNotEditable, enabled = true),
                            shape = shapes.medium,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedTextColor = colors.textPrimary,
                                    unfocusedTextColor = colors.textPrimary,
                                    focusedBorderColor = colors.primary,
                                    unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.5f),
                                    focusedContainerColor = colors.textFieldContainer,
                                    unfocusedContainerColor = colors.textFieldContainer,
                                ),
                        )
                        ExposedDropdownMenu(
                            expanded = horaDropdownExpanded,
                            onDismissRequest = { horaDropdownExpanded = false },
                        ) {
                            if (horasDisponibles.isEmpty()) {
                                DropdownMenuItem(
                                    text = {
                                        Text(
                                            stringResource(R.string.cita_sin_horarios_disponibles),
                                            style = typography.bodyMedium,
                                            color = colors.textSecondary,
                                        )
                                    },
                                    onClick = {},
                                )
                            } else {
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
                                                    text = hora.format(DateTimeFormatter.ofPattern("HH:mm")),
                                                    style = typography.bodyMedium,
                                                    color = colors.textPrimary,
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

            // Modality Selection
            Column(modifier = Modifier.fillMaxWidth()) {
                Text(
                    text = stringResource(R.string.auto_modalidad),
                    style = typography.labelMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.textSecondary,
                )
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(Spacing.m),
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        RadioButton(
                            selected = modalidadSeleccionada == ModalidadCita.PRESENCIAL,
                            onClick = { modalidadSeleccionada = ModalidadCita.PRESENCIAL },
                            colors = RadioButtonDefaults.colors(selectedColor = colors.primary),
                        )
                        Text(
                            stringResource(R.string.auto_presencial),
                            color = colors.textPrimary,
                            style = typography.bodyMedium,
                        )
                    }
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        RadioButton(
                            selected = modalidadSeleccionada == ModalidadCita.LLAMADA,
                            onClick = { modalidadSeleccionada = ModalidadCita.LLAMADA },
                            colors = RadioButtonDefaults.colors(selectedColor = colors.primary),
                        )
                        Text(
                            stringResource(R.string.auto_llamada),
                            color = colors.textPrimary,
                            style = typography.bodyMedium,
                        )
                    }
                }
            }

            // Motivo text field
            OutlinedTextField(
                value = motivo,
                onValueChange = { motivo = it },
                label = { Text(stringResource(R.string.auto_motivo_de_la_cita)) },
                placeholder = { Text(stringResource(R.string.cita_motivo_placeholder_inline)) },
                modifier = Modifier.fillMaxWidth(),
                maxLines = 2,
                shape = shapes.medium,
                colors =
                    OutlinedTextFieldDefaults.colors(
                        focusedTextColor = colors.textPrimary,
                        unfocusedTextColor = colors.textPrimary,
                        focusedBorderColor = colors.primary,
                        unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.5f),
                        focusedContainerColor = colors.textFieldContainer,
                        unfocusedContainerColor = colors.textFieldContainer,
                    ),
            )

            // Buttons
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(Spacing.s),
            ) {
                OutlinedButton(
                    onClick = onCancelEdit,
                    modifier = Modifier.weight(1f).height(Dimensions.buttonHeight),
                    shape = shapes.medium,
                    colors = ButtonDefaults.outlinedButtonColors(contentColor = colors.error),
                    border = BorderStroke(Dimensions.borderThin, colors.error),
                ) {
                    Text(
                        stringResource(R.string.auto_cancelar),
                        style = typography.labelLarge,
                    )
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
                                },
                            )
                        }
                    },
                    enabled = saveEnabled,
                    modifier = Modifier.weight(1f).height(Dimensions.buttonHeight),
                    shape = shapes.medium,
                    colors = ButtonDefaults.buttonColors(containerColor = colors.primary),
                ) {
                    if (isSaving) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(Dimensions.iconMedium),
                            strokeWidth = Dimensions.borderMedium,
                            color = MaterialTheme.colorScheme.onPrimary,
                        )
                    } else {
                        Text(
                            stringResource(R.string.auto_guardar),
                            color = MaterialTheme.colorScheme.onPrimary,
                            style = typography.labelLarge,
                        )
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
    val textFieldText: Color,
)

private val previewCitasPaciente =
    listOf(
        CitaPacienteViewResponseDTO(
            idCita = 1L,
            fecha = "2026-10-28",
            horaInicio = "10:00",
            horaFin = "11:00",
            durationMinutes = 60,
            estado = "CONFIRMADA",
            modalidad = "LLAMADA",
            motivo = "Seguimiento quincenal de regulación emocional",
            tipoTerapia = "Terapia Cognitivo-Conductual",
            minutosRestantes = 1440L,
            esProxima = true,
            metodoPago = MetodoPago.TARJETA,
            estadoPago = EstadoPago.PAGADO,
        ),
        CitaPacienteViewResponseDTO(
            idCita = 2L,
            fecha = "2026-11-04",
            horaInicio = "17:00",
            horaFin = "18:00",
            durationMinutes = 60,
            estado = "PENDIENTE",
            modalidad = "PRESENCIAL",
            motivo = "Sesión de revisión",
            tipoTerapia = "Terapia Individual",
            minutosRestantes = 10080L,
            esProxima = false,
            metodoPago = MetodoPago.EFECTIVO,
            estadoPago = EstadoPago.PENDIENTE,
        ),
    )

@Preview(showBackground = true, name = "AgendaCita - Light")
@Composable
private fun AgendaCitaScreenLightPreview() {
    AppTheme(darkTheme = false) {
        AgendaCitaContent(
            citas = previewCitasPaciente,
            isLoading = false,
            citaIdEditando = null,
            colors = rememberAgendaCitaThemeColors(),
            isDark = false,
            onBackClick = {},
            onRefreshClick = {},
            onContactClick = {},
            onAddCitaClick = {},
            onCancelCitaClick = {},
            onRescheduleCitaClick = {},
            onCardClick = {},
            onTerapiaClick = {},
            onVideoCallClick = {},
            inlineEditCardContent = {},
        )
    }
}

@Preview(
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
    name = "AgendaCita - Dark",
)
@Composable
private fun AgendaCitaScreenDarkPreview() {
    AppTheme(darkTheme = true) {
        AgendaCitaContent(
            citas = previewCitasPaciente,
            isLoading = false,
            citaIdEditando = null,
            colors = rememberAgendaCitaThemeColors(),
            isDark = true,
            onBackClick = {},
            onRefreshClick = {},
            onContactClick = {},
            onAddCitaClick = {},
            onCancelCitaClick = {},
            onRescheduleCitaClick = {},
            onCardClick = {},
            onTerapiaClick = {},
            onVideoCallClick = {},
            inlineEditCardContent = {},
        )
    }
}

@Preview(
    showBackground = true,
    fontScale = 1.5f,
    name = "AgendaCita - FontScale 1.5x (Empty)",
)
@Composable
private fun AgendaCitaScreenFontScalePreview() {
    AppTheme(darkTheme = false) {
        AgendaCitaContent(
            citas = emptyList(),
            isLoading = false,
            citaIdEditando = null,
            colors = rememberAgendaCitaThemeColors(),
            isDark = false,
            onBackClick = {},
            onRefreshClick = {},
            onContactClick = {},
            onAddCitaClick = {},
            onCancelCitaClick = {},
            onRescheduleCitaClick = {},
            onCardClick = {},
            onTerapiaClick = {},
            onVideoCallClick = {},
            inlineEditCardContent = {},
        )
    }
}
