package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import androidx.compose.ui.res.stringResource
import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.widget.Toast
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Note
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
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.dto.historial.HistorialClinicoResponseDTO
import org.ies.tierno.applicationamani.presentation.ui.screen.generacionPDFhISTORIAL.HistorialPDFGenerator
import org.ies.tierno.applicationamani.presentation.viewmodels.historialClinico.HistorialClinicoPacienteViewModel
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.util.Locale
import androidx.compose.material3.MaterialTheme

/**
 * Encuentra la [Activity] asociada a un [Context], recorriendo los
 * [ContextWrapper] si es necesario.
 *
 * @return La Activity encontrada, o `null` si no se encuentra.
 */
fun Context.findActivity(): Activity? {
    var context = this
    while (context is ContextWrapper) {
        if (context is Activity) return context
        context = context.baseContext
    }
    return null
}

/**
 * Pantalla de visualización del historial clínico del paciente.
 *
 * Muestra una lista de entradas del historial con diagnóstico, tratamiento
 * y observaciones en tarjetas expandibles. Permite generar y compartir un
 * PDF del historial completo mediante [HistorialPDFGenerator].
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param idPaciente Identificador del paciente cuyo historial se muestra.
 * @param viewModel ViewModel que gestiona la carga del historial clínico.
 * @param userSessionDataStore Almacén de sesión para obtener el nombre del paciente.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HistorialClinicoScreen(
    navController: NavController,
    idPaciente: Long,
    viewModel: HistorialClinicoPacienteViewModel = koinViewModel(),
    userSessionDataStore: UserSessionDataStore,
) {
    val scope = rememberCoroutineScope()
    val context = LocalContext.current
    val tokenDataStore = remember { TokenDataStore(context) }
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    // Usar MaterialTheme directamente
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val isDark = isDarkTheme()

    val session by userSessionDataStore.sessionFlow.collectAsState(initial = null)
    val nombrePaciente = session?.nombre ?: "Paciente"

    val historial by viewModel.historial
    val isLoading by viewModel.isLoading
    val error by viewModel.error

    var expandedCardId by remember { mutableStateOf<Long?>(null) }

    LaunchedEffect(idPaciente) {
        val token = tokenDataStore.getToken()
        if (token.isNullOrEmpty()) {
            Toast.makeText(context, "Error: No hay sesión activa", Toast.LENGTH_LONG).show()
            navController.navigateUp()
            return@LaunchedEffect
        }
        viewModel.cargarHistorialClinico(idPaciente, "Bearer $token")
    }

    fun formatFecha(fechaStr: String): String =
        try {
            val fecha = LocalDateTime.parse(fechaStr)
            val formatter = DateTimeFormatter.ofPattern("dd 'de' MMMM 'de' yyyy", java.util.Locale.Builder().setLanguage("es").setRegion("ES").build())
            fecha.format(formatter)
        } catch (e: Exception) {
            fechaStr
        }

    Scaffold(
        containerColor = colorScheme.background,
        topBar = {
            TopAppBar(
                title = {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween,
                    ) {
                        Text(
                            text = stringResource(R.string.auto_historial_clinico),
                            style = typography.titleLarge,
                            fontWeight = FontWeight.SemiBold,
                            color = if (isDark) colorScheme.onSurface else Color.White,
                            fontFamily = roboto,
                            modifier = Modifier.weight(1f),
                        )
                        IconButton(
                            onClick = {
                                scope.launch {
                                    if (historial.isNotEmpty()) {
                                        try {
                                            val loadingToast =
                                                Toast.makeText(
                                                    context,
                                                    "Generando PDF...",
                                                    Toast.LENGTH_SHORT,
                                                )
                                            loadingToast.show()

                                            val pdfFile =
                                                HistorialPDFGenerator.generarPDF(
                                                    context = context,
                                                    historial = historial,
                                                    nombrePaciente = nombrePaciente,
                                                )

                                            loadingToast.cancel()

                                            if (!pdfFile.exists() || pdfFile.length() == 0L) {
                                                Toast
                                                    .makeText(
                                                        context,
                                                        "Error: No se pudo generar el PDF",
                                                        Toast.LENGTH_LONG,
                                                    ).show()
                                                return@launch
                                            }

                                            HistorialPDFGenerator.compartirPDF(context, pdfFile)
                                        } catch (e: Exception) {
                                            Toast
                                                .makeText(
                                                    context,
                                                    "Error: ${e.message}",
                                                    Toast.LENGTH_LONG,
                                                ).show()
                                        }
                                    } else {
                                        Toast
                                            .makeText(
                                                context,
                                                "No hay datos para compartir",
                                                Toast.LENGTH_SHORT,
                                            ).show()
                                    }
                                }
                            },
                        ) {
                            Icon(
                                Icons.Default.Share,
                                contentDescription = stringResource(R.string.auto_compartir_pdf),
                                tint = if (isDark) colorScheme.onSurface else Color.White,
                            )
                        }
                    }
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = if (isDark) colorScheme.onSurface else Color.White,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                    ),
            )
        },
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .background(
                        brush =
                            Brush.verticalGradient(
                                colors =
                                    if (isDark) {
                                        listOf(colorScheme.background, colorScheme.background)
                                    } else {
                                        listOf(colorScheme.primaryContainer.copy(alpha = 0.1f), colorScheme.background)
                                    },
                            ),
                    ),
        ) {
            when {
                isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center,
                        ) {
                            CircularProgressIndicator(color = colorScheme.primary)
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = stringResource(R.string.auto_cargando_historial_clinico),
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }

                historial.isEmpty() && !isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center,
                            modifier = Modifier.padding(24.dp),
                        ) {
                            Icon(
                                Icons.Default.History,
                                contentDescription = null,
                                modifier = Modifier.size(80.dp),
                                tint = colorScheme.primary.copy(alpha = 0.3f),
                            )
                            Spacer(modifier = Modifier.height(20.dp))
                            Text(
                                text = stringResource(R.string.auto_no_hay_registros_en),
                                style = typography.titleMedium,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.onSurface,
                                textAlign = TextAlign.Center,
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = stringResource(R.string.auto_las_consultas_con_tu),
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                                textAlign = TextAlign.Center,
                            )
                        }
                    }
                }

                error != null -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center,
                            modifier = Modifier.padding(24.dp),
                        ) {
                            Icon(
                                Icons.Default.Error,
                                contentDescription = null,
                                modifier = Modifier.size(64.dp),
                                tint = colorScheme.error,
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = stringResource(R.string.auto_error_al_cargar_el_2),
                                style = typography.titleMedium,
                                fontWeight = FontWeight.Bold,
                                color = colorScheme.onSurface,
                                textAlign = TextAlign.Center,
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = error ?: "Error desconocido",
                                style = typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                                textAlign = TextAlign.Center,
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
                                shape = CircleShape,
                            ) {
                                Icon(
                                    Icons.Default.Refresh,
                                    contentDescription = stringResource(R.string.auto_reintentar),
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(stringResource(R.string.auto_reintentar),
                                    style = typography.labelLarge,
                                )
                            }
                        }
                    }
                }

                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 16.dp),
                        verticalArrangement = Arrangement.spacedBy(16.dp),
                    ) {
                        items(
                            items = historial,
                            key = { it.id },
                        ) { item ->
                            HistorialCard(
                                item = item,
                                isExpanded = expandedCardId == item.id,
                                onCardClick = {
                                    expandedCardId = if (expandedCardId == item.id) null else item.id
                                },
                                formatFecha = { formatFecha(it) },
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
    formatFecha: (String) -> String,
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Card(
        modifier =
            Modifier
                .fillMaxWidth()
                .clickable { onCardClick() },
        shape = shapes.medium,
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
        colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
    ) {
        Column(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.Top,
            ) {
                Column(
                    modifier = Modifier.weight(1f),
                ) {
                    Text(
                        text = item.titulo,
                        style = typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.primary,
                        fontFamily = roboto,
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Icon(
                            Icons.Default.DateRange,
                            contentDescription = stringResource(R.string.auto_fecha),
                            modifier = Modifier.size(14.dp),
                            tint = colorScheme.onSurfaceVariant,
                        )
                        Spacer(modifier = Modifier.width(6.dp))
                        Text(
                            text = formatFecha(item.creadoEn),
                            style = typography.bodySmall,
                            color = colorScheme.onSurfaceVariant,
                            fontFamily = roboto,
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            Surface(
                modifier = Modifier.fillMaxWidth(),
                shape = shapes.medium,
                color = colorScheme.primary.copy(alpha = 0.1f),
            ) {
                Column(
                    modifier = Modifier.padding(12.dp),
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            Icons.Default.Healing,
                            contentDescription = stringResource(R.string.auto_diagnostico),
                            modifier = Modifier.size(16.dp),
                            tint = colorScheme.primary,
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            text = stringResource(R.string.auto_diagnostico),
                            style = typography.labelSmall,
                            fontWeight = FontWeight.Medium,
                            color = colorScheme.primary,
                            fontFamily = roboto,
                        )
                    }
                    Spacer(modifier = Modifier.height(6.dp))
                    Text(
                        text = item.diagnostico.ifEmpty { "No especificado" },
                        style = typography.bodyMedium,
                        color = colorScheme.onSurface,
                        fontFamily = roboto,
                        lineHeight = 20.sp,
                    )
                }
            }

            if (isExpanded) {
                Spacer(modifier = Modifier.height(12.dp))

                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.medium,
                    color = colorScheme.primary.copy(alpha = 0.05f),
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.Favorite,
                                contentDescription = stringResource(R.string.auto_tratamiento),
                                modifier = Modifier.size(16.dp),
                                tint = colorScheme.primary.copy(alpha = 0.8f),
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = stringResource(R.string.auto_tratamiento),
                                style = typography.labelSmall,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.primary.copy(alpha = 0.8f),
                                fontFamily = roboto,
                            )
                        }
                        Spacer(modifier = Modifier.height(6.dp))
                        Text(
                            text = item.tratamiento.ifEmpty { "No especificado" },
                            style = typography.bodyMedium,
                            color = colorScheme.onSurface,
                            fontFamily = roboto,
                            lineHeight = 20.sp,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(8.dp))

                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.medium,
                    color = colorScheme.onSurfaceVariant.copy(alpha = 0.1f),
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.AutoMirrored.Filled.Note,
                                contentDescription = stringResource(R.string.auto_observaciones),
                                modifier = Modifier.size(16.dp),
                                tint = colorScheme.onSurfaceVariant,
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                text = stringResource(R.string.auto_observaciones),
                                style = typography.labelSmall,
                                fontWeight = FontWeight.Medium,
                                color = colorScheme.onSurfaceVariant,
                                fontFamily = roboto,
                            )
                        }
                        Spacer(modifier = Modifier.height(6.dp))
                        Text(
                            text = item.observaciones.ifEmpty { "No hay observaciones registradas" },
                            style = typography.bodyMedium,
                            color = colorScheme.onSurfaceVariant,
                            fontFamily = roboto,
                            lineHeight = 20.sp,
                        )
                    }
                }
            }
        }
    }
}
