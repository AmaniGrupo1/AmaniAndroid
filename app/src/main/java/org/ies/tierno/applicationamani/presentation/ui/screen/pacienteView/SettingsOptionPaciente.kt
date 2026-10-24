package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

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
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.ContactSupport
import androidx.compose.material.icons.automirrored.filled.Help
import androidx.compose.material.icons.automirrored.filled.Logout
import androidx.compose.material.icons.filled.Alarm
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material.icons.filled.BrightnessMedium
import androidx.compose.material.icons.filled.CalendarToday
import androidx.compose.material.icons.filled.ChevronRight
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.History
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Language
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.Notifications
import androidx.compose.material.icons.filled.NotificationsActive
import androidx.compose.material.icons.filled.Payment
import androidx.compose.material.icons.filled.PersonOutline
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
import androidx.compose.material3.ColorScheme
import androidx.compose.material3.DividerDefaults
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
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
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme

private const val TAG = "SettingsPaciente"

@Composable
private fun getCurrentThemeSubtitle(currentTheme: Boolean): String =
    if (currentTheme) stringResource(R.string.auto_oscuro) else stringResource(R.string.auto_claro)

/**
 * Modelo de datos para una opción de configuración en la pantalla de ajustes del paciente.
 *
 * @property id Identificador único de la opción.
 * @property title Título descriptivo.
 * @property subtitle Texto secundario con información adicional.
 * @property icon Icono vectorial asociado.
 */
data class SettingsOptionPaciente(
    val id: String,
    val title: String,
    val subtitle: String,
    val icon: ImageVector,
)

/**
 * Pantalla de ajustes del perfil del paciente.
 *
 * Permite al paciente cambiar el idioma, el tema visual, gestionar
 * notificaciones, ver documentos legales, acceder al soporte y cerrar
 * sesión. Los cambios de idioma provocan la recreación de la Activity.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param userSessionDataStore Almacén de sesión del usuario.
 * @param idiomaViewModel ViewModel que gestiona el cambio de idioma y tema.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsPacienteScreen(
    navController: NavController,
    userSessionDataStore: UserSessionDataStore,
    idiomaViewModel: IdiomaViewModel,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val isDark = isDarkTheme()

    val currentTema by idiomaViewModel.tema.collectAsStateWithLifecycle()
    val currentLanguage by idiomaViewModel.idioma.collectAsStateWithLifecycle()
    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

    Log.d(TAG, "[Recomposición] Idioma actual: $currentLanguage")

    Scaffold(
        modifier = modifier,
        containerColor = colorScheme.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.configuracion),
                        style = typography.titleLarge,
                        fontWeight = FontWeight.SemiBold,
                        color = colorScheme.onSurface,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                            tint = colorScheme.onSurface,
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
    ) { padding ->
        LazyColumn(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(padding)
                    .background(colorScheme.background),
            contentPadding = PaddingValues(Spacing.m),
            verticalArrangement = Arrangement.spacedBy(Spacing.m),
        ) {
            item(key = "perfil") {
                SettingsCategoryCardPaciente(
                    title = stringResource(R.string.perfil),
                    icon = Icons.Outlined.Person,
                    iconColor = colorScheme.primary,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    colorScheme = colorScheme,
                    typography = typography,
                    isDark = isDark,
                    options =
                        listOf(
                            SettingsOptionPaciente(
                                id = "mi_perfil",
                                title = stringResource(R.string.perfil),
                                subtitle = stringResource(R.string.editar_datos_personales),
                                icon = Icons.Default.PersonOutline,
                            ),
                            SettingsOptionPaciente(
                                id = "mi_psicologo",
                                title = stringResource(R.string.mi_psicologo),
                                subtitle = stringResource(R.string.ver_info_psicologo),
                                icon = Icons.Default.MedicalServices,
                            ),
                            SettingsOptionPaciente(
                                id = "historial",
                                title = stringResource(R.string.historial_clinico),
                                subtitle = stringResource(R.string.ver_historial),
                                icon = Icons.Default.History,
                            ),
                        ),
                )
            }

            item(key = "preferencias") {
                SettingsCategoryCardPaciente(
                    title = stringResource(R.string.preferencias),
                    icon = Icons.Outlined.Settings,
                    iconColor = colorScheme.secondary,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    colorScheme = colorScheme,
                    typography = typography,
                    isDark = isDark,
                    options =
                        listOf(
                            SettingsOptionPaciente(
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
                            SettingsOptionPaciente(
                                id = "notificaciones",
                                title = stringResource(R.string.notificaciones),
                                subtitle = stringResource(R.string.configurar_notificaciones),
                                icon = Icons.Default.Notifications,
                            ),
                            SettingsOptionPaciente(
                                id = "recordatorios",
                                title = stringResource(R.string.recordatorios),
                                subtitle = stringResource(R.string.recordatorios_citas),
                                icon = Icons.Default.Alarm,
                            ),
                            SettingsOptionPaciente(
                                id = "tema",
                                title = stringResource(R.string.tema),
                                subtitle = getCurrentThemeSubtitle(currentTema),
                                icon = Icons.Default.BrightnessMedium,
                            ),
                        ),
                )
            }

            item(key = "citas") {
                SettingsCategoryCardPaciente(
                    title = stringResource(R.string.mis_citas),
                    icon = Icons.Outlined.CalendarMonth,
                    iconColor = colorScheme.tertiary,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    colorScheme = colorScheme,
                    typography = typography,
                    isDark = isDark,
                    options =
                        listOf(
                            SettingsOptionPaciente(
                                id = "proximas_citas",
                                title = stringResource(R.string.proximas_citas),
                                subtitle = stringResource(R.string.ver_citas_proximas),
                                icon = Icons.Default.CalendarToday,
                            ),
                            SettingsOptionPaciente(
                                id = "historial_citas",
                                title = stringResource(R.string.historial_citas),
                                subtitle = stringResource(R.string.citas_pasadas),
                                icon = Icons.Default.History,
                            ),
                            SettingsOptionPaciente(
                                id = "recordatorios_citas",
                                title = stringResource(R.string.recordatorios_citas),
                                subtitle = stringResource(R.string.configurar_recordatorios),
                                icon = Icons.Default.NotificationsActive,
                            ),
                        ),
                )
            }

            item(key = "facturacion") {
                SettingsCategoryCardPaciente(
                    title = stringResource(R.string.facturacion),
                    icon = Icons.Outlined.Receipt,
                    iconColor = colorScheme.primary,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    colorScheme = colorScheme,
                    typography = typography,
                    isDark = isDark,
                    options =
                        listOf(
                            SettingsOptionPaciente(
                                id = "metodos_pago",
                                title = stringResource(R.string.metodos_pago),
                                subtitle = stringResource(R.string.gestionar_pagos),
                                icon = Icons.Default.Payment,
                            ),
                            SettingsOptionPaciente(
                                id = "historial_pagos",
                                title = stringResource(R.string.historial_pagos),
                                subtitle = stringResource(R.string.ver_pagos_realizados),
                                icon = Icons.Default.Receipt,
                            ),
                            SettingsOptionPaciente(
                                id = "facturas",
                                title = stringResource(R.string.facturas),
                                subtitle = stringResource(R.string.descargar_facturas),
                                icon = Icons.Default.Description,
                            ),
                        ),
                )
            }

            item(key = "soporte") {
                SettingsCategoryCardPaciente(
                    title = stringResource(R.string.soporte),
                    icon = Icons.Outlined.SupportAgent,
                    iconColor = colorScheme.secondary,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    colorScheme = colorScheme,
                    typography = typography,
                    isDark = isDark,
                    options =
                        listOf(
                            SettingsOptionPaciente(
                                id = "ayuda",
                                title = stringResource(R.string.ayuda),
                                subtitle = stringResource(R.string.preguntas_frecuentes),
                                icon = Icons.AutoMirrored.Filled.Help,
                            ),
                            SettingsOptionPaciente(
                                id = "contacto",
                                title = stringResource(R.string.contacto),
                                subtitle = stringResource(R.string.contactar_soporte),
                                icon = Icons.AutoMirrored.Filled.ContactSupport,
                            ),
                            SettingsOptionPaciente(
                                id = "reportar_problema",
                                title = stringResource(R.string.reportar_problema),
                                subtitle = stringResource(R.string.enviar_reporte),
                                icon = Icons.Default.ReportProblem,
                            ),
                        ),
                )
            }

            item(key = "sistema") {
                SettingsCategoryCardPaciente(
                    title = stringResource(R.string.sistema),
                    icon = Icons.Outlined.Storage,
                    iconColor = colorScheme.tertiary,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    colorScheme = colorScheme,
                    typography = typography,
                    isDark = isDark,
                    options =
                        listOf(
                            SettingsOptionPaciente(
                                id = "version",
                                title = stringResource(R.string.version),
                                subtitle = stringResource(R.string.version_actual, "1.0.0"),
                                icon = Icons.Default.Info,
                            ),
                            SettingsOptionPaciente(
                                id = "terminos",
                                title = stringResource(R.string.terminos_condiciones),
                                subtitle = stringResource(R.string.leer_terminos),
                                icon = Icons.Default.Description,
                            ),
                            SettingsOptionPaciente(
                                id = "privacidad",
                                title = stringResource(R.string.politica_privacidad),
                                subtitle = stringResource(R.string.ver_politica),
                                icon = Icons.Default.Lock,
                            ),
                            SettingsOptionPaciente(
                                id = "cerrar_sesion",
                                title = stringResource(R.string.cerrar_sesion),
                                subtitle = stringResource(R.string.salir_aplicacion),
                                icon = Icons.AutoMirrored.Filled.Logout,
                            ),
                        ),
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
    options: List<SettingsOptionPaciente>,
    navController: NavController,
    session: UserSession?,
    currentLanguage: String,
    currentTema: Boolean,
    idiomaViewModel: IdiomaViewModel?,
    colorScheme: ColorScheme,
    typography: androidx.compose.material3.Typography,
    isDark: Boolean,
    modifier: Modifier = Modifier,
) {
    Card(
        modifier = modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.medium,
        colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2),
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
                            .clip(MaterialTheme.shapes.small)
                            .background(iconColor.copy(alpha = 0.1f)),
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

                SettingsOptionRowPaciente(
                    option = option,
                    navController = navController,
                    session = session,
                    currentLanguage = currentLanguage,
                    currentTema = currentTema,
                    idiomaViewModel = idiomaViewModel,
                    colorScheme = colorScheme,
                    typography = typography,
                    isDark = isDark,
                )
            }
        }
    }
}

@Composable
fun SettingsOptionRowPaciente(
    option: SettingsOptionPaciente,
    navController: NavController,
    session: UserSession?,
    currentLanguage: String,
    currentTema: Boolean,
    idiomaViewModel: IdiomaViewModel?,
    colorScheme: ColorScheme,
    typography: androidx.compose.material3.Typography,
    isDark: Boolean,
    modifier: Modifier = Modifier,
) {
    val scope = rememberCoroutineScope()
    var expandedIdioma by remember { mutableStateOf(false) }
    var expandedTema by remember { mutableStateOf(false) }

    Row(
        modifier =
            modifier
                .fillMaxWidth()
                .clickable {
                    when (option.id) {
                        "language" -> expandedIdioma = true
                        "tema" -> expandedTema = true

                        "mi_perfil" -> {
                            val identificador = session?.idPaciente
                            if (identificador != null && identificador > 0L) {
                                navController.navigate(
                                    Screens.perfilPaciente.createRoute(identificador),
                                )
                            }
                        }

                        "mi_psicologo" -> {
                            Log.d(TAG, "Navegar a información del psicólogo")
                        }

                        "historial" -> {
                            val pacienteId = session?.idPaciente
                            Log.d(TAG, "CLICK HISTORIAL CLÍNICO")

                            if (pacienteId != null && pacienteId > 0L) {
                                navController.navigate(
                                    Screens.historialClinico.createRoute(pacienteId),
                                )
                            } else {
                                Log.e(TAG, "ERROR: idPaciente es NULL o inválido")
                            }
                        }

                        "notificaciones" -> {
                            Log.d(TAG, "Navegar a notificaciones")
                        }

                        "recordatorios" -> {
                            Log.d(TAG, "Navegar a recordatorios")
                        }

                        "proximas_citas" -> {
                            Log.d(TAG, "Navegar a próximas citas")
                        }

                        "historial_citas" -> {
                            Log.d(TAG, "Navegar a historial de citas")
                        }

                        "metodos_pago" -> {
                            Log.d(TAG, "Navegar a métodos de pago")
                        }

                        "historial_pagos" -> {
                            Log.d(TAG, "Navegar a historial de pagos")
                        }

                        "ayuda" -> {
                            Log.d(TAG, "Navegar a ayuda")
                        }

                        "contacto" -> {
                            Log.d(TAG, "Navegar a contacto")
                        }

                        "terminos" -> {
                            navController.navigate(Screens.documentoLegalDetail.createRoute("terminos"))
                        }
                        "privacidad" -> {
                            navController.navigate(Screens.documentoLegalDetail.createRoute("privacidad"))
                        }

                        "cerrar_sesion" -> {
                            navController.navigate(Screens.login.route) {
                                popUpTo(0)
                            }
                        }
                        "reportar_problema" -> {
                            navController.navigate(Screens.reportarProblema.route)
                        }
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
                    Icon(Icons.Default.ArrowDropDown, contentDescription = null, tint = colorScheme.onSurfaceVariant)

                    DropdownMenu(
                        expanded = expandedIdioma,
                        onDismissRequest = { expandedIdioma = false },
                        containerColor = colorScheme.surfaceContainerHigh,
                    ) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.espanol), style = typography.bodyMedium) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel?.cambiarIdioma("es")
                                }
                                expandedIdioma = false
                            },
                        )

                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.ingles), style = typography.bodyMedium) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel?.cambiarIdioma("en")
                                }
                                expandedIdioma = false
                            },
                        )

                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.catalan), style = typography.bodyMedium) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel?.cambiarIdioma("ca")
                                }
                                expandedIdioma = false
                            },
                        )
                    }
                }
            }
            "tema" -> {
                Box {
                    Icon(Icons.Default.ArrowDropDown, contentDescription = null, tint = colorScheme.onSurfaceVariant)

                    DropdownMenu(
                        expanded = expandedTema,
                        onDismissRequest = { expandedTema = false },
                        containerColor = colorScheme.surfaceContainerHigh,
                    ) {
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.auto_claro), style = typography.bodyMedium) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel?.cambiarTema(false)
                                }
                                expandedTema = false
                            },
                        )
                        DropdownMenuItem(
                            text = { Text(stringResource(R.string.auto_oscuro), style = typography.bodyMedium) },
                            onClick = {
                                scope.launch {
                                    idiomaViewModel?.cambiarTema(true)
                                }
                                expandedTema = false
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

@Preview(name = "Light", showBackground = true)
@Preview(name = "Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "FontScale 1.5x", fontScale = 1.5f, showBackground = true)
@Composable
private fun SettingsCategoryCardPacientePreview() {
    AppTheme {
        SettingsCategoryCardPaciente(
            title = "Perfil",
            icon = Icons.Outlined.Person,
            iconColor = MaterialTheme.colorScheme.primary,
            options =
                listOf(
                    SettingsOptionPaciente(
                        id = "mi_perfil",
                        title = "Mi perfil",
                        subtitle = "Editar datos personales",
                        icon = Icons.Default.PersonOutline,
                    ),
                    SettingsOptionPaciente(
                        id = "mi_psicologo",
                        title = "Mi psicólogo",
                        subtitle = "Ver información del psicólogo",
                        icon = Icons.Default.MedicalServices,
                    ),
                ),
            navController = rememberNavController(),
            session = null,
            currentLanguage = "es",
            currentTema = false,
            idiomaViewModel = null,
            colorScheme = MaterialTheme.colorScheme,
            typography = MaterialTheme.typography,
            isDark = isDarkTheme(),
        )
    }
}
