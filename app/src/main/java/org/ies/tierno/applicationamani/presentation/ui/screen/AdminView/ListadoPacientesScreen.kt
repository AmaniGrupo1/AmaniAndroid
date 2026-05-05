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
import androidx.compose.material3.FloatingActionButtonDefaults
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
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
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

// Paleta de colores unificada con las demás pantallas
object AmaniColorsListado {
    val Primary = Color(0xFF6C63FF)
    val PrimaryLight = Color(0xFF9B7E9F)
    val PrimaryDark = Color(0xFF4A2B50)
    val Secondary = Color(0xFFE8B4B8)
    val Accent = Color(0xFFCCC0E4)
    val Surface = Color(0xFFFFFFFF)
    val Background = Color(0xFFCCC0E4)
    val TextPrimary = Color(0xFF2D1B30)
    val TextSecondary = Color(0xFF7A6B7E)
    val Success = Color(0xFF81C784)
    val Warning = Color(0xFFFFB74D)
    val Error = Color(0xFFE57373)
}

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

    // Fuente Roboto correctamente configurada
    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Normal),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Bold),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Medium),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.SemiBold)
    )

    Scaffold(
        containerColor = AmaniColorsListado.Background,
        topBar = {
            Surface(
                modifier = Modifier.fillMaxWidth(),
                color = AmaniColorsListado.Primary,
                shadowElevation = 4.dp,
                shape = RoundedCornerShape(bottomStart = 16.dp, bottomEnd = 16.dp)
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 12.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.Default.People,
                            contentDescription = "Volver",
                            tint = Color.White,
                            modifier = Modifier.size(24.dp)
                        )
                    }

                    Text(
                        text = "LISTADO DE PACIENTES",
                        color = Color.White,
                        fontFamily = roboto,
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Bold,
                        letterSpacing = 1.sp,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.weight(1f, fill = false)
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
                containerColor = AmaniColorsListado.Primary,
                shape = RoundedCornerShape(50.dp),
                elevation = FloatingActionButtonDefaults.elevation(defaultElevation = 4.dp)
            ) {
                Icon(
                    Icons.Default.People,
                    contentDescription = "Agregar paciente",
                    tint = Color.White
                )
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
                        modifier = Modifier.size(80.dp),
                        tint = AmaniColorsListado.PrimaryLight.copy(alpha = 0.5f)
                    )
                    Text(
                        text = "No hay pacientes registrados",
                        fontFamily = roboto,
                        fontSize = 16.sp,
                        color = AmaniColorsListado.TextSecondary
                    )
                    Button(
                        onClick = { navController.navigate(Screens.registro.route) },
                        colors = ButtonDefaults.buttonColors(containerColor = AmaniColorsListado.Primary),
                        shape = RoundedCornerShape(12.dp)
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
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                items(pacientes) { paciente ->
                    PacienteCard(
                        paciente = paciente,
                        onEditar = {
                            navController.navigate("editarPaciente/${paciente.idPaciente}")
                        },
                        roboto = roboto
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
    roboto: FontFamily
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        colors = CardDefaults.cardColors(containerColor = AmaniColorsListado.Surface),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp)
        ) {
            // Header - Nombre completo con avatar
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically
            ) {
                // Avatar circular con iniciales
                Surface(
                    modifier = Modifier.size(50.dp),
                    shape = RoundedCornerShape(25.dp),
                    color = AmaniColorsListado.Primary,
                    shadowElevation = 2.dp
                ) {
                    Box(contentAlignment = Alignment.Center) {
                        Text(
                            text = paciente.nombreUsuario.take(1).uppercase() +
                                    paciente.apellidoUsuario.take(1).uppercase(),
                            color = Color.White,
                            fontWeight = FontWeight.Bold,
                            fontSize = 18.sp,
                            fontFamily = roboto
                        )
                    }
                }

                Spacer(modifier = Modifier.width(12.dp))

                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = "${paciente.nombreUsuario} ${paciente.apellidoUsuario}",
                        color = AmaniColorsListado.TextPrimary,
                        fontFamily = roboto,
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold
                    )
                    Text(
                        text = "ID: ${paciente.idPaciente}",
                        color = AmaniColorsListado.TextSecondary,
                        fontFamily = roboto,
                        fontSize = 12.sp
                    )
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Línea divisoria
            Surface(
                modifier = Modifier.fillMaxWidth(),
                color = AmaniColorsListado.Accent,
                shape = RoundedCornerShape(2.dp)
            ) {
                Spacer(modifier = Modifier.height(1.dp))
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Email
            InfoRow(
                icon = Icons.Default.Email,
                label = "Email",
                value = paciente.emailUsuario,
                iconColor = AmaniColorsListado.Primary,
                roboto = roboto
            )

            // Teléfono
            InfoRow(
                icon = Icons.Default.Phone,
                label = "Teléfono",
                value = paciente.telefono,
                iconColor = AmaniColorsListado.Primary,
                roboto = roboto
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Fecha Nacimiento y Género en columnas separadas (una debajo de otra)
            Column(
                modifier = Modifier.fillMaxWidth(),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                // Fecha de Nacimiento
                InfoRowCompact(
                    icon = Icons.Default.Cake,
                    label = "Fecha de Nacimiento",
                    value = paciente.fechaNacimiento,
                    iconColor = AmaniColorsListado.Primary,
                    roboto = roboto,
                    modifier = Modifier.fillMaxWidth()
                )

                // Género
                InfoRowCompact(
                    icon = Icons.Default.Wc,
                    label = "Género",
                    value = paciente.genero,
                    iconColor = AmaniColorsListado.Primary,
                    roboto = roboto,
                    modifier = Modifier.fillMaxWidth()
                )
            }

            // Fecha de creación
            if (paciente.createdAt.isNotBlank()) {
                Spacer(modifier = Modifier.height(8.dp))
                InfoRowCompact(
                    icon = Icons.Default.DateRange,
                    label = "Fecha de Registro",
                    value = paciente.createdAt.split("T")[0],
                    iconColor = AmaniColorsListado.TextSecondary,
                    roboto = roboto,
                    modifier = Modifier.fillMaxWidth()
                )
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Botón Editar
            Button(
                onClick = onEditar,
                colors = ButtonDefaults.buttonColors(containerColor = AmaniColorsListado.Primary),
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(12.dp),
                elevation = ButtonDefaults.buttonElevation(defaultElevation = 2.dp)
            ) {
                Icon(
                    Icons.Default.Edit,
                    contentDescription = "Editar",
                    modifier = Modifier.size(18.dp),
                    tint = Color.White
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    "Editar datos",
                    color = Color.White,
                    fontFamily = roboto,
                    fontWeight = FontWeight.Medium,
                    fontSize = 14.sp
                )
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
            color = AmaniColorsListado.TextSecondary,
            fontFamily = roboto,
            fontSize = 14.sp,
            fontWeight = FontWeight.Medium,
            modifier = Modifier.width(80.dp)
        )
        Text(
            text = value,
            color = AmaniColorsListado.TextPrimary,
            fontFamily = roboto,
            fontSize = 14.sp,
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
            modifier = Modifier.size(18.dp)
        )
        Spacer(modifier = Modifier.width(12.dp))
        Text(
            text = "$label:",
            color = AmaniColorsListado.TextSecondary,
            fontFamily = roboto,
            fontSize = 13.sp,
            fontWeight = FontWeight.SemiBold,
            modifier = Modifier.width(130.dp)
        )
        Text(
            text = value.ifEmpty { "No especificado" },
            color = AmaniColorsListado.TextPrimary,
            fontFamily = roboto,
            fontSize = 13.sp,
            fontWeight = FontWeight.Medium,
            modifier = Modifier.weight(1f)
        )
    }
}