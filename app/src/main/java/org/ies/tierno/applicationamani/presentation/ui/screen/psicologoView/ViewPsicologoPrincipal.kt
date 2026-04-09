package org.ies.tierno.applicationamani.presentation.ui.screens.psicologo

import android.annotation.SuppressLint
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.Message
import androidx.compose.material.icons.filled.*
import androidx.compose.material.icons.outlined.*
import androidx.compose.material3.*
import androidx.compose.material3.HorizontalDivider
import androidx.compose.runtime.*
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
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoPago
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.BarraNavegationInferiorPsicologo
import org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting
import org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.PsicologoNavItem
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.ListarPacientesByPsicologoViewModel
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDate
import java.time.LocalTime
import java.time.format.DateTimeFormatter

// Colores corporativos AMANI
object AmaniPsicologoColors {
    val Primary = Color(0xFF6B4E71)      // Morado principal
    val PrimaryLight = Color(0xFF9B7E9F)  // Morado claro
    val PrimaryDark = Color(0xFF4A2B50)   // Morado oscuro
    val Secondary = Color(0xFFE8B4B8)     // Rosa suave
    val Accent = Color(0xFFF5E6E8)        // Fondo rosa claro
    val Surface = Color(0xFFFFFFFF)        // Blanco
    val Background = Color(0xFFFDF8F9)     // Fondo general
    val TextPrimary = Color(0xFF2D1B30)    // Texto oscuro
    val TextSecondary = Color(0xFF7A6B7E)  // Texto gris
    val Success = Color(0xFF81C784)        // Verde
    val Warning = Color(0xFFFFB74D)        // Naranja
    val Error = Color(0xFFE57373)          // Rojo
    val Info = Color(0xFF64B5F6)           // Azul claro
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
    var selectedItem by remember { mutableStateOf(PsicologoNavItem.MIS_PACIENTES) }
    val pacientes by viewModel.paciente.collectAsState()
    var showLoading by remember { mutableStateOf(true) }

    // Estado para el idPsicologo obtenido de la sesión
    var idPsicologo by remember { mutableStateOf<Long?>(null) }
    var isLoadingSession by remember { mutableStateOf(true) }

    // Obtener el idPsicologo de la sesión al inicio
    LaunchedEffect(Unit) {
        val session = userSessionDataStore.getSession()
        idPsicologo = session?.idPsicologo
        isLoadingSession = false

        println("=== SESIÓN OBTENIDA EN ViewPsicologoPrincipal ===")
        println("ID Psicólogo: $idPsicologo")
        println("Session: $session")

        if (idPsicologo != null) {
            // Cargar el perfil del psicólogo
            profilePsicologoViewModel.fetchProfile(idPsicologo!!)
        }
    }

    val profile by profilePsicologoViewModel.perfil.collectAsState()

    LaunchedEffect(pacientes) {
        delay(500)
        showLoading = false
    }

    val listState = rememberLazyListState()
    val isScrolled by remember { derivedStateOf { listState.firstVisibleItemIndex > 0 } }

    // Mostrar loading mientras se carga la sesión
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

    // Si no hay idPsicologo, mostrar error y opción de volver al login
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
                    onClick = {
                        navController.navigate(Screens.login.route)
                    },
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
        topBar = {
            MenuSetting(navController = navController, idPsicologo = idPsicologo)
        },
        bottomBar = {
            BarraNavegationInferiorPsicologo(
                navController = navController,
                selectedItem = selectedItem,
                onItemSelected = { selectedItem = it }
            )
        },
        containerColor = AmaniPsicologoColors.Background
    ) { innerPadding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
        ) {
            when {
                showLoading && pacientes.isEmpty() -> LoadingState()
                pacientes.isEmpty() -> EmptyState()
                else -> PacientesList(
                    pacientes = pacientes,
                    listState = listState,
                    isScrolled = isScrolled
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
    listState: androidx.compose.foundation.lazy.LazyListState,
    isScrolled: Boolean
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
            key = { paciente -> paciente.idPaciente ?: System.currentTimeMillis() }
        ) { paciente ->
            PacienteCard(paciente = paciente)
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
fun PacienteCard(paciente: PacientePsicologoResponseDTO) {
    var expanded by remember { mutableStateOf(false) }

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
                ExpandedContent(paciente = paciente)
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PacienteHeader(
    paciente: PacientePsicologoResponseDTO,
    expanded: Boolean,
    onExpandClick: () -> Unit
) {
    val estadoPago = paciente.estadoPago ?: EstadoPago.PENDIENTE
    val isPagoPendiente = estadoPago == EstadoPago.PENDIENTE

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
                        Text(
                            text = "${paciente.nombre ?: "Sin nombre"} ${paciente.apellido ?: ""}".trim(),
                            fontSize = 16.sp,
                            fontWeight = FontWeight.Bold,
                            color = AmaniPsicologoColors.TextPrimary
                        )

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

            if (!expanded) {
                Divider(
                    color = AmaniPsicologoColors.Accent,
                    thickness = 1.dp,
                    modifier = Modifier.padding(horizontal = 16.dp)
                )

                Spacer(modifier = Modifier.height(12.dp))

                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 0.dp),
                    horizontalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            imageVector = Icons.Outlined.Badge,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = AmaniPsicologoColors.TextSecondary
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text(
                            text = "DNI: ${paciente.dni ?: "No registrado"}",
                            fontSize = 11.sp,
                            color = AmaniPsicologoColors.TextSecondary
                        )
                    }
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            imageVector = Icons.Outlined.Cake,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = AmaniPsicologoColors.TextSecondary
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text(
                            text = "Edad: ${calcularEdadDesdeString(paciente.fechaNacimiento)} años",
                            fontSize = 11.sp,
                            color = AmaniPsicologoColors.TextSecondary
                        )
                    }
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            imageVector = Icons.Outlined.Wc,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = AmaniPsicologoColors.TextSecondary
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text(
                            text = paciente.genero ?: "No especificado",
                            fontSize = 11.sp,
                            color = AmaniPsicologoColors.TextSecondary
                        )
                    }
                }

                Spacer(modifier = Modifier.height(12.dp))
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun ExpandedContent(paciente: PacientePsicologoResponseDTO) {
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

// Funciones de utilidad adaptadas para String
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