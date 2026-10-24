package org.ies.tierno.applicationamani.presentation.ui.screens.admin

import android.content.res.Configuration
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
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.outlined.Badge
import androidx.compose.material.icons.outlined.CalendarToday
import androidx.compose.material.icons.outlined.Email
import androidx.compose.material.icons.outlined.PersonOutline
import androidx.compose.material.icons.outlined.Work
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.GetAllPacientAndPsicologoVeiwModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.time.format.DateTimeParseException

/**
 * Pantalla principal del panel de administración con vista de psicólogos.
 *
 * Muestra una lista de psicólogos registrados, cada uno con sus pacientes
 * asignados en tarjetas expandibles. Incluye la barra superior
 * [MenuAdministrador] y un botón flotante para asignar nuevos pacientes.
 * La carga inicial muestra un indicador de progreso.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona la lista de psicólogos y pacientes.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun ViewAdminPrincipal(
    navController: NavController,
    viewModel: GetAllPacientAndPsicologoVeiwModel = koinViewModel(),
) {
    val psicologos by viewModel.paciente.collectAsStateWithLifecycle()
    var showLoading by remember { mutableStateOf(true) }
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

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
                title = stringResource(R.string.admin_gestion_psicologos_titulo),
                navController = navController,
                showBackButton = false,
                actions = {
                    IconButton(onClick = {
                        scope.launch {
                            showLoading = true
                            delay(300)
                            showLoading = false
                        }
                    }) {
                        Icon(
                            Icons.Default.Refresh,
                            contentDescription = stringResource(R.string.auto_actualizar),
                            tint = colorScheme.primary,
                        )
                    }
                },
            )
        },
        containerColor = colorScheme.background,
    ) { innerPadding ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(innerPadding),
        ) {
            when {
                showLoading && psicologos.isEmpty() -> LoadingState()
                psicologos.isEmpty() -> EmptyState()
                else ->
                    PsicologosList(
                        psicologos = psicologos,
                        listState = listState,
                        isScrolled = isScrolled,
                    )
            }

            AnimatedVisibility(
                visible = isScrolled,
                enter = fadeIn(),
                exit = fadeOut(),
                modifier =
                    Modifier
                        .align(Alignment.TopCenter)
                        .padding(top = Spacing.s),
            ) {
                Surface(
                    shape = MaterialTheme.shapes.small,
                    tonalElevation = Spacing.xxs,
                    modifier = Modifier.padding(Spacing.s),
                ) {
                    Text(
                        text = stringResource(R.string.auto_desliza_para_ver_mas),
                        style = typography.labelSmall,
                        color = colorScheme.primary,
                        modifier = Modifier.padding(horizontal = Spacing.md, vertical = Spacing.xs),
                    )
                }
            }
        }
    }
}

@Composable
private fun LoadingState() {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            CircularProgressIndicator(
                modifier = Modifier.size(Spacing.avatarMedium),
                color = colorScheme.primary,
            )
            Spacer(modifier = Modifier.height(Spacing.m))
            Text(
                text = stringResource(R.string.auto_cargando_psicologos),
                color = colorScheme.onSurfaceVariant,
                style = typography.bodyMedium,
            )
        }
    }
}

@Composable
private fun EmptyState() {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            modifier = Modifier.padding(Spacing.l),
        ) {
            Icon(
                imageVector = Icons.Default.MedicalServices,
                contentDescription = null,
                modifier = Modifier.size(Spacing.avatarLarge),
                tint = colorScheme.primary.copy(alpha = 0.5f),
            )
            Spacer(modifier = Modifier.height(Spacing.m))
            Text(
                text = stringResource(R.string.auto_no_hay_psicologos_registrados),
                style = typography.headlineSmall,
                fontWeight = FontWeight.Medium,
                color = colorScheme.onSurface,
            )
            Spacer(modifier = Modifier.height(Spacing.s))
            Text(
                text = stringResource(R.string.auto_los_psicologos_apareceran_aqui),
                style = typography.bodyMedium,
                color = colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center,
            )
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun PsicologosList(
    psicologos: List<ListaPacientesAndPsicologo>,
    listState: LazyListState,
    isScrolled: Boolean,
) {
    LazyColumn(
        state = listState,
        modifier =
            Modifier
                .fillMaxSize()
                .padding(horizontal = Spacing.m)
                .padding(top = Spacing.s),
        verticalArrangement = Arrangement.spacedBy(Spacing.m),
    ) {
        item(key = "header_stats") {
            HeaderStats(totalPsicologos = psicologos.size)
        }

        items(
            items = psicologos,
            key = { psicologo -> psicologo.idPsicologo },
        ) { psicologo ->
            PsicologoCard(psicologo = psicologo)
        }

        item(key = "bottom_spacer") { Spacer(modifier = Modifier.height(Spacing.m)) }
    }
}

@Composable
private fun HeaderStats(totalPsicologos: Int) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = shapes.medium,
        colors = CardDefaults.cardColors(containerColor = colorScheme.primaryContainer),
        elevation = CardDefaults.cardElevation(defaultElevation = Spacing.xxs),
    ) {
        Row(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(Spacing.m),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Column {
                Text(
                    text = stringResource(R.string.auto_total_de_psicologos),
                    style = typography.labelLarge,
                    color = colorScheme.onPrimaryContainer,
                )
                Text(
                    text = "$totalPsicologos",
                    style = typography.displayMedium,
                    fontWeight = FontWeight.Bold,
                    color = colorScheme.onPrimaryContainer,
                )
            }
            Icon(
                imageVector = Icons.Default.People,
                contentDescription = null,
                tint = colorScheme.onPrimaryContainer,
                modifier = Modifier.size(Spacing.avatarMedium),
            )
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PsicologoCard(psicologo: ListaPacientesAndPsicologo) {
    var expanded by remember { mutableStateOf(false) }
    val colorScheme = MaterialTheme.colorScheme
    val shapes = MaterialTheme.shapes

    Card(
        modifier =
            Modifier
                .fillMaxWidth()
                .animateContentSize(),
        shape = shapes.medium,
        elevation = CardDefaults.cardElevation(defaultElevation = Spacing.xxs),
        colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceContainerLow),
    ) {
        Column(modifier = Modifier.fillMaxWidth()) {
            PsicologoHeader(
                psicologo = psicologo,
                expanded = expanded,
                onExpandClick = { expanded = !expanded },
            )

            AnimatedVisibility(
                visible = expanded,
                enter =
                    expandVertically(
                        animationSpec = tween(durationMillis = 300, easing = FastOutSlowInEasing),
                    ) + fadeIn(),
                exit =
                    shrinkVertically(
                        animationSpec = tween(durationMillis = 200, easing = FastOutSlowInEasing),
                    ) + fadeOut(),
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
    onExpandClick: () -> Unit,
) {
    val pacientesCount = psicologo.pacientes.size
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = colorScheme.surfaceContainerLow,
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
                        .padding(Spacing.m),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.Top,
            ) {
                Row(
                    modifier = Modifier.weight(1f),
                    horizontalArrangement = Arrangement.spacedBy(Spacing.md),
                ) {
                    Box(
                        modifier =
                            Modifier
                                .size(Spacing.avatarMedium)
                                .clip(CircleShape)
                                .background(colorScheme.primaryContainer),
                        contentAlignment = Alignment.Center,
                    ) {
                        Text(
                            text = psicologo.nombrePsicologo.take(1) + psicologo.apellidoPsicologo.take(1),
                            style = typography.titleLarge,
                            fontWeight = FontWeight.Bold,
                            color = colorScheme.onPrimaryContainer,
                        )
                    }

                    Column(modifier = Modifier.weight(1f)) {
                        Text(
                            text = "${psicologo.nombrePsicologo} ${psicologo.apellidoPsicologo}",
                            style = typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                            color = colorScheme.onSurface,
                        )
                        Spacer(modifier = Modifier.height(Spacing.xs))
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                        ) {
                            Icon(
                                imageVector = Icons.Outlined.Email,
                                contentDescription = null,
                                modifier = Modifier.size(Spacing.iconSmall),
                                tint = colorScheme.onSurfaceVariant,
                            )
                            Text(
                                text = psicologo.emailPsicologo,
                                style = typography.bodySmall,
                                color = colorScheme.onSurfaceVariant,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                            )
                        }
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                        ) {
                            Icon(
                                imageVector = Icons.Outlined.Work,
                                contentDescription = null,
                                modifier = Modifier.size(Spacing.iconSmall),
                                tint = colorScheme.primary,
                            )
                            Text(
                                text = psicologo.especialidad,
                                style = typography.bodySmall,
                                color = colorScheme.primary,
                                fontWeight = FontWeight.Medium,
                            )
                        }
                    }
                }

                Column(
                    horizontalAlignment = Alignment.End,
                    verticalArrangement = Arrangement.spacedBy(Spacing.s),
                ) {
                    Surface(
                        shape = CircleShape,
                        color = if (pacientesCount > 0) colorScheme.secondaryContainer else colorScheme.surfaceVariant,
                        modifier = Modifier.width(IntrinsicSize.Min),
                    ) {
                        Row(
                            modifier = Modifier.padding(horizontal = Spacing.s, vertical = Spacing.xs),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(Spacing.xs),
                        ) {
                            Icon(
                                imageVector = Icons.Default.People,
                                contentDescription = null,
                                modifier = Modifier.size(Spacing.iconSmall),
                                tint = if (pacientesCount > 0) colorScheme.onSecondaryContainer else colorScheme.onSurfaceVariant,
                            )
                            Text(
                                text =
                                    if (pacientesCount == 1) {
                                        stringResource(R.string.admin_pacientes_count_singular, pacientesCount)
                                    } else {
                                        stringResource(R.string.admin_pacientes_count_plural, pacientesCount)
                                    },
                                style = typography.labelSmall,
                                fontWeight = FontWeight.Medium,
                                color = if (pacientesCount > 0) colorScheme.onSecondaryContainer else colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                    IconButton(onClick = onExpandClick) {
                        Icon(
                            imageVector = if (expanded) Icons.Default.KeyboardArrowUp else Icons.Default.KeyboardArrowDown,
                            contentDescription =
                                if (expanded) {
                                    stringResource(R.string.admin_contraer)
                                } else {
                                    stringResource(R.string.admin_expandir)
                                },
                            tint = colorScheme.primary,
                        )
                    }
                }
            }

            if (!expanded) {
                HorizontalDivider(
                    modifier = Modifier.padding(horizontal = Spacing.m),
                    thickness = Spacing.dividerThickness,
                    color = colorScheme.outlineVariant,
                )
                Spacer(modifier = Modifier.height(Spacing.md))
                Row(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(horizontal = Spacing.m),
                    horizontalArrangement = Arrangement.spacedBy(Spacing.m),
                ) {
                    val noRegistrada = stringResource(R.string.admin_licencia_no_registrada)
                    val noDisponible = stringResource(R.string.admin_fecha_no_disponible)
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            imageVector = Icons.Outlined.Badge,
                            contentDescription = null,
                            modifier = Modifier.size(Spacing.iconSmall),
                            tint = colorScheme.onSurfaceVariant,
                        )
                        Spacer(modifier = Modifier.width(Spacing.xs))
                        Text(
                            text = stringResource(R.string.admin_licencia_formato, psicologo.licencia ?: noRegistrada),
                            style = typography.labelSmall,
                            color = colorScheme.onSurfaceVariant,
                        )
                    }
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            imageVector = Icons.Outlined.CalendarToday,
                            contentDescription = null,
                            modifier = Modifier.size(Spacing.iconSmall),
                            tint = colorScheme.onSurfaceVariant,
                        )
                        Spacer(modifier = Modifier.width(Spacing.xs))
                        Text(
                            text = stringResource(R.string.admin_alta_formato, formatFechaCompacta(psicologo.fechaDadoAlta, noDisponible)),
                            style = typography.labelSmall,
                            color = colorScheme.onSurfaceVariant,
                        )
                    }
                }
                Spacer(modifier = Modifier.height(Spacing.md))
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun ExpandedContent(psicologo: ListaPacientesAndPsicologo) {
    val pacientes = psicologo.pacientes
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Column(
        modifier =
            Modifier
                .fillMaxWidth()
                .background(colorScheme.surfaceContainer)
                .padding(Spacing.m),
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Text(
                text = stringResource(R.string.auto_pacientes_asignados),
                style = typography.titleSmall,
                fontWeight = FontWeight.SemiBold,
                color = colorScheme.onSurface,
            )
            if (pacientes.isNotEmpty()) {
                Text(
                    text = stringResource(R.string.admin_total_formato, pacientes.size),
                    style = typography.labelMedium,
                    color = colorScheme.primary,
                    fontWeight = FontWeight.Medium,
                )
            }
        }

        Spacer(modifier = Modifier.height(Spacing.md))

        if (pacientes.isEmpty()) {
            Box(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .padding(Spacing.xl),
                contentAlignment = Alignment.Center,
            ) {
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Icon(
                        imageVector = Icons.Outlined.PersonOutline,
                        contentDescription = null,
                        modifier = Modifier.size(Spacing.avatarMedium),
                        tint = colorScheme.onSurfaceVariant.copy(alpha = 0.5f),
                    )
                    Spacer(modifier = Modifier.height(Spacing.s))
                    Text(
                        text = stringResource(R.string.auto_no_hay_pacientes_asignados),
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                    )
                }
            }
        } else {
            pacientes.forEach { paciente ->
                PacienteItem(paciente = paciente)
                if (paciente != pacientes.last()) {
                    Spacer(modifier = Modifier.height(Spacing.s))
                }
            }
        }

        Spacer(modifier = Modifier.height(Spacing.md))
        Button(
            onClick = { },
            modifier = Modifier.fillMaxWidth(),
            shape = CircleShape,
            colors =
                ButtonDefaults.buttonColors(
                    containerColor = colorScheme.primary,
                    contentColor = colorScheme.onPrimary,
                ),
        ) {
            Icon(
                imageVector = Icons.Default.Add,
                contentDescription = null,
                modifier = Modifier.size(Spacing.iconSmall),
            )
            Spacer(modifier = Modifier.width(Spacing.s))
            Text(
                text = stringResource(R.string.auto_asignar_nuevo_paciente),
                style = typography.labelLarge,
                fontWeight = FontWeight.Medium,
            )
        }
    }
}

/**
 * Tarjeta compacta que muestra la información resumida de un paciente asignado.
 *
 * @param paciente DTO con los datos básicos del paciente (nombre, apellido, email).
 */
@Composable
fun PacienteItem(paciente: PacientesAsignadoDTO) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = shapes.medium,
        colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = Spacing.xxs),
    ) {
        Row(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(Spacing.md),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(Spacing.md),
        ) {
            Box(
                modifier =
                    Modifier
                        .size(Spacing.avatarSmall)
                        .clip(CircleShape)
                        .background(colorScheme.secondaryContainer),
                contentAlignment = Alignment.Center,
            ) {
                Text(
                    text = paciente.nombre.take(1) + paciente.apellido.take(1),
                    style = typography.titleSmall,
                    fontWeight = FontWeight.Bold,
                    color = colorScheme.onSecondaryContainer,
                )
            }
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = "${paciente.nombre} ${paciente.apellido}",
                    style = typography.bodyMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = colorScheme.onSurface,
                )
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(Spacing.xs),
                ) {
                    Icon(
                        imageVector = Icons.Outlined.Email,
                        contentDescription = null,
                        modifier = Modifier.size(Spacing.iconSmall),
                        tint = colorScheme.onSurfaceVariant,
                    )
                    Text(
                        text = paciente.email,
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
            }
            Surface(
                shape = CircleShape,
                color = colorScheme.tertiaryContainer,
                modifier = Modifier.size(Spacing.xl),
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Icon(
                        imageVector = Icons.Default.CheckCircle,
                        contentDescription = null,
                        modifier = Modifier.size(Spacing.iconSmall),
                        tint = colorScheme.onTertiaryContainer,
                    )
                }
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
private fun formatFechaCompacta(
    fechaString: String,
    fallback: String,
): String =
    try {
        val formatter = DateTimeFormatter.ISO_OFFSET_DATE_TIME
        val dateTime = LocalDateTime.parse(fechaString, formatter)
        val formatterOutput = DateTimeFormatter.ofPattern("dd/MM/yyyy")
        dateTime.format(formatterOutput)
    } catch (e: DateTimeParseException) {
        try {
            fechaString.substring(0, minOf(10, fechaString.length))
        } catch (_: Exception) {
            fallback
        }
    }

@RequiresApi(Build.VERSION_CODES.O)
@Preview(name = "ViewAdminPrincipal Light", showBackground = true)
@Preview(name = "ViewAdminPrincipal Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "ViewAdminPrincipal FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun ViewAdminPrincipalPreview() {
    org.ies.tierno.applicationamani.ui.theme.AppTheme {
        Column(modifier = Modifier.padding(Spacing.m)) {
            HeaderStats(totalPsicologos = 3)
            Spacer(modifier = Modifier.height(Spacing.m))
            PsicologoCard(
                psicologo =
                    ListaPacientesAndPsicologo(
                        idPsicologo = 1L,
                        nombrePsicologo = "Marta",
                        apellidoPsicologo = "Sánchez",
                        emailPsicologo = "marta.sanchez@amani.es",
                        especialidad = "Psicología Clínica",
                        licencia = "M-12345",
                        fechaDadoAlta = "2026-01-10T09:00:00Z",
                        pacientes =
                            listOf(
                                PacientesAsignadoDTO(
                                    idPaciente = 1L,
                                    nombre = "Pedro",
                                    apellido = "Gómez",
                                    email = "pedro@amani.es",
                                ),
                            ),
                    ),
            )
        }
    }
}
