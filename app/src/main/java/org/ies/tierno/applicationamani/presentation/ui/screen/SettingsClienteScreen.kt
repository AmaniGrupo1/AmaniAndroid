package org.ies.tierno.applicationamani.presentation.ui.screen

import android.content.res.Configuration
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
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.presentation.ui.components.ThemeModeSelector
import org.ies.tierno.applicationamani.presentation.viewmodels.SettingsClienteViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.idioma.IdiomaViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel

/**
 * Pantalla de ajustes del perfil del cliente (paciente).
 *
 * Permite al usuario editar sus datos personales (nombre, apellidos, email,
 * teléfono, género), gestionar documentos de consentimiento y protección
 * de datos, cambiar el tema visual de la aplicación y acceder al soporte
 * técnico. También incluye la opción de eliminar la cuenta de forma
 * permanente.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param onNavigateToSupport Callback invocado al solicitar navegar a la pantalla de soporte.
 * @param viewModel ViewModel que gestiona el estado del perfil del cliente.
 * @param idiomaViewModel ViewModel que gestiona el cambio de idioma y tema.
 */
@Composable
fun SettingsClienteScreen(
    navController: NavController,
    onNavigateToSupport: () -> Unit = {},
    viewModel: SettingsClienteViewModel = koinViewModel(),
    idiomaViewModel: IdiomaViewModel = koinViewModel(),
    modifier: Modifier = Modifier,
) {
    val context = LocalContext.current
    val userSessionDataStore: UserSessionDataStore =
        remember {
            try {
                org.koin.java.KoinJavaComponent
                    .getKoin()
                    .get()
            } catch (_: Exception) {
                UserSessionDataStore(context)
            }
        }
    val session by userSessionDataStore.sessionFlow.collectAsStateWithLifecycle(initialValue = null)

    val consentimientoLauncher =
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.GetContent(),
        ) { _ -> }
    val proteccionDatosLauncher =
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.GetContent(),
        ) { _ -> }

    LaunchedEffect(Unit) {
        viewModel.cargarUsuario()
    }

    SettingsClienteContent(
        isLoading = viewModel.isLoading,
        nombre = viewModel.nombre,
        onNombreChange = { viewModel.nombre = it },
        apellidos = viewModel.apellidos,
        onApellidosChange = { viewModel.apellidos = it },
        genero = viewModel.genero,
        onGeneroChange = { viewModel.genero = it },
        telefono = viewModel.telefono,
        onTelefonoChange = { viewModel.telefono = it },
        direccion = viewModel.direccion,
        onDireccionChange = { viewModel.direccion = it },
        codigoPostal = viewModel.codigoPostal,
        onCodigoPostalChange = { viewModel.codigoPostal = it },
        errorMessage = viewModel.errorMessage,
        onUploadConsentimiento = { consentimientoLauncher.launch("application/pdf") },
        onUploadProteccionDatos = { proteccionDatosLauncher.launch("application/pdf") },
        onGuardar = viewModel::guardarUsuario,
        onNavigateToSupport = onNavigateToSupport,
        onBorrarCuenta = viewModel::borrarCuenta,
        modifier = modifier,
        themeSelectorSlot = {
            ThemeModeSelector(
                currentTema = session?.tema ?: false,
                userSessionDataStore = userSessionDataStore,
                session = session,
                idiomaViewModel = idiomaViewModel,
            )
        },
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsClienteContent(
    isLoading: Boolean,
    nombre: String,
    onNombreChange: (String) -> Unit,
    apellidos: String,
    onApellidosChange: (String) -> Unit,
    genero: String,
    onGeneroChange: (String) -> Unit,
    telefono: String,
    onTelefonoChange: (String) -> Unit,
    direccion: String,
    onDireccionChange: (String) -> Unit,
    codigoPostal: String,
    onCodigoPostalChange: (String) -> Unit,
    errorMessage: String?,
    onUploadConsentimiento: () -> Unit,
    onUploadProteccionDatos: () -> Unit,
    onGuardar: () -> Unit,
    onNavigateToSupport: () -> Unit,
    onBorrarCuenta: () -> Unit,
    modifier: Modifier = Modifier,
    themeSelectorSlot: @Composable () -> Unit = {},
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val amaniColors = LocalAmaniColors.current

    var genderExpanded by remember { mutableStateOf(false) }
    val genderOptions =
        listOf(
            stringResource(R.string.genero_hombre),
            stringResource(R.string.genero_mujer),
            stringResource(R.string.genero_no_binario),
        )

    Scaffold(
        modifier = modifier,
        topBar = {
            TopAppBar(
                title = { Text(stringResource(R.string.auto_mi_configuracion), style = typography.titleLarge) },
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
                                        .size(Dimensions.avatarProfile)
                                        .clip(CircleShape)
                                        .background(colors.surfaceContainerHigh)
                                        .border(Dimensions.borderMedium, colors.primary, CircleShape),
                                contentAlignment = Alignment.Center,
                            ) {
                                Icon(
                                    Icons.Default.Person,
                                    contentDescription = null,
                                    modifier = Modifier.size(Dimensions.iconHero),
                                    tint = colors.primary,
                                )
                                Box(
                                    modifier =
                                        Modifier
                                            .align(Alignment.BottomEnd)
                                            .size(Dimensions.iconLarge)
                                            .clip(CircleShape)
                                            .background(colors.primary)
                                            .padding(Spacing.xs),
                                    contentAlignment = Alignment.Center,
                                ) {
                                    Icon(Icons.Default.CameraAlt, contentDescription = null, tint = colors.onPrimary)
                                }
                            }
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(
                                text = "$nombre $apellidos",
                                style = typography.titleLarge,
                            )
                        }
                    }

                    SettingsSection(
                        title = stringResource(R.string.auto_informacion_personal),
                        icon = Icons.Default.Badge,
                    ) {
                        Row(horizontalArrangement = Arrangement.spacedBy(Spacing.m)) {
                            TextFieldCustom(
                                stringResource(R.string.auto_nombre),
                                nombre,
                                onNombreChange,
                                Icons.Default.Person,
                                Modifier.weight(1f),
                            )
                            TextFieldCustom(
                                stringResource(R.string.settings_apellidos),
                                apellidos,
                                onApellidosChange,
                                Icons.Default.Person,
                                Modifier.weight(1f),
                            )
                        }

                        Column {
                            Text(
                                text = stringResource(R.string.auto_genero),
                                style = typography.labelMedium,
                                color = colors.onSurfaceVariant,
                                modifier = Modifier.padding(start = Spacing.xs, bottom = Spacing.xs),
                            )
                            ExposedDropdownMenuBox(
                                expanded = genderExpanded,
                                onExpandedChange = { genderExpanded = it },
                            ) {
                                OutlinedTextField(
                                    value = genero,
                                    onValueChange = {},
                                    readOnly = true,
                                    modifier =
                                        Modifier
                                            .fillMaxWidth()
                                            .menuAnchor(type = ExposedDropdownMenuAnchorType.PrimaryNotEditable, enabled = true),
                                    leadingIcon = { Icon(Icons.Default.Transgender, contentDescription = null) },
                                    trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = genderExpanded) },
                                    colors = OutlinedTextFieldDefaults.colors(),
                                )
                                ExposedDropdownMenu(
                                    expanded = genderExpanded,
                                    onDismissRequest = { genderExpanded = false },
                                ) {
                                    genderOptions.forEach { option ->
                                        DropdownMenuItem(
                                            text = { Text(option) },
                                            onClick = {
                                                onGeneroChange(option)
                                                genderExpanded = false
                                            },
                                        )
                                    }
                                }
                            }
                        }
                    }

                    SettingsSection(
                        title = stringResource(R.string.settings_contacto_ubicacion),
                        icon = Icons.Default.ContactPage,
                    ) {
                        TextFieldCustom(
                            stringResource(R.string.auto_telefono),
                            telefono,
                            onTelefonoChange,
                            Icons.Default.Phone,
                            Modifier.fillMaxWidth(),
                        )
                        TextFieldCustom(
                            stringResource(R.string.settings_direccion),
                            direccion,
                            onDireccionChange,
                            Icons.Default.Home,
                            Modifier.fillMaxWidth(),
                        )
                        TextFieldCustom(
                            stringResource(R.string.settings_codigo_postal),
                            codigoPostal,
                            onCodigoPostalChange,
                            Icons.Default.MarkunreadMailbox,
                            Modifier.fillMaxWidth(),
                        )
                    }

                    SettingsSection(
                        title = stringResource(R.string.settings_documentacion_legal),
                        icon = Icons.Default.Description,
                    ) {
                        Row(horizontalArrangement = Arrangement.spacedBy(Spacing.m)) {
                            OutlinedButton(
                                onClick = onUploadConsentimiento,
                                modifier = Modifier.weight(1f),
                                shape = CircleShape,
                            ) {
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Icon(Icons.Default.UploadFile, contentDescription = null)
                                    Text(stringResource(R.string.auto_consentimiento), style = typography.labelSmall)
                                }
                            }
                            OutlinedButton(
                                onClick = onUploadProteccionDatos,
                                modifier = Modifier.weight(1f),
                                shape = CircleShape,
                            ) {
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Icon(Icons.Default.GppGood, contentDescription = null)
                                    Text(stringResource(R.string.auto_prot_datos), style = typography.labelSmall)
                                }
                            }
                        }
                    }

                    Button(
                        onClick = onGuardar,
                        modifier = Modifier.fillMaxWidth(),
                        shape = CircleShape,
                        colors = ButtonDefaults.buttonColors(),
                    ) {
                        Icon(Icons.Default.Save, contentDescription = null, modifier = Modifier.size(Dimensions.iconButton))
                        Spacer(modifier = Modifier.width(Spacing.s))
                        Text(stringResource(R.string.auto_guardar_cambios), style = typography.labelLarge)
                    }

                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = MaterialTheme.shapes.large,
                        colors = CardDefaults.cardColors(containerColor = amaniColors.cardBackground),
                        elevation = CardDefaults.cardElevation(defaultElevation = Elevation.level2),
                    ) {
                        Column(modifier = Modifier.padding(Spacing.m)) {
                            Row(horizontalArrangement = Arrangement.spacedBy(Spacing.sm)) {
                                Text(stringResource(R.string.auto_apariencia), style = typography.titleMedium, color = colors.onSurface)
                            }

                            Spacer(modifier = Modifier.height(Spacing.s))

                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically,
                            ) {
                                Text(
                                    text = stringResource(id = R.string.tema_oscuro_claro),
                                    style = typography.bodyLarge,
                                    color = colors.onSurface,
                                )
                                themeSelectorSlot()
                            }
                        }
                    }

                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = MaterialTheme.shapes.medium,
                        colors = CardDefaults.cardColors(containerColor = colors.secondaryContainer.copy(alpha = 0.4f)),
                    ) {
                        Column(
                            modifier = Modifier.padding(Spacing.m),
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.spacedBy(Spacing.s),
                        ) {
                            Icon(Icons.AutoMirrored.Filled.ContactSupport, contentDescription = null, tint = colors.secondary)
                            Text(stringResource(R.string.auto_necesitas_ayuda), style = typography.titleMedium)
                            Text(
                                stringResource(R.string.auto_reporta_un_bug_o),
                                style = typography.bodySmall,
                                textAlign = TextAlign.Center,
                            )
                            Button(
                                onClick = onNavigateToSupport,
                                modifier = Modifier.fillMaxWidth(),
                                shape = CircleShape,
                                colors = ButtonDefaults.buttonColors(containerColor = colors.secondary),
                            ) {
                                Text(stringResource(R.string.auto_abrir_ticket_de_soporte), style = typography.labelLarge)
                            }
                        }
                    }

                    TextButton(
                        onClick = onBorrarCuenta,
                        modifier = Modifier.align(Alignment.CenterHorizontally),
                    ) {
                        Icon(Icons.Default.DeleteForever, contentDescription = null, tint = colors.error)
                        Spacer(modifier = Modifier.width(Spacing.xs))
                        Text(stringResource(R.string.auto_eliminar_mi_cuenta), color = colors.error, style = typography.labelLarge)
                    }

                    errorMessage?.let { error ->
                        Text(
                            text = error,
                            color = colors.error,
                            style = typography.bodySmall,
                            modifier = Modifier.fillMaxWidth().padding(horizontal = Spacing.m),
                            textAlign = TextAlign.Center,
                        )
                    }

                    Spacer(modifier = Modifier.height(Spacing.m))
                }
            }
        }
    }
}

/**
 * Sección agrupada de ajustes con título, icono y contenido.
 */
@Composable
fun SettingsSection(
    title: String,
    icon: ImageVector,
    modifier: Modifier = Modifier,
    content: @Composable ColumnScope.() -> Unit,
) {
    Column(
        modifier = modifier,
        verticalArrangement = Arrangement.spacedBy(Spacing.m),
    ) {
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
                color = MaterialTheme.colorScheme.primary,
            )
        }
        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.medium,
            colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainer),
            elevation = CardDefaults.cardElevation(),
        ) {
            Column(
                modifier = Modifier.padding(Spacing.m),
                verticalArrangement = Arrangement.spacedBy(Spacing.l),
                content = content,
            )
        }
    }
}

/**
 * Campo de texto personalizado con etiqueta externa e icono.
 */
@Composable
fun TextFieldCustom(
    label: String,
    value: String,
    onValueChange: (String) -> Unit,
    icon: ImageVector,
    modifier: Modifier = Modifier,
) {
    val colors = MaterialTheme.colorScheme
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
            singleLine = true,
            leadingIcon = { Icon(icon, contentDescription = null, modifier = Modifier.size(Dimensions.iconDefault)) },
            shape = MaterialTheme.shapes.medium,
            colors =
                OutlinedTextFieldDefaults.colors(
                    focusedTextColor = colors.onSurface,
                    unfocusedTextColor = colors.onSurface,
                    focusedBorderColor = colors.primary,
                    unfocusedBorderColor = colors.outline,
                    focusedContainerColor = colors.surfaceContainerLowest,
                    unfocusedContainerColor = colors.surfaceContainerLowest,
                    focusedLabelColor = colors.primary,
                    unfocusedLabelColor = colors.onSurfaceVariant,
                ),
        )
    }
}

@Preview(name = "Light", showBackground = true)
@Preview(name = "Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "FontScale 1.5x", fontScale = 1.5f, showBackground = true)
@Composable
private fun SettingsClienteScreenPreview() {
    AppTheme {
        SettingsClienteContent(
            isLoading = false,
            nombre = "Laura",
            onNombreChange = {},
            apellidos = "Gómez",
            onApellidosChange = {},
            genero = "Mujer",
            onGeneroChange = {},
            telefono = "612345678",
            onTelefonoChange = {},
            direccion = "Calle Mayor 10",
            onDireccionChange = {},
            codigoPostal = "28013",
            onCodigoPostalChange = {},
            errorMessage = null,
            onUploadConsentimiento = {},
            onUploadProteccionDatos = {},
            onGuardar = {},
            onNavigateToSupport = {},
            onBorrarCuenta = {},
        )
    }
}
