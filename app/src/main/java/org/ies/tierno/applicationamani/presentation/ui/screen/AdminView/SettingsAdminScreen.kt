package org.ies.tierno.applicationamani.presentation.ui.screen.settings

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
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
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSession
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsAdminScreen(
    navController: NavController,
    userSessionDataStore: UserSessionDataStore
) {
    val primaryColor = Color(0xFF6C63FF)
    val backgroundColor = Color(0xFFF5F5F5)
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    // ✅ Obtener la sesión de forma reactiva (no es suspend)
    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

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
            // ==============================
            // SECCIÓN: GENERAL
            // ==============================
            item {
                SettingsCategoryCard(
                    title = "General",
                    icon = Icons.Outlined.Settings,
                    iconColor = primaryColor,
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    options = listOf(
                        SettingsOption(
                            id = "perfil",
                            title = "Perfil",
                            subtitle = "Cambia tu perfil",
                            icon = Icons.Default.Person
                        ),
                        SettingsOption(
                            id = "clinic_name",
                            title = "Nombre de la clínica",
                            subtitle = "Clínica Amani",
                            icon = Icons.Default.Business
                        ),
                        SettingsOption(
                            id = "logo",
                            title = "Logo",
                            subtitle = "Cambiar logo de la clínica",
                            icon = Icons.Default.Image
                        ),
                        SettingsOption(
                            id = "language",
                            title = "Idioma",
                            subtitle = "Español",
                            icon = Icons.Default.Language
                        ),
                        SettingsOption(
                            id = "timezone",
                            title = "Zona horaria",
                            subtitle = "Europe/Madrid",
                            icon = Icons.Default.AccessTime
                        ),
                        SettingsOption(
                            id = "currency",
                            title = "Moneda",
                            subtitle = "Euro (€)",
                            icon = Icons.Default.AttachMoney
                        ),
                        SettingsOption(
                            id = "theme_color",
                            title = "Color del sistema",
                            subtitle = "Morado (#6C63FF)",
                            icon = Icons.Default.ColorLens
                        ),
                        SettingsOption(
                            id = "dark_mode",
                            title = "Tema oscuro / claro",
                            subtitle = "Claro",
                            icon = Icons.Default.BrightnessMedium
                        )
                    )
                )
            }

            // ==============================
            // SECCIÓN: CITAS
            // ==============================
            item {
                SettingsCategoryCard(
                    title = "Citas",
                    icon = Icons.Outlined.CalendarMonth,
                    iconColor = Color(0xFFE67E22),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    options = listOf(
                        SettingsOption(
                            id = "appointment_duration",
                            title = "Duración de la cita",
                            subtitle = "45 minutos",
                            icon = Icons.Default.Timer,
                        ),
                        SettingsOption(
                            id = "working_hours",
                            title = "Horario laboral",
                            subtitle = "08:00 - 18:00",
                            icon = Icons.Default.Schedule
                        ),
                        SettingsOption(
                            id = "available_days",
                            title = "Días disponibles",
                            subtitle = "Lunes a Viernes",
                            icon = Icons.Default.CalendarToday
                        ),
                        SettingsOption(
                            id = "appointment_interval",
                            title = "Tiempo entre citas",
                            subtitle = "10 minutos",
                            icon = Icons.Default.Timelapse
                        )
                    )
                )
            }

            // ==============================
            // SECCIÓN: NOTIFICACIONES
            // ==============================
            item {
                SettingsCategoryCard(
                    title = "Notificaciones",
                    icon = Icons.Outlined.Notifications,
                    iconColor = Color(0xFF27AE60),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    options = listOf(
                        SettingsOption(
                            id = "send_reminder",
                            title = "Enviar recordatorio",
                            subtitle = "Activado",
                            icon = Icons.Default.NotificationsActive
                        ),
                        SettingsOption(
                            id = "reminder_time",
                            title = "Tiempo antes de la cita",
                            subtitle = "60 minutos",
                            icon = Icons.Default.Alarm
                        ),
                        SettingsOption(
                            id = "email_notification",
                            title = "Notificación por email",
                            subtitle = "Activado",
                            icon = Icons.Default.Email
                        ),
                        SettingsOption(
                            id = "sms_notification",
                            title = "Notificación por SMS",
                            subtitle = "Desactivado",
                            icon = Icons.Default.Sms
                        )
                    )
                )
            }

            // ==============================
            // SECCIÓN: ROLES Y PERMISOS
            // ==============================
            item {
                SettingsCategoryCard(
                    title = "Roles y Permisos",
                    icon = Icons.Outlined.People,
                    iconColor = Color(0xFF3498DB),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    options = listOf(
                        SettingsOption(
                            id = "roles",
                            title = "Roles",
                            subtitle = "Administrador · Psicólogo · Recepcionista",
                            icon = Icons.Default.AdminPanelSettings
                        ),
                        SettingsOption(
                            id = "permissions",
                            title = "Permisos",
                            subtitle = "Crear citas · Ver pacientes · Editar historial · Eliminar usuarios",
                            icon = Icons.Default.Lock
                        )
                    )
                )
            }

            // ==============================
            // SECCIÓN: SISTEMA
            // ==============================
            item {
                SettingsCategoryCard(
                    title = "Sistema",
                    icon = Icons.Outlined.Storage,
                    iconColor = Color(0xFF9B59B6),
                    roboto = roboto,
                    navController = navController,
                    session = session,
                    options = listOf(
                        SettingsOption(
                            id = "backup",
                            title = "Backup",
                            subtitle = "Última copia: 15/04/2026",
                            icon = Icons.Default.Backup
                        ),
                        SettingsOption(
                            id = "version",
                            title = "Versión",
                            subtitle = "1.0.0",
                            icon = Icons.Default.Info
                        )
                    )
                )
            }
        }
    }
}

// ==============================
// DATA CLASS
// ==============================

data class SettingsOption(
    val id: String,
    val title: String,
    val subtitle: String,
    val icon: ImageVector
)

// ==============================
// COMPONENTES REUTILIZABLES
// ==============================

@Composable
fun SettingsCategoryCard(
    title: String,
    icon: ImageVector,
    iconColor: Color,
    roboto: FontFamily,
    options: List<SettingsOption>,
    navController: NavController,
    session: UserSession?
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
            // Header de la categoría
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

            // Opciones
            options.forEachIndexed { index, option ->
                if (index > 0) {
                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                        thickness = DividerDefaults.Thickness,
                        color = Color.LightGray.copy(alpha = 0.3f)
                    )
                }

                SettingsOptionRow(
                    option = option,
                    roboto = roboto,
                    navController = navController,
                    session = session
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
    session: UserSession?
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable {
                when (option.id) {
                    "perfil" -> {
                        // ✅ Obtener el ID del psicólogo desde la sesión
                        val identificador = session?.idPsicologo

                        // Solo navegar si el usuario tiene un idPsicologo válido
                        if (identificador != null && identificador > 0L) {
                            navController.navigate(Screens.perfilPsicologo.createRoute(identificador))
                        }
                        // Si es admin o no tiene idPsicologo, no hace nada
                        // (opcional: mostrar un mensaje)
                    }
                    // Aquí irán las demás opciones en el futuro
                    else -> {
                        // Por ahora, otras opciones no implementadas
                        // Puedes mostrar un Snackbar o Toast indicando que está en desarrollo
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
                tint = Color(0xFF6C63FF),
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
                Text(
                    text = option.subtitle,
                    fontFamily = roboto,
                    fontSize = 13.sp,
                    color = Color.Gray
                )
            }
        }

        Icon(
            Icons.Default.ChevronRight,
            contentDescription = "Ir",
            tint = Color.Gray,
            modifier = Modifier.size(20.dp)
        )
    }
}