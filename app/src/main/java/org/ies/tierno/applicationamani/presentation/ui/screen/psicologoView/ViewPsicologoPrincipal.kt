package org.ies.tierno.applicationamani.presentation.ui.screens.psicologo

import android.annotation.SuppressLint
import android.content.Intent
import android.net.Uri
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.animateContentSize
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.tween
import androidx.compose.animation.expandVertically
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.shrinkVertically
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
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
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Warning
import androidx.compose.material.icons.outlined.Badge
import androidx.compose.material.icons.outlined.Email
import androidx.compose.material.icons.outlined.Phone
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.componente.psicologo.MenuSetting
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.ListarPacientesByPsicologoViewModel
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDate
import java.time.format.DateTimeFormatter

// Colores originales para el modo DEFECTO
object AmaniPsicologoDefaultColors {
    val Primary = Color(0xFF6B4E71)
    val PrimaryLight = Color(0xFF9B7E9F)
    val PrimaryDark = Color(0xFF4A2B50)
    val Secondary = Color(0xFFE8B4B8)
    val Accent = Color(0xFFF5E6E8)
    val Surface = Color(0xFFFFFFFF)
    val Background = Color(0xFFFDF8F9)
    val TextPrimary = Color(0xFF2D1B30)
    val TextSecondary = Color(0xFF7A6B7E)
    val Success = Color(0xFF81C784)
    val Warning = Color(0xFFFFB74D)
    val Error = Color(0xFFE57373)
    val Info = Color(0xFF64B5F6)
}

@RequiresApi(Build.VERSION_CODES.O)
@SuppressLint("UnusedMaterial3ScaffoldPaddingParameter")
@Composable
fun ViewPsicologoPrincipal(
    userSessionDataStore: UserSessionDataStore,
    navController: NavController,
    viewModel: ListarPacientesByPsicologoViewModel = koinViewModel(),
    profilePsicologoViewModel: ProfilePsicologoViewModel = koinViewModel()
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Determinar colores según el tema
    val colors = if (isDark) {
        PsicologoThemeColors(
            primary = MaterialTheme.colorScheme.primary,
            primaryLight = MaterialTheme.colorScheme.primary.copy(alpha = 0.7f),
            primaryDark = Color.DarkGray,
            secondary = Color.Gray,
            accent = cardColors.cardBackground,
            surface = cardColors.cardBackground,
            background = screenColors.background,
            textPrimary = cardColors.cardContent,
            textSecondary = cardColors.cardContent.copy(alpha = 0.7f),
            success = AmaniPsicologoDefaultColors.Success,
            warning = AmaniPsicologoDefaultColors.Warning,
            error = AmaniPsicologoDefaultColors.Error,
            info = AmaniPsicologoDefaultColors.Info
        )
    } else {
        PsicologoThemeColors(
            primary = AmaniPsicologoDefaultColors.Primary,
            primaryLight = AmaniPsicologoDefaultColors.PrimaryLight,
            primaryDark = AmaniPsicologoDefaultColors.PrimaryDark,
            secondary = AmaniPsicologoDefaultColors.Secondary,
            accent = AmaniPsicologoDefaultColors.Accent,
            surface = AmaniPsicologoDefaultColors.Surface,
            background = AmaniPsicologoDefaultColors.Background,
            textPrimary = AmaniPsicologoDefaultColors.TextPrimary,
            textSecondary = AmaniPsicologoDefaultColors.TextSecondary,
            success = AmaniPsicologoDefaultColors.Success,
            warning = AmaniPsicologoDefaultColors.Warning,
            error = AmaniPsicologoDefaultColors.Error,
            info = AmaniPsicologoDefaultColors.Info
        )
    }

    val pacientes by viewModel.pacientes.collectAsState()
    var isLoadingData by remember { mutableStateOf(true) }

    var idPsicologo by remember { mutableStateOf<Long?>(null) }
    var isLoadingSession by remember { mutableStateOf(true) }

    LaunchedEffect(Unit) {
        val session = userSessionDataStore.getSession()
        idPsicologo = session?.idPsicologo
        isLoadingSession = false

        if (idPsicologo != null) {
            viewModel.cargarPacientes(idPsicologo!!)
            profilePsicologoViewModel.fetchProfile(idPsicologo!!)
        }

        isLoadingData = false
    }

    val isLoading = isLoadingSession || (isLoadingData && pacientes.isEmpty())

    val listState = rememberLazyListState()

    if (isLoadingSession) {
        Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
            CircularProgressIndicator(
                modifier = Modifier.size(48.dp),
                color = colors.primary,
                strokeWidth = 3.dp
            )
        }
        return
    }

    if (idPsicologo == null) {
        Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Icon(
                    imageVector = Icons.Default.Error,
                    contentDescription = null,
                    modifier = Modifier.size(64.dp),
                    tint = colors.error
                )
                Spacer(modifier = Modifier.height(16.dp))
                Text(
                    text = stringResource(R.string.error_sesion),
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Bold,
                    color = colors.textPrimary,
                    fontFamily = roboto
                )
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = stringResource(R.string.no_encontrado_id_psicologo),
                    fontSize = 14.sp,
                    color = colors.textSecondary,
                    fontFamily = roboto
                )
                Spacer(modifier = Modifier.height(24.dp))
                Button(
                    onClick = { navController.navigate(Screens.login.route) },
                    shape = RoundedCornerShape(12.dp),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = colors.primary,
                        contentColor = if (isDark) Color.Black else Color.White
                    )
                ) {
                    Text(stringResource(R.string.volver_login), fontFamily = roboto)
                }
            }
        }
        return
    }

    Scaffold(
        topBar = { MenuSetting(navController = navController, idPsicologo = idPsicologo) },
        containerColor = colors.background,
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    navController.navigate(Screens.registroPacienteDesdePsicologo.route)
                },
                containerColor = colors.primary,
                contentColor = if (isDark) Color.Black else Color.White
            ) {
                Icon(
                    Icons.Default.Add,
                    contentDescription = stringResource(R.string.agregar_paciente)
                )
            }
        }
    ) { innerPadding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
        ) {
            when {
                isLoading -> LoadingState(colors, roboto)
                pacientes.isEmpty() -> EmptyState(colors, roboto)
                else -> PacientesList(
                    pacientes = pacientes,
                    listState = listState,
                    navController = navController,
                    colors = colors,
                    isDark = isDark
                )
            }
        }
    }
}

@Composable
private fun LoadingState(colors: PsicologoThemeColors, roboto: FontFamily) {
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            CircularProgressIndicator(
                modifier = Modifier.size(48.dp),
                color = colors.primary,
                strokeWidth = 3.dp
            )
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = stringResource(R.string.cargando_pacientes),
                color = colors.textSecondary,
                fontSize = 14.sp,
                fontFamily = roboto
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = stringResource(R.string.puede_tomar_segundos),
                color = colors.textSecondary.copy(alpha = 0.7f),
                fontSize = 12.sp,
                fontFamily = roboto
            )
        }
    }
}

@Composable
private fun EmptyState(colors: PsicologoThemeColors, roboto: FontFamily) {
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            modifier = Modifier.padding(24.dp)
        ) {
            Icon(
                imageVector = Icons.Default.People,
                contentDescription = null,
                modifier = Modifier.size(80.dp),
                tint = colors.primaryLight.copy(alpha = 0.5f)
            )
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = stringResource(R.string.no_tienes_pacientes),
                fontSize = 18.sp,
                fontWeight = FontWeight.Medium,
                color = colors.textPrimary,
                fontFamily = roboto
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = stringResource(R.string.cuando_asignen_pacientes),
                fontSize = 14.sp,
                color = colors.textSecondary,
                textAlign = TextAlign.Center,
                fontFamily = roboto
            )
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun PacientesList(
    pacientes: List<PacientePsicologoResponseDTO>,
    listState: LazyListState,
    navController: NavController,
    colors: PsicologoThemeColors,
    isDark: Boolean
) {
    LazyColumn(
        state = listState,
        modifier = Modifier
            .fillMaxSize()
            .padding(horizontal = 16.dp)
            .padding(top = 8.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        item {
            HeaderStats(pacientes.size, colors)
        }

        items(
            items = pacientes,
            key = { paciente -> paciente.idPaciente ?: "${paciente.email}-${paciente.dni}" }
        ) { paciente ->
            PacienteCard(
                paciente = paciente,
                navController = navController,
                colors = colors,
                isDark = isDark
            )
        }

        item { Spacer(modifier = Modifier.height(16.dp)) }
    }
}

@Composable
private fun HeaderStats(totalPacientes: Int, colors: PsicologoThemeColors) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = colors.primary),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column {
                Text(
                    text = stringResource(R.string.total_pacientes),
                    fontSize = 14.sp,
                    color = Color.White.copy(alpha = 0.9f)
                )
                Text(
                    text = "$totalPacientes",
                    fontSize = 32.sp,
                    fontWeight = FontWeight.Bold,
                    color = Color.White
                )
                Text(
                    text = stringResource(R.string.asignados_consulta),
                    fontSize = 12.sp,
                    color = Color.White.copy(alpha = 0.8f)
                )
            }
            Icon(
                imageVector = Icons.Default.People,
                contentDescription = null,
                tint = Color.White,
                modifier = Modifier.size(48.dp)
            )
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PacienteCard(
    paciente: PacientePsicologoResponseDTO,
    navController: NavController,
    colors: PsicologoThemeColors,
    isDark: Boolean
) {
    var expanded by remember { mutableStateOf(false) }
    val esMenor = esMenorDeEdad(paciente.fechaNacimiento)

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { expanded = !expanded }
            .animateContentSize(),
        shape = RoundedCornerShape(20.dp),
        elevation = CardDefaults.cardElevation(
            defaultElevation = 2.dp,
            pressedElevation = 6.dp
        ),
        colors = CardDefaults.cardColors(containerColor = colors.surface)
    ) {
        Column(
            modifier = Modifier.fillMaxWidth()
        ) {
            PacienteHeader(
                paciente = paciente,
                esMenor = esMenor,
                navController = navController,
                colors = colors,
                isDark = isDark
            )

            AnimatedVisibility(
                visible = expanded,
                enter = expandVertically(
                    animationSpec = tween(durationMillis = 300, easing = FastOutSlowInEasing)
                ) + fadeIn(),
                exit = shrinkVertically(
                    animationSpec = tween(durationMillis = 200, easing = FastOutSlowInEasing)
                ) + fadeOut()
            ) {
                ExpandedContent(
                    paciente = paciente,
                    esMenor = esMenor,
                    colors = colors,
                    isDark = isDark
                )
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PacienteHeader(
    paciente: PacientePsicologoResponseDTO,
    esMenor: Boolean,
    navController: NavController,
    colors: PsicologoThemeColors,
    isDark: Boolean
) {
    val context = LocalContext.current

    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = colors.surface
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Row(
                modifier = Modifier.weight(1f),
                horizontalArrangement = Arrangement.spacedBy(12.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                // Avatar circular con iniciales
                Box(
                    modifier = Modifier
                        .size(56.dp)
                        .clip(CircleShape)
                        .background(
                            brush = Brush.linearGradient(
                                colors = listOf(
                                    colors.primary,
                                    colors.primaryLight
                                )
                            )
                        ),
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = "${paciente.nombre?.take(1) ?: "?"}${paciente.apellido?.take(1) ?: "?"}",
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Bold,
                        color = Color.White,
                        fontFamily = roboto
                    )
                }

                Column(
                    modifier = Modifier.weight(1f)
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Text(
                            text = "${paciente.nombre ?: stringResource(R.string.sin_nombre)} ${paciente.apellido ?: ""}".trim(),
                            fontSize = 16.sp,
                            fontWeight = FontWeight.Bold,
                            color = colors.textPrimary,
                            fontFamily = roboto
                        )

                        if (esMenor) {
                            Surface(
                                shape = RoundedCornerShape(12.dp),
                                color = colors.warning.copy(alpha = 0.2f)
                            ) {
                                Row(
                                    modifier = Modifier.padding(horizontal = 6.dp, vertical = 2.dp),
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                                ) {
                                    Icon(
                                        imageVector = Icons.Default.Warning,
                                        contentDescription = stringResource(R.string.menor),
                                        modifier = Modifier.size(12.dp),
                                        tint = colors.warning
                                    )
                                    Text(
                                        text = stringResource(R.string.menor),
                                        fontSize = 10.sp,
                                        fontWeight = FontWeight.Medium,
                                        color = colors.warning,
                                        fontFamily = roboto
                                    )
                                }
                            }
                        }
                    }

                    Spacer(modifier = Modifier.height(4.dp))

                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            imageVector = Icons.Outlined.Email,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = colors.textSecondary
                        )
                        Text(
                            text = paciente.email ?: stringResource(R.string.email_no_disponible),
                            fontSize = 12.sp,
                            color = colors.textSecondary,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                            fontFamily = roboto
                        )
                    }

                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {

                        IconButton(
                            onClick = {

                                paciente.telefono?.let { telefono ->

                                    val intent = Intent(Intent.ACTION_DIAL).apply {
                                        data = Uri.parse("tel:$telefono")
                                    }

                                    context.startActivity(intent)
                                }
                            },
                            modifier = Modifier.size(24.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Outlined.Phone,
                                contentDescription = "Llamar paciente",
                                modifier = Modifier.size(18.dp),
                                tint = colors.primary
                            )
                        }

                        Text(
                            text = paciente.telefono ?: stringResource(R.string.telefono_no_disponible),
                            fontSize = 12.sp,
                            color = colors.textSecondary,
                            fontFamily = roboto
                        )
                    }
                }
            }

            // Botón para crear historial clínico
            IconButton(
                onClick = {
                    paciente.idPaciente?.let { id ->
                        navController.navigate(
                            Screens.crearHistorialClinico.createRoute(id)
                        )
                    }
                },
                modifier = Modifier.size(40.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Description,
                    contentDescription = stringResource(R.string.crear_historial_clinico),
                    tint = colors.primary,
                    modifier = Modifier.size(24.dp)
                )
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun ExpandedContent(
    paciente: PacientePsicologoResponseDTO,
    esMenor: Boolean,
    colors: PsicologoThemeColors,
    isDark: Boolean
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .background(colors.accent)
            .padding(16.dp)
    ) {
        Text(
            text = stringResource(R.string.informacion_detallada),
            fontSize = 14.sp,
            fontWeight = FontWeight.SemiBold,
            color = colors.textPrimary,
            fontFamily = roboto,
            modifier = Modifier.padding(bottom = 12.dp)
        )

        Column(
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            InfoSection(
                title = stringResource(R.string.datos_personales),
                icon = Icons.Default.Person,
                colors = colors,
                items = listOf(
                    stringResource(R.string.nombre_completo) to "${paciente.nombre ?: stringResource(R.string.no_disponible)} ${paciente.apellido ?: ""}".trim(),
                    stringResource(R.string.dni) to (paciente.dni ?: stringResource(R.string.no_registrado)),
                    stringResource(R.string.fecha_nacimiento) to formatearFechaDesdeString(paciente.fechaNacimiento),
                    stringResource(R.string.edad) to "${calcularEdadDesdeString(paciente.fechaNacimiento)} ${stringResource(R.string.anios)}",
                    stringResource(R.string.genero) to (paciente.genero?.let {
                        when(it) {
                            "MASCULINO" -> stringResource(R.string.masculino)
                            "FEMENINO" -> stringResource(R.string.femenino)
                            "OTRO" -> stringResource(R.string.otro)
                            "PREFIERO_NO_DECIR" -> stringResource(R.string.prefiero_no_decir)
                            else -> it
                        }
                    } ?: stringResource(R.string.no_especificado)),
                    stringResource(R.string.email) to (paciente.email ?: stringResource(R.string.no_disponible)),
                    stringResource(R.string.telefono) to (paciente.telefono ?: stringResource(R.string.no_disponible))
                )
            )

            val tutores = paciente.tutor ?: emptyList()
            if (esMenor && tutores.isNotEmpty()) {
                TutorInfoSection(tutores = tutores, colors = colors, isDark = isDark)
            }

            paciente.direccion?.let { direccion ->
                InfoSection(
                    title = stringResource(R.string.direccion),
                    icon = Icons.Default.Person,
                    colors = colors,
                    items = listOf(
                        stringResource(R.string.calle) to (direccion.calle ?: stringResource(R.string.no_disponible)),
                        stringResource(R.string.ciudad) to (direccion.ciudad ?: stringResource(R.string.no_disponible)),
                        stringResource(R.string.provincia) to (direccion.provincia ?: stringResource(R.string.no_disponible)),
                        stringResource(R.string.codigo_postal) to (direccion.codigoPostal ?: stringResource(R.string.no_disponible)),
                        stringResource(R.string.pais) to (direccion.pais ?: stringResource(R.string.no_disponible))
                    )
                )
            }
        }
    }
}

@Composable
fun TutorInfoSection(
    tutores: List<TutorResponseDTO>,
    colors: PsicologoThemeColors,
    isDark: Boolean
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val surfaceColor = if (isDark) colors.surface else Color.White

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = surfaceColor),
        elevation = CardDefaults.cardElevation(defaultElevation = 1.dp)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.People,
                    contentDescription = null,
                    modifier = Modifier.size(18.dp),
                    tint = colors.warning
                )
                Text(
                    text = stringResource(R.string.datos_tutor_responsable),
                    fontSize = 14.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.warning,
                    fontFamily = roboto
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            tutores.forEachIndexed { index, tutor ->
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(vertical = 8.dp)
                ) {
                    if (tutores.size > 1) {
                        Text(
                            text = "${stringResource(R.string.tutor)} ${index + 1}",
                            fontSize = 12.sp,
                            fontWeight = FontWeight.Medium,
                            color = colors.primary,
                            fontFamily = roboto
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                    }

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            imageVector = Icons.Default.Person,
                            contentDescription = null,
                            modifier = Modifier.size(16.dp),
                            tint = colors.textSecondary
                        )
                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = tutor.nombre,
                                fontSize = 13.sp,
                                fontWeight = FontWeight.Medium,
                                color = colors.textPrimary,
                                fontFamily = roboto
                            )
                            Text(
                                text = "${stringResource(R.string.dni)}: ${tutor.dni}",
                                fontSize = 11.sp,
                                color = colors.textSecondary,
                                fontFamily = roboto
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(4.dp))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            imageVector = Icons.Outlined.Phone,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = colors.textSecondary
                        )
                        Text(
                            tutor.telefono ?: stringResource(R.string.no_disponible),
                            fontSize = 12.sp,
                            color = colors.textPrimary,
                            fontFamily = roboto
                        )
                    }

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            imageVector = Icons.Outlined.Email,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = colors.textSecondary
                        )
                        Text(
                            text = tutor.email ?: stringResource(R.string.no_disponible),
                            fontSize = 12.sp,
                            color = colors.textPrimary,
                            fontFamily = roboto
                        )
                    }

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            imageVector = Icons.Outlined.Badge,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = colors.textSecondary
                        )
                        Text(
                            text = "${stringResource(R.string.parentesco)}: ${tutor.tipo}",
                            fontSize = 12.sp,
                            color = colors.textPrimary,
                            fontFamily = roboto
                        )
                    }
                }

                if (index != tutores.size - 1) {
                    HorizontalDivider(
                        modifier = Modifier.padding(vertical = 8.dp),
                        thickness = 0.5.dp,
                        color = colors.accent
                    )
                }
            }
        }
    }
}

@Composable
fun InfoSection(
    title: String,
    icon: ImageVector,
    colors: PsicologoThemeColors,
    items: List<Pair<String, String>>
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val isDark = isDarkTheme()
    val surfaceColor = if (isDark) colors.surface else Color.White

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = surfaceColor),
        elevation = CardDefaults.cardElevation(defaultElevation = 1.dp)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Icon(
                    imageVector = icon,
                    contentDescription = null,
                    modifier = Modifier.size(18.dp),
                    tint = colors.primary
                )
                Text(
                    text = title,
                    fontSize = 14.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = colors.textPrimary,
                    fontFamily = roboto
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            items.forEachIndexed { index, (label, value) ->
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(vertical = 4.dp)
                ) {
                    Text(
                        text = label,
                        fontSize = 11.sp,
                        color = colors.textSecondary,
                        fontFamily = roboto
                    )
                    Text(
                        text = value.ifEmpty { stringResource(R.string.no_disponible) },
                        fontSize = 13.sp,
                        fontWeight = FontWeight.Medium,
                        color = colors.textPrimary,
                        fontFamily = roboto
                    )
                    if (index != items.size - 1) {
                        HorizontalDivider(
                            modifier = Modifier.padding(top = 4.dp),
                            thickness = 0.5.dp,
                            color = colors.accent
                        )
                    }
                }
            }
        }
    }
}

// Funciones de utilidad
@RequiresApi(Build.VERSION_CODES.O)
private fun calcularEdadDesdeString(fechaNacimientoStr: String?): Int {
    if (fechaNacimientoStr.isNullOrEmpty()) return 0
    return try {
        val fechaNacimiento = LocalDate.parse(fechaNacimientoStr)
        val hoy = LocalDate.now()
        hoy.year - fechaNacimiento.year -
                if (hoy.dayOfYear < fechaNacimiento.dayOfYear) 1 else 0
    } catch (e: Exception) {
        0
    }
}

@RequiresApi(Build.VERSION_CODES.O)
private fun esMenorDeEdad(fechaNacimientoStr: String?): Boolean {
    return calcularEdadDesdeString(fechaNacimientoStr) < 18
}

@Composable
@RequiresApi(Build.VERSION_CODES.O)
private fun formatearFechaDesdeString(fechaStr: String?): String {
    if (fechaStr.isNullOrEmpty()) return stringResource(R.string.no_disponible)
    return try {
        val formatterInput = DateTimeFormatter.ofPattern("yyyy-MM-dd")
        val fecha = LocalDate.parse(fechaStr, formatterInput)
        val formatterOutput = DateTimeFormatter.ofPattern("dd/MM/yyyy")
        fecha.format(formatterOutput)
    } catch (e: Exception) {
        fechaStr
    }
}

// Clase auxiliar para los colores del tema
data class PsicologoThemeColors(
    val primary: Color,
    val primaryLight: Color,
    val primaryDark: Color,
    val secondary: Color,
    val accent: Color,
    val surface: Color,
    val background: Color,
    val textPrimary: Color,
    val textSecondary: Color,
    val success: Color,
    val warning: Color,
    val error: Color,
    val info: Color
)