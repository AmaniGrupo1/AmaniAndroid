package org.ies.tierno.applicationamani.presentation.ui.screen.soporte

import android.content.res.Configuration
import androidx.compose.foundation.background
import androidx.compose.foundation.border
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
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ListItem
import androidx.compose.material3.ListItemDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
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
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.soporte.CategoriaTicket
import org.ies.tierno.applicationamani.domain.models.soporte.EstadoTicket
import org.ies.tierno.applicationamani.domain.models.soporte.FiltroTicket
import org.ies.tierno.applicationamani.domain.models.soporte.TicketSoporte
import org.ies.tierno.applicationamani.domain.models.soporte.TipoTicket
import org.ies.tierno.applicationamani.presentation.ui.components.AmaniEmptyState
import org.ies.tierno.applicationamani.presentation.viewmodels.soporte.SoporteTicketViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel

/**
 * Pantalla que lista los tickets de soporte del usuario.
 *
 * Muestra los tickets agrupados por estado (abierto, en proceso, cerrado)
 * con filtros por pestañas. Cada ticket muestra su título, fecha, estado
 * y una etiqueta descriptiva. Si no hay tickets, se muestra un estado
 * vacío con un mensaje informativo.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona la lista de tickets de soporte.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MisTicketsScreen(
    navController: NavController,
    viewModel: SoporteTicketViewModel = koinViewModel(),
) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    val tickets = viewModel.ticketsFiltrados

    LaunchedEffect(Unit) {
        viewModel.cargarTickets()
    }

    MisTicketsContent(
        tickets = tickets,
        filtroSeleccionado = uiState.filtroSeleccionado,
        isLoading = uiState.isLoading,
        error = uiState.error,
        onBackClick = { navController.popBackStack() },
        onFiltroClick = { viewModel.seleccionarFiltro(it) },
        onRetryClick = {
            viewModel.clearError()
            viewModel.cargarTickets()
        },
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MisTicketsContent(
    tickets: List<TicketSoporte>,
    filtroSeleccionado: FiltroTicket,
    isLoading: Boolean,
    error: String?,
    onBackClick: () -> Unit,
    onFiltroClick: (FiltroTicket) -> Unit,
    onRetryClick: () -> Unit,
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_mis_tickets),
                        style = typography.titleLarge.copy(fontWeight = FontWeight.SemiBold),
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_atru00e1s),
                        )
                    }
                },
                actions = {
                    if (isLoading) {
                        CircularProgressIndicator(
                            modifier =
                                Modifier
                                    .padding(end = Spacing.m)
                                    .size(Dimensions.iconMedium),
                            strokeWidth = Dimensions.borderMedium,
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
        containerColor = colors.background,
    ) { padding ->
        Column(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(padding)
                    .padding(horizontal = Spacing.m, vertical = Spacing.sm),
        ) {
            Row(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .background(colors.surfaceVariant, shapes.medium)
                        .padding(Spacing.xs),
                horizontalArrangement = Arrangement.spacedBy(Spacing.xs),
            ) {
                FiltroTab(
                    texto = stringResource(R.string.soporte_filtro_todos),
                    seleccionado = filtroSeleccionado == FiltroTicket.TODOS,
                    onClick = { onFiltroClick(FiltroTicket.TODOS) },
                    modifier = Modifier.weight(1f),
                )
                FiltroTab(
                    texto = stringResource(R.string.soporte_filtro_abiertos),
                    seleccionado = filtroSeleccionado == FiltroTicket.ABIERTOS,
                    onClick = { onFiltroClick(FiltroTicket.ABIERTOS) },
                    modifier = Modifier.weight(1f),
                )
                FiltroTab(
                    texto = stringResource(R.string.soporte_filtro_cerrados),
                    seleccionado = filtroSeleccionado == FiltroTicket.CERRADOS,
                    onClick = { onFiltroClick(FiltroTicket.CERRADOS) },
                    modifier = Modifier.weight(1f),
                )
            }

            Spacer(modifier = Modifier.height(Spacing.m))

            Column(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(Spacing.sm),
            ) {
                error?.let { msg ->
                    Box(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .background(colors.errorContainer, shapes.medium)
                                .padding(Spacing.m),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.spacedBy(Spacing.s),
                        ) {
                            Text(
                                text = msg,
                                color = colors.onErrorContainer,
                                style = typography.bodyMedium,
                            )
                            Text(
                                text = stringResource(R.string.auto_tocar_para_reintentar),
                                color = colors.primary,
                                style = typography.bodySmall.copy(fontWeight = FontWeight.Medium),
                                modifier = Modifier.clickable { onRetryClick() },
                            )
                        }
                    }
                }

                if (!isLoading && tickets.isEmpty() && error == null) {
                    AmaniEmptyState(
                        title = stringResource(R.string.auto_no_hay_tickets),
                        supporting = stringResource(R.string.auto_crea_uno_nuevo_desde),
                        modifier = Modifier.height(Dimensions.pagerHeightCompact),
                    )
                } else {
                    tickets.forEach { ticket ->
                        TicketCard(ticket)
                    }
                }
                Spacer(modifier = Modifier.height(Dimensions.bottomContentSpacer))
            }
        }
    }
}

@Composable
private fun FiltroTab(
    texto: String,
    seleccionado: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colors = MaterialTheme.colorScheme
    val bgColor = if (seleccionado) colors.primaryContainer else colors.surfaceVariant
    val textColor = if (seleccionado) colors.onPrimaryContainer else colors.onSurfaceVariant

    Box(
        modifier =
            modifier
                .height(Dimensions.avatarSmall)
                .background(bgColor, MaterialTheme.shapes.small)
                .clickable { onClick() },
        contentAlignment = Alignment.Center,
    ) {
        Text(
            texto,
            color = textColor,
            style = MaterialTheme.typography.labelLarge,
        )
    }
}

@Composable
private fun TicketCard(ticket: TicketSoporte) {
    ListItem(
        headlineContent = {
            Text(ticket.titulo, maxLines = 2)
        },
        supportingContent = {
            Text(
                text = "${ticket.fecha} · ${ticket.etiquetaEstado}",
                maxLines = 1,
            )
        },
        leadingContent = { EstadoIcono(ticket.estado) },
        trailingContent = {
            Text(
                text = ticket.estado.nombreVisual,
                style = MaterialTheme.typography.labelSmall,
                color = ticket.estado.colorContenido,
            )
        },
        colors =
            ListItemDefaults.colors(
                containerColor = ticket.estado.colorContenedor,
            ),
    )
}

@Composable
private fun EstadoIcono(estado: EstadoTicket) {
    val color = estado.colorContenido
    when (estado) {
        EstadoTicket.ABIERTO ->
            Icon(
                Icons.Default.Schedule,
                contentDescription = null,
                tint = color,
                modifier = Modifier.size(Dimensions.iconSmall),
            )
        EstadoTicket.EN_PROCESO ->
            CircularProgressIndicator(
                modifier = Modifier.size(Dimensions.iconSmall),
                strokeWidth = Dimensions.borderMedium,
                color = color,
            )
        EstadoTicket.CERRADO ->
            Icon(
                Icons.Default.CheckCircle,
                contentDescription = null,
                tint = color,
                modifier = Modifier.size(Dimensions.iconSmall),
            )
    }
}

@Preview(name = "MisTickets Light", showBackground = true)
@Preview(name = "MisTickets Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "MisTickets FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun MisTicketsScreenPreview() {
    AppTheme {
        MisTicketsContent(
            tickets =
                listOf(
                    TicketSoporte(
                        id = 104L,
                        titulo = "Error al sincronizar el calendario",
                        descripcion = "Las citas del martes no se reflejan.",
                        fecha = "24 oct 2026",
                        estado = EstadoTicket.EN_PROCESO,
                        etiquetaEstado = "En revisión por soporte técnico",
                        tipo = TipoTicket.PROBLEMA,
                        categoria = CategoriaTicket.BUG_APP,
                    ),
                    TicketSoporte(
                        id = 101L,
                        titulo = "Consulta sobre recibo de pago",
                        descripcion = "¿Cómo descargo el justificante?",
                        fecha = "18 oct 2026",
                        estado = EstadoTicket.CERRADO,
                        etiquetaEstado = "Resuelto",
                        tipo = TipoTicket.PREGUNTA,
                        categoria = CategoriaTicket.PAGO,
                    ),
                ),
            filtroSeleccionado = FiltroTicket.TODOS,
            isLoading = false,
            error = null,
            onBackClick = {},
            onFiltroClick = {},
            onRetryClick = {},
        )
    }
}
