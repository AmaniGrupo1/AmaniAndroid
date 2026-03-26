package org.ies.tierno.applicationamani.presentation.ui.screens.admin

import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.animation.animateContentSize
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
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
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material.icons.filled.ArrowDropUp
import androidx.compose.material.icons.filled.Email
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Divider
import androidx.compose.material3.Icon
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
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
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO
import org.ies.tierno.applicationamani.dto.login.PsicologoConPacientesDTO
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomBar
import org.ies.tierno.applicationamani.presentation.ui.componente.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.GetAllPacientAndPsicologoVeiwModel
import org.koin.androidx.compose.koinViewModel

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun ViewAdminPrincipal(
    navController: NavController,
    viewModel: GetAllPacientAndPsicologoVeiwModel = koinViewModel()
) {
    val psicologos by viewModel.paciente.collectAsState() // StateFlow<List<PsicologoConPacientesDTO>>

    Scaffold(
        topBar = { MenuAdministrador(title = "Psicólogos y Pacientes", navController = navController) },
        bottomBar = { BottomBar(navController = navController) },
        containerColor = Color(0xFFF5F6FA)
    ) { innerPadding ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .padding(horizontal = 12.dp, vertical = 8.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            items(psicologos) { psicologo ->
                PsicologoCard(psicologo)
            }
        }
    }
}

@Composable
fun PsicologoCard(psicologo: PsicologoConPacientesDTO) {
    var expanded by remember { mutableStateOf(false) }

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .animateContentSize(), // anima la expansión
        colors = CardDefaults.cardColors(containerColor = Color.White),
        elevation = CardDefaults.cardElevation(defaultElevation = 6.dp)
    ) {
        Column(modifier = Modifier.padding(16.dp)) {

            // Header psicólogo
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth()
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = "${psicologo.nombrePsicologo} ${psicologo.apellidoPsicologo}",
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold,
                        color = Color(0xFF1E3A8A)
                    )
                    Text(
                        text = "Especialidad: ${psicologo.especialidad}",
                        fontSize = 14.sp,
                        color = Color(0xFF374151)
                    )
                }

                Icon(
                    imageVector = if (expanded) Icons.Default.ArrowDropUp else Icons.Default.ArrowDropDown,
                    contentDescription = "Expandir pacientes",
                    modifier = Modifier
                        .size(30.dp)
                        .clickable { expanded = !expanded },
                    tint = Color(0xFF1E3A8A)
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Lista de pacientes desplegable
            if (expanded) {
                psicologo.pacientes.forEach { paciente ->
                    PacienteRow(paciente)
                    Divider(color = Color(0xFFE5E7EB), thickness = 1.dp)
                }
            }
        }
    }
}

@Composable
fun PacienteRow(paciente: PacientesAsignadoDTO) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .background(Color(0xFFF9FAFB))
            .padding(12.dp)
    ) {
        Text(
            text = "${paciente.nombre} ${paciente.apellido}",
            fontWeight = FontWeight.Medium,
            fontSize = 16.sp,
            color = Color(0xFF111827)
        )
        Row(verticalAlignment = Alignment.CenterVertically) {
            Icon(
                imageVector = Icons.Default.Email,
                contentDescription = "Email",
                tint = Color(0xFF6B7280),
                modifier = Modifier.size(16.dp)
            )
            Spacer(modifier = Modifier.width(6.dp))
            Text(
                text = paciente.email,
                fontSize = 14.sp,
                color = Color(0xFF6B7280)
            )
        }
    }
}
