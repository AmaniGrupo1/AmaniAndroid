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
import androidx.compose.material.icons.filled.Cake
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Phone
import androidx.compose.material.icons.filled.Wc
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.ui.theme.Roboto
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

    val roboto = Roboto

    val backgroundColor = Color(0xFFF5F5F5)
    val primaryColor = Color(0xFF6C63FF)

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            MenuAdministrador("Listado de pacientes", navController)
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = { navController.navigate(Screens.registro.route) },
                containerColor = primaryColor,
                shape = RoundedCornerShape(50.dp)
            ) {
                Icon(Icons.Default.People, contentDescription = "Agregar paciente", tint = Color.White)
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
                        onClick = { navController.navigate(Screens.registro.route) },
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
                        paciente = paciente,
                        onEditar = {
                            navController.navigate("editarPaciente/${paciente.idPaciente}")
                        },
                        primaryColor = primaryColor,
                        roboto = roboto
                    )
                }
            }
        }
    }
}

@Composable
fun PacienteCard(
    paciente: DatosPacienteAdminDTO,
    onEditar: () -> Unit,
    primaryColor: Color,
    roboto: FontFamily
) {
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
            // Header - Nombre completo
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically
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

            Spacer(modifier = Modifier.height(12.dp))

            // Email
            InfoRow(
                icon = Icons.Default.Email,
                label = "Email",
                value = paciente.emailUsuario,
                iconColor = primaryColor,
                roboto = roboto
            )

            // Teléfono
            InfoRow(
                icon = Icons.Default.Phone,
                label = "Teléfono",
                value = paciente.telefono,
                iconColor = primaryColor,
                roboto = roboto
            )

            // Fecha Nacimiento y Género en la misma fila
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

            // Fecha de creación
            if (paciente.createdAt.isNotBlank()) {
                Spacer(modifier = Modifier.height(8.dp))
                InfoRowCompact(
                    icon = Icons.Default.DateRange,
                    label = "Registrado",
                    value = paciente.createdAt.split("T")[0],
                    iconColor = Color.Gray,
                    roboto = roboto,
                    modifier = Modifier.fillMaxWidth()
                )
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Botón Editar
            Button(
                onClick = onEditar,
                colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(8.dp)
            ) {
                Icon(Icons.Default.Edit, contentDescription = "Editar", modifier = Modifier.size(18.dp), tint = Color.White)
                Spacer(modifier = Modifier.width(4.dp))
                Text("Editar datos", color = Color.White, fontFamily = roboto)
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
            modifier = Modifier.width(80.dp)
        )
        Text(
            text = value,
            color = Color.Black,
            fontFamily = roboto,
            fontSize = 14.sp,
            fontWeight = FontWeight.Medium,
            modifier = Modifier.weight(1f)
        )
        Spacer(modifier = Modifier.width(12.dp))
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