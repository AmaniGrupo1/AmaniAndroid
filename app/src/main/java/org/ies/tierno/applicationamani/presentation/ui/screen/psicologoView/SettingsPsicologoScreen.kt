package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView

import androidx.compose.ui.res.stringResource
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
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.HelpOutline
import androidx.compose.material.icons.automirrored.filled.Notes
import androidx.compose.material.icons.filled.Badge
import androidx.compose.material.icons.filled.CameraAlt
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Psychology
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
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import coil.compose.AsyncImage
import coil.request.ImageRequest
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
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
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsPsicologoScreen(
    idPsicologo: Long,
    navController: NavController,
    viewModel: ProfilePsicologoViewModel = koinViewModel(),
) {
    val perfil by viewModel.perfil.collectAsState()
    val isLoading by viewModel.isLoading.collectAsState()
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

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

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.auto_ajustes_de_perfil), fontWeight = FontWeight.Bold) },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = stringResource(R.string.auto_volver))
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
    ) { innerPadding ->
        Box(modifier = Modifier.fillMaxSize().padding(innerPadding)) {
            if (isLoading && perfil == null) {
                CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
            } else {
                Column(
                    modifier =
                        Modifier
                            .fillMaxSize()
                            .verticalScroll(rememberScrollState())
                            .padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(24.dp),
                ) {
                    // Foto de Perfil
                    Box(
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .padding(vertical = 8.dp),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(horizontalAlignment = Alignment.CenterHorizontally) {
                            Box(
                                modifier =
                                    Modifier
                                        .size(110.dp)
                                        .clip(CircleShape)
                                        .background(colors.primaryContainer)
                                        .border(3.dp, colors.primary, CircleShape),
                                contentAlignment = Alignment.Center,
                            ) {
                                AsyncImage(
                                    model =
                                        ImageRequest
                                            .Builder(LocalContext.current)
                                            .data(perfil?.usuario?.fotoPerfilUrl)
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
                                            .size(34.dp)
                                            .clip(CircleShape)
                                            .background(colors.primary)
                                            .padding(7.dp),
                                    contentAlignment = Alignment.Center,
                                ) {
                                    Icon(Icons.Default.CameraAlt, contentDescription = null, tint = Color.White)
                                }
                            }
                            Spacer(modifier = Modifier.height(12.dp))
                            Text(
                                text = stringResource(R.string.auto_psicologo_colegiado),
                                style = typography.labelLarge,
                                color = colors.primary,
                                fontWeight = FontWeight.Bold,
                            )
                        }
                    }

                    // Datos Personales
                    SettingsSectionPsico(title = "Datos Personales", icon = Icons.Default.Person) {
                        Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                            TextFieldPsico(
                                "Nombre",
                                nombre,
                                { nombre = it },
                                Icons.Default.Badge,
                                Modifier.weight(1f),
                            )
                            TextFieldPsico(
                                "Apellidos",
                                apellidos,
                                { apellidos = it },
                                Icons.Default.Badge,
                                Modifier.weight(1f),
                            )
                        }
                        TextFieldPsico(
                            "Email (No editable)",
                            perfil?.usuario?.email ?: "",
                            {},
                            Icons.Default.Email,
                            Modifier.fillMaxWidth(),
                            readOnly = true,
                        )
                    }

                    // Información Profesional
                    SettingsSectionPsico(title = "Perfil Profesional", icon = Icons.Default.Work) {
                        TextFieldPsico(
                            "Especialidad",
                            especialidad,
                            { especialidad = it },
                            Icons.Default.Psychology,
                            Modifier.fillMaxWidth(),
                        )
                        Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                            TextFieldPsico(
                                "Años Exp.",
                                experiencia,
                                { experiencia = it },
                                Icons.Default.Timeline,
                                Modifier.weight(1f),
                            )
                            TextFieldPsico(
                                "Licencia/Colegiado",
                                licencia,
                                { licencia = it },
                                Icons.Default.Verified,
                                Modifier.weight(1.5f),
                            )
                        }
                        TextFieldPsico(
                            "Bio / Descripción",
                            descripcion,
                            { descripcion = it },
                            Icons.AutoMirrored.Filled.Notes,
                            Modifier.fillMaxWidth(),
                            singleLine = false,
                            minLines = 3,
                        )
                    }

                    // Botón Guardar
                    Button(
                        onClick = { /* Pendiente: ViewModel.updateProfile */ },
                        modifier =
                            Modifier
                                .fillMaxWidth()
                                .height(56.dp),
                        shape = RoundedCornerShape(16.dp),
                        elevation = ButtonDefaults.elevatedButtonElevation(),
                    ) {
                        Icon(Icons.Default.Save, contentDescription = null)
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(stringResource(R.string.auto_guardar_cambios_1), fontWeight = FontWeight.Bold)
                    }

                    // Soporte y Ayuda
                    OutlinedButton(
                        onClick = { /* Navegar a soporte */ },
                        modifier = Modifier.fillMaxWidth().height(50.dp),
                        shape = RoundedCornerShape(12.dp),
                    ) {
                        Icon(Icons.AutoMirrored.Filled.HelpOutline, contentDescription = null)
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(stringResource(R.string.auto_centro_de_ayuda_y))
                    }

                    Spacer(modifier = Modifier.height(24.dp))
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
    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            modifier = Modifier.padding(start = 4.dp),
        ) {
            Icon(icon, contentDescription = null, tint = MaterialTheme.colorScheme.primary, modifier = Modifier.size(22.dp))
            Text(
                text = title,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold,
                color = MaterialTheme.colorScheme.primary,
            )
        }
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(20.dp),
            colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
            elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        ) {
            Column(
                modifier = Modifier.padding(18.dp),
                verticalArrangement = Arrangement.spacedBy(18.dp),
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
            modifier = Modifier.padding(start = 4.dp, bottom = 4.dp),
        )
        OutlinedTextField(
            value = value,
            onValueChange = onValueChange,
            modifier = Modifier.fillMaxWidth(),
            singleLine = singleLine,
            minLines = minLines,
            readOnly = readOnly,
            leadingIcon = { Icon(icon, contentDescription = null, modifier = Modifier.size(20.dp)) },
            shape = RoundedCornerShape(14.dp),
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
