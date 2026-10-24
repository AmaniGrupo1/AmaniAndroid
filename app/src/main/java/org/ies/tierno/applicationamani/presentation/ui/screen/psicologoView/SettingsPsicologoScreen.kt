package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import android.content.res.Configuration
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
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
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.HelpOutline
import androidx.compose.material.icons.automirrored.filled.Notes
import androidx.compose.material.icons.filled.Badge
import androidx.compose.material.icons.filled.CameraAlt
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Save
import androidx.compose.material.icons.filled.Timeline
import androidx.compose.material.icons.filled.Verified
import androidx.compose.material.icons.filled.Work
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import coil.compose.AsyncImage
import coil.request.ImageRequest
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel

/**
 * Pantalla de ajustes del perfil del psicólogo.
 *
 * Permite al psicólogo editar sus datos profesionales (nombre, apellidos,
 * especialidad, experiencia, licencia, descripción) y acceder al centro
 * de ayuda y soporte.
 *
 * @param idPsicologo Identificador del psicólogo en sesión.
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona el perfil del psicólogo.
 */
@Composable
fun SettingsPsicologoScreen(
    idPsicologo: Long,
    navController: NavController,
    viewModel: ProfilePsicologoViewModel = koinViewModel(),
) {
    val perfil by viewModel.perfil.collectAsStateWithLifecycle()
    val isLoading by viewModel.isLoading.collectAsStateWithLifecycle()

    // Local states for editing (placeholders since there's no update API yet)
    var nombre by remember { mutableStateOf("") }
    var apellidos by remember { mutableStateOf("") }
    var especialidad by remember { mutableStateOf("") }
    var experiencia by remember { mutableStateOf("") }
    var licencia by remember { mutableStateOf("") }
    var descripcion by remember { mutableStateOf("") }

    LaunchedEffect(idPsicologo) {
        viewModel.fetchProfile(idPsicologo)
    }

    LaunchedEffect(perfil) {
        perfil?.let {
            nombre = it.usuario?.nombre ?: ""
            apellidos = it.usuario?.apellido ?: ""
            especialidad = it.especialidad ?: ""
            experiencia = it.experiencia?.toString() ?: ""
            licencia = it.licencia ?: ""
            descripcion = it.descripcion ?: ""
        }
    }

    SettingsPsicologoContent(
        isLoading = isLoading && perfil == null,
        fotoPerfilUrl = perfil?.usuario?.fotoPerfilUrl,
        email = perfil?.usuario?.email ?: "",
        nombre = nombre,
        onNombreChange = { nombre = it },
        apellidos = apellidos,
        onApellidosChange = { apellidos = it },
        especialidad = especialidad,
        onEspecialidadChange = { especialidad = it },
        experiencia = experiencia,
        onExperienciaChange = { experiencia = it },
        licencia = licencia,
        onLicenciaChange = { licencia = it },
        descripcion = descripcion,
        onDescripcionChange = { descripcion = it },
        onBackClick = { navController.navigateUp() },
        onSaveClick = { /* Pendiente: ViewModel.updateProfile */ },
        onSupportClick = { /* Navegar a soporte */ },
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsPsicologoContent(
    isLoading: Boolean,
    fotoPerfilUrl: String?,
    email: String,
    nombre: String,
    onNombreChange: (String) -> Unit,
    apellidos: String,
    onApellidosChange: (String) -> Unit,
    especialidad: String,
    onEspecialidadChange: (String) -> Unit,
    experiencia: String,
    onExperienciaChange: (String) -> Unit,
    licencia: String,
    onLicenciaChange: (String) -> Unit,
    descripcion: String,
    onDescripcionChange: (String) -> Unit,
    onBackClick: () -> Unit,
    onSaveClick: () -> Unit,
    onSupportClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Scaffold(
        modifier = modifier,
        containerColor = colors.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        stringResource(R.string.auto_ajustes_de_perfil),
                        style = typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colors.surface,
                        titleContentColor = colors.onSurface,
                        navigationIconContentColor = colors.onSurface,
                    ),
            )
        },
    ) { innerPadding ->
        Box(modifier = Modifier.fillMaxSize().padding(innerPadding)) {
            if (isLoading) {
                CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
            } else {
                Column(
                    modifier =
                        Modifier
                            .fillMaxSize()
                            .verticalScroll(rememberScrollState())
                            .padding(Spacing.m),
                    verticalArrangement = Arrangement.spacedBy(Spacing.l),
                ) {
                    // Foto de Perfil
                    Box(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(vertical = Spacing.s),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(horizontalAlignment = Alignment.CenterHorizontally) {
                            Box(
                                modifier =
                                    Modifier
                                        .size(Dimensions.avatarHero)
                                        .clip(CircleShape)
                                        .background(colors.primaryContainer)
                                        .border(Dimensions.progressStroke, colors.primary, CircleShape),
                                contentAlignment = Alignment.Center,
                            ) {
                                AsyncImage(
                                    model =
                                        ImageRequest
                                            .Builder(LocalContext.current)
                                            .data(fotoPerfilUrl)
                                            .crossfade(true)
                                            .error(R.drawable.ic_default_avatar)
                                            .placeholder(R.drawable.ic_default_avatar)
                                            .build(),
                                    contentDescription = stringResource(R.string.auto_foto_de_perfil),
                                    modifier = Modifier.fillMaxSize().clip(CircleShape),
                                    contentScale = ContentScale.Crop,
                                )
                                Box(
                                    modifier =
                                        Modifier
                                            .align(Alignment.BottomEnd)
                                            .size(Dimensions.avatarSmall)
                                            .clip(CircleShape)
                                            .background(colors.primary)
                                            .padding(Spacing.s),
                                    contentAlignment = Alignment.Center,
                                ) {
                                    Icon(
                                        Icons.Default.CameraAlt,
                                        contentDescription = null,
                                        tint = colors.onPrimary,
                                    )
                                }
                            }
                            Spacer(modifier = Modifier.height(Spacing.sm))
                            Text(
                                text = stringResource(R.string.auto_psicologo_colegiado),
                                style = typography.labelLarge,
                                color = colors.primary,
                                fontWeight = FontWeight.Bold,
                            )
                        }
                    }

                    // Datos Personales
                    SettingsSectionPsico(
                        title = stringResource(R.string.auto_datos_personales),
                        icon = Icons.Default.Person,
                    ) {
                        Row(horizontalArrangement = Arrangement.spacedBy(Spacing.sm)) {
                            TextFieldPsico(
                                stringResource(R.string.nombre),
                                nombre,
                                onNombreChange,
                                Icons.Default.Badge,
                                Modifier.weight(1f),
                            )
                            TextFieldPsico(
                                stringResource(R.string.settings_apellidos),
                                apellidos,
                                onApellidosChange,
                                Icons.Default.Badge,
                                Modifier.weight(1f),
                            )
                        }
                        TextFieldPsico(
                            stringResource(R.string.psico_email_no_editable),
                            email,
                            {},
                            Icons.Default.Email,
                            Modifier.fillMaxWidth(),
                            readOnly = true,
                        )
                    }

                    // Información Profesional
                    SettingsSectionPsico(
                        title = stringResource(R.string.psico_perfil_profesional),
                        icon = Icons.Default.Work,
                    ) {
                        TextFieldPsico(
                            stringResource(R.string.auto_especialidad_1),
                            especialidad,
                            onEspecialidadChange,
                            Icons.Default.MedicalServices,
                            Modifier.fillMaxWidth(),
                        )
                        Row(horizontalArrangement = Arrangement.spacedBy(Spacing.sm)) {
                            TextFieldPsico(
                                stringResource(R.string.psico_anos_exp_corto),
                                experiencia,
                                onExperienciaChange,
                                Icons.Default.Timeline,
                                Modifier.weight(1f),
                            )
                            TextFieldPsico(
                                stringResource(R.string.psico_licencia_colegiado),
                                licencia,
                                onLicenciaChange,
                                Icons.Default.Verified,
                                Modifier.weight(1.5f),
                            )
                        }
                        TextFieldPsico(
                            stringResource(R.string.psico_bio_descripcion),
                            descripcion,
                            onDescripcionChange,
                            Icons.AutoMirrored.Filled.Notes,
                            Modifier.fillMaxWidth(),
                            singleLine = false,
                            minLines = 3,
                        )
                    }

                    // Botón Guardar
                    Button(
                        onClick = onSaveClick,
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .height(Dimensions.buttonHeightLarge),
                        shape = shapes.large,
                        elevation = ButtonDefaults.elevatedButtonElevation(),
                    ) {
                        Icon(Icons.Default.Save, contentDescription = null)
                        Spacer(modifier = Modifier.width(Spacing.s))
                        Text(stringResource(R.string.auto_guardar_cambios_1), fontWeight = FontWeight.Bold)
                    }

                    // Soporte y Ayuda
                    OutlinedButton(
                        onClick = onSupportClick,
                        modifier = Modifier.fillMaxWidth().height(Dimensions.buttonHeight),
                        shape = shapes.medium,
                    ) {
                        Icon(Icons.AutoMirrored.Filled.HelpOutline, contentDescription = null)
                        Spacer(modifier = Modifier.width(Spacing.s))
                        Text(stringResource(R.string.auto_centro_de_ayuda_y))
                    }

                    Spacer(modifier = Modifier.height(Spacing.l))
                }
            }
        }
    }
}

/**
 * Sección agrupada de ajustes con título, icono y contenido para el psicólogo.
 *
 * @param title Título descriptivo de la sección.
 * @param icon Icono vectorial que identifica la sección.
 * @param content Contenido composable a mostrar dentro de la tarjeta.
 */
@Composable
fun SettingsSectionPsico(
    title: String,
    icon: ImageVector,
    content: @Composable ColumnScope.() -> Unit,
) {
    Column(verticalArrangement = Arrangement.spacedBy(Spacing.sm)) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(Spacing.s),
            modifier = Modifier.padding(start = Spacing.xs),
        ) {
            Icon(
                icon,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.primary,
                modifier = Modifier.size(Dimensions.iconDefault),
            )
            Text(
                text = title,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold,
                color = MaterialTheme.colorScheme.primary,
            )
        }
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.large,
            colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
            elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level1),
        ) {
            Column(
                modifier = Modifier.padding(Spacing.m),
                verticalArrangement = Arrangement.spacedBy(Spacing.m),
                content = content,
            )
        }
    }
}

/**
 * Campo de texto personalizado con etiqueta e icono para formularios del psicólogo.
 *
 * @param label Etiqueta descriptiva mostrada sobre el campo.
 * @param value Valor actual del campo de texto.
 * @param onValueChange Callback invocado al modificar el texto.
 * @param icon Icono vectorial a la izquierda del campo.
 * @param modifier Modificador de diseño opcional.
 * @param readOnly Indica si el campo es de solo lectura.
 * @param singleLine Indica si el campo es de una sola línea.
 * @param minLines Número mínimo de líneas visibles.
 */
@Composable
fun TextFieldPsico(
    label: String,
    value: String,
    onValueChange: (String) -> Unit,
    icon: ImageVector,
    modifier: Modifier = Modifier,
    readOnly: Boolean = false,
    singleLine: Boolean = true,
    minLines: Int = 1,
) {
    Column(modifier = modifier) {
        Text(
            text = label,
            style = MaterialTheme.typography.labelMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            modifier = Modifier.padding(start = Spacing.xs, bottom = Spacing.xs),
        )
        OutlinedTextField(
            value = value,
            onValueChange = onValueChange,
            modifier = Modifier.fillMaxWidth(),
            singleLine = singleLine,
            minLines = minLines,
            readOnly = readOnly,
            leadingIcon = { Icon(icon, contentDescription = null, modifier = Modifier.size(Dimensions.iconMedium)) },
            shape = MaterialTheme.shapes.medium,
            colors =
                OutlinedTextFieldDefaults.colors(
                    focusedContainerColor =
                        if (readOnly) {
                            MaterialTheme.colorScheme.surfaceVariant.copy(
                                alpha = 0.3f,
                            )
                        } else {
                            MaterialTheme.colorScheme.surface
                        },
                    unfocusedContainerColor =
                        if (readOnly) {
                            MaterialTheme.colorScheme.surfaceVariant.copy(
                                alpha = 0.3f,
                            )
                        } else {
                            MaterialTheme.colorScheme.surface
                        },
                    focusedBorderColor = MaterialTheme.colorScheme.primary,
                    unfocusedBorderColor = MaterialTheme.colorScheme.outlineVariant,
                ),
        )
    }
}

@Preview(name = "SettingsPsicologo Light", showBackground = true)
@Preview(
    name = "SettingsPsicologo Dark",
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
)
@Preview(name = "SettingsPsicologo Large Font", showBackground = true, fontScale = 1.5f)
@Composable
private fun SettingsPsicologoScreenPreview() {
    AppTheme {
        SettingsPsicologoContent(
            isLoading = false,
            fotoPerfilUrl = null,
            email = "carlos.mendoza@amani.es",
            nombre = "Carlos",
            onNombreChange = {},
            apellidos = "Mendoza",
            onApellidosChange = {},
            especialidad = "Psicología Clínica",
            onEspecialidadChange = {},
            experiencia = "8",
            onExperienciaChange = {},
            licencia = "M-12345",
            onLicenciaChange = {},
            descripcion = "Especialista en terapia cognitivo-conductual y trastornos de ansiedad.",
            onDescripcionChange = {},
            onBackClick = {},
            onSaveClick = {},
            onSupportClick = {},
        )
    }
}
