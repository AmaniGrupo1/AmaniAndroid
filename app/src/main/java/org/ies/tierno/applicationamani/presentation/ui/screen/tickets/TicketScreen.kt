package org.ies.tierno.applicationamani.presentation.ui.screen.tickets

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material.icons.filled.Warning
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.livedata.observeAsState
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.tickets.TicketModel
import org.ies.tierno.applicationamani.presentation.viewmodels.ticketsVieModel.TicketsViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniExtraColors
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
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
    onTicketEnviado: () -> Unit = {}
) {
    val context = LocalContext.current
    val isDark = isDarkTheme()
    val amaniColors = LocalAmaniColors.current
    val colors = MaterialTheme.colorScheme

    val isLoading by viewModel.isLoading.observeAsState(false)
    val isHistoryLoading by viewModel.isHistoryLoading.observeAsState(false)
    val message by viewModel.message.observeAsState()
    val userEmailState by viewModel.userEmail.observeAsState("")
    val tickets by viewModel.tickets.observeAsState(emptyList())

    // 0 = Reportar problema, 1 = Mis reportes
    var selectedTab by remember { mutableStateOf(0) }

    // Estados del formulario
    var titulo by remember { mutableStateOf("") }
    var categoria by remember { mutableStateOf("") }
    var descripcion by remember { mutableStateOf("") }

    // Email ya no es un estado mutable editable, usaremos userEmailState directamente

    var tituloError by remember { mutableStateOf<String?>(null) }
    var descripcionError by remember { mutableStateOf<String?>(null) }

    val categorias = listOf(
        "Error técnico",
        "Problema de cuenta",
        "Pago",
        "Sugerencia",
        "Otro"
    )

    var expanded by remember { mutableStateOf(false) }

    // Cargar datos al iniciar
    LaunchedEffect(Unit) {
        viewModel.cargarEmailUsuario()
    }

    // Manejar mensajes del ViewModel
    LaunchedEffect(message) {
        message?.let {
            android.widget.Toast.makeText(context, it, android.widget.Toast.LENGTH_LONG).show()
            if (it.contains("correctamente")) {
                titulo = ""
                categoria = ""
                descripcion = ""
                onTicketEnviado()
                // Ir a la pestaña de historial
                selectedTab = 1
            }
            viewModel.limpiarMensaje()
        }
    }

    val primaryBarColor = if (isDark) Color.White else Color(0xFF6B4E71)
    val titleBarColor = if (isDark) Color.Black else Color.White

    Scaffold(
        containerColor = amaniColors.screenBackground,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.reportar_problema),
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = titleBarColor
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController?.navigateUp() }) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = titleBarColor
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = primaryBarColor
                )
            )
        }
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .padding(16.dp)
                .verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Selector de Pestañas (Pills)
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(
                        color = if (isDark) Color(0xFF212121) else Color(0xFFF5F5F5),
                        shape = RoundedCornerShape(16.dp)
                    )
                    .padding(4.dp),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                val tabs = listOf("Reportar problema", "Mis reportes")
                tabs.forEachIndexed { index, title ->
                    val isSelected = selectedTab == index
                    Box(
                        modifier = Modifier
                            .weight(1f)
                            .background(
                                color = if (isSelected) {
                                    if (isDark) Color(0xFF333333) else Color.White
                                } else {
                                    Color.Transparent
                                },
                                shape = RoundedCornerShape(12.dp)
                            )
                            .clickable { selectedTab = index }
                            .padding(vertical = 12.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = title,
                            style = MaterialTheme.typography.titleSmall,
                            fontWeight = FontWeight.Bold,
                            color = if (isSelected) {
                                if (isDark) Color.White else Color(0xFF6B4E71)
                            } else {
                                if (isDark) Color.LightGray else Color.Gray
                            }
                        )
                    }
                }
            }

            if (selectedTab == 0) {
                // Formulario de Reportar Problema
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(16.dp),
                    colors = CardDefaults.cardColors(containerColor = amaniColors.cardBackground),
                    elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
                ) {
                    Column(
                        modifier = Modifier.padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(16.dp)
                    ) {
                        // Título
                        OutlinedTextField(
                            value = titulo,
                            onValueChange = {
                                titulo = it
                                tituloError = if (it.isNotBlank() && it.length < 5)
                                    "El título debe tener al menos 5 caracteres"
                                else null
                            },
                            label = { Text(stringResource(R.string.titulo)) },
                            placeholder = { Text("Breve descripción del problema") },
                            shape = RoundedCornerShape(12.dp),
                            isError = tituloError != null,
                            supportingText = {
                                if (tituloError != null) {
                                    Text(tituloError!!, color = MaterialTheme.colorScheme.error)
                                }
                            },
                            modifier = Modifier.fillMaxWidth()
                        )

                        // Categoría (Dropdown)
                        ExposedDropdownMenuBox(
                            expanded = expanded,
                            onExpandedChange = { expanded = !expanded }
                        ) {
                            OutlinedTextField(
                                value = categoria,
                                onValueChange = {},
                                readOnly = true,
                                label = { Text(stringResource(R.string.categoria)) },
                                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expanded) },
                                shape = RoundedCornerShape(12.dp),
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .menuAnchor(),
                                placeholder = { Text("Selecciona una categoría") }
                            )

                            ExposedDropdownMenu(
                                expanded = expanded,
                                onDismissRequest = { expanded = false }
                            ) {
                                categorias.forEach { item ->
                                    DropdownMenuItem(
                                        text = { Text(item) },
                                        onClick = {
                                            categoria = item
                                            expanded = false
                                        }
                                    )
                                }
                            }
                        }

                        // Descripción
                        OutlinedTextField(
                            value = descripcion,
                            onValueChange = {
                                descripcion = it
                                descripcionError = if (it.isNotBlank() && it.length < 10)
                                    "Describe mejor el problema (mínimo 10 caracteres)"
                                else null
                            },
                            label = { Text(stringResource(R.string.descripcion)) },
                            placeholder = { Text("Describe detalladamente el problema...") },
                            minLines = 5,
                            maxLines = 10,
                            shape = RoundedCornerShape(12.dp),
                            isError = descripcionError != null,
                            supportingText = {
                                if (descripcionError != null) {
                                    Text(descripcionError!!, color = MaterialTheme.colorScheme.error)
                                }
                            },
                            modifier = Modifier.fillMaxWidth()
                        )

                        // Mostrar el email del usuario (solo texto informativo, no editable)
                        if (userEmailState.isNotEmpty()) {
                            Card(
                                modifier = Modifier.fillMaxWidth(),
                                shape = RoundedCornerShape(12.dp),
                                colors = CardDefaults.cardColors(
                                    containerColor = if (isDark) Color(0xFF333333) else Color(0xFFF5F5F5)
                                )
                            ) {
                                Row(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .padding(12.dp),
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                                ) {
                                    Icon(
                                        imageVector = Icons.Default.Info,
                                        contentDescription = "Email del usuario",
                                        tint = if (isDark) Color.LightGray else Color.Gray,
                                        modifier = Modifier.size(18.dp)
                                    )
                                    Text(
                                        text = "Reporte enviado desde: ${userEmailState}",
                                        style = MaterialTheme.typography.bodySmall,
                                        color = if (isDark) Color.LightGray else Color.Gray
                                    )
                                }
                            }
                        }

                        // Botón de enviar
                        Button(
                            onClick = {
                                val ticket = TicketModel(
                                    titulo = titulo,
                                    categoria = categoria,
                                    descripcion = descripcion,
                                    email = userEmailState  // Usar el email del usuario logueado
                                )

                                val validation = ticket.validar()

                                if (!validation.success) {
                                    when {
                                        titulo.isBlank() || titulo.length < 5 ->
                                            tituloError = validation.message
                                        categoria.isBlank() ->
                                            android.widget.Toast.makeText(
                                                context,
                                                validation.message,
                                                android.widget.Toast.LENGTH_SHORT
                                            ).show()
                                        descripcion.isBlank() || descripcion.length < 10 ->
                                            descripcionError = validation.message
                                    }
                                } else {
                                    viewModel.enviarTicket(ticket)
                                }
                            },
                            enabled = !isLoading,
                            shape = RoundedCornerShape(12.dp),
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(50.dp),
                            colors = ButtonDefaults.buttonColors(
                                containerColor = if (isDark) Color.White else Color(0xFF6B4E71),
                                contentColor = if (isDark) Color.Black else Color.White
                            )
                        ) {
                            if (isLoading) {
                                CircularProgressIndicator(
                                    modifier = Modifier.size(24.dp),
                                    color = if (isDark) Color.Black else Color.White
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                            }
                            Text(
                                text = stringResource(R.string.enviar_reporte),
                                fontWeight = FontWeight.Bold
                            )
                        }
                    }
                }
            } else {
                // Historial de Tickets "Mis reportes"
                if (isHistoryLoading) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(32.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        CircularProgressIndicator(color = if (isDark) Color.White else Color(0xFF6B4E71))
                    }
                } else if (tickets.isEmpty()) {
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(16.dp),
                        colors = CardDefaults.cardColors(containerColor = amaniColors.cardBackground),
                        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
                    ) {
                        Column(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(32.dp),
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.spacedBy(16.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Default.Warning,
                                contentDescription = "Sin reportes",
                                tint = if (isDark) Color.LightGray else Color.Gray,
                                modifier = Modifier.size(48.dp)
                            )
                            Text(
                                text = "Aún no tienes reportes enviados.",
                                style = MaterialTheme.typography.titleMedium,
                                fontWeight = FontWeight.SemiBold,
                                color = if (isDark) Color.White else Color.Black
                            )
                            Text(
                                text = "Si tienes algún problema con la aplicación, ve a la pestaña 'Reportar problema' para enviarnos un ticket.",
                                style = MaterialTheme.typography.bodyMedium,
                                color = if (isDark) Color.LightGray else Color.Gray,
                                textAlign = androidx.compose.ui.text.style.TextAlign.Center
                            )
                        }
                    }
                } else {
                    Column(
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        tickets.forEach { ticket ->
                            TicketCard(
                                ticket = ticket,
                                isDark = isDark,
                                amaniColors = amaniColors,
                                colors = colors
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
    colors: ColorScheme
) {
    var isExpanded by remember { mutableStateOf(false) }

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { isExpanded = !isExpanded }
            .padding(vertical = 4.dp),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = amaniColors.cardBackground),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp)
        ) {
            // Fila superior: Título y Estado
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.Top
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = ticket.titulo,
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        color = if (isDark) Color.White else Color.Black
                    )
                    Text(
                        text = ticket.categoria,
                        style = MaterialTheme.typography.bodySmall,
                        color = if (isDark) Color.LightGray else Color.Gray
                    )
                }
                Spacer(modifier = Modifier.width(8.dp))
                StatusBadge(status = ticket.estado)
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Fecha
            val dateFormat = remember { SimpleDateFormat("dd MMM yyyy, HH:mm", Locale.getDefault()) }
            val dateStr = dateFormat.format(Date(ticket.fecha))
            Text(
                text = dateStr,
                style = MaterialTheme.typography.bodySmall,
                color = if (isDark) Color.LightGray.copy(alpha = 0.8f) else Color.Gray.copy(alpha = 0.8f)
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Descripción (acortada si no está expandido)
            Text(
                text = ticket.descripcion,
                style = MaterialTheme.typography.bodyMedium,
                color = if (isDark) Color.LightGray else Color.DarkGray,
                maxLines = if (isExpanded) Int.MAX_VALUE else 2,
                overflow = TextOverflow.Ellipsis
            )

            // Indicador de expandir
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(top = 8.dp),
                horizontalArrangement = Arrangement.End,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = if (isExpanded) "Ver menos" else "Ver más",
                    style = MaterialTheme.typography.labelSmall,
                    fontWeight = FontWeight.SemiBold,
                    color = if (isDark) Color.White else Color(0xFF6B4E71)
                )
                Icon(
                    imageVector = if (isExpanded) Icons.Default.KeyboardArrowUp else Icons.Default.KeyboardArrowDown,
                    contentDescription = if (isExpanded) "Ver menos" else "Ver más",
                    tint = if (isDark) Color.White else Color(0xFF6B4E71),
                    modifier = Modifier.size(16.dp)
                )
            }

            // Detalles expandidos y respuesta del administrador
            if (isExpanded) {
                Spacer(modifier = Modifier.height(12.dp))

                if (ticket.respuestaAdmin.isNotBlank()) {
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(12.dp),
                        colors = CardDefaults.cardColors(
                            containerColor = if (isDark) Color(0xFF2E7D32).copy(alpha = 0.2f) else Color(0xFFE8F5E9)
                        )
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
                                    imageVector = Icons.Default.Info,
                                    contentDescription = "Respuesta del Administrador",
                                    tint = if (isDark) Color(0xFF81C784) else Color(0xFF2E7D32),
                                    modifier = Modifier.size(18.dp)
                                )
                                Text(
                                    text = "Respuesta del Administrador",
                                    style = MaterialTheme.typography.labelMedium,
                                    fontWeight = FontWeight.Bold,
                                    color = if (isDark) Color(0xFF81C784) else Color(0xFF2E7D32)
                                )
                            }
                            Spacer(modifier = Modifier.height(6.dp))
                            Text(
                                text = ticket.respuestaAdmin,
                                style = MaterialTheme.typography.bodyMedium,
                                color = if (isDark) Color.White else Color.Black
                            )
                        }
                    }
                } else {
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(12.dp),
                        colors = CardDefaults.cardColors(
                            containerColor = if (isDark) Color(0xFF333333) else Color(0xFFF5F5F5)
                        )
                    ) {
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(12.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Default.Info,
                                contentDescription = "En proceso",
                                tint = if (isDark) Color.LightGray else Color.Gray,
                                modifier = Modifier.size(18.dp)
                            )
                            Text(
                                text = "Reporte en revisión. Te responderemos lo antes posible.",
                                style = MaterialTheme.typography.bodySmall,
                                color = if (isDark) Color.LightGray else Color.Gray
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

    val (backgroundColor, textColor, label) = when (status.lowercase()) {

        "abierto" -> Triple(
            Color(0xFFFFF3E0),
            Color(0xFFE65100),
            "Abierto"
        )

        "en-proceso" -> Triple(
            Color(0xFFE3F2FD),
            Color(0xFF1565C0),
            "En proceso"
        )

        "resuelto" -> Triple(
            Color(0xFFE8F5E9),
            Color(0xFF2E7D32),
            "Resuelto"
        )

        "cerrado" -> Triple(
            Color(0xFFE0E0E0),
            Color(0xFF616161),
            "Cerrado"
        )

        else -> Triple(
            Color(0xFFFFF3E0),
            Color(0xFFE65100),
            status
        )
    }

    Surface(
        color = backgroundColor,
        shape = RoundedCornerShape(8.dp)
    ) {
        Text(
            text = label,
            color = textColor,
            style = MaterialTheme.typography.labelSmall,
            fontWeight = FontWeight.Bold,
            modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp)
        )
    }
}