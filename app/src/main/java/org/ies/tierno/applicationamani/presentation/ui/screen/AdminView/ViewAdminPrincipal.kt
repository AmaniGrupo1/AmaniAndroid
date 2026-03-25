package org.ies.tierno.applicationamani.presentation.ui.screens.admin

import android.annotation.SuppressLint
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.domain.models.admin.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomBar
import org.ies.tierno.applicationamani.presentation.ui.componente.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.GetAllPacientAndPsicologoVeiwModel
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

/**
 * Pantalla principal del panel de administración.
 *
 * Muestra una lista de tarjetas con la relación paciente-psicólogo
 * obtenida del [GetAllPacientAndPsicologoVeiwModel]. Incluye la barra
 * superior de administración ([MenuAdministrador]) y la barra inferior
 * de navegación ([BottomBar]).
 *
 * @param navController Controlador de navegación.
 * @param viewModel ViewModel que provee la lista de pacientes con psicólogos.
 */
@RequiresApi(Build.VERSION_CODES.O)
@SuppressLint("UnusedMaterial3ScaffoldPaddingParameter")
@Composable
fun ViewAdminPrincipal(
    navController: NavController,
    viewModel: GetAllPacientAndPsicologoVeiwModel = koinViewModel()
) {
    var admin by remember { mutableStateOf("pacientes") }
    val pacientes by viewModel.paciente.collectAsState()

    Scaffold(
        topBar = { MenuAdministrador(title = "Pacientes", navController = navController) },
        bottomBar = { BottomBar(navController = navController, admin) },
        containerColor = Color(0xFFF5F6FA) // fondo general suave
    ) { innerPadding ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .padding(horizontal = 12.dp, vertical = 8.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            items(pacientes) { paciente ->
                PacienteCard(paciente)
            }
        }
    }
}

/**
 * Tarjeta que muestra la información resumida de un paciente y su psicólogo.
 *
 * Incluye nombre del psicólogo, nombre del paciente, email y fecha
 * de última actualización formateada en `dd/MM/yyyy HH:mm`.
 *
 * @param paciente Datos de la relación paciente-psicólogo.
 */
@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PacienteCard(paciente: ListaPacientesAndPsicologo) {
    Card(
        modifier = Modifier
            .fillMaxWidth(),
        colors = CardDefaults.cardColors(containerColor = Color.White),
        elevation = CardDefaults.cardElevation(defaultElevation = 6.dp)
    ) {
        Column(modifier = Modifier.padding(16.dp)) {

            // Psicólogo
            Text(
                text = "${paciente.nombrePsicologo ?: ""} ${paciente.apellidoPsicologo ?: ""}",
                fontSize = 18.sp,
                fontWeight = FontWeight.Bold,
                color = Color(0xFF1E3A8A) // azul corporativo
            )
            Spacer(modifier = Modifier.height(4.dp))

            // Paciente
            Text(
                text = "${paciente.nombreUsuario ?: ""} ${paciente.apellidoUsuario ?: ""}",
                fontSize = 16.sp,
                fontWeight = FontWeight.Medium,
                color = Color(0xFF374151) // gris oscuro
            )
            Spacer(modifier = Modifier.height(6.dp))

            // Email
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(
                    imageVector = Icons.Default.Email,
                    contentDescription = "Email",
                    tint = Color(0xFF6B7280),
                    modifier = Modifier.size(16.dp)
                )
                Spacer(modifier = Modifier.width(6.dp))
                Text(
                    text = paciente.emailUsuario ?: "",
                    fontSize = 14.sp,
                    color = Color(0xFF6B7280)
                )
            }
            Spacer(modifier = Modifier.height(6.dp))

            val fechaFormateada = paciente.updatedAt?.let { fechaStr ->
                try {
                    val date = LocalDateTime.parse(fechaStr, DateTimeFormatter.ISO_DATE_TIME)
                    val formatterOutput = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")
                    date.format(formatterOutput)
                } catch (e: Exception) {
                    "Fecha inválida"
                }
            }

            fechaFormateada?.let { fecha ->
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        imageVector = Icons.Default.Schedule,
                        contentDescription = "Fecha actualización",
                        tint = Color(0xFF6B7280),
                        modifier = Modifier.size(16.dp)
                    )
                    Spacer(modifier = Modifier.width(6.dp))
                    Text(
                        text = fecha,
                        fontSize = 14.sp,
                        color = Color(0xFF6B7280)
                    )
                }
            }
        }
    }
}