package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.font.FontWeight.Companion.Bold
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.admin.PacienteBasicoResponseDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.DireccionResponseDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.PacientesViewModel
import org.koin.androidx.compose.koinViewModel

@OptIn(ExperimentalMaterial3Api::class, ExperimentalAnimationApi::class)
@Composable
fun ListarPacienteSinPsicologos(
    navController: NavController,
    pacientesViewModel: PacientesViewModel = koinViewModel()
) {
    val primaryColor = Color(0xFF6C63FF)
    val backgroundColor = Color(0xFFF5F5F5)
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    val pacientes by pacientesViewModel.pacientes.collectAsStateWithLifecycle()
    val loading by pacientesViewModel.loading.collectAsStateWithLifecycle()

    // Expansión de tarjetas
    var expandedCardId by remember { mutableStateOf<Long?>(null) }

    // Cargar pacientes al entrar en la pantalla
    LaunchedEffect(Unit) {
        pacientesViewModel.cargarPacientesSinPsicologo()
    }

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        "Pacientes sin Psicólogo",
                        color = Color.White,
                        fontFamily = roboto,
                        fontWeight = FontWeight.SemiBold
                    )
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = primaryColor
                ),
                actions = {
                    IconButton(onClick = {
                        pacientesViewModel.cargarPacientesSinPsicologo()
                    }) {
                        Icon(
                            Icons.Default.Refresh,
                            contentDescription = "Refrescar",
                            tint = Color.White
                        )
                    }
                }
            )
        }
    ) { padding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
        ) {
            when {
                loading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        CircularProgressIndicator(
                            color = primaryColor,
                            modifier = Modifier.size(48.dp)
                        )
                    }
                }
                pacientes.isEmpty() -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.spacedBy(16.dp)
                        ) {
                            Icon(
                                Icons.Default.People,
                                contentDescription = null,
                                tint = Color.Gray.copy(alpha = 0.5f),
                                modifier = Modifier.size(80.dp)
                            )
                            Text(
                                text = "No hay pacientes sin asignar",
                                fontFamily = roboto,
                                fontSize = 16.sp,
                                color = Color.Gray
                            )
                            Text(
                                text = "Todos los pacientes ya tienen psicólogo asignado",
                                fontFamily = roboto,
                                fontSize = 14.sp,
                                color = Color.Gray.copy(alpha = 0.7f)
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
                        items(pacientes, key = { it.idPaciente }) { paciente ->
                            PacienteExpandableCard(
                                paciente = paciente,
                                isExpanded = expandedCardId == paciente.idPaciente,
                                onExpandClick = {
                                    expandedCardId = if (expandedCardId == paciente.idPaciente) {
                                        null
                                    } else {
                                        paciente.idPaciente
                                    }
                                },
                                onAsignarClick = {
                                    navController.navigate(Screens.listarPsicologo.createRoute(paciente.idPaciente))
                                },
                                primaryColor = primaryColor,
                                roboto = roboto

                            )
                        }
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalAnimationApi::class)
@Composable
fun PacienteExpandableCard(
    paciente: PacienteBasicoResponseDTO,
    isExpanded: Boolean,
    onExpandClick: () -> Unit,
    onAsignarClick: () -> Unit,
    primaryColor: Color,
    roboto: FontFamily
) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .shadow(
                elevation = 4.dp,
                shape = RoundedCornerShape(16.dp),
                clip = false
            ),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = Color.White)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .animateContentSize()
        ) {
            // Header: Información básica (siempre visible)
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .clickable { onExpandClick() }
                    .padding(16.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(
                    modifier = Modifier.weight(1f),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    // Avatar con iniciales
                    Box(
                        modifier = Modifier
                            .size(48.dp)
                            .shadow(8.dp, RoundedCornerShape(24.dp))
                            .background(
                                color = primaryColor.copy(alpha = 0.1f),
                                shape = RoundedCornerShape(24.dp)
                            ),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = paciente.nombre.take(1) + paciente.apellido.take(1),
                            color = primaryColor,
                            fontFamily = roboto,
                            fontWeight = Bold,
                            fontSize = 18.sp
                        )
                    }

                    Spacer(modifier = Modifier.width(12.dp))

                    Column {
                        Text(
                            text = "${paciente.nombre} ${paciente.apellido}",
                            fontFamily = roboto,
                            fontWeight = Bold,
                            fontSize = 16.sp,
                            color = Color(0xFF333333)
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Row(
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Icon(
                                Icons.Default.Email,
                                contentDescription = null,
                                tint = Color.Gray,
                                modifier = Modifier.size(14.dp)
                            )
                            Spacer(modifier = Modifier.width(4.dp))
                            Text(
                                text = paciente.email,
                                fontFamily = roboto,
                                fontSize = 12.sp,
                                color = Color.Gray
                            )
                        }
                    }
                }

                // Icono de expansión con animación
                Icon(
                    imageVector = if (isExpanded) Icons.Default.KeyboardArrowUp else Icons.Default.KeyboardArrowDown,
                    contentDescription = if (isExpanded) "Contraer" else "Expandir",
                    tint = primaryColor,
                    modifier = Modifier.size(24.dp)
                )
            }

            // Contenido expandido
            AnimatedVisibility(
                visible = isExpanded,
                enter = expandVertically(
                    animationSpec = tween(durationMillis = 300),
                    expandFrom = Alignment.Top
                ) + fadeIn(animationSpec = tween(300)),
                exit = shrinkVertically(
                    animationSpec = tween(durationMillis = 300),
                    shrinkTowards = Alignment.Top
                ) + fadeOut(animationSpec = tween(300))
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp)
                        .padding(bottom = 16.dp)
                ) {
                    Divider(
                        color = Color.LightGray,
                        modifier = Modifier.padding(vertical = 8.dp)
                    )

                    // Datos Personales
                    SubSection(
                        title = "Datos Personales",
                        icon = Icons.Default.Person,
                        iconColor = primaryColor,
                        roboto = roboto
                    ) {
                        DetailRow("DNI", paciente.dni ?: "No especificado", roboto)
                        DetailRow("Teléfono", paciente.telefono ?: "No especificado", roboto)
                        DetailRow("Género", paciente.genero ?: "No especificado", roboto)
                        DetailRow("Fecha Nacimiento", paciente.fechaNacimiento ?: "No especificado", roboto)
                    }
                    // Situaciones (AQUÍ debe ir, NO en el header)
                    if (!paciente.situaciones.isNullOrEmpty()) {
                        Spacer(modifier = Modifier.height(12.dp))
                        SubSection(
                            title = "Situaciones",
                            icon = Icons.Default.Info,
                            iconColor = Color(0xFF27AE60),
                            roboto = roboto
                        ) {
                            paciente.situaciones!!.forEachIndexed { index, situacion ->
                                if (index > 0) Spacer(modifier = Modifier.height(8.dp))
                                SituacionCard(situacion, roboto)
                            }
                        }
                    }
                    // Direcciones
                    if (!paciente.direcciones.isNullOrEmpty()) {
                        Spacer(modifier = Modifier.height(12.dp))
                        SubSection(
                            title = "Direcciones",
                            icon = Icons.Default.LocationOn,
                            iconColor = primaryColor,
                            roboto = roboto
                        ) {
                            paciente.direcciones!!.forEachIndexed { index, direccion ->
                                if (index > 0) Spacer(modifier = Modifier.height(8.dp))
                                DireccionCard(direccion, roboto)
                            }
                        }
                    }

                    // Tutores
                    if (!paciente.tutores.isNullOrEmpty()) {
                        Spacer(modifier = Modifier.height(12.dp))
                        SubSection(
                            title = "Tutores",
                            icon = Icons.Default.People,
                            iconColor = Color(0xFFE67E22),
                            roboto = roboto
                        ) {
                            paciente.tutores!!.forEachIndexed { index, tutor ->
                                if (index > 0) Spacer(modifier = Modifier.height(8.dp))
                                TutorCard(tutor, roboto)
                            }
                        }
                    }

                    Spacer(modifier = Modifier.height(16.dp))

                    // Botón Asignar Psicólogo
                    Button(
                        onClick = onAsignarClick,
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(48.dp),
                        shape = RoundedCornerShape(12.dp),
                        colors = ButtonDefaults.buttonColors(
                            containerColor = primaryColor
                        )
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.AssignmentInd,
                                contentDescription = null,
                                tint = Color.White,
                                modifier = Modifier.size(20.dp)
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                "Asignar Psicólogo",
                                color = Color.White,
                                fontFamily = roboto,
                                fontWeight = FontWeight.Medium
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun SubSection(
    title: String,
    icon: ImageVector,
    iconColor: Color,
    roboto: FontFamily,
    content: @Composable () -> Unit
) {
    Column {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier.padding(bottom = 8.dp)
        ) {
            Icon(
                icon,
                contentDescription = null,
                tint = iconColor,
                modifier = Modifier.size(18.dp)
            )
            Spacer(modifier = Modifier.width(8.dp))
            Text(
                text = title,
                fontFamily = roboto,
                fontWeight = FontWeight.Medium,
                fontSize = 14.sp,
                color = iconColor
            )
        }
        content()
    }
}

@Composable
fun DetailRow(
    label: String,
    value: String,
    roboto: FontFamily
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 4.dp),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(
            text = label,
            fontFamily = roboto,
            fontSize = 13.sp,
            color = Color.Gray
        )
        Text(
            text = value,
            fontFamily = roboto,
            fontSize = 13.sp,
            fontWeight = FontWeight.Medium,
            color = Color(0xFF333333)
        )
    }
}

@Composable
fun DireccionCard(
    direccion: DireccionResponseDTO,
    roboto: FontFamily
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = Color(0xFFF8F9FA))
    ) {
        Column(
            modifier = Modifier.padding(12.dp)
        ) {
            if (!direccion.calle.isNullOrBlank()) {
                DetailRow("Calle", direccion.calle, roboto)
            }
            if (!direccion.ciudad.isNullOrBlank()) {
                DetailRow("Ciudad", direccion.ciudad, roboto)
            }
            if (!direccion.provincia.isNullOrBlank()) {
                DetailRow("Provincia", direccion.provincia, roboto)
            }
            if (!direccion.codigoPostal.isNullOrBlank()) {
                DetailRow("Código Postal", direccion.codigoPostal, roboto)
            }
            if (!direccion.pais.isNullOrBlank()) {
                DetailRow("País", direccion.pais, roboto)
            }
        }
    }
}

@Composable
fun TutorCard(
    tutor: TutorResponseDTO,
    roboto: FontFamily
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = Color(0xFFFFF8F0))
    ) {
        Column(
            modifier = Modifier.padding(12.dp)
        ) {
            if (!tutor.nombre.isNullOrBlank()) {
                DetailRow("Nombre", tutor.nombre, roboto)
            }
            if (!tutor.tipo.isNullOrBlank()) {
                DetailRow("Parentesco", tutor.tipo, roboto)
            }
            if (!tutor.telefono.isNullOrBlank()) {
                DetailRow("Teléfono", tutor.telefono, roboto)
            }
            if (!tutor.email.isNullOrBlank()) {
                DetailRow("Email", tutor.email, roboto)
            }
            if (!tutor.dni.isNullOrBlank()) {
                DetailRow("DNI", tutor.dni, roboto)
            }
        }
    }
}

@Composable
fun SituacionCard(
    situacion: SituacionDTO,
    roboto: FontFamily
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = Color(0xFFF0FFF4))  // Verde muy claro
    ) {
        Column(
            modifier = Modifier.padding(12.dp)
        ) {
            // Nombre de la situación (siempre visible)
            if (!situacion.nombre.isNullOrBlank()) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = situacion.nombre,
                        fontFamily = roboto,
                        fontSize = 14.sp,
                        fontWeight = Bold,
                        color = Color(0xFF27AE60)
                    )
                    if (!situacion.categoria.isNullOrBlank()) {
                        Surface(
                            shape = RoundedCornerShape(8.dp),
                            color = Color(0xFF27AE60).copy(alpha = 0.1f)
                        ) {
                            Text(
                                text = situacion.categoria,
                                fontFamily = roboto,
                                fontSize = 11.sp,
                                color = Color(0xFF27AE60),
                                modifier = Modifier.padding(horizontal = 8.dp, vertical = 2.dp)
                            )
                        }
                    }
                }
            }

            // Descripción (si existe)
            if (!situacion.descripcion.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = situacion.descripcion,
                    fontFamily = roboto,
                    fontSize = 12.sp,
                    color = Color(0xFF555555),
                    lineHeight = 16.sp
                )
            }
        }
    }
}