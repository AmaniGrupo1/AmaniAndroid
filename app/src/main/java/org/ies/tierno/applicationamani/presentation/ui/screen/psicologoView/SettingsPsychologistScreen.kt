package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.List
import androidx.compose.material.icons.filled.*
import androidx.compose.material.icons.outlined.*
import androidx.compose.material3.*
import androidx.compose.material3.HorizontalDivider
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import android.app.Activity
import android.util.Log
import java.time.ZoneId
import java.time.ZonedDateTime
import androidx.compose.material3.MaterialTheme

private const val TAG = "SettingsPsychologist"

// Función auxiliar para obtener el subtítulo del tema actual
private fun getCurrentThemeSubtitle(currentTheme: Boolean): String {
    return if (currentTheme) "Oscuro" else "Claro"
}

// ✅ Definir SettingsOption localmente
/**
 * Modelo de datos para una opción de configuración en la pantalla de ajustes del psicólogo.
 *
 * @property id Identificador único de la opción.
 * @property title Título descriptivo.
 * @property subtitle Texto secundario con información adicional.
 * @property icon Icono vectorial asociado.
 */
data class SettingsOption(
    val id: String,
    val title: String,
    val subtitle: String,
    val icon: ImageVector
)

/**
 * Pantalla de ajustes del psicólogo con gestión de idioma, tema y horario.
 *
 * Permite al psicólogo cambiar el idioma, el tema visual (claro/oscuro)
 * y configurar el horario semanal de disponibilidad. Los cambios de idioma
 * provocan la recreación de la Activity.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param userSessionDataStore Almacén de sesión del usuario.
 * @param idiomaViewModel ViewModel que gestiona el cambio de idioma, tema y horario.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsPsychologistScreen(
    navController: NavController,
    userSessionDataStore: UserSessionDataStore,
    idiomaViewModel: IdiomaViewModel
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    // Obtener el idioma actual del ViewModel
    val currentLanguage by idiomaViewModel.idioma.collectAsStateWithLifecycle()

    // Obtener el tema actual del ViewModel (Boolean: false=claro, true=oscuro)
    val currentTema by idiomaViewModel.tema.collectAsStateWithLifecycle()

    // Obtener el horario actual del ViewModel
    val horarioReal by idiomaViewModel.horarioActual.collectAsStateWithLifecycle()

    // Zona horaria
    val madridZone = ZoneId.of("Europe/Madrid")
    val offset = ZonedDateTime.now(madridZone).offset.id
    val zoneText = "Madrid ($offset)"

    // También necesitamos la sesión completa para otros datos
    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

    // Obtener estado del tema para la UI
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Colores dinámicos para la UI
    val backgroundColor = if (isDark) screenColors.background else Color(0xFFFDF8F9)
    val surfaceColor = if (isDark) cardColors.cardBackground else Color(0xFFFFFFFF)
    val textColor = if (isDark) Color.White else Color(0xFF2D1B30)
    val textSecondaryColor = if (isDark) Color.White.copy(alpha = 0.7f) else Color(0xFF7A6B7E)
    val dividerColor = if (isDark) Color.White.copy(alpha = 0.12f) else textColor.copy(alpha = 0.12f)
    val primaryColor = if (isDark) Color.White else Color(0xFF6B4E71)
    val iconColor = if (isDark) Color.White else primaryColor

    Log.d(TAG, "🔍 [Recomposición] Idioma actual: $currentLanguage")
    Log.d(TAG, "🎨 [Recomposición] Tema actual (boolean): $currentTema")

    // Control de recreación para evitar loops
    var previousLanguage by remember { mutableStateOf(currentLanguage) }
    var isRecreating by remember { mutableStateOf(false) }

    // Detectar cambio de idioma y recrear la Activity (UNA VEZ)
    LaunchedEffect(currentLanguage) {
        if (!isRecreating && previousLanguage != currentLanguage) {
            Log.w(TAG, "⚠️ [Cambio detectado] De '$previousLanguage' a '$currentLanguage'")
            previousLanguage = currentLanguage
            isRecreating = true
            delay(150)
            (context as? Activity)?.recreate()
        }
    }

    // Estados para el diálogo de horario
    var mostrarConfigHorario by remember { mutableStateOf(false) }
    var cargandoHorario by remember { mutableStateOf(false) }

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_configuracion),
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = if (isDark) Color.Black else Color.White,
                        fontFamily = roboto
                    )
                },
                colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                    )
            )
        }
    ) { padding ->

        // Diálogo de horario
        if (mostrarConfigHorario) {
            if (cargandoHorario) {
                Dialog(onDismissRequest = { mostrarConfigHorario = false }) {
                    Card(
                        modifier = Modifier
                            .width(200.dp)
                            .padding(32.dp),
                        shape = RoundedCornerShape(16.dp)
                    ) {
                        Column(
                            modifier = Modifier.padding(32.dp),
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            CircularProgressIndicator()
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(stringResource(R.string.auto_cargando_horario), fontFamily = roboto)
                        }
                    }
                }
            } else {
                DialogHorarioSemanalPsychologist(
                    horarioActual = horarioReal?.franjas,
                    onDismiss = { mostrarConfigHorario = false },
                    roboto = roboto,
                    isDark = isDark
                )
            }
        }

        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .background(backgroundColor),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // ==================== PERFIL (Solo para psicólogo) ====================
            item {
                SettingsCategoryCardPsychologist(
                    title = stringResource(R.string.perfil),
                    icon = Icons.Outlined.Person,
                    iconColor = iconColor,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    textColor = textColor,
                    textSecondaryColor = textSecondaryColor,
                    dividerColor = dividerColor,
                    primaryColor = primaryColor,
                    zoneText = zoneText,
                    onOpenHorario = {
                        mostrarConfigHorario = true
                        scope.launch {
                            cargandoHorario = true
                            idiomaViewModel.cargarHorarioActual()
                            delay(500)
                            cargandoHorario = false
                        }
                    },
                    options = listOf(
                        SettingsOption(
                            id = "mi_perfil",
                            title = stringResource(R.string.perfil),
                            subtitle = stringResource(R.string.editar_datos_personales),
                            icon = Icons.Default.PersonOutline
                        ),
                        SettingsOption(
                            id = "especialidad",
                            title = stringResource(R.string.mis_especialidades),
                            subtitle = stringResource(R.string.agregar_especialidades),
                            icon = Icons.Default.Work
                        )
                    )
                )
            }

            // ==================== PREFERENCIAS ====================
            item {
                SettingsCategoryCardPsychologist(
                    title = stringResource(R.string.preferencias),
                    icon = Icons.Outlined.Settings,
                    iconColor = Color(0xFFE67E22),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    textColor = textColor,
                    textSecondaryColor = textSecondaryColor,
                    dividerColor = dividerColor,
                    primaryColor = primaryColor,
                    zoneText = zoneText,
                    onOpenHorario = {
                        mostrarConfigHorario = true
                        scope.launch {
                            cargandoHorario = true
                            idiomaViewModel.cargarHorarioActual()
                            delay(500)
                            cargandoHorario = false
                        }
                    },
                    options = listOf(
                        SettingsOption(
                            id = "language",
                            title = stringResource(R.string.idioma),
                            subtitle = if (currentLanguage == "es")
                                stringResource(R.string.espanol)
                            else
                                stringResource(R.string.ingles),
                            icon = Icons.Default.Language
                        ),
                        SettingsOption(
                            id = "zona_horaria",
                            title = stringResource(R.string.zona_horaria),
                            subtitle = zoneText,
                            icon = Icons.Default.AccessTime
                        ),
                        SettingsOption(
                            id = "notificaciones",
                            title = stringResource(R.string.notificaciones),
                            subtitle = stringResource(R.string.configurar_notificaciones),
                            icon = Icons.Default.Notifications
                        ),
                        SettingsOption(
                            id = "tema",
                            title = stringResource(R.string.tema),
                            subtitle = getCurrentThemeSubtitle(currentTema),
                            icon = Icons.Default.BrightnessMedium
                        )
                    )
                )
            }

            // ==================== CITAS ====================
            item {
                SettingsCategoryCardPsychologist(
                    title = stringResource(R.string.citas),
                    icon = Icons.Outlined.CalendarMonth,
                    iconColor = Color(0xFF27AE60),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    textColor = textColor,
                    textSecondaryColor = textSecondaryColor,
                    dividerColor = dividerColor,
                    primaryColor = primaryColor,
                    zoneText = zoneText,
                    onOpenHorario = {
                        mostrarConfigHorario = true
                        scope.launch {
                            cargandoHorario = true
                            idiomaViewModel.cargarHorarioActual()
                            delay(500)
                            cargandoHorario = false
                        }
                    },
                    options = listOf(
                        SettingsOption(
                            id = "duracion_cita",
                            title = stringResource(R.string.duracion_cita),
                            subtitle = stringResource(R.string.duracion_minutos, 45),
                            icon = Icons.Default.Timer
                        ),
                        SettingsOption(
                            id = "tiempo_entre_citas",
                            title = stringResource(R.string.tiempo_entre_citas),
                            subtitle = stringResource(R.string.tiempo_minutos, 10),
                            icon = Icons.Default.Timelapse
                        ),
                        SettingsOption(
                            id = "available_days",
                            title = stringResource(R.string.dias_disponibles),
                            subtitle = stringResource(R.string.lunes_viernes),
                            icon = Icons.Default.CalendarToday
                        ),
                        SettingsOption(
                            id = "recordatorios",
                            title = stringResource(R.string.recordatorios),
                            subtitle = stringResource(R.string.enviar_recordatorios),
                            icon = Icons.Default.Alarm
                        )
                    )
                )
            }

            // ==================== SISTEMA ====================
            item {
                SettingsCategoryCardPsychologist(
                    title = stringResource(R.string.sistema),
                    icon = Icons.Outlined.Storage,
                    iconColor = Color(0xFF9B59B6),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    textColor = textColor,
                    textSecondaryColor = textSecondaryColor,
                    dividerColor = dividerColor,
                    primaryColor = primaryColor,
                    zoneText = zoneText,
                    onOpenHorario = {
                        mostrarConfigHorario = true
                        scope.launch {
                            cargandoHorario = true
                            idiomaViewModel.cargarHorarioActual()
                            delay(500)
                            cargandoHorario = false
                        }
                    },
                    options = listOf(
                        SettingsOption(
                            id = "version",
                            title = stringResource(R.string.version),
                            subtitle = stringResource(R.string.version_actual, "1.0.0"),
                            icon = Icons.Default.Info
                        ),
                        SettingsOption(
                            id = "terminos",
                            title = stringResource(R.string.terminos_condiciones),
                            subtitle = stringResource(R.string.leer_terminos),
                            icon = Icons.Default.Description
                        ),
                        SettingsOption(
                            id = "privacidad",
                            title = stringResource(R.string.politica_privacidad),
                            subtitle = stringResource(R.string.ver_politica),
                            icon = Icons.Default.Lock
                        )
                    )
                )
            }
        }
    }
}

@Composable
fun SettingsCategoryCardPsychologist(
    title: String,
    icon: ImageVector,
    iconColor: Color,
    roboto: FontFamily,
    options: List<SettingsOption>,
    navController: NavController,
    session: UserSession?,
    currentLanguage: String,
    currentTema: Boolean,
    idiomaViewModel: IdiomaViewModel,
    surfaceColor: Color,
    textColor: Color,
    textSecondaryColor: Color,
    dividerColor: Color,
    primaryColor: Color,
    zoneText: String,
    onOpenHorario: () -> Unit = {}
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = surfaceColor),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.padding(bottom = 12.dp)
            ) {
                Box(
                    modifier = Modifier
                        .size(36.dp)
                        .clip(RoundedCornerShape(10.dp))
                        .background(iconColor.copy(alpha = 0.1f)),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        icon,
                        contentDescription = null,
                        tint = iconColor,
                        modifier = Modifier.size(20.dp)
                    )
                }
                Spacer(modifier = Modifier.width(12.dp))
                Text(
                    text = title,
                    fontFamily = roboto,
                    fontWeight = FontWeight.Bold,
                    fontSize = 18.sp,
                    color = textColor
                )
            }

            options.forEachIndexed { index, option ->
                if (index > 0) {
                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                        thickness = DividerDefaults.Thickness,
                        color = dividerColor
                    )
                }

                SettingsOptionRowPsychologist(
                    option = option,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    textColor = textColor,
                    textSecondaryColor = textSecondaryColor,
                    dividerColor = dividerColor,
                    primaryColor = primaryColor,
                    zoneText = zoneText,
                    onOpenHorario = onOpenHorario
                )
            }
        }
    }
}

@Composable
fun SettingsOptionRowPsychologist(
    option: SettingsOption,
    roboto: FontFamily,
    navController: NavController,
    session: UserSession?,
    currentLanguage: String,
    currentTema: Boolean,
    idiomaViewModel: IdiomaViewModel,
    textColor: Color,
    textSecondaryColor: Color,
    dividerColor: Color,
    primaryColor: Color,
    zoneText: String,
    onOpenHorario: () -> Unit = {}
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    var expandedLanguage by remember { mutableStateOf(false) }
    var expandedTheme by remember { mutableStateOf(false) }
    val isDark = isDarkTheme()
    val dropdownContainerColor = if (isDark) Color.DarkGray else Color.White

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable {
                when (option.id) {
                    "language" -> expandedLanguage = true
                    "tema" -> expandedTheme = true
                    "available_days" -> onOpenHorario()
                    "zona_horaria" -> {
                        androidx.appcompat.app.AlertDialog.Builder(context)
                            .setTitle("Zona Horaria")
                            .setMessage("Zona actual: $zoneText\n\nLa aplicación usa automáticamente la zona horaria de tu dispositivo.")
                            .setPositiveButton("Entendido", null)
                            .show()
                    }
                    "mi_perfil" -> {
                        val identificador = session?.idPsicologo
                        if (identificador != null && identificador > 0L) {
                            navController.navigate(
                                Screens.perfilPsicologo.createRoute(identificador)
                            )
                        }
                    }
                    "horario" -> {
                        Log.d(TAG, "📅 Navegar a horario del psicólogo")
                    }
                    "especialidad" -> {
                        Log.d(TAG, "🏷️ Navegar a especialidades del psicólogo")
                    }
                    "notificaciones" -> {
                        Log.d(TAG, "🔔 Navegar a notificaciones")
                    }
                    "terminos" -> {
                        navController.navigate(Screens.documentoLegalDetail.createRoute("terminos"))
                    }
                    "privacidad" -> {
                        navController.navigate(Screens.documentoLegalDetail.createRoute("privacidad"))
                    }
                }
            }
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Row(
            modifier = Modifier.weight(1f),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                option.icon,
                contentDescription = null,
                tint = primaryColor,
                modifier = Modifier.size(22.dp)
            )
            Spacer(modifier = Modifier.width(16.dp))

            Column {
                Text(
                    text = option.title,
                    fontFamily = roboto,
                    fontWeight = FontWeight.Medium,
                    fontSize = 15.sp,
                    color = textColor
                )

                val displaySubtitle = when (option.id) {
                    "language" -> if (currentLanguage == "es") stringResource(R.string.espanol) else stringResource(R.string.ingles)
                    "tema" -> getCurrentThemeSubtitle(currentTema)
                    else -> option.subtitle
                }

                Text(
                    text = displaySubtitle,
                    fontFamily = roboto,
                    fontSize = 13.sp,
                    color = textSecondaryColor
                )
            }
        }

        when (option.id) {
            "language" -> {
                Box {
                    Icon(Icons.Default.ArrowDropDown, contentDescription = null, tint = primaryColor)
                    DropdownMenu(
                        expanded = expandedLanguage,
                        onDismissRequest = { expandedLanguage = false },
                        containerColor = dropdownContainerColor
                    ) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.espanol), color = textColor) },
                            onClick = {
                                Log.d(TAG, "🇪🇸 Psicólogo seleccionó ESPAÑOL")
                                scope.launch {
                                    idiomaViewModel.cambiarIdioma("es")
                                }
                                expandedLanguage = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.ingles), color = textColor) },
                            onClick = {
                                Log.d(TAG, "🇬🇧 Psicólogo seleccionó INGLÉS")
                                scope.launch {
                                    idiomaViewModel.cambiarIdioma("en")
                                }
                                expandedLanguage = false
                            }
                        )
                    }
                }
            }
            "tema" -> {
                Box {
                    Icon(Icons.Default.ArrowDropDown, contentDescription = null, tint = primaryColor)
                    DropdownMenu(
                        expanded = expandedTheme,
                        onDismissRequest = { expandedTheme = false },
                        containerColor = dropdownContainerColor
                    ) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.auto_claro), color = textColor) },
                            onClick = {
                                Log.d(TAG, "🎨 Psicólogo seleccionó TEMA CLARO")
                                scope.launch {
                                    idiomaViewModel.cambiarTema(false)
                                }
                                expandedTheme = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.auto_oscuro), color = textColor) },
                            onClick = {
                                Log.d(TAG, "🎨 Psicólogo seleccionó TEMA OSCURO")
                                scope.launch {
                                    idiomaViewModel.cambiarTema(true)
                                }
                                expandedTheme = false
                            }
                        )
                    }
                }
            }
            else -> {
                Icon(
                    Icons.Default.ChevronRight,
                    contentDescription = stringResource(R.string.auto_ir),
                    tint = textSecondaryColor,
                    modifier = Modifier.size(20.dp)
                )
            }
        }
    }
}

@Composable
fun DialogHorarioSemanalPsychologist(
    horarioActual: List<FranjaHorarioDTO>?,
    onDismiss: () -> Unit,
    roboto: FontFamily,
    isDark: Boolean
) {
    // Mapeo correcto de días (1=Lunes, 7=Domingo)
    val dayNames = mapOf(
        1 to "Lunes",
        2 to "Martes",
        3 to "Miércoles",
        4 to "Jueves",
        5 to "Viernes",
        6 to "Sábado",
        7 to "Domingo"
    )

    // Filtrar y ordenar correctamente los días
    val diasOrdenados = remember(horarioActual) {
        horarioActual
            ?.filter { it.diaSemana in 1..7 }
            ?.sortedBy { it.diaSemana }
            ?: emptyList()
    }

    Dialog(
        onDismissRequest = onDismiss
    ) {
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .heightIn(max = 550.dp),
            shape = RoundedCornerShape(20.dp),
            colors = CardDefaults.cardColors(
                containerColor = if (isDark) Color(0xFF1E1E1E) else Color.White
            ),
            elevation = CardDefaults.cardElevation(defaultElevation = 8.dp)
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(20.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column {
                        Text(
                            text = stringResource(R.string.auto__horario_semanal),
                            fontSize = 20.sp,
                            fontWeight = FontWeight.Bold,
                            color = if (isDark) Color.White else Color(0xFF6B4E71),
                            fontFamily = roboto
                        )
                        Text(
                            text = stringResource(R.string.auto_dias_y_horas_de),
                            fontSize = 13.sp,
                            color = if (isDark) Color.LightGray else Color.Gray,
                            fontFamily = roboto,
                            modifier = Modifier.padding(top = 4.dp)
                        )
                    }

                    IconButton(
                        onClick = onDismiss,
                        modifier = Modifier.size(36.dp)
                    ) {
                        Icon(
                            Icons.Default.Close,
                            contentDescription = stringResource(R.string.auto_cerrar),
                            tint = if (isDark) Color.White else Color.Gray
                        )
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))
                HorizontalDivider()
                Spacer(modifier = Modifier.height(16.dp))

                if (diasOrdenados.isEmpty()) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(32.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            Text(text = "⏰", fontSize = 48.sp)
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = stringResource(R.string.auto_no_hay_configuracion_de),
                                textAlign = TextAlign.Center,
                                color = if (isDark) Color.LightGray else Color.Gray,
                                fontFamily = roboto
                            )
                        }
                    }
                } else {
                    LazyColumn(
                        modifier = Modifier.weight(1f),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        items(diasOrdenados) { franja ->
                            val dayName = dayNames[franja.diaSemana.toInt()] ?: "Día ${franja.diaSemana}"

                            Card(
                                modifier = Modifier.fillMaxWidth(),
                                shape = RoundedCornerShape(12.dp),
                                colors = CardDefaults.cardColors(
                                    containerColor = if (franja.activo)
                                        (if (isDark) Color(0xFF6B4E71).copy(alpha = 0.2f) else Color(0xFF6B4E71).copy(alpha = 0.1f))
                                    else
                                        (if (isDark) Color(0xFF444444) else Color(0xFFF5F5F5))
                                )
                            ) {
                                Row(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .padding(16.dp),
                                    horizontalArrangement = Arrangement.SpaceBetween,
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Column(modifier = Modifier.weight(1f)) {
                                        Text(
                                            text = dayName,
                                            fontWeight = FontWeight.Bold,
                                            fontSize = 16.sp,
                                            fontFamily = roboto,
                                            color = if (franja.activo)
                                                (if (isDark) Color.White else Color(0xFF6B4E71))
                                            else
                                                (if (isDark) Color.Gray else Color(0xFF999999))
                                        )

                                        if (franja.activo && franja.horaInicio.isNotBlank() && franja.horaFin.isNotBlank()) {
                                            Text(
                                                text = "🕐 ${franja.horaInicio} - ${franja.horaFin}",
                                                fontSize = 14.sp,
                                                color = if (isDark) Color.LightGray else Color(0xFF666666),
                                                fontFamily = roboto,
                                                modifier = Modifier.padding(top = 4.dp)
                                            )
                                        } else if (!franja.activo) {
                                            Text(
                                                text = stringResource(R.string.auto__no_disponible),
                                                fontSize = 13.sp,
                                                color = if (isDark) Color(0xFFEF9A9A) else Color(0xFFE53935),
                                                fontFamily = roboto,
                                                modifier = Modifier.padding(top = 4.dp)
                                            )
                                        }
                                    }

                                    Surface(
                                        shape = RoundedCornerShape(20.dp),
                                        color = if (franja.activo)
                                            Color(0xFF4CAF50).copy(alpha = 0.15f)
                                        else
                                            Color(0xFFF44336).copy(alpha = 0.15f),
                                        modifier = Modifier.padding(start = 8.dp)
                                    ) {
                                        Text(
                                            text = if (franja.activo) "Activo" else "Inactivo",
                                            fontSize = 11.sp,
                                            modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                                            color = if (franja.activo) Color(0xFF4CAF50) else Color(0xFFF44336),
                                            fontFamily = roboto,
                                            fontWeight = FontWeight.Medium
                                        )
                                    }
                                }
                            }
                        }
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))
                HorizontalDivider()
                Spacer(modifier = Modifier.height(12.dp))

                Button(
                    onClick = onDismiss,
                    modifier = Modifier.fillMaxWidth(),
                    shape = RoundedCornerShape(12.dp),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = if (isDark) Color(0xFF6B4E71) else Color(0xFF6B4E71)
                    )
                ) {
                    Text(stringResource(R.string.auto_cerrar), color = Color.White, fontFamily = roboto, fontWeight = FontWeight.Medium)
                }
            }
        }
    }
}