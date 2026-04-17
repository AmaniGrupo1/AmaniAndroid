package org.ies.tierno.applicationamani.presentation.ui.screens.psicologo

import android.annotation.SuppressLint
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.animateContentSize
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.tween
import androidx.compose.animation.expandVertically
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.shrinkVertically
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.IntrinsicSize
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
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.Message
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.History
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material.icons.filled.LocationOn
import androidx.compose.material.icons.filled.Payment
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Warning
import androidx.compose.material.icons.outlined.Badge
import androidx.compose.material.icons.outlined.Cake
import androidx.compose.material.icons.outlined.Email
import androidx.compose.material.icons.outlined.Phone
import androidx.compose.material.icons.outlined.Wc
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.ListarPacientesByPsicologoViewModel
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDate
import java.time.LocalTime
import java.time.format.DateTimeFormatter

// Colores corporativos AMANI
object AmaniPsicologoColors {
    val Primary = Color(0xFF6B4E71)
    val PrimaryLight = Color(0xFF9B7E9F)
    val PrimaryDark = Color(0xFF4A2B50)
    val Secondary = Color(0xFFE8B4B8)
    val Accent = Color(0xFFF5E6E8)
    val Surface = Color(0xFFFFFFFF)
    val Background = Color(0xFFFDF8F9)
    val TextPrimary = Color(0xFF2D1B30)
    val TextSecondary = Color(0xFF7A6B7E)
    val Success = Color(0xFF81C784)
    val Warning = Color(0xFFFFB74D)
    val Error = Color(0xFFE57373)
    val Info = Color(0xFF64B5F6)
}

@RequiresApi(Build.VERSION_CODES.O)
@SuppressLint("UnusedMaterial3ScaffoldPaddingParameter")
@Composable
fun ViewPsicologoPrincipal(
    userSessionDataStore: UserSessionDataStore,
    navController: NavController,
    viewModel: ListarPacientesByPsicologoViewModel = koinViewModel(),
    profilePsicologoViewModel: ProfilePsicologoViewModel = koinViewModel()
) {
    val pacientes by viewModel.pacientes.collectAsState()
    val citasPorPaciente by viewModel.citasPorPaciente.collectAsState()
    var isLoadingData by remember { mutableStateOf(true) }

    var idPsicologo by remember { mutableStateOf<Long?>(null) }
    var isLoadingSession by remember { mutableStateOf(true) }

    LaunchedEffect(Unit) {
        val session = userSessionDataStore.getSession()
        idPsicologo = session?.idPsicologo
        isLoadingSession = false

        if (idPsicologo != null) {
            viewModel.cargarPacientes(idPsicologo!!)
            profilePsicologoViewModel.fetchProfile(idPsicologo!!)
        }

        isLoadingData = false
    }

    val isLoading = isLoadingSession || (isLoadingData && pacientes.isEmpty())

    val listState = rememberLazyListState()
    val isScrolled by remember { derivedStateOf { listState.firstVisibleItemIndex > 0 } }

    if (isLoadingSession) {
        Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
            CircularProgressIndicator(
                modifier = Modifier.size(48.dp),
                color = AmaniPsicologoColors.Primary,
                strokeWidth = 3.dp
            )
        }
        return
    }

    if (idPsicologo == null) {
        Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Icon(
                    imageVector = Icons.Default.Error,
                    contentDescription = null,
                    modifier = Modifier.size(64.dp),
                    tint = AmaniPsicologoColors.Error
                )
                Spacer(modifier = Modifier.height(16.dp))
                Text(
                    text = "Error de sesión",
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Bold,
                    color = AmaniPsicologoColors.TextPrimary
                )
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = "No se encontró el ID del psicólogo",
                    fontSize = 14.sp,
                    color = AmaniPsicologoColors.TextSecondary
                )
                Spacer(modifier = Modifier.height(24.dp))
                Button(
                    onClick = { navController.navigate(Screens.login.route) },
                    shape = RoundedCornerShape(12.dp),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = AmaniPsicologoColors.Primary,
                        contentColor = Color.White
                    )
                ) {
                    Text("Volver al login")
                }
            }
        }
        return
    }

    Scaffold(
        topBar = { MenuSetting(navController = navController, idPsicologo = idPsicologo) },
        containerColor = AmaniPsicologoColors.Background
    ) { innerPadding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
        ) {
            when {
                isLoading -> LoadingState()
                pacientes.isEmpty() -> EmptyState()
                else -> PacientesList(
                    pacientes = pacientes,
                    citasPorPaciente = citasPorPaciente,
                    listState = listState
                )
            }
        }
    }
}

@Composable
private fun LoadingState() {
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            CircularProgressIndicator(
                modifier = Modifier.size(48.dp),
                color = AmaniPsicologoColors.Primary,
                strokeWidth = 3.dp
            )
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = "Cargando tus pacientes...",
                color = AmaniPsicologoColors.TextSecondary,
                fontSize = 14.sp
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = "Esto puede tomar unos segundos",
                color = AmaniPsicologoColors.TextSecondary.copy(alpha = 0.7f),
                fontSize = 12.sp
            )
        }
    }
}

@Composable
private fun EmptyState() {
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            modifier = Modifier.padding(24.dp)
        ) {
            Icon(
                imageVector = Icons.Default.People,
                contentDescription = null,
                modifier = Modifier.size(80.dp),
                tint = AmaniPsicologoColors.PrimaryLight.copy(alpha = 0.5f)
            )
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = "No tienes pacientes asignados",
                fontSize = 18.sp,
                fontWeight = FontWeight.Medium,
                color = AmaniPsicologoColors.TextPrimary
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = "Cuando te asignen pacientes, aparecerán aquí",
                fontSize = 14.sp,
                color = AmaniPsicologoColors.TextSecondary,
                textAlign = TextAlign.Center
            )
            Spacer(modifier = Modifier.height(24.dp))
            Button(
                onClick = { /* Navegar a alguna acción */ },
                shape = RoundedCornerShape(12.dp),
                colors = ButtonDefaults.buttonColors(
                    containerColor = AmaniPsicologoColors.Primary,
                    contentColor = Color.White
                )
            ) {
                Text("Actualizar", fontSize = 14.sp, fontWeight = FontWeight.Medium)
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun PacientesList(
    pacientes: List<PacientePsicologoResponseDTO>,
    citasPorPaciente: Map<Long, List<AgendaItemDTO>>,
    listState: androidx.compose.foundation.lazy.LazyListState
) {
    LazyColumn(
        state = listState,
        modifier = Modifier
            .fillMaxSize()
            .padding(horizontal = 16.dp)
            .padding(top = 8.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        item {
            HeaderStats(pacientes.size)
        }

        items(
            items = pacientes,
            key = { paciente -> paciente.idPaciente ?: "${paciente.email}-${paciente.dni}" }
        ) { paciente ->

            val citas = citasPorPaciente[paciente.idPaciente] ?: emptyList()
            val hoy = LocalDate.now()

            // ✅ CONTADOR DE CITAS
            val citasPendientes = citas.count {
                it.estado?.uppercase() != "CANCELADA" &&
                        it.estado?.uppercase() != "COMPLETADA"
            }

            // ✅ PRÓXIMA CITA MEJORADA (incluye hora)
            val proximaCita = citas
                .filter {
                    it.fecha >= hoy &&
                            it.estado?.uppercase() != "CANCELADA" &&
                            it.estado?.uppercase() != "COMPLETADA"
                }
                .minByOrNull { it.fecha.atTime(it.horaInicio) }

            PacienteCard(
                paciente = paciente,
                proximaCita = proximaCita,
                totalCitas = citasPendientes // ✅ NUEVO
            )
        }

        item { Spacer(modifier = Modifier.height(16.dp)) }
    }
}

@Composable
private fun HeaderStats(totalPacientes: Int) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = AmaniPsicologoColors.Primary),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column {
                Text(
                    text = "Total de Pacientes",
                    fontSize = 14.sp,
                    color = Color.White.copy(alpha = 0.9f)
                )
                Text(
                    text = "$totalPacientes",
                    fontSize = 32.sp,
                    fontWeight = FontWeight.Bold,
                    color = Color.White
                )
                Text(
                    text = "Asignados a tu consulta",
                    fontSize = 12.sp,
                    color = Color.White.copy(alpha = 0.8f)
                )
            }
            Icon(
                imageVector = Icons.Default.People,
                contentDescription = null,
                tint = Color.White,
                modifier = Modifier.size(48.dp)
            )
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PacienteCard(
    paciente: PacientePsicologoResponseDTO,
    proximaCita: AgendaItemDTO?,
    totalCitas: Int // ✅ NUEVO
) {
    var expanded by remember { mutableStateOf(false) }
    val esMenor = esMenorDeEdad(paciente.fechaNacimiento)

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .animateContentSize(),
        shape = RoundedCornerShape(20.dp),
        elevation = CardDefaults.cardElevation(
            defaultElevation = 2.dp,
            pressedElevation = 6.dp
        ),
        colors = CardDefaults.cardColors(containerColor = AmaniPsicologoColors.Surface)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(0.dp)
        ) {
            PacienteHeader(
                paciente = paciente,
                expanded = expanded,
                esMenor = esMenor,
                proximaCita = proximaCita,
                totalCitas = totalCitas, // ✅ NUEVO
                onExpandClick = { expanded = !expanded }
            )

            AnimatedVisibility(
                visible = expanded,
                enter = expandVertically(
                    animationSpec = tween(durationMillis = 300, easing = FastOutSlowInEasing)
                ) + fadeIn(),
                exit = shrinkVertically(
                    animationSpec = tween(durationMillis = 200, easing = FastOutSlowInEasing)
                ) + fadeOut()
            ) {
                ExpandedContent(
                    paciente = paciente,
                    esMenor = esMenor
                )
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PacienteHeader(
    paciente: PacientePsicologoResponseDTO,
    expanded: Boolean,
    esMenor: Boolean,
    proximaCita: AgendaItemDTO?,
    totalCitas: Int, // ✅ NUEVO
    onExpandClick: () -> Unit
) {
    val estadoPago = paciente.estadoPago ?: EstadoPago.PENDIENTE
    val isPagoPendiente = estadoPago == EstadoPago.PENDIENTE
    val formatterFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy")
    val formatterHora = DateTimeFormatter.ofPattern("HH:mm")
    val hoy = LocalDate.now()
    val manana = hoy.plusDays(1)
    val dentroDe3Dias = hoy.plusDays(3)

    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = AmaniPsicologoColors.Surface,
        shadowElevation = if (expanded) 2.dp else 0.dp
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .animateContentSize()
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.Top
            ) {
                Row(
                    modifier = Modifier.weight(1f),
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Box(
                        modifier = Modifier
                            .size(56.dp)
                            .clip(CircleShape)
                            .background(
                                brush = Brush.linearGradient(
                                    colors = listOf(
                                        if (isPagoPendiente) AmaniPsicologoColors.Warning else AmaniPsicologoColors.Success,
                                        if (isPagoPendiente) AmaniPsicologoColors.PrimaryLight else AmaniPsicologoColors.Primary
                                    )
                                )
                            ),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = "${paciente.nombre?.take(1) ?: "?"}${paciente.apellido?.take(1) ?: "?"}",
                            fontSize = 20.sp,
                            fontWeight = FontWeight.Bold,
                            color = Color.White
                        )
                    }


                    Column(
                        modifier = Modifier.weight(1f)
                    ) {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Text(
                                text = "${paciente.nombre ?: "Sin nombre"} ${paciente.apellido ?: ""}".trim(),
                                fontSize = 16.sp,
                                fontWeight = FontWeight.Bold,
                                color = AmaniPsicologoColors.TextPrimary
                            )

                            if (esMenor) {
                                Surface(
                                    shape = RoundedCornerShape(12.dp),
                                    color = AmaniPsicologoColors.Warning.copy(alpha = 0.2f)
                                ) {
                                    Row(
                                        modifier = Modifier.padding(horizontal = 6.dp, vertical = 2.dp),
                                        verticalAlignment = Alignment.CenterVertically,
                                        horizontalArrangement = Arrangement.spacedBy(4.dp)
                                    ) {
                                        Icon(
                                            imageVector = Icons.Default.Warning,
                                            contentDescription = "Menor de edad",
                                            modifier = Modifier.size(12.dp),
                                            tint = AmaniPsicologoColors.Warning
                                        )
                                        Text(
                                            text = "Menor",
                                            fontSize = 10.sp,
                                            fontWeight = FontWeight.Medium,
                                            color = AmaniPsicologoColors.Warning
                                        )
                                    }
                                }
                            }
                        }

                        // ✅ NUEVO: CONTADOR DE CITAS
                        Spacer(modifier = Modifier.height(4.dp))

                        if (totalCitas > 0) {
                            Text(
                                text = "📅 Tienes $totalCitas cita${if (totalCitas > 1) "s" else ""}",
                                fontSize = 12.sp,
                                fontWeight = FontWeight.Medium,
                                color = AmaniPsicologoColors.Primary
                            )
                        } else {
                            Text(
                                text = "Sin citas registradas",
                                fontSize = 12.sp,
                                color = AmaniPsicologoColors.TextSecondary
                            )
                        }

                        Spacer(modifier = Modifier.height(4.dp))

                        // ==================== PRÓXIMA CITA ====================
                        if (proximaCita != null) {
                            val fechaCita = proximaCita.fecha
                            val esHoy = fechaCita == hoy
                            val esManana = fechaCita == manana
                            val esProximo = fechaCita <= dentroDe3Dias

                            Surface(
                                shape = RoundedCornerShape(12.dp),
                                color = when {
                                    esHoy -> AmaniPsicologoColors.Success.copy(alpha = 0.15f)
                                    esManana -> AmaniPsicologoColors.Info.copy(alpha = 0.15f)
                                    esProximo -> AmaniPsicologoColors.Primary.copy(alpha = 0.1f)
                                    else -> AmaniPsicologoColors.Accent
                                }
                            ) {
                                Row(
                                    modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(6.dp)
                                ) {
                                    Icon(
                                        imageVector = Icons.Default.CalendarToday,
                                        contentDescription = null,
                                        modifier = Modifier.size(14.dp),
                                        tint = when {
                                            esHoy -> AmaniPsicologoColors.Success
                                            esManana -> AmaniPsicologoColors.Info
                                            else -> AmaniPsicologoColors.Primary
                                        }
                                    )
                                    Text(
                                        text = when {
                                            esHoy -> "🔴 HOY a las ${proximaCita.horaInicio.format(formatterHora)}"
                                            esManana -> "MAÑANA a las ${proximaCita.horaInicio.format(formatterHora)}"
                                            else -> "${fechaCita.format(formatterFecha)} - ${proximaCita.horaInicio.format(formatterHora)}"
                                        },
                                        fontSize = 12.sp,
                                        fontWeight = FontWeight.Medium,
                                        color = when {
                                            esHoy -> AmaniPsicologoColors.Success
                                            esManana -> AmaniPsicologoColors.Info
                                            else -> AmaniPsicologoColors.Primary
                                        }
                                    )
                                }
                            }
                        } else {
                            Surface(
                                shape = RoundedCornerShape(12.dp),
                                color = AmaniPsicologoColors.Accent
                            ) {
                                Row(
                                    modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(6.dp)
                                ) {
                                    Icon(
                                        imageVector = Icons.Default.Schedule,
                                        contentDescription = null,
                                        modifier = Modifier.size(14.dp),
                                        tint = AmaniPsicologoColors.TextSecondary
                                    )
                                    Text(
                                        text = "Sin citas programadas",
                                        fontSize = 12.sp,
                                        color = AmaniPsicologoColors.TextSecondary
                                    )
                                }
                            }
                        }

                        Spacer(modifier = Modifier.height(4.dp))

                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Outlined.Email,
                                contentDescription = null,
                                modifier = Modifier.size(14.dp),
                                tint = AmaniPsicologoColors.TextSecondary
                            )
                            Text(
                                text = paciente.email ?: "Email no disponible",
                                fontSize = 12.sp,
                                color = AmaniPsicologoColors.TextSecondary,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis
                            )
                        }

                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Outlined.Phone,
                                contentDescription = null,
                                modifier = Modifier.size(14.dp),
                                tint = AmaniPsicologoColors.TextSecondary
                            )
                            Text(
                                text = paciente.telefono ?: "Teléfono no disponible",
                                fontSize = 12.sp,
                                color = AmaniPsicologoColors.TextSecondary
                            )
                        }
                    }
                }

                Column(
                    horizontalAlignment = Alignment.End,
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Surface(
                        shape = RoundedCornerShape(20.dp),
                        color = if (isPagoPendiente)
                            AmaniPsicologoColors.Warning.copy(alpha = 0.2f)
                        else
                            AmaniPsicologoColors.Success.copy(alpha = 0.2f),
                        modifier = Modifier.width(IntrinsicSize.Min)
                    ) {
                        Row(
                            modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(4.dp)
                        ) {
                            Icon(
                                imageVector = if (isPagoPendiente) Icons.Default.Warning else Icons.Default.CheckCircle,
                                contentDescription = null,
                                modifier = Modifier.size(14.dp),
                                tint = if (isPagoPendiente) AmaniPsicologoColors.Warning else AmaniPsicologoColors.Success
                            )
                            Text(
                                text = if (isPagoPendiente) "PENDIENTE" else "PAGADO",
                                fontSize = 11.sp,
                                fontWeight = FontWeight.Medium,
                                color = if (isPagoPendiente) AmaniPsicologoColors.Warning else AmaniPsicologoColors.Success
                            )
                        }
                    }

                    IconButton(
                        onClick = onExpandClick,
                        modifier = Modifier.size(32.dp)
                    ) {
                        Icon(
                            imageVector = if (expanded) Icons.Default.KeyboardArrowUp else Icons.Default.KeyboardArrowDown,
                            contentDescription = if (expanded) "Contraer" else "Expandir",
                            tint = AmaniPsicologoColors.Primary
                        )
                    }
                }
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun ExpandedContent(
    paciente: PacientePsicologoResponseDTO,
    esMenor: Boolean
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .background(AmaniPsicologoColors.Accent)
            .padding(16.dp)
    ) {
        Text(
            text = "📋 Información Detallada",
            fontSize = 14.sp,
            fontWeight = FontWeight.SemiBold,
            color = AmaniPsicologoColors.TextPrimary,
            modifier = Modifier.padding(bottom = 12.dp)
        )

        Column(
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            InfoSection(
                title = "Datos Personales",
                icon = Icons.Default.Person,
                items = listOf(
                    "Nombre completo" to "${paciente.nombre ?: "N/A"} ${paciente.apellido ?: ""}".trim(),
                    "DNI" to (paciente.dni ?: "No registrado"),
                    "Fecha de nacimiento" to formatearFechaDesdeString(paciente.fechaNacimiento),
                    "Edad" to "${calcularEdadDesdeString(paciente.fechaNacimiento)} años",
                    "Género" to (paciente.genero ?: "No especificado"),
                    "Email" to (paciente.email ?: "No disponible"),
                    "Teléfono" to (paciente.telefono ?: "No disponible")
                )
            )
            val tutores = paciente.tutor ?: emptyList()
            if (esMenor && tutores.isNotEmpty()) {
                TutorInfoSection(tutores = tutores)
            }

            paciente.direccion?.let { direccion ->
                InfoSection(
                    title = "📍 Dirección",
                    icon = Icons.Default.LocationOn,
                    items = listOf(
                        "Calle" to (direccion.calle ?: "No disponible"),
                        "Ciudad" to (direccion.ciudad ?: "No disponible"),
                        "Provincia" to (direccion.provincia ?: "No disponible"),
                        "Código Postal" to (direccion.codigoPostal ?: "No disponible"),
                        "País" to (direccion.pais ?: "No disponible")
                    )
                )
            }

            InfoSection(
                title = "💰 Estado de Pago",
                icon = Icons.Default.Payment,
                items = listOf(
                    "Estado actual" to (paciente.estadoPago?.name ?: "PENDIENTE"),
                    "Método de pago" to "Por definir"
                )
            )

            if (!paciente.horaInicio.isNullOrEmpty() && !paciente.horaFin.isNullOrEmpty()) {
                InfoSection(
                    title = "⏰ Horario de Sesiones",
                    icon = Icons.Default.Schedule,
                    items = listOf(
                        "Hora de inicio" to formatearHoraDesdeString(paciente.horaInicio),
                        "Hora de fin" to formatearHoraDesdeString(paciente.horaFin),
                        "Duración" to "${calcularDuracionDesdeStrings(paciente.horaInicio, paciente.horaFin)} minutos"
                    )
                )
            }
        }

        Spacer(modifier = Modifier.height(16.dp))

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Button(
                onClick = { /* Navegar a historial clínico */ },
                modifier = Modifier.weight(1f),
                shape = RoundedCornerShape(12.dp),
                colors = ButtonDefaults.buttonColors(
                    containerColor = AmaniPsicologoColors.Primary,
                    contentColor = Color.White
                ),
                elevation = ButtonDefaults.buttonElevation(defaultElevation = 2.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.History,
                    contentDescription = null,
                    modifier = Modifier.size(18.dp)
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    text = "Historial",
                    fontSize = 13.sp,
                    fontWeight = FontWeight.Medium
                )
            }

            Button(
                onClick = { /* Navegar a agenda */ },
                modifier = Modifier.weight(1f),
                shape = RoundedCornerShape(12.dp),
                colors = ButtonDefaults.buttonColors(
                    containerColor = AmaniPsicologoColors.Secondary,
                    contentColor = AmaniPsicologoColors.Primary
                ),
                elevation = ButtonDefaults.buttonElevation(defaultElevation = 2.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.CalendarToday,
                    contentDescription = null,
                    modifier = Modifier.size(18.dp)
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    text = "Agendar cita",
                    fontSize = 13.sp,
                    fontWeight = FontWeight.Medium
                )
            }
        }

        Spacer(modifier = Modifier.height(8.dp))

        OutlinedButton(
            onClick = { /* Abrir chat */ },
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(12.dp),
            colors = ButtonDefaults.outlinedButtonColors(
                contentColor = AmaniPsicologoColors.Primary
            )
        ) {
            Icon(
                imageVector = Icons.AutoMirrored.Filled.Message,
                contentDescription = null,
                modifier = Modifier.size(18.dp)
            )
            Spacer(modifier = Modifier.width(8.dp))
            Text(
                text = "Enviar mensaje",
                fontSize = 13.sp,
                fontWeight = FontWeight.Medium
            )
        }
    }
}

@Composable
fun TutorInfoSection(tutores: List<TutorResponseDTO>) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = Color.White),
        elevation = CardDefaults.cardElevation(defaultElevation = 1.dp)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.People,
                    contentDescription = null,
                    modifier = Modifier.size(18.dp),
                    tint = AmaniPsicologoColors.Warning
                )
                Text(
                    text = "👨‍👩‍👧 Datos del Tutor / Responsable",
                    fontSize = 14.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = AmaniPsicologoColors.Warning
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            tutores.forEachIndexed { index, tutor ->
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(vertical = 8.dp)
                ) {
                    if (tutores.size > 1) {
                        Text(
                            text = "Tutor ${index + 1}",
                            fontSize = 12.sp,
                            fontWeight = FontWeight.Medium,
                            color = AmaniPsicologoColors.Primary
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                    }

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            imageVector = Icons.Default.Person,
                            contentDescription = null,
                            modifier = Modifier.size(16.dp),
                            tint = AmaniPsicologoColors.TextSecondary
                        )
                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = tutor.nombre,
                                fontSize = 13.sp,
                                fontWeight = FontWeight.Medium,
                                color = AmaniPsicologoColors.TextPrimary
                            )
                            Text(
                                text = "DNI: ${tutor.dni}",
                                fontSize = 11.sp,
                                color = AmaniPsicologoColors.TextSecondary
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(4.dp))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            imageVector = Icons.Outlined.Phone,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = AmaniPsicologoColors.TextSecondary
                        )
                        Text(
                            tutor.telefono ?: "No disponible",
                            fontSize = 12.sp,
                            color = AmaniPsicologoColors.TextPrimary
                        )
                    }

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            imageVector = Icons.Outlined.Email,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = AmaniPsicologoColors.TextSecondary
                        )
                        Text(
                            text = tutor.email ?: "No disponible",
                            fontSize = 12.sp,
                            color = AmaniPsicologoColors.TextPrimary
                        )
                    }

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            imageVector = Icons.Outlined.Badge,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = AmaniPsicologoColors.TextSecondary
                        )
                        Text(
                            text = "Tipo: ${tutor.tipo}",
                            fontSize = 12.sp,
                            color = AmaniPsicologoColors.TextPrimary
                        )
                    }
                }

                if (index != tutores.size - 1) {
                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                        thickness = 0.5.dp,
                        color = AmaniPsicologoColors.Accent
                    )
                }
            }
        }
    }
}

@Composable
fun InfoSection(
    title: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    items: List<Pair<String, String>>
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = Color.White),
        elevation = CardDefaults.cardElevation(defaultElevation = 1.dp)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Icon(
                    imageVector = icon,
                    contentDescription = null,
                    modifier = Modifier.size(18.dp),
                    tint = AmaniPsicologoColors.Primary
                )
                Text(
                    text = title,
                    fontSize = 14.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = AmaniPsicologoColors.TextPrimary
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            items.forEachIndexed { index, (label, value) ->
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(vertical = 4.dp)
                ) {
                    Text(
                        text = label,
                        fontSize = 11.sp,
                        color = AmaniPsicologoColors.TextSecondary
                    )
                    Text(
                        text = value.ifEmpty { "No disponible" },
                        fontSize = 13.sp,
                        fontWeight = FontWeight.Medium,
                        color = AmaniPsicologoColors.TextPrimary
                    )
                    if (index != items.size - 1) {
                        HorizontalDivider(
                            modifier = Modifier.padding(top = 4.dp),
                            thickness = 0.5.dp,
                            color = AmaniPsicologoColors.Accent
                        )
                    }
                }
            }
        }
    }
}

// Funciones de utilidad
@RequiresApi(Build.VERSION_CODES.O)
private fun calcularEdadDesdeString(fechaNacimientoStr: String?): Int {
    if (fechaNacimientoStr.isNullOrEmpty()) return 0
    return try {
        val fechaNacimiento = LocalDate.parse(fechaNacimientoStr)
        val hoy = LocalDate.now()
        hoy.year - fechaNacimiento.year -
                if (hoy.dayOfYear < fechaNacimiento.dayOfYear) 1 else 0
    } catch (e: Exception) {
        0
    }
}

@RequiresApi(Build.VERSION_CODES.O)
private fun esMenorDeEdad(fechaNacimientoStr: String?): Boolean {
    return calcularEdadDesdeString(fechaNacimientoStr) < 18
}

@RequiresApi(Build.VERSION_CODES.O)
private fun formatearFechaDesdeString(fechaStr: String?): String {
    if (fechaStr.isNullOrEmpty()) return "No disponible"
    return try {
        val formatterInput = DateTimeFormatter.ofPattern("yyyy-MM-dd")
        val fecha = LocalDate.parse(fechaStr, formatterInput)
        val formatterOutput = DateTimeFormatter.ofPattern("dd/MM/yyyy")
        fecha.format(formatterOutput)
    } catch (e: Exception) {
        fechaStr
    }
}

@RequiresApi(Build.VERSION_CODES.O)
private fun formatearHoraDesdeString(horaStr: String?): String {
    if (horaStr.isNullOrEmpty()) return "No disponible"
    return try {
        val formatterInput = DateTimeFormatter.ofPattern("HH:mm:ss")
        val hora = LocalTime.parse(horaStr, formatterInput)
        val formatterOutput = DateTimeFormatter.ofPattern("HH:mm")
        hora.format(formatterOutput)
    } catch (e: Exception) {
        horaStr
    }
}

private fun calcularDuracionDesdeStrings(inicioStr: String?, finStr: String?): Int {
    if (inicioStr.isNullOrEmpty() || finStr.isNullOrEmpty()) return 0
    return try {
        val formatter = DateTimeFormatter.ofPattern("HH:mm:ss")
        val inicio = LocalTime.parse(inicioStr, formatter)
        val fin = LocalTime.parse(finStr, formatter)
        (fin.hour - inicio.hour) * 60 + (fin.minute - inicio.minute)
    } catch (e: Exception) {
        0
    }
}