package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.RoundedCornerShape
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
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel
import android.app.Activity
import android.content.Intent
import android.provider.CalendarContract
import android.util.Log
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

private const val TAG = "SettingsPaciente"

// Colores originales para el modo CLARO/DEFECTO
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

// Función auxiliar para obtener el subtítulo del tema actual
private fun getCurrentThemeSubtitle(currentTheme: Boolean): String {
    return if (currentTheme) "Oscuro" else "Claro"
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

    // Obtener el tema actual del ViewModel (Boolean: false=claro, true=oscuro)
    val currentTema by idiomaViewModel.tema.collectAsStateWithLifecycle()

    // Determinar colores según el tema
    val backgroundColor = if (isDark) screenColors.background else SettingsPacienteDefaultColors.Background
    val surfaceColor = if (isDark) cardColors.cardBackground else SettingsPacienteDefaultColors.Surface
    val textColor = if (isDark) Color.White else SettingsPacienteDefaultColors.TextPrimary
    val textSecondaryColor = if (isDark) Color.White.copy(alpha = 0.7f) else SettingsPacienteDefaultColors.TextSecondary
    val primaryColor = if (isDark) Color.White else SettingsPacienteDefaultColors.Primary
    val iconColor = if (isDark) Color.White else SettingsPacienteDefaultColors.IconColor
    val dividerColor = if (isDark) Color.White.copy(alpha = 0.12f) else textColor.copy(alpha = 0.12f)

    // Obtener el idioma actual del ViewModel
    val currentLanguage by idiomaViewModel.idioma.collectAsStateWithLifecycle()

    // También necesitamos la sesión completa para otros datos
    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

    // Estados para diálogos
    var mostrarDialogoFacturacion by remember { mutableStateOf(false) }
    var mensajeDialogo by remember { mutableStateOf("") }

    // Estado para la alerta de calendario
    var mostrarAlertaCalendario by remember { mutableStateOf(false) }

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
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = primaryColor
                )
            )
        }
    ) { padding ->

        // Diálogo para mensajes de facturación
        if (mostrarDialogoFacturacion) {
            Dialog(
                onDismissRequest = { mostrarDialogoFacturacion = false }
            ) {
                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(24.dp),
                    shape = RoundedCornerShape(16.dp),
                    colors = CardDefaults.cardColors(
                        containerColor = surfaceColor
                    )
                ) {
                    Column(
                        modifier = Modifier.padding(24.dp),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Icon(
                            Icons.Default.Info,
                            contentDescription = null,
                            tint = Color(0xFF3498DB),
                            modifier = Modifier.size(48.dp)
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                        Text(
                            text = "🚧 En desarrollo",
                            fontSize = 20.sp,
                            fontWeight = FontWeight.Bold,
                            color = textColor,
                            fontFamily = roboto
                        )
                        Spacer(modifier = Modifier.height(8.dp))
                        Text(
                            text = mensajeDialogo,
                            fontSize = 14.sp,
                            color = textSecondaryColor,
                            fontFamily = roboto,
                            textAlign = androidx.compose.ui.text.style.TextAlign.Center
                        )
                        Spacer(modifier = Modifier.height(24.dp))
                        Button(
                            onClick = { mostrarDialogoFacturacion = false },
                            shape = RoundedCornerShape(12.dp),
                            colors = ButtonDefaults.buttonColors(
                                containerColor = primaryColor
                            )
                        ) {
                            Text("Entendido", color = Color.White, fontFamily = roboto)
                        }
                    }
                }
            }
        }

        // Diálogo de alerta para el calendario
        if (mostrarAlertaCalendario) {
            Dialog(
                onDismissRequest = { mostrarAlertaCalendario = false }
            ) {
                Card(
                    modifier = Modifier
                        .width(250.dp)
                        .padding(24.dp),
                    shape = RoundedCornerShape(16.dp),
                    colors = CardDefaults.cardColors(
                        containerColor = surfaceColor
                    )
                ) {
                    Column(
                        modifier = Modifier.padding(32.dp),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        CircularProgressIndicator(
                            color = primaryColor,
                            modifier = Modifier.size(48.dp)
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                        Text(
                            text = "Abriendo calendario...",
                            fontSize = 16.sp,
                            fontWeight = FontWeight.Medium,
                            color = textColor,
                            fontFamily = roboto
                        )
                    }
                }
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
                    dividerColor = dividerColor,
                    iconColorGeneral = iconColor,
                    isDark = isDark,
                    onMostrarDialogo = { mensaje ->
                        mensajeDialogo = mensaje
                        mostrarDialogoFacturacion = true
                    },
                    onAbrirCalendario = {
                        mostrarAlertaCalendario = true
                        scope.launch {
                            delay(3000)
                            mostrarAlertaCalendario = false
                            abrirCalendario(context, onMostrarDialogo = { msg ->
                                mensajeDialogo = msg
                                mostrarDialogoFacturacion = true
                            })
                        }
                    },
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
                    dividerColor = dividerColor,
                    iconColorGeneral = iconColor,
                    isDark = isDark,
                    onMostrarDialogo = { mensaje ->
                        mensajeDialogo = mensaje
                        mostrarDialogoFacturacion = true
                    },
                    onAbrirCalendario = {
                        mostrarAlertaCalendario = true
                        scope.launch {
                            delay(3000)
                            mostrarAlertaCalendario = false
                            abrirCalendario(context, onMostrarDialogo = { msg ->
                                mensajeDialogo = msg
                                mostrarDialogoFacturacion = true
                            })
                        }
                    },
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
                    dividerColor = dividerColor,
                    iconColorGeneral = iconColor,
                    isDark = isDark,
                    onMostrarDialogo = { mensaje ->
                        mensajeDialogo = mensaje
                        mostrarDialogoFacturacion = true
                    },
                    onAbrirCalendario = {
                        mostrarAlertaCalendario = true
                        scope.launch {
                            delay(3000)
                            mostrarAlertaCalendario = false
                            abrirCalendario(context, onMostrarDialogo = { msg ->
                                mensajeDialogo = msg
                                mostrarDialogoFacturacion = true
                            })
                        }
                    },
                    options = listOf(
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
                    dividerColor = dividerColor,
                    iconColorGeneral = iconColor,
                    isDark = isDark,
                    onMostrarDialogo = { mensaje ->
                        mensajeDialogo = mensaje
                        mostrarDialogoFacturacion = true
                    },
                    onAbrirCalendario = {
                        mostrarAlertaCalendario = true
                        scope.launch {
                            delay(3000)
                            mostrarAlertaCalendario = false
                            abrirCalendario(context, onMostrarDialogo = { msg ->
                                mensajeDialogo = msg
                                mostrarDialogoFacturacion = true
                            })
                        }
                    },
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
                    dividerColor = dividerColor,
                    iconColorGeneral = iconColor,
                    isDark = isDark,
                    onMostrarDialogo = { mensaje ->
                        mensajeDialogo = mensaje
                        mostrarDialogoFacturacion = true
                    },
                    onAbrirCalendario = {
                        mostrarAlertaCalendario = true
                        scope.launch {
                            delay(3000)
                            mostrarAlertaCalendario = false
                            abrirCalendario(context, onMostrarDialogo = { msg ->
                                mensajeDialogo = msg
                                mostrarDialogoFacturacion = true
                            })
                        }
                    },
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
                    dividerColor = dividerColor,
                    iconColorGeneral = iconColor,
                    isDark = isDark,
                    onMostrarDialogo = { mensaje ->
                        mensajeDialogo = mensaje
                        mostrarDialogoFacturacion = true
                    },
                    onAbrirCalendario = {
                        mostrarAlertaCalendario = true
                        scope.launch {
                            delay(3000)
                            mostrarAlertaCalendario = false
                            abrirCalendario(context, onMostrarDialogo = { msg ->
                                mensajeDialogo = msg
                                mostrarDialogoFacturacion = true
                            })
                        }
                    },
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

// Función para abrir el calendario fuera del composable
fun abrirCalendario(context: android.content.Context, onMostrarDialogo: (String) -> Unit) {
    try {
        val intent = Intent(Intent.ACTION_INSERT)
            .setData(CalendarContract.Events.CONTENT_URI)
            .putExtra(CalendarContract.Events.TITLE, "Recordatorio de cita médica")
            .putExtra(CalendarContract.Events.DESCRIPTION, "Cita programada en Amani Psicología")
            .putExtra(CalendarContract.Events.EVENT_LOCATION, "Centro Amani")

        context.startActivity(intent)
        Log.d(TAG, "📅 Abriendo calendario del dispositivo")
    } catch (e: Exception) {
        Log.e(TAG, "❌ Error al abrir el calendario: ${e.message}")
        onMostrarDialogo("No se pudo abrir el calendario. Asegúrate de tener una aplicación de calendario instalada.")
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
    currentTema: Boolean,
    idiomaViewModel: IdiomaViewModel,
    surfaceColor: Color,
    textColor: Color,
    textSecondaryColor: Color,
    dividerColor: Color,
    iconColorGeneral: Color,
    isDark: Boolean,
    onMostrarDialogo: (String) -> Unit,
    onAbrirCalendario: () -> Unit
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
                    dividerColor = dividerColor,
                    iconColorGeneral = iconColorGeneral,
                    isDark = isDark,
                    onMostrarDialogo = onMostrarDialogo,
                    onAbrirCalendario = onAbrirCalendario
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
    currentTema: Boolean,
    idiomaViewModel: IdiomaViewModel,
    textColor: Color,
    textSecondaryColor: Color,
    dividerColor: Color,
    iconColorGeneral: Color,
    isDark: Boolean,
    onMostrarDialogo: (String) -> Unit,
    onAbrirCalendario: () -> Unit
) {
    val scope = rememberCoroutineScope()
    val context = LocalContext.current
    var expandedIdioma by remember { mutableStateOf(false) }
    var expandedTema by remember { mutableStateOf(false) }
    val dropdownContainerColor = if (isDark) Color.DarkGray else Color.White

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable {
                when (option.id) {
                    "language" -> expandedIdioma = true
                    "tema" -> expandedTema = true

                    "recordatorios_citas" -> {
                        onAbrirCalendario()
                    }

                    "metodos_pago" -> {
                        onMostrarDialogo("Aún no se ha implementado el módulo de métodos de pago, pero en futuro lo haremos.")
                    }

                    "historial_pagos" -> {
                        onMostrarDialogo("Aún no se ha implementado el historial de pagos, pero en futuro lo haremos.")
                    }

                    "facturas" -> {
                        onMostrarDialogo("Aún no se ha implementado la descarga de facturas, pero en futuro lo haremos.")
                    }

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
                        navController.navigate(Screens.historialCitas.route)
                    }

                    "ayuda" -> {
                        Log.d(TAG, "❓ Navegar a ayuda")
                    }

                    "contacto" -> {
                        Log.d(TAG, "📧 Navegar a contacto")
                    }

                    "terminos" -> {
                        navController.navigate(Screens.documentoLegalDetail.createRoute("terminos"))
                    }
                    "privacidad" -> {
                        navController.navigate(Screens.documentoLegalDetail.createRoute("privacidad"))
                    }

                    "cerrar_sesion" -> {
                        navController.navigate(Screens.login.route) {
                            popUpTo(0) // Limpia toda la pila de navegación
                        }
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
                    Icon(Icons.Default.ArrowDropDown, contentDescription = null, tint = iconColorGeneral)

                    DropdownMenu(
                        expanded = expandedIdioma,
                        onDismissRequest = { expandedIdioma = false },
                        containerColor = dropdownContainerColor
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
                        containerColor = dropdownContainerColor
                    ) {
                        DropdownMenuItem(
                            text = { Text("Claro", color = textColor) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel.cambiarTema(false)
                                }
                                expandedTema = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("Oscuro", color = textColor) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel.cambiarTema(true)
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