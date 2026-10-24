package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.role

import android.content.res.Configuration
import android.util.Log
import androidx.compose.foundation.background
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
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.AdminPanelSettings
import androidx.compose.material.icons.filled.MedicalServices
import androidx.compose.material.icons.filled.People
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.SwapHoriz
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FilterChipDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
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
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import kotlinx.coroutines.delay
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomSheetCambiarRol
import org.ies.tierno.applicationamani.presentation.viewmodels.role.AdminRoleViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.role.AdminUserViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel

private const val TAG = "AdminUserScreen"

/**
 * Pantalla de gestión de usuarios para el administrador.
 *
 * Permite listar, filtrar por rol y por DNI, y cambiar el rol de cualquier
 * usuario del sistema. Incluye un [BottomSheetCambiarRol] para seleccionar
 * el nuevo rol y un diálogo de confirmación antes de aplicar el cambio.
 * La lista se refresca automáticamente tras cada modificación.
 *
 * @param adminUserViewModel ViewModel que gestiona la lista y filtrado de usuarios.
 * @param adminRoleViewModel ViewModel que gestiona el cambio de rol.
 * @param onNavigateBack Callback invocado para volver a la pantalla anterior.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AdminUserManagementScreen(
    adminUserViewModel: AdminUserViewModel = koinViewModel(),
    adminRoleViewModel: AdminRoleViewModel = koinViewModel(),
    onNavigateBack: () -> Unit = {},
) {
    val usuarios by adminUserViewModel.usuariosFiltrados.collectAsStateWithLifecycle()
    val isLoading by adminUserViewModel.isLoading.collectAsStateWithLifecycle()
    val error by adminUserViewModel.error.collectAsStateWithLifecycle()

    var selectedRol by remember { mutableStateOf<Rol?>(null) }
    var searchDni by remember { mutableStateOf("") }
    var showBottomSheet by remember { mutableStateOf(false) }
    var selectedUser by remember { mutableStateOf<UsuarioDTO?>(null) }

    var showConfirmDialog by remember { mutableStateOf(false) }
    var pendingRol by remember { mutableStateOf<Rol?>(null) }

    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    LaunchedEffect(Unit) {
        Log.d(TAG, "=== INICIALIZANDO PANTALLA DE ADMIN ===")
    }

    LaunchedEffect(error) {
        error?.let {
            Log.e(TAG, "Error en AdminUserViewModel: $it")
            adminUserViewModel.clearError()
        }
    }

    LaunchedEffect(adminRoleViewModel.success) {
        adminRoleViewModel.success?.let { message ->
            Log.d(TAG, "Exito al cambiar rol: $message")
            adminRoleViewModel.clearMessages()
            adminUserViewModel.cargarUsuarios()
        }
    }

    LaunchedEffect(adminRoleViewModel.error) {
        adminRoleViewModel.error?.let { message ->
            Log.e(TAG, "Error al cambiar rol: $message")
            adminRoleViewModel.clearMessages()
        }
    }

    LaunchedEffect(selectedRol, searchDni) {
        adminUserViewModel.filtrarUsuarios(rol = selectedRol, dni = searchDni)
    }

    LaunchedEffect(Unit) {
        adminUserViewModel.cargarUsuarios()
        delay(500)
    }

    fun confirmRoleChange() {
        pendingRol?.let { nuevoRol ->
            adminRoleViewModel.cambiarRol(
                idUsuario = selectedUser!!.idUsuario ?: 0,
                nuevoRol = nuevoRol,
            )
        }
        showConfirmDialog = false
        showBottomSheet = false
        pendingRol = null
        selectedUser = null
    }

    AdminUserManagementContent(
        usuarios = usuarios,
        isLoading = isLoading,
        selectedRol = selectedRol,
        searchDni = searchDni,
        onSelectedRolChange = { selectedRol = it },
        onSearchDniChange = { searchDni = it },
        onNavigateBack = onNavigateBack,
        onRefreshClick = { adminUserViewModel.cargarUsuarios() },
        onCambiarRolClick = { user ->
            selectedUser = user
            showBottomSheet = true
        },
    )

    if (showConfirmDialog) {
        val currentRolLabel =
            when (selectedUser?.rol) {
                Rol.admin -> stringResource(R.string.admin_rol_administrador)
                Rol.psicologo -> stringResource(R.string.admin_rol_psicologo)
                else -> stringResource(R.string.admin_rol_paciente)
            }
        val newRolLabel =
            when (pendingRol) {
                Rol.admin -> stringResource(R.string.admin_rol_administrador)
                Rol.psicologo -> stringResource(R.string.admin_rol_psicologo)
                else -> stringResource(R.string.admin_rol_paciente)
            }

        AlertDialog(
            onDismissRequest = {
                showConfirmDialog = false
                pendingRol = null
            },
            title = {
                Text(
                    text = stringResource(R.string.auto_confirmar_cambio_de_rol),
                    style = typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                    color = colorScheme.primary,
                )
            },
            text = {
                Column {
                    Text(
                        text = stringResource(R.string.auto_estas_seguro_de_que),
                        style = typography.bodyMedium,
                        color = colorScheme.onSurface,
                    )
                    Spacer(modifier = Modifier.height(Spacing.s))
                    Text(
                        text = "${selectedUser?.nombre ?: ""} ${selectedUser?.apellido ?: ""}".trim(),
                        style = typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.primary,
                    )
                    Spacer(modifier = Modifier.height(Spacing.xs))
                    Text(
                        text = selectedUser?.email ?: "",
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                    )
                    Spacer(modifier = Modifier.height(Spacing.md))
                    Text(
                        text = stringResource(R.string.admin_rol_actual_formato, currentRolLabel),
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                    )
                    Text(
                        text = stringResource(R.string.admin_rol_nuevo_formato, newRolLabel),
                        style = typography.bodySmall,
                        fontWeight = FontWeight.Bold,
                        color =
                            when (pendingRol) {
                                Rol.admin -> colorScheme.error
                                Rol.psicologo -> colorScheme.secondary
                                else -> colorScheme.primary
                            },
                    )
                }
            },
            confirmButton = {
                Button(
                    onClick = { confirmRoleChange() },
                    colors = ButtonDefaults.buttonColors(containerColor = colorScheme.primary),
                    shape = shapes.small,
                ) {
                    Text(stringResource(R.string.auto_si_cambiar_rol), color = colorScheme.onPrimary)
                }
            },
            dismissButton = {
                OutlinedButton(
                    onClick = {
                        showConfirmDialog = false
                        pendingRol = null
                    },
                    shape = shapes.small,
                ) {
                    Text(stringResource(R.string.auto_cancelar))
                }
            },
            containerColor = colorScheme.surfaceContainerHigh,
            shape = shapes.large,
        )
    }

    if (showBottomSheet && selectedUser != null) {
        BottomSheetCambiarRol(
            user = selectedUser!!,
            onDismiss = {
                showBottomSheet = false
                selectedUser = null
            },
            onConfirm = { nuevoRol ->
                pendingRol = nuevoRol
                showConfirmDialog = true
            },
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AdminUserManagementContent(
    usuarios: List<UsuarioDTO>,
    isLoading: Boolean,
    selectedRol: Rol?,
    searchDni: String,
    onSelectedRolChange: (Rol?) -> Unit,
    onSearchDniChange: (String) -> Unit,
    onNavigateBack: () -> Unit,
    onRefreshClick: () -> Unit,
    onCambiarRolClick: (UsuarioDTO) -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    Scaffold(
        modifier = modifier,
        containerColor = colorScheme.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_gestion_de_usuarios_1),
                        style = typography.titleLarge.copy(fontWeight = FontWeight.Bold),
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colorScheme.surface,
                        titleContentColor = colorScheme.onSurface,
                        navigationIconContentColor = colorScheme.onSurface,
                        actionIconContentColor = colorScheme.onSurface,
                    ),
                actions = {
                    IconButton(onClick = onRefreshClick) {
                        Icon(
                            Icons.Default.Refresh,
                            contentDescription = stringResource(R.string.auto_refrescar),
                        )
                    }
                },
            )
        },
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .background(colorScheme.background),
        ) {
            Column(modifier = Modifier.fillMaxSize()) {
                Card(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(Spacing.m),
                    shape = shapes.medium,
                    colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceContainerLow),
                    elevation = CardDefaults.cardElevation(defaultElevation = Spacing.xxs),
                ) {
                    Column(modifier = Modifier.padding(Spacing.m)) {
                        Text(
                            text = stringResource(R.string.auto_filtros),
                            style = typography.titleMedium,
                            fontWeight = FontWeight.SemiBold,
                            color = colorScheme.primary,
                        )
                        Spacer(modifier = Modifier.height(Spacing.m))

                        OutlinedTextField(
                            value = searchDni,
                            onValueChange = onSearchDniChange,
                            label = { Text(stringResource(R.string.auto_buscar_por_dni_nombre)) },
                            leadingIcon = {
                                Icon(
                                    Icons.Default.Search,
                                    contentDescription = null,
                                    tint = colorScheme.primary,
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            singleLine = true,
                            shape = shapes.medium,
                            colors =
                                OutlinedTextFieldDefaults.colors(
                                    focusedTextColor = colorScheme.onSurface,
                                    unfocusedTextColor = colorScheme.onSurface,
                                    focusedBorderColor = colorScheme.primary,
                                    unfocusedBorderColor = colorScheme.outline,
                                    focusedLabelColor = colorScheme.primary,
                                    unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                    cursorColor = colorScheme.primary,
                                    focusedContainerColor = colorScheme.surface,
                                    unfocusedContainerColor = colorScheme.surface,
                                ),
                        )

                        Spacer(modifier = Modifier.height(Spacing.m))

                        Text(
                            text = stringResource(R.string.auto_filtrar_por_rol),
                            style = typography.labelLarge,
                            color = colorScheme.onSurface,
                        )
                        Spacer(modifier = Modifier.height(Spacing.md))

                        Row(
                            horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                            modifier = Modifier.fillMaxWidth(),
                        ) {
                            FilterChip(
                                selected = selectedRol == null,
                                onClick = { onSelectedRolChange(null) },
                                label = { Text(stringResource(R.string.auto_todos)) },
                                modifier = Modifier.weight(1f),
                                colors =
                                    FilterChipDefaults.filterChipColors(
                                        selectedContainerColor = colorScheme.primary,
                                        selectedLabelColor = colorScheme.onPrimary,
                                        containerColor = colorScheme.surface,
                                        labelColor = colorScheme.onSurfaceVariant,
                                    ),
                            )
                            FilterChip(
                                selected = selectedRol == Rol.admin,
                                onClick = { onSelectedRolChange(Rol.admin) },
                                label = { Text(stringResource(R.string.auto__admins)) },
                                modifier = Modifier.weight(1f),
                                colors =
                                    FilterChipDefaults.filterChipColors(
                                        selectedContainerColor = colorScheme.primary,
                                        selectedLabelColor = colorScheme.onPrimary,
                                        containerColor = colorScheme.surface,
                                        labelColor = colorScheme.onSurfaceVariant,
                                    ),
                            )
                            FilterChip(
                                selected = selectedRol == Rol.psicologo,
                                onClick = { onSelectedRolChange(Rol.psicologo) },
                                label = { Text(stringResource(R.string.auto__psicologos)) },
                                modifier = Modifier.weight(1f),
                                colors =
                                    FilterChipDefaults.filterChipColors(
                                        selectedContainerColor = colorScheme.primary,
                                        selectedLabelColor = colorScheme.onPrimary,
                                        containerColor = colorScheme.surface,
                                        labelColor = colorScheme.onSurfaceVariant,
                                    ),
                            )
                            FilterChip(
                                selected = selectedRol == Rol.paciente,
                                onClick = { onSelectedRolChange(Rol.paciente) },
                                label = { Text(stringResource(R.string.auto__pacientes)) },
                                modifier = Modifier.weight(1f),
                                colors =
                                    FilterChipDefaults.filterChipColors(
                                        selectedContainerColor = colorScheme.primary,
                                        selectedLabelColor = colorScheme.onPrimary,
                                        containerColor = colorScheme.surface,
                                        labelColor = colorScheme.onSurfaceVariant,
                                    ),
                            )
                        }
                    }
                }

                if (isLoading) {
                    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                        CircularProgressIndicator(color = colorScheme.primary)
                    }
                } else if (usuarios.isEmpty()) {
                    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                        Column(horizontalAlignment = Alignment.CenterHorizontally) {
                            Icon(
                                Icons.Default.People,
                                contentDescription = null,
                                modifier = Modifier.size(Spacing.avatarLarge),
                                tint = colorScheme.onSurfaceVariant.copy(alpha = 0.5f),
                            )
                            Spacer(modifier = Modifier.height(Spacing.m))
                            Text(
                                text = stringResource(R.string.auto_no_se_encontraron_usuarios),
                                style = typography.titleMedium,
                                color = colorScheme.onSurfaceVariant,
                            )
                            Text(
                                text = stringResource(R.string.auto_prueba_con_otros_filtros),
                                style = typography.bodySmall,
                                color = colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                } else {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = Spacing.m, vertical = Spacing.s),
                        verticalArrangement = Arrangement.spacedBy(Spacing.md),
                    ) {
                        items(
                            items = usuarios,
                            key = { user -> user.idUsuario ?: user.email ?: user.hashCode() },
                        ) { user ->
                            UserCard(
                                user = user,
                                onCambiarRol = { onCambiarRolClick(user) },
                            )
                        }
                    }
                }
            }
        }
    }
}

/**
 * Tarjeta que muestra la información resumida de un usuario y permite cambiar su rol.
 *
 * @param user Datos del usuario a mostrar.
 * @param onCambiarRol Callback invocado al pulsar el botón de cambio de rol.
 */
@Composable
fun UserCard(
    user: UsuarioDTO,
    onCambiarRol: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    val roleColor =
        when (user.rol) {
            Rol.admin -> colorScheme.error
            Rol.psicologo -> colorScheme.tertiary
            else -> colorScheme.primary
        }

    val roleBgColor =
        when (user.rol) {
            Rol.admin -> colorScheme.errorContainer
            Rol.psicologo -> colorScheme.tertiaryContainer
            else -> colorScheme.primaryContainer
        }

    val roleOnBgColor =
        when (user.rol) {
            Rol.admin -> colorScheme.onErrorContainer
            Rol.psicologo -> colorScheme.onTertiaryContainer
            else -> colorScheme.onPrimaryContainer
        }

    val roleLabel =
        when (user.rol) {
            Rol.admin -> stringResource(R.string.admin_rol_administrador)
            Rol.psicologo -> stringResource(R.string.admin_rol_psicologo)
            else -> stringResource(R.string.admin_rol_paciente)
        }

    val roleIcon =
        when (user.rol) {
            Rol.admin -> Icons.Default.AdminPanelSettings
            Rol.psicologo -> Icons.Default.MedicalServices
            else -> Icons.Default.Person
        }

    Card(
        modifier = modifier.fillMaxWidth(),
        shape = shapes.medium,
        colors = CardDefaults.cardColors(containerColor = colorScheme.surfaceContainerLow),
        elevation = CardDefaults.cardElevation(defaultElevation = Spacing.xxs),
    ) {
        Row(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(Spacing.m),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(Spacing.s),
                ) {
                    Icon(
                        roleIcon,
                        contentDescription = null,
                        tint = roleColor,
                        modifier = Modifier.size(Spacing.iconMedium),
                    )
                    Text(
                        text = "${user.nombre ?: ""} ${user.apellido ?: ""}".trim(),
                        style = typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.onSurface,
                    )
                }

                Spacer(modifier = Modifier.height(Spacing.xs))

                Text(
                    text = user.email ?: "",
                    style = typography.bodySmall,
                    color = colorScheme.onSurfaceVariant,
                )

                if (!user.dni.isNullOrEmpty()) {
                    Text(
                        text = stringResource(R.string.admin_dni_formato, user.dni),
                        style = typography.labelSmall,
                        color = colorScheme.onSurfaceVariant,
                    )
                } else {
                    Text(
                        text = stringResource(R.string.auto_dni_no_registrado),
                        style = typography.labelSmall,
                        color = colorScheme.onSurfaceVariant,
                    )
                }

                Spacer(modifier = Modifier.height(Spacing.s))

                Surface(
                    shape = CircleShape,
                    color = roleBgColor,
                ) {
                    Text(
                        text = roleLabel,
                        style = typography.labelSmall,
                        fontWeight = FontWeight.Medium,
                        modifier = Modifier.padding(horizontal = Spacing.md, vertical = Spacing.xs),
                        color = roleOnBgColor,
                    )
                }
            }

            IconButton(
                onClick = onCambiarRol,
            ) {
                Icon(
                    Icons.Default.SwapHoriz,
                    contentDescription = stringResource(R.string.auto_cambiar_rol),
                    modifier = Modifier.size(Spacing.iconMedium),
                    tint = colorScheme.primary,
                )
            }
        }
    }
}

@Preview(name = "AdminUserManagement Light", showBackground = true)
@Preview(name = "AdminUserManagement Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "AdminUserManagement FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun AdminUserManagementScreenPreview() {
    org.ies.tierno.applicationamani.ui.theme.AppTheme {
        AdminUserManagementContent(
            usuarios =
                listOf(
                    UsuarioDTO(
                        idUsuario = 1,
                        nombre = "Elena",
                        apellido = "Martínez",
                        email = "elena@amani.es",
                        dni = "11223344B",
                        rol = Rol.psicologo,
                    ),
                ),
            isLoading = false,
            selectedRol = null,
            searchDni = "",
            onSelectedRolChange = {},
            onSearchDniChange = {},
            onNavigateBack = {},
            onRefreshClick = {},
            onCambiarRolClick = {},
        )
    }
}