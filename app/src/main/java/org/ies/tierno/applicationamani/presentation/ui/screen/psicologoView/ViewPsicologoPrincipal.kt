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
import androidx.compose.foundation.clickable
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
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Warning
import androidx.compose.material.icons.outlined.Badge
import androidx.compose.material.icons.outlined.Email
import androidx.compose.material.icons.outlined.Phone
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.ListarPacientesByPsicologoViewModel
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDate
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
                    text = stringResource(R.string.error_sesion),
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Bold,
                    color = AmaniPsicologoColors.TextPrimary
                )
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = stringResource(R.string.no_encontrado_id_psicologo),
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
                    Text(stringResource(R.string.volver_login))
                }
            }
        }
        return
    }

    Scaffold(
        topBar = { MenuSetting(navController = navController, idPsicologo = idPsicologo) },
        containerColor = AmaniPsicologoColors.Background,
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    navController.navigate(Screens.registroPacienteDesdePsicologo.route)
                },
                containerColor = AmaniPsicologoColors.Primary,
                contentColor = Color.White
            ) {
                Icon(
                    Icons.Default.Add,
                    contentDescription = stringResource(R.string.agregar_paciente)
                )
            }
        }
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
                    listState = listState,
                    navController = navController
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
                text = stringResource(R.string.cargando_pacientes),
                color = AmaniPsicologoColors.TextSecondary,
                fontSize = 14.sp
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = stringResource(R.string.puede_tomar_segundos),
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
                text = stringResource(R.string.no_tienes_pacientes),
                fontSize = 18.sp,
                fontWeight = FontWeight.Medium,
                color = AmaniPsicologoColors.TextPrimary
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = stringResource(R.string.cuando_asignen_pacientes),
                fontSize = 14.sp,
                color = AmaniPsicologoColors.TextSecondary,
                textAlign = TextAlign.Center
            )
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun PacientesList(
    pacientes: List<PacientePsicologoResponseDTO>,
    listState: LazyListState,
    navController: NavController
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
            PacienteCard(
                paciente = paciente,
                navController = navController
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
                    text = stringResource(R.string.total_pacientes),
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
                    text = stringResource(R.string.asignados_consulta),
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
    navController: NavController
) {
    var expanded by remember { mutableStateOf(false) }
    val esMenor = esMenorDeEdad(paciente.fechaNacimiento)

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { expanded = !expanded }
            .animateContentSize(),
        shape = RoundedCornerShape(20.dp),
        elevation = CardDefaults.cardElevation(
            defaultElevation = 2.dp,
            pressedElevation = 6.dp
        ),
        colors = CardDefaults.cardColors(containerColor = AmaniPsicologoColors.Surface)
    ) {
        Column(
            modifier = Modifier.fillMaxWidth()
        ) {
            PacienteHeader(
                paciente = paciente,
                esMenor = esMenor,
                navController = navController
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
    esMenor: Boolean,
    navController: NavController
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = AmaniPsicologoColors.Surface
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Row(
                modifier = Modifier.weight(1f),
                horizontalArrangement = Arrangement.spacedBy(12.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                // Avatar circular con iniciales
                Box(
                    modifier = Modifier
                        .size(56.dp)
                        .clip(CircleShape)
                        .background(
                            brush = Brush.linearGradient(
                                colors = listOf(
                                    AmaniPsicologoColors.Primary,
                                    AmaniPsicologoColors.PrimaryLight
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
                            text = "${paciente.nombre ?: stringResource(R.string.sin_nombre)} ${paciente.apellido ?: ""}".trim(),
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
                                        contentDescription = stringResource(R.string.menor),
                                        modifier = Modifier.size(12.dp),
                                        tint = AmaniPsicologoColors.Warning
                                    )
                                    Text(
                                        text = stringResource(R.string.menor),
                                        fontSize = 10.sp,
                                        fontWeight = FontWeight.Medium,
                                        color = AmaniPsicologoColors.Warning
                                    )
                                }
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
                            text = paciente.email ?: stringResource(R.string.email_no_disponible),
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
                            text = paciente.telefono ?: stringResource(R.string.telefono_no_disponible),
                            fontSize = 12.sp,
                            color = AmaniPsicologoColors.TextSecondary
                        )
                    }
                }
            }

            // Botón para crear historial clínico
            IconButton(
                onClick = {
                    paciente.idPaciente?.let { id ->
                        navController.navigate(
                            Screens.crearHistorialClinico.createRoute(id)
                        )
                    }
                },
                modifier = Modifier.size(40.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Description,
                    contentDescription = stringResource(R.string.crear_historial_clinico),
                    tint = AmaniPsicologoColors.Primary,
                    modifier = Modifier.size(24.dp)
                )
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
            text = stringResource(R.string.informacion_detallada),
            fontSize = 14.sp,
            fontWeight = FontWeight.SemiBold,
            color = AmaniPsicologoColors.TextPrimary,
            modifier = Modifier.padding(bottom = 12.dp)
        )

        Column(
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            InfoSection(
                title = stringResource(R.string.datos_personales),
                icon = Icons.Default.Person,
                items = listOf(
                    stringResource(R.string.nombre_completo) to "${paciente.nombre ?: stringResource(R.string.no_disponible)} ${paciente.apellido ?: ""}".trim(),
                    stringResource(R.string.dni) to (paciente.dni ?: stringResource(R.string.no_registrado)),
                    stringResource(R.string.fecha_nacimiento) to formatearFechaDesdeString(paciente.fechaNacimiento),
                    stringResource(R.string.edad) to "${calcularEdadDesdeString(paciente.fechaNacimiento)} ${stringResource(R.string.anios)}",
                    stringResource(R.string.genero) to (paciente.genero?.let {
                        when(it) {
                            "MASCULINO" -> stringResource(R.string.masculino)
                            "FEMENINO" -> stringResource(R.string.femenino)
                            "OTRO" -> stringResource(R.string.otro)
                            "PREFIERO_NO_DECIR" -> stringResource(R.string.prefiero_no_decir)
                            else -> it
                        }
                    } ?: stringResource(R.string.no_especificado)),
                    stringResource(R.string.email) to (paciente.email ?: stringResource(R.string.no_disponible)),
                    stringResource(R.string.telefono) to (paciente.telefono ?: stringResource(R.string.no_disponible))
                )
            )

            val tutores = paciente.tutor ?: emptyList()
            if (esMenor && tutores.isNotEmpty()) {
                TutorInfoSection(tutores = tutores)
            }

            paciente.direccion?.let { direccion ->
                InfoSection(
                    title = stringResource(R.string.direccion),
                    icon = Icons.Default.Person,
                    items = listOf(
                        stringResource(R.string.calle) to (direccion.calle ?: stringResource(R.string.no_disponible)),
                        stringResource(R.string.ciudad) to (direccion.ciudad ?: stringResource(R.string.no_disponible)),
                        stringResource(R.string.provincia) to (direccion.provincia ?: stringResource(R.string.no_disponible)),
                        stringResource(R.string.codigo_postal) to (direccion.codigoPostal ?: stringResource(R.string.no_disponible)),
                        stringResource(R.string.pais) to (direccion.pais ?: stringResource(R.string.no_disponible))
                    )
                )
            }
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
                    text = stringResource(R.string.datos_tutor_responsable),
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
                            text = "${stringResource(R.string.tutor)} ${index + 1}",
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
                                text = "${stringResource(R.string.dni)}: ${tutor.dni}",
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
                            tutor.telefono ?: stringResource(R.string.no_disponible),
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
                            text = tutor.email ?: stringResource(R.string.no_disponible),
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
                            text = "${stringResource(R.string.parentesco)}: ${tutor.tipo}",
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
    icon: ImageVector,
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
                        text = value.ifEmpty { stringResource(R.string.no_disponible) },
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

@Composable
@RequiresApi(Build.VERSION_CODES.O)
private fun formatearFechaDesdeString(fechaStr: String?): String {
    if (fechaStr.isNullOrEmpty()) return stringResource(R.string.no_disponible)
    return try {
        val formatterInput = DateTimeFormatter.ofPattern("yyyy-MM-dd")
        val fecha = LocalDate.parse(fechaStr, formatterInput)
        val formatterOutput = DateTimeFormatter.ofPattern("dd/MM/yyyy")
        fecha.format(formatterOutput)
    } catch (e: Exception) {
        fechaStr
    }
}