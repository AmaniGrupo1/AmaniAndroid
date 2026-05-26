package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

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
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import androidx.navigation.compose.currentBackStackEntryAsState
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoRequestDTO
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.ui.componente.admin.DarAltaPsicologo
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel

import android.content.Intent
import android.net.Uri
import androidx.compose.material.icons.outlined.Phone
import androidx.compose.material3.Divider
import androidx.compose.material3.HorizontalDivider
import androidx.compose.ui.platform.LocalContext
// Colores originales para el modo DEFECTO (como LoginScreen)
object AdminViewDefaultColors {
    val Primary = Color(0xFF6B4E71)
    val PrimaryLight = Color(0xFF9B7E9F)
    val PrimaryDark = Color(0xFF4A2B50)
    val Secondary = Color(0xFFE8B4B8)
    val Accent = Color(0xFFF5E6E8)
    val Background = Color(0xFFFDF8F9)
    val Surface = Color(0xFFFFFFFF)
    val TextPrimary = Color(0xFF2D1B30)
    val TextSecondary = Color(0xFF7A6B7E)
    val Error = Color(0xFFE57373)
    val Success = Color(0xFF81C784)
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ListadoPsicologosSimpleScreen(
    navController: NavController,
    viewModel: ListarPsicologosAdminViewModel,
    listarPaciente: ListarPacientesViewModel
) {
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val psicologos by viewModel.psicologos.collectAsState()

    val navBackStackEntry by navController.currentBackStackEntryAsState()

    LaunchedEffect(navBackStackEntry) {
        viewModel.recargarPsicologos()
    }

    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }
    var psicologoSeleccionado by remember { mutableStateOf<PsicologoSelfResponseDTO?>(null) }
    var mostrarDialogoBaja by remember { mutableStateOf(false) }
    var mostrarDialogoEdicion by remember { mutableStateOf(false) }
    var isBajaInProgress by remember { mutableStateOf(false) }
    var isEditInProgress by remember { mutableStateOf(false) }

    // Estados para el formulario de edición
    var editNombre by remember { mutableStateOf("") }
    var editApellido by remember { mutableStateOf("") }
    var editEspecialidad by remember { mutableStateOf("") }
    var editExperiencia by remember { mutableStateOf("") }
    var editDescripcion by remember { mutableStateOf("") }
    var editLicencia by remember { mutableStateOf("") }
    var editTelefono by remember { mutableStateOf("") }
    var editEmail by remember { mutableStateOf("") }

    // Cargar datos del psicólogo cuando se abre el diálogo de edición
    LaunchedEffect(mostrarDialogoEdicion, psicologoSeleccionado) {
        if (mostrarDialogoEdicion && psicologoSeleccionado != null) {
            editNombre = psicologoSeleccionado!!.nombre ?: ""
            editApellido = psicologoSeleccionado!!.apellido ?: ""
            editEspecialidad = psicologoSeleccionado!!.especialidad ?: ""
            editExperiencia = psicologoSeleccionado!!.experiencia?.toString() ?: ""
            editDescripcion = psicologoSeleccionado!!.descripcion ?: ""
            editLicencia = psicologoSeleccionado!!.licencia ?: ""
            editTelefono = psicologoSeleccionado!!.telefono ?: ""
            editEmail = psicologoSeleccionado!!.email ?: ""
        }
    }

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Determinar colores según el tema
    val backgroundColor = if (isDark) screenColors.background else AdminViewDefaultColors.Background
    val surfaceColor = if (isDark) cardColors.cardBackground else AdminViewDefaultColors.Surface
    val primaryColor =
        if (isDark) MaterialTheme.colorScheme.primary else AdminViewDefaultColors.Primary
    val accentColor = if (isDark) cardColors.cardBackground else AdminViewDefaultColors.Accent
    val textPrimaryColor =
        if (isDark) cardColors.cardContent else AdminViewDefaultColors.TextPrimary
    val textSecondaryColor =
        if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else AdminViewDefaultColors.TextSecondary
    val errorColor = AdminViewDefaultColors.Error

    val typography = MaterialTheme.typography

    // Observar el estado de la baja desde el ViewModel
    val bajaEstado by listarPaciente.bajaEstado.collectAsState()

    // Efecto para manejar el resultado de la baja
    LaunchedEffect(bajaEstado) {
        if (bajaEstado != null && isBajaInProgress) {
            if (bajaEstado!!.isSuccess) {
                viewModel.actualizarPsicologoBaja(psicologoSeleccionado!!.idPsicologo)
                snackbarHostState.showSnackbar(
                    "Psicólogo ${psicologoSeleccionado?.nombre} ${psicologoSeleccionado?.apellido} dado de baja exitosamente"
                )
                mostrarDialogoBaja = false
                psicologoSeleccionado = null
            } else if (bajaEstado!!.isFailure) {
                snackbarHostState.showSnackbar(
                    "Error al dar de baja: ${bajaEstado!!.exceptionOrNull()?.message ?: "Error desconocido"}"
                )
            }
            isBajaInProgress = false
        }
    }

    Scaffold(
        containerColor = backgroundColor,
        topBar = {
            DarAltaPsicologo(
                title = "Lista de Psicólogos",
                navController = navController,
                showBackButton = true,
                showLogo = false,
                onLogout = {}
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = {
                    navController.navigate(Screens.agregarPsicologo.route)
                },
                containerColor = primaryColor,
                shape = RoundedCornerShape(50.dp)
            ) {
                Icon(
                    Icons.Default.Person,
                    contentDescription = "Agregar psicólogo",
                    tint = Color.White
                )
            }
        }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .background(
                    brush = Brush.verticalGradient(
                        colors = if (isDark) {
                            listOf(screenColors.background, screenColors.background)
                        } else {
                            listOf(accentColor, Color.White)
                        }
                    )
                )
        ) {
            if (psicologos.isEmpty()) {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(32.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.Center
                ) {
                    Text(
                        text = "📋 No hay psicólogos registrados",
                        style = typography.titleMedium?.copy(
                            fontSize = 18.sp,
                            color = textSecondaryColor
                        ) ?: MaterialTheme.typography.titleMedium,
                        textAlign = TextAlign.Center,
                        fontFamily = roboto
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "Presiona el botón + para agregar uno",
                        style = typography.bodyMedium?.copy(
                            fontSize = 14.sp,
                            color = textSecondaryColor
                        ) ?: MaterialTheme.typography.bodyMedium,
                        textAlign = TextAlign.Center,
                        fontFamily = roboto
                    )
                }
            } else {
                LazyColumn(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    items(psicologos) { psicologo ->
                        PsicologoCardExpandable(
                            psicologo = psicologo,
                            onDarBaja = {
                                psicologoSeleccionado = psicologo
                                mostrarDialogoBaja = true
                            },
                            onEditar = {
                                psicologoSeleccionado = psicologo
                                mostrarDialogoEdicion = true
                            },
                            typography = typography,
                            isDark = isDark,
                            primaryColor = primaryColor,
                            surfaceColor = surfaceColor,
                            textPrimaryColor = textPrimaryColor,
                            textSecondaryColor = textSecondaryColor,
                            errorColor = errorColor,
                            roboto = roboto
                        )
                    }
                }
            }
        }

        // Diálogo de confirmación de baja
        if (mostrarDialogoBaja && psicologoSeleccionado != null && !isBajaInProgress) {
            AlertDialog(
                onDismissRequest = {
                    if (!isBajaInProgress) {
                        mostrarDialogoBaja = false
                    }
                },
                containerColor = surfaceColor,
                title = {
                    Text(
                        text = "Confirmar baja",
                        style = typography.headlineSmall?.copy(
                            fontSize = 20.sp,
                            fontWeight = FontWeight.Bold,
                            color = textPrimaryColor
                        ) ?: MaterialTheme.typography.headlineSmall,
                        fontFamily = roboto
                    )
                },
                text = {
                    Text(
                        text = "¿Seguro que deseas dar de baja a ${psicologoSeleccionado!!.nombre} ${psicologoSeleccionado!!.apellido}?",
                        style = typography.bodyMedium?.copy(
                            fontSize = 14.sp,
                            color = textSecondaryColor
                        ) ?: MaterialTheme.typography.bodyMedium,
                        fontFamily = roboto
                    )
                },
                confirmButton = {
                    Button(
                        onClick = {
                            isBajaInProgress = true
                            listarPaciente.darBajaPsicologo(psicologoSeleccionado!!.idPsicologo)
                        },
                        colors = ButtonDefaults.buttonColors(containerColor = errorColor),
                        shape = RoundedCornerShape(12.dp),
                        enabled = !isBajaInProgress
                    ) {
                        Text(
                            if (isBajaInProgress) "Procesando..." else "Dar de baja",
                            style = typography.labelLarge?.copy(
                                fontSize = 14.sp,
                                fontWeight = FontWeight.Medium
                            ) ?: MaterialTheme.typography.labelLarge,
                            color = Color.White,
                            fontFamily = roboto
                        )
                    }
                },
                dismissButton = {
                    OutlinedButton(
                        onClick = {
                            if (!isBajaInProgress) {
                                mostrarDialogoBaja = false
                            }
                        },
                        shape = RoundedCornerShape(12.dp),
                        colors = ButtonDefaults.outlinedButtonColors(contentColor = primaryColor),
                        enabled = !isBajaInProgress
                    ) {
                        Text("Cancelar", fontFamily = roboto)
                    }
                }
            )
        }

        // Diálogo de edición de psicólogo
        if (mostrarDialogoEdicion && psicologoSeleccionado != null && !isEditInProgress) {
            AlertDialog(
                onDismissRequest = {
                    if (!isEditInProgress) {
                        mostrarDialogoEdicion = false
                        psicologoSeleccionado = null
                    }
                },
                containerColor = surfaceColor,
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                title = {
                    Row(
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Icon(
                            Icons.Default.Person,
                            contentDescription = null,
                            tint = primaryColor,
                            modifier = Modifier.size(28.dp)
                        )
                        Spacer(modifier = Modifier.width(12.dp))
                        Text(
                            text = "Editar Psicólogo",
                            style = typography.headlineSmall?.copy(
                                fontSize = 20.sp,
                                fontWeight = FontWeight.Bold,
                                color = textPrimaryColor
                            ) ?: MaterialTheme.typography.headlineSmall,
                            fontFamily = roboto
                        )
                    }
                },
                text = {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .heightIn(max = 500.dp)
                            .verticalScroll(rememberScrollState()),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        // Nombre
                        OutlinedTextField(
                            value = editNombre,
                            onValueChange = { editNombre = it },
                            label = { Text("Nombre *", fontFamily = roboto) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(12.dp)
                        )

                        // Apellido
                        OutlinedTextField(
                            value = editApellido,
                            onValueChange = { editApellido = it },
                            label = { Text("Apellido *", fontFamily = roboto) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(12.dp)
                        )

                        // Email
                        OutlinedTextField(
                            value = editEmail,
                            onValueChange = { editEmail = it },
                            label = { Text("Email", fontFamily = roboto) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(12.dp)
                        )

                        // Teléfono
                        OutlinedTextField(
                            value = editTelefono,
                            onValueChange = { editTelefono = it },
                            label = { Text("Teléfono", fontFamily = roboto) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(12.dp)
                        )

                        // Especialidad
                        OutlinedTextField(
                            value = editEspecialidad,
                            onValueChange = { editEspecialidad = it },
                            label = { Text("Especialidad *", fontFamily = roboto) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(12.dp)
                        )

                        // Experiencia
                        OutlinedTextField(
                            value = editExperiencia,
                            onValueChange = { editExperiencia = it },
                            label = { Text("Años de experiencia", fontFamily = roboto) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(12.dp)
                        )

                        // Licencia
                        OutlinedTextField(
                            value = editLicencia,
                            onValueChange = { editLicencia = it },
                            label = { Text("Número de licencia", fontFamily = roboto) },
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(12.dp)
                        )

                        // Descripción
                        OutlinedTextField(
                            value = editDescripcion,
                            onValueChange = { editDescripcion = it },
                            label = { Text("Descripción profesional", fontFamily = roboto) },
                            modifier = Modifier.fillMaxWidth(),
                            minLines = 3,
                            shape = RoundedCornerShape(12.dp)
                        )
                    }
                },
                confirmButton = {
                    Button(
                        onClick = {
                            val experienciaInt = if (editExperiencia.isNotBlank()) editExperiencia.toIntOrNull() else null

                            val request = PsicologoRequestDTO(
                                nombrePsicologo = editNombre,
                                apellidoPsicologo = editApellido,
                                email = editEmail,
                                password = "",
                                especialidad = editEspecialidad,
                                experiencia = experienciaInt,
                                descripcion = editDescripcion.ifBlank { null },
                                licencia = editLicencia.ifBlank { null },
                                telefono = editTelefono.ifBlank { null }
                            )

                            isEditInProgress = true
                            viewModel.editarPsicologo(psicologoSeleccionado!!.idPsicologo, request)

                            scope.launch {
                                delay(1000)
                                isEditInProgress = false
                                mostrarDialogoEdicion = false
                                psicologoSeleccionado = null
                                snackbarHostState.showSnackbar("✓ Psicólogo actualizado exitosamente")
                            }
                        },
                        colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                        shape = RoundedCornerShape(12.dp),
                        enabled = editNombre.isNotBlank() && editApellido.isNotBlank() && editEspecialidad.isNotBlank() && !isEditInProgress
                    ) {
                        if (isEditInProgress) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(20.dp),
                                color = Color.White,
                                strokeWidth = 2.dp
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text("Guardando...", fontFamily = roboto)
                        } else {
                            Text("💾 GUARDAR", fontFamily = roboto, fontWeight = FontWeight.Bold)
                        }
                    }
                },
                dismissButton = {
                    OutlinedButton(
                        onClick = {
                            if (!isEditInProgress) {
                                mostrarDialogoEdicion = false
                                psicologoSeleccionado = null
                            }
                        },
                        shape = RoundedCornerShape(12.dp),
                        colors = ButtonDefaults.outlinedButtonColors(contentColor = errorColor),
                        enabled = !isEditInProgress
                    ) {
                        Text("Cancelar", fontFamily = roboto)
                    }
                }
            )
        }
    }
}


@Composable
fun PsicologoCardExpandable(
    psicologo: PsicologoSelfResponseDTO,
    onDarBaja: () -> Unit,
    onEditar: () -> Unit,
    typography: androidx.compose.material3.Typography,
    isDark: Boolean,
    primaryColor: Color,
    surfaceColor: Color,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    errorColor: Color,
    roboto: FontFamily
) {
    var expanded by remember { mutableStateOf(false) }
    val context = LocalContext.current // ✅ Contexto para intent de llamada

    Card(
        shape = RoundedCornerShape(20.dp),
        modifier = Modifier
            .fillMaxWidth()
            .shadow(8.dp, RoundedCornerShape(20.dp))
            .clickable { expanded = !expanded },
        colors = CardDefaults.cardColors(containerColor = surfaceColor),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Column(modifier = Modifier.padding(20.dp)) {
            // Header con nombre y flecha de expansión
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    // Nombre completo
                    Text(
                        text = "${psicologo.nombre} ${psicologo.apellido}",
                        style = typography.titleLarge?.copy(
                            fontSize = 18.sp,
                            fontWeight = FontWeight.Bold,
                            color = primaryColor
                        ) ?: MaterialTheme.typography.titleLarge,
                        fontFamily = roboto
                    )

                    // Mostrar teléfono y email en versión compacta (con botón de llamada)
                    if (!psicologo.telefono.isNullOrBlank() || psicologo.email.isNotBlank()) {
                        Spacer(modifier = Modifier.height(4.dp))
                        Row(
                            horizontalArrangement = Arrangement.spacedBy(12.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            // Teléfono con botón de llamada
                            if (!psicologo.telefono.isNullOrBlank()) {
                                Row(
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                                ) {
                                    // Botón de llamada
                                    IconButton(
                                        onClick = {
                                            psicologo.telefono?.let { telefono ->
                                                val intent = Intent(Intent.ACTION_DIAL).apply {
                                                    data = Uri.parse("tel:$telefono")
                                                }
                                                context.startActivity(intent)
                                            }
                                        },
                                        modifier = Modifier.size(28.dp)
                                    ) {
                                        Icon(
                                            imageVector = Icons.Outlined.Phone,
                                            contentDescription = "Llamar al psicólogo",
                                            modifier = Modifier.size(16.dp),
                                            tint = primaryColor
                                        )
                                    }

                                    Text(
                                        text = psicologo.telefono,
                                        style = typography.bodySmall?.copy(
                                            fontSize = 12.sp,
                                            color = textSecondaryColor
                                        ) ?: MaterialTheme.typography.bodySmall,
                                        fontFamily = roboto
                                    )
                                }
                            }

                            // Email
                            if (psicologo.email.isNotBlank()) {
                                Row(
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                                ) {
                                    Text(
                                        text = "✉️",
                                        fontSize = 12.sp
                                    )
                                    Text(
                                        text = psicologo.email,
                                        style = typography.bodySmall?.copy(
                                            fontSize = 12.sp,
                                            color = textSecondaryColor
                                        ) ?: MaterialTheme.typography.bodySmall,
                                        fontFamily = roboto,
                                        maxLines = 1,
                                        overflow = TextOverflow.Ellipsis
                                    )
                                }
                            }
                        }
                    }
                }

                // Icono de expandir/colapsar
                Icon(
                    imageVector = if (expanded) Icons.Default.KeyboardArrowUp else Icons.Default.KeyboardArrowDown,
                    contentDescription = if (expanded) "Contraer" else "Expandir",
                    tint = textSecondaryColor,
                    modifier = Modifier.size(24.dp)
                )
            }

            // Información expandible (MUESTRA TODOS LOS DATOS)
            if (expanded) {
                Spacer(modifier = Modifier.height(16.dp))

                HorizontalDivider(
                    Modifier,
                    thickness = 1.dp,
                    color = textSecondaryColor.copy(alpha = 0.2f)
                )
                Spacer(modifier = Modifier.height(12.dp))

                // ============================================
                // INFORMACIÓN COMPLETA DEL PSICÓLOGO
                // ============================================

                // Email (con acción de email)
                InfoRowWithAction(
                    label = "Email",
                    value = psicologo.email,
                    icon = "✉️",
                    typography = typography,
                    textPrimaryColor = textPrimaryColor,
                    textSecondaryColor = textSecondaryColor,
                    roboto = roboto,
                    onClick = {
                        // Abrir cliente de email
                        val intent = Intent(Intent.ACTION_SENDTO).apply {
                            data = Uri.parse("mailto:${psicologo.email}")
                        }
                        context.startActivity(intent)
                    }
                )

                Spacer(modifier = Modifier.height(8.dp))

                // Teléfono con botón de llamada (destacado)
                if (!psicologo.telefono.isNullOrBlank()) {
                    InfoRowWithCallButton(
                        label = "Teléfono",
                        value = psicologo.telefono,
                        typography = typography,
                        textPrimaryColor = textPrimaryColor,
                        textSecondaryColor = textSecondaryColor,
                        roboto = roboto,
                        context = context,
                        primaryColor = primaryColor
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                }

                // Especialidad
                InfoRow(
                    label = "Especialidad",
                    value = psicologo.especialidad,
                    typography = typography,
                    textPrimaryColor = textPrimaryColor,
                    textSecondaryColor = textSecondaryColor,
                    roboto = roboto
                )

                Spacer(modifier = Modifier.height(8.dp))

                // Experiencia
                if (psicologo.experiencia != null && psicologo.experiencia > 0) {
                    InfoRow(
                        label = "Años de experiencia",
                        value = "${psicologo.experiencia} años",
                        typography = typography,
                        textPrimaryColor = textPrimaryColor,
                        textSecondaryColor = textSecondaryColor,
                        roboto = roboto
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                }

                // Licencia
                if (!psicologo.licencia.isNullOrBlank()) {
                    InfoRow(
                        label = "N° Licencia",
                        value = psicologo.licencia,
                        typography = typography,
                        textPrimaryColor = textPrimaryColor,
                        textSecondaryColor = textSecondaryColor,
                        roboto = roboto
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                }

                // Descripción
                if (!psicologo.descripcion.isNullOrBlank()) {
                    Text(
                        text = "Descripción profesional:",
                        style = typography.bodyMedium?.copy(
                            fontSize = 13.sp,
                            color = textSecondaryColor,
                            fontWeight = FontWeight.Medium
                        ) ?: MaterialTheme.typography.bodyMedium,
                        fontFamily = roboto
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    Text(
                        text = psicologo.descripcion,
                        style = typography.bodyMedium?.copy(
                            fontSize = 13.sp,
                            color = textPrimaryColor,
                            lineHeight = 20.sp
                        ) ?: MaterialTheme.typography.bodyMedium,
                        fontFamily = roboto
                    )
                }

                Spacer(modifier = Modifier.height(16.dp))

                Divider(color = textSecondaryColor.copy(alpha = 0.2f), thickness = 1.dp)
                Spacer(modifier = Modifier.height(12.dp))

                // Botones de acción
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Button(
                        onClick = onDarBaja,
                        colors = ButtonDefaults.buttonColors(containerColor = errorColor),
                        shape = RoundedCornerShape(12.dp),
                        modifier = Modifier.weight(1f)
                    ) {
                        Text("Dar de baja", color = Color.White, fontFamily = roboto)
                    }

                    Button(
                        onClick = onEditar,
                        colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                        shape = RoundedCornerShape(12.dp),
                        modifier = Modifier.weight(1f)
                    ) {
                        Text("Editar", color = if (isDark) Color.White else Color.Black, fontFamily = roboto)
                    }
                }
            } else {
                // Cuando está colapsado, mostramos info resumida y botones
                Spacer(modifier = Modifier.height(12.dp))

                // Mostrar especialidad en modo colapsado
                Text(
                    text = psicologo.especialidad,
                    style = typography.bodyMedium?.copy(
                        fontSize = 13.sp,
                        color = textSecondaryColor
                    ) ?: MaterialTheme.typography.bodyMedium,
                    fontFamily = roboto,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )

                Spacer(modifier = Modifier.height(12.dp))

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Button(
                        onClick = onDarBaja,
                        colors = ButtonDefaults.buttonColors(containerColor = errorColor),
                        shape = RoundedCornerShape(12.dp),
                        modifier = Modifier.weight(1f)
                    ) {
                        Text("Dar de baja", color = Color.White, fontFamily = roboto)
                    }

                    Button(
                        onClick = onEditar,
                        colors = ButtonDefaults.buttonColors(containerColor = primaryColor),
                        shape = RoundedCornerShape(12.dp),
                        modifier = Modifier.weight(1f)
                    ) {
                        Text("Editar", color = if (isDark) Color.White else Color.Black, fontFamily = roboto)
                    }
                }
            }
        }
    }
}

// Componente para fila de información con botón de llamada
@Composable
fun InfoRowWithCallButton(
    label: String,
    value: String,
    typography: androidx.compose.material3.Typography,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    roboto: FontFamily,
    context: android.content.Context,
    primaryColor: Color
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = "$label:",
            style = typography.bodyMedium?.copy(
                fontSize = 13.sp,
                color = textSecondaryColor,
                fontWeight = FontWeight.Bold
            ) ?: MaterialTheme.typography.bodyMedium,
            fontFamily = roboto
        )

        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(
                text = value,
                style = typography.bodyMedium?.copy(
                    fontSize = 13.sp,
                    color = Color(0xFF4CAF50),
                    fontWeight = FontWeight.Bold
                ) ?: MaterialTheme.typography.bodyMedium,
                fontFamily = roboto
            )

            IconButton(
                onClick = {
                    val intent = Intent(Intent.ACTION_DIAL).apply {
                        data = Uri.parse("tel:$value")
                    }
                    context.startActivity(intent)
                },
                modifier = Modifier.size(32.dp)
            ) {
                Icon(
                    imageVector = Icons.Outlined.Phone,
                    contentDescription = "Llamar al psicólogo",
                    modifier = Modifier.size(18.dp),
                    tint = primaryColor
                )
            }
        }
    }
}

// Componente para fila de información con acción (ej: email)
@Composable
fun InfoRowWithAction(
    label: String,
    value: String,
    icon: String,
    typography: androidx.compose.material3.Typography,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    roboto: FontFamily,
    onClick: () -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { onClick() },
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = "$label:",
            style = typography.bodyMedium?.copy(
                fontSize = 13.sp,
                color = textSecondaryColor,
                fontWeight = FontWeight.Medium
            ) ?: MaterialTheme.typography.bodyMedium,
            fontFamily = roboto
        )

        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            Text(
                text = icon,
                fontSize = 14.sp
            )
            Text(
                text = value,
                style = typography.bodyMedium?.copy(
                    fontSize = 13.sp,
                    color = textPrimaryColor
                ) ?: MaterialTheme.typography.bodyMedium,
                fontFamily = roboto
            )
        }
    }
}

// Componente auxiliar para filas de información simple
@Composable
fun InfoRow(
    label: String,
    value: String,
    typography: androidx.compose.material3.Typography,
    textPrimaryColor: Color,
    textSecondaryColor: Color,
    roboto: FontFamily
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.Top
    ) {
        Text(
            text = "$label:",
            style = typography.bodyMedium?.copy(
                fontSize = 13.sp,
                color = textSecondaryColor,
                fontWeight = FontWeight.Medium
            ) ?: MaterialTheme.typography.bodyMedium,
            fontFamily = roboto
        )
        Text(
            text = value,
            style = typography.bodyMedium?.copy(
                fontSize = 13.sp,
                color = textPrimaryColor
            ) ?: MaterialTheme.typography.bodyMedium,
            fontFamily = roboto,
            textAlign = TextAlign.End
        )
    }
}