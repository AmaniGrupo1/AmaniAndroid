package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

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
import androidx.compose.material.icons.filled.Language
import androidx.compose.material.icons.filled.Phone
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.dto.CitaPacienteViewResponseDTO
import org.ies.tierno.applicationamani.dto.ContactoPsicologoDTO
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
    val citas = viewModel.citas
    val isLoading = viewModel.isLoading.value
    val error = viewModel.error.value
    val isCancelling = viewModel.isCancelling.value

    // Estado para el diálogo de contacto
    var showContactDialog by remember { mutableStateOf(false) }

    // Estado para el diálogo de confirmación de cancelación
    var showCancelDialog by remember { mutableStateOf(false) }
    var citaToCancel by remember { mutableStateOf<CitaPacienteViewResponseDTO?>(null) }

    // Cargar citas al iniciar
    LaunchedEffect(Unit) {
        viewModel.cargarCitas()
    }

    // Mostrar toast en caso de error
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
                        fontWeight = FontWeight.Bold
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Volver")
                    }
                },
                actions = {
                    IconButton(onClick = { viewModel.refrescar() }) {
                        Icon(Icons.Default.Refresh, contentDescription = "Refrescar")
                    }
                    IconButton(onClick = { showContactDialog = true }) {
                        Icon(Icons.AutoMirrored.Filled.ContactSupport, contentDescription = "Contacto")
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.primary,
                    titleContentColor = Color.White,
                    navigationIconContentColor = Color.White,
                    actionIconContentColor = Color.White
                )
            )
        },
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    navController.navigate("agendar_cita")
                },
                containerColor = MaterialTheme.colorScheme.primary,
                contentColor = Color.White
            ) {
                Icon(Icons.Default.Add, contentDescription = "Agendar Cita")
            }
        }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
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
                            CircularProgressIndicator()
                            Spacer(modifier = Modifier.height(16.dp))
                            Text("Cargando tus citas...")
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
                                modifier = Modifier.size(64.dp),
                                tint = MaterialTheme.colorScheme.primary.copy(alpha = 0.5f)
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "No tienes citas agendadas",
                                fontSize = 18.sp,
                                color = Color.Gray
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = "Presiona el botón + para agendar una nueva cita",
                                fontSize = 14.sp,
                                color = Color.Gray
                            )
                        }
                    }
                }

                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        items(citas) { cita ->
                            CitaCard(
                                cita = cita,
                                onCancelClick = {
                                    citaToCancel = cita
                                    showCancelDialog = true
                                },
                                onRescheduleClick = {
                                    navController.navigate("reagendar_cita/${cita.idCita}")
                                },
                                onCardClick = {
                                    viewModel.selectCita(cita)
                                }
                            )
                        }
                    }
                }
            }
        }
    }

    // Diálogo de contacto
    if (showContactDialog) {
        ContactDialog(onDismiss = { showContactDialog = false })
    }

    // Diálogo de confirmación de cancelación
    if (showCancelDialog && citaToCancel != null) {
        CancelConfirmationDialog(
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
fun CitaCard(
    cita: CitaPacienteViewResponseDTO,
    onCancelClick: () -> Unit,
    onRescheduleClick: () -> Unit,
    onCardClick: () -> Unit
) {
    val dateFormatter = DateTimeFormatter.ofPattern("EEEE, d 'de' MMMM 'de' yyyy", Locale.Builder().setLanguage("es").setRegion("ES").build())
    val timeFormatter = DateTimeFormatter.ofPattern("HH:mm")

    // Parsear fechas y horas de forma segura
    val fecha = try {
        cita.fecha?.let { LocalDate.parse(it) }
    } catch (e: Exception) {
        null
    }

    val horaInicio = try {
        cita.horaInicio?.let { LocalTime.parse(it) }
    } catch (e: Exception) {
        null
    }

    val horaFin = try {
        cita.horaFin?.let { LocalTime.parse(it) }
    } catch (e: Exception) {
        null
    }

    val estadoColor = when (cita.estado?.lowercase()) {
        "confirmada" -> Color(0xFF4CAF50)
        "pendiente" -> Color(0xFFFF9800)
        "cancelada" -> Color(0xFFF44336)
        "completada" -> Color(0xFF9E9E9E)
        else -> Color.Gray
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
        shape = RoundedCornerShape(16.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
        colors = CardDefaults.cardColors(
            containerColor = if (cita.estado?.lowercase() == "cancelada")
                Color(0xFFF5F5F5)
            else
                MaterialTheme.colorScheme.surface
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            // Header con fecha y estado
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
                        tint = MaterialTheme.colorScheme.primary,
                        modifier = Modifier.size(20.dp)
                    )
                    Text(
                        text = fecha?.format(dateFormatter)?.replaceFirstChar { it.uppercase() }
                            ?: cita.fecha ?: "Fecha no disponible",
                        fontSize = 14.sp,
                        fontWeight = FontWeight.Medium,
                        color = MaterialTheme.colorScheme.onSurface
                    )
                }

                Surface(
                    shape = RoundedCornerShape(12.dp),
                    color = estadoColor.copy(alpha = 0.1f)
                ) {
                    Text(
                        text = estadoTexto,
                        fontSize = 12.sp,
                        fontWeight = FontWeight.Bold,
                        color = estadoColor,
                        modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
                    )
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Hora y duración
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Schedule,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp),
                        tint = Color.Gray
                    )
                    Spacer(modifier = Modifier.width(4.dp))
                    Text(
                        text = if (horaInicio != null && horaFin != null)
                            "${horaInicio.format(timeFormatter)} - ${horaFin.format(timeFormatter)}"
                        else
                            "${cita.horaInicio ?: "?"} - ${cita.horaFin ?: "?"}",
                        fontSize = 14.sp,
                        color = Color.Gray
                    )
                }

                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Timer,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp),
                        tint = Color.Gray
                    )
                    Spacer(modifier = Modifier.width(4.dp))
                    Text(
                        text = "${cita.durationMinutes ?: 0} min",
                        fontSize = 14.sp,
                        color = Color.Gray
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
                        shape = RoundedCornerShape(8.dp),
                        color = MaterialTheme.colorScheme.primary.copy(alpha = 0.1f)
                    ) {
                        Text(
                            text = terapia,
                            fontSize = 12.sp,
                            modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
                            color = MaterialTheme.colorScheme.primary
                        )
                    }
                }

                cita.modalidad?.let { modalidad ->
                    Surface(
                        shape = RoundedCornerShape(8.dp),
                        color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.1f)
                    ) {
                        Text(
                            text = modalidad,
                            fontSize = 12.sp,
                            modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
                            color = MaterialTheme.colorScheme.secondary
                        )
                    }
                }
            }

            // Motivo
            cita.motivo?.let { motivo ->
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = motivo,
                    fontSize = 14.sp,
                    color = Color.DarkGray,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis
                )
            }

            // Botones de acción (solo si la cita no está cancelada)
            if (cita.estado?.lowercase() !in listOf("cancelada", "completada")) {
                Spacer(modifier = Modifier.height(12.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    // Botón Cancelar
                    OutlinedButton(
                        onClick = onCancelClick,
                        modifier = Modifier.weight(1f),
                        colors = ButtonDefaults.outlinedButtonColors(
                            contentColor = Color(0xFFF44336)
                        ),
                        shape = RoundedCornerShape(8.dp)
                    ) {
                        Icon(
                            Icons.Default.Cancel,
                            contentDescription = null,
                            modifier = Modifier.size(16.dp)
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("Cancelar")
                    }

                    // Botón Reagendar
                    Button(
                        onClick = onRescheduleClick,
                        modifier = Modifier.weight(1f),
                        colors = ButtonDefaults.buttonColors(
                            containerColor = MaterialTheme.colorScheme.primary
                        ),
                        shape = RoundedCornerShape(8.dp)
                    ) {
                        Icon(
                            Icons.Default.Edit,
                            contentDescription = null,
                            modifier = Modifier.size(16.dp)
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("Reagendar")
                    }
                }
            }
        }
    }
}

@Composable
fun ContactDialog(onDismiss: () -> Unit) {
    val contacto = ContactoPsicologoDTO()
    val context = LocalContext.current

    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            shape = RoundedCornerShape(16.dp)
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
                        text = "Contacto Amani Psicólogo",
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Bold
                    )
                    IconButton(onClick = onDismiss) {
                        Icon(Icons.Default.Close, contentDescription = "Cerrar")
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                ContactInfoItem(
                    icon = Icons.Default.Phone,
                    text = contacto.telefono,
                    onClick = {
                        // Abrir marcador telefónico
                    }
                )

                ContactInfoItem(
                    icon = Icons.Default.Email,
                    text = contacto.email,
                    onClick = {
                        // Abrir email
                    }
                )

                ContactInfoItem(
                    icon = Icons.Default.Language,
                    text = contacto.website,
                    onClick = {
                        // Abrir sitio web
                    }
                )

                Spacer(modifier = Modifier.height(16.dp))

                HorizontalDivider()
                Spacer(modifier = Modifier.height(12.dp))

                Text(
                    text = "Horario de atención",
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Bold
                )
                Spacer(modifier = Modifier.height(8.dp))

                Text("Lunes a Viernes: 9:00 - 20:00", fontSize = 14.sp)
                Text("Sábados: 10:00 - 14:00", fontSize = 14.sp)
                Text("Domingos: Cerrado", fontSize = 14.sp)

                Spacer(modifier = Modifier.height(20.dp))

                Button(
                    onClick = onDismiss,
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(8.dp)
                ) {
                    Text("Cerrar")
                }
            }
        }
    }
}

@Composable
fun ContactInfoItem(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    text: String,
    onClick: () -> Unit
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
            tint = MaterialTheme.colorScheme.primary
        )
        Spacer(modifier = Modifier.width(12.dp))
        Text(
            text = text,
            fontSize = 14.sp,
            color = MaterialTheme.colorScheme.primary
        )
    }
}

@Composable
fun CancelConfirmationDialog(
    cita: CitaPacienteViewResponseDTO,
    isCancelling: Boolean,
    onConfirm: () -> Unit,
    onDismiss: () -> Unit
) {
    // Parsear fecha para mostrar
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
        title = {
            Text(
                text = "Cancelar Cita",
                fontWeight = FontWeight.Bold
            )
        },
        text = {
            Column {
                Text("¿Estás seguro de que deseas cancelar esta cita?")
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = "Fecha: $fechaFormateada",
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium
                )
                Text(
                    text = "Hora: $horaFormateada",
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium
                )
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = "Esta acción no se puede deshacer.",
                    fontSize = 12.sp,
                    color = Color.Gray
                )
            }
        },
        confirmButton = {
            TextButton(
                onClick = onConfirm,
                enabled = !isCancelling,
                colors = ButtonDefaults.textButtonColors(
                    contentColor = Color(0xFFF44336)
                )
            ) {
                if (isCancelling) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(20.dp),
                        strokeWidth = 2.dp
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                }
                Text("Sí, cancelar")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("No, mantener")
            }
        },
        icon = {
            Icon(
                Icons.Default.Warning,
                contentDescription = null,
                tint = Color(0xFFF44336)
            )
        }
    )
}