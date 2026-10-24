package org.ies.tierno.applicationamani.presentation.ui.screen.soporte

import android.content.res.Configuration
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
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Help
import androidx.compose.material.icons.automirrored.filled.Send
import androidx.compose.material.icons.filled.Android
import androidx.compose.material.icons.filled.Apps
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.ReportProblem
import androidx.compose.material.icons.filled.Smartphone
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuAnchorType
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
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
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import kotlinx.coroutines.flow.collectLatest
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.soporte.CategoriaTicket
import org.ies.tierno.applicationamani.domain.models.soporte.TipoTicket
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.soporte.SoporteTicketViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel

/**
 * Pantalla de creación de un nuevo ticket de soporte técnico.
 *
 * Permite al usuario seleccionar el tipo de incidencia (bug, sugerencia,
 * consulta), la categoría y escribir una descripción detallada. Incluye
 * información automática del dispositivo (modelo, versión de Android,
 * versión de la app) para facilitar el diagnóstico por parte del soporte.
 *
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona el envío del ticket de soporte.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun NuevoTicketScreen(
    navController: NavController,
    viewModel: SoporteTicketViewModel = koinViewModel(),
) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    val snackbarHostState = remember { SnackbarHostState() }
    val context = LocalContext.current
    val desconocidaStr = stringResource(R.string.soporte_version_desconocida)
    val ticketEnviadoMsg = stringResource(R.string.soporte_ticket_enviado_exito)

    val versionApp =
        remember(desconocidaStr) {
            try {
                val info = context.packageManager.getPackageInfo(context.packageName, 0)
                val versionCode =
                    androidx.core.content.pm.PackageInfoCompat
                        .getLongVersionCode(info)
                "${info.versionName} ($versionCode)"
            } catch (_: Exception) {
                desconocidaStr
            }
        }

    LaunchedEffect(viewModel.snackbarMessage) {
        viewModel.snackbarMessage.collectLatest { message ->
            snackbarHostState.showSnackbar(message)
        }
    }

    LaunchedEffect(uiState.mostrarToastExito) {
        if (uiState.mostrarToastExito) {
            snackbarHostState.showSnackbar(ticketEnviadoMsg)
            viewModel.dismissToast()
            navController.navigate(Screens.misTickets.route) {
                popUpTo(Screens.nuevoTicket.route) { inclusive = false }
            }
        }
    }

    NuevoTicketContent(
        tipoTicket = uiState.tipoTicket,
        categoria = uiState.categoria,
        titulo = uiState.titulo,
        descripcion = uiState.descripcion,
        isLoading = uiState.isLoading,
        versionApp = versionApp,
        snackbarHostState = snackbarHostState,
        onBackClick = { navController.popBackStack() },
        onTipoChange = { viewModel.seleccionarTipo(it) },
        onCategoriaChange = { viewModel.onCategoriaChange(it) },
        onTituloChange = { viewModel.onTituloChange(it) },
        onDescripcionChange = { viewModel.onDescripcionChange(it) },
        onEnviarClick = { viewModel.enviarTicket() },
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun NuevoTicketContent(
    tipoTicket: TipoTicket,
    categoria: CategoriaTicket,
    titulo: String,
    descripcion: String,
    isLoading: Boolean,
    versionApp: String,
    snackbarHostState: SnackbarHostState,
    onBackClick: () -> Unit,
    onTipoChange: (TipoTicket) -> Unit,
    onCategoriaChange: (CategoriaTicket) -> Unit,
    onTituloChange: (String) -> Unit,
    onDescripcionChange: (String) -> Unit,
    onEnviarClick: () -> Unit,
) {
    val scrollState = rememberScrollState()
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Column {
                        Text(
                            text = stringResource(R.string.auto_nuevo_ticket),
                            style = typography.titleLarge.copy(fontWeight = FontWeight.SemiBold),
                        )
                        Text(
                            text = stringResource(R.string.auto_cuu00e9ntanos_el_problema_o),
                            style = typography.bodySmall.copy(color = colors.onSurfaceVariant),
                        )
                    }
                },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_atru00e1s),
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
        snackbarHost = { SnackbarHost(snackbarHostState) },
        containerColor = colors.background,
    ) { padding ->
        Column(
            modifier =
                Modifier
                    .fillMaxSize()
                    .verticalScroll(scrollState)
                    .padding(padding)
                    .padding(horizontal = Spacing.m, vertical = Spacing.sm),
            verticalArrangement = Arrangement.spacedBy(Spacing.m),
        ) {
            Column(verticalArrangement = Arrangement.spacedBy(Spacing.s)) {
                EtiquetaFormulario(stringResource(R.string.soporte_tipo_label))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                ) {
                    BotonTipoTicket(
                        texto = stringResource(R.string.soporte_tipo_problema),
                        icono = Icons.Default.ReportProblem,
                        seleccionado = tipoTicket == TipoTicket.PROBLEMA,
                        onClick = { onTipoChange(TipoTicket.PROBLEMA) },
                        modifier = Modifier.weight(1f),
                    )
                    BotonTipoTicket(
                        texto = stringResource(R.string.soporte_tipo_pregunta),
                        icono = Icons.AutoMirrored.Filled.Help,
                        seleccionado = tipoTicket == TipoTicket.PREGUNTA,
                        onClick = { onTipoChange(TipoTicket.PREGUNTA) },
                        modifier = Modifier.weight(1f),
                    )
                    BotonTipoTicket(
                        texto = stringResource(R.string.soporte_tipo_sugerencia),
                        icono = Icons.Default.Info,
                        seleccionado = tipoTicket == TipoTicket.SUGERENCIA,
                        onClick = { onTipoChange(TipoTicket.SUGERENCIA) },
                        modifier = Modifier.weight(1f),
                    )
                }
            }

            EtiquetaFormulario(stringResource(R.string.categoria))
            var categoriaExpanded by remember { mutableStateOf(false) }
            val categorias = CategoriaTicket.todas
            ExposedDropdownMenuBox(
                expanded = categoriaExpanded,
                onExpandedChange = { categoriaExpanded = it },
            ) {
                OutlinedTextField(
                    value = categoria.display,
                    onValueChange = {},
                    readOnly = true,
                    trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = categoriaExpanded) },
                    modifier =
                        Modifier
                            .menuAnchor(ExposedDropdownMenuAnchorType.PrimaryNotEditable, true)
                            .fillMaxWidth(),
                    shape = shapes.medium,
                    colors =
                        OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = colors.primary,
                            unfocusedBorderColor = colors.outline,
                        ),
                )
                ExposedDropdownMenu(
                    expanded = categoriaExpanded,
                    onDismissRequest = { categoriaExpanded = false },
                ) {
                    categorias.forEach { cat ->
                        DropdownMenuItem(
                            text = { Text(cat.display) },
                            onClick = {
                                onCategoriaChange(cat)
                                categoriaExpanded = false
                            },
                        )
                    }
                }
            }

            EtiquetaFormulario(stringResource(R.string.titulo))
            OutlinedTextField(
                value = titulo,
                onValueChange = onTituloChange,
                placeholder = { Text(stringResource(R.string.auto_ej_la_app_se), color = colors.onSurfaceVariant) },
                modifier = Modifier.fillMaxWidth(),
                shape = shapes.medium,
                singleLine = true,
                colors =
                    OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = colors.primary,
                        unfocusedBorderColor = colors.outline,
                    ),
            )

            EtiquetaFormulario(stringResource(R.string.descripcion))
            Box(modifier = Modifier.fillMaxWidth()) {
                OutlinedTextField(
                    value = descripcion,
                    onValueChange = onDescripcionChange,
                    placeholder = { Text(stringResource(R.string.auto_describe_el_problema_con), color = colors.onSurfaceVariant) },
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .heightIn(min = Dimensions.textAreaMinHeight),
                    shape = shapes.medium,
                    maxLines = 6,
                    colors =
                        OutlinedTextFieldDefaults.colors(
                            focusedBorderColor = colors.primary,
                            unfocusedBorderColor = colors.outline,
                        ),
                )
                Text(
                    text = stringResource(R.string.soporte_contador_caracteres, descripcion.length),
                    style = typography.bodySmall.copy(color = colors.onSurfaceVariant),
                    modifier =
                        Modifier
                            .align(Alignment.BottomEnd)
                            .padding(Spacing.sm),
                )
            }

            EtiquetaFormulario(stringResource(R.string.soporte_info_dispositivo_titulo))
            Column(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .padding(vertical = Spacing.xs),
                verticalArrangement = Arrangement.spacedBy(Spacing.sm),
            ) {
                FilaInfoDispositivo(
                    icono = Icons.Default.Smartphone,
                    etiqueta = stringResource(R.string.soporte_dispositivo_label),
                    valor = android.os.Build.MODEL,
                )
                FilaInfoDispositivo(
                    icono = Icons.Default.Android,
                    etiqueta = stringResource(R.string.soporte_version_android_label),
                    valor =
                        stringResource(
                            R.string.soporte_version_android_formato,
                            android.os.Build.VERSION.RELEASE,
                            android.os.Build.VERSION.SDK_INT,
                        ),
                )
                FilaInfoDispositivo(
                    icono = Icons.Default.Apps,
                    etiqueta = stringResource(R.string.soporte_version_app_label),
                    valor = versionApp,
                )
            }

            Button(
                onClick = onEnviarClick,
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .height(Dimensions.buttonHeight),
                shape = shapes.medium,
                colors = ButtonDefaults.buttonColors(containerColor = colors.primary),
                enabled = !isLoading,
            ) {
                if (isLoading) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(Dimensions.iconMedium),
                        color = colors.onPrimary,
                        strokeWidth = Dimensions.borderMedium,
                    )
                } else {
                    Text(
                        stringResource(R.string.auto_enviar_ticket),
                        style = typography.labelLarge,
                    )
                    Spacer(modifier = Modifier.width(Spacing.s))
                    Icon(
                        Icons.AutoMirrored.Filled.Send,
                        contentDescription = null,
                        modifier = Modifier.size(Dimensions.iconButton),
                    )
                }
            }

            Spacer(modifier = Modifier.height(Dimensions.bottomContentSpacer))
        }
    }
}

@Composable
private fun BotonTipoTicket(
    texto: String,
    icono: ImageVector,
    seleccionado: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colors = MaterialTheme.colorScheme
    val bgColor = if (seleccionado) colors.primaryContainer else colors.surfaceVariant
    val textColor = if (seleccionado) colors.onPrimaryContainer else colors.onSurfaceVariant

    Row(
        modifier =
            modifier
                .height(Dimensions.buttonHeight)
                .background(bgColor, MaterialTheme.shapes.medium)
                .clickable(onClick = onClick)
                .padding(horizontal = Spacing.s),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.Center,
    ) {
        Icon(icono, contentDescription = null, tint = textColor, modifier = Modifier.size(Dimensions.iconButton))
        Spacer(modifier = Modifier.width(Spacing.xs))
        Text(
            texto,
            color = textColor,
            style = MaterialTheme.typography.labelMedium,
            maxLines = 1,
        )
    }
}

@Composable
private fun EtiquetaFormulario(texto: String) {
    Text(
        texto,
        style = MaterialTheme.typography.bodyMedium.copy(fontWeight = FontWeight.Medium),
        color = MaterialTheme.colorScheme.onSurface,
    )
}

@Composable
private fun FilaInfoDispositivo(
    icono: ImageVector,
    etiqueta: String,
    valor: String,
) {
    val colors = MaterialTheme.colorScheme
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(Spacing.s),
        ) {
            Icon(
                icono,
                contentDescription = null,
                tint = colors.onSurfaceVariant,
                modifier = Modifier.size(Dimensions.iconButton),
            )
            Text(etiqueta, style = MaterialTheme.typography.bodyMedium, color = colors.onSurfaceVariant)
        }
        Text(
            valor,
            style = MaterialTheme.typography.bodyMedium.copy(fontWeight = FontWeight.Medium),
            color = colors.onSurface,
        )
    }
}

@Preview(name = "NuevoTicket Light", showBackground = true)
@Preview(name = "NuevoTicket Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "NuevoTicket FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun NuevoTicketScreenPreview() {
    AppTheme {
        NuevoTicketContent(
            tipoTicket = TipoTicket.SUGERENCIA,
            categoria = CategoriaTicket.BUG_APP,
            titulo = "Mejora en recordatorios de citas",
            descripcion = "Sería útil poder configurar dos recordatorios antes de la sesión.",
            isLoading = false,
            versionApp = "1.0.0 (1)",
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onTipoChange = {},
            onCategoriaChange = {},
            onTituloChange = {},
            onDescripcionChange = {},
            onEnviarClick = {},
        )
    }
}
