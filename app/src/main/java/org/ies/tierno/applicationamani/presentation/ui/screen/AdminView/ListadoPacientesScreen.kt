package org.ies.tierno.applicationamani.presentation.ui.screen.admin

import android.content.res.Configuration
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
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Cake
import androidx.compose.material.icons.filled.CreditCard
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Payments
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Phone
import androidx.compose.material.icons.filled.Wc
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
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
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Spacing

/**
 * Pantalla de listado de pacientes con opciones de gestión.
 *
 * Muestra una lista de pacientes registrados en el sistema con información
 * resumida (nombre, email, teléfono, método de pago) y permite al
 * administrador editar los datos de cada paciente.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona la lista de pacientes.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPacientesScreen(
    navController: NavController,
    viewModel: ListarPacientesViewModel,
) {
    val pacientes by viewModel.paciente.collectAsStateWithLifecycle()
    val snackbarHostState = remember { SnackbarHostState() }

    ListadoPacientesContent(
        pacientes = pacientes,
        snackbarHostState = snackbarHostState,
        onBackClick = { navController.navigateUp() },
        onAddClick = { navController.navigate(Screens.registro.route) },
        onEditarClick = { idPaciente ->
            navController.navigate("editarPaciente/$idPaciente")
        },
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPacientesContent(
    pacientes: List<DatosPacienteAdminDTO>,
    snackbarHostState: SnackbarHostState,
    onBackClick: () -> Unit,
    onAddClick: () -> Unit,
    onEditarClick: (Long) -> Unit,
    modifier: Modifier = Modifier,
) {
    Scaffold(
        modifier = modifier,
        containerColor = MaterialTheme.colorScheme.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_listado_de_pacientes),
                        style = MaterialTheme.typography.titleLarge,
                        fontWeight = FontWeight.Bold,
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
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                    ),
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = onAddClick,
                containerColor = MaterialTheme.colorScheme.primaryContainer,
                contentColor = MaterialTheme.colorScheme.onPrimaryContainer,
                shape = CircleShape,
            ) {
                Icon(
                    Icons.Default.People,
                    contentDescription = stringResource(R.string.auto_agregar_paciente),
                )
            }
        },
    ) { paddingValues ->
        if (pacientes.isEmpty()) {
            Box(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .padding(paddingValues),
                contentAlignment = Alignment.Center,
            ) {
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.spacedBy(Spacing.m),
                ) {
                    Icon(
                        imageVector = Icons.Default.People,
                        contentDescription = stringResource(R.string.auto_sin_pacientes),
                        modifier = Modifier.size(Spacing.avatarLarge),
                        tint = MaterialTheme.colorScheme.primary.copy(alpha = 0.5f),
                    )
                    Text(
                        text = stringResource(R.string.auto_no_hay_pacientes_registrados),
                        style = MaterialTheme.typography.titleMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                    Button(
                        onClick = onAddClick,
                        colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.primary),
                        shape = MaterialTheme.shapes.medium,
                    ) {
                        Text(stringResource(R.string.auto_agregar_primer_paciente))
                    }
                }
            }
        } else {
            LazyColumn(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .padding(paddingValues)
                        .padding(horizontal = Spacing.m)
                        .padding(top = Spacing.m),
                verticalArrangement = Arrangement.spacedBy(Spacing.m),
            ) {
                items(pacientes, key = { it.idPaciente }) { paciente ->
                    PacienteCard(
                        paciente = paciente,
                        onEditar = { onEditarClick(paciente.idPaciente) },
                    )
                }

                item {
                    Spacer(modifier = Modifier.height(Spacing.m))
                }
            }
        }
    }
}

@Composable
fun PacienteCard(
    paciente: DatosPacienteAdminDTO,
    onEditar: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val metodoPagoStr = paciente.metodoPago
    val metodoIcono = if (metodoPagoStr == "ONLINE") Icons.Default.CreditCard else Icons.Default.Payments
    val metodoTexto =
        when (metodoPagoStr) {
            "ONLINE" -> stringResource(R.string.admin_pago_online)
            "PRESENCIAL" -> stringResource(R.string.admin_pago_presencial)
            else -> stringResource(R.string.admin_no_especificado)
        }

    Card(
        modifier = modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainerLow),
        elevation = CardDefaults.cardElevation(defaultElevation = Spacing.xxs),
    ) {
        Column(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(Spacing.m),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Surface(
                    modifier = Modifier.size(Spacing.avatarMedium),
                    shape = CircleShape,
                    color = MaterialTheme.colorScheme.primaryContainer,
                ) {
                    Box(contentAlignment = Alignment.Center) {
                        Text(
                            text =
                                paciente.nombreUsuario.take(1).uppercase() +
                                    paciente.apellidoUsuario.take(1).uppercase(),
                            color = MaterialTheme.colorScheme.onPrimaryContainer,
                            fontWeight = FontWeight.Bold,
                            style = MaterialTheme.typography.titleMedium,
                        )
                    }
                }

                Spacer(modifier = Modifier.width(Spacing.md))

                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = "${paciente.nombreUsuario} ${paciente.apellidoUsuario}",
                        color = MaterialTheme.colorScheme.onSurface,
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                    )
                    Text(
                        text = stringResource(R.string.admin_id_formato, paciente.idPaciente),
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        style = MaterialTheme.typography.labelSmall,
                    )
                }
            }

            Spacer(modifier = Modifier.height(Spacing.m))

            HorizontalDivider(
                thickness = Spacing.dividerThickness,
                color = MaterialTheme.colorScheme.outlineVariant,
            )

            Spacer(modifier = Modifier.height(Spacing.m))

            InfoRow(
                icon = Icons.Default.Email,
                label = stringResource(R.string.auto_email),
                value = paciente.emailUsuario,
                iconColor = MaterialTheme.colorScheme.primary,
            )

            Spacer(modifier = Modifier.height(Spacing.xs))

            InfoRow(
                icon = Icons.Default.Phone,
                label = stringResource(R.string.auto_telefono),
                value = paciente.telefono,
                iconColor = MaterialTheme.colorScheme.primary,
            )

            Spacer(modifier = Modifier.height(Spacing.s))

            Column(
                modifier = Modifier.fillMaxWidth(),
                verticalArrangement = Arrangement.spacedBy(Spacing.s),
            ) {
                InfoRowCompact(
                    icon = Icons.Default.Cake,
                    label = stringResource(R.string.auto_fecha_de_nacimiento),
                    value = paciente.fechaNacimiento,
                    iconColor = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.fillMaxWidth(),
                )

                InfoRowCompact(
                    icon = Icons.Default.Wc,
                    label = stringResource(R.string.auto_genero),
                    value = paciente.genero,
                    iconColor = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.fillMaxWidth(),
                )
            }

            if (!paciente.direccion.isNullOrEmpty()) {
                Spacer(modifier = Modifier.height(Spacing.md))
                Text(
                    text = stringResource(R.string.auto_direcciones),
                    fontWeight = FontWeight.Bold,
                    style = MaterialTheme.typography.titleSmall,
                    color = MaterialTheme.colorScheme.onSurface,
                )
                Spacer(modifier = Modifier.height(Spacing.xs))
                paciente.direccion.forEach { direccion ->
                    Surface(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(vertical = Spacing.xs),
                        shape = MaterialTheme.shapes.small,
                        color = MaterialTheme.colorScheme.surface,
                    ) {
                        Column(
                            modifier =
                                Modifier
                                    .fillMaxWidth()
                                    .padding(Spacing.md),
                        ) {
                            Text(
                                text = direccion.calle,
                                style = MaterialTheme.typography.bodyMedium,
                                fontWeight = FontWeight.Medium,
                                color = MaterialTheme.colorScheme.onSurface,
                            )
                            if (direccion.ciudad != null || direccion.provincia != null) {
                                Text(
                                    text = listOfNotNull(direccion.ciudad, direccion.provincia).joinToString(", "),
                                    style = MaterialTheme.typography.bodySmall,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                )
                            }
                            if (direccion.codigoPostal != null || direccion.pais != null) {
                                Text(
                                    text = listOfNotNull(direccion.codigoPostal, direccion.pais).joinToString(" - "),
                                    style = MaterialTheme.typography.bodySmall,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                )
                            }
                        }
                    }
                }
            }

            if (!paciente.tutores.isNullOrEmpty()) {
                Spacer(modifier = Modifier.height(Spacing.md))
                Text(
                    text = stringResource(R.string.auto_tutores),
                    fontWeight = FontWeight.Bold,
                    style = MaterialTheme.typography.titleSmall,
                    color = MaterialTheme.colorScheme.onSurface,
                )
                Spacer(modifier = Modifier.height(Spacing.xs))
                paciente.tutores.forEach { tutor ->
                    Surface(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(vertical = Spacing.xs),
                        shape = MaterialTheme.shapes.small,
                        color = MaterialTheme.colorScheme.surface,
                    ) {
                        Column(
                            modifier =
                                Modifier
                                    .fillMaxWidth()
                                    .padding(Spacing.md),
                        ) {
                            Text(
                                text = "${tutor.nombre} (${tutor.tipo})",
                                style = MaterialTheme.typography.bodyMedium,
                                fontWeight = FontWeight.Medium,
                                color = MaterialTheme.colorScheme.onSurface,
                            )
                            Text(
                                text = stringResource(R.string.admin_tel_formato, tutor.telefono),
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                            Text(
                                text = stringResource(R.string.admin_email_formato, tutor.email),
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                            if (tutor.dni.isNotBlank()) {
                                Text(
                                    text = stringResource(R.string.admin_dni_formato, tutor.dni),
                                    style = MaterialTheme.typography.bodySmall,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                )
                            }
                        }
                    }
                }
            }

            if (!paciente.situaciones.isNullOrEmpty()) {
                Spacer(modifier = Modifier.height(Spacing.md))
                Text(
                    text = stringResource(R.string.auto_situaciones),
                    fontWeight = FontWeight.Bold,
                    style = MaterialTheme.typography.titleSmall,
                    color = MaterialTheme.colorScheme.onSurface,
                )
                Spacer(modifier = Modifier.height(Spacing.xs))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                ) {
                    paciente.situaciones.forEach { situacion ->
                        Surface(
                            shape = MaterialTheme.shapes.medium,
                            color = MaterialTheme.colorScheme.primaryContainer,
                        ) {
                            Text(
                                text = situacion.descripcion ?: situacion.nombre,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onPrimaryContainer,
                                modifier = Modifier.padding(horizontal = Spacing.md, vertical = Spacing.xs),
                            )
                        }
                    }
                }
            }

            Spacer(modifier = Modifier.height(Spacing.s))
            Surface(
                modifier = Modifier.fillMaxWidth(),
                shape = MaterialTheme.shapes.small,
                color =
                    when (metodoPagoStr) {
                        "ONLINE" -> MaterialTheme.colorScheme.primaryContainer
                        "PRESENCIAL" -> MaterialTheme.colorScheme.tertiaryContainer
                        else -> MaterialTheme.colorScheme.surface
                    },
            ) {
                Row(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(Spacing.md),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Icon(
                        imageVector = metodoIcono,
                        contentDescription = stringResource(R.string.auto_metodo_de_pago),
                        tint =
                            when (metodoPagoStr) {
                                "ONLINE" -> MaterialTheme.colorScheme.onPrimaryContainer
                                "PRESENCIAL" -> MaterialTheme.colorScheme.onTertiaryContainer
                                else -> MaterialTheme.colorScheme.onSurfaceVariant
                            },
                        modifier = Modifier.size(Spacing.iconSmall),
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(
                        text = stringResource(R.string.auto_metodo_de_pago_1),
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        style = MaterialTheme.typography.bodySmall,
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Text(
                        text = metodoTexto,
                        color =
                            when (metodoPagoStr) {
                                "ONLINE" -> MaterialTheme.colorScheme.onPrimaryContainer
                                "PRESENCIAL" -> MaterialTheme.colorScheme.onTertiaryContainer
                                else -> MaterialTheme.colorScheme.onSurface
                            },
                        style = MaterialTheme.typography.bodyMedium,
                        fontWeight = FontWeight.Bold,
                    )
                }
            }

            if (paciente.createdAt.isNotBlank()) {
                HorizontalDivider(
                    modifier = Modifier.padding(vertical = Spacing.md),
                    color = MaterialTheme.colorScheme.outlineVariant,
                )

                InfoRowCompact(
                    icon = Icons.Default.DateRange,
                    label = stringResource(R.string.auto_fecha_de_registro),
                    value = paciente.createdAt.split("T")[0],
                    iconColor = MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.fillMaxWidth(),
                )
            }

            Spacer(modifier = Modifier.height(Spacing.m))

            Button(
                onClick = onEditar,
                colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.primary),
                modifier = Modifier.fillMaxWidth(),
                shape = MaterialTheme.shapes.medium,
            ) {
                Icon(
                    Icons.Default.Edit,
                    contentDescription = stringResource(R.string.auto_editar),
                    modifier = Modifier.size(Spacing.iconSmall),
                    tint = MaterialTheme.colorScheme.onPrimary,
                )
                Spacer(modifier = Modifier.width(Spacing.s))
                Text(
                    text = stringResource(R.string.auto_editar_datos),
                    color = MaterialTheme.colorScheme.onPrimary,
                    style = MaterialTheme.typography.labelLarge,
                    fontWeight = FontWeight.Medium,
                )
            }
        }
    }
}

/**
 * Fila informativa con icono, etiqueta y valor para los datos del paciente.
 *
 * @param icon Icono vectorial representativo del campo.
 * @param label Etiqueta descriptiva del campo.
 * @param value Valor del campo a mostrar.
 * @param iconColor Color del icono.
 */
@Composable
fun InfoRow(
    icon: ImageVector,
    label: String,
    value: String,
    iconColor: Color,
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Icon(
            imageVector = icon,
            contentDescription = label,
            tint = iconColor,
            modifier = Modifier.size(Spacing.iconSmall),
        )
        Spacer(modifier = Modifier.width(Spacing.md))
        Text(
            text = "$label:",
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            style = MaterialTheme.typography.bodyMedium,
            fontWeight = FontWeight.Medium,
            modifier = Modifier.weight(0.35f),
        )
        Text(
            text = value,
            color = MaterialTheme.colorScheme.onSurface,
            style = MaterialTheme.typography.bodyMedium,
            modifier = Modifier.weight(0.65f),
        )
    }
}

/**
 * Versión compacta de [InfoRow] con icono, etiqueta y valor en una sola línea.
 *
 * @param icon Icono vectorial representativo del campo.
 * @param label Etiqueta descriptiva del campo.
 * @param value Valor del campo a mostrar.
 * @param iconColor Color del icono.
 * @param modifier Modificador de diseño opcional.
 */
@Composable
fun InfoRowCompact(
    icon: ImageVector,
    label: String,
    value: String,
    iconColor: Color,
    modifier: Modifier = Modifier,
) {
    val noEspecificado = stringResource(R.string.admin_no_especificado)
    Row(
        modifier = modifier,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Icon(
            imageVector = icon,
            contentDescription = label,
            tint = iconColor,
            modifier = Modifier.size(Spacing.iconSmall),
        )
        Spacer(modifier = Modifier.width(Spacing.md))
        Text(
            text = "$label:",
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            style = MaterialTheme.typography.bodySmall,
            fontWeight = FontWeight.SemiBold,
            modifier = Modifier.weight(0.45f),
        )
        Text(
            text = value.ifEmpty { noEspecificado },
            color = MaterialTheme.colorScheme.onSurface,
            style = MaterialTheme.typography.bodySmall,
            fontWeight = FontWeight.Medium,
            modifier = Modifier.weight(0.55f),
        )
    }
}

@Preview(name = "ListadoPacientes Light", showBackground = true)
@Preview(name = "ListadoPacientes Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "ListadoPacientes FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun ListadoPacientesScreenPreview() {
    org.ies.tierno.applicationamani.ui.theme.AppTheme {
        ListadoPacientesContent(
            pacientes =
                listOf(
                    DatosPacienteAdminDTO(
                        idPaciente = 1L,
                        nombreUsuario = "Carlos",
                        apellidoUsuario = "Ruiz",
                        emailUsuario = "carlos.ruiz@amani.es",
                        telefono = "622334455",
                        fechaNacimiento = "1990-08-21",
                        genero = "Masculino",
                        activo = true,
                        metodoPago = "ONLINE",
                        estadoPago = "COMPLETADO",
                        createdAt = "2026-01-15T10:30:00",
                        updatedAt = "2026-01-15T10:30:00",
                        direccion = emptyList(),
                        tutores = emptyList(),
                        situaciones = emptyList(),
                        edad = 35,
                    ),
                ),
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onAddClick = {},
            onEditarClick = {},
        )
    }
}
