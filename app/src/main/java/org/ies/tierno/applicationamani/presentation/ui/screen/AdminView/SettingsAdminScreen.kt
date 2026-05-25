package org.ies.tierno.applicationamani.presentation.ui.screen.settings

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ContactSupport
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
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import android.app.Activity
import android.util.Log
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO
import java.time.ZoneId
import java.time.ZonedDateTime

private const val TAG = "SettingsLanguage"

// Función auxiliar para obtener el subtítulo del tema actual
private fun getCurrentThemeSubtitle(currentTheme: Boolean): String {
    return when (currentTheme) {
        false -> "Claro"
        true -> "Oscuro"
    }
}

data class SettingsOption(
    val id: String,
    val title: String,
    val subtitle: String,
    val icon: ImageVector
)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsAdminScreen(
    navController: NavController,
    userSessionDataStore: UserSessionDataStore,
    idiomaViewModel: IdiomaViewModel
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    // Obtener el idioma actual del ViewModel
    val currentLanguage by idiomaViewModel.idioma.collectAsStateWithLifecycle()

    // Obtener el tema actual del ViewModel
    val currentTema by idiomaViewModel.tema.collectAsStateWithLifecycle()

    // Obtener el horario actual del ViewModel
    val horarioReal by idiomaViewModel.horarioActual.collectAsStateWithLifecycle()

    val madridZone = ZoneId.of("Europe/Madrid")
    val offset = ZonedDateTime.now(madridZone).offset.id
    val zoneText = "Madrid ($offset)"

    // También necesitamos la sesión completa para otros datos
    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

    // Obtener estado del tema para la UI
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Colores de la UI según el tema
    val backgroundColor = if (isDark) screenColors.background else Color(0xFFFDF8F9)
    val surfaceColor = if (isDark) cardColors.cardBackground else Color(0xFFFFFFFF)
    val onSurfaceColor = if (isDark) cardColors.cardContent else Color(0xFF2D1B30)
    val onSurfaceVariant = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else Color(0xFF7A6B7E)
    val primaryColor = if (isDark) Color.White else Color(0xFF6B4E71)

    // LOG: Ver idioma y tema actual
    Log.d(TAG, "🔍 [Recomposición] Idioma actual: $currentLanguage")
    Log.d(TAG, "🎨 [Recomposición] Tema actual (boolean): $currentTema")

    // Control de recreación para evitar loops (SOLO para idioma)
    var previousLanguage by remember { mutableStateOf(currentLanguage) }
    var isRecreating by remember { mutableStateOf(false) }

    // Detectar cambio de idioma y recrear la Activity (UNA VEZ)
    LaunchedEffect(currentLanguage) {
        Log.d(TAG, "🚀 [LaunchedEffect] currentLanguage=$currentLanguage, previousLanguage=$previousLanguage")

        if (!isRecreating && previousLanguage != currentLanguage) {
            Log.w(TAG, "⚠️ [Cambio detectado] De '$previousLanguage' a '$currentLanguage' - Recreando Activity")

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
    ) { padding ->

        // Diálogo de horario
        if (mostrarConfigHorario) {
            if (cargandoHorario) {
                // Mostrar loading mientras se carga
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
                            Text("Cargando horario...", fontFamily = roboto)
                        }
                    }
                }
            } else {
                DialogHorarioSemanal(
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
            // ==================== SECCIÓN GENERAL ====================
            item {
                SettingsCategoryCard(
                    title = stringResource(R.string.general),
                    icon = Icons.Outlined.Settings,
                    iconColor = primaryColor,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    onSurfaceColor = onSurfaceColor,
                    onSurfaceVariant = onSurfaceVariant,
                    primaryColor = primaryColor,
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
                            id = "perfil",
                            title = stringResource(R.string.perfil),
                            subtitle = stringResource(R.string.cambia_tu_perfil),
                            icon = Icons.Default.Person
                        ),
                        SettingsOption(
                            id = "clinic_name",
                            title = stringResource(R.string.nombre_clinica),
                            subtitle = stringResource(R.string.clinica_amani),
                            icon = Icons.Default.Business
                        ),
                        SettingsOption(
                            id = "crear_terapia",
                            title = stringResource(R.string.crear_terapia),
                            subtitle = stringResource(R.string.gestionar_terapias),
                            icon = Icons.Default.FitnessCenter
                        ),
                        SettingsOption(
                            id = "crear_situacion",
                            title = stringResource(R.string.crear_situacion),
                            subtitle = stringResource(R.string.gestionar_situaciones),
                            icon = Icons.AutoMirrored.Filled.List
                        ),
                        SettingsOption(
                            id = "politica_privacidad",
                            title = stringResource(R.string.crear_politica_privacidad),
                            subtitle = stringResource(R.string.gestionar_situaciones),
                            icon = Icons.AutoMirrored.Filled.List
                        ),
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
                            id = "timezone",
                            title = stringResource(R.string.zona_horaria),
                            subtitle = zoneText,
                            icon = Icons.Default.AccessTime
                        ),
                        SettingsOption(
                            id = "currency",
                            title = stringResource(R.string.moneda),
                            subtitle = stringResource(R.string.euro),
                            icon = Icons.Default.AttachMoney
                        ),
                        SettingsOption(
                            id = "theme_color",
                            title = stringResource(R.string.color_sistema),
                            subtitle = stringResource(R.string.morado),
                            icon = Icons.Default.ColorLens
                        ),
                        SettingsOption(
                            id = "dark_mode",
                            title = stringResource(R.string.tema_oscuro_claro),
                            subtitle = getCurrentThemeSubtitle(currentTema),
                            icon = Icons.Default.BrightnessMedium
                        )
                    )
                )
            }

            // ==================== SECCIÓN CITAS ====================
            item {
                SettingsCategoryCard(
                    title = stringResource(R.string.citas),
                    icon = Icons.Outlined.CalendarMonth,
                    iconColor = Color(0xFFE67E22),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    onSurfaceColor = onSurfaceColor,
                    onSurfaceVariant = onSurfaceVariant,
                    primaryColor = primaryColor,
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
                            id = "appointment_duration",
                            title = stringResource(R.string.duracion_cita),
                            subtitle = stringResource(R.string.minutos_45),
                            icon = Icons.Default.Timer,
                        ),
                        SettingsOption(
                            id = "available_days",
                            title = stringResource(R.string.dias_disponibles),
                            subtitle = stringResource(R.string.lunes_viernes),
                            icon = Icons.Default.CalendarToday
                        ),
                        SettingsOption(
                            id = "appointment_interval",
                            title = stringResource(R.string.tiempo_entre_citas),
                            subtitle = stringResource(R.string.minutos_10),
                            icon = Icons.Default.Timelapse
                        )
                    )
                )
            }

            // ==================== SECCIÓN NOTIFICACIONES ====================
            item {
                SettingsCategoryCard(
                    title = stringResource(R.string.notificaciones),
                    icon = Icons.Outlined.Notifications,
                    iconColor = Color(0xFF27AE60),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    onSurfaceColor = onSurfaceColor,
                    onSurfaceVariant = onSurfaceVariant,
                    primaryColor = primaryColor,
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
                            id = "send_reminder",
                            title = stringResource(R.string.enviar_recordatorio),
                            subtitle = stringResource(R.string.activado),
                            icon = Icons.Default.NotificationsActive
                        ),
                        SettingsOption(
                            id = "reminder_time",
                            title = stringResource(R.string.tiempo_antes_cita),
                            subtitle = stringResource(R.string.minutos_60),
                            icon = Icons.Default.Alarm
                        ),
                        SettingsOption(
                            id = "email_notification",
                            title = stringResource(R.string.notificacion_email),
                            subtitle = stringResource(R.string.activado),
                            icon = Icons.Default.Email
                        ),
                        SettingsOption(
                            id = "sms_notification",
                            title = stringResource(R.string.notificacion_sms),
                            subtitle = stringResource(R.string.desactivado),
                            icon = Icons.Default.Sms
                        )
                    )
                )
            }

            // ==================== SECCIÓN ROLES Y PERMISOS ====================
            item {
                SettingsCategoryCard(
                    title = stringResource(R.string.roles_permisos),
                    icon = Icons.Outlined.People,
                    iconColor = Color(0xFF3498DB),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    onSurfaceColor = onSurfaceColor,
                    onSurfaceVariant = onSurfaceVariant,
                    primaryColor = primaryColor,
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
                            id = "roles",
                            title = stringResource(R.string.roles),
                            subtitle = stringResource(R.string.admin_psicologo_recepcionista),
                            icon = Icons.Default.AdminPanelSettings
                        )
                    )
                )
            }

            // ==================== SECCIÓN SISTEMA ====================
            item {
                SettingsCategoryCard(
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
                    onSurfaceColor = onSurfaceColor,
                    onSurfaceVariant = onSurfaceVariant,
                    primaryColor = primaryColor,
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
                            id = "backup",
                            title = stringResource(R.string.backup),
                            subtitle = stringResource(R.string.ultima_copia),
                            icon = Icons.Default.Backup
                        ),
                        SettingsOption(
                            id = "version",
                            title = stringResource(R.string.version),
                            subtitle = stringResource(R.string.version_100),
                            icon = Icons.Default.Info
                        ),
                        // ✅ NUEVAS OPCIONES DE AYUDA Y SOPORTE
                        SettingsOption(
                            id = "ayuda",
                            title = stringResource(R.string.ayuda),
                            subtitle = stringResource(R.string.preguntas_frecuentes),
                            icon = Icons.Default.Help
                        ),
                        SettingsOption(
                            id = "contacto",
                            title = stringResource(R.string.contacto),
                            subtitle = stringResource(R.string.contactar_soporte),
                            icon = Icons.AutoMirrored.Filled.ContactSupport
                        ),
                        SettingsOption(
                            id = "reportar_problema",
                            title = stringResource(R.string.reportar_problema),
                            subtitle = stringResource(R.string.enviar_reporte),
                            icon = Icons.Default.ReportProblem
                        )
                    )
                )
            }
        }
    }
}

@Composable
fun SettingsCategoryCard(
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
    onSurfaceColor: Color,
    onSurfaceVariant: Color,
    primaryColor: Color,
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
                    color = onSurfaceColor
                )
            }

            options.forEachIndexed { index, option ->
                if (index > 0) {
                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                        thickness = DividerDefaults.Thickness,
                        color = onSurfaceColor.copy(alpha = 0.12f)
                    )
                }

                SettingsOptionRow(
                    option = option,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    onSurfaceColor = onSurfaceColor,
                    onSurfaceVariant = onSurfaceVariant,
                    primaryColor = primaryColor,
                    onOpenHorario = onOpenHorario
                )
            }
        }
    }
}

@Composable
fun SettingsOptionRow(
    option: SettingsOption,
    roboto: FontFamily,
    navController: NavController,
    session: UserSession?,
    currentLanguage: String,
    currentTema: Boolean,
    idiomaViewModel: IdiomaViewModel,
    onSurfaceColor: Color,
    onSurfaceVariant: Color,
    primaryColor: Color,
    onOpenHorario: () -> Unit = {}
) {
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
                    "dark_mode" -> expandedTheme = true
                    "available_days" -> onOpenHorario()
                    "perfil" -> {
                        val identificador = session?.idUsuario
                        if (identificador != null && identificador > 0L) {
                            navController.navigate(
                                Screens.profileAdmin.createRoute(identificador)
                            )
                        }
                    }
                    "crear_terapia" -> navController.navigate(Screens.terapias.route)
                    "crear_situacion" -> navController.navigate(Screens.crearSituaciones.route)
                    "politica_privacidad" -> navController.navigate(Screens.politicaPrivacidad.route)
                    "roles" -> navController.navigate(Screens.cambiarRol.route)
                    "terminos" -> navController.navigate(Screens.documentoLegalDetail.createRoute("terminos"))
                    "privacidad" -> navController.navigate(Screens.documentoLegalDetail.createRoute("privacidad"))
                    // ✅ NUEVAS NAVEGACIONES PARA AYUDA Y SOPORTE
                    "ayuda" -> {
                       // navController.navigate(Screens.ayuda.route)
                    }
                    "contacto" -> {
                        //navController.navigate(Screens.contacto.route)
                    }
                    "reportar_problema" -> {
                        navController.navigate(Screens.reportarProblema.route)
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
                    color = onSurfaceColor
                )

                val displaySubtitle = when (option.id) {
                    "language" -> if (currentLanguage == "es") stringResource(R.string.espanol) else stringResource(R.string.ingles)
                    "dark_mode" -> getCurrentThemeSubtitle(currentTema)
                    else -> option.subtitle
                }

                Text(
                    text = displaySubtitle,
                    fontFamily = roboto,
                    fontSize = 13.sp,
                    color = onSurfaceVariant
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
                            text = { Text(stringResource(R.string.espanol), color = onSurfaceColor) },
                            onClick = {
                                scope.launch { idiomaViewModel.cambiarIdioma("es") }
                                expandedLanguage = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.ingles), color = onSurfaceColor) },
                            onClick = {
                                scope.launch { idiomaViewModel.cambiarIdioma("en") }
                                expandedLanguage = false
                            }
                        )
                    }
                }
            }
            "dark_mode" -> {
                Box {
                    Icon(Icons.Default.ArrowDropDown, contentDescription = null, tint = primaryColor)
                    DropdownMenu(
                        expanded = expandedTheme,
                        onDismissRequest = { expandedTheme = false },
                        containerColor = dropdownContainerColor
                    ) {
                        DropdownMenuItem(
                            text = { Text("Claro", color = onSurfaceColor) },
                            onClick = {
                                scope.launch { idiomaViewModel.cambiarTema(false) }
                                expandedTheme = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("Oscuro", color = onSurfaceColor) },
                            onClick = {
                                scope.launch { idiomaViewModel.cambiarTema(true) }
                                expandedTheme = false
                            }
                        )
                    }
                }
            }
            else -> {
                Icon(
                    Icons.Default.ChevronRight,
                    contentDescription = "Ir",
                    tint = onSurfaceVariant,
                    modifier = Modifier.size(20.dp)
                )
            }
        }
    }
}

@Composable
fun DialogHorarioSemanal(
    horarioActual: List<FranjaHorarioDTO>?,
    onDismiss: () -> Unit,
    roboto: FontFamily,
    isDark: Boolean
) {
    val dayNames = mapOf(
        1 to "Lunes",
        2 to "Martes",
        3 to "Miércoles",
        4 to "Jueves",
        5 to "Viernes",
        6 to "Sábado",
        7 to "Domingo"
    )

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
                            text = "📅 Horario Semanal",
                            fontSize = 20.sp,
                            fontWeight = FontWeight.Bold,
                            color = if (isDark) Color.White else Color(0xFF6B4E71),
                            fontFamily = roboto
                        )
                        Text(
                            text = "Días y horas de atención disponibles",
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
                            contentDescription = "Cerrar",
                            tint = if (isDark) Color.White else Color.Gray
                        )
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))
                HorizontalDivider()
                Spacer(modifier = Modifier.height(16.dp))

                if (horarioActual.isNullOrEmpty()) {
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
                                text = "No hay configuración de horario cargada",
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
                        items(horarioActual.sortedBy { it.diaSemana }) { franja ->
                            val dayName = dayNames[franja.diaSemana.toInt()] ?: ""

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
                                                text = "❌ No disponible",
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
                    Text("Cerrar", color = Color.White, fontFamily = roboto, fontWeight = FontWeight.Medium)
                }
            }
        }
    }
}