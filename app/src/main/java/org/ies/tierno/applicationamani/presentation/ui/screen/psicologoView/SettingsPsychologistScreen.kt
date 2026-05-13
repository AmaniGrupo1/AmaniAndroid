package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

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
import androidx.compose.material.icons.filled.Alarm
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material.icons.filled.BrightnessMedium
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Language
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material.icons.filled.Notifications
import androidx.compose.material.icons.filled.PersonOutline
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Timelapse
import androidx.compose.material.icons.filled.Timer
import androidx.compose.material.icons.filled.Work
import androidx.compose.material.icons.outlined.CalendarMonth
import androidx.compose.material.icons.outlined.Person
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
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.enumm.TemaApp
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel

private const val TAG = "SettingsPsychologist"

// ✅ Definir SettingsOption localmente
data class SettingsOption(
    val id: String,
    val title: String,
    val subtitle: String,
    val icon: ImageVector
)

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

    // Obtener estado del tema para la UI
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Colores dinámicos para la UI
    val backgroundColor = if (isDark) screenColors.background else MaterialTheme.colorScheme.background
    val surfaceColor = if (isDark) cardColors.cardBackground else MaterialTheme.colorScheme.surface
    val textColor = if (isDark) cardColors.cardContent else MaterialTheme.colorScheme.onSurface
    val textSecondaryColor = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else MaterialTheme.colorScheme.onSurfaceVariant
    val primaryColor = MaterialTheme.colorScheme.primary

    // Obtener el idioma actual del ViewModel
    val currentLanguage by idiomaViewModel.idioma.collectAsStateWithLifecycle()

    // Obtener el tema actual del ViewModel
    val currentTema by idiomaViewModel.tema.collectAsStateWithLifecycle()

    // También necesitamos la sesión completa para otros datos
    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

    Log.d(TAG, "🔍 [Recomposición] Idioma actual: $currentLanguage")
    Log.d(TAG, "🎨 [Recomposición] Tema actual: $currentTema")

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
            // ==================== PERFIL (Solo para psicólogo) ====================
            item {
                SettingsCategoryCardPsychologist(
                    title = stringResource(R.string.perfil),
                    icon = Icons.Outlined.Person,
                    iconColor = primaryColor,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    textColor = textColor,
                    textSecondaryColor = textSecondaryColor,
                    primaryColor = primaryColor,
                    options = listOf(
                        SettingsOption(
                            id = "mi_perfil",
                            title = stringResource(R.string.perfil),
                            subtitle = stringResource(R.string.editar_datos_personales),
                            icon = Icons.Default.PersonOutline
                        ),
                        SettingsOption(
                            id = "horario",
                            title = stringResource(R.string.horario_laboral),
                            subtitle = stringResource(R.string.configurar_horario_atencion),
                            icon = Icons.Default.Schedule
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
                    primaryColor = primaryColor,
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
                    primaryColor = primaryColor,
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
                    primaryColor = primaryColor,
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

// Función auxiliar para obtener el subtítulo del tema actual
private fun getCurrentThemeSubtitle(currentTheme: TemaApp): String {
    return when (currentTheme) {
        TemaApp.LIGHT -> "Claro"
        TemaApp.DARK -> "Oscuro"
        TemaApp.SYSTEM -> "Sistema"
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
    currentTema: TemaApp,
    idiomaViewModel: IdiomaViewModel,
    surfaceColor: Color,
    textColor: Color,
    textSecondaryColor: Color,
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
                    color = textColor
                )
            }

            options.forEachIndexed { index, option ->
                if (index > 0) {
                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                        thickness = DividerDefaults.Thickness,
                        color = textColor.copy(alpha = 0.12f)
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
                    primaryColor = primaryColor
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
    currentTema: TemaApp,
    idiomaViewModel: IdiomaViewModel,
    textColor: Color,
    textSecondaryColor: Color,
    primaryColor: Color
) {
    val scope = rememberCoroutineScope()
    var expandedLanguage by remember { mutableStateOf(false) }
    var expandedTheme by remember { mutableStateOf(false) }

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable {
                when (option.id) {
                    "language" -> expandedLanguage = true
                    "tema" -> expandedTheme = true
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
                        Log.d(TAG, "📄 Navegar a términos y condiciones")
                    }
                    "privacidad" -> {
                        Log.d(TAG, "🔒 Navegar a política de privacidad")
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
                        containerColor = if (isDarkTheme()) Color.DarkGray else Color.White
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
                        containerColor = if (isDarkTheme()) Color.DarkGray else Color.White
                    ) {
                        DropdownMenuItem(
                            text = { Text("Sistema", color = textColor) },
                            onClick = {
                                Log.d(TAG, "🎨 Psicólogo seleccionó TEMA SISTEMA")
                                scope.launch {
                                    idiomaViewModel.cambiarTema(TemaApp.SYSTEM)
                                }
                                expandedTheme = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("Claro", color = textColor) },
                            onClick = {
                                Log.d(TAG, "🎨 Psicólogo seleccionó TEMA CLARO")
                                scope.launch {
                                    idiomaViewModel.cambiarTema(TemaApp.LIGHT)
                                }
                                expandedTheme = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("Oscuro", color = textColor) },
                            onClick = {
                                Log.d(TAG, "🎨 Psicólogo seleccionó TEMA OSCURO")
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
                    tint = textSecondaryColor,
                    modifier = Modifier.size(20.dp)
                )
            }
        }
    }
}