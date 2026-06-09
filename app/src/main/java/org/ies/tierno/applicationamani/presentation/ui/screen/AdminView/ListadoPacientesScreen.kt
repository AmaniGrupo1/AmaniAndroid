package org.ies.tierno.applicationamani.presentation.ui.screen.admin

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
import androidx.compose.foundation.shape.RoundedCornerShape
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
import androidx.compose.material3.FloatingActionButtonDefaults
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel

// Paleta de colores unificada con las demás pantallas

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
    val pacientes by viewModel.paciente.collectAsState()
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }

    // Fuente Roboto correctamente configurada
    val roboto =
        FontFamily(
            Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Normal),
            Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Bold),
            Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Medium),
            Font(R.font.roboto_variablefont_wdth_wght, FontWeight.SemiBold),
        )

    Scaffold(
        containerColor = MaterialTheme.colorScheme.background,
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
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = MaterialTheme.colorScheme.onPrimary,
                            modifier = Modifier.size(24.dp),
                        )
                    }

                    Text(
                        text = stringResource(R.string.auto_listado_de_pacientes),
                        color = MaterialTheme.colorScheme.onPrimary,
                        fontFamily = roboto,
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Bold,
                        letterSpacing = 1.sp,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.weight(1f, fill = false),
                    )

                    // Espaciador para balancear el ícono
                    Spacer(modifier = Modifier.width(48.dp))
                }
            }
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = { navController.navigate(Screens.registro.route) },
                containerColor = MaterialTheme.colorScheme.primary,
                shape = RoundedCornerShape(50.dp),
                elevation = FloatingActionButtonDefaults.elevation(defaultElevation = 4.dp),
            ) {
                Icon(
                    Icons.Default.People,
                    contentDescription = stringResource(R.string.auto_agregar_paciente),
                    tint = MaterialTheme.colorScheme.onPrimary,
                )
            }
        },
    ) { paddingValues ->

        // Contenido principal
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
                    verticalArrangement = Arrangement.spacedBy(16.dp),
                ) {
                    Icon(
                        imageVector = Icons.Default.People,
                        contentDescription = stringResource(R.string.auto_sin_pacientes),
                        modifier = Modifier.size(80.dp),
                        tint = MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.5f),
                    )
                    Text(
                        text = stringResource(R.string.auto_no_hay_pacientes_registrados),
                        fontFamily = roboto,
                        fontSize = 16.sp,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                    Button(
                        onClick = { navController.navigate(Screens.registro.route) },
                        colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.primary),
                        shape = RoundedCornerShape(12.dp),
                    ) {
                        Text(stringResource(R.string.auto_agregar_primer_paciente), fontFamily = roboto)
                    }
                }
            }
        } else {
            LazyColumn(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .padding(paddingValues)
                        .padding(horizontal = 16.dp)
                        .padding(top = 16.dp),
                verticalArrangement = Arrangement.spacedBy(16.dp),
            ) {
                items(pacientes) { paciente ->
                    PacienteCard(
                        paciente = paciente,
                        onEditar = {
                            navController.navigate("editarPaciente/${paciente.idPaciente}")
                        },
                        roboto = roboto,
                    )
                }

                item {
                    Spacer(modifier = Modifier.height(16.dp))
                }
            }
        }
    }
}

@Composable
fun PacienteCard(
    paciente: DatosPacienteAdminDTO,
    onEditar: () -> Unit,
    roboto: FontFamily,
) {
    val metodoPagoStr = paciente.metodoPago
    val metodoIcono = if (metodoPagoStr == "ONLINE") Icons.Default.CreditCard else Icons.Default.Payments
    val metodoTexto =
        if (metodoPagoStr ==
            "ONLINE"
        ) {
            "Pago Online"
        } else if (metodoPagoStr == "PRESENCIAL") {
            "Pago Presencial"
        } else {
            "No especificado"
        }

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
    ) {
        Column(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
        ) {
            // Header - Nombre completo con avatar
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                // Avatar circular con iniciales
                Surface(
                    modifier = Modifier.size(50.dp),
                    shape = RoundedCornerShape(25.dp),
                    color = MaterialTheme.colorScheme.primary,
                    shadowElevation = 2.dp,
                ) {
                    Box(contentAlignment = Alignment.Center) {
                        Text(
                            text =
                                paciente.nombreUsuario.take(1).uppercase() +
                                    paciente.apellidoUsuario.take(1).uppercase(),
                            color = MaterialTheme.colorScheme.onPrimary,
                            fontWeight = FontWeight.Bold,
                            fontSize = 18.sp,
                            fontFamily = roboto,
                        )
                    }
                }

                Spacer(modifier = Modifier.width(12.dp))

                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = "${paciente.nombreUsuario} ${paciente.apellidoUsuario}",
                        color = MaterialTheme.colorScheme.onSurface,
                        fontFamily = roboto,
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold,
                    )
                    Text(
                        text = "ID: ${paciente.idPaciente}",
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        fontFamily = roboto,
                        fontSize = 12.sp,
                    )
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Línea divisoria
            Surface(
                modifier = Modifier.fillMaxWidth(),
                color = MaterialTheme.colorScheme.surfaceVariant,
                shape = RoundedCornerShape(2.dp),
            ) {
                Spacer(modifier = Modifier.height(1.dp))
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Email
            InfoRow(
                icon = Icons.Default.Email,
                label = stringResource(R.string.auto_email),
                value = paciente.emailUsuario,
                iconColor = MaterialTheme.colorScheme.primary,
                roboto = roboto,
            )

            // Teléfono
            InfoRow(
                icon = Icons.Default.Phone,
                label = stringResource(R.string.auto_telefono),
                value = paciente.telefono,
                iconColor = MaterialTheme.colorScheme.primary,
                roboto = roboto,
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Fecha Nacimiento y Género en columnas separadas (una debajo de otra)
            Column(
                modifier = Modifier.fillMaxWidth(),
                verticalArrangement = Arrangement.spacedBy(8.dp),
            ) {
                // Fecha de Nacimiento
                InfoRowCompact(
                    icon = Icons.Default.Cake,
                    label = stringResource(R.string.auto_fecha_de_nacimiento),
                    value = paciente.fechaNacimiento,
                    iconColor = MaterialTheme.colorScheme.primary,
                    roboto = roboto,
                    modifier = Modifier.fillMaxWidth(),
                )

                // Género
                InfoRowCompact(
                    icon = Icons.Default.Wc,
                    label = stringResource(R.string.auto_genero),
                    value = paciente.genero,
                    iconColor = MaterialTheme.colorScheme.primary,
                    roboto = roboto,
                    modifier = Modifier.fillMaxWidth(),
                )
            }

            // Direcciones
            if (!paciente.direccion.isNullOrEmpty()) {
                Spacer(modifier = Modifier.height(12.dp))
                Text(
                    text = stringResource(R.string.auto_direcciones),
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 14.sp,
                    color = MaterialTheme.colorScheme.onSurface,
                )
                Spacer(modifier = Modifier.height(4.dp))
                paciente.direccion.forEach { direccion ->
                    Surface(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(vertical = 4.dp),
                        shape = RoundedCornerShape(8.dp),
                        color = MaterialTheme.colorScheme.surfaceVariant,
                    ) {
                        Column(
                            modifier =
                                Modifier
                                    .fillMaxWidth()
                                    .padding(12.dp),
                        ) {
                            Text(
                                text = direccion.calle,
                                fontFamily = roboto,
                                fontSize = 13.sp,
                                fontWeight = FontWeight.Medium,
                                color = MaterialTheme.colorScheme.onSurface,
                            )
                            if (direccion.ciudad != null || direccion.provincia != null) {
                                Text(
                                    text = listOfNotNull(direccion.ciudad, direccion.provincia).joinToString(", "),
                                    fontFamily = roboto,
                                    fontSize = 12.sp,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                )
                            }
                            if (direccion.codigoPostal != null || direccion.pais != null) {
                                Text(
                                    text = listOfNotNull(direccion.codigoPostal, direccion.pais).joinToString(" - "),
                                    fontFamily = roboto,
                                    fontSize = 12.sp,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                )
                            }
                        }
                    }
                }
            }

            // Tutores
            if (!paciente.tutores.isNullOrEmpty()) {
                Spacer(modifier = Modifier.height(12.dp))
                Text(
                    text = stringResource(R.string.auto_tutores),
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 14.sp,
                    color = MaterialTheme.colorScheme.onSurface,
                )
                Spacer(modifier = Modifier.height(4.dp))
                paciente.tutores.forEach { tutor ->
                    Surface(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(vertical = 4.dp),
                        shape = RoundedCornerShape(8.dp),
                        color = MaterialTheme.colorScheme.surfaceVariant,
                    ) {
                        Column(
                            modifier =
                                Modifier
                                    .fillMaxWidth()
                                    .padding(12.dp),
                        ) {
                            Text(
                                text = "${tutor.nombre} (${tutor.tipo})",
                                fontFamily = roboto,
                                fontSize = 13.sp,
                                fontWeight = FontWeight.Medium,
                                color = MaterialTheme.colorScheme.onSurface,
                            )
                            Text(
                                text = "Tel: ${tutor.telefono}",
                                fontFamily = roboto,
                                fontSize = 12.sp,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                            Text(
                                text = "Email: ${tutor.email}",
                                fontFamily = roboto,
                                fontSize = 12.sp,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                            if (tutor.dni.isNotBlank()) {
                                Text(
                                    text = "DNI: ${tutor.dni}",
                                    fontFamily = roboto,
                                    fontSize = 12.sp,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                )
                            }
                        }
                    }
                }
            }

            // Situaciones
            if (!paciente.situaciones.isNullOrEmpty()) {
                Spacer(modifier = Modifier.height(12.dp))
                Text(
                    text = stringResource(R.string.auto_situaciones),
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 14.sp,
                    color = MaterialTheme.colorScheme.onSurface,
                )
                Spacer(modifier = Modifier.height(4.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    paciente.situaciones.forEach { situacion ->
                        Surface(
                            shape = RoundedCornerShape(16.dp),
                            color = MaterialTheme.colorScheme.primaryContainer,
                        ) {
                            Text(
                                text = situacion.descripcion ?: situacion.nombre,
                                fontFamily = roboto,
                                fontSize = 12.sp,
                                color = MaterialTheme.colorScheme.primary,
                                modifier = Modifier.padding(horizontal = 12.dp, vertical = 6.dp),
                            )
                        }
                    }
                }
            }

            // Método de pago
            Spacer(modifier = Modifier.height(8.dp))
            Surface(
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(8.dp),
                color =
                    when (metodoPagoStr) {
                        "ONLINE" -> MaterialTheme.colorScheme.primaryContainer
                        "PRESENCIAL" -> MaterialTheme.colorScheme.tertiaryContainer
                        else -> MaterialTheme.colorScheme.surfaceVariant
                    },
            ) {
                Row(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(12.dp),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Icon(
                        imageVector = metodoIcono,
                        contentDescription = stringResource(R.string.auto_metodo_de_pago),
                        tint =
                            when (metodoPagoStr) {
                                "ONLINE" -> MaterialTheme.colorScheme.primary
                                "PRESENCIAL" -> MaterialTheme.colorScheme.tertiary
                                else -> MaterialTheme.colorScheme.onSurfaceVariant
                            },
                        modifier = Modifier.size(20.dp),
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = stringResource(R.string.auto_metodo_de_pago_1),
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        fontFamily = roboto,
                        fontSize = 13.sp,
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = metodoTexto,
                        color =
                            when (metodoPagoStr) {
                                "ONLINE" -> MaterialTheme.colorScheme.primary
                                "PRESENCIAL" -> MaterialTheme.colorScheme.tertiary
                                else -> MaterialTheme.colorScheme.onSurface
                            },
                        fontFamily = roboto,
                        fontSize = 14.sp,
                        fontWeight = FontWeight.Bold,
                    )
                }
            }

            // Fechas
            if (paciente.createdAt.isNotBlank()) {
                HorizontalDivider(
                    modifier = Modifier.padding(vertical = 12.dp),
                    color = MaterialTheme.colorScheme.outlineVariant,
                )

                InfoRowCompact(
                    icon = Icons.Default.DateRange,
                    label = stringResource(R.string.auto_fecha_de_registro),
                    value = paciente.createdAt.split("T")[0],
                    iconColor = MaterialTheme.colorScheme.onSurfaceVariant,
                    roboto = roboto,
                    modifier = Modifier.fillMaxWidth(),
                )
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Botón Editar
            Button(
                onClick = onEditar,
                colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.primary),
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(12.dp),
                elevation = ButtonDefaults.buttonElevation(defaultElevation = 2.dp),
            ) {
                Icon(
                    Icons.Default.Edit,
                    contentDescription = stringResource(R.string.auto_editar),
                    modifier = Modifier.size(18.dp),
                    tint = MaterialTheme.colorScheme.onPrimary,
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(stringResource(R.string.auto_editar_datos),
                    color = MaterialTheme.colorScheme.onPrimary,
                    fontFamily = roboto,
                    fontWeight = FontWeight.Medium,
                    fontSize = 14.sp,
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
 * @param roboto Familia tipográfica Roboto.
 */
@Composable
fun InfoRow(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    label: String,
    value: String,
    iconColor: Color,
    roboto: FontFamily,
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Icon(
            imageVector = icon,
            contentDescription = label,
            tint = iconColor,
            modifier = Modifier.size(20.dp),
        )
        Spacer(modifier = Modifier.width(12.dp))
        Text(
            text = "$label:",
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            fontFamily = roboto,
            fontSize = 14.sp,
            fontWeight = FontWeight.Medium,
            modifier = Modifier.width(80.dp),
        )
        Text(
            text = value,
            color = MaterialTheme.colorScheme.onSurface,
            fontFamily = roboto,
            fontSize = 14.sp,
            modifier = Modifier.weight(1f),
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
 * @param roboto Familia tipográfica Roboto.
 * @param modifier Modificador de diseño opcional.
 */
@Composable
fun InfoRowCompact(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    label: String,
    value: String,
    iconColor: Color,
    roboto: FontFamily,
    modifier: Modifier = Modifier,
) {
    Row(
        modifier = modifier,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Icon(
            imageVector = icon,
            contentDescription = label,
            tint = iconColor,
            modifier = Modifier.size(18.dp),
        )
        Spacer(modifier = Modifier.width(12.dp))
        Text(
            text = "$label:",
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            fontFamily = roboto,
            fontSize = 13.sp,
            fontWeight = FontWeight.SemiBold,
            modifier = Modifier.width(130.dp),
        )
        Text(
            text = value.ifEmpty { "No especificado" },
            color = MaterialTheme.colorScheme.onSurface,
            fontFamily = roboto,
            fontSize = 13.sp,
            fontWeight = FontWeight.Medium,
            modifier = Modifier.weight(1f),
        )
    }
}
