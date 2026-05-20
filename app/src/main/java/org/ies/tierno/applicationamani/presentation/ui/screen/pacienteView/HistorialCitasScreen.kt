package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView


import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.citas.HistorialCitaResponseDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.citas.ListarCitasViewModel
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HistorialCitasScreen(
    navController: NavController,
    viewModel: ListarCitasViewModel
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Colores según el tema
    val backgroundColor = if (isDark) screenColors.background else Color(0xFFFDF8F9)
    val surfaceColor = if (isDark) cardColors.cardBackground else Color(0xFFFFFFFF)
    val textColor = if (isDark) Color.White else Color(0xFF2D1B30)
    val textSecondaryColor = if (isDark) Color.White.copy(alpha = 0.7f) else Color(0xFF7A6B7E)
    val primaryColor = if (isDark) Color.White else Color(0xFF6B4E71)

    // Estados del ViewModel
    val historialCitas = remember { viewModel.historialCitas }
    val isLoading by remember { viewModel.isLoading }
    val error by remember { viewModel.error }

    // Cargar historial al iniciar
    LaunchedEffect(Unit) {
        viewModel.cargarHistorialCitas()
    }

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "Historial de Citas",
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = if (isDark) Color.Black else Color.White,
                        fontFamily = roboto
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = if (isDark) Color.Black else Color.White
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = primaryColor
                )
            )
        }
    ) { padding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .background(backgroundColor)
        ) {
            when {
                isLoading -> {
                    // Mostrar loading
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            CircularProgressIndicator(color = primaryColor)
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "Cargando historial...",
                                color = textSecondaryColor,
                                fontFamily = roboto
                            )
                        }
                    }
                }

                error != null -> {
                    // Mostrar error
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            Icon(
                                Icons.Default.Error,
                                contentDescription = null,
                                tint = Color(0xFFE53935),
                                modifier = Modifier.size(64.dp)
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = error ?: "Error al cargar el historial",
                                color = textSecondaryColor,
                                textAlign = TextAlign.Center,
                                fontFamily = roboto
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Button(
                                onClick = { viewModel.cargarHistorialCitas() },
                                colors = ButtonDefaults.buttonColors(containerColor = primaryColor)
                            ) {
                                Text("Reintentar", color = Color.White, fontFamily = roboto)
                            }
                        }
                    }
                }

                historialCitas.isEmpty() -> {
                    // Lista vacía
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            Icon(
                                Icons.Default.CalendarToday,
                                contentDescription = null,
                                tint = textSecondaryColor,
                                modifier = Modifier.size(64.dp)
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "No tienes citas en tu historial",
                                fontSize = 16.sp,
                                color = textSecondaryColor,
                                fontFamily = roboto
                            )
                            Text(
                                text = "Las citas completadas aparecerán aquí",
                                fontSize = 14.sp,
                                color = textSecondaryColor.copy(alpha = 0.7f),
                                fontFamily = roboto
                            )
                        }
                    }
                }

                else -> {
                    // Mostrar lista de citas
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        items(historialCitas) { cita ->
                            HistorialCitaCard(
                                cita = cita,
                                roboto = roboto,
                                isDark = isDark,
                                surfaceColor = surfaceColor,
                                textColor = textColor,
                                textSecondaryColor = textSecondaryColor,
                                primaryColor = primaryColor
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun HistorialCitaCard(
    cita: HistorialCitaResponseDTO,
    roboto: FontFamily,
    isDark: Boolean,
    surfaceColor: Color,
    textColor: Color,
    textSecondaryColor: Color,
    primaryColor: Color
) {
    // Formatear fecha y hora
    val formattedDate = try {
        val dateTime = LocalDateTime.parse(cita.fechaHora)
        val dateFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy")
        val timeFormatter = DateTimeFormatter.ofPattern("HH:mm")
        "${dateTime.format(dateFormatter)} - ${dateTime.format(timeFormatter)}"
    } catch (e: Exception) {
        cita.fechaHora
    }

    // Color según el estado de la cita
    val estadoColor = when (cita.estado.lowercase()) {
        "completada", "realizada" -> Color(0xFF4CAF50)
        "cancelada" -> Color(0xFFF44336)
        "pendiente" -> Color(0xFFFF9800)
        else -> textSecondaryColor
    }

    // Color según el estado del pago
    val pagoColor = when (cita.estadoPago.lowercase()) {
        "pagado", "completado" -> Color(0xFF4CAF50)
        "pendiente" -> Color(0xFFFF9800)
        "fallido", "rechazado" -> Color(0xFFF44336)
        "reembolsado" -> Color(0xFF9C27B0)
        else -> textSecondaryColor
    }

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = surfaceColor),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            // Fila de fecha y estado
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        Icons.Default.CalendarToday,
                        contentDescription = null,
                        tint = primaryColor,
                        modifier = Modifier.size(18.dp)
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = formattedDate,
                        fontSize = 14.sp,
                        fontWeight = FontWeight.Medium,
                        color = textColor,
                        fontFamily = roboto
                    )
                }

                Surface(
                    shape = RoundedCornerShape(20.dp),
                    color = estadoColor.copy(alpha = 0.15f)
                ) {
                    Text(
                        text = cita.estado,
                        fontSize = 11.sp,
                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                        color = estadoColor,
                        fontFamily = roboto,
                        fontWeight = FontWeight.Medium
                    )
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Nombre del psicólogo
            Row(
                verticalAlignment = Alignment.CenterVertically
            ) {
                Icon(
                    Icons.Default.Person,
                    contentDescription = null,
                    tint = textSecondaryColor,
                    modifier = Modifier.size(16.dp)
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    text = "Psicólogo: ${cita.nombrePsicologo}",
                    fontSize = 14.sp,
                    color = textColor,
                    fontFamily = roboto
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Tipo de terapia y modalidad
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        Icons.Default.FitnessCenter,
                        contentDescription = null,
                        tint = textSecondaryColor,
                        modifier = Modifier.size(16.dp)
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = cita.tipoTerapia,
                        fontSize = 13.sp,
                        color = textSecondaryColor,
                        fontFamily = roboto
                    )
                }

                Surface(
                    shape = RoundedCornerShape(20.dp),
                    color = primaryColor.copy(alpha = 0.1f)
                ) {
                    Text(
                        text = cita.modalidad,
                        fontSize = 11.sp,
                        modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
                        color = primaryColor,
                        fontFamily = roboto
                    )
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Duración
            Row(
                verticalAlignment = Alignment.CenterVertically
            ) {
                Icon(
                    Icons.Default.Timer,
                    contentDescription = null,
                    tint = textSecondaryColor,
                    modifier = Modifier.size(16.dp)
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    text = "Duración: ${cita.duracionMinutos} minutos",
                    fontSize = 13.sp,
                    color = textSecondaryColor,
                    fontFamily = roboto
                )
            }

            // Motivo (si existe)
            if (!cita.motivo.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(8.dp))
                Row(
                    verticalAlignment = Alignment.Top
                ) {
                    Icon(
                        Icons.Default.Description,
                        contentDescription = null,
                        tint = textSecondaryColor,
                        modifier = Modifier.size(16.dp)
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = cita.motivo,
                        fontSize = 13.sp,
                        color = textSecondaryColor,
                        fontFamily = roboto,
                        modifier = Modifier.weight(1f)
                    )
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Línea divisoria
            HorizontalDivider(
                modifier = Modifier.padding(vertical = 4.dp),
                color = textSecondaryColor.copy(alpha = 0.12f)
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Precio y estado de pago
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = "€ ${String.format("%.2f", cita.precio)}",
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Bold,
                    color = primaryColor,
                    fontFamily = roboto
                )

                Surface(
                    shape = RoundedCornerShape(20.dp),
                    color = pagoColor.copy(alpha = 0.15f)
                ) {
                    Text(
                        text = cita.estadoPago,
                        fontSize = 12.sp,
                        modifier = Modifier.padding(horizontal = 12.dp, vertical = 6.dp),
                        color = pagoColor,
                        fontFamily = roboto,
                        fontWeight = FontWeight.Medium
                    )
                }
            }
        }
    }
}