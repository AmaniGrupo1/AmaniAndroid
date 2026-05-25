package org.ies.tierno.applicationamani.presentation.ui.screen.soporte

import org.ies.tierno.applicationamani.R
import androidx.compose.ui.res.stringResource
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
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.domain.models.soporte.EstadoTicket
import org.ies.tierno.applicationamani.domain.models.soporte.FiltroTicket
import org.ies.tierno.applicationamani.domain.models.soporte.TicketSoporte
import org.ies.tierno.applicationamani.presentation.viewmodels.soporte.SoporteTicketViewModel
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
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    val tickets = viewModel.ticketsFiltrados

    LaunchedEffect(Unit) {
        viewModel.cargarTickets()
    }

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
                    IconButton(onClick = { navController.popBackStack() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_atru00e1s),
                        )
                    }
                },
                actions = {
                    if (uiState.isLoading) {
                        CircularProgressIndicator(
                            modifier =
                                Modifier
                                    .padding(end = 16.dp)
                                    .size(20.dp),
                            strokeWidth = 2.dp,
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
        containerColor = colors.background,
    ) { padding ->
        Column(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(padding)
                    .padding(horizontal = 16.dp, vertical = 12.dp),
        ) {
            // Filtros
            Row(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .background(colors.surfaceVariant, RoundedCornerShape(12.dp))
                        .padding(4.dp),
                horizontalArrangement = Arrangement.spacedBy(4.dp),
            ) {
                FiltroTab(
                    texto = "Todos",
                    seleccionado = uiState.filtroSeleccionado == FiltroTicket.TODOS,
                    onClick = { viewModel.seleccionarFiltro(FiltroTicket.TODOS) },
                    modifier = Modifier.weight(1f),
                )
                FiltroTab(
                    texto = "Abiertos",
                    seleccionado = uiState.filtroSeleccionado == FiltroTicket.ABIERTOS,
                    onClick = { viewModel.seleccionarFiltro(FiltroTicket.ABIERTOS) },
                    modifier = Modifier.weight(1f),
                )
                FiltroTab(
                    texto = "Cerrados",
                    seleccionado = uiState.filtroSeleccionado == FiltroTicket.CERRADOS,
                    onClick = { viewModel.seleccionarFiltro(FiltroTicket.CERRADOS) },
                    modifier = Modifier.weight(1f),
                )
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Lista
            Column(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(12.dp),
            ) {
                uiState.error?.let { msg ->
                    Box(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .background(Color(0xFFFEF2F2), RoundedCornerShape(12.dp))
                                .padding(16.dp),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.spacedBy(8.dp),
                        ) {
                            Text(
                                text = msg,
                                color = Color(0xFF991B1B),
                                style = typography.bodyMedium,
                            )
                            Text(
                                text = stringResource(R.string.auto_tocar_para_reintentar),
                                color = MaterialTheme.colorScheme.primary,
                                style = typography.bodySmall.copy(fontWeight = FontWeight.Medium),
                                modifier =
                                    Modifier.clickable {
                                        viewModel.clearError()
                                        viewModel.cargarTickets()
                                    },
                            )
                        }
                    }
                }

                if (!uiState.isLoading && tickets.isEmpty() && uiState.error == null) {
                    Box(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(vertical = 48.dp),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.spacedBy(8.dp),
                        ) {
                            Text(stringResource(R.string.auto_no_hay_tickets),
                                style = typography.titleMedium,
                                color = colors.onSurfaceVariant,
                            )
                            Text(stringResource(R.string.auto_crea_uno_nuevo_desde),
                                style = typography.bodySmall,
                                color = colors.onSurfaceVariant,
                            )
                        }
                    }
                } else {
                    tickets.forEach { ticket ->
                        TicketCard(ticket)
                    }
                }
                Spacer(modifier = Modifier.height(80.dp))
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
    val bgColor = if (seleccionado) colors.primaryContainer else Color.Transparent
    val textColor = if (seleccionado) colors.onPrimaryContainer else colors.onSurfaceVariant

    Box(
        modifier =
            modifier
                .height(36.dp)
                .background(bgColor, RoundedCornerShape(10.dp))
                .clickable { onClick() },
        contentAlignment = Alignment.Center,
    ) {
        Text(
            texto,
            color = textColor,
            fontWeight = FontWeight.Medium,
            fontSize = 14.sp,
        )
    }
}

@Composable
private fun TicketCard(ticket: TicketSoporte) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = colors.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = 1.dp),
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Surface(
                    color = ticket.estado.colorContenedor,
                    shape = RoundedCornerShape(6.dp),
                ) {
                    Text(
                        ticket.estado.nombreVisual,
                        modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
                        style =
                            typography.labelSmall.copy(
                                fontWeight = FontWeight.Bold,
                                letterSpacing = 0.5.sp,
                            ),
                        color = ticket.estado.colorContenido,
                    )
                }
                Text(
                    "#${ticket.id}",
                    style = typography.bodySmall,
                    color = colors.onSurfaceVariant,
                    fontWeight = FontWeight.Medium,
                )
            }

            Spacer(modifier = Modifier.height(8.dp))
            Text(
                ticket.titulo,
                style =
                    typography.titleMedium.copy(
                        fontWeight = FontWeight.SemiBold,
                        fontSize = 15.sp,
                    ),
                color = colors.onSurface,
            )
            Spacer(modifier = Modifier.height(4.dp))
            Text(ticket.fecha, style = typography.bodySmall, color = colors.onSurfaceVariant)
            Spacer(modifier = Modifier.height(10.dp))

            Row(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .background(ticket.estado.colorContenedor, RoundedCornerShape(10.dp))
                        .border(1.dp, ticket.estado.colorContenedor.copy(alpha = 0.5f), RoundedCornerShape(10.dp))
                        .padding(horizontal = 12.dp, vertical = 8.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp),
            ) {
                EstadoIcono(ticket.estado)
                Text(
                    ticket.etiquetaEstado,
                    style = typography.bodySmall.copy(fontWeight = FontWeight.Medium),
                    color = ticket.estado.colorContenido,
                )
            }
        }
    }
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
                modifier = Modifier.size(16.dp),
            )
        EstadoTicket.EN_PROCESO ->
            CircularProgressIndicator(
                modifier = Modifier.size(14.dp),
                strokeWidth = 2.dp,
                color = color,
            )
        EstadoTicket.CERRADO ->
            Icon(
                Icons.Default.CheckCircle,
                contentDescription = null,
                tint = color,
                modifier = Modifier.size(16.dp),
            )
    }
}
