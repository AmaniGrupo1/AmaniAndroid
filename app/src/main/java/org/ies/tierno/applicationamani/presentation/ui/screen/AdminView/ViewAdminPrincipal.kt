package org.ies.tierno.applicationamani.presentation.ui.screens.admin

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
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.IntrinsicSize
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Psychology
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.outlined.Badge
import androidx.compose.material.icons.outlined.CalendarToday
import androidx.compose.material.icons.outlined.Email
import androidx.compose.material.icons.outlined.PersonOutline
import androidx.compose.material.icons.outlined.Work
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
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
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.MenuAdministrador
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.GetAllPacientAndPsicologoVeiwModel
import org.koin.androidx.compose.koinViewModel
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.time.format.DateTimeParseException

// Colores originales para el modo SYSTEM (igual que antes)
object AmaniColorsUnified {
    val Primary = Color(0xFF6C63FF)
    val PrimaryLight = Color(0xFF9B7E9F)
    val PrimaryDark = Color(0xFF4A2B50)
    val Secondary = Color(0xFFE8B4B8)
    val Accent = Color(0xFFCCC0E4)
    val Surface = Color(0xFFFFFFFF)
    val Background = Color(0xFFCCC0E4)
    val TextPrimary = Color(0xFF2D1B30)
    val TextSecondary = Color(0xFF7A6B7E)
    val Success = Color(0xFF81C784)
    val Warning = Color(0xFFFFB74D)
    val Error = Color(0xFFE57373)
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun ViewAdminPrincipal(
    navController: NavController,
    viewModel: GetAllPacientAndPsicologoVeiwModel = koinViewModel()
) {
    // Fuente Roboto correctamente configurada
    val roboto = FontFamily(
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Normal),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Bold),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.Medium),
        Font(R.font.roboto_variablefont_wdth_wght, FontWeight.SemiBold)
    )

    val psicologos by viewModel.paciente.collectAsState()
    var showLoading by remember { mutableStateOf(true) }
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    LaunchedEffect(psicologos) {
        delay(500)
        showLoading = false
    }

    val listState = rememberLazyListState()
    val isScrolled by remember { derivedStateOf { listState.firstVisibleItemIndex > 0 } }
    val scope = rememberCoroutineScope()

    // Determinar colores segun el tema
    val backgroundColor = if (isDark) screenColors.background else AmaniColorsUnified.Background
    val surfaceColor = if (isDark) cardColors.cardBackground else AmaniColorsUnified.Surface
    val primaryColor = if (isDark) MaterialTheme.colorScheme.primary else AmaniColorsUnified.Primary
    val primaryLightColor = if (isDark) MaterialTheme.colorScheme.primary.copy(alpha = 0.7f) else AmaniColorsUnified.PrimaryLight
    val textPrimaryColor = if (isDark) cardColors.cardContent else AmaniColorsUnified.TextPrimary
    val textSecondaryColor = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else AmaniColorsUnified.TextSecondary
    val accentColor = if (isDark) cardColors.cardBackground else AmaniColorsUnified.Accent

    Scaffold(
        topBar = {
            MenuAdministrador(
                title = "Gestion de Psicologos",
                navController = navController,
                showBackButton = false,
                actions = {
                    IconButton(onClick = {
                        scope.launch {
                            showLoading = true
                            delay(300)
                            showLoading = false
                        }
                    }) {
                        Icon(
                            Icons.Default.Refresh,
                            contentDescription = "Actualizar",
                            tint = primaryColor
                        )
                    }
                }
            )
        },
        containerColor = backgroundColor
    ) { innerPadding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
        ) {
            when {
                showLoading && psicologos.isEmpty() -> LoadingState(roboto, primaryColor, textSecondaryColor)
                psicologos.isEmpty() -> EmptyState(roboto, primaryLightColor, textPrimaryColor, textSecondaryColor)
                else -> PsicologosList(
                    psicologos = psicologos,
                    listState = listState,
                    isScrolled = isScrolled,
                    roboto = roboto,
                    isDark = isDark,
                    primaryColor = primaryColor,
                    primaryLightColor = primaryLightColor,
                    textPrimaryColor = textPrimaryColor,
                    textSecondaryColor = textSecondaryColor,
                    accentColor = accentColor,
                    surfaceColor = surfaceColor
                )
            }

            AnimatedVisibility(
                visible = isScrolled,
                enter = fadeIn(),
                exit = fadeOut(),
                modifier = Modifier
                    .align(Alignment.TopCenter)
                    .padding(top = 8.dp)
            ) {
                Surface(
                    shape = MaterialTheme.shapes.small,
                    tonalElevation = 2.dp,
                    modifier = Modifier.padding(8.dp)
                ) {
                    Text(
                        text = "Desliza para ver mas",
                        fontSize = 12.sp,
                        color = primaryColor,
                        fontFamily = roboto,
                        modifier = Modifier.padding(horizontal = 12.dp, vertical = 4.dp)
                    )
                }
            }
        }
    }
}

@Composable
private fun LoadingState(roboto: FontFamily, primaryColor: Color, textSecondaryColor: Color) {
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            CircularProgressIndicator(
                modifier = Modifier.size(48.dp),
                color = primaryColor,
                strokeWidth = 3.dp
            )
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = "Cargando psicologos...",
                color = textSecondaryColor,
                fontSize = 14.sp,
                fontFamily = roboto
            )
        }
    }
}

@Composable
private fun EmptyState(
    roboto: FontFamily,
    primaryLightColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color
) {
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            modifier = Modifier.padding(24.dp)
        ) {
            Icon(
                imageVector = Icons.Default.Psychology,
                contentDescription = null,
                modifier = Modifier.size(80.dp),
                tint = primaryLightColor.copy(alpha = 0.5f)
            )
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = "No hay psicologos registrados",
                fontSize = 18.sp,
                fontWeight = FontWeight.Medium,
                color = textPrimaryColor,
                fontFamily = roboto
            )
            Spacer(modifier = Modifier.height(8.dp))
            Text(
                text = "Los psicologos apareceran aqui una vez registrados",
                fontSize = 14.sp,
                color = textSecondaryColor,
                textAlign = TextAlign.Center,
                fontFamily = roboto
            )
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
private fun PsicologosList(
    psicologos: List<ListaPacientesAndPsicologo>,
    listState: androidx.compose.foundation.lazy.LazyListState,
    isScrolled: Boolean,
    roboto: FontFamily,
    isDark: Boolean,
    primaryColor: Color,
    primaryLightColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    accentColor: Color,
    surfaceColor: Color
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
            HeaderStats(
                totalPsicologos = psicologos.size,
                roboto = roboto,
                primaryColor = primaryColor
            )
        }

        items(
            items = psicologos,
            key = { psicologo -> psicologo.idPsicologo }
        ) { psicologo ->
            PsicologoCard(
                psicologo = psicologo,
                roboto = roboto,
                isDark = isDark,
                primaryColor = primaryColor,
                primaryLightColor = primaryLightColor,
                textPrimaryColor = textPrimaryColor,
                textSecondaryColor = textSecondaryColor,
                accentColor = accentColor,
                surfaceColor = surfaceColor
            )
        }

        item { Spacer(modifier = Modifier.height(16.dp)) }
    }
}

@Composable
private fun HeaderStats(totalPsicologos: Int, roboto: FontFamily, primaryColor: Color) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = primaryColor),
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
                    text = "Total de Psicologos",
                    fontSize = 14.sp,
                    color = Color.White.copy(alpha = 0.9f),
                    fontFamily = roboto
                )
                Text(
                    text = "$totalPsicologos",
                    fontSize = 32.sp,
                    fontWeight = FontWeight.Bold,
                    color = Color.White,
                    fontFamily = roboto
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
fun PsicologoCard(
    psicologo: ListaPacientesAndPsicologo,
    roboto: FontFamily,
    isDark: Boolean,
    primaryColor: Color,
    primaryLightColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    accentColor: Color,
    surfaceColor: Color
) {
    var expanded by remember { mutableStateOf(false) }
    val pacientesCount = psicologo.pacientes.size

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .animateContentSize(),
        shape = RoundedCornerShape(20.dp),
        elevation = CardDefaults.cardElevation(
            defaultElevation = 2.dp,
            pressedElevation = 6.dp
        ),
        colors = CardDefaults.cardColors(containerColor = surfaceColor)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(0.dp)
        ) {
            PsicologoHeader(
                psicologo = psicologo,
                expanded = expanded,
                onExpandClick = { expanded = !expanded },
                roboto = roboto,
                primaryColor = primaryColor,
                textPrimaryColor = textPrimaryColor,
                textSecondaryColor = textSecondaryColor,
                accentColor = accentColor,
                surfaceColor = surfaceColor
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
                    psicologo = psicologo,
                    roboto = roboto,
                    isDark = isDark,
                    primaryColor = primaryColor,
                    textPrimaryColor = textPrimaryColor,
                    textSecondaryColor = textSecondaryColor,
                    accentColor = accentColor
                )
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun PsicologoHeader(
    psicologo: ListaPacientesAndPsicologo,
    expanded: Boolean,
    onExpandClick: () -> Unit,
    roboto: FontFamily,
    primaryColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    accentColor: Color,
    surfaceColor: Color
) {
    val pacientesCount = psicologo.pacientes.size

    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = surfaceColor,
        shadowElevation = if (expanded) 2.dp else 0.dp
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .animateContentSize()
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.Top
            ) {
                Row(
                    modifier = Modifier.weight(1f),
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Box(
                        modifier = Modifier
                            .size(56.dp)
                            .clip(CircleShape)
                            .background(
                                brush = Brush.linearGradient(
                                    colors = listOf(
                                        primaryColor,
                                        primaryColor.copy(alpha = 0.7f)
                                    )
                                )
                            ),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = psicologo.nombrePsicologo.take(1) + psicologo.apellidoPsicologo.take(1),
                            fontSize = 20.sp,
                            fontWeight = FontWeight.Bold,
                            color = Color.White,
                            fontFamily = roboto
                        )
                    }

                    Column(modifier = Modifier.weight(1f)) {
                        Text(
                            text = "${psicologo.nombrePsicologo} ${psicologo.apellidoPsicologo}",
                            fontSize = 16.sp,
                            fontWeight = FontWeight.Bold,
                            color = textPrimaryColor,
                            fontFamily = roboto
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Outlined.Email,
                                contentDescription = null,
                                modifier = Modifier.size(14.dp),
                                tint = textSecondaryColor
                            )
                            Text(
                                text = psicologo.emailPsicologo,
                                fontSize = 12.sp,
                                color = textSecondaryColor,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                                fontFamily = roboto
                            )
                        }
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Outlined.Work,
                                contentDescription = null,
                                modifier = Modifier.size(14.dp),
                                tint = primaryColor
                            )
                            Text(
                                text = psicologo.especialidad,
                                fontSize = 12.sp,
                                color = primaryColor,
                                fontWeight = FontWeight.Medium,
                                fontFamily = roboto
                            )
                        }
                    }
                }

                Column(
                    horizontalAlignment = Alignment.End,
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Surface(
                        shape = RoundedCornerShape(20.dp),
                        color = if (pacientesCount > 0) AmaniColorsUnified.Secondary else accentColor,
                        modifier = Modifier.width(IntrinsicSize.Min)
                    ) {
                        Row(
                            modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(4.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Default.People,
                                contentDescription = null,
                                modifier = Modifier.size(14.dp),
                                tint = if (pacientesCount > 0) primaryColor else textSecondaryColor
                            )
                            Text(
                                text = "$pacientesCount paciente${if (pacientesCount != 1) "s" else ""}",
                                fontSize = 11.sp,
                                fontWeight = FontWeight.Medium,
                                color = if (pacientesCount > 0) primaryColor else textSecondaryColor,
                                fontFamily = roboto
                            )
                        }
                    }
                    IconButton(onClick = onExpandClick, modifier = Modifier.size(32.dp)) {
                        Icon(
                            imageVector = if (expanded) Icons.Default.KeyboardArrowUp else Icons.Default.KeyboardArrowDown,
                            contentDescription = if (expanded) "Contraer" else "Expandir",
                            tint = primaryColor
                        )
                    }
                }
            }

            if (!expanded) {
                HorizontalDivider(
                    modifier = Modifier.padding(horizontal = 16.dp),
                    thickness = 1.dp,
                    color = accentColor
                )
                Spacer(modifier = Modifier.height(12.dp))
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 0.dp),
                    horizontalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            imageVector = Icons.Outlined.Badge,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = textSecondaryColor
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text(
                            text = "Lic: ${psicologo.licencia ?: "No registrada"}",
                            fontSize = 11.sp,
                            color = textSecondaryColor,
                            fontFamily = roboto
                        )
                    }
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            imageVector = Icons.Outlined.CalendarToday,
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = textSecondaryColor
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text(
                            text = "Alta: ${formatFechaCompacta(psicologo.fechaDadoAlta)}",
                            fontSize = 11.sp,
                            color = textSecondaryColor,
                            fontFamily = roboto
                        )
                    }
                }
                Spacer(modifier = Modifier.height(12.dp))
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
@Composable
fun ExpandedContent(
    psicologo: ListaPacientesAndPsicologo,
    roboto: FontFamily,
    isDark: Boolean,
    primaryColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    accentColor: Color
) {
    val pacientes = psicologo.pacientes
    val cardColors = getCardColors()

    // Para los pacientes, usamos los colores de card
    val pacienteCardBackground = if (isDark) cardColors.cardBackground else AmaniColorsUnified.Surface
    val pacienteTextColor = if (isDark) cardColors.cardContent else AmaniColorsUnified.TextPrimary

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .background(accentColor)
            .padding(16.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = "Pacientes Asignados",
                fontSize = 14.sp,
                fontWeight = FontWeight.SemiBold,
                color = textPrimaryColor,
                fontFamily = roboto
            )
            if (pacientes.isNotEmpty()) {
                Text(
                    text = "Total: ${pacientes.size}",
                    fontSize = 12.sp,
                    color = primaryColor,
                    fontWeight = FontWeight.Medium,
                    fontFamily = roboto
                )
            }
        }

        Spacer(modifier = Modifier.height(12.dp))

        if (pacientes.isEmpty()) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(32.dp),
                contentAlignment = Alignment.Center
            ) {
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Icon(
                        imageVector = Icons.Outlined.PersonOutline,
                        contentDescription = null,
                        modifier = Modifier.size(48.dp),
                        tint = textSecondaryColor.copy(alpha = 0.5f)
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "No hay pacientes asignados",
                        fontSize = 13.sp,
                        color = textSecondaryColor,
                        fontFamily = roboto
                    )
                }
            }
        } else {
            pacientes.forEach { paciente ->
                PacienteItem(
                    paciente = paciente,
                    roboto = roboto,
                    cardBackground = pacienteCardBackground,
                    textColor = pacienteTextColor,
                    textSecondaryColor = textSecondaryColor
                )
                if (paciente != pacientes.last()) {
                    Spacer(modifier = Modifier.height(8.dp))
                }
            }
        }

        Spacer(modifier = Modifier.height(12.dp))
        Button(
            onClick = { },
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(12.dp),
            colors = ButtonDefaults.buttonColors(
                containerColor = primaryColor,
                contentColor = Color.White
            ),
            elevation = ButtonDefaults.buttonElevation(defaultElevation = 2.dp)
        ) {
            Icon(
                imageVector = Icons.Default.Add,
                contentDescription = null,
                modifier = Modifier.size(18.dp)
            )
            Spacer(modifier = Modifier.width(8.dp))
            Text(
                text = "Asignar nuevo paciente",
                fontSize = 13.sp,
                fontWeight = FontWeight.Medium,
                fontFamily = roboto
            )
        }
    }
}

@Composable
fun PacienteItem(
    paciente: PacientesAsignadoDTO,
    roboto: FontFamily,
    cardBackground: Color,
    textColor: Color,
    textSecondaryColor: Color
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = cardBackground),
        elevation = CardDefaults.cardElevation(defaultElevation = 1.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Box(
                modifier = Modifier
                    .size(40.dp)
                    .clip(CircleShape)
                    .background(MaterialTheme.colorScheme.secondary),
                contentAlignment = Alignment.Center
            ) {
                Text(
                    text = paciente.nombre.take(1) + paciente.apellido.take(1),
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Bold,
                    color = MaterialTheme.colorScheme.primary,
                    fontFamily = roboto
                )
            }
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = "${paciente.nombre} ${paciente.apellido}",
                    fontSize = 14.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = textColor,
                    fontFamily = roboto
                )
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Icon(
                        imageVector = Icons.Outlined.Email,
                        contentDescription = null,
                        modifier = Modifier.size(12.dp),
                        tint = textSecondaryColor
                    )
                    Text(
                        text = paciente.email,
                        fontSize = 11.sp,
                        color = textSecondaryColor,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        fontFamily = roboto
                    )
                }
            }
            Surface(
                shape = CircleShape,
                color = MaterialTheme.colorScheme.tertiary.copy(alpha = 0.2f),
                modifier = Modifier.size(32.dp)
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Icon(
                        imageVector = Icons.Default.CheckCircle,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp),
                        tint = MaterialTheme.colorScheme.tertiary
                    )
                }
            }
        }
    }
}

@RequiresApi(Build.VERSION_CODES.O)
private fun formatFechaCompacta(fechaString: String): String {
    return try {
        val formatter = DateTimeFormatter.ISO_OFFSET_DATE_TIME
        val dateTime = LocalDateTime.parse(fechaString, formatter)
        val formatterOutput = DateTimeFormatter.ofPattern("dd/MM/yyyy")
        dateTime.format(formatterOutput)
    } catch (e: DateTimeParseException) {
        try {
            fechaString.substring(0, minOf(10, fechaString.length))
        } catch (_: Exception) {
            "Fecha no disponible"
        }
    }
}
