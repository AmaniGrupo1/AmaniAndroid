package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
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
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.ies.tierno.applicationamani.presentation.ui.screen.AmaniLoginColors
import org.ies.tierno.applicationamani.presentation.viewmodels.historialClinico.HistorialClinicoPacienteViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.util.Locale

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HistorialClinicoScreen(
    navController: NavController,
    idPaciente: Long,
    viewModel: HistorialClinicoPacienteViewModel
) {
    val colors = AmaniLoginColors
    val scope = rememberCoroutineScope()
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    val context = LocalContext.current
    val tokenDataStore = remember { TokenDataStore(context) }

    val historial by viewModel.historial
    val isLoading by viewModel.isLoading
    val error by viewModel.error

    var expandedCardId by remember { mutableStateOf<Long?>(null) }

    // Cargar historial al iniciar
    LaunchedEffect(idPaciente) {
        val token = tokenDataStore.getToken() ?: ""
        viewModel.cargarHistorialClinico(idPaciente, "Bearer $token")
    }

    // Formateador de fechas
    fun formatFecha(fechaStr: String): String {
        return try {
            val fecha = LocalDateTime.parse(fechaStr)
            val formatter = DateTimeFormatter.ofPattern("dd 'de' MMMM 'de' yyyy", Locale("es", "ES"))
            fecha.format(formatter)
        } catch (e: Exception) {
            fechaStr
        }
    }

    Scaffold(
        containerColor = colors.Background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "Historial Clínico",
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = Color.White
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Volver", tint = Color.White)
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = colors.Primary
                )
            )
        }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .background(
                    brush = Brush.verticalGradient(
                        colors = listOf(colors.Accent, Color.White)
                    )
                )
        ) {
            when {
                isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center
                        ) {
                            CircularProgressIndicator(color = colors.Primary)
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "Cargando historial clínico...",
                                fontSize = 14.sp,
                                color = colors.TextSecondary,
                                fontFamily = roboto
                            )
                        }
                    }
                }

                historial.isEmpty() && !isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center,
                            modifier = Modifier.padding(24.dp)
                        ) {
                            Icon(
                                Icons.Default.History,
                                contentDescription = null,
                                modifier = Modifier.size(80.dp),
                                tint = colors.Primary.copy(alpha = 0.3f)
                            )
                            Spacer(modifier = Modifier.height(20.dp))
                            Text(
                                text = "No hay registros en tu historial clínico",
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Medium,
                                color = colors.TextPrimary,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = "Las consultas con tu psicólogo aparecerán aquí",
                                fontSize = 14.sp,
                                color = colors.TextSecondary,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center
                            )
                        }
                    }
                }

                error != null -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center,
                            modifier = Modifier.padding(24.dp)
                        ) {
                            Icon(
                                Icons.Default.Error,
                                contentDescription = null,
                                modifier = Modifier.size(64.dp),
                                tint = colors.Error
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "Error al cargar el historial",
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Bold,
                                color = colors.TextPrimary,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = error ?: "Error desconocido",
                                fontSize = 14.sp,
                                color = colors.TextSecondary,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center
                            )
                            Spacer(modifier = Modifier.height(24.dp))
                            Button(
                                onClick = {
                                    scope.launch {
                                        val token = tokenDataStore.getToken() ?: ""
                                        viewModel.cargarHistorialClinico(idPaciente, "Bearer $token")
                                    }
                                },
                                colors = ButtonDefaults.buttonColors(containerColor = colors.Primary),
                                shape = RoundedCornerShape(12.dp)
                            ) {
                                Icon(Icons.Default.Refresh, contentDescription = "Reintentar")
                                Spacer(modifier = Modifier.width(8.dp))
                                Text("Reintentar", fontSize = 14.sp)
                            }
                        }
                    }
                }

                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 16.dp),
                        verticalArrangement = Arrangement.spacedBy(16.dp)
                    ) {
                        items(historial) { item ->
                            HistorialCard(
                                item = item,
                                isExpanded = expandedCardId == item.id,
                                onCardClick = {
                                    expandedCardId = if (expandedCardId == item.id) null else item.id
                                },
                                colors = colors,
                                roboto = roboto,
                                formatFecha = { formatFecha(it) }
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun HistorialCard(
    item: HistorialClinicoResponseDTO,
    isExpanded: Boolean,
    onCardClick: () -> Unit,
    colors: AmaniLoginColors,
    roboto: FontFamily,
    formatFecha: (String) -> String
) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { onCardClick() },
        shape = RoundedCornerShape(20.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
        colors = CardDefaults.cardColors(containerColor = colors.Surface)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp)
        ) {
            // Cabecera con título y fecha
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.Top
            ) {
                Column(
                    modifier = Modifier.weight(1f)
                ) {
                    Text(
                        text = item.titulo,
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold,
                        color = colors.Primary,
                        fontFamily = roboto
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    Row(
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Icon(
                            Icons.Default.DateRange,
                            contentDescription = "Fecha",
                            modifier = Modifier.size(14.dp),
                            tint = colors.TextSecondary
                        )
                        Spacer(modifier = Modifier.width(6.dp))
                        Text(
                            text = formatFecha(item.creadoEn),
                            fontSize = 12.sp,
                            color = colors.TextSecondary,
                            fontFamily = roboto
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Diagnóstico (siempre visible)
            Surface(
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(12.dp),
                color = colors.Primary.copy(alpha = 0.1f)
            ) {
                Column(
                    modifier = Modifier.padding(12.dp)
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.Healing,
                            contentDescription = "Diagnóstico",
                            modifier = Modifier.size(16.dp),
                            tint = colors.Primary
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = "Diagnóstico",
                            fontSize = 12.sp,
                            fontWeight = FontWeight.Medium,
                            color = colors.Primary,
                            fontFamily = roboto
                        )
                    }
                    Spacer(modifier = Modifier.height(6.dp))
                    Text(
                        text = item.diagnostico.ifEmpty { "No especificado" },
                        fontSize = 14.sp,
                        color = colors.TextPrimary,
                        fontFamily = roboto,
                        lineHeight = 20.sp
                    )
                }
            }

            // Contenido expandido
            if (isExpanded) {
                Spacer(modifier = Modifier.height(12.dp))

                // Tratamiento
                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    color = colors.Primary.copy(alpha = 0.05f)
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp)
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.Favorite,
                                contentDescription = "Tratamiento",
                                modifier = Modifier.size(16.dp),
                                tint = colors.PrimaryLight
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = "Tratamiento",
                                fontSize = 12.sp,
                                fontWeight = FontWeight.Medium,
                                color = colors.PrimaryLight,
                                fontFamily = roboto
                            )
                        }
                        Spacer(modifier = Modifier.height(6.dp))
                        Text(
                            text = item.tratamiento.ifEmpty { "No especificado" },
                            fontSize = 14.sp,
                            color = colors.TextPrimary,
                            fontFamily = roboto,
                            lineHeight = 20.sp
                        )
                    }
                }

                Spacer(modifier = Modifier.height(8.dp))

                // Observaciones
                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    color = colors.Accent.copy(alpha = 0.2f)
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp)
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.Note,
                                contentDescription = "Observaciones",
                                modifier = Modifier.size(16.dp),
                                tint = colors.TextSecondary
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = "Observaciones",
                                fontSize = 12.sp,
                                fontWeight = FontWeight.Medium,
                                color = colors.TextSecondary,
                                fontFamily = roboto
                            )
                        }
                        Spacer(modifier = Modifier.height(6.dp))
                        Text(
                            text = item.observaciones.ifEmpty { "No hay observaciones registradas" },
                            fontSize = 14.sp,
                            color = colors.TextSecondary,
                            fontFamily = roboto,
                            lineHeight = 20.sp
                        )
                    }
                }
            }
        }
    }
}