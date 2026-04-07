package org.ies.tierno.applicationamani.presentation.ui.screens.admin

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
import androidx.compose.material.icons.filled.*
import androidx.compose.material.icons.outlined.*
import androidx.compose.material3.*
import androidx.compose.material3.HorizontalDivider
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO
import org.ies.tierno.applicationamani.presentation.ui.componente.BarraNavegationInferiorAdmin
import org.ies.tierno.applicationamani.presentation.ui.componente.AdminNavItem
import org.ies.tierno.applicationamani.presentation.ui.componente.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.GetAllPacientAndPsicologoVeiwModel
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.time.format.DateTimeParseException

// Colores corporativos AMANI
object AmaniColors {
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
}

@RequiresApi(Build.VERSION_CODES.O)
@SuppressLint("UnusedMaterial3ScaffoldPaddingParameter")
@Composable
fun ViewAdminPrincipal(
    navController: NavController,
    viewModel: GetAllPacientAndPsicologoVeiwModel = koinViewModel()
) {
    var selectedItem by remember { mutableStateOf(AdminNavItem.DOCUMENTOS) }
    val psicologos by viewModel.paciente.collectAsState()
    var showLoading by remember { mutableStateOf(true) }

    LaunchedEffect(psicologos) {
        delay(500)
        showLoading = false
    }

    val listState = rememberLazyListState()
    val isScrolled by remember { derivedStateOf { listState.firstVisibleItemIndex > 0 } }
    val scope = rememberCoroutineScope()
    Scaffold(
        topBar = {
            MenuAdministrador(
                title = "Gestión de Psicólogos",
                navController = navController,
                showBackButton = false,
                actions = {
                    IconButton(onClick = {
                        scope.launch{
                            showLoading = true; delay(300); showLoading = false
                        }
                    }) {
                        Icon(Icons.Default.Refresh, contentDescription = "Actualizar", tint = AmaniColors.Primary)
                    }
                }
            )
        },
        bottomBar = {
            BarraNavegationInferiorAdmin(
                navController = navController,
                selectedItem = selectedItem,
                onItemSelected = { selectedItem = it }
            )
        },
        containerColor = AmaniColors.Background
    ) { innerPadding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
        ) {
            when {
                showLoading && psicologos.isEmpty() -> LoadingState()
                psicologos.isEmpty() -> EmptyState()
                else -> PsicologosList(
                    psicologos = psicologos,
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
                color = AmaniColors.Primary,
                strokeWidth = 3.dp
            )
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = "Cargando psicólogos...",
                color = AmaniColors.TextSecondary,
                fontSize = 14.sp
            )
        }
    }
}

@Composable
private fun EmptyState() {
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(horizontalAlignment = Alignment.CenterHorizontally, modifier = Modifier.padding(24.dp)) {
            Icon(
                imageVector = Icons.Default.Psychology,
                contentDescription = null,
                modifier = Modifier.size(80.dp),
                tint = AmaniColors.PrimaryLight.copy(alpha = 0.5f)
            )
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = "No hay psicólogos registrados",
                fontSize = 18.sp,
                fontWeight = FontWeight.Medium,
                color = AmaniColors.TextPrimary
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = "Los psicólogos aparecerán aquí una vez registrados",
                fontSize = 14.sp,
                color = AmaniColors.TextSecondary,
                textAlign = TextAlign.Center
            )
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun PsicologosList(
    psicologos: List<ListaPacientesAndPsicologo>,
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
            HeaderStats(psicologos.size)
        }

        items(
            items = psicologos,
            key = { psicologo -> psicologo.idPsicologo }
        ) { psicologo ->
            PsicologoCard(psicologo = psicologo)
        }

        item { Spacer(modifier = Modifier.height(16.dp)) }
    }
}

@Composable
private fun HeaderStats(totalPsicologos: Int) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = AmaniColors.Primary),
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
                    text = "Total de Psicólogos",
                    fontSize = 14.sp,
                    color = Color.White.copy(alpha = 0.9f)
                )
                Text(
                    text = "$totalPsicologos",
                    fontSize = 32.sp,
                    fontWeight = FontWeight.Bold,
                    color = Color.White
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
fun PsicologoCard(psicologo: ListaPacientesAndPsicologo) {
    var expanded by remember { mutableStateOf(false) }
    val pacientesCount = psicologo.pacientes.size

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .animateContentSize(),
        shape = RoundedCornerShape(20.dp),
        elevation = CardDefaults.cardElevation(
            defaultElevation = 2.dp,
            pressedElevation = 6.dp
        ),
        colors = CardDefaults.cardColors(containerColor = AmaniColors.Surface)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(0.dp)
        ) {
            // Header de la card (siempre visible)
            PsicologoHeader(
                psicologo = psicologo,
                expanded = expanded,
                onExpandClick = { expanded = !expanded }
            )

            // Contenido expandible
            AnimatedVisibility(
                visible = expanded,
                enter = expandVertically(
                    animationSpec = tween(durationMillis = 300, easing = FastOutSlowInEasing)
                ) + fadeIn(),
                exit = shrinkVertically(
                    animationSpec = tween(durationMillis = 200, easing = FastOutSlowInEasing)
                ) + fadeOut()
            ) {
                ExpandedContent(psicologo = psicologo)
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PsicologoHeader(
    psicologo: ListaPacientesAndPsicologo,
    expanded: Boolean,
    onExpandClick: () -> Unit
) {
    val pacientesCount = psicologo.pacientes.size

    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = AmaniColors.Surface,
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
                // Avatar + Info
                Row(
                    modifier = Modifier.weight(1f),
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    // Avatar del psicólogo
                    Box(
                        modifier = Modifier
                            .size(56.dp)
                            .clip(CircleShape)
                            .background(
                                brush = Brush.linearGradient(
                                    colors = listOf(AmaniColors.Primary, AmaniColors.PrimaryLight)
                                )
                            ),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = psicologo.nombrePsicologo.take(1) + psicologo.apellidoPsicologo.take(1),
                            fontSize = 20.sp,
                            fontWeight = FontWeight.Bold,
                            color = Color.White
                        )
                    }

                    // Información del psicólogo
                    Column(
                        modifier = Modifier.weight(1f)
                    ) {
                        Text(
                            text = "${psicologo.nombrePsicologo} ${psicologo.apellidoPsicologo}",
                            fontSize = 16.sp,
                            fontWeight = FontWeight.Bold,
                            color = AmaniColors.TextPrimary
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
                                tint = AmaniColors.TextSecondary
                            )
                            Text(
                                text = psicologo.emailPsicologo,
                                fontSize = 12.sp,
                                color = AmaniColors.TextSecondary,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis
                            )
                        }

                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Outlined.Work,
                                contentDescription = null,
                                modifier = Modifier.size(14.dp),
                                tint = AmaniColors.Primary
                            )
                            Text(
                                text = psicologo.especialidad,
                                fontSize = 12.sp,
                                color = AmaniColors.Primary,
                                fontWeight = FontWeight.Medium
                            )
                        }
                    }
                }

                // Contador de pacientes y botón expandir
                Column(
                    horizontalAlignment = Alignment.End,
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    // Badge de pacientes
                    Surface(
                        shape = RoundedCornerShape(20.dp),
                        color = if (pacientesCount > 0) AmaniColors.Secondary else AmaniColors.Accent,
                        modifier = Modifier
                            .width(IntrinsicSize.Min)
                    ) {
                        Row(
                            modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(4.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Default.People,
                                contentDescription = null,
                                modifier = Modifier.size(14.dp),
                                tint = if (pacientesCount > 0) AmaniColors.Primary else AmaniColors.TextSecondary
                            )
                            Text(
                                text = "$pacientesCount paciente${if (pacientesCount != 1) "s" else ""}",
                                fontSize = 11.sp,
                                fontWeight = FontWeight.Medium,
                                color = if (pacientesCount > 0) AmaniColors.Primary else AmaniColors.TextSecondary
                            )
                        }
                    }

                    // Botón expandir
                    IconButton(
                        onClick = onExpandClick,
                        modifier = Modifier.size(32.dp)
                    ) {
                        Icon(
                            imageVector = if (expanded) Icons.Default.KeyboardArrowUp else Icons.Default.KeyboardArrowDown,
                            contentDescription = if (expanded) "Contraer" else "Expandir",
                            tint = AmaniColors.Primary
                        )
                    }
                }
            }

            // Divider decorativo
            if (!expanded) {
                HorizontalDivider(
                    modifier = Modifier.padding(horizontal = 16.dp),
                    thickness = 1.dp,
                    color = AmaniColors.Accent
                )

                Spacer(modifier = Modifier.height(12.dp))

                // Resumen de licencia y fecha
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
                            tint = AmaniColors.TextSecondary
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text(
                            text = "Lic: ${psicologo.licencia ?: "No registrada"}",
                            fontSize = 11.sp,
                            color = AmaniColors.TextSecondary
                        )
                    }
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            imageVector = Icons.Outlined.CalendarToday,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = AmaniColors.TextSecondary
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text(
                            text = "Alta: ${formatFechaCompacta(psicologo.fechaDadoAlta)}",
                            fontSize = 11.sp,
                            color = AmaniColors.TextSecondary
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
fun ExpandedContent(psicologo: ListaPacientesAndPsicologo) {
    val pacientes = psicologo.pacientes

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .background(AmaniColors.Accent)
            .padding(16.dp)
    ) {
        // Título de la sección de pacientes
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = "📋 Pacientes Asignados",
                fontSize = 14.sp,
                fontWeight = FontWeight.SemiBold,
                color = AmaniColors.TextPrimary
            )

            if (pacientes.isNotEmpty()) {
                Text(
                    text = "Total: ${pacientes.size}",
                    fontSize = 12.sp,
                    color = AmaniColors.Primary,
                    fontWeight = FontWeight.Medium
                )
            }
        }

        Spacer(modifier = Modifier.height(12.dp))

        if (pacientes.isEmpty()) {
            // Estado sin pacientes
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(32.dp),
                contentAlignment = Alignment.Center
            ) {
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Icon(
                        imageVector = Icons.Outlined.PersonOutline,
                        contentDescription = null,
                        modifier = Modifier.size(48.dp),
                        tint = AmaniColors.TextSecondary.copy(alpha = 0.5f)
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "No hay pacientes asignados",
                        fontSize = 13.sp,
                        color = AmaniColors.TextSecondary
                    )
                }
            }
        } else {
            // Lista de pacientes
            pacientes.forEach { paciente ->
                PacienteItem(paciente = paciente)
                if (paciente != pacientes.last()) {
                    Spacer(modifier = Modifier.height(8.dp))
                }
            }
        }

        // Botón de acción (opcional)
        Spacer(modifier = Modifier.height(12.dp))
        Button(
            onClick = { /* Navegar a asignar pacientes */ },
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(12.dp),
            colors = ButtonDefaults.buttonColors(
                containerColor = AmaniColors.Primary,
                contentColor = Color.White
            ),
            elevation = ButtonDefaults.buttonElevation(defaultElevation = 2.dp)
        ) {
            Icon(
                imageVector = Icons.Default.Add,
                contentDescription = null,
                modifier = Modifier.size(18.dp)
            )
            Spacer(modifier = Modifier.width(8.dp))
            Text(
                text = "Asignar nuevo paciente",
                fontSize = 13.sp,
                fontWeight = FontWeight.Medium
            )
        }
    }
}

@Composable
fun PacienteItem(paciente: PacientesAsignadoDTO) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = Color.White),
        elevation = CardDefaults.cardElevation(defaultElevation = 1.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            // Avatar del paciente
            Box(
                modifier = Modifier
                    .size(40.dp)
                    .clip(CircleShape)
                    .background(AmaniColors.Secondary),
                contentAlignment = Alignment.Center
            ) {
                Text(
                    text = paciente.nombre.take(1) + paciente.apellido.take(1),
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Bold,
                    color = AmaniColors.Primary
                )
            }

            // Información del paciente
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = "${paciente.nombre} ${paciente.apellido}",
                    fontSize = 14.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = AmaniColors.TextPrimary
                )
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Icon(
                        imageVector = Icons.Outlined.Email,
                        contentDescription = null,
                        modifier = Modifier.size(12.dp),
                        tint = AmaniColors.TextSecondary
                    )
                    Text(
                        text = paciente.email,
                        fontSize = 11.sp,
                        color = AmaniColors.TextSecondary,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
            }

            // Badge de estado
            Surface(
                shape = CircleShape,
                color = AmaniColors.Success.copy(alpha = 0.2f),
                modifier = Modifier.size(32.dp)
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Icon(
                        imageVector = Icons.Default.CheckCircle,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp),
                        tint = AmaniColors.Success
                    )
                }
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
private fun formatFechaCompacta(fechaString: String): String {
    return try {
        val formatter = DateTimeFormatter.ISO_OFFSET_DATE_TIME
        val dateTime = LocalDateTime.parse(fechaString, formatter)
        val formatterOutput = DateTimeFormatter.ofPattern("dd/MM/yyyy")
        dateTime.format(formatterOutput)
    } catch (e: DateTimeParseException) {
        try {
            fechaString.substring(0, minOf(10, fechaString.length))
        } catch (e2: Exception) {
            "Fecha no disponible"
        }
    }
}