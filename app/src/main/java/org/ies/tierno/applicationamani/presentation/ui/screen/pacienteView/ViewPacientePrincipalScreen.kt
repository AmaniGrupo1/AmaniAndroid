package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Badge
import androidx.compose.material.icons.filled.CalendarMonth
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.Psychology
import androidx.compose.material.icons.filled.School
import androidx.compose.material.icons.outlined.AccessTime
import androidx.compose.material.icons.outlined.LocationOn
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import coil.compose.rememberAsyncImagePainter
import coil.request.ImageRequest
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.TokenHolder
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.PacienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
import org.ies.tierno.applicationamani.ui.theme.CardColors
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.koin.androidx.compose.koinViewModel
import org.koin.compose.getKoin
import org.koin.compose.koinInject
import java.time.LocalDateTime

/**
 * Pantalla principal del paciente con la información de su psicólogo asignado.
 *
 * Muestra los datos del psicólogo (nombre, especialidad, experiencia,
 * licencia, descripción) obtenidos desde [PacienteViewModel] y
 * [ProfilePsicologoViewModel]. Incluye un botón para navegar a la agenda
 * de citas.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param profilePsicologoViewModel ViewModel que gestiona el perfil del psicólogo.
 * @param pacienteViewModel ViewModel que gestiona los datos del paciente.
 * @param userSessionDataStore Almacén de sesión del usuario.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ViewPacientePrincipalScreen(
    navController: NavController,
    profilePsicologoViewModel: ProfilePsicologoViewModel,
    pacienteViewModel: PacienteViewModel = koinViewModel(),
    userSessionDataStore: UserSessionDataStore = getKoin().get()
) {
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

    val pacienteInfo by profilePsicologoViewModel.pacientesProfile.collectAsState()
    val isLoadingPaciente by profilePsicologoViewModel.isLoading.collectAsState()

    val psicologo by pacienteViewModel.psicologoAsignado.collectAsState()
    val isLoadingPsicologo by pacienteViewModel.isLoading.collectAsState()
    val errorPsicologo by pacienteViewModel.error.collectAsState()

    LaunchedEffect(session) {
        val idPaciente = session?.idPaciente ?: return@LaunchedEffect
        profilePsicologoViewModel.fetchProfile(idPaciente)
        pacienteViewModel.cargarPsicologoAsignado(idPaciente)
    }

    val isLoading = isLoadingPaciente || isLoadingPsicologo
    val error = errorPsicologo

    val nombrePaciente = pacienteInfo?.usuario?.nombre?.split(" ")?.firstOrNull()
        ?: session?.nombre?.split(" ")?.firstOrNull()
        ?: "Paciente"

    val hora = LocalDateTime.now().hour
    val saludo = when {
        hora < 12 -> "🌅 Buenos días"
        hora < 18 -> "☀️ Buenas tardes"
        else -> "🌙 Buenas noches"
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        "Mi Psicólogo",
                        fontWeight = FontWeight.Bold,
                        fontSize = 20.sp,
                        color = Color.White
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = Color.White
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.primary,
                    titleContentColor = Color.White,
                    navigationIconContentColor = Color.White
                )
            )
        }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .background(if (isDark) Color.Black else screenColors.background)
        ) {
            when {
                isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center
                        ) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(48.dp),
                                color = MaterialTheme.colorScheme.primary,
                                strokeWidth = 3.dp
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                "Cargando tu información...",
                                fontSize = 14.sp,
                                color = if (isDark) Color.White.copy(alpha = 0.7f) else MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }

                psicologo != null -> {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .verticalScroll(rememberScrollState())
                    ) {
                        GreetingCard(
                            nombrePaciente = nombrePaciente,
                            saludo = saludo,
                            isDark = isDark
                        )

                        PsicologoContent(
                            psicologo = psicologo!!,
                            navController = navController,
                            isDark = isDark,
                            cardColors = cardColors
                        )
                    }
                }

                error != null -> {
                    ErrorState(
                        error = error,
                        onRetry = {
                            val idPaciente = session?.idPaciente ?: return@ErrorState
                            pacienteViewModel.cargarPsicologoAsignado(idPaciente)
                            profilePsicologoViewModel.fetchProfile(idPaciente)
                        },
                        isDark = isDark
                    )
                }

                else -> {
                    NoPsicologoAssignedState(navController, isDark)
                }
            }
        }
    }
}

@Composable
fun GreetingCard(
    nombrePaciente: String,
    saludo: String,
    isDark: Boolean
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(bottomStart = 24.dp, bottomEnd = 24.dp),
        color = if (isDark) Color.Black else MaterialTheme.colorScheme.primary
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(24.dp)
        ) {
            Text(
                text = saludo,
                fontSize = 14.sp,
                color = if (isDark) Color.White.copy(alpha = 0.9f) else Color.White.copy(alpha = 0.9f),
                fontWeight = FontWeight.Medium
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = "$nombrePaciente 👋",
                fontSize = 28.sp,
                fontWeight = FontWeight.Bold,
                color = if (isDark) Color.White else Color.White
            )
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = "Tu bienestar es nuestra prioridad",
                fontSize = 14.sp,
                color = if (isDark) Color.White.copy(alpha = 0.8f) else Color.White.copy(alpha = 0.8f)
            )
        }
    }
}

@Composable
fun ErrorState(
    error: String?,
    onRetry: () -> Unit,
    isDark: Boolean
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(
            Icons.Default.Error,
            contentDescription = "Error",
            modifier = Modifier.size(80.dp),
            tint = MaterialTheme.colorScheme.error
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(
            text = "Error al cargar los datos",
            fontSize = 20.sp,
            fontWeight = FontWeight.Bold,
            color = if (isDark) Color.White else MaterialTheme.colorScheme.error
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(
            text = error ?: "Error desconocido",
            fontSize = 14.sp,
            color = if (isDark) Color.White.copy(alpha = 0.7f) else MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center
        )
        Spacer(modifier = Modifier.height(24.dp))
        Button(
            onClick = onRetry,
            colors = ButtonDefaults.buttonColors(
                containerColor = MaterialTheme.colorScheme.primary
            ),
            shape = RoundedCornerShape(12.dp)
        ) {
            Text("Reintentar", color = Color.White)
        }
    }
}

@Composable
fun NoPsicologoAssignedState(
    navController: NavController,
    isDark: Boolean
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Surface(
            modifier = Modifier.size(120.dp),
            shape = CircleShape,
            color = MaterialTheme.colorScheme.primary.copy(alpha = 0.1f)
        ) {
            Box(contentAlignment = Alignment.Center) {
                Icon(
                    Icons.Default.Psychology,
                    contentDescription = "Sin psicólogo",
                    modifier = Modifier.size(64.dp),
                    tint = MaterialTheme.colorScheme.primary
                )
            }
        }

        Spacer(modifier = Modifier.height(24.dp))

        Text(
            text = "Aún no tienes un psicólogo asignado",
            fontSize = 22.sp,
            fontWeight = FontWeight.Bold,
            color = if (isDark) Color.White else MaterialTheme.colorScheme.onSurface,
            textAlign = TextAlign.Center
        )

        Spacer(modifier = Modifier.height(12.dp))

        Text(
            text = "Un administrador te asignará un profesional de la salud mental. Pronto podrás ver sus datos aquí.",
            fontSize = 14.sp,
            color = if (isDark) Color.White.copy(alpha = 0.7f) else MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center,
            modifier = Modifier.padding(horizontal = 16.dp)
        )

        Spacer(modifier = Modifier.height(32.dp))

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(16.dp),
            colors = CardDefaults.cardColors(
                containerColor = if (isDark) Color(0xFF2D2D2D) else MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
            )
        ) {
            Column(
                modifier = Modifier.padding(16.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                Text(
                    text = "📌 ¿Qué puedes hacer mientras tanto?",
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Bold,
                    color = if (isDark) Color.White else MaterialTheme.colorScheme.onSurface
                )
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = "• Explora nuestros recursos informativos\n• Prepara tus preguntas para la primera sesión\n• Completa tu perfil de paciente",
                    fontSize = 12.sp,
                    color = if (isDark) Color.White.copy(alpha = 0.7f) else MaterialTheme.colorScheme.onSurfaceVariant,
                    lineHeight = 18.sp
                )
            }
        }

        Spacer(modifier = Modifier.height(24.dp))

        Button(
            onClick = { navController.navigateUp() },
            colors = ButtonDefaults.buttonColors(
                containerColor = MaterialTheme.colorScheme.primary,
                contentColor = Color.White
            ),
            shape = RoundedCornerShape(12.dp),
            modifier = Modifier.fillMaxWidth()
        ) {
            Text("Volver al inicio", modifier = Modifier.padding(vertical = 4.dp))
        }
    }
}

private const val BASE_URL = "http://192.168.1.175:8080"

fun buildFullImageUrl(relativeUrl: String?): String {
    if (relativeUrl.isNullOrEmpty()) return ""

    return if (relativeUrl.startsWith("http")) {
        relativeUrl
    } else {
        "$BASE_URL$relativeUrl"
    }
}

@Composable
fun PsicologoContent(
    psicologo: PsicologoProfileResponseDTO,
    navController: NavController,
    isDark: Boolean,
    cardColors: CardColors
) {
    val cardBackgroundColor = cardColors.cardBackground
    val cardContentColor = cardColors.cardContent
    val cardContentSecondaryColor = cardColors.cardContent.copy(alpha = 0.7f)

    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(horizontal = 16.dp)
            .padding(bottom = 24.dp)
    ) {
        Spacer(modifier = Modifier.height(16.dp))

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(20.dp),
            colors = CardDefaults.cardColors(
                containerColor = cardBackgroundColor
            ),
            elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(24.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                Box(
                    modifier = Modifier
                        .size(130.dp)
                        .clip(CircleShape)
                        .background(
                            brush = Brush.linearGradient(
                                colors = listOf(
                                    MaterialTheme.colorScheme.primary,
                                    MaterialTheme.colorScheme.primary.copy(alpha = 0.5f)
                                )
                            ),
                            shape = CircleShape
                        )
                        .padding(3.dp)
                ) {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .clip(CircleShape)
                            .background(if (isDark) Color(0xFF2D2D2D) else Color.White)
                    ) {
                        val fotoUrl = buildFullImageUrl(psicologo.usuario?.fotoPerfilUrl)

                        val context = LocalContext.current
                        val tokenHolder = koinInject<TokenHolder>()
                        val token = tokenHolder.getToken()

                        val request = remember(fotoUrl, token) {
                            ImageRequest.Builder(context)
                                .data(fotoUrl)
                                .addHeader("Authorization", "Bearer $token")
                                .crossfade(true)
                                .placeholder(R.drawable.ic_default_avatar)
                                .error(R.drawable.ic_default_avatar)
                                .build()
                        }
                        if (!fotoUrl.isNullOrBlank()) {
                            Image(
                                painter = rememberAsyncImagePainter(model = request),
                                contentDescription = "Foto de perfil",
                                modifier = Modifier.fillMaxSize(),
                                contentScale = ContentScale.Crop
                            )
                        } else {
                            Image(
                                painter = painterResource(R.drawable.ic_default_avatar),
                                contentDescription = "Foto por defecto",
                                modifier = Modifier.fillMaxSize(),
                                contentScale = ContentScale.Crop
                            )
                        }
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                Text(
                    text = "${psicologo.usuario?.nombre ?: ""} ${psicologo.usuario?.apellido ?: ""}".trim(),
                    fontSize = 22.sp,
                    fontWeight = FontWeight.Bold,
                    color = cardContentColor
                )

                if (!psicologo.especialidad.isNullOrBlank()) {
                    Spacer(modifier = Modifier.height(8.dp))
                    Surface(
                        shape = RoundedCornerShape(20.dp),
                        color = MaterialTheme.colorScheme.primary.copy(alpha = if (isDark) 0.25f else 0.15f)
                    ) {
                        Text(
                            text = psicologo.especialidad ?: "",
                            fontSize = 13.sp,
                            fontWeight = FontWeight.Medium,
                            color = if (isDark) Color.White else MaterialTheme.colorScheme.primary,
                            modifier = Modifier.padding(horizontal = 16.dp, vertical = 6.dp)
                        )
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                if (!psicologo.usuario?.email.isNullOrBlank()) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.padding(vertical = 4.dp)
                    ) {
                        Icon(
                            Icons.Default.Email,
                            contentDescription = "Email",
                            modifier = Modifier.size(18.dp),
                            tint = cardContentSecondaryColor
                        )
                        Spacer(modifier = Modifier.width(12.dp))
                        Text(
                            text = psicologo.usuario?.email ?: "",
                            fontSize = 14.sp,
                            color = cardContentSecondaryColor
                        )
                    }
                }
            }
        }

        Spacer(modifier = Modifier.height(16.dp))

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(20.dp),
            colors = CardDefaults.cardColors(
                containerColor = cardBackgroundColor
            ),
            elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(20.dp)
            ) {
                Text(
                    text = "📋 Información Profesional",
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Bold,
                    color = cardContentColor
                )

                Spacer(modifier = Modifier.height(16.dp))

                if (psicologo.experiencia != null && psicologo.experiencia > 0) {
                    ProfessionalInfoRow(
                        icon = Icons.Default.School,
                        label = "Años de experiencia",
                        value = "${psicologo.experiencia} años",
                        iconColor = MaterialTheme.colorScheme.primary,
                        labelColor = cardContentSecondaryColor,
                        valueColor = cardContentColor
                    )
                }

                if (!psicologo.licencia.isNullOrBlank()) {
                    ProfessionalInfoRow(
                        icon = Icons.Default.Badge,
                        label = "Número de Colegiado",
                        value = psicologo.licencia ?: "",
                        iconColor = MaterialTheme.colorScheme.primary,
                        labelColor = cardContentSecondaryColor,
                        valueColor = cardContentColor
                    )
                }

                ProfessionalInfoRow(
                    icon = Icons.Outlined.AccessTime,
                    label = "Horario de atención",
                    value = "Lunes a Viernes: 9:00 - 20:00",
                    iconColor = MaterialTheme.colorScheme.primary,
                    labelColor = cardContentSecondaryColor,
                    valueColor = cardContentColor
                )

                ProfessionalInfoRow(
                    icon = Icons.Outlined.LocationOn,
                    label = "Modalidad",
                    value = "Presencial y Online",
                    iconColor = MaterialTheme.colorScheme.primary,
                    labelColor = cardContentSecondaryColor,
                    valueColor = cardContentColor
                )
            }
        }

        Spacer(modifier = Modifier.height(16.dp))

        if (!psicologo.descripcion.isNullOrBlank()) {
            Card(
                modifier = Modifier.fillMaxWidth(),
                shape = RoundedCornerShape(20.dp),
                colors = CardDefaults.cardColors(
                    containerColor = cardBackgroundColor
                ),
                elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(20.dp)
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        Text(
                            text = "💬 Sobre mí",
                            fontSize = 18.sp,
                            fontWeight = FontWeight.Bold,
                            color = cardContentColor,
                            modifier = Modifier.weight(1f)
                        )
                        Icon(
                            Icons.Default.Psychology,
                            contentDescription = "Psicología",
                            tint = MaterialTheme.colorScheme.primary.copy(alpha = 0.5f),
                            modifier = Modifier.size(24.dp)
                        )
                    }

                    Spacer(modifier = Modifier.height(12.dp))

                    Text(
                        text = psicologo.descripcion ?: "",
                        fontSize = 14.sp,
                        lineHeight = 22.sp,
                        color = cardContentSecondaryColor
                    )
                }
            }
        }

        Spacer(modifier = Modifier.height(24.dp))

        Button(
            onClick = { navController.navigate(Screens.citas.route) },
            modifier = Modifier
                .fillMaxWidth()
                .height(52.dp),
            colors = ButtonDefaults.buttonColors(
                containerColor = MaterialTheme.colorScheme.primary,
                contentColor = Color.White
            ),
            shape = RoundedCornerShape(12.dp),
            elevation = ButtonDefaults.buttonElevation(defaultElevation = 4.dp)
        ) {
            Icon(
                Icons.Default.CalendarMonth,
                contentDescription = "Citas",
                modifier = Modifier.size(20.dp),
                tint = Color.White
            )
            Spacer(modifier = Modifier.width(12.dp))
            Text(
                "Ver mis citas",
                modifier = Modifier.padding(vertical = 4.dp),
                fontSize = 16.sp,
                fontWeight = FontWeight.Medium,
                color = Color.White
            )
        }

        Spacer(modifier = Modifier.height(32.dp))
    }
}

/**
 * Fila informativa profesional con icono, etiqueta y valor.
 *
 * @param icon Icono vectorial representativo.
 * @param label Etiqueta descriptiva del campo.
 * @param value Valor del campo a mostrar.
 * @param iconColor Color del icono.
 * @param labelColor Color de la etiqueta.
 * @param valueColor Color del valor.
 */
@Composable
fun ProfessionalInfoRow(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    label: String,
    value: String,
    iconColor: Color,
    labelColor: Color,
    valueColor: Color
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp),
        verticalAlignment = Alignment.Top
    ) {
        Icon(
            icon,
            contentDescription = label,
            modifier = Modifier.size(20.dp),
            tint = iconColor
        )
        Spacer(modifier = Modifier.width(12.dp))
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = label,
                fontSize = 12.sp,
                color = labelColor
            )
            Text(
                text = value,
                fontSize = 14.sp,
                fontWeight = FontWeight.Medium,
                color = valueColor
            )
        }
    }
}