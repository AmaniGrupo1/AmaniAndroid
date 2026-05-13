package org.ies.tierno.applicationamani.presentation.ui.screen

import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
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
import androidx.compose.material.icons.automirrored.filled.ContactSupport
import androidx.compose.material.icons.filled.Badge
import androidx.compose.material.icons.filled.CameraAlt
import androidx.compose.material.icons.filled.ContactPage
import androidx.compose.material.icons.filled.DeleteForever
import androidx.compose.material.icons.filled.Description
import androidx.compose.material.icons.filled.GppGood
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.MarkunreadMailbox
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Phone
import androidx.compose.material.icons.filled.Save
import androidx.compose.material.icons.filled.Transgender
import androidx.compose.material.icons.filled.UploadFile
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuAnchorType
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
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
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.domain.models.enumm.TemaApp
import org.ies.tierno.applicationamani.presentation.ui.components.ThemeModeSelector
import org.ies.tierno.applicationamani.presentation.viewmodels.SettingsClienteViewModel
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.koin.androidx.compose.koinViewModel

/**
 * Pantalla de ajustes del perfil del cliente (paciente).
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsClienteScreen(
    navController: NavController,
    onNavigateToSupport: () -> Unit = {},
    viewModel: SettingsClienteViewModel = koinViewModel()
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val amaniColors = LocalAmaniColors.current

    var genderExpanded by remember { mutableStateOf(false) }
    val genderOptions = listOf("Hombre", "Mujer", "No Binario")

    val consentimientoLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { _ -> }
    val proteccionDatosLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { _ -> }

    LaunchedEffect(Unit) {
        viewModel.cargarUsuario()
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Mi Configuracion", style = typography.titleLarge) },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = colors.surface,
                    titleContentColor = colors.onSurface
                )
            )
        }
    ) { innerPadding ->
        Box(modifier = Modifier.fillMaxSize().padding(innerPadding)) {
            if (viewModel.isLoading) {
                CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
            } else {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .verticalScroll(rememberScrollState())
                        .padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(24.dp)
                ) {
                    // Seccion de Perfil / Foto
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(vertical = 8.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(horizontalAlignment = Alignment.CenterHorizontally) {
                            Box(
                                modifier = Modifier
                                    .size(100.dp)
                                    .clip(CircleShape)
                                    .background(colors.surfaceContainerHigh)
                                    .border(2.dp, colors.primary, CircleShape),
                                contentAlignment = Alignment.Center
                            ) {
                                Icon(
                                    Icons.Default.Person,
                                    contentDescription = null,
                                    modifier = Modifier.size(60.dp),
                                    tint = colors.primary
                                )
                                Box(
                                    modifier = Modifier
                                        .align(Alignment.BottomEnd)
                                        .size(32.dp)
                                        .clip(CircleShape)
                                        .background(colors.primary)
                                        .padding(6.dp),
                                    contentAlignment = Alignment.Center
                                ) {
                                    Icon(Icons.Default.CameraAlt, contentDescription = null, tint = colors.onPrimary)
                                }
                            }
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "${viewModel.nombre} ${viewModel.apellidos}",
                                style = typography.titleLarge
                            )
                        }
                    }

                    // Seccion: Informacion Personal
                    SettingsSection(title = "Informacion Personal", icon = Icons.Default.Badge) {
                        Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                            TextFieldCustom(
                                "Nombre",
                                viewModel.nombre,
                                { viewModel.nombre = it },
                                Icons.Default.Person,
                                Modifier.weight(1f)
                            )
                            TextFieldCustom(
                                "Apellidos",
                                viewModel.apellidos,
                                { viewModel.apellidos = it },
                                Icons.Default.Person,
                                Modifier.weight(1f)
                            )
                        }

                        // Selector de Genero
                        Column {
                            Text(
                                text = "Genero",
                                style = typography.labelMedium,
                                color = colors.onSurfaceVariant,
                                modifier = Modifier.padding(start = 4.dp, bottom = 4.dp)
                            )
                            ExposedDropdownMenuBox(
                                expanded = genderExpanded,
                                onExpandedChange = { genderExpanded = it }
                            ) {
                                OutlinedTextField(
                                    value = viewModel.genero,
                                    onValueChange = {},
                                    readOnly = true,
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .menuAnchor(type = ExposedDropdownMenuAnchorType.PrimaryNotEditable, enabled = true),
                                    leadingIcon = { Icon(Icons.Default.Transgender, contentDescription = null) },
                                    trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = genderExpanded) },
                                    colors = OutlinedTextFieldDefaults.colors()
                                )
                                ExposedDropdownMenu(
                                    expanded = genderExpanded,
                                    onDismissRequest = { genderExpanded = false }
                                ) {
                                    genderOptions.forEach { option ->
                                        DropdownMenuItem(
                                            text = { Text(option) },
                                            onClick = {
                                                viewModel.genero = option
                                                genderExpanded = false
                                            }
                                        )
                                    }
                                }
                            }
                        }
                    }

                    // Seccion: Contacto
                    SettingsSection(title = "Contacto y Ubicacion", icon = Icons.Default.ContactPage) {
                        TextFieldCustom(
                            "Telefono",
                            viewModel.telefono,
                            { viewModel.telefono = it },
                            Icons.Default.Phone,
                            Modifier.fillMaxWidth()
                        )
                        TextFieldCustom(
                            "Direccion",
                            viewModel.direccion,
                            { viewModel.direccion = it },
                            Icons.Default.Home,
                            Modifier.fillMaxWidth()
                        )
                        TextFieldCustom(
                            "Codigo Postal",
                            viewModel.codigoPostal,
                            { viewModel.codigoPostal = it },
                            Icons.Default.MarkunreadMailbox,
                            Modifier.fillMaxWidth()
                        )
                    }

                    // Seccion: Documentacion
                    SettingsSection(title = "Documentacion Legal", icon = Icons.Default.Description) {
                        Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                            OutlinedButton(
                                onClick = { consentimientoLauncher.launch("application/pdf") },
                                modifier = Modifier.weight(1f),
                                shape = CircleShape
                            ) {
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Icon(Icons.Default.UploadFile, contentDescription = null)
                                    Text("Consentimiento", style = typography.labelSmall)
                                }
                            }
                            OutlinedButton(
                                onClick = { proteccionDatosLauncher.launch("application/pdf") },
                                modifier = Modifier.weight(1f),
                                shape = CircleShape
                            ) {
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Icon(Icons.Default.GppGood, contentDescription = null)
                                    Text("Prot. Datos", style = typography.labelSmall)
                                }
                            }
                        }
                    }

                    // Boton Guardar
                    Button(
                        onClick = { viewModel.guardarUsuario() },
                        modifier = Modifier.fillMaxWidth(),
                        shape = CircleShape,
                        colors = ButtonDefaults.buttonColors()
                    ) {
                        Icon(Icons.Default.Save, contentDescription = null, modifier = Modifier.size(18.dp))
                        Spacer(modifier = Modifier.width(8.dp))
                        Text("Guardar cambios", style = typography.labelLarge)
                    }

                    // Theme selector
                    val userSessionDataStore: UserSessionDataStore = try {
                        org.koin.java.KoinJavaComponent.getKoin().get()
                    } catch (e: Exception) {
                        UserSessionDataStore(LocalContext.current)
                    }
                    val sessionState = userSessionDataStore.sessionFlow.collectAsState(initial = null)
                    val session = sessionState.value

                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = MaterialTheme.shapes.large,
                        colors = CardDefaults.cardColors(containerColor = amaniColors.cardBackground),
                        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
                    ) {
                        Column(modifier = Modifier.padding(16.dp)) {
                            Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                                Text("Apariencia", style = typography.titleMedium, color = colors.onSurface)
                            }

                            Spacer(modifier = Modifier.height(8.dp))

                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Text(
                                    text = stringResource(id = R.string.tema_oscuro_claro),
                                    style = typography.bodyLarge,
                                    color = colors.onSurface
                                )
                                ThemeModeSelector(
                                    currentTema = session?.tema ?: TemaApp.SYSTEM,
                                    userSessionDataStore = userSessionDataStore,
                                    session = session
                                )
                            }
                        }
                    }

                    // Seccion: Soporte
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = MaterialTheme.shapes.medium,
                        colors = CardDefaults.cardColors(containerColor = colors.secondaryContainer.copy(alpha = 0.4f))
                    ) {
                        Column(
                            modifier = Modifier.padding(16.dp),
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Icon(Icons.AutoMirrored.Filled.ContactSupport, contentDescription = null, tint = colors.secondary)
                            Text("?Necesitas ayuda?", style = typography.titleMedium)
                            Text(
                                "Reporta un bug o envia una sugerencia al equipo de soporte.",
                                style = typography.bodySmall,
                                textAlign = TextAlign.Center
                            )
                            Button(
                                onClick = onNavigateToSupport,
                                modifier = Modifier.fillMaxWidth(),
                                shape = CircleShape,
                                colors = ButtonDefaults.buttonColors(containerColor = colors.secondary)
                            ) {
                                Text("Abrir ticket de soporte", style = typography.labelLarge)
                            }
                        }
                    }

                    // Eliminar cuenta
                    TextButton(
                        onClick = { viewModel.borrarCuenta() },
                        modifier = Modifier.align(Alignment.CenterHorizontally)
                    ) {
                        Icon(Icons.Default.DeleteForever, contentDescription = null, tint = colors.error)
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("Eliminar mi cuenta", color = colors.error, style = typography.labelLarge)
                    }

                    // Mensaje de Error
                    viewModel.errorMessage?.let { error ->
                        Text(
                            text = error,
                            color = colors.error,
                            style = typography.bodySmall,
                            modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp),
                            textAlign = TextAlign.Center
                        )
                    }

                    Spacer(modifier = Modifier.height(16.dp))
                }
            }
        }
    }
}

@Composable
fun SettingsSection(
    title: String,
    icon: ImageVector,
    content: @Composable ColumnScope.() -> Unit
) {
    Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            modifier = Modifier.padding(start = 4.dp)
        ) {
            Icon(icon, contentDescription = null, tint = MaterialTheme.colorScheme.primary, modifier = Modifier.size(24.dp))
            Text(
                text = title,
                style = MaterialTheme.typography.titleMedium,
                color = MaterialTheme.colorScheme.primary
            )
        }
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.medium,
            colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainer),
            elevation = CardDefaults.cardElevation()
        ) {
            Column(
                modifier = Modifier.padding(16.dp),
                verticalArrangement = Arrangement.spacedBy(24.dp),
                content = content
            )
        }
    }
}

@Composable
fun TextFieldCustom(
    label: String,
    value: String,
    onValueChange: (String) -> Unit,
    icon: ImageVector,
    modifier: Modifier = Modifier
) {
    Column(modifier = modifier) {
        Text(
            text = label,
            style = MaterialTheme.typography.labelMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            modifier = Modifier.padding(start = 4.dp, bottom = 4.dp)
        )
        OutlinedTextField(
            value = value,
            onValueChange = onValueChange,
            modifier = Modifier.fillMaxWidth(),
            singleLine = true,
            leadingIcon = { Icon(icon, contentDescription = null, modifier = Modifier.size(24.dp)) },
            shape = MaterialTheme.shapes.small,
            colors = OutlinedTextFieldDefaults.colors(
                focusedBorderColor = MaterialTheme.colorScheme.primary,
                unfocusedBorderColor = MaterialTheme.colorScheme.outline,
                focusedContainerColor = MaterialTheme.colorScheme.surfaceVariant,
                unfocusedContainerColor = MaterialTheme.colorScheme.surfaceVariant
            )
        )
    }
}
