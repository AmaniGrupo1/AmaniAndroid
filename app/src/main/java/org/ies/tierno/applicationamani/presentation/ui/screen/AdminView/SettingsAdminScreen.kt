package org.ies.tierno.applicationamani.presentation.ui.screen.settings

import android.content.res.Configuration
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
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ContactSupport
import androidx.compose.material.icons.automirrored.filled.Help
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
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.ColorLens
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.FitnessCenter
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Language
import androidx.compose.material.icons.filled.NotificationsActive
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.ReportProblem
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Sms
import androidx.compose.material.icons.filled.Timelapse
import androidx.compose.material.icons.filled.Timer
import androidx.compose.material.icons.outlined.CalendarMonth
import androidx.compose.material.icons.outlined.Notifications
import androidx.compose.material.icons.outlined.People
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.material.icons.outlined.Storage
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.DividerDefaults
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
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
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
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
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import java.time.ZoneId
import java.time.ZonedDateTime

private const val TAG = "SettingsLanguage"

/**
 * Modelo de datos para una opción de configuración en la pantalla de ajustes.
 *
 * @property id Identificador único de la opción.
 * @property title Título descriptivo de la opción.
 * @property subtitle Texto secundario con información adicional.
 * @property icon Icono vectorial asociado a la opción.
 */
data class SettingsOption(
    val id: String,
    val title: String,
    val subtitle: String,
    val icon: ImageVector,
)

/**
 * Pantalla de ajustes del panel de administración.
 *
 * Permite al administrador cambiar el idioma de la aplicación, el tema
 * visual (claro/oscuro) y configurar el horario de disponibilidad semanal
 * (días y franjas horarias). Los cambios de idioma provocan la recreación
 * de la Activity para aplicar la nueva configuración de recursos.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param userSessionDataStore Almacén de sesión del usuario.
 * @param idiomaViewModel ViewModel que gestiona el cambio de idioma, tema y horario.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsAdminScreen(
    navController: NavController,
    userSessionDataStore: UserSessionDataStore,
    idiomaViewModel: IdiomaViewModel,
) {
    val scope = rememberCoroutineScope()
    val currentLanguage by idiomaViewModel.idioma.collectAsStateWithLifecycle()
    val currentTema by idiomaViewModel.tema.collectAsStateWithLifecycle()
    val horarioReal by idiomaViewModel.horarioActual.collectAsStateWithLifecycle()

    val madridZone = ZoneId.of("Europe/Madrid")
    val offset = ZonedDateTime.now(madridZone).offset.id
    val zoneText = "Madrid ($offset)"

    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

    val colorScheme = MaterialTheme.colorScheme
    val backgroundColor = colorScheme.background
    val surfaceColor = colorScheme.surfaceContainerLow
    val onSurfaceColor = colorScheme.onSurface
    val onSurfaceVariant = colorScheme.onSurfaceVariant
    val primaryColor = colorScheme.primary

    Log.d(TAG, "Idioma actual: $currentLanguage, Tema: $currentTema")

    var mostrarDialogoFuturo by remember { mutableStateOf(false) }
    var mensajeDialogoFuturo by remember { mutableStateOf("") }

    fun abrirDialogoFuturo(mensaje: String) {
        mensajeDialogoFuturo = mensaje
        mostrarDialogoFuturo = true
    }

    var mostrarConfigHorario by remember { mutableStateOf(false) }
    var cargandoHorario by remember { mutableStateOf(false) }

    val themeSubtitle =
        if (currentTema) {
            stringResource(R.string.auto_oscuro)
        } else {
            stringResource(R.string.auto_claro)
        }

    Scaffold(
        containerColor = backgroundColor,
    ) { padding ->
        if (mostrarDialogoFuturo) {
            Dialog(onDismissRequest = { mostrarDialogoFuturo = false }) {
                Card(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(Spacing.l),
                    shape = MaterialTheme.shapes.large,
                    colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceContainerHigh),
                ) {
                    Column(
                        modifier = Modifier.padding(Spacing.l),
                        horizontalAlignment = Alignment.CenterHorizontally,
                    ) {
                        Icon(
                            Icons.Default.Info,
                            contentDescription = null,
                            tint = primaryColor,
                            modifier = Modifier.size(Dimensions.iconExtraLarge),
                        )
                        Spacer(modifier = Modifier.height(Spacing.m))
                        Text(
                            text = stringResource(R.string.en_desarrollo_titulo),
                            style = MaterialTheme.typography.titleLarge,
                            fontWeight = FontWeight.Bold,
                            color = onSurfaceColor,
                        )
                        Spacer(modifier = Modifier.height(Spacing.s))
                        Text(
                            text = mensajeDialogoFuturo,
                            style = MaterialTheme.typography.bodyMedium,
                            color = onSurfaceVariant,
                            textAlign = TextAlign.Center,
                        )
                        Spacer(modifier = Modifier.height(Spacing.l))
                        Button(
                            onClick = { mostrarDialogoFuturo = false },
                            shape = MaterialTheme.shapes.medium,
                            colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                        ) {
                            Text(stringResource(R.string.entendido))
                        }
                    }
                }
            }
        }

        if (mostrarConfigHorario) {
            if (cargandoHorario) {
                Dialog(onDismissRequest = { mostrarConfigHorario = false }) {
                    Card(
                        modifier =
                            Modifier
                                .width(Dimensions.bannerHeight)
                                .padding(Spacing.xl),
                        shape = MaterialTheme.shapes.large,
                    ) {
                        Column(
                            modifier = Modifier.padding(Spacing.xl),
                            horizontalAlignment = Alignment.CenterHorizontally,
                        ) {
                            CircularProgressIndicator()
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(stringResource(R.string.auto_cargando_horario))
                        }
                    }
                }
            } else {
                DialogHorarioSemanal(
                    horarioActual = horarioReal?.franjas,
                    onDismiss = { mostrarConfigHorario = false },
                )
            }
        }

        LazyColumn(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(padding)
                    .background(backgroundColor),
            contentPadding = PaddingValues(Spacing.m),
            verticalArrangement = Arrangement.spacedBy(Spacing.m),
        ) {
            item {
                SettingsCategoryCard(
                    title = stringResource(R.string.general),
                    icon = Icons.Outlined.Settings,
                    iconColor = colorScheme.primary,
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
                    onMostrarDialogoFuturo = { abrirDialogoFuturo(it) },
                    options =
                        listOf(
                            SettingsOption(
                                id = "perfil",
                                title = stringResource(R.string.perfil),
                                subtitle = stringResource(R.string.cambia_tu_perfil),
                                icon = Icons.Default.Person,
                            ),
                            SettingsOption(
                                id = "clinic_name",
                                title = stringResource(R.string.nombre_clinica),
                                subtitle = stringResource(R.string.clinica_amani),
                                icon = Icons.Default.Business,
                            ),
                            SettingsOption(
                                id = "crear_terapia",
                                title = stringResource(R.string.crear_terapia),
                                subtitle = stringResource(R.string.gestionar_terapias),
                                icon = Icons.Default.FitnessCenter,
                            ),
                            SettingsOption(
                                id = "crear_situacion",
                                title = stringResource(R.string.crear_situacion),
                                subtitle = stringResource(R.string.gestionar_situaciones),
                                icon = Icons.AutoMirrored.Filled.List,
                            ),
                            SettingsOption(
                                id = "politica_privacidad",
                                title = stringResource(R.string.crear_politica_privacidad),
                                subtitle = stringResource(R.string.gestionar_situaciones),
                                icon = Icons.AutoMirrored.Filled.List,
                            ),
                            SettingsOption(
                                id = "language",
                                title = stringResource(R.string.idioma),
                                subtitle =
                                    if (currentLanguage == "es") {
                                        stringResource(R.string.espanol)
                                    } else {
                                        stringResource(R.string.ingles)
                                    },
                                icon = Icons.Default.Language,
                            ),
                            SettingsOption(
                                id = "timezone",
                                title = stringResource(R.string.zona_horaria),
                                subtitle = zoneText,
                                icon = Icons.Default.AccessTime,
                            ),
                            SettingsOption(
                                id = "currency",
                                title = stringResource(R.string.moneda),
                                subtitle = stringResource(R.string.euro),
                                icon = Icons.Default.AttachMoney,
                            ),
                            SettingsOption(
                                id = "theme_color",
                                title = stringResource(R.string.color_sistema),
                                subtitle = stringResource(R.string.morado),
                                icon = Icons.Default.ColorLens,
                            ),
                            SettingsOption(
                                id = "dark_mode",
                                title = stringResource(R.string.tema_oscuro_claro),
                                subtitle = themeSubtitle,
                                icon = Icons.Default.BrightnessMedium,
                            ),
                        ),
                )
            }

            item {
                SettingsCategoryCard(
                    title = stringResource(R.string.citas),
                    icon = Icons.Outlined.CalendarMonth,
                    iconColor = colorScheme.secondary,
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
                    onMostrarDialogoFuturo = { abrirDialogoFuturo(it) },
                    options =
                        listOf(
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
                                icon = Icons.Default.CalendarToday,
                            ),
                            SettingsOption(
                                id = "appointment_interval",
                                title = stringResource(R.string.tiempo_entre_citas),
                                subtitle = stringResource(R.string.minutos_10),
                                icon = Icons.Default.Timelapse,
                            ),
                        ),
                )
            }

            item {
                SettingsCategoryCard(
                    title = stringResource(R.string.notificaciones),
                    icon = Icons.Outlined.Notifications,
                    iconColor = colorScheme.tertiary,
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
                    onMostrarDialogoFuturo = { abrirDialogoFuturo(it) },
                    options =
                        listOf(
                            SettingsOption(
                                id = "send_reminder",
                                title = stringResource(R.string.enviar_recordatorio),
                                subtitle = stringResource(R.string.activado),
                                icon = Icons.Default.NotificationsActive,
                            ),
                            SettingsOption(
                                id = "reminder_time",
                                title = stringResource(R.string.tiempo_antes_cita),
                                subtitle = stringResource(R.string.minutos_60),
                                icon = Icons.Default.Alarm,
                            ),
                            SettingsOption(
                                id = "email_notification",
                                title = stringResource(R.string.notificacion_email),
                                subtitle = stringResource(R.string.activado),
                                icon = Icons.Default.Email,
                            ),
                            SettingsOption(
                                id = "sms_notification",
                                title = stringResource(R.string.notificacion_sms),
                                subtitle = stringResource(R.string.desactivado),
                                icon = Icons.Default.Sms,
                            ),
                        ),
                )
            }

            item {
                SettingsCategoryCard(
                    title = stringResource(R.string.roles_permisos),
                    icon = Icons.Outlined.People,
                    iconColor = colorScheme.primary,
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
                    onMostrarDialogoFuturo = { abrirDialogoFuturo(it) },
                    options =
                        listOf(
                            SettingsOption(
                                id = "roles",
                                title = stringResource(R.string.roles),
                                subtitle = stringResource(R.string.admin_psicologo_recepcionista),
                                icon = Icons.Default.AdminPanelSettings,
                            ),
                        ),
                )
            }

            item {
                SettingsCategoryCard(
                    title = stringResource(R.string.sistema),
                    icon = Icons.Outlined.Storage,
                    iconColor = colorScheme.secondary,
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
                    onMostrarDialogoFuturo = { abrirDialogoFuturo(it) },
                    options =
                        listOf(
                            SettingsOption(
                                id = "backup",
                                title = stringResource(R.string.backup),
                                subtitle = stringResource(R.string.ultima_copia),
                                icon = Icons.Default.Backup,
                            ),
                            SettingsOption(
                                id = "version",
                                title = stringResource(R.string.version),
                                subtitle = stringResource(R.string.version_100),
                                icon = Icons.Default.Info,
                            ),
                            SettingsOption(
                                id = "ayuda",
                                title = stringResource(R.string.ayuda),
                                subtitle = stringResource(R.string.preguntas_frecuentes),
                                icon = Icons.AutoMirrored.Filled.Help,
                            ),
                            SettingsOption(
                                id = "contacto",
                                title = stringResource(R.string.contacto),
                                subtitle = stringResource(R.string.contactar_soporte),
                                icon = Icons.AutoMirrored.Filled.ContactSupport,
                            ),
                            SettingsOption(
                                id = "reportar_problema",
                                title = stringResource(R.string.reportar_problema),
                                subtitle = stringResource(R.string.enviar_reporte),
                                icon = Icons.Default.ReportProblem,
                            ),
                        ),
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
    onOpenHorario: () -> Unit = {},
    onMostrarDialogoFuturo: (String) -> Unit = {},
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(containerColor = surfaceColor),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
    ) {
        Column(modifier = Modifier.padding(Spacing.m)) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.padding(bottom = Spacing.sm),
            ) {
                Box(
                    modifier =
                        Modifier
                            .size(Dimensions.avatarSmall)
                            .clip(MaterialTheme.shapes.small)
                            .background(iconColor.copy(alpha = 0.12f)),
                    contentAlignment = Alignment.Center,
                ) {
                    Icon(
                        icon,
                        contentDescription = null,
                        tint = iconColor,
                        modifier = Modifier.size(Dimensions.iconMedium),
                    )
                }
                Spacer(modifier = Modifier.width(Spacing.sm))
                Text(
                    text = title,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = onSurfaceColor,
                )
            }

            options.forEachIndexed { index, option ->
                if (index > 0) {
                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = Spacing.s),
                        thickness = DividerDefaults.Thickness,
                        color = MaterialTheme.colorScheme.outlineVariant,
                    )
                }

                SettingsOptionRow(
                    option = option,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    onSurfaceColor = onSurfaceColor,
                    onSurfaceVariant = onSurfaceVariant,
                    primaryColor = primaryColor,
                    onOpenHorario = onOpenHorario,
                    onMostrarDialogoFuturo = onMostrarDialogoFuturo,
                )
            }
        }
    }
}

@Composable
fun SettingsOptionRow(
    option: SettingsOption,
    navController: NavController,
    session: UserSession?,
    currentLanguage: String,
    currentTema: Boolean,
    idiomaViewModel: IdiomaViewModel,
    onSurfaceColor: Color,
    onSurfaceVariant: Color,
    primaryColor: Color,
    onOpenHorario: () -> Unit = {},
    onMostrarDialogoFuturo: (String) -> Unit = {},
) {
    val scope = rememberCoroutineScope()
    var expandedLanguage by remember { mutableStateOf(false) }
    var expandedTheme by remember { mutableStateOf(false) }
    val proxMsg = stringResource(R.string.en_desarrollo_proximamente)

    Row(
        modifier =
            Modifier
                .fillMaxWidth()
                .clickable {
                    when (option.id) {
                        "language" -> expandedLanguage = true
                        "dark_mode" -> expandedTheme = true
                        "available_days" -> onOpenHorario()
                        "perfil" -> {
                            val identificador = session?.idUsuario
                            if (identificador != null && identificador > 0L) {
                                navController.navigate(Screens.profileAdmin.createRoute(identificador))
                            }
                        }
                        "crear_terapia" -> navController.navigate(Screens.terapias.route)
                        "crear_situacion" -> navController.navigate(Screens.crearSituaciones.route)
                        "politica_privacidad" -> navController.navigate(Screens.politicaPrivacidad.route)
                        "roles" -> navController.navigate(Screens.cambiarRol.route)
                        "terminos" -> navController.navigate(Screens.documentoLegalDetail.createRoute("terminos"))
                        "privacidad" -> navController.navigate(Screens.documentoLegalDetail.createRoute("privacidad"))
                        "reportar_problema" -> navController.navigate(Screens.reportarProblema.route)
                        "clinic_name",
                        "timezone",
                        "currency",
                        "theme_color",
                        "appointment_duration",
                        "appointment_interval",
                        "send_reminder",
                        "reminder_time",
                        "email_notification",
                        "sms_notification",
                        "backup",
                        "ayuda",
                        "contacto",
                        -> onMostrarDialogoFuturo(proxMsg)
                    }
                }
                .padding(vertical = Spacing.s),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Row(
            modifier = Modifier.weight(1f),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Icon(
                option.icon,
                contentDescription = null,
                tint = primaryColor,
                modifier = Modifier.size(Dimensions.iconDefault),
            )
            Spacer(modifier = Modifier.width(Spacing.m))

            Column {
                Text(
                    text = option.title,
                    style = MaterialTheme.typography.bodyLarge,
                    fontWeight = FontWeight.Medium,
                    color = onSurfaceColor,
                )

                val displaySubtitle =
                    when (option.id) {
                        "language" ->
                            when (currentLanguage) {
                                "en" -> stringResource(R.string.ingles)
                                "ca" -> stringResource(R.string.catalan)
                                else -> stringResource(R.string.espanol)
                            }
                        "dark_mode" ->
                            if (currentTema) {
                                stringResource(R.string.auto_oscuro)
                            } else {
                                stringResource(R.string.auto_claro)
                            }
                        else -> option.subtitle
                    }

                Text(
                    text = displaySubtitle,
                    style = MaterialTheme.typography.bodySmall,
                    color = onSurfaceVariant,
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
                        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh,
                    ) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.espanol), color = onSurfaceColor) },
                            onClick = {
                                scope.launch { idiomaViewModel.cambiarIdioma("es") }
                                expandedLanguage = false
                            },
                        )
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.ingles), color = onSurfaceColor) },
                            onClick = {
                                scope.launch { idiomaViewModel.cambiarIdioma("en") }
                                expandedLanguage = false
                            },
                        )
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.catalan), color = onSurfaceColor) },
                            onClick = {
                                scope.launch { idiomaViewModel.cambiarIdioma("ca") }
                                expandedLanguage = false
                            },
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
                        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh,
                    ) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.auto_claro), color = onSurfaceColor) },
                            onClick = {
                                scope.launch { idiomaViewModel.cambiarTema(false) }
                                expandedTheme = false
                            },
                        )
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.auto_oscuro), color = onSurfaceColor) },
                            onClick = {
                                scope.launch { idiomaViewModel.cambiarTema(true) }
                                expandedTheme = false
                            },
                        )
                    }
                }
            }
            else -> {
                Icon(
                    Icons.Default.ChevronRight,
                    contentDescription = stringResource(R.string.auto_ir),
                    tint = onSurfaceVariant,
                    modifier = Modifier.size(Dimensions.iconMedium),
                )
            }
        }
    }
}

@Composable
fun DialogHorarioSemanal(
    horarioActual: List<FranjaHorarioDTO>?,
    onDismiss: () -> Unit,
) {
    val colorScheme = MaterialTheme.colorScheme
    val dayNames =
        mapOf(
            1 to stringResource(R.string.dia_lunes),
            2 to stringResource(R.string.dia_martes),
            3 to stringResource(R.string.dia_miercoles),
            4 to stringResource(R.string.dia_jueves),
            5 to stringResource(R.string.dia_viernes),
            6 to stringResource(R.string.dia_sabado),
            7 to stringResource(R.string.dia_domingo),
        )

    Dialog(onDismissRequest = onDismiss) {
        Card(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .heightIn(max = Dimensions.dialogMaxHeight),
            shape = MaterialTheme.shapes.large,
            colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceContainerHigh),
            elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level3),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .padding(Spacing.m),
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Column(modifier = Modifier.weight(1f)) {
                        Text(
                            text = stringResource(R.string.auto__horario_semanal),
                            style = MaterialTheme.typography.titleLarge,
                            fontWeight = FontWeight.Bold,
                            color = colorScheme.primary,
                        )
                        Text(
                            text = stringResource(R.string.auto_dias_y_horas_de),
                            style = MaterialTheme.typography.bodySmall,
                            color = colorScheme.onSurfaceVariant,
                            modifier = Modifier.padding(top = Spacing.xs),
                        )
                    }

                    IconButton(onClick = onDismiss) {
                        Icon(
                            Icons.Default.Close,
                            contentDescription = stringResource(R.string.auto_cerrar),
                            tint = colorScheme.onSurfaceVariant,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.m))
                HorizontalDivider()
                Spacer(modifier = Modifier.height(Spacing.m))

                if (horarioActual.isNullOrEmpty()) {
                    Box(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(Spacing.xl),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(horizontalAlignment = Alignment.CenterHorizontally) {
                            Icon(
                                imageVector = Icons.Default.Schedule,
                                contentDescription = null,
                                modifier = Modifier.size(Dimensions.iconExtraLarge),
                                tint = colorScheme.onSurfaceVariant,
                            )
                            Spacer(modifier = Modifier.height(Spacing.s))
                            Text(
                                text = stringResource(R.string.auto_no_hay_configuracion_de),
                                textAlign = TextAlign.Center,
                                style = MaterialTheme.typography.bodyMedium,
                                color = colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                } else {
                    LazyColumn(
                        modifier = Modifier.weight(1f),
                        verticalArrangement = Arrangement.spacedBy(Spacing.s),
                    ) {
                        items(horarioActual.sortedBy { it.diaSemana }) { franja ->
                            val dayName = dayNames[franja.diaSemana.toInt()] ?: ""

                            Card(
                                modifier = Modifier.fillMaxWidth(),
                                shape = MaterialTheme.shapes.medium,
                                colors =
                                    CardDefaults.cardColors(
                                        containerColor =
                                            if (franja.activo) {
                                                colorScheme.primaryContainer.copy(alpha = 0.4f)
                                            } else {
                                                colorScheme.surfaceVariant
                                            },
                                    ),
                            ) {
                                Row(
                                    modifier =
                                        Modifier
                                            .fillMaxWidth()
                                            .padding(Spacing.m),
                                    horizontalArrangement = Arrangement.SpaceBetween,
                                    verticalAlignment = Alignment.CenterVertically,
                                ) {
                                    Column(modifier = Modifier.weight(1f)) {
                                        Text(
                                            text = dayName,
                                            fontWeight = FontWeight.Bold,
                                            style = MaterialTheme.typography.titleMedium,
                                            color =
                                                if (franja.activo) {
                                                    colorScheme.primary
                                                } else {
                                                    colorScheme.onSurfaceVariant
                                                },
                                        )

                                        if (franja.activo && franja.horaInicio.isNotBlank() && franja.horaFin.isNotBlank()) {
                                            Text(
                                                text = "${franja.horaInicio} - ${franja.horaFin}",
                                                style = MaterialTheme.typography.bodyMedium,
                                                color = colorScheme.onSurfaceVariant,
                                                modifier = Modifier.padding(top = Spacing.xs),
                                            )
                                        } else if (!franja.activo) {
                                            Text(
                                                text = stringResource(R.string.auto__no_disponible),
                                                style = MaterialTheme.typography.bodySmall,
                                                color = colorScheme.error,
                                                modifier = Modifier.padding(top = Spacing.xs),
                                            )
                                        }
                                    }

                                    Surface(
                                        shape = MaterialTheme.shapes.medium,
                                        color =
                                            if (franja.activo) {
                                                AmaniTheme.colors.successContainer
                                            } else {
                                                colorScheme.errorContainer
                                            },
                                        modifier = Modifier.padding(start = Spacing.s),
                                    ) {
                                        Text(
                                            text =
                                                if (franja.activo) {
                                                    stringResource(R.string.activo)
                                                } else {
                                                    stringResource(R.string.inactivo)
                                                },
                                            style = MaterialTheme.typography.labelSmall,
                                            modifier = Modifier.padding(horizontal = Spacing.s, vertical = Spacing.xs),
                                            color =
                                                if (franja.activo) {
                                                    AmaniTheme.colors.onSuccessContainer
                                                } else {
                                                    colorScheme.onErrorContainer
                                                },
                                            fontWeight = FontWeight.Medium,
                                        )
                                    }
                                }
                            }
                        }
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.m))
                HorizontalDivider()
                Spacer(modifier = Modifier.height(Spacing.sm))

                Button(
                    onClick = onDismiss,
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.medium,
                    colors = ButtonDefaults.buttonColors(containerColor = colorScheme.primary),
                ) {
                    Text(
                        text = stringResource(R.string.auto_cerrar),
                        color = colorScheme.onPrimary,
                        fontWeight = FontWeight.Medium,
                    )
                }
            }
        }
    }
}

@Preview(name = "SettingsAdmin Horario Light", showBackground = true)
@Preview(name = "SettingsAdmin Horario Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "SettingsAdmin Horario FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun SettingsAdminHorarioPreview() {
    org.ies.tierno.applicationamani.ui.theme.AppTheme {
        DialogHorarioSemanal(
            horarioActual =
                listOf(
                    FranjaHorarioDTO(
                        diaSemana = 1,
                        horaInicio = "09:00",
                        horaFin = "18:00",
                        activo = true,
                    ),
                    FranjaHorarioDTO(
                        diaSemana = 6,
                        horaInicio = "",
                        horaFin = "",
                        activo = false,
                    ),
                ),
            onDismiss = {},
        )
    }
}