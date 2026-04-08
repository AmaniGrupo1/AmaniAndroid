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
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.koin.androidx.compose.koinViewModel

/**
 * Pantalla de listado de pacientes con opciones de gestión.
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
    ) { paddingValues ->

        // Contenido principal
        if (pacientes.isEmpty()) {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(paddingValues),
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
                    .fillMaxSize()
                    .padding(paddingValues)
                    .padding(horizontal = 16.dp)
                    .padding(top = 16.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                items(pacientes) { paciente ->
                    PacienteCard(
                        navController,
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
                    TextButton(
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
                        colors = ButtonDefaults.textButtonColors(contentColor = Color.Red)
                    ) {
                        Text("Dar de baja", fontFamily = roboto)
                    }
                },
                dismissButton = {
                    TextButton(
                        onClick = { mostrarDialogoBaja = false },
                        colors = ButtonDefaults.textButtonColors(contentColor = primaryColor)
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
    navController: NavController,
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
    val metodoPagoStr = paciente.metodoPago?.uppercase() ?: ""
    val estadoPagoStr = paciente.estadoPago?.uppercase() ?: ""

    val (estadoTexto, estadoColor, metodoIcon) = when {
        !paciente.activo -> Triple("INACTIVO", inactiveColor, Icons.Default.Error)
        metodoPagoStr == "ONLINE" && estadoPagoStr == "PAGADO" -> Triple("PAGADO (Online)", paidColor, Icons.Default.CreditCard)
        metodoPagoStr == "ONLINE" && estadoPagoStr == "PENDIENTE" -> Triple("PENDIENTE (Online)", pendingColor, Icons.Default.CreditCard)
        metodoPagoStr == "PRESENCIAL" && estadoPagoStr == "PENDIENTE" -> Triple("PENDIENTE (Presencial)", pendingColor, Icons.Default.AttachMoney)
        metodoPagoStr == "PRESENCIAL" && estadoPagoStr == "PAGADO" -> Triple("PAGADO (Presencial)", paidColor, Icons.Default.AttachMoney)
        else -> Triple(estadoPagoStr, Color.Gray, Icons.Default.Info)
    }

    val (metodoIcono, metodoTexto) = when (metodoPagoStr) {
        "ONLINE" -> Pair(Icons.Default.Payment, "Pago Online")
        "PRESENCIAL" -> Pair(Icons.Default.AttachMoney, "Pago Presencial")
        else -> Pair(Icons.Default.Info, metodoPagoStr)
    }

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = Color.White),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp)
        ) {
            // Header
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

                Surface(
                    shape = RoundedCornerShape(16.dp),
                    color = estadoColor.copy(alpha = 0.2f)
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

            // Direcciones
            if (!paciente.direccion.isNullOrEmpty()) {
                Spacer(modifier = Modifier.height(12.dp))
                Text(
                    text = "Direcciones:",
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 14.sp,
                    color = Color.Black
                )
                Spacer(modifier = Modifier.height(4.dp))
                paciente.direccion?.forEach { direccion ->
                    Surface(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(vertical = 4.dp),
                        shape = RoundedCornerShape(8.dp),
                        color = Color(0xFFF8F9FA)
                    ) {
                        Column(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(12.dp)
                        ) {
                            Text(
                                text = direccion.calle,
                                fontFamily = roboto,
                                fontSize = 13.sp,
                                fontWeight = FontWeight.Medium,
                                color = Color.Black
                            )
                            if (direccion.ciudad != null || direccion.provincia != null) {
                                Text(
                                    text = listOfNotNull(direccion.ciudad, direccion.provincia).joinToString(", "),
                                    fontFamily = roboto,
                                    fontSize = 12.sp,
                                    color = Color.Gray
                                )
                            }
                            if (direccion.codigoPostal != null || direccion.pais != null) {
                                Text(
                                    text = listOfNotNull(direccion.codigoPostal, direccion.pais).joinToString(" - "),
                                    fontFamily = roboto,
                                    fontSize = 12.sp,
                                    color = Color.Gray
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
                    text = "Tutores:",
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 14.sp,
                    color = Color.Black
                )
                Spacer(modifier = Modifier.height(4.dp))
                paciente.tutores.forEach { tutor ->
                    Surface(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(vertical = 4.dp),
                        shape = RoundedCornerShape(8.dp),
                        color = Color(0xFFF8F9FA)
                    ) {
                        Column(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(12.dp)
                        ) {
                            Text(
                                text = "${tutor.nombre} (${tutor.tipo})",
                                fontFamily = roboto,
                                fontSize = 13.sp,
                                fontWeight = FontWeight.Medium,
                                color = Color.Black
                            )
                            Text(
                                text = "Tel: ${tutor.telefono}",
                                fontFamily = roboto,
                                fontSize = 12.sp,
                                color = Color.Gray
                            )
                            Text(
                                text = "Email: ${tutor.email}",
                                fontFamily = roboto,
                                fontSize = 12.sp,
                                color = Color.Gray
                            )
                            if (tutor.dni.isNotBlank()) {
                                Text(
                                    text = "DNI: ${tutor.dni}",
                                    fontFamily = roboto,
                                    fontSize = 12.sp,
                                    color = Color.Gray
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
                    text = "Situaciones:",
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 14.sp,
                    color = Color.Black
                )
                Spacer(modifier = Modifier.height(4.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    paciente.situaciones.forEach { situacion ->
                        Surface(
                            shape = RoundedCornerShape(16.dp),
                            color = Color(0xFFE3F2FD)
                        ) {
                            Text(
                                text = situacion.descripcion ?: situacion.nombre,
                                fontFamily = roboto,
                                fontSize = 12.sp,
                                color = Color(0xFF1976D2),
                                modifier = Modifier.padding(horizontal = 12.dp, vertical = 6.dp)
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
                color = when (metodoPagoStr) {
                    "ONLINE" -> Color(0xFFE3F2FD)
                    "PRESENCIAL" -> Color(0xFFFFF3E0)
                    else -> Color(0xFFF5F5F5)
                }
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
                        tint = when (metodoPagoStr) {
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
                        color = when (metodoPagoStr) {
                            "ONLINE" -> Color(0xFF1976D2)
                            "PRESENCIAL" -> Color(0xFFE67E22)
                            else -> Color.Black
                        },
                        fontFamily = roboto,
                        fontSize = 14.sp,
                        fontWeight = FontWeight.Bold
                    )
                }
            }

            // Fechas
            if (paciente.createdAt.isNotBlank()) {
                Divider(
                    modifier = Modifier.padding(vertical = 12.dp),
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

            // Botones
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                if (paciente.activo) {
                    Button(
                        onClick = onDarBaja,
                        colors = ButtonDefaults.buttonColors(containerColor = Color.Red),
                        modifier = Modifier.weight(1f),
                        shape = RoundedCornerShape(8.dp)
                    ) {
                        Icon(Icons.Default.Delete, contentDescription = "Dar de baja", modifier = Modifier.size(18.dp), tint = Color.White)
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("Baja", color = Color.White, fontFamily = roboto)
                    }
                } else {
                    Button(
                        onClick = { },
                        colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF4CAF50)),
                        modifier = Modifier.weight(1f),
                        shape = RoundedCornerShape(8.dp)
                    ) {
                        Icon(Icons.Default.Restore, contentDescription = "Reactivar", modifier = Modifier.size(18.dp), tint = Color.White)
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("Reactivar", color = Color.White, fontFamily = roboto)
                    }
                }

                Button(
                    onClick = onEditar,
                    colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                    modifier = Modifier.weight(1f),
                    shape = RoundedCornerShape(8.dp)
                ) {
                    Icon(Icons.Default.Edit, contentDescription = "Editar", modifier = Modifier.size(18.dp), tint = Color.White)
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("Editar", color = Color.White, fontFamily = roboto)
                }

                //-------------------------------------------------------------------------------------------------------

                Button(
                    onClick = {navController.navigate(Screens.listarPsicologo.createRoute(paciente.idPaciente))},
                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF9C27B0)),
                    modifier = Modifier.weight(1f),
                    shape = RoundedCornerShape(8.dp)
                ) {
                    Icon(Icons.Default.Psychology, contentDescription = "Asignar psicólogo", modifier = Modifier.size(18.dp), tint = Color.White)
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
        modifier = Modifier.fillMaxWidth(),
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
        modifier = modifier,
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