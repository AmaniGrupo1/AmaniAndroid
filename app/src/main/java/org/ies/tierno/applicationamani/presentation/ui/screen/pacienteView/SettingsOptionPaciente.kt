package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

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
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Alarm
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material.icons.filled.BrightnessMedium
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.ContactSupport
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.Help
import androidx.compose.material.icons.filled.History
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Language
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material.icons.filled.Logout
import androidx.compose.material.icons.filled.Notifications
import androidx.compose.material.icons.filled.NotificationsActive
import androidx.compose.material.icons.filled.Payment
import androidx.compose.material.icons.filled.PersonOutline
import androidx.compose.material.icons.filled.Psychology
import androidx.compose.material.icons.filled.Receipt
import androidx.compose.material.icons.filled.ReportProblem
import androidx.compose.material.icons.outlined.CalendarMonth
import androidx.compose.material.icons.outlined.Person
import androidx.compose.material.icons.outlined.Receipt
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.material.icons.outlined.Storage
import androidx.compose.material.icons.outlined.SupportAgent
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.DividerDefaults
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Scaffold
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
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.models.enumm.TemaApp
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel

private const val TAG = "SettingsPaciente"

// Colores originales para el modo DEFECTO
object SettingsPacienteDefaultColors {
    val Primary = Color(0xFF6B4E71)
    val PrimaryLight = Color(0xFF9B7E9F)
    val Background = Color(0xFFFDF8F9)
    val Surface = Color(0xFFFFFFFF)
    val TextPrimary = Color(0xFF2D1B30)
    val TextSecondary = Color(0xFF7A6B7E)
    val IconColor = Color(0xFF6B4E71)
    val CategoriaPerfil = Color(0xFF6B4E71)
    val CategoriaPreferencias = Color(0xFFE67E22)
    val CategoriaCitas = Color(0xFF27AE60)
    val CategoriaFacturacion = Color(0xFF3498DB)
    val CategoriaSoporte = Color(0xFFE74C3C)
    val CategoriaSistema = Color(0xFF9B59B6)
}

// Definir SettingsOption localmente para paciente
data class SettingsOptionPaciente(
    val id: String,
    val title: String,
    val subtitle: String,
    val icon: ImageVector
)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsPacienteScreen(
    navController: NavController,
    userSessionDataStore: UserSessionDataStore,
    idiomaViewModel: IdiomaViewModel
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Obtener el tema actual del ViewModel
    val currentTema by idiomaViewModel.tema.collectAsStateWithLifecycle()

    // Determinar colores según el tema
    val backgroundColor = if (isDark) screenColors.background else SettingsPacienteDefaultColors.Background
    val surfaceColor = if (isDark) cardColors.cardBackground else SettingsPacienteDefaultColors.Surface
    val textColor = if (isDark) cardColors.cardContent else SettingsPacienteDefaultColors.TextPrimary
    val textSecondaryColor = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else SettingsPacienteDefaultColors.TextSecondary
    val primaryColor = if (isDark) Color.White else SettingsPacienteDefaultColors.Primary
    val iconColor = if (isDark) Color.White else SettingsPacienteDefaultColors.IconColor

    // Obtener el idioma actual del ViewModel
    val currentLanguage by idiomaViewModel.idioma.collectAsStateWithLifecycle()

    // También necesitamos la sesión completa para otros datos
    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

    Log.d(TAG, "🔍 [Recomposición] Idioma actual: $currentLanguage")

    // Control de recreación para evitar loops
    var previousLanguage by remember { mutableStateOf(currentLanguage) }
    var isRecreating by remember { mutableStateOf(false) }

    // Detectar cambio de idioma y recrear la Activity (UNA VEZ)
    LaunchedEffect(currentLanguage) {
        if (previousLanguage != null && previousLanguage != currentLanguage && !isRecreating) {
            Log.w(TAG, "⚠️ [Cambio detectado] De '$previousLanguage' a '$currentLanguage'")
            isRecreating = true
            delay(150)
            (context as? Activity)?.recreate()
        }
        previousLanguage = currentLanguage
    }

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.configuracion),
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
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .background(backgroundColor),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // ==================== PERFIL (Paciente) ====================
            item {
                SettingsCategoryCardPaciente(
                    title = stringResource(R.string.perfil),
                    icon = Icons.Outlined.Person,
                    iconColor = SettingsPacienteDefaultColors.CategoriaPerfil,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    textColor = textColor,
                    textSecondaryColor = textSecondaryColor,
                    iconColorGeneral = iconColor,
                    isDark = isDark,
                    options = listOf(
                        SettingsOptionPaciente(
                            id = "mi_perfil",
                            title = stringResource(R.string.perfil),
                            subtitle = stringResource(R.string.editar_datos_personales),
                            icon = Icons.Default.PersonOutline
                        ),
                        SettingsOptionPaciente(
                            id = "mi_psicologo",
                            title = stringResource(R.string.mi_psicologo),
                            subtitle = stringResource(R.string.ver_info_psicologo),
                            icon = Icons.Default.Psychology
                        ),
                        SettingsOptionPaciente(
                            id = "historial",
                            title = stringResource(R.string.historial_clinico),
                            subtitle = stringResource(R.string.ver_historial),
                            icon = Icons.Default.History
                        )
                    )
                )
            }

            // ==================== PREFERENCIAS ====================
            item {
                SettingsCategoryCardPaciente(
                    title = stringResource(R.string.preferencias),
                    icon = Icons.Outlined.Settings,
                    iconColor = SettingsPacienteDefaultColors.CategoriaPreferencias,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    textColor = textColor,
                    textSecondaryColor = textSecondaryColor,
                    iconColorGeneral = iconColor,
                    isDark = isDark,
                    options = listOf(
                        SettingsOptionPaciente(
                            id = "language",
                            title = stringResource(R.string.idioma),
                            subtitle = if (currentLanguage == "es")
                                stringResource(R.string.espanol)
                            else
                                stringResource(R.string.ingles),
                            icon = Icons.Default.Language
                        ),
                        SettingsOptionPaciente(
                            id = "notificaciones",
                            title = stringResource(R.string.notificaciones),
                            subtitle = stringResource(R.string.configurar_notificaciones),
                            icon = Icons.Default.Notifications
                        ),
                        SettingsOptionPaciente(
                            id = "recordatorios",
                            title = stringResource(R.string.recordatorios),
                            subtitle = stringResource(R.string.recordatorios_citas),
                            icon = Icons.Default.Alarm
                        ),
                        SettingsOptionPaciente(
                            id = "tema",
                            title = stringResource(R.string.tema),
                            subtitle = when (currentTema) {
                                TemaApp.LIGHT -> "Blanco"
                                TemaApp.DARK -> "Negro"
                                TemaApp.SYSTEM -> "Defecto"
                            },
                            icon = Icons.Default.BrightnessMedium
                        )
                    )
                )
            }

            // ==================== CITAS ====================
            item {
                SettingsCategoryCardPaciente(
                    title = stringResource(R.string.mis_citas),
                    icon = Icons.Outlined.CalendarMonth,
                    iconColor = SettingsPacienteDefaultColors.CategoriaCitas,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    textColor = textColor,
                    textSecondaryColor = textSecondaryColor,
                    iconColorGeneral = iconColor,
                    isDark = isDark,
                    options = listOf(
                        SettingsOptionPaciente(
                            id = "proximas_citas",
                            title = stringResource(R.string.proximas_citas),
                            subtitle = stringResource(R.string.ver_citas_proximas),
                            icon = Icons.Default.CalendarToday
                        ),
                        SettingsOptionPaciente(
                            id = "historial_citas",
                            title = stringResource(R.string.historial_citas),
                            subtitle = stringResource(R.string.citas_pasadas),
                            icon = Icons.Default.History
                        ),
                        SettingsOptionPaciente(
                            id = "recordatorios_citas",
                            title = stringResource(R.string.recordatorios_citas),
                            subtitle = stringResource(R.string.configurar_recordatorios),
                            icon = Icons.Default.NotificationsActive
                        )
                    )
                )
            }

            // ==================== FACTURACIÓN ====================
            item {
                SettingsCategoryCardPaciente(
                    title = stringResource(R.string.facturacion),
                    icon = Icons.Outlined.Receipt,
                    iconColor = SettingsPacienteDefaultColors.CategoriaFacturacion,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    textColor = textColor,
                    textSecondaryColor = textSecondaryColor,
                    iconColorGeneral = iconColor,
                    isDark = isDark,
                    options = listOf(
                        SettingsOptionPaciente(
                            id = "metodos_pago",
                            title = stringResource(R.string.metodos_pago),
                            subtitle = stringResource(R.string.gestionar_pagos),
                            icon = Icons.Default.Payment
                        ),
                        SettingsOptionPaciente(
                            id = "historial_pagos",
                            title = stringResource(R.string.historial_pagos),
                            subtitle = stringResource(R.string.ver_pagos_realizados),
                            icon = Icons.Default.Receipt
                        ),
                        SettingsOptionPaciente(
                            id = "facturas",
                            title = stringResource(R.string.facturas),
                            subtitle = stringResource(R.string.descargar_facturas),
                            icon = Icons.Default.Description
                        )
                    )
                )
            }

            // ==================== SOPORTE ====================
            item {
                SettingsCategoryCardPaciente(
                    title = stringResource(R.string.soporte),
                    icon = Icons.Outlined.SupportAgent,
                    iconColor = SettingsPacienteDefaultColors.CategoriaSoporte,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    textColor = textColor,
                    textSecondaryColor = textSecondaryColor,
                    iconColorGeneral = iconColor,
                    isDark = isDark,
                    options = listOf(
                        SettingsOptionPaciente(
                            id = "ayuda",
                            title = stringResource(R.string.ayuda),
                            subtitle = stringResource(R.string.preguntas_frecuentes),
                            icon = Icons.Default.Help
                        ),
                        SettingsOptionPaciente(
                            id = "contacto",
                            title = stringResource(R.string.contacto),
                            subtitle = stringResource(R.string.contactar_soporte),
                            icon = Icons.Default.ContactSupport
                        ),
                        SettingsOptionPaciente(
                            id = "reportar_problema",
                            title = stringResource(R.string.reportar_problema),
                            subtitle = stringResource(R.string.enviar_reporte),
                            icon = Icons.Default.ReportProblem
                        )
                    )
                )
            }

            // ==================== SISTEMA ====================
            item {
                SettingsCategoryCardPaciente(
                    title = stringResource(R.string.sistema),
                    icon = Icons.Outlined.Storage,
                    iconColor = SettingsPacienteDefaultColors.CategoriaSistema,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    surfaceColor = surfaceColor,
                    textColor = textColor,
                    textSecondaryColor = textSecondaryColor,
                    iconColorGeneral = iconColor,
                    isDark = isDark,
                    options = listOf(
                        SettingsOptionPaciente(
                            id = "version",
                            title = stringResource(R.string.version),
                            subtitle = stringResource(R.string.version_actual, "1.0.0"),
                            icon = Icons.Default.Info
                        ),
                        SettingsOptionPaciente(
                            id = "terminos",
                            title = stringResource(R.string.terminos_condiciones),
                            subtitle = stringResource(R.string.leer_terminos),
                            icon = Icons.Default.Description
                        ),
                        SettingsOptionPaciente(
                            id = "privacidad",
                            title = stringResource(R.string.politica_privacidad),
                            subtitle = stringResource(R.string.ver_politica),
                            icon = Icons.Default.Lock
                        ),
                        SettingsOptionPaciente(
                            id = "cerrar_sesion",
                            title = stringResource(R.string.cerrar_sesion),
                            subtitle = stringResource(R.string.salir_aplicacion),
                            icon = Icons.Default.Logout
                        )
                    )
                )
            }
        }
    }
}

@Composable
fun SettingsCategoryCardPaciente(
    title: String,
    icon: ImageVector,
    iconColor: Color,
    roboto: FontFamily,
    options: List<SettingsOptionPaciente>,
    navController: NavController,
    session: UserSession?,
    currentLanguage: String,
    currentTema: TemaApp,
    idiomaViewModel: IdiomaViewModel,
    surfaceColor: Color,
    textColor: Color,
    textSecondaryColor: Color,
    iconColorGeneral: Color,
    isDark: Boolean
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

                SettingsOptionRowPaciente(
                    option = option,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    textColor = textColor,
                    textSecondaryColor = textSecondaryColor,
                    iconColorGeneral = iconColorGeneral,
                    isDark = isDark
                )
            }
        }
    }
}

@Composable
fun SettingsOptionRowPaciente(
    option: SettingsOptionPaciente,
    roboto: FontFamily,
    navController: NavController,
    session: UserSession?,
    currentLanguage: String,
    currentTema: TemaApp,
    idiomaViewModel: IdiomaViewModel,
    textColor: Color,
    textSecondaryColor: Color,
    iconColorGeneral: Color,
    isDark: Boolean
) {
    val scope = rememberCoroutineScope()
    var expandedIdioma by remember { mutableStateOf(false) }
    var expandedTema by remember { mutableStateOf(false) }
    val context = LocalContext.current

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable {
                when (option.id) {
                    "language" -> expandedIdioma = true
                    "tema" -> expandedTema = true

                    "mi_perfil" -> {
                        val identificador = session?.idPaciente
                        if (identificador != null && identificador > 0L) {
                            navController.navigate(
                                Screens.perfilPaciente.createRoute(identificador)
                            )
                        }
                    }

                    "mi_psicologo" -> {
                        Log.d(TAG, "👨‍⚕️ Navegar a información del psicólogo")
                    }

                    "historial" -> {
                        val pacienteId = session?.idPaciente
                        Log.d(TAG, "📌 CLICK HISTORIAL CLÍNICO")

                        if (pacienteId != null && pacienteId > 0L) {
                            navController.navigate(
                                Screens.historialClinico.createRoute(pacienteId)
                            )
                        } else {
                            Log.e(TAG, "❌ ERROR: idPaciente es NULL o inválido")
                        }
                    }

                    "notificaciones" -> {
                        Log.d(TAG, "🔔 Navegar a notificaciones")
                    }

                    "recordatorios" -> {
                        Log.d(TAG, "⏰ Navegar a recordatorios")
                    }

                    "proximas_citas" -> {
                        Log.d(TAG, "📅 Navegar a próximas citas")
                    }

                    "historial_citas" -> {
                        Log.d(TAG, "📋 Navegar a historial de citas")
                    }

                    "metodos_pago" -> {
                        Log.d(TAG, "💳 Navegar a métodos de pago")
                    }

                    "historial_pagos" -> {
                        Log.d(TAG, "💰 Navegar a historial de pagos")
                    }

                    "ayuda" -> {
                        Log.d(TAG, "❓ Navegar a ayuda")
                    }

                    "contacto" -> {
                        Log.d(TAG, "📧 Navegar a contacto")
                    }

                    "terminos" -> {
                        Log.d(TAG, "📄 Navegar a términos y condiciones")
                    }

                    "privacidad" -> {
                        Log.d(TAG, "🔒 Navegar a política de privacidad")
                    }

                    "cerrar_sesion" -> {
                        Log.d(TAG, "🚪 Cerrar sesión")
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
                tint = iconColorGeneral,
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
                    "tema" -> when (currentTema) {
                        TemaApp.LIGHT -> "Blanco"
                        TemaApp.DARK -> "Negro"
                        TemaApp.SYSTEM -> "Defecto"
                    }
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
                    Icon(Icons.Default.ArrowDropDown, contentDescription = null, tint = iconColorGeneral)

                    DropdownMenu(
                        expanded = expandedIdioma,
                        onDismissRequest = { expandedIdioma = false },
                        containerColor = if (isDark) Color.DarkGray else Color.White
                    ) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.espanol), color = textColor) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel.cambiarIdioma("es")
                                }
                                expandedIdioma = false
                            }
                        )

                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.ingles), color = textColor) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel.cambiarIdioma("en")
                                }
                                expandedIdioma = false
                            }
                        )
                    }
                }
            }
            "tema" -> {
                Box {
                    Icon(Icons.Default.ArrowDropDown, contentDescription = null, tint = iconColorGeneral)

                    DropdownMenu(
                        expanded = expandedTema,
                        onDismissRequest = { expandedTema = false },
                        containerColor = if (isDark) Color.DarkGray else Color.White
                    ) {
                        DropdownMenuItem(
                            text = { Text("Defecto", color = textColor) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel.cambiarTema(TemaApp.SYSTEM)
                                }
                                expandedTema = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("Blanco", color = textColor) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel.cambiarTema(TemaApp.LIGHT)
                                }
                                expandedTema = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("Negro", color = textColor) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel.cambiarTema(TemaApp.DARK)
                                }
                                expandedTema = false
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