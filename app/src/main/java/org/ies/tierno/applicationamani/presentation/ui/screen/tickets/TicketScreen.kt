package org.ies.tierno.applicationamani.presentation.ui.screen.tickets

import android.content.res.Configuration
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
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material.icons.filled.Warning
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ColorScheme
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuAnchorType
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.livedata.observeAsState
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.tickets.TicketModel
import org.ies.tierno.applicationamani.presentation.viewmodels.ticketsVieModel.TicketsViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniExtraColors
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.koin.compose.viewmodel.koinViewModel
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TicketScreen(
    navController: NavController? = null,
    viewModel: TicketsViewModel = koinViewModel(),
    onTicketEnviado: () -> Unit = {},
) {
    val context = LocalContext.current
    val isDark = isDarkTheme()
    val amaniColors = LocalAmaniColors.current
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    val isLoading by viewModel.isLoading.observeAsState(false)
    val isHistoryLoading by viewModel.isHistoryLoading.observeAsState(false)
    val message by viewModel.message.observeAsState()
    val userEmailState by viewModel.userEmail.observeAsState("")
    val tickets by viewModel.tickets.observeAsState(emptyList())

    var selectedTab by remember { mutableIntStateOf(0) }

    var titulo by remember { mutableStateOf("") }
    var categoria by remember { mutableStateOf("") }
    var descripcion by remember { mutableStateOf("") }

    var tituloError by remember { mutableStateOf<String?>(null) }
    var descripcionError by remember { mutableStateOf<String?>(null) }

    val errorTituloCorto = stringResource(R.string.soporte_error_titulo_corto)
    val errorDescripcionCorta = stringResource(R.string.soporte_error_descripcion_corta)

    val categorias =
        listOf(
            stringResource(R.string.soporte_cat_error_tecnico),
            stringResource(R.string.soporte_cat_problema_cuenta),
            stringResource(R.string.soporte_cat_pago),
            stringResource(R.string.soporte_tipo_sugerencia),
            stringResource(R.string.soporte_cat_otro),
        )

    var expanded by remember { mutableStateOf(false) }

    LaunchedEffect(Unit) {
        viewModel.cargarEmailUsuario()
    }

    LaunchedEffect(message) {
        message?.let {
            android.widget.Toast
                .makeText(context, it, android.widget.Toast.LENGTH_LONG)
                .show()
            if (it.contains("correctamente")) {
                titulo = ""
                categoria = ""
                descripcion = ""
                onTicketEnviado()
                selectedTab = 1
            }
            viewModel.limpiarMensaje()
        }
    }

    Scaffold(
        containerColor = colors.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.reportar_problema),
                        style = typography.titleLarge.copy(fontWeight = FontWeight.SemiBold),
                        color = colors.onSurface,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController?.navigateUp() }) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = colors.onSurface,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colors.surface,
                        titleContentColor = colors.onSurface,
                        navigationIconContentColor = colors.onSurface,
                    ),
            )
        },
    ) { paddingValues ->
        Column(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .padding(Spacing.m)
                    .verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(Spacing.m),
        ) {
            Row(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .background(
                            color = colors.surfaceVariant,
                            shape = shapes.large,
                        ).padding(Spacing.xs),
                horizontalArrangement = Arrangement.SpaceEvenly,
            ) {
                val tabs =
                    listOf(
                        stringResource(R.string.reportar_problema),
                        stringResource(R.string.soporte_mis_reportes),
                    )
                tabs.forEachIndexed { index, title ->
                    val isSelected = selectedTab == index
                    Box(
                        modifier =
                            Modifier
                                .weight(1f)
                                .background(
                                    color = if (isSelected) colors.primaryContainer else colors.surfaceVariant,
                                    shape = shapes.medium,
                                ).clickable { selectedTab = index }
                                .padding(vertical = Spacing.sm),
                        contentAlignment = Alignment.Center,
                    ) {
                        Text(
                            text = title,
                            style = typography.titleSmall,
                            fontWeight = FontWeight.Bold,
                            color = if (isSelected) colors.onPrimaryContainer else colors.onSurfaceVariant,
                        )
                    }
                }
            }

            if (selectedTab == 0) {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.large,
                    colors = CardDefaults.cardColors(containerColor = colors.surfaceContainerLow),
                    elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
                ) {
                    Column(
                        modifier = Modifier.padding(Spacing.m),
                        verticalArrangement = Arrangement.spacedBy(Spacing.m),
                    ) {
                        OutlinedTextField(
                            value = titulo,
                            onValueChange = {
                                titulo = it
                                tituloError =
                                    if (it.isNotBlank() && it.length < 5) {
                                        errorTituloCorto
                                    } else {
                                        null
                                    }
                            },
                            label = { Text(stringResource(R.string.titulo)) },
                            placeholder = { Text(stringResource(R.string.auto_breve_descripcion_del_problema)) },
                            shape = shapes.medium,
                            isError = tituloError != null,
                            supportingText = {
                                if (tituloError != null) {
                                    Text(tituloError!!, color = colors.error)
                                }
                            },
                            modifier = Modifier.fillMaxWidth(),
                        )

                        ExposedDropdownMenuBox(
                            expanded = expanded,
                            onExpandedChange = { expanded = !expanded },
                        ) {
                            OutlinedTextField(
                                value = categoria,
                                onValueChange = {},
                                readOnly = true,
                                label = { Text(stringResource(R.string.categoria)) },
                                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded) },
                                shape = shapes.medium,
                                modifier =
                                    Modifier
                                        .fillMaxWidth()
                                        .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable, true),
                                placeholder = { Text(stringResource(R.string.auto_selecciona_una_categoria)) },
                            )

                            ExposedDropdownMenu(
                                expanded = expanded,
                                onDismissRequest = { expanded = false },
                            ) {
                                categorias.forEach { item ->
                                    DropdownMenuItem(
                                        text = { Text(item) },
                                        onClick = {
                                            categoria = item
                                            expanded = false
                                        },
                                    )
                                }
                            }
                        }

                        OutlinedTextField(
                            value = descripcion,
                            onValueChange = {
                                descripcion = it
                                descripcionError =
                                    if (it.isNotBlank() && it.length < 10) {
                                        errorDescripcionCorta
                                    } else {
                                        null
                                    }
                            },
                            label = { Text(stringResource(R.string.descripcion)) },
                            placeholder = { Text(stringResource(R.string.auto_describe_detalladamente_el_problema)) },
                            minLines = 5,
                            maxLines = 10,
                            shape = shapes.medium,
                            isError = descripcionError != null,
                            supportingText = {
                                if (descripcionError != null) {
                                    Text(descripcionError!!, color = colors.error)
                                }
                            },
                            modifier = Modifier.fillMaxWidth(),
                        )

                        if (userEmailState.isNotEmpty()) {
                            Card(
                                modifier = Modifier.fillMaxWidth(),
                                shape = shapes.medium,
                                colors =
                                    CardDefaults.cardColors(
                                        containerColor = colors.surfaceContainerHighest,
                                    ),
                            ) {
                                Row(
                                    modifier =
                                        Modifier
                                            .fillMaxWidth()
                                            .padding(Spacing.sm),
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                                ) {
                                    Icon(
                                        imageVector = Icons.Default.Info,
                                        contentDescription = stringResource(R.string.soporte_email_usuario_cd),
                                        tint = colors.onSurfaceVariant,
                                        modifier = Modifier.size(Dimensions.iconButton),
                                    )
                                    Text(
                                        text = stringResource(R.string.soporte_reporte_enviado_desde, userEmailState),
                                        style = typography.bodySmall,
                                        color = colors.onSurfaceVariant,
                                    )
                                }
                            }
                        }

                        Button(
                            onClick = {
                                val ticket =
                                    TicketModel(
                                        titulo = titulo,
                                        categoria = categoria,
                                        descripcion = descripcion,
                                        email = userEmailState,
                                    )

                                val validation = ticket.validar()

                                if (!validation.success) {
                                    when {
                                        titulo.isBlank() || titulo.length < 5 ->
                                            tituloError = validation.message
                                        categoria.isBlank() ->
                                            android.widget.Toast
                                                .makeText(
                                                    context,
                                                    validation.message,
                                                    android.widget.Toast.LENGTH_SHORT,
                                                ).show()
                                        descripcion.isBlank() || descripcion.length < 10 ->
                                            descripcionError = validation.message
                                    }
                                } else {
                                    viewModel.enviarTicket(ticket)
                                }
                            },
                            enabled = !isLoading,
                            shape = shapes.medium,
                            modifier =
                                Modifier
                                    .fillMaxWidth()
                                    .height(Dimensions.buttonHeight),
                            colors =
                                ButtonDefaults.buttonColors(
                                    containerColor = colors.primary,
                                    contentColor = colors.onPrimary,
                                ),
                        ) {
                            if (isLoading) {
                                CircularProgressIndicator(
                                    modifier = Modifier.size(Dimensions.iconDefault),
                                    color = colors.onPrimary,
                                )
                                Spacer(modifier = Modifier.width(Spacing.s))
                            }
                            Text(
                                text = stringResource(R.string.enviar_reporte),
                                style = typography.labelLarge,
                                fontWeight = FontWeight.Bold,
                            )
                        }
                    }
                }
            } else {
                if (isHistoryLoading) {
                    Box(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(Spacing.xl),
                        contentAlignment = Alignment.Center,
                    ) {
                        CircularProgressIndicator(color = colors.primary)
                    }
                } else if (tickets.isEmpty()) {
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = shapes.large,
                        colors = CardDefaults.cardColors(containerColor = colors.surfaceContainerLow),
                        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
                    ) {
                        Column(
                            modifier =
                                Modifier
                                    .fillMaxWidth()
                                    .padding(Spacing.xl),
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.spacedBy(Spacing.m),
                        ) {
                            Icon(
                                imageVector = Icons.Default.Warning,
                                contentDescription = stringResource(R.string.auto_sin_reportes),
                                tint = colors.onSurfaceVariant,
                                modifier = Modifier.size(Dimensions.iconExtraLarge),
                            )
                            Text(
                                text = stringResource(R.string.auto_aun_no_tienes_reportes),
                                style = typography.titleMedium,
                                fontWeight = FontWeight.SemiBold,
                                color = colors.onSurface,
                            )
                            Text(
                                text = stringResource(R.string.auto_si_tienes_algun_problema),
                                style = typography.bodyMedium,
                                color = colors.onSurfaceVariant,
                                textAlign = TextAlign.Center,
                            )
                        }
                    }
                } else {
                    Column(
                        verticalArrangement = Arrangement.spacedBy(Spacing.s),
                    ) {
                        tickets.forEach { ticket ->
                            TicketCard(
                                ticket = ticket,
                                isDark = isDark,
                                amaniColors = amaniColors,
                                colors = colors,
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun TicketCard(
    ticket: TicketModel,
    isDark: Boolean,
    amaniColors: AmaniExtraColors,
    colors: ColorScheme,
) {
    var isExpanded by remember { mutableStateOf(false) }
    val shapes = MaterialTheme.shapes
    val typography = MaterialTheme.typography

    Card(
        modifier =
            Modifier
                .fillMaxWidth()
                .clickable { isExpanded = !isExpanded }
                .padding(vertical = Spacing.xs),
        shape = shapes.large,
        colors = CardDefaults.cardColors(containerColor = colors.surfaceContainerLow),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
    ) {
        Column(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(Spacing.m),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.Top,
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = ticket.titulo,
                        style = typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        color = colors.onSurface,
                    )
                    Text(
                        text = ticket.categoria,
                        style = typography.bodySmall,
                        color = colors.onSurfaceVariant,
                    )
                }
                Spacer(modifier = Modifier.width(Spacing.s))
                StatusBadge(status = ticket.estado)
            }

            Spacer(modifier = Modifier.height(Spacing.s))

            val dateFormat = remember { SimpleDateFormat("dd MMM yyyy, HH:mm", Locale.getDefault()) }
            val dateStr = dateFormat.format(Date(ticket.fecha))
            Text(
                text = dateStr,
                style = typography.bodySmall,
                color = colors.onSurfaceVariant,
            )

            Spacer(modifier = Modifier.height(Spacing.s))

            Text(
                text = ticket.descripcion,
                style = typography.bodyMedium,
                color = colors.onSurface,
                maxLines = if (isExpanded) Int.MAX_VALUE else 2,
                overflow = TextOverflow.Ellipsis,
            )

            val toggleLabel =
                if (isExpanded) {
                    stringResource(R.string.soporte_ver_menos)
                } else {
                    stringResource(R.string.soporte_ver_mas)
                }

            Row(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .padding(top = Spacing.s),
                horizontalArrangement = Arrangement.End,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    text = toggleLabel,
                    style = typography.labelSmall,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.primary,
                )
                Icon(
                    imageVector = if (isExpanded) Icons.Default.KeyboardArrowUp else Icons.Default.KeyboardArrowDown,
                    contentDescription = toggleLabel,
                    tint = colors.primary,
                    modifier = Modifier.size(Dimensions.iconSmall),
                )
            }

            if (isExpanded) {
                Spacer(modifier = Modifier.height(Spacing.sm))

                if (ticket.respuestaAdmin.isNotBlank()) {
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = shapes.medium,
                        colors =
                            CardDefaults.cardColors(
                                containerColor = AmaniTheme.colors.successContainer,
                            ),
                    ) {
                        Column(
                            modifier =
                                Modifier
                                    .fillMaxWidth()
                                    .padding(Spacing.sm),
                        ) {
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                            ) {
                                Icon(
                                    imageVector = Icons.Default.Info,
                                    contentDescription = stringResource(R.string.auto_respuesta_del_administrador),
                                    tint = AmaniTheme.colors.onSuccessContainer,
                                    modifier = Modifier.size(Dimensions.iconButton),
                                )
                                Text(
                                    text = stringResource(R.string.auto_respuesta_del_administrador),
                                    style = typography.labelMedium,
                                    fontWeight = FontWeight.Bold,
                                    color = AmaniTheme.colors.onSuccessContainer,
                                )
                            }
                            Spacer(modifier = Modifier.height(Spacing.xs))
                            Text(
                                text = ticket.respuestaAdmin,
                                style = typography.bodyMedium,
                                color = AmaniTheme.colors.onSuccessContainer,
                            )
                        }
                    }
                } else {
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = shapes.medium,
                        colors =
                            CardDefaults.cardColors(
                                containerColor = colors.surfaceContainerHighest,
                            ),
                    ) {
                        Row(
                            modifier =
                                Modifier
                                    .fillMaxWidth()
                                    .padding(Spacing.sm),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                        ) {
                            Icon(
                                imageVector = Icons.Default.Info,
                                contentDescription = stringResource(R.string.auto_en_proceso),
                                tint = colors.onSurfaceVariant,
                                modifier = Modifier.size(Dimensions.iconButton),
                            )
                            Text(
                                text = stringResource(R.string.auto_reporte_en_revision_te),
                                style = typography.bodySmall,
                                color = colors.onSurfaceVariant,
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun StatusBadge(status: String) {
    val colors = MaterialTheme.colorScheme
    val amaniColors = AmaniTheme.colors
    val abiertoStr = stringResource(R.string.soporte_estado_abierto)
    val enProcesoStr = stringResource(R.string.auto_en_proceso)
    val resueltoStr = stringResource(R.string.soporte_estado_resuelto)
    val cerradoStr = stringResource(R.string.soporte_estado_cerrado)

    val (backgroundColor, textColor, label) =
        when (status.lowercase()) {
            "abierto" ->
                Triple(
                    amaniColors.warningContainer,
                    amaniColors.onWarningContainer,
                    abiertoStr,
                )
            "en-proceso" ->
                Triple(
                    colors.secondaryContainer,
                    colors.onSecondaryContainer,
                    enProcesoStr,
                )
            "resuelto" ->
                Triple(
                    amaniColors.successContainer,
                    amaniColors.onSuccessContainer,
                    resueltoStr,
                )
            "cerrado" ->
                Triple(
                    colors.surfaceContainerHighest,
                    colors.onSurfaceVariant,
                    cerradoStr,
                )
            else ->
                Triple(
                    amaniColors.warningContainer,
                    amaniColors.onWarningContainer,
                    status,
                )
        }

    Surface(
        color = backgroundColor,
        shape = MaterialTheme.shapes.small,
    ) {
        Text(
            text = label,
            color = textColor,
            style = MaterialTheme.typography.labelSmall,
            fontWeight = FontWeight.Bold,
            modifier = Modifier.padding(horizontal = Spacing.s, vertical = Spacing.xs),
        )
    }
}

@Preview(name = "TicketCard Light", showBackground = true)
@Preview(name = "TicketCard Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "TicketCard FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun TicketScreenPreview() {
    AppTheme {
        Column(modifier = Modifier.padding(Spacing.m)) {
            TicketCard(
                ticket =
                    TicketModel(
                        id = "1",
                        titulo = "Problema al iniciar videollamada",
                        categoria = "Error técnico",
                        descripcion = "No se abre el enlace de la sala cuando pulso el botón en mi cita.",
                        email = "paciente@amani.es",
                        estado = "en-proceso",
                        respuestaAdmin = "Hemos actualizado el enlace de tu cita. Prueba de nuevo.",
                        fecha = 1761300000000L,
                    ),
                isDark = isDarkTheme(),
                amaniColors = LocalAmaniColors.current,
                colors = MaterialTheme.colorScheme,
            )
        }
    }
}