package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.ExperimentalAnimationApi
import androidx.compose.animation.animateContentSize
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
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.AssignmentInd
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material.icons.filled.LocationOn
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.font.FontWeight.Companion.Bold
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
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
    pacientesViewModel: PacientesViewModel = koinViewModel(),
) {
    val pacientes by pacientesViewModel.pacientes.collectAsStateWithLifecycle()
    val loading by pacientesViewModel.loading.collectAsStateWithLifecycle()

    // Expansion de tarjetas
    var expandedCardId by remember { mutableStateOf<Long?>(null) }

    // Cargar pacientes al entrar en la pantalla
    LaunchedEffect(Unit) {
        pacientesViewModel.cargarPacientesSinPsicologo()
    }

    Scaffold(
        containerColor = MaterialTheme.colorScheme.surface,
        topBar = {
            Surface(
                modifier = Modifier.fillMaxWidth(),
                color = MaterialTheme.colorScheme.primary,
                shadowElevation = 4.dp,
                shape = RoundedCornerShape(bottomStart = 16.dp, bottomEnd = 16.dp),
            ) {
                Row(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 16.dp, vertical = 12.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.SpaceBetween,
                ) {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = MaterialTheme.colorScheme.onPrimary,
                            modifier = Modifier.size(24.dp),
                        )
                    }

                    Text(
                        "Pacientes sin Psicologo",
                        color = MaterialTheme.colorScheme.onPrimary,
                        style = MaterialTheme.typography.titleLarge,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.weight(1f, fill = false),
                    )

                    IconButton(onClick = {
                        pacientesViewModel.cargarPacientesSinPsicologo()
                    }) {
                        Icon(
                            Icons.Default.Refresh,
                            contentDescription = "Refrescar",
                            tint = MaterialTheme.colorScheme.onPrimary,
                        )
                    }
                }
            }
        },
    ) { padding ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(padding),
        ) {
            when {
                loading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(48.dp),
                        )
                    }
                }
                pacientes.isEmpty() -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.spacedBy(16.dp),
                        ) {
                            Icon(
                                Icons.Default.People,
                                contentDescription = null,
                                tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.5f),
                                modifier = Modifier.size(80.dp),
                            )
                            Text(
                                text = "No hay pacientes sin asignar",
                                style = MaterialTheme.typography.titleMedium,
                                color = MaterialTheme.colorScheme.onSurface,
                            )
                            Text(
                                text = "Todos los pacientes ya tienen psicologo asignado",
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }
                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        items(pacientes, key = { it.idPaciente }) { paciente ->
                            PacienteExpandableCard(
                                paciente = paciente,
                                isExpanded = expandedCardId == paciente.idPaciente,
                                onExpandClick = {
                                    expandedCardId =
                                        if (expandedCardId == paciente.idPaciente) {
                                            null
                                        } else {
                                            paciente.idPaciente
                                        }
                                },
                                onAsignarClick = {
                                    navController.navigate(Screens.listarPsicologo.createRoute(paciente.idPaciente))
                                },
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
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.medium,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant),
        elevation = CardDefaults.cardElevation(defaultElevation = 1.dp),
    ) {
        Column(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .animateContentSize(),
        ) {
            // Header: Informacion basica (siempre visible)
            Row(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .clickable { onExpandClick() }
                        .padding(16.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Row(
                    modifier = Modifier.weight(1f),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    // Avatar con iniciales
                    Box(
                        modifier =
                            Modifier
                                .size(48.dp)
                                .background(
                                    color = MaterialTheme.colorScheme.primaryContainer,
                                    shape = CircleShape,
                                ),
                        contentAlignment = Alignment.Center,
                    ) {
                        Text(
                            text = paciente.nombre.take(1) + paciente.apellido.take(1),
                            color = MaterialTheme.colorScheme.onPrimaryContainer,
                            style = MaterialTheme.typography.titleMedium,
                        )
                    }

                    Spacer(modifier = Modifier.width(12.dp))

                    Column {
                        Text(
                            text = "${paciente.nombre} ${paciente.apellido}",
                            style = MaterialTheme.typography.titleMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                        ) {
                            Icon(
                                Icons.Default.Email,
                                contentDescription = null,
                                tint = MaterialTheme.colorScheme.onSurfaceVariant,
                                modifier = Modifier.size(14.dp),
                            )
                            Spacer(modifier = Modifier.width(4.dp))
                            Text(
                                text = paciente.email,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }

                // Icono de expansion con animacion
                Icon(
                    imageVector = if (isExpanded) Icons.Default.KeyboardArrowUp else Icons.Default.KeyboardArrowDown,
                    contentDescription = if (isExpanded) "Contraer" else "Expandir",
                    tint = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.size(24.dp),
                )
            }

            // Contenido expandido
            AnimatedVisibility(
                visible = isExpanded,
                enter =
                    expandVertically(
                        animationSpec = tween(durationMillis = 300),
                        expandFrom = Alignment.Top,
                    ) + fadeIn(animationSpec = tween(300)),
                exit =
                    shrinkVertically(
                        animationSpec = tween(durationMillis = 300),
                        shrinkTowards = Alignment.Top,
                    ) + fadeOut(animationSpec = tween(300)),
            ) {
                Column(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 16.dp)
                            .padding(bottom = 16.dp),
                ) {
                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                    )

                    // Datos Personales
                    SubSection(
                        title = "Datos Personales",
                        icon = Icons.Default.Person,
                        iconColor = MaterialTheme.colorScheme.primary,
                    ) {
                        DetailRow("DNI", paciente.dni ?: "No especificado")
                        DetailRow("Telefono", paciente.telefono ?: "No especificado")
                        DetailRow("Genero", paciente.genero ?: "No especificado")
                        DetailRow("Fecha Nacimiento", paciente.fechaNacimiento ?: "No especificado")
                    }

                    // Situaciones
                    if (!paciente.situaciones.isNullOrEmpty()) {
                        Spacer(modifier = Modifier.height(12.dp))
                        SubSection(
                            title = "Situaciones",
                            icon = Icons.Default.Info,
                            iconColor = MaterialTheme.colorScheme.secondary,
                        ) {
                            paciente.situaciones!!.forEachIndexed { index, situacion ->
                                if (index > 0) Spacer(modifier = Modifier.height(8.dp))
                                SituacionCard(situacion)
                            }
                        }
                    }

                    // Direcciones
                    if (!paciente.direcciones.isNullOrEmpty()) {
                        Spacer(modifier = Modifier.height(12.dp))
                        SubSection(
                            title = "Direcciones",
                            icon = Icons.Default.LocationOn,
                            iconColor = MaterialTheme.colorScheme.primary,
                        ) {
                            paciente.direcciones!!.forEachIndexed { index, direccion ->
                                if (index > 0) Spacer(modifier = Modifier.height(8.dp))
                                DireccionCard(direccion)
                            }
                        }
                    }

                    // Tutores
                    if (!paciente.tutores.isNullOrEmpty()) {
                        Spacer(modifier = Modifier.height(12.dp))
                        SubSection(
                            title = "Tutores",
                            icon = Icons.Default.People,
                            iconColor = MaterialTheme.colorScheme.tertiary,
                        ) {
                            paciente.tutores!!.forEachIndexed { index, tutor ->
                                if (index > 0) Spacer(modifier = Modifier.height(8.dp))
                                TutorCard(tutor)
                            }
                        }
                    }

                    Spacer(modifier = Modifier.height(16.dp))

                    // Boton Asignar Psicologo
                    Button(
                        onClick = onAsignarClick,
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .height(48.dp),
                        shape = MaterialTheme.shapes.medium,
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.AssignmentInd,
                                contentDescription = null,
                                modifier = Modifier.size(20.dp),
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                "Asignar Psicologo",
                                style = MaterialTheme.typography.labelLarge,
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
    content: @Composable () -> Unit,
) {
    Column {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier.padding(bottom = 8.dp),
        ) {
            Icon(
                icon,
                contentDescription = null,
                tint = iconColor,
                modifier = Modifier.size(18.dp),
            )
            Spacer(modifier = Modifier.width(8.dp))
            Text(
                text = title,
                style = MaterialTheme.typography.titleSmall,
                color = iconColor,
            )
        }
        content()
    }
}

@Composable
fun DetailRow(
    label: String,
    value: String,
) {
    Row(
        modifier =
            Modifier
                .fillMaxWidth()
                .padding(vertical = 4.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
    ) {
        Text(
            text = label,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        Text(
            text = value,
            style = MaterialTheme.typography.bodySmall,
            fontWeight = FontWeight.Medium,
            color = MaterialTheme.colorScheme.onSurface,
        )
    }
}

@Composable
fun DireccionCard(direccion: DireccionResponseDTO) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.small,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
    ) {
        Column(
            modifier = Modifier.padding(12.dp),
        ) {
            if (!direccion.calle.isNullOrBlank()) {
                DetailRow("Calle", direccion.calle)
            }
            if (!direccion.ciudad.isNullOrBlank()) {
                DetailRow("Ciudad", direccion.ciudad)
            }
            if (!direccion.provincia.isNullOrBlank()) {
                DetailRow("Provincia", direccion.provincia)
            }
            if (!direccion.codigoPostal.isNullOrBlank()) {
                DetailRow("Codigo Postal", direccion.codigoPostal)
            }
            if (!direccion.pais.isNullOrBlank()) {
                DetailRow("Pais", direccion.pais)
            }
        }
    }
}

@Composable
fun TutorCard(tutor: TutorResponseDTO) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.small,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
    ) {
        Column(
            modifier = Modifier.padding(12.dp),
        ) {
            if (!tutor.nombre.isNullOrBlank()) {
                DetailRow("Nombre", tutor.nombre)
            }
            if (!tutor.tipo.isNullOrBlank()) {
                DetailRow("Parentesco", tutor.tipo)
            }
            if (!tutor.telefono.isNullOrBlank()) {
                DetailRow("Telefono", tutor.telefono)
            }
            if (!tutor.email.isNullOrBlank()) {
                DetailRow("Email", tutor.email)
            }
            if (!tutor.dni.isNullOrBlank()) {
                DetailRow("DNI", tutor.dni)
            }
        }
    }
}

@Composable
fun SituacionCard(situacion: SituacionDTO) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.small,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
    ) {
        Column(
            modifier = Modifier.padding(12.dp),
        ) {
            // Nombre de la situacion (siempre visible)
            if (!situacion.nombre.isNullOrBlank()) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Text(
                        text = situacion.nombre,
                        style = MaterialTheme.typography.bodyMedium,
                        fontWeight = FontWeight.Bold,
                        color = MaterialTheme.colorScheme.primary,
                    )
                    if (!situacion.categoria.isNullOrBlank()) {
                        Surface(
                            shape = MaterialTheme.shapes.extraSmall,
                            color = MaterialTheme.colorScheme.secondaryContainer,
                        ) {
                            Text(
                                text = situacion.categoria,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSecondaryContainer,
                                modifier = Modifier.padding(horizontal = 8.dp, vertical = 2.dp),
                            )
                        }
                    }
                }
            }

            // Descripcion (si existe)
            if (!situacion.descripcion.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = situacion.descripcion,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    lineHeight = 16.sp,
                )
            }
        }
    }
}
