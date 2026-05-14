package org.ies.tierno.applicationamani.presentation.ui.screen.settings

import android.app.Activity
import android.util.Log
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
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.List
import androidx.compose.material.icons.filled.AccessTime
import androidx.compose.material.icons.filled.AdminPanelSettings
import androidx.compose.material.icons.filled.Alarm
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material.icons.filled.AttachMoney
import androidx.compose.material.icons.filled.Backup
import androidx.compose.material.icons.filled.BrightnessMedium
import androidx.compose.material.icons.filled.Business
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.ColorLens
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.FitnessCenter
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Language
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material.icons.filled.NotificationsActive
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Sms
import androidx.compose.material.icons.filled.Timelapse
import androidx.compose.material.icons.filled.Timer
import androidx.compose.material.icons.outlined.CalendarMonth
import androidx.compose.material.icons.outlined.Notifications
import androidx.compose.material.icons.outlined.People
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.material.icons.outlined.Storage
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.DividerDefaults
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
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
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.domain.models.enumm.TemaApp
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel

private const val TAG = "SettingsLanguage"

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

    // Obtener el tema actual del ViewModel (esto es clave para que la UI se actualice)
    val currentTema by idiomaViewModel.tema.collectAsStateWithLifecycle()

    // Tambien necesitamos la sesion completa para otros datos (idPsicologo, etc)
    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

    // Colores de la UI usando MaterialTheme (que ya refleja el tema actual)
    val primaryColor = MaterialTheme.colorScheme.primary
    val backgroundColor = MaterialTheme.colorScheme.background
    val surfaceColor = MaterialTheme.colorScheme.surface
    val onSurfaceColor = MaterialTheme.colorScheme.onSurface
    val onSurfaceVariant = MaterialTheme.colorScheme.onSurfaceVariant

    // LOG: Ver idioma y tema actual
    Log.d(TAG, "[Recomposicion] Idioma actual: $currentLanguage")
    Log.d(TAG, "[Recomposicion] Tema actual: $currentTema")

    // Control de recreacion para evitar loops (SOLO para idioma)
    var previousLanguage by remember { mutableStateOf(currentLanguage) }
    var isRecreating by remember { mutableStateOf(false) }

    // Detectar cambio de idioma y recrear la Activity (UNA VEZ)
    LaunchedEffect(currentLanguage) {
        Log.d(TAG, "[LaunchedEffect] currentLanguage=$currentLanguage, previousLanguage=$previousLanguage")

        // Solo recreamos si ya teniamos un idioma previo (no es la primera carga)
        // y este ha cambiado realmente.
        if (previousLanguage != null && previousLanguage != currentLanguage && !isRecreating) {
            Log.w(TAG, "[Cambio detectado] De '$previousLanguage' a '$currentLanguage' - Recreando Activity")

            isRecreating = true

            delay(150)
            (context as? Activity)?.recreate()
        }

        // Siempre actualizamos el idioma previo al final
        previousLanguage = currentLanguage
    }

    // Cuando cambia el tema, NO recreamos la Activity, el tema se aplica automaticamente
    // porque MaterialTheme ya esta observando los cambios

    Scaffold(
        containerColor = backgroundColor,
    ) { padding ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .background(backgroundColor),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
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
                            subtitle = stringResource(R.string.europa_madrid),
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
                    options = listOf(
                        SettingsOption(
                            id = "appointment_duration",
                            title = stringResource(R.string.duracion_cita),
                            subtitle = stringResource(R.string.minutos_45),
                            icon = Icons.Default.Timer,
                        ),
                        SettingsOption(
                            id = "working_hours",
                            title = stringResource(R.string.horario_laboral),
                            subtitle = stringResource(R.string.horario_08_18),
                            icon = Icons.Default.Schedule
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
                    options = listOf(
                        SettingsOption(
                            id = "roles",
                            title = stringResource(R.string.roles),
                            subtitle = stringResource(R.string.admin_psicologo_recepcionista),
                            icon = Icons.Default.AdminPanelSettings
                        ),
                        SettingsOption(
                            id = "permissions",
                            title = stringResource(R.string.permisos),
                            subtitle = stringResource(R.string.descripcion_permisos),
                            icon = Icons.Default.Lock
                        )
                    )
                )
            }

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
                        )
                    )
                )
            }
        }
    }
}

// Funcion auxiliar para obtener el subtitulo del tema actual
private fun getCurrentThemeSubtitle(currentTheme: TemaApp): String {
    return when (currentTheme) {
        TemaApp.LIGHT -> "Claro"
        TemaApp.DARK -> "Oscuro"
        TemaApp.SYSTEM -> "Sistema"
    }
}

data class SettingsOption(
    val id: String,
    val title: String,
    val subtitle: String,
    val icon: ImageVector
)

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
    currentTema: TemaApp,
    idiomaViewModel: IdiomaViewModel,
    surfaceColor: Color,
    onSurfaceColor: Color,
    onSurfaceVariant: Color,
    primaryColor: Color
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
                    primaryColor = primaryColor
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
    currentTema: TemaApp,
    idiomaViewModel: IdiomaViewModel,
    onSurfaceColor: Color,
    onSurfaceVariant: Color,
    primaryColor: Color
) {
    val scope = rememberCoroutineScope()
    var expandedLanguage by remember { mutableStateOf(false) }
    var expandedTheme by remember { mutableStateOf(false) }
    val context = LocalContext.current

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable {
                when (option.id) {
                    "language" -> expandedLanguage = true
                    "dark_mode" -> expandedTheme = true
                    "perfil" -> {
                        val identificador = session?.idUsuario
                        if (identificador != null && identificador > 0L) {
                            navController.navigate(
                                Screens.profileAdmin.createRoute(identificador)
                            )
                        }
                    }
                    "crear_terapia" -> {
                        navController.navigate(Screens.terapias.route)
                    }
                    "crear_situacion" -> {
                        navController.navigate(Screens.crearSituaciones.route)
                    }
                    "politica_privacidad" -> {
                        navController.navigate(Screens.politicaPrivacidad.route)
                    }
                    "roles" -> {
                        navController.navigate(Screens.cambiarRol.route)
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

                val displaySubtitle = when {
                    option.id == "language" -> {
                        if (currentLanguage == "es") stringResource(R.string.espanol)
                        else stringResource(R.string.ingles)
                    }
                    option.id == "dark_mode" -> {
                        getCurrentThemeSubtitle(currentTema)
                    }
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
                        containerColor = MaterialTheme.colorScheme.surface
                    ) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.espanol), color = onSurfaceColor) },
                            onClick = {
                                Log.d(TAG, "Usuario selecciono ESPANOL")
                                scope.launch {
                                    idiomaViewModel.cambiarIdioma("es")
                                }
                                expandedLanguage = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.ingles), color = onSurfaceColor) },
                            onClick = {
                                Log.d(TAG, "Usuario selecciono INGLES")
                                scope.launch {
                                    idiomaViewModel.cambiarIdioma("en")
                                }
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
                        containerColor = MaterialTheme.colorScheme.surface
                    ) {
                        DropdownMenuItem(
                            text = { Text("Sistema", color = onSurfaceColor) },
                            onClick = {
                                Log.d(TAG, "Usuario selecciono TEMA SISTEMA")
                                scope.launch {
                                    idiomaViewModel.cambiarTema(TemaApp.SYSTEM)
                                }
                                expandedTheme = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("Claro", color = onSurfaceColor) },
                            onClick = {
                                Log.d(TAG, "Usuario selecciono TEMA CLARO")
                                scope.launch {
                                    idiomaViewModel.cambiarTema(TemaApp.LIGHT)
                                }
                                expandedTheme = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("Oscuro", color = onSurfaceColor) },
                            onClick = {
                                Log.d(TAG, "Usuario selecciono TEMA OSCURO")
                                scope.launch {
                                    idiomaViewModel.cambiarTema(TemaApp.DARK)
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
                    contentDescription = "Ir",
                    tint = onSurfaceVariant,
                    modifier = Modifier.size(20.dp)
                )
            }
        }
    }
}
