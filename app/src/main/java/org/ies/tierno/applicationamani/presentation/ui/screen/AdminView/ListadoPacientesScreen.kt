package org.ies.tierno.applicationamani.presentation.ui.screen.admin

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.componente.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.koin.androidx.compose.koinViewModel

/**
 * Pantalla de listado de pacientes con opciones de gestión.
 *
 * Muestra una lista desplazable de tarjetas con los datos de cada paciente.
 * Permite dar de baja a un paciente mediante un diálogo de confirmación
 * y navegar a la pantalla de registro de paciente desde el FAB.
 *
 * @param navController Controlador de navegación.
 * @param viewModel ViewModel que provee la lista de pacientes y la acción de baja.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPacientesScreen(
    navController: NavController,
    viewModel: ListarPacientesViewModel = koinViewModel()
) {
    val pacientes by viewModel.paciente.collectAsState()
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }
    var pacienteSeleccionado by remember { mutableStateOf<DatosPacienteAdminDTO?>(null) }
    var mostrarDialogoBaja by remember { mutableStateOf(false) }

    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val balow = FontFamily(Font(R.font.barlow_condensed_black))

    val backgroundColor = Color(0xFFF5F5F5)
    val cardColor = Color.White
    val primaryColor = Color(0xFF6C63FF)
    val pendingColor = Color(0xFFFF9800)
    val paidColor = Color(0xFF4CAF50)
    val inactiveColor = Color(0xFF9E9E9E)

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            MenuAdministrador("Listado de pacientes", navController)
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = { navController.navigate(Screens.agregarPacienteAdmin.route) },
                containerColor = primaryColor,
                shape = RoundedCornerShape(50.dp)
            ) {
                Icon(Icons.Default.PersonAdd, contentDescription = "Agregar paciente", tint = Color.White)
            }
        }
    ) { padding ->

        if (pacientes.isEmpty()) {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(padding),
                contentAlignment = Alignment.Center
            ) {
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    Icon(
                        imageVector = Icons.Default.People,
                        contentDescription = "Sin pacientes",
                        modifier = Modifier.size(64.dp),
                        tint = Color.Gray
                    )
                    Text(
                        text = "No hay pacientes registrados",
                        fontFamily = roboto,
                        fontSize = 16.sp,
                        color = Color.Gray
                    )
                    Button(
                        onClick = { navController.navigate(Screens.agregarPacienteAdmin.route) },
                        colors = ButtonDefaults.buttonColors(containerColor = primaryColor)
                    ) {
                        Text("Agregar primer paciente", fontFamily = roboto)
                    }
                }
            }
        } else {
            LazyColumn(
                modifier = Modifier
                    .padding(padding)
                    .fillMaxSize()
                    .padding(16.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                items(pacientes) { paciente ->
                    PacienteCard(
                        paciente = paciente,
                        onDarBaja = {
                            pacienteSeleccionado = paciente
                            mostrarDialogoBaja = true
                        },
                        onEditar = {
                            navController.navigate("editarPaciente/${paciente.idPaciente}")
                        },
                        onAsignarPsicologo = {
                            // navController.navigate(Screens.asignarPsicologo.createRoute(paciente.idPaciente))
                        },
                        primaryColor = primaryColor,
                        pendingColor = pendingColor,
                        paidColor = paidColor,
                        inactiveColor = inactiveColor,
                        roboto = roboto
                    )
                }
            }
        }

        // Dialogo Dar de baja
        if (mostrarDialogoBaja && pacienteSeleccionado != null) {
            AlertDialog(
                onDismissRequest = { mostrarDialogoBaja = false },
                title = {
                    Text(
                        "Confirmar baja",
                        fontFamily = balow,
                        fontSize = 20.sp
                    )
                },
                text = {
                    Text(
                        "¿Seguro que deseas dar de baja a ${pacienteSeleccionado!!.nombreUsuario} ${pacienteSeleccionado!!.apellidoUsuario}?",
                        fontFamily = roboto
                    )
                },
                confirmButton = {
                    Button(
                        onClick = {
                            scope.launch {
                                pacienteSeleccionado?.let { paciente ->
                                    val result = viewModel.darBajaPaciente(paciente.idPaciente)
                                    if (result.isSuccess) {
                                        viewModel.actualizarPacienteBaja(paciente.idPaciente)
                                        snackbarHostState.showSnackbar("Paciente dado de baja correctamente")
                                    } else {
                                        snackbarHostState.showSnackbar("Error al dar de baja al paciente")
                                    }
                                }
                                mostrarDialogoBaja = false
                            }
                        },
                        colors = ButtonDefaults.buttonColors(containerColor = Color.Red)
                    ) {
                        Text("Dar de baja", fontFamily = roboto, color = Color.White)
                    }
                },
                dismissButton = {
                    OutlinedButton(
                        onClick = { mostrarDialogoBaja = false },
                        colors = ButtonDefaults.outlinedButtonColors(contentColor = primaryColor)
                    ) {
                        Text("Cancelar", fontFamily = roboto)
                    }
                }
            )
        }
    }
}

@Composable
fun PacienteCard(
    paciente: DatosPacienteAdminDTO,
    onDarBaja: () -> Unit,
    onEditar: () -> Unit,
    onAsignarPsicologo: () -> Unit,
    primaryColor: Color,
    pendingColor: Color,
    paidColor: Color,
    inactiveColor: Color,
    roboto: FontFamily
) {
    // 🔥 CORRECCIÓN: Manejar correctamente método de pago como String
    val metodoPagoStr = paciente.metodoPago ?: "PRESENCIAL"
    val estadoPagoStr = paciente.estadoPago ?: "PENDIENTE"

    // Determinar estado de pago según método y estado real
    val estadoPagoInfo = when {
        !paciente.activo -> Triple(
            "INACTIVO",
            inactiveColor,
            Icons.Default.Error
        )
        metodoPagoStr.uppercase() == "ONLINE" && estadoPagoStr.uppercase() == "PAGADO" ->
            Triple(
                "PAGADO (Online)",
                paidColor,
                Icons.Default.CreditCard
            )
        metodoPagoStr.uppercase() == "ONLINE" && estadoPagoStr.uppercase() == "PENDIENTE" ->
            Triple(
                "PENDIENTE (Online)",
                pendingColor,
                Icons.Default.CreditCard
            )
        metodoPagoStr.uppercase() == "PRESENCIAL" && estadoPagoStr.uppercase() == "PENDIENTE" ->
            Triple(
                "PENDIENTE (Presencial)",
                pendingColor,
                Icons.Default.AttachMoney
            )
        metodoPagoStr.uppercase() == "PRESENCIAL" && estadoPagoStr.uppercase() == "PAGADO" ->
            Triple(
                "PAGADO (Presencial)",
                paidColor,
                Icons.Default.AttachMoney
            )
        else -> Triple(
            estadoPagoStr,
            Color.Gray,
            Icons.Default.Info
        )
    }

    val (estadoTexto, estadoColor, metodoIcon) = estadoPagoInfo

    // Determinar ícono y texto del método de pago
    val metodoPagoInfo = when (metodoPagoStr.uppercase()) {
        "ONLINE" -> Pair(Icons.Default.Payment, "Pago Online")
        "PRESENCIAL" -> Pair(Icons.Default.AttachMoney, "Pago Presencial")
        else -> Pair(Icons.Default.Info, metodoPagoStr)
    }
    val (metodoIcono, metodoTexto) = metodoPagoInfo

    Card(
        shape = RoundedCornerShape(12.dp),
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(containerColor = Color.White),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            // Header con nombre y estado
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(
                        imageVector = Icons.Default.Person,
                        contentDescription = "Paciente",
                        tint = primaryColor,
                        modifier = Modifier.size(24.dp)
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = "${paciente.nombreUsuario} ${paciente.apellidoUsuario}",
                        color = Color.Black,
                        fontFamily = roboto,
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold
                    )
                }

                // Badge de estado de pago
                Surface(
                    shape = RoundedCornerShape(16.dp),
                    color = estadoColor.copy(alpha = 0.2f),
                    modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.padding(horizontal = 12.dp, vertical = 4.dp)
                    ) {
                        Icon(
                            imageVector = metodoIcon,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = estadoColor
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text(
                            text = estadoTexto,
                            color = estadoColor,
                            fontSize = 11.sp,
                            fontFamily = roboto,
                            fontWeight = FontWeight.Medium
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Información de contacto
            InfoRow(
                icon = Icons.Default.Email,
                label = "Email",
                value = paciente.emailUsuario,
                iconColor = primaryColor,
                roboto = roboto
            )

            InfoRow(
                icon = Icons.Default.Phone,
                label = "Teléfono",
                value = paciente.telefono,
                iconColor = primaryColor,
                roboto = roboto
            )

            // Información personal
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                InfoRowCompact(
                    icon = Icons.Default.Cake,
                    label = "Fecha Nac.",
                    value = paciente.fechaNacimiento,
                    iconColor = primaryColor,
                    roboto = roboto,
                    modifier = Modifier.weight(1f)
                )

                InfoRowCompact(
                    icon = Icons.Default.Wc,
                    label = "Género",
                    value = paciente.genero,
                    iconColor = primaryColor,
                    roboto = roboto,
                    modifier = Modifier.weight(1f)
                )
            }

            // Método de pago (destacado)
            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(vertical = 8.dp),
                colors = CardDefaults.cardColors(
                    containerColor = when (metodoPagoStr.uppercase()) {
                        "ONLINE" -> Color(0xFFE3F2FD)
                        "PRESENCIAL" -> Color(0xFFFFF3E0)
                        else -> Color(0xFFF5F5F5)
                    }
                ),
                shape = RoundedCornerShape(8.dp)
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(12.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        imageVector = metodoIcono,
                        contentDescription = "Método de pago",
                        tint = when (metodoPagoStr.uppercase()) {
                            "ONLINE" -> Color(0xFF1976D2)
                            "PRESENCIAL" -> Color(0xFFE67E22)
                            else -> Color.Gray
                        },
                        modifier = Modifier.size(20.dp)
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = "Método de pago:",
                        color = Color.Gray,
                        fontFamily = roboto,
                        fontSize = 13.sp
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = metodoTexto,
                        color = when (metodoPagoStr.uppercase()) {
                            "ONLINE" -> Color(0xFF1976D2)
                            "PRESENCIAL" -> Color(0xFFE67E22)
                            else -> Color.Black
                        },
                        fontFamily = roboto,
                        fontSize = 14.sp,
                        fontWeight = FontWeight.Bold
                    )

                    Spacer(modifier = Modifier.weight(1f))

                    // Indicador de estado de pago
                    when {
                        metodoPagoStr.uppercase() == "ONLINE" && estadoPagoStr.uppercase() == "PAGADO" -> {
                            Surface(
                                shape = RoundedCornerShape(12.dp),
                                color = paidColor.copy(alpha = 0.2f)
                            ) {
                                Row(
                                    modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Icon(
                                        imageVector = Icons.Default.CheckCircle,
                                        contentDescription = "Pagado",
                                        modifier = Modifier.size(14.dp),
                                        tint = paidColor
                                    )
                                    Spacer(modifier = Modifier.width(4.dp))
                                    Text(
                                        text = "Pago realizado",
                                        color = paidColor,
                                        fontSize = 11.sp,
                                        fontFamily = roboto
                                    )
                                }
                            }
                        }
                        metodoPagoStr.uppercase() == "PRESENCIAL" && estadoPagoStr.uppercase() == "PENDIENTE" -> {
                            Surface(
                                shape = RoundedCornerShape(12.dp),
                                color = pendingColor.copy(alpha = 0.2f)
                            ) {
                                Row(
                                    modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Icon(
                                        imageVector = Icons.Default.Schedule,
                                        contentDescription = "Pendiente",
                                        modifier = Modifier.size(14.dp),
                                        tint = pendingColor
                                    )
                                    Spacer(modifier = Modifier.width(4.dp))
                                    Text(
                                        text = "Pago pendiente",
                                        color = pendingColor,
                                        fontSize = 11.sp,
                                        fontFamily = roboto
                                    )
                                }
                            }
                        }
                    }
                }
            }

            // Fechas de auditoría
            if (paciente.createdAt.isNotBlank()) {
                Divider(
                    modifier = Modifier.padding(vertical = 8.dp),
                    color = Color(0xFFE0E0E0)
                )

                InfoRowCompact(
                    icon = Icons.Default.DateRange,
                    label = "Creado",
                    value = paciente.createdAt.split("T")[0],
                    iconColor = Color.Gray,
                    roboto = roboto,
                    modifier = Modifier.fillMaxWidth()
                )

                if (paciente.updatedAt.isNotBlank() && paciente.updatedAt != paciente.createdAt) {
                    InfoRowCompact(
                        icon = Icons.Default.Update,
                        label = "Actualizado",
                        value = paciente.updatedAt.split("T")[0],
                        iconColor = Color.Gray,
                        roboto = roboto,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Botones de acción
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                // Botón Dar de baja (solo si está activo)
                if (paciente.activo) {
                    Button(
                        onClick = onDarBaja,
                        colors = ButtonDefaults.buttonColors(containerColor = Color.Red),
                        modifier = Modifier.weight(1f),
                        shape = RoundedCornerShape(8.dp)
                    ) {
                        Icon(
                            imageVector = Icons.Default.Delete,
                            contentDescription = "Dar de baja",
                            modifier = Modifier.size(18.dp),
                            tint = Color.White
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("Baja", color = Color.White, fontFamily = roboto)
                    }
                } else {
                    // Botón para reactivar
                    Button(
                        onClick = { /* Lógica para reactivar */ },
                        colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF4CAF50)),
                        modifier = Modifier.weight(1f),
                        shape = RoundedCornerShape(8.dp)
                    ) {
                        Icon(
                            imageVector = Icons.Default.Restore,
                            contentDescription = "Reactivar",
                            modifier = Modifier.size(18.dp),
                            tint = Color.White
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("Reactivar", color = Color.White, fontFamily = roboto)
                    }
                }

                // Botón Editar
                Button(
                    onClick = onEditar,
                    colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                    modifier = Modifier.weight(1f),
                    shape = RoundedCornerShape(8.dp)
                ) {
                    Icon(
                        imageVector = Icons.Default.Edit,
                        contentDescription = "Editar",
                        modifier = Modifier.size(18.dp),
                        tint = Color.White
                    )
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("Editar", color = Color.White, fontFamily = roboto)
                }

                // Botón Asignar Psicólogo
                Button(
                    onClick = onAsignarPsicologo,
                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF9C27B0)),
                    modifier = Modifier.weight(1f),
                    shape = RoundedCornerShape(8.dp)
                ) {
                    Icon(
                        imageVector = Icons.Default.Psychology,
                        contentDescription = "Asignar psicólogo",
                        modifier = Modifier.size(18.dp),
                        tint = Color.White
                    )
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("Asignar", color = Color.White, fontFamily = roboto)
                }
            }
        }
    }
}

@Composable
fun InfoRow(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    label: String,
    value: String,
    iconColor: Color,
    roboto: FontFamily
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 4.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Icon(
            imageVector = icon,
            contentDescription = label,
            tint = iconColor,
            modifier = Modifier.size(20.dp)
        )
        Spacer(modifier = Modifier.width(12.dp))
        Text(
            text = "$label:",
            color = Color.Gray,
            fontFamily = roboto,
            fontSize = 14.sp,
            modifier = Modifier.width(100.dp)
        )
        Text(
            text = value,
            color = Color.Black,
            fontFamily = roboto,
            fontSize = 14.sp,
            fontWeight = FontWeight.Medium,
            modifier = Modifier.weight(1f)
        )
    }
}

@Composable
fun InfoRowCompact(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    label: String,
    value: String,
    iconColor: Color,
    roboto: FontFamily,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier.padding(vertical = 2.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Icon(
            imageVector = icon,
            contentDescription = label,
            tint = iconColor,
            modifier = Modifier.size(16.dp)
        )
        Spacer(modifier = Modifier.width(8.dp))
        Text(
            text = "$label:",
            color = Color.Gray,
            fontFamily = roboto,
            fontSize = 12.sp,
            modifier = Modifier.width(80.dp)
        )
        Text(
            text = value,
            color = Color.Black,
            fontFamily = roboto,
            fontSize = 12.sp,
            modifier = Modifier.weight(1f)
        )
    }
}