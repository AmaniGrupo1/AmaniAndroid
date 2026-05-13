package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.ExperimentalAnimationApi
import androidx.compose.animation.animateContentSize
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
import androidx.compose.foundation.layout.PaddingValues
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
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.AssignmentInd
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material.icons.filled.LocationOn
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.platform.LocalContext
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.models.enumm.TemaApp
import org.koin.java.KoinJavaComponent
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.font.FontWeight.Companion.Bold
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.admin.PacienteBasicoResponseDTO
import org.ies.tierno.applicationamani.dto.requestPaciente.DireccionResponseDTO
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.PacientesViewModel
import org.koin.androidx.compose.koinViewModel

// Colores originales para el modo SYSTEM (igual que antes)
object AmaniDefaultColors {
    val Primary = Color(0xFF6C63FF)
    val Background = Color(0xFFF5F5F5)
    val TextPrimary = Color(0xFF333333)
    val TextSecondary = Color.Gray
    val Success = Color(0xFF27AE60)
    val Warning = Color(0xFFE67E22)
    val Info = Color(0xFF2196F3)
}

@OptIn(ExperimentalMaterial3Api::class, ExperimentalAnimationApi::class)
@Composable
fun ListarPacienteSinPsicologos(
    navController: NavController,
    pacientesViewModel: PacientesViewModel = koinViewModel()
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Determinar colores segun el tema
    val primaryColor = if (isDark) MaterialTheme.colorScheme.primary else AmaniDefaultColors.Primary
    val titleOnPrimary = if (isDark) MaterialTheme.colorScheme.onPrimary else Color.White
    val backgroundColor = if (isDark) screenColors.background else AmaniDefaultColors.Background
    val textColor = if (isDark) cardColors.cardContent else AmaniDefaultColors.TextPrimary
    val textSecondaryColor = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else AmaniDefaultColors.TextSecondary

    val pacientes by pacientesViewModel.pacientes.collectAsStateWithLifecycle()
    val loading by pacientesViewModel.loading.collectAsStateWithLifecycle()

    // Expansion de tarjetas
    var expandedCardId by remember { mutableStateOf<Long?>(null) }

    // Cargar pacientes al entrar en la pantalla
    LaunchedEffect(Unit) {
        pacientesViewModel.cargarPacientesSinPsicologo()
    }

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            Surface(
                modifier = Modifier.fillMaxWidth(),
                color = primaryColor,
                shadowElevation = 4.dp,
                shape = RoundedCornerShape(bottomStart = 16.dp, bottomEnd = 16.dp)
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 12.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver",
                            tint = Color.White,
                            modifier = Modifier.size(24.dp)
                        )
                    }

                    Text(
                        "Pacientes sin Psicologo",
                        color = titleOnPrimary,
                        fontFamily = roboto,
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Bold,
                        letterSpacing = 1.sp,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.weight(1f, fill = false)
                    )

                    IconButton(onClick = {
                        pacientesViewModel.cargarPacientesSinPsicologo()
                    }) {
                        Icon(
                            Icons.Default.Refresh,
                            contentDescription = "Refrescar",
                            tint = titleOnPrimary
                        )
                    }
                }
            }
        }
    ) { padding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
        ) {
            when {
                loading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        CircularProgressIndicator(
                            color = primaryColor,
                            modifier = Modifier.size(48.dp)
                        )
                    }
                }
                pacientes.isEmpty() -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.spacedBy(16.dp)
                        ) {
                            Icon(
                                Icons.Default.People,
                                contentDescription = null,
                                tint = textSecondaryColor.copy(alpha = 0.5f),
                                modifier = Modifier.size(80.dp)
                            )
                            Text(
                                text = "No hay pacientes sin asignar",
                                fontFamily = roboto,
                                fontSize = 16.sp,
                                color = textColor
                            )
                            Text(
                                text = "Todos los pacientes ya tienen psicologo asignado",
                                fontFamily = roboto,
                                fontSize = 14.sp,
                                color = textSecondaryColor
                            )
                        }
                    }
                }
                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        items(pacientes, key = { it.idPaciente }) { paciente ->
                            PacienteExpandableCard(
                                paciente = paciente,
                                isExpanded = expandedCardId == paciente.idPaciente,
                                onExpandClick = {
                                    expandedCardId = if (expandedCardId == paciente.idPaciente) {
                                        null
                                    } else {
                                        paciente.idPaciente
                                    }
                                },
                                onAsignarClick = {
                                    navController.navigate(Screens.listarPsicologo.createRoute(paciente.idPaciente))
                                },
                                primaryColor = primaryColor,
                                roboto = roboto,
                                isDark = isDark
                            )
                        }
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalAnimationApi::class)
@Composable
fun PacienteExpandableCard(
    paciente: PacienteBasicoResponseDTO,
    isExpanded: Boolean,
    onExpandClick: () -> Unit,
    onAsignarClick: () -> Unit,
    primaryColor: Color,
    roboto: FontFamily,
    isDark: Boolean
) {
    val amaniColors = LocalAmaniColors.current
    val cardColors = getCardColors()

    // Colores dinamicos
    val cardBackgroundColor = if (isDark) cardColors.cardBackground else Color.White
    val textColor = if (isDark) cardColors.cardContent else AmaniDefaultColors.TextPrimary
    val textSecondaryColor = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else AmaniDefaultColors.TextSecondary
    val detailLabelColor = if (isDark) cardColors.cardContent.copy(alpha = 0.6f) else Color.Gray

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = cardBackgroundColor)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .animateContentSize()
        ) {
            // Header: Informacion basica (siempre visible)
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .clickable { onExpandClick() }
                    .padding(16.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(
                    modifier = Modifier.weight(1f),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    // Avatar con iniciales
                    Box(
                        modifier = Modifier
                            .size(48.dp)
                            .background(
                                color = primaryColor.copy(alpha = 0.1f),
                                shape = RoundedCornerShape(24.dp)
                            ),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = paciente.nombre.take(1) + paciente.apellido.take(1),
                            color = primaryColor,
                            fontFamily = roboto,
                            fontWeight = Bold,
                            fontSize = 18.sp
                        )
                    }

                    Spacer(modifier = Modifier.width(12.dp))

                    Column {
                        Text(
                            text = "${paciente.nombre} ${paciente.apellido}",
                            fontFamily = roboto,
                            fontWeight = Bold,
                            fontSize = 16.sp,
                            color = textColor
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Row(
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Icon(
                                Icons.Default.Email,
                                contentDescription = null,
                                tint = textSecondaryColor,
                                modifier = Modifier.size(14.dp)
                            )
                            Spacer(modifier = Modifier.width(4.dp))
                            Text(
                                text = paciente.email,
                                fontFamily = roboto,
                                fontSize = 12.sp,
                                color = textSecondaryColor
                            )
                        }
                    }
                }

                // Icono de expansion con animacion
                Icon(
                    imageVector = if (isExpanded) Icons.Default.KeyboardArrowUp else Icons.Default.KeyboardArrowDown,
                    contentDescription = if (isExpanded) "Contraer" else "Expandir",
                    tint = primaryColor,
                    modifier = Modifier.size(24.dp)
                )
            }

            // Contenido expandido
            AnimatedVisibility(
                visible = isExpanded,
                enter = expandVertically(
                    animationSpec = tween(durationMillis = 300),
                    expandFrom = Alignment.Top
                ) + fadeIn(animationSpec = tween(300)),
                exit = shrinkVertically(
                    animationSpec = tween(durationMillis = 300),
                    shrinkTowards = Alignment.Top
                ) + fadeOut(animationSpec = tween(300))
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp)
                        .padding(bottom = 16.dp)
                ) {
                    HorizontalDivider(
                        color = textSecondaryColor.copy(alpha = 0.12f),
                        modifier = Modifier.padding(vertical = 8.dp)
                    )

                    // Datos Personales
                    SubSection(
                        title = "Datos Personales",
                        icon = Icons.Default.Person,
                        iconColor = primaryColor,
                        roboto = roboto,
                        textColor = textColor,
                        isDark = isDark
                    ) {
                        DetailRow("DNI", paciente.dni ?: "No especificado", roboto, detailLabelColor, textColor)
                        DetailRow("Telefono", paciente.telefono ?: "No especificado", roboto, detailLabelColor, textColor)
                        DetailRow("Genero", paciente.genero ?: "No especificado", roboto, detailLabelColor, textColor)
                        DetailRow("Fecha Nacimiento", paciente.fechaNacimiento ?: "No especificado", roboto, detailLabelColor, textColor)
                    }

                    // Situaciones
                    if (!paciente.situaciones.isNullOrEmpty()) {
                        Spacer(modifier = Modifier.height(12.dp))
                        SubSection(
                            title = "Situaciones",
                            icon = Icons.Default.Info,
                            iconColor = AmaniDefaultColors.Success,
                            roboto = roboto,
                            textColor = textColor,
                            isDark = isDark
                        ) {
                            paciente.situaciones!!.forEachIndexed { index, situacion ->
                                if (index > 0) Spacer(modifier = Modifier.height(8.dp))
                                SituacionCard(situacion, roboto, isDark)
                            }
                        }
                    }

                    // Direcciones
                    if (!paciente.direcciones.isNullOrEmpty()) {
                        Spacer(modifier = Modifier.height(12.dp))
                        SubSection(
                            title = "Direcciones",
                            icon = Icons.Default.LocationOn,
                            iconColor = primaryColor,
                            roboto = roboto,
                            textColor = textColor,
                            isDark = isDark
                        ) {
                            paciente.direcciones!!.forEachIndexed { index, direccion ->
                                if (index > 0) Spacer(modifier = Modifier.height(8.dp))
                                DireccionCard(direccion, roboto, isDark)
                            }
                        }
                    }

                    // Tutores
                    if (!paciente.tutores.isNullOrEmpty()) {
                        Spacer(modifier = Modifier.height(12.dp))
                        SubSection(
                            title = "Tutores",
                            icon = Icons.Default.People,
                            iconColor = AmaniDefaultColors.Warning,
                            roboto = roboto,
                            textColor = textColor,
                            isDark = isDark
                        ) {
                            paciente.tutores!!.forEachIndexed { index, tutor ->
                                if (index > 0) Spacer(modifier = Modifier.height(8.dp))
                                TutorCard(tutor, roboto, isDark)
                            }
                        }
                    }

                    Spacer(modifier = Modifier.height(16.dp))

                    // Boton Asignar Psicologo
                    Button(
                        onClick = onAsignarClick,
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(48.dp),
                        shape = RoundedCornerShape(12.dp),
                        colors = ButtonDefaults.buttonColors(
                            containerColor = primaryColor,
                            contentColor = if (isDark) MaterialTheme.colorScheme.onPrimary else Color.White
                        )
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(
                                Icons.Default.AssignmentInd,
                                contentDescription = null,
                                tint = if (isDark) MaterialTheme.colorScheme.onPrimary else Color.White,
                                modifier = Modifier.size(20.dp)
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(
                                "Asignar Psicologo",
                                color = if (isDark) MaterialTheme.colorScheme.onPrimary else Color.White,
                                fontFamily = roboto,
                                fontWeight = FontWeight.Medium
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun SubSection(
    title: String,
    icon: ImageVector,
    iconColor: Color,
    roboto: FontFamily,
    textColor: Color,
    isDark: Boolean,
    content: @Composable () -> Unit
) {
    Column {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier.padding(bottom = 8.dp)
        ) {
            Icon(
                icon,
                contentDescription = null,
                tint = iconColor,
                modifier = Modifier.size(18.dp)
            )
            Spacer(modifier = Modifier.width(8.dp))
            Text(
                text = title,
                fontFamily = roboto,
                fontWeight = FontWeight.Medium,
                fontSize = 14.sp,
                color = iconColor
            )
        }
        content()
    }
}

@Composable
fun DetailRow(
    label: String,
    value: String,
    roboto: FontFamily,
    labelColor: Color,
    valueColor: Color
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 4.dp),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(
            text = label,
            fontFamily = roboto,
            fontSize = 13.sp,
            color = labelColor
        )
        Text(
            text = value,
            fontFamily = roboto,
            fontSize = 13.sp,
            fontWeight = FontWeight.Medium,
            color = valueColor
        )
    }
}

@Composable
fun DireccionCard(
    direccion: DireccionResponseDTO,
    roboto: FontFamily,
    isDark: Boolean
) {
    val cardColors = getCardColors()
    val cardBackground = if (isDark) cardColors.cardBackground else Color.White
    val labelColor = if (isDark) cardColors.cardContent.copy(alpha = 0.6f) else Color.Gray
    val valueColor = if (isDark) cardColors.cardContent else AmaniDefaultColors.TextPrimary

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = cardBackground)
    ) {
        Column(
            modifier = Modifier.padding(12.dp)
        ) {
            if (!direccion.calle.isNullOrBlank()) {
                DetailRow("Calle", direccion.calle, roboto, labelColor, valueColor)
            }
            if (!direccion.ciudad.isNullOrBlank()) {
                DetailRow("Ciudad", direccion.ciudad, roboto, labelColor, valueColor)
            }
            if (!direccion.provincia.isNullOrBlank()) {
                DetailRow("Provincia", direccion.provincia, roboto, labelColor, valueColor)
            }
            if (!direccion.codigoPostal.isNullOrBlank()) {
                DetailRow("Codigo Postal", direccion.codigoPostal, roboto, labelColor, valueColor)
            }
            if (!direccion.pais.isNullOrBlank()) {
                DetailRow("Pais", direccion.pais, roboto, labelColor, valueColor)
            }
        }
    }
}

@Composable
fun TutorCard(
    tutor: TutorResponseDTO,
    roboto: FontFamily,
    isDark: Boolean
) {
    val cardColors = getCardColors()
    val cardBackground = if (isDark) cardColors.cardBackground else Color.White
    val labelColor = if (isDark) cardColors.cardContent.copy(alpha = 0.6f) else Color.Gray
    val valueColor = if (isDark) cardColors.cardContent else AmaniDefaultColors.TextPrimary

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = cardBackground)
    ) {
        Column(
            modifier = Modifier.padding(12.dp)
        ) {
            if (!tutor.nombre.isNullOrBlank()) {
                DetailRow("Nombre", tutor.nombre, roboto, labelColor, valueColor)
            }
            if (!tutor.tipo.isNullOrBlank()) {
                DetailRow("Parentesco", tutor.tipo, roboto, labelColor, valueColor)
            }
            if (!tutor.telefono.isNullOrBlank()) {
                DetailRow("Telefono", tutor.telefono, roboto, labelColor, valueColor)
            }
            if (!tutor.email.isNullOrBlank()) {
                DetailRow("Email", tutor.email, roboto, labelColor, valueColor)
            }
            if (!tutor.dni.isNullOrBlank()) {
                DetailRow("DNI", tutor.dni, roboto, labelColor, valueColor)
            }
        }
    }
}

@Composable
fun SituacionCard(
    situacion: SituacionDTO,
    roboto: FontFamily,
    isDark: Boolean
) {
    val cardColors = getCardColors()
    val cardBackground = if (isDark) cardColors.cardBackground else Color.White
    val textColor = if (isDark) cardColors.cardContent else AmaniDefaultColors.TextPrimary
    val descripcionColor = if (isDark) cardColors.cardContent.copy(alpha = 0.8f) else Color(0xFF555555)

    Card(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        colors = CardDefaults.cardColors(containerColor = cardBackground)
    ) {
        Column(
            modifier = Modifier.padding(12.dp)
        ) {
            // Nombre de la situacion (siempre visible)
            if (!situacion.nombre.isNullOrBlank()) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = situacion.nombre,
                        fontFamily = roboto,
                        fontSize = 14.sp,
                        fontWeight = Bold,
                        color = AmaniDefaultColors.Success
                    )
                    if (!situacion.categoria.isNullOrBlank()) {
                        Surface(
                            shape = RoundedCornerShape(8.dp),
                            color = AmaniDefaultColors.Success.copy(alpha = 0.1f)
                        ) {
                            Text(
                                text = situacion.categoria,
                                fontFamily = roboto,
                                fontSize = 11.sp,
                                color = AmaniDefaultColors.Success,
                                modifier = Modifier.padding(horizontal = 8.dp, vertical = 2.dp)
                            )
                        }
                    }
                }
            }

            // Descripcion (si existe)
            if (!situacion.descripcion.isNullOrBlank()) {
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = situacion.descripcion,
                    fontFamily = roboto,
                    fontSize = 12.sp,
                    color = descripcionColor,
                    lineHeight = 16.sp
                )
            }
        }
    }
}
