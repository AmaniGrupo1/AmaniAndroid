package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

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
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ContactSupport
import androidx.compose.material.icons.filled.AccessTime
import androidx.compose.material.icons.filled.Alarm
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material.icons.filled.BrightnessMedium
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.automirrored.filled.Help
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Language
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material.icons.filled.Notifications
import androidx.compose.material.icons.filled.PersonOutline
import androidx.compose.material.icons.filled.ReportProblem
import androidx.compose.material.icons.filled.Timelapse
import androidx.compose.material.icons.filled.Timer
import androidx.compose.material.icons.filled.Work
import androidx.compose.material.icons.outlined.CalendarMonth
import androidx.compose.material.icons.outlined.Person
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
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
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
import androidx.compose.ui.platform.LocalContext
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
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import java.time.ZoneId
import java.time.ZonedDateTime

private const val TAG = "SettingsPsychologist"

// Función auxiliar para obtener el subtítulo del tema actual
@Composable
private fun getCurrentThemeSubtitle(currentTheme: Boolean): String {
    return if (currentTheme) stringResource(R.string.auto_oscuro) else stringResource(R.string.auto_claro)
}

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
    val icon: ImageVector,
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
    idiomaViewModel: IdiomaViewModel,
) {
    val scope = rememberCoroutineScope()

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

    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Log.d(TAG, "[Recomposición] Idioma actual: $currentLanguage")
    Log.d(TAG, "[Recomposición] Tema actual (boolean): $currentTema")

    // Estado para el diálogo de "Proceso futuro"
    var mostrarDialogoFuturo by remember { mutableStateOf(false) }
    var mensajeDialogoFuturo by remember { mutableStateOf("") }

    fun mostrarDialogoFuturo(mensaje: String) {
        mensajeDialogoFuturo = mensaje
        mostrarDialogoFuturo = true
    }

    // Estados para el diálogo de horario
    var mostrarConfigHorario by remember { mutableStateOf(false) }
    var cargandoHorario by remember { mutableStateOf(false) }

    Scaffold(
        containerColor = colorScheme.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_configuracion),
                        style = typography.titleLarge,
                        fontWeight = FontWeight.SemiBold,
                        color = colorScheme.onSurface,
                    )
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colorScheme.surface,
                        titleContentColor = colorScheme.onSurface,
                        navigationIconContentColor = colorScheme.onSurface,
                    ),
            )
        },
    ) { padding ->

        // Diálogo de "Proceso futuro"
        if (mostrarDialogoFuturo) {
            Dialog(
                onDismissRequest = { mostrarDialogoFuturo = false },
            ) {
                Card(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(Spacing.l),
                    shape = shapes.large,
                    colors =
                        CardDefaults.cardColors(
                            containerColor = colorScheme.surfaceContainerHigh,
                        ),
                ) {
                    Column(
                        modifier = Modifier.padding(Spacing.l),
                        horizontalAlignment = Alignment.CenterHorizontally,
                    ) {
                        Icon(
                            Icons.Default.Info,
                            contentDescription = null,
                            tint = colorScheme.primary,
                            modifier = Modifier.size(Dimensions.iconExtraLarge),
                        )
                        Spacer(modifier = Modifier.height(Spacing.m))
                        Text(
                            text = stringResource(R.string.settings_en_desarrollo_titulo),
                            style = typography.titleLarge,
                            fontWeight = FontWeight.Bold,
                            color = colorScheme.onSurface,
                        )
                        Spacer(modifier = Modifier.height(Spacing.s))
                        Text(
                            text = mensajeDialogoFuturo,
                            style = typography.bodyMedium,
                            color = colorScheme.onSurfaceVariant,
                            textAlign = TextAlign.Center,
                        )
                        Spacer(modifier = Modifier.height(Spacing.l))
                        Button(
                            onClick = { mostrarDialogoFuturo = false },
                            shape = shapes.medium,
                            colors =
                                ButtonDefaults.buttonColors(
                                    containerColor = colorScheme.primary,
                                    contentColor = colorScheme.onPrimary,
                                ),
                        ) {
                            Text(stringResource(R.string.settings_btn_entendido))
                        }
                    }
                }
            }
        }

        // Diálogo de horario
        if (mostrarConfigHorario) {
            if (cargandoHorario) {
                Dialog(onDismissRequest = { mostrarConfigHorario = false }) {
                    Card(
                        modifier =
                            Modifier
                                .width(Dimensions.gameCardSize)
                                .padding(Spacing.xl),
                        shape = shapes.large,
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
                DialogHorarioSemanalPsychologist(
                    horarioActual = horarioReal?.franjas,
                    onDismiss = { mostrarConfigHorario = false },
                )
            }
        }

        val onOpenHorarioAction = {
            mostrarConfigHorario = true
            scope.launch {
                cargandoHorario = true
                idiomaViewModel.cargarHorarioActual()
                delay(500)
                cargandoHorario = false
            }
            Unit
        }

        LazyColumn(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(padding)
                    .background(colorScheme.background),
            contentPadding = PaddingValues(Spacing.m),
            verticalArrangement = Arrangement.spacedBy(Spacing.m),
        ) {
            // ==================== PERFIL (Solo para psicólogo) ====================
            item {
                SettingsCategoryCardPsychologist(
                    title = stringResource(R.string.perfil),
                    icon = Icons.Outlined.Person,
                    iconColor = colorScheme.primary,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    zoneText = zoneText,
                    onOpenHorario = onOpenHorarioAction,
                    onMostrarDialogoFuturo = { mensaje -> mostrarDialogoFuturo(mensaje) },
                    options =
                        listOf(
                            SettingsOption(
                                id = "mi_perfil",
                                title = stringResource(R.string.perfil),
                                subtitle = stringResource(R.string.editar_datos_personales),
                                icon = Icons.Default.PersonOutline,
                            ),
                            SettingsOption(
                                id = "especialidad",
                                title = stringResource(R.string.mis_especialidades),
                                subtitle = stringResource(R.string.agregar_especialidades),
                                icon = Icons.Default.Work,
                            ),
                        ),
                )
            }

            // ==================== PREFERENCIAS ====================
            item {
                SettingsCategoryCardPsychologist(
                    title = stringResource(R.string.preferencias),
                    icon = Icons.Outlined.Settings,
                    iconColor = colorScheme.secondary,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    zoneText = zoneText,
                    onOpenHorario = onOpenHorarioAction,
                    onMostrarDialogoFuturo = { mensaje -> mostrarDialogoFuturo(mensaje) },
                    options =
                        listOf(
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
                                id = "zona_horaria",
                                title = stringResource(R.string.zona_horaria),
                                subtitle = zoneText,
                                icon = Icons.Default.AccessTime,
                            ),
                            SettingsOption(
                                id = "notificaciones",
                                title = stringResource(R.string.notificaciones),
                                subtitle = stringResource(R.string.configurar_notificaciones),
                                icon = Icons.Default.Notifications,
                            ),
                            SettingsOption(
                                id = "tema",
                                title = stringResource(R.string.tema),
                                subtitle = getCurrentThemeSubtitle(currentTema),
                                icon = Icons.Default.BrightnessMedium,
                            ),
                        ),
                )
            }

            // ==================== CITAS ====================
            item {
                SettingsCategoryCardPsychologist(
                    title = stringResource(R.string.citas),
                    icon = Icons.Outlined.CalendarMonth,
                    iconColor = colorScheme.tertiary,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    zoneText = zoneText,
                    onOpenHorario = onOpenHorarioAction,
                    onMostrarDialogoFuturo = { mensaje -> mostrarDialogoFuturo(mensaje) },
                    options =
                        listOf(
                            SettingsOption(
                                id = "duracion_cita",
                                title = stringResource(R.string.duracion_cita),
                                subtitle = stringResource(R.string.duracion_minutos, 45),
                                icon = Icons.Default.Timer,
                            ),
                            SettingsOption(
                                id = "tiempo_entre_citas",
                                title = stringResource(R.string.tiempo_entre_citas),
                                subtitle = stringResource(R.string.tiempo_minutos, 10),
                                icon = Icons.Default.Timelapse,
                            ),
                            SettingsOption(
                                id = "available_days",
                                title = stringResource(R.string.dias_disponibles),
                                subtitle = stringResource(R.string.lunes_viernes),
                                icon = Icons.Default.CalendarToday,
                            ),
                            SettingsOption(
                                id = "recordatorios",
                                title = stringResource(R.string.recordatorios),
                                subtitle = stringResource(R.string.enviar_recordatorios),
                                icon = Icons.Default.Alarm,
                            ),
                        ),
                )
            }

            // ==================== SISTEMA ====================
            item {
                SettingsCategoryCardPsychologist(
                    title = stringResource(R.string.sistema),
                    icon = Icons.Outlined.Storage,
                    iconColor = colorScheme.primary,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    zoneText = zoneText,
                    onOpenHorario = onOpenHorarioAction,
                    onMostrarDialogoFuturo = { mensaje -> mostrarDialogoFuturo(mensaje) },
                    options =
                        listOf(
                            SettingsOption(
                                id = "version",
                                title = stringResource(R.string.version),
                                subtitle = stringResource(R.string.version_actual, "1.0.0"),
                                icon = Icons.Default.Info,
                            ),
                            SettingsOption(
                                id = "terminos",
                                title = stringResource(R.string.terminos_condiciones),
                                subtitle = stringResource(R.string.leer_terminos),
                                icon = Icons.Default.Description,
                            ),
                            SettingsOption(
                                id = "privacidad",
                                title = stringResource(R.string.politica_privacidad),
                                subtitle = stringResource(R.string.ver_politica),
                                icon = Icons.Default.Lock,
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
fun SettingsCategoryCardPsychologist(
    title: String,
    icon: ImageVector,
    iconColor: Color,
    options: List<SettingsOption>,
    navController: NavController,
    session: UserSession?,
    currentLanguage: String,
    currentTema: Boolean,
    idiomaViewModel: IdiomaViewModel,
    zoneText: String,
    onOpenHorario: () -> Unit = {},
    onMostrarDialogoFuturo: (String) -> Unit = {},
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = shapes.large,
        colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
    ) {
        Column(
            modifier = Modifier.padding(Spacing.m),
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.padding(bottom = Spacing.sm),
            ) {
                Box(
                    modifier =
                        Modifier
                            .size(Dimensions.avatarSmall)
                            .clip(shapes.small)
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
                    style = typography.titleMedium,
                    fontWeight = FontWeight.Bold,
                    color = colorScheme.onSurface,
                )
            }

            options.forEachIndexed { index, option ->
                if (index > 0) {
                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = Spacing.s),
                        thickness = DividerDefaults.Thickness,
                        color = colorScheme.outlineVariant,
                    )
                }

                SettingsOptionRowPsychologist(
                    option = option,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    zoneText = zoneText,
                    onOpenHorario = onOpenHorario,
                    onMostrarDialogoFuturo = onMostrarDialogoFuturo,
                )
            }
        }
    }
}

@Composable
fun SettingsOptionRowPsychologist(
    option: SettingsOption,
    navController: NavController,
    session: UserSession?,
    currentLanguage: String,
    currentTema: Boolean,
    idiomaViewModel: IdiomaViewModel,
    zoneText: String,
    onOpenHorario: () -> Unit = {},
    onMostrarDialogoFuturo: (String) -> Unit = {},
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    var expandedLanguage by remember { mutableStateOf(false) }
    var expandedTheme by remember { mutableStateOf(false) }

    val msgEspecialidades = stringResource(R.string.settings_futuro_especialidades)
    val msgHorario = stringResource(R.string.settings_futuro_horario)
    val msgNotificaciones = stringResource(R.string.settings_futuro_notificaciones)
    val msgDuracionCita = stringResource(R.string.settings_futuro_duracion_cita)
    val msgTiempoEntreCitas = stringResource(R.string.settings_futuro_tiempo_entre_citas)
    val msgRecordatorios = stringResource(R.string.settings_futuro_recordatorios)
    val msgAyuda = stringResource(R.string.settings_futuro_ayuda)
    val msgContacto = stringResource(R.string.settings_futuro_contacto)
    val dialogZonaTitulo = stringResource(R.string.zona_horaria)
    val dialogZonaMsg = stringResource(R.string.settings_zona_horaria_mensaje, zoneText)
    val labelEntendido = stringResource(R.string.settings_btn_entendido)

    Row(
        modifier =
            Modifier
                .fillMaxWidth()
                .clickable {
                    when (option.id) {
                        "language" -> expandedLanguage = true
                        "tema" -> expandedTheme = true
                        "available_days" -> onOpenHorario()
                        "zona_horaria" -> {
                            androidx.appcompat.app.AlertDialog.Builder(context)
                                .setTitle(dialogZonaTitulo)
                                .setMessage(dialogZonaMsg)
                                .setPositiveButton(labelEntendido, null)
                                .show()
                        }
                        "mi_perfil" -> {
                            val identificador = session?.idPsicologo
                            if (identificador != null && identificador > 0L) {
                                navController.navigate(
                                    Screens.perfilPsicologo.createRoute(identificador),
                                )
                            }
                        }
                        "terminos" -> {
                            navController.navigate(Screens.documentoLegalDetail.createRoute("terminos"))
                        }
                        "privacidad" -> {
                            navController.navigate(Screens.documentoLegalDetail.createRoute("privacidad"))
                        }
                        "reportar_problema" -> {
                            navController.navigate(Screens.reportarProblema.route)
                        }
                        "especialidad" -> onMostrarDialogoFuturo(msgEspecialidades)
                        "horario" -> onMostrarDialogoFuturo(msgHorario)
                        "notificaciones" -> onMostrarDialogoFuturo(msgNotificaciones)
                        "duracion_cita" -> onMostrarDialogoFuturo(msgDuracionCita)
                        "tiempo_entre_citas" -> onMostrarDialogoFuturo(msgTiempoEntreCitas)
                        "recordatorios" -> onMostrarDialogoFuturo(msgRecordatorios)
                        "ayuda" -> onMostrarDialogoFuturo(msgAyuda)
                        "contacto" -> onMostrarDialogoFuturo(msgContacto)
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
                tint = colorScheme.primary,
                modifier = Modifier.size(Dimensions.iconDefault),
            )
            Spacer(modifier = Modifier.width(Spacing.m))

            Column {
                Text(
                    text = option.title,
                    style = typography.bodyLarge,
                    fontWeight = FontWeight.Medium,
                    color = colorScheme.onSurface,
                )

                val displaySubtitle =
                    when (option.id) {
                        "language" ->
                            when (currentLanguage) {
                                "en" -> stringResource(R.string.ingles)
                                "ca" -> stringResource(R.string.catalan)
                                else -> stringResource(R.string.espanol)
                            }
                        "tema" -> getCurrentThemeSubtitle(currentTema)
                        else -> option.subtitle
                    }

                Text(
                    text = displaySubtitle,
                    style = typography.bodySmall,
                    color = colorScheme.onSurfaceVariant,
                )
            }
        }

        when (option.id) {
            "language" -> {
                Box {
                    Icon(Icons.Default.ArrowDropDown, contentDescription = null, tint = colorScheme.primary)
                    DropdownMenu(
                        expanded = expandedLanguage,
                        onDismissRequest = { expandedLanguage = false },
                        containerColor = colorScheme.surfaceContainerHigh,
                    ) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.espanol), color = colorScheme.onSurface) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel.cambiarIdioma("es")
                                }
                                expandedLanguage = false
                            },
                        )
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.ingles), color = colorScheme.onSurface) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel.cambiarIdioma("en")
                                }
                                expandedLanguage = false
                            },
                        )
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.catalan), color = colorScheme.onSurface) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel.cambiarIdioma("ca")
                                }
                                expandedLanguage = false
                            },
                        )
                    }
                }
            }
            "tema" -> {
                Box {
                    Icon(Icons.Default.ArrowDropDown, contentDescription = null, tint = colorScheme.primary)
                    DropdownMenu(
                        expanded = expandedTheme,
                        onDismissRequest = { expandedTheme = false },
                        containerColor = colorScheme.surfaceContainerHigh,
                    ) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.auto_claro), color = colorScheme.onSurface) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel.cambiarTema(false)
                                }
                                expandedTheme = false
                            },
                        )
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.auto_oscuro), color = colorScheme.onSurface) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel.cambiarTema(true)
                                }
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
                    tint = colorScheme.onSurfaceVariant,
                    modifier = Modifier.size(Dimensions.iconMedium),
                )
            }
        }
    }
}

@Composable
fun DialogHorarioSemanalPsychologist(
    horarioActual: List<FranjaHorarioDTO>?,
    onDismiss: () -> Unit,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes
    val amaniColors = AmaniTheme.colors

    // Mapeo correcto de días (1=Lunes, 7=Domingo)
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

    // Filtrar y ordenar correctamente los días
    val diasOrdenados =
        remember(horarioActual) {
            horarioActual
                ?.filter { it.diaSemana in 1..7 }
                ?.sortedBy { it.diaSemana }
                ?: emptyList()
        }

    Dialog(
        onDismissRequest = onDismiss,
    ) {
        Card(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .heightIn(max = Dimensions.dialogMaxHeight),
            shape = shapes.extraLarge,
            colors =
                CardDefaults.cardColors(
                    containerColor = colorScheme.surfaceContainerHigh,
                ),
            elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level3),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .padding(Spacing.l),
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Column {
                        Text(
                            text = stringResource(R.string.auto__horario_semanal),
                            style = typography.titleLarge,
                            fontWeight = FontWeight.Bold,
                            color = colorScheme.primary,
                        )
                        Text(
                            text = stringResource(R.string.auto_dias_y_horas_de),
                            style = typography.bodySmall,
                            color = colorScheme.onSurfaceVariant,
                            modifier = Modifier.padding(top = Spacing.xs),
                        )
                    }

                    IconButton(
                        onClick = onDismiss,
                        modifier = Modifier.size(Dimensions.avatarSmall),
                    ) {
                        Icon(
                            Icons.Default.Close,
                            contentDescription = stringResource(R.string.auto_cerrar),
                            tint = colorScheme.onSurfaceVariant,
                        )
                    }
                }

                Spacer(modifier = Modifier.height(Spacing.m))
                HorizontalDivider(color = colorScheme.outlineVariant)
                Spacer(modifier = Modifier.height(Spacing.m))

                if (diasOrdenados.isEmpty()) {
                    Box(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(Spacing.xl),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                        ) {
                            Icon(
                                imageVector = Icons.Default.AccessTime,
                                contentDescription = null,
                                tint = colorScheme.onSurfaceVariant,
                                modifier = Modifier.size(Dimensions.iconExtraLarge),
                            )
                            Spacer(modifier = Modifier.height(Spacing.s))
                            Text(
                                text = stringResource(R.string.auto_no_hay_configuracion_de),
                                style = typography.bodyMedium,
                                textAlign = TextAlign.Center,
                                color = colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                } else {
                    LazyColumn(
                        modifier = Modifier.weight(1f),
                        verticalArrangement = Arrangement.spacedBy(Spacing.s),
                    ) {
                        items(diasOrdenados) { franja ->
                            val dayName =
                                dayNames[franja.diaSemana.toInt()]
                                    ?: stringResource(R.string.settings_dia_num, franja.diaSemana.toInt())

                            Card(
                                modifier = Modifier.fillMaxWidth(),
                                shape = shapes.medium,
                                colors =
                                    CardDefaults.cardColors(
                                        containerColor =
                                            if (franja.activo) {
                                                colorScheme.primaryContainer.copy(alpha = 0.35f)
                                            } else {
                                                colorScheme.surfaceContainerLow
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
                                            style = typography.titleSmall,
                                            color =
                                                if (franja.activo) {
                                                    colorScheme.onSurface
                                                } else {
                                                    colorScheme.onSurfaceVariant
                                                },
                                        )

                                        if (franja.activo && franja.horaInicio.isNotBlank() && franja.horaFin.isNotBlank()) {
                                            Text(
                                                text = "${franja.horaInicio} - ${franja.horaFin}",
                                                style = typography.bodySmall,
                                                color = colorScheme.onSurfaceVariant,
                                                modifier = Modifier.padding(top = Spacing.xs),
                                            )
                                        } else if (!franja.activo) {
                                            Text(
                                                text = stringResource(R.string.auto__no_disponible),
                                                style = typography.bodySmall,
                                                color = colorScheme.error,
                                                modifier = Modifier.padding(top = Spacing.xs),
                                            )
                                        }
                                    }

                                    Surface(
                                        shape = CircleShape,
                                        color =
                                            if (franja.activo) {
                                                amaniColors.successContainer
                                            } else {
                                                colorScheme.errorContainer
                                            },
                                        modifier = Modifier.padding(start = Spacing.s),
                                    ) {
                                        Text(
                                            text =
                                                if (franja.activo) {
                                                    stringResource(R.string.settings_estado_activo)
                                                } else {
                                                    stringResource(R.string.settings_estado_inactivo)
                                                },
                                            style = typography.labelSmall,
                                            modifier = Modifier.padding(horizontal = Spacing.sm, vertical = Spacing.xs),
                                            color =
                                                if (franja.activo) {
                                                    amaniColors.onSuccessContainer
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
                HorizontalDivider(color = colorScheme.outlineVariant)
                Spacer(modifier = Modifier.height(Spacing.sm))

                Button(
                    onClick = onDismiss,
                    modifier = Modifier.fillMaxWidth(),
                    shape = shapes.medium,
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = colorScheme.primary,
                            contentColor = colorScheme.onPrimary,
                        ),
                ) {
                    Text(
                        stringResource(R.string.auto_cerrar),
                        style = typography.labelLarge,
                        fontWeight = FontWeight.Medium,
                    )
                }
            }
        }
    }
}

@Preview(name = "DialogHorarioPsychologist Light", showBackground = true)
@Preview(
    name = "DialogHorarioPsychologist Dark",
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
)
@Preview(name = "DialogHorarioPsychologist Large Font", showBackground = true, fontScale = 1.5f)
@Composable
private fun DialogHorarioSemanalPsychologistPreview() {
    AppTheme {
        DialogHorarioSemanalPsychologist(
            horarioActual =
                listOf(
                    FranjaHorarioDTO(diaSemana = 1, horaInicio = "09:00", horaFin = "17:00", activo = true, motivo = null),
                    FranjaHorarioDTO(diaSemana = 2, horaInicio = "09:00", horaFin = "17:00", activo = true, motivo = null),
                    FranjaHorarioDTO(diaSemana = 6, horaInicio = "", horaFin = "", activo = false, motivo = null),
                ),
            onDismiss = {},
        )
    }
}