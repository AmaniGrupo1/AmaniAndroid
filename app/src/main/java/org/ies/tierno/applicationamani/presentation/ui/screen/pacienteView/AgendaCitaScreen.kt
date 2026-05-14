package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView
import androidx.compose.foundation.shape.CircleShape

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
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.ContactSupport
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Cancel
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Event
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Language
import androidx.compose.material.icons.filled.Phone
import androidx.compose.material.icons.filled.Psychology
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Timer
import androidx.compose.material.icons.filled.Warning
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.FloatingActionButtonDefaults
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
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

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AgendaCitaScreen(
    navController: NavController,
    viewModel: ListarCitasViewModel = koinViewModel()
) {
    val context = LocalContext.current
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    val isDark = isDarkTheme()
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    val citas = viewModel.citas
    val isLoading = viewModel.isLoading.value
    val error = viewModel.error.value
    val isCancelling = viewModel.isCancelling.value

    var showContactDialog by remember { mutableStateOf(false) }
    var showCancelDialog by remember { mutableStateOf(false) }
    var citaToCancel by remember { mutableStateOf<CitaPacienteViewResponseDTO?>(null) }
    var showTerapiaInfoDialog by remember { mutableStateOf(false) }
    var terapiaInfoSeleccionada by remember { mutableStateOf<CitaPacienteViewResponseDTO?>(null) }

    // Cargar citas al iniciar
    LaunchedEffect(Unit) {
        viewModel.cargarCitas()
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
                        style = typography.titleLarge,
                        fontWeight = FontWeight.SemiBold,
                        color = if (isDark) colorScheme.onSurface else Color.White,
                        fontFamily = roboto
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Volver", tint = Color.White)
                    }
                },
                actions = {
                    IconButton(onClick = { viewModel.refrescar() }) {
                        Icon(Icons.Default.Refresh, contentDescription = "Refrescar", tint = if (isDark) colorScheme.onSurface else Color.White)
                    }
                    IconButton(onClick = { showContactDialog = true }) {
                        Icon(Icons.AutoMirrored.Filled.ContactSupport, contentDescription = "Contacto", tint = if (isDark) colorScheme.onSurface else Color.White)
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = colorScheme.primary
                )
            )
        },
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    navController.navigate(Screens.citas.route)
                },
                containerColor = colorScheme.primary,
                contentColor = colorScheme.onPrimary,
                shape = shapes.large,
                elevation = FloatingActionButtonDefaults.elevation(8.dp)
            ) {
                Icon(Icons.Default.Add, contentDescription = "Agendar Cita", modifier = Modifier.size(24.dp))
            }
        },
        containerColor = colorScheme.background
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .background(
                    brush = Brush.verticalGradient(
                        colors = if (isDark) {
                            listOf(colorScheme.background, colorScheme.background)
                        } else {
                            listOf(colorScheme.secondaryContainer, Color.White)
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
                            CircularProgressIndicator(color = colorScheme.primary)
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                "Cargando tus citas...",
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
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
                                tint = colorScheme.primary.copy(alpha = 0.3f)
                            )
                            Spacer(modifier = Modifier.height(20.dp))
                            Text(
                                text = "No tienes citas agendadas",
                                style = typography.titleMedium,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.onSurface,
                                fontFamily = roboto
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = "Presiona el boton + para agendar una nueva cita",
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                                fontFamily = roboto
                            )
                        }
                    }
                }

                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        items(citas) { cita ->
                            CitaCardAmani(
                                cita = cita,
                                onCancelClick = {
                                    citaToCancel = cita
                                    showCancelDialog = true
                                },
                                onRescheduleClick = {
                                    val citaId = cita.idCita
                                    if (citaId != null && citaId > 0) {
                                        navController.navigate(Screens.editarCitaScreen.pass(citaId.toString()))
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
                                isDark = isDark
                            )
                        }
                    }
                }
            }
        }
    }

    if (showContactDialog) {
        ContactDialogAmani(
            onDismiss = { showContactDialog = false },
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
            isDark = isDark
        )
    }

    // Dialogo de confirmacion de cancelacion
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
            }
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
    isDark: Boolean
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

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

    val successGreen = Color(0xFF4CAF50)
    val warningOrange = Color(0xFFFF9800)

    val estadoColor = when (cita.estado?.lowercase()) {
        "confirmada" -> successGreen
        "pendiente" -> warningOrange
        "cancelada" -> colorScheme.error
        "completada" -> colorScheme.onSurfaceVariant
        else -> colorScheme.onSurfaceVariant
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
        shape = shapes.medium,
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
        colors = CardDefaults.cardColors(
            containerColor = if (cita.estado?.lowercase() == "cancelada")
                colorScheme.surface.copy(alpha = 0.7f)
            else
                colorScheme.surface
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
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
                        tint = colorScheme.primary,
                        modifier = Modifier.size(20.dp)
                    )
                    Text(
                        text = fecha?.format(dateFormatter)?.replaceFirstChar { it.uppercase() }
                            ?: cita.fecha ?: "Fecha no disponible",
                        style = typography.bodySmall,
                        fontWeight = FontWeight.Medium,
                        color = colorScheme.onSurface,
                        fontFamily = roboto
                    )
                }

                Surface(
                    shape = shapes.medium,
                    color = estadoColor.copy(alpha = 0.1f)
                ) {
                    Text(
                        text = estadoTexto,
                        style = typography.labelSmall,
                        fontWeight = FontWeight.Bold,
                        color = estadoColor,
                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                        fontFamily = roboto
                    )
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(20.dp)
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Schedule,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp),
                        tint = colorScheme.onSurfaceVariant
                    )
                    Spacer(modifier = Modifier.width(6.dp))
                    Text(
                        text = if (horaInicio != null && horaFin != null)
                            "${horaInicio.format(timeFormatter)} - ${horaFin.format(timeFormatter)}"
                        else
                            "${cita.horaInicio ?: "?"} - ${cita.horaFin ?: "?"}",
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                        fontFamily = roboto
                    )
                }

                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Timer,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp),
                        tint = colorScheme.onSurfaceVariant
                    )
                    Spacer(modifier = Modifier.width(6.dp))
                    Text(
                        text = "${cita.durationMinutes ?: 0} min",
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                        fontFamily = roboto
                    )
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Tipo de terapia y modalidad
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                cita.tipoTerapia?.let { terapia ->
                    Surface(
                        shape = shapes.small,
                        color = colorScheme.primary.copy(alpha = 0.1f),
                        modifier = Modifier.clickable { onTerapiaClick() }
                    ) {
                        Row(
                            modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(6.dp)
                        ) {
                            Text(
                                text = terapia,
                                style = typography.labelMedium,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.primary,
                                fontFamily = roboto
                            )
                            Icon(
                                Icons.Default.Info,
                                contentDescription = "Info terapia",
                                modifier = Modifier.size(14.dp),
                                tint = colorScheme.primary
                            )
                        }
                    }
                }

                cita.modalidad?.let { modalidad ->
                    Surface(
                        shape = shapes.small,
                        color = colorScheme.primaryContainer.copy(alpha = 0.1f)
                    ) {
                        Text(
                            text = modalidad,
                            style = typography.labelMedium,
                            modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp),
                            color = colorScheme.onPrimaryContainer,
                            fontFamily = roboto
                        )
                    }
                }
            }

            cita.motivo?.let { motivo ->
                if (motivo.isNotBlank()) {
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = motivo,
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis,
                        fontFamily = roboto
                    )
                }
            }

            if (cita.estado?.lowercase() !in listOf("cancelada", "completada")) {
                Spacer(modifier = Modifier.height(14.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    // Boton Cancelar
                    OutlinedButton(
                        onClick = onCancelClick,
                        modifier = Modifier.weight(1f).height(44.dp),
                        colors = ButtonDefaults.outlinedButtonColors(
                            contentColor = colorScheme.error
                        ),
                        shape = CircleShape,
                        border = ButtonDefaults.outlinedButtonBorder.copy(
                            brush = Brush.horizontalGradient(listOf(colorScheme.error, colorScheme.error))
                        )
                    ) {
                        Icon(
                            Icons.Default.Cancel,
                            contentDescription = null,
                            modifier = Modifier.size(18.dp),
                            tint = colorScheme.error
                        )
                        Spacer(modifier = Modifier.width(6.dp))
                        Text("Cancelar", style = typography.labelLarge, fontWeight = FontWeight.Medium, fontFamily = roboto)
                    }

                    // Boton Reagendar
                    Button(
                        onClick = onRescheduleClick,
                        modifier = Modifier.weight(1f).height(44.dp),
                        colors = ButtonDefaults.buttonColors(
                            containerColor = colorScheme.primary
                        ),
                        shape = CircleShape,
                        elevation = ButtonDefaults.buttonElevation(4.dp)
                    ) {
                        Icon(
                            Icons.Default.Edit,
                            contentDescription = null,
                            modifier = Modifier.size(18.dp),
                            tint = if (isDark) colorScheme.onSurface else Color.White
                        )
                        Spacer(modifier = Modifier.width(6.dp))
                        Text(
                            "Reagendar",
                            style = typography.labelLarge,
                            fontWeight = FontWeight.Medium,
                            color = if (isDark) colorScheme.onSurface else Color.White,
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
    isDark: Boolean
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .padding(20.dp),
            shape = shapes.extraLarge,
            colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
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
                        text = "Informacion de la Terapia",
                        style = typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.primary,
                        fontFamily = roboto
                    )
                    IconButton(onClick = onDismiss) {
                        Icon(Icons.Default.Close, contentDescription = "Cerrar", tint = colorScheme.onSurfaceVariant)
                    }
                }

                Spacer(modifier = Modifier.height(20.dp))

                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.medium,
                    color = colorScheme.primary.copy(alpha = 0.08f)
                ) {
                    Column(
                        modifier = Modifier.padding(24.dp),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Icon(
                            Icons.Default.Psychology,
                            contentDescription = null,
                            modifier = Modifier.size(56.dp),
                            tint = colorScheme.primary
                        )
                        Spacer(modifier = Modifier.height(12.dp))
                        Text(
                            text = cita.tipoTerapia ?: "Terapia no especificada",
                            style = typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                            color = colorScheme.primary,
                            fontFamily = roboto
                        )
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.medium,
                    colors = CardDefaults.cardColors(
                        containerColor = colorScheme.primaryContainer.copy(alpha = 0.1f)
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
                                .clip(shapes.medium)
                                .background(colorScheme.primary.copy(alpha = 0.1f)),
                            contentAlignment = Alignment.Center
                        ) {
                            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                Text(
                                    text = "${cita.durationMinutes ?: 60}",
                                    style = typography.headlineMedium,
                                    fontWeight = FontWeight.Bold,
                                    color = colorScheme.primary,
                                    fontFamily = roboto
                                )
                                Text(
                                    text = "minutos",
                                    style = typography.labelSmall,
                                    color = colorScheme.primary,
                                    fontFamily = roboto
                                )
                            }
                        }

                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = "Duracion de la sesion",
                                style = typography.labelSmall,
                                color = colorScheme.onSurfaceVariant,
                                fontFamily = roboto
                            )
                            Text(
                                text = "${cita.durationMinutes ?: 60} minutos",
                                style = typography.titleMedium,
                                fontWeight = FontWeight.Bold,
                                color = colorScheme.onSurface,
                                fontFamily = roboto
                            )
                            Text(
                                text = if ((cita.durationMinutes ?: 60) <= 60)
                                    "Sesion estandar de una hora"
                                else
                                    "Sesion extendida para mayor profundidad",
                                style = typography.bodySmall,
                                color = colorScheme.onSurfaceVariant,
                                fontFamily = roboto
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(12.dp))

                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.medium,
                    color = colorScheme.primary.copy(alpha = 0.05f)
                ) {
                    Column(
                        modifier = Modifier.padding(16.dp)
                    ) {
                        Text(
                            text = "Recomendaciones",
                            style = typography.labelLarge,
                            fontWeight = FontWeight.Bold,
                            color = colorScheme.primary,
                            fontFamily = roboto
                        )
                        Spacer(modifier = Modifier.height(10.dp))
                        Text(
                            text = "- Llega 5 minutos antes para prepararte\n- Ten lista tu identificacion\n- Prepara tus preguntas o temas a tratar\n- Busca un lugar tranquilo si es online",
                            style = typography.bodySmall,
                            color = colorScheme.onSurfaceVariant,
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
                        containerColor = colorScheme.primary
                    ),
                    shape = CircleShape,
                    elevation = ButtonDefaults.buttonElevation(4.dp)
                ) {
                    Text(
                        "Entendido",
                        style = typography.labelLarge,
                        fontWeight = FontWeight.Medium,
                        color = if (isDark) colorScheme.onSurface else Color.White,
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
    isDark: Boolean
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val contacto = ContactoPsicologoDTO()

    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .padding(20.dp),
            shape = shapes.extraLarge,
            colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
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
                        text = "Contacto Amani Psicologia",
                        style = typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.primary,
                        fontFamily = roboto
                    )
                    IconButton(onClick = onDismiss) {
                        Icon(Icons.Default.Close, contentDescription = "Cerrar", tint = colorScheme.onSurfaceVariant)
                    }
                }

                Spacer(modifier = Modifier.height(20.dp))

                ContactInfoItemAmani(
                    icon = Icons.Default.Phone,
                    text = contacto.telefono,
                    onClick = { },
                    roboto = roboto
                )

                ContactInfoItemAmani(
                    icon = Icons.Default.Email,
                    text = contacto.email,
                    onClick = { },
                    roboto = roboto
                )

                ContactInfoItemAmani(
                    icon = Icons.Default.Language,
                    text = contacto.website,
                    onClick = { },
                    roboto = roboto
                )

                Spacer(modifier = Modifier.height(16.dp))

                HorizontalDivider(
                    modifier = Modifier,
                    thickness = 1.dp,
                    color = colorScheme.outlineVariant
                )
                Spacer(modifier = Modifier.height(16.dp))

                Text(
                    text = "Horario de atencion",
                    style = typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = colorScheme.onSurface,
                    fontFamily = roboto
                )
                Spacer(modifier = Modifier.height(10.dp))

                Text(
                    text = "Lunes a Viernes: 9:00 - 20:00",
                    style = typography.bodyMedium,
                    color = colorScheme.onSurfaceVariant,
                    fontFamily = roboto
                )
                Text(
                    text = "Sabados: 10:00 - 14:00",
                    style = typography.bodyMedium,
                    color = colorScheme.onSurfaceVariant,
                    fontFamily = roboto
                )
                Text(
                    text = "Domingos: Cerrado",
                    style = typography.bodyMedium,
                    color = colorScheme.onSurfaceVariant,
                    fontFamily = roboto
                )

                Spacer(modifier = Modifier.height(24.dp))

                Button(
                    onClick = onDismiss,
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(48.dp),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = colorScheme.primary
                    ),
                    shape = CircleShape,
                    elevation = ButtonDefaults.buttonElevation(4.dp)
                ) {
                    Text(
                        "Cerrar",
                        style = typography.labelLarge,
                        fontWeight = FontWeight.Medium,
                        color = if (isDark) colorScheme.onSurface else Color.White,
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
    roboto: FontFamily
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
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
            tint = colorScheme.primary
        )
        Spacer(modifier = Modifier.width(14.dp))
        Text(
            text = text,
            style = typography.bodyMedium,
            color = colorScheme.primary,
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
    onDismiss: () -> Unit
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

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
        containerColor = colorScheme.surface,
        shape = shapes.extraLarge,
        icon = {
            Icon(
                Icons.Default.Warning,
                contentDescription = null,
                tint = colorScheme.error,
                modifier = Modifier.size(40.dp)
            )
        },
        title = {
            Text(
                text = "Cancelar Cita",
                style = typography.titleLarge,
                fontWeight = FontWeight.Bold,
                color = colorScheme.onSurface,
                fontFamily = roboto
            )
        },
        text = {
            Column {
                Text(
                    text = "Estas seguro de que deseas cancelar esta cita?",
                    style = typography.bodyMedium,
                    color = colorScheme.onSurface,
                    fontFamily = roboto
                )
                Spacer(modifier = Modifier.height(12.dp))
                Surface(
                    shape = shapes.medium,
                    color = colorScheme.primaryContainer.copy(alpha = 0.1f)
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp)
                    ) {
                        Text(
                            text = "$fechaFormateada",
                            style = typography.bodyMedium,
                            fontWeight = FontWeight.Medium,
                            color = colorScheme.primary,
                            fontFamily = roboto
                        )
                        Text(
                            text = "$horaFormateada",
                            style = typography.bodyMedium,
                            fontWeight = FontWeight.Medium,
                            color = colorScheme.primary,
                            fontFamily = roboto
                        )
                    }
                }
                Spacer(modifier = Modifier.height(10.dp))
                Text(
                    text = "Esta accion no se puede deshacer.",
                    style = typography.bodySmall,
                    color = colorScheme.error,
                    fontFamily = roboto
                )
            }
        },
        confirmButton = {
            Button(
                onClick = onConfirm,
                enabled = !isCancelling,
                colors = ButtonDefaults.buttonColors(
                    containerColor = colorScheme.error,
                    contentColor = Color.White
                ),
                shape = CircleShape,
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
                Text("Si, cancelar", style = typography.labelLarge, fontWeight = FontWeight.Medium, fontFamily = roboto)
            }
        },
        dismissButton = {
            TextButton(
                onClick = onDismiss,
                shape = CircleShape,
                colors = ButtonDefaults.textButtonColors(
                    contentColor = colorScheme.onSurfaceVariant
                )
            ) {
                Text("No, mantener", style = typography.labelLarge, fontFamily = roboto)
            }
        }
    )
}

// Clase auxiliar para los colores del tema eliminada, se usa MaterialTheme directamente