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
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel
import android.app.Activity
import android.util.Log
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack

private const val TAG = "SettingsPaciente"

// ✅ Definir SettingsOption localmente para paciente
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
        if (!isRecreating && previousLanguage != currentLanguage) {
            Log.w(TAG, "⚠️ [Cambio detectado] De '$previousLanguage' a '$currentLanguage'")
            previousLanguage = currentLanguage
            isRecreating = true
            delay(150)
            (context as? Activity)?.recreate()
        }
    }

    val primaryColor = Color(0xFF6B4E71) // Color AMANI
    val backgroundColor = Color(0xFFFDF8F9) // Fondo suave AMANI
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.configuracion),
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = Color.White
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Volver", tint = Color.White)
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
                    iconColor = primaryColor,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    idiomaViewModel = idiomaViewModel,
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
                    iconColor = Color(0xFFE67E22),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    idiomaViewModel = idiomaViewModel,
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
                            subtitle = stringResource(R.string.tema_oscuro_claro),
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
                    iconColor = Color(0xFF27AE60),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    idiomaViewModel = idiomaViewModel,
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
                    iconColor = Color(0xFF3498DB),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    idiomaViewModel = idiomaViewModel,
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
                    iconColor = Color(0xFFE74C3C),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    idiomaViewModel = idiomaViewModel,
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
                    iconColor = Color(0xFF9B59B6),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    idiomaViewModel = idiomaViewModel,
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
    idiomaViewModel: IdiomaViewModel
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = Color.White),
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
                    color = Color(0xFF333333)
                )
            }

            options.forEachIndexed { index, option ->
                if (index > 0) {
                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                        thickness = DividerDefaults.Thickness,
                        color = Color.LightGray.copy(alpha = 0.3f)
                    )
                }

                SettingsOptionRowPaciente(
                    option = option,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    idiomaViewModel = idiomaViewModel
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
    idiomaViewModel: IdiomaViewModel
) {
    val scope = rememberCoroutineScope()
    var expanded by remember { mutableStateOf(false) }
    val context = LocalContext.current

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable {
                when (option.id) {
                    "language" -> expanded = true

                    "mi_perfil" -> {
                        val identificador = session?.idPaciente
                        if (identificador != null && identificador > 0L) {
                            navController.navigate(
                                Screens.perfilPaciente.createRoute(identificador)
                            )
                        }
                    }

                    "mi_psicologo" -> {
                        // TODO: Navegar a pantalla de información del psicólogo
                        Log.d(TAG, "👨‍⚕️ Navegar a información del psicólogo")
                        // navController.navigate(Screens.infoPsicologo)
                    }

                    "historial" -> {

                        val pacienteId = session?.idPaciente

                        Log.d(TAG, "📌 CLICK HISTORIAL CLÍNICO")
                        Log.d(TAG, "👤 Session completa: $session")
                        Log.d(TAG, "🆔 idPaciente obtenido: $pacienteId")

                        if (pacienteId != null && pacienteId > 0L) {

                            Log.d(TAG, "🚀 Navegando a historial con idPaciente = $pacienteId")

                            navController.navigate(
                                Screens.historialClinico.createRoute(pacienteId)
                            )

                        } else {

                            Log.e(TAG, "❌ ERROR: idPaciente es NULL o inválido")
                        }
                    }

                    "notificaciones" -> {
                        // TODO: Navegar a configuración de notificaciones
                        Log.d(TAG, "🔔 Navegar a notificaciones")
                        // navController.navigate(Screens.notificaciones)
                    }

                    "recordatorios" -> {
                        // TODO: Navegar a configuración de recordatorios
                        Log.d(TAG, "⏰ Navegar a recordatorios")
                        // navController.navigate(Screens.recordatorios)
                    }

                    "proximas_citas" -> {
                        // TODO: Navegar a próximas citas
                        Log.d(TAG, "📅 Navegar a próximas citas")
                        // navController.navigate(Screens.proximasCitas)
                    }

                    "historial_citas" -> {
                        // TODO: Navegar a historial de citas
                        Log.d(TAG, "📋 Navegar a historial de citas")
                        // navController.navigate(Screens.historialCitas)
                    }

                    "metodos_pago" -> {
                        // TODO: Navegar a métodos de pago
                        Log.d(TAG, "💳 Navegar a métodos de pago")
                        // navController.navigate(Screens.metodosPago)
                    }

                    "historial_pagos" -> {
                        // TODO: Navegar a historial de pagos
                        Log.d(TAG, "💰 Navegar a historial de pagos")
                        // navController.navigate(Screens.historialPagos)
                    }

                    "ayuda" -> {
                        // TODO: Navegar a ayuda / preguntas frecuentes
                        Log.d(TAG, "❓ Navegar a ayuda")
                        // navController.navigate(Screens.ayuda)
                    }

                    "contacto" -> {
                        // TODO: Navegar a contacto con soporte
                        Log.d(TAG, "📧 Navegar a contacto")
                        // navController.navigate(Screens.contactoSoporte)
                    }

                    "terminos" -> {
                        // TODO: Navegar a términos y condiciones
                        Log.d(TAG, "📄 Navegar a términos y condiciones")
                        // navController.navigate(Screens.terminos)
                    }

                    "privacidad" -> {
                        // TODO: Navegar a política de privacidad
                        Log.d(TAG, "🔒 Navegar a política de privacidad")
                        // navController.navigate(Screens.privacidad)
                    }

                    "cerrar_sesion" -> {
                        // TODO: Cerrar sesión
                        Log.d(TAG, "🚪 Cerrar sesión")
                        // userSessionDataStore.clearSession()
                        // navController.navigate(Screens.login.route) {
                        //     popUpTo(0) { inclusive = true }
                        // }
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
                tint = Color(0xFF6B4E71), // Color AMANI
                modifier = Modifier.size(22.dp)
            )
            Spacer(modifier = Modifier.width(16.dp))

            Column {
                Text(
                    text = option.title,
                    fontFamily = roboto,
                    fontWeight = FontWeight.Medium,
                    fontSize = 15.sp,
                    color = Color(0xFF333333)
                )

                val displaySubtitle = if (option.id == "language") {
                    if (currentLanguage == "es") stringResource(R.string.espanol)
                    else stringResource(R.string.ingles)
                } else {
                    option.subtitle
                }

                Text(
                    text = displaySubtitle,
                    fontFamily = roboto,
                    fontSize = 13.sp,
                    color = Color.Gray
                )
            }
        }

        if (option.id == "language") {
            Box {
                Icon(Icons.Default.ArrowDropDown, contentDescription = null)

                DropdownMenu(
                    expanded = expanded,
                    onDismissRequest = { expanded = false }
                ) {
                    DropdownMenuItem(
                        text = { Text(stringResource(R.string.espanol)) },
                        onClick = {
                            Log.d(TAG, "🇪🇸 Paciente seleccionó ESPAÑOL")
                            scope.launch {
                                idiomaViewModel.cambiarIdioma("es")
                            }
                            expanded = false
                        }
                    )

                    DropdownMenuItem(
                        text = { Text(stringResource(R.string.ingles)) },
                        onClick = {
                            Log.d(TAG, "🇬🇧 Paciente seleccionó INGLÉS")
                            scope.launch {
                                idiomaViewModel.cambiarIdioma("en")
                            }
                            expanded = false
                        }
                    )
                }
            }
        } else {
            Icon(
                Icons.Default.ChevronRight,
                contentDescription = "Ir",
                tint = Color.Gray,
                modifier = Modifier.size(20.dp)
            )
        }
    }
}