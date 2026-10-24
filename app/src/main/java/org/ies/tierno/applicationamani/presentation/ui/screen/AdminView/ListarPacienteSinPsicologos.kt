package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import android.content.res.Configuration
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
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.admin.PacienteBasicoResponseDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.DireccionResponseDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.PacientesViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel

/**
 * Pantalla que lista los pacientes que aún no tienen un psicólogo asignado.
 *
 * Muestra tarjetas expandibles con los datos básicos del paciente, su
 * dirección, tutor asignado (si es menor) y situaciones registradas.
 * Permite al administrador revisar cada caso para proceder a la asignación
 * de un profesional.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param pacientesViewModel ViewModel que gestiona la lista de pacientes sin psicólogo.
 */
@OptIn(ExperimentalMaterial3Api::class, ExperimentalAnimationApi::class)
@Composable
fun ListarPacienteSinPsicologos(
    navController: NavController,
    pacientesViewModel: PacientesViewModel = koinViewModel(),
) {
    val pacientes by pacientesViewModel.pacientes.collectAsStateWithLifecycle()
    val loading by pacientesViewModel.loading.collectAsStateWithLifecycle()

    LaunchedEffect(Unit) {
        pacientesViewModel.cargarPacientesSinPsicologo()
    }

    ListarPacienteSinPsicologosContent(
        pacientes = pacientes,
        loading = loading,
        onBackClick = { navController.navigateUp() },
        onRefreshClick = { pacientesViewModel.cargarPacientesSinPsicologo() },
        onAsignarClick = { idPaciente ->
            navController.navigate(Screens.listarPsicologo.createRoute(idPaciente))
        },
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListarPacienteSinPsicologosContent(
    pacientes: List<PacienteBasicoResponseDTO>,
    loading: Boolean,
    onBackClick: () -> Unit,
    onRefreshClick: () -> Unit,
    onAsignarClick: (Long) -> Unit,
    modifier: Modifier = Modifier,
) {
    var expandedCardId by remember { mutableStateOf<Long?>(null) }

    Scaffold(
        modifier = modifier,
        containerColor = MaterialTheme.colorScheme.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_pacientes_sin_psicologo),
                        style = MaterialTheme.typography.titleLarge,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                        )
                    }
                },
                actions = {
                    IconButton(onClick = onRefreshClick) {
                        Icon(
                            Icons.Default.Refresh,
                            contentDescription = stringResource(R.string.auto_refrescar),
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                        actionIconContentColor = MaterialTheme.colorScheme.onSurface,
                    ),
            )
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
                            modifier = Modifier.size(Spacing.avatarMedium),
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
                            verticalArrangement = Arrangement.spacedBy(Spacing.m),
                        ) {
                            Icon(
                                Icons.Default.People,
                                contentDescription = null,
                                tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.5f),
                                modifier = Modifier.size(Spacing.avatarLarge),
                            )
                            Text(
                                text = stringResource(R.string.auto_no_hay_pacientes_sin),
                                style = MaterialTheme.typography.titleMedium,
                                color = MaterialTheme.colorScheme.onSurface,
                            )
                            Text(
                                text = stringResource(R.string.auto_todos_los_pacientes_ya),
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }
                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(Spacing.m),
                        verticalArrangement = Arrangement.spacedBy(Spacing.md),
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
                                onAsignarClick = { onAsignarClick(paciente.idPaciente) },
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
    modifier: Modifier = Modifier,
) {
    val noEspecificado = stringResource(R.string.admin_no_especificado)

    Card(
        modifier = modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.medium,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainerLow),
        elevation = CardDefaults.cardElevation(defaultElevation = Spacing.xxs),
    ) {
        Column(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .animateContentSize(),
        ) {
            Row(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .clickable { onExpandClick() }
                        .padding(Spacing.m),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Row(
                    modifier = Modifier.weight(1f),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Box(
                        modifier =
                            Modifier
                                .size(Spacing.avatarMedium)
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

                    Spacer(modifier = Modifier.width(Spacing.md))

                    Column {
                        Text(
                            text = "${paciente.nombre} ${paciente.apellido}",
                            style = MaterialTheme.typography.titleMedium,
                            color = MaterialTheme.colorScheme.onSurface,
                        )
                        Spacer(modifier = Modifier.height(Spacing.xs))
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.Email,
                                contentDescription = null,
                                tint = MaterialTheme.colorScheme.onSurfaceVariant,
                                modifier = Modifier.size(Spacing.iconSmall),
                            )
                            Spacer(modifier = Modifier.width(Spacing.xs))
                            Text(
                                text = paciente.email,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }

                Icon(
                    imageVector = if (isExpanded) Icons.Default.KeyboardArrowUp else Icons.Default.KeyboardArrowDown,
                    contentDescription =
                        if (isExpanded) {
                            stringResource(R.string.admin_contraer)
                        } else {
                            stringResource(R.string.admin_expandir)
                        },
                    tint = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.size(Spacing.iconMedium),
                )
            }

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
                            .padding(horizontal = Spacing.m)
                            .padding(bottom = Spacing.m),
                ) {
                    HorizontalDivider(modifier = Modifier.padding(vertical = Spacing.s))

                    SubSection(
                        title = stringResource(R.string.admin_datos_personales),
                        icon = Icons.Default.Person,
                        iconColor = MaterialTheme.colorScheme.primary,
                    ) {
                        DetailRow(stringResource(R.string.admin_dni_label), paciente.dni ?: noEspecificado)
                        DetailRow(stringResource(R.string.auto_telefono), paciente.telefono ?: noEspecificado)
                        DetailRow(stringResource(R.string.auto_genero), paciente.genero ?: noEspecificado)
                        DetailRow(stringResource(R.string.auto_fecha_de_nacimiento), paciente.fechaNacimiento ?: noEspecificado)
                    }

                    if (!paciente.situaciones.isNullOrEmpty()) {
                        Spacer(modifier = Modifier.height(Spacing.md))
                        SubSection(
                            title = stringResource(R.string.auto_situaciones),
                            icon = Icons.Default.Info,
                            iconColor = MaterialTheme.colorScheme.secondary,
                        ) {
                            paciente.situaciones!!.forEachIndexed { index, situacion ->
                                if (index > 0) Spacer(modifier = Modifier.height(Spacing.s))
                                SituacionCard(situacion)
                            }
                        }
                    }

                    if (!paciente.direcciones.isNullOrEmpty()) {
                        Spacer(modifier = Modifier.height(Spacing.md))
                        SubSection(
                            title = stringResource(R.string.auto_direcciones),
                            icon = Icons.Default.LocationOn,
                            iconColor = MaterialTheme.colorScheme.primary,
                        ) {
                            paciente.direcciones!!.forEachIndexed { index, direccion ->
                                if (index > 0) Spacer(modifier = Modifier.height(Spacing.s))
                                DireccionCard(direccion)
                            }
                        }
                    }

                    if (!paciente.tutores.isNullOrEmpty()) {
                        Spacer(modifier = Modifier.height(Spacing.md))
                        SubSection(
                            title = stringResource(R.string.auto_tutores),
                            icon = Icons.Default.People,
                            iconColor = MaterialTheme.colorScheme.tertiary,
                        ) {
                            paciente.tutores!!.forEachIndexed { index, tutor ->
                                if (index > 0) Spacer(modifier = Modifier.height(Spacing.s))
                                TutorCard(tutor)
                            }
                        }
                    }

                    Spacer(modifier = Modifier.height(Spacing.m))

                    Button(
                        onClick = onAsignarClick,
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .height(Spacing.minTouchTarget),
                        shape = MaterialTheme.shapes.medium,
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.AssignmentInd,
                                contentDescription = null,
                                modifier = Modifier.size(Spacing.iconSmall),
                            )
                            Spacer(modifier = Modifier.width(Spacing.s))
                            Text(
                                text = stringResource(R.string.auto_asignar_psicologo),
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
            modifier = Modifier.padding(bottom = Spacing.s),
        ) {
            Icon(
                icon,
                contentDescription = null,
                tint = iconColor,
                modifier = Modifier.size(Spacing.iconSmall),
            )
            Spacer(modifier = Modifier.width(Spacing.s))
            Text(
                text = title,
                style = MaterialTheme.typography.titleSmall,
                color = iconColor,
            )
        }
        content()
    }
}

/**
 * Fila de detalle con etiqueta y valor para mostrar dentro de tarjetas informativas.
 *
 * @param label Etiqueta descriptiva del campo.
 * @param value Valor del campo a mostrar.
 */
@Composable
fun DetailRow(
    label: String,
    value: String,
) {
    Row(
        modifier =
            Modifier
                .fillMaxWidth()
                .padding(vertical = Spacing.xs),
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

/**
 * Tarjeta que muestra los datos de dirección de un paciente.
 *
 * @param direccion DTO con los campos de dirección (calle, ciudad, provincia, código postal, país).
 */
@Composable
fun DireccionCard(direccion: DireccionResponseDTO) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.small,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
    ) {
        Column(modifier = Modifier.padding(Spacing.md)) {
            if (!direccion.calle.isNullOrBlank()) {
                DetailRow(stringResource(R.string.admin_calle), direccion.calle)
            }
            if (!direccion.ciudad.isNullOrBlank()) {
                DetailRow(stringResource(R.string.admin_ciudad), direccion.ciudad)
            }
            if (!direccion.provincia.isNullOrBlank()) {
                DetailRow(stringResource(R.string.admin_provincia), direccion.provincia)
            }
            if (!direccion.codigoPostal.isNullOrBlank()) {
                DetailRow(stringResource(R.string.admin_codigo_postal), direccion.codigoPostal)
            }
            if (!direccion.pais.isNullOrBlank()) {
                DetailRow(stringResource(R.string.admin_pais), direccion.pais)
            }
        }
    }
}

/**
 * Tarjeta que muestra los datos del tutor legal de un paciente menor.
 *
 * @param tutor DTO con los campos del tutor (nombre, parentesco, teléfono, email, DNI).
 */
@Composable
fun TutorCard(tutor: TutorResponseDTO) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.small,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
    ) {
        Column(modifier = Modifier.padding(Spacing.md)) {
            if (!tutor.nombre.isNullOrBlank()) {
                DetailRow(stringResource(R.string.admin_nombre_label), tutor.nombre)
            }
            if (!tutor.tipo.isNullOrBlank()) {
                DetailRow(stringResource(R.string.admin_parentesco), tutor.tipo)
            }
            if (!tutor.telefono.isNullOrBlank()) {
                DetailRow(stringResource(R.string.auto_telefono), tutor.telefono)
            }
            if (!tutor.email.isNullOrBlank()) {
                DetailRow(stringResource(R.string.auto_email), tutor.email)
            }
            if (!tutor.dni.isNullOrBlank()) {
                DetailRow(stringResource(R.string.admin_dni_label), tutor.dni)
            }
        }
    }
}

/**
 * Tarjeta que muestra la información de una situación registrada para el paciente.
 *
 * @param situacion DTO con los campos de la situación (nombre, categoría, descripción).
 */
@Composable
fun SituacionCard(situacion: SituacionDTO) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.small,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
    ) {
        Column(modifier = Modifier.padding(Spacing.md)) {
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
                                modifier = Modifier.padding(horizontal = Spacing.s, vertical = Spacing.xxs),
                            )
                        }
                    }
                }
            }

            if (!situacion.descripcion.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(Spacing.s))
                Text(
                    text = situacion.descripcion,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        }
    }
}

@Preview(name = "ListarPacienteSinPsicologos Light", showBackground = true)
@Preview(name = "ListarPacienteSinPsicologos Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "ListarPacienteSinPsicologos FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun ListarPacienteSinPsicologosPreview() {
    org.ies.tierno.applicationamani.ui.theme.AppTheme {
        ListarPacienteSinPsicologosContent(
            pacientes =
                listOf(
                    PacienteBasicoResponseDTO(
                        idPaciente = 1L,
                        idUsuario = 10L,
                        nombre = "Lucía",
                        apellido = "Gómez",
                        email = "lucia.gomez@amani.es",
                        telefono = "611223344",
                        dni = "12345678A",
                        genero = "Femenino",
                        fechaNacimiento = "1995-04-12",
                        situaciones = emptyList(),
                        direcciones = emptyList(),
                        tutores = emptyList(),
                    ),
                ),
            loading = false,
            onBackClick = {},
            onRefreshClick = {},
            onAsignarClick = {},
        )
    }
}
