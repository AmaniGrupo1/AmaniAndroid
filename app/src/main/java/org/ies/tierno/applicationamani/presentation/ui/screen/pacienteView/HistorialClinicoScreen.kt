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
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.ies.tierno.applicationamani.presentation.viewmodels.historialClinico.HistorialClinicoPacienteViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.util.Locale

// Colores originales para el modo DEFECTO
object HistorialClinicoDefaultColors {
    val Primary = Color(0xFF6B4E71)
    val PrimaryLight = Color(0xFF9B7E9F)
    val PrimaryDark = Color(0xFF4A2B50)
    val Secondary = Color(0xFFE8B4B8)
    val Accent = Color(0xFFF5E6E8)
    val Background = Color(0xFFFDF8F9)
    val Surface = Color(0xFFFFFFFF)
    val TextPrimary = Color(0xFF2D1B30)
    val TextSecondary = Color(0xFF7A6B7E)
    val Error = Color(0xFFE57373)
    val Success = Color(0xFF81C784)
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HistorialClinicoScreen(
    navController: NavController,
    idPaciente: Long,
    viewModel: HistorialClinicoPacienteViewModel
) {
    val scope = rememberCoroutineScope()
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val context = LocalContext.current
    val tokenDataStore = remember { TokenDataStore(context) }

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Determinar colores según el tema
    val colors = if (isDark) {
        HistorialClinicoThemeColors(
            primary = Color.White,
            primaryLight = Color.White.copy(alpha = 0.7f),
            primaryDark = Color.DarkGray,
            secondary = Color.Gray,
            accent = cardColors.cardBackground,
            background = screenColors.background,
            surface = cardColors.cardBackground,
            textPrimary = cardColors.cardContent,
            textSecondary = cardColors.cardContent.copy(alpha = 0.7f),
            error = HistorialClinicoDefaultColors.Error,
            success = HistorialClinicoDefaultColors.Success
        )
    } else {
        HistorialClinicoThemeColors(
            primary = HistorialClinicoDefaultColors.Primary,
            primaryLight = HistorialClinicoDefaultColors.PrimaryLight,
            primaryDark = HistorialClinicoDefaultColors.PrimaryDark,
            secondary = HistorialClinicoDefaultColors.Secondary,
            accent = HistorialClinicoDefaultColors.Accent,
            background = HistorialClinicoDefaultColors.Background,
            surface = HistorialClinicoDefaultColors.Surface,
            textPrimary = HistorialClinicoDefaultColors.TextPrimary,
            textSecondary = HistorialClinicoDefaultColors.TextSecondary,
            error = HistorialClinicoDefaultColors.Error,
            success = HistorialClinicoDefaultColors.Success
        )
    }

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
        containerColor = colors.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "Historial Clínico",
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = if (isDark) Color.Black else Color.White,
                        fontFamily = roboto
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.Default.ArrowBack,
                            contentDescription = "Volver",
                            tint = if (isDark) Color.Black else Color.White
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = colors.primary
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
                        colors = if (isDark) {
                            listOf(colors.background, colors.background)
                        } else {
                            listOf(colors.accent, Color.White)
                        }
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
                            CircularProgressIndicator(color = colors.primary)
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "Cargando historial clínico...",
                                fontSize = 14.sp,
                                color = colors.textSecondary,
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
                                tint = colors.primary.copy(alpha = 0.3f)
                            )
                            Spacer(modifier = Modifier.height(20.dp))
                            Text(
                                text = "No hay registros en tu historial clínico",
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Medium,
                                color = colors.textPrimary,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = "Las consultas con tu psicólogo aparecerán aquí",
                                fontSize = 14.sp,
                                color = colors.textSecondary,
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
                                tint = colors.error
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "Error al cargar el historial",
                                fontSize = 18.sp,
                                fontWeight = FontWeight.Bold,
                                color = colors.textPrimary,
                                fontFamily = roboto,
                                textAlign = TextAlign.Center
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = error ?: "Error desconocido",
                                fontSize = 14.sp,
                                color = colors.textSecondary,
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
                                colors = ButtonDefaults.buttonColors(containerColor = colors.primary),
                                shape = RoundedCornerShape(12.dp)
                            ) {
                                Icon(
                                    Icons.Default.Refresh,
                                    contentDescription = "Reintentar",
                                    tint = if (isDark) Color.Black else Color.White
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(
                                    "Reintentar",
                                    fontSize = 14.sp,
                                    color = if (isDark) Color.Black else Color.White,
                                    fontFamily = roboto
                                )
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
                                formatFecha = { formatFecha(it) },
                                isDark = isDark
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
    colors: HistorialClinicoThemeColors,
    roboto: FontFamily,
    formatFecha: (String) -> String,
    isDark: Boolean
) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { onCardClick() },
        shape = RoundedCornerShape(20.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
        colors = CardDefaults.cardColors(containerColor = colors.surface)
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
                        color = colors.primary,
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
                            tint = colors.textSecondary
                        )
                        Spacer(modifier = Modifier.width(6.dp))
                        Text(
                            text = formatFecha(item.creadoEn),
                            fontSize = 12.sp,
                            color = colors.textSecondary,
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
                color = colors.primary.copy(alpha = 0.1f)
            ) {
                Column(
                    modifier = Modifier.padding(12.dp)
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.Healing,
                            contentDescription = "Diagnóstico",
                            modifier = Modifier.size(16.dp),
                            tint = colors.primary
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = "Diagnóstico",
                            fontSize = 12.sp,
                            fontWeight = FontWeight.Medium,
                            color = colors.primary,
                            fontFamily = roboto
                        )
                    }
                    Spacer(modifier = Modifier.height(6.dp))
                    Text(
                        text = item.diagnostico.ifEmpty { "No especificado" },
                        fontSize = 14.sp,
                        color = colors.textPrimary,
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
                    color = colors.primary.copy(alpha = 0.05f)
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp)
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.Favorite,
                                contentDescription = "Tratamiento",
                                modifier = Modifier.size(16.dp),
                                tint = colors.primaryLight
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = "Tratamiento",
                                fontSize = 12.sp,
                                fontWeight = FontWeight.Medium,
                                color = colors.primaryLight,
                                fontFamily = roboto
                            )
                        }
                        Spacer(modifier = Modifier.height(6.dp))
                        Text(
                            text = item.tratamiento.ifEmpty { "No especificado" },
                            fontSize = 14.sp,
                            color = colors.textPrimary,
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
                    color = colors.accent.copy(alpha = 0.2f)
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp)
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.Note,
                                contentDescription = "Observaciones",
                                modifier = Modifier.size(16.dp),
                                tint = colors.textSecondary
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = "Observaciones",
                                fontSize = 12.sp,
                                fontWeight = FontWeight.Medium,
                                color = colors.textSecondary,
                                fontFamily = roboto
                            )
                        }
                        Spacer(modifier = Modifier.height(6.dp))
                        Text(
                            text = item.observaciones.ifEmpty { "No hay observaciones registradas" },
                            fontSize = 14.sp,
                            color = colors.textSecondary,
                            fontFamily = roboto,
                            lineHeight = 20.sp
                        )
                    }
                }
            }
        }
    }
}

// Clase auxiliar para los colores del tema
data class HistorialClinicoThemeColors(
    val primary: Color,
    val primaryLight: Color,
    val primaryDark: Color,
    val secondary: Color,
    val accent: Color,
    val background: Color,
    val surface: Color,
    val textPrimary: Color,
    val textSecondary: Color,
    val error: Color,
    val success: Color
)