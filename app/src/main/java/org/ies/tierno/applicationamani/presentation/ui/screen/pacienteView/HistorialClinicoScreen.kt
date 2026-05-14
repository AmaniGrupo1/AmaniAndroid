package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.MaterialTheme

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
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
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material.icons.filled.Healing
import androidx.compose.material.icons.filled.History
import androidx.compose.material.icons.filled.Note
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
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

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HistorialClinicoScreen(
    navController: NavController,
    idPaciente: Long,
    viewModel: HistorialClinicoPacienteViewModel
) {
    val scope = rememberCoroutineScope()
    val context = LocalContext.current
    val tokenDataStore = remember { TokenDataStore(context) }

    // Usar MaterialTheme directamente
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val isDark = isDarkTheme()

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
        containerColor = colorScheme.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "Historial Clínico",
                        style = typography.titleLarge,
                        fontWeight = FontWeight.SemiBold,
                        color = if (isDark) colorScheme.onSurface else Color.White
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.Default.ArrowBack,
                            contentDescription = "Volver",
                            tint = if (isDark) colorScheme.onSurface else Color.White
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = colorScheme.primary
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
                            listOf(colorScheme.background, colorScheme.background)
                        } else {
                            listOf(colorScheme.primaryContainer.copy(alpha = 0.1f), colorScheme.background)
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
                            CircularProgressIndicator(color = colorScheme.primary)
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "Cargando historial clínico...",
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant
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
                                tint = colorScheme.primary.copy(alpha = 0.3f)
                            )
                            Spacer(modifier = Modifier.height(20.dp))
                            Text(
                                text = "No hay registros en tu historial clínico",
                                style = typography.titleMedium,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.onSurface,
                                textAlign = TextAlign.Center
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = "Las consultas con tu psicólogo aparecerán aquí",
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
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
                                tint = colorScheme.error
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "Error al cargar el historial",
                                style = typography.titleMedium,
                                fontWeight = FontWeight.Bold,
                                color = colorScheme.onSurface,
                                textAlign = TextAlign.Center
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = error ?: "Error desconocido",
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
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
                                colors = ButtonDefaults.buttonColors(containerColor = colorScheme.primary),
                                shape = CircleShape
                            ) {
                                Icon(
                                    Icons.Default.Refresh,
                                    contentDescription = "Reintentar"
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(
                                    "Reintentar",
                                    style = typography.labelLarge
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
    formatFecha: (String) -> String
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { onCardClick() },
        shape = shapes.medium,
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
        colors = CardDefaults.cardColors(containerColor = colorScheme.surface)
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
                        style = typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.primary,
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
                            tint = colorScheme.onSurfaceVariant
                        )
                        Spacer(modifier = Modifier.width(6.dp))
                        Text(
                            text = formatFecha(item.creadoEn),
                            style = typography.bodySmall,
                            color = colorScheme.onSurfaceVariant,
                            fontFamily = roboto
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Diagnóstico (siempre visible)
            Surface(
                modifier = Modifier.fillMaxWidth(),
                shape = shapes.medium,
                color = colorScheme.primary.copy(alpha = 0.1f)
            ) {
                Column(
                    modifier = Modifier.padding(12.dp)
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.Healing,
                            contentDescription = "Diagnóstico",
                            modifier = Modifier.size(16.dp),
                            tint = colorScheme.primary
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = "Diagnóstico",
                            style = typography.labelSmall,
                            fontWeight = FontWeight.Medium,
                            color = colorScheme.primary,
                            fontFamily = roboto
                        )
                    }
                    Spacer(modifier = Modifier.height(6.dp))
                    Text(
                        text = item.diagnostico.ifEmpty { "No especificado" },
                        style = typography.bodyMedium,
                        color = colorScheme.onSurface,
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
                    shape = shapes.medium,
                    color = colorScheme.primary.copy(alpha = 0.05f)
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp)
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.Favorite,
                                contentDescription = "Tratamiento",
                                modifier = Modifier.size(16.dp),
                                tint = colorScheme.primary.copy(alpha = 0.8f)
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = "Tratamiento",
                                style = typography.labelSmall,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.primary.copy(alpha = 0.8f),
                                fontFamily = roboto
                            )
                        }
                        Spacer(modifier = Modifier.height(6.dp))
                        Text(
                            text = item.tratamiento.ifEmpty { "No especificado" },
                            style = typography.bodyMedium,
                            color = colorScheme.onSurface,
                            fontFamily = roboto,
                            lineHeight = 20.sp
                        )
                    }
                }

                Spacer(modifier = Modifier.height(8.dp))

                // Observaciones
                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.medium,
                    color = colorScheme.onSurfaceVariant.copy(alpha = 0.1f)
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp)
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.Note,
                                contentDescription = "Observaciones",
                                modifier = Modifier.size(16.dp),
                                tint = colorScheme.onSurfaceVariant
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = "Observaciones",
                                style = typography.labelSmall,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.onSurfaceVariant,
                                fontFamily = roboto
                            )
                        }
                        Spacer(modifier = Modifier.height(6.dp))
                        Text(
                            text = item.observaciones.ifEmpty { "No hay observaciones registradas" },
                            style = typography.bodyMedium,
                            color = colorScheme.onSurfaceVariant,
                            fontFamily = roboto,
                            lineHeight = 20.sp
                        )
                    }
                }
            }
        }
    }
}

// Clase auxiliar para los colores del tema eliminada, se usa MaterialTheme directamente