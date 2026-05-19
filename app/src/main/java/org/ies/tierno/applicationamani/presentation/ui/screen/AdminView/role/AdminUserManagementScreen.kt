package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.role

import android.util.Log
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomSheetCambiarRol
import org.ies.tierno.applicationamani.presentation.viewmodels.role.AdminRoleViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.role.AdminUserViewModel
import org.koin.androidx.compose.koinViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AdminUserManagementScreen(
    adminUserViewModel: AdminUserViewModel = koinViewModel(),
    adminRoleViewModel: AdminRoleViewModel = koinViewModel(),
    onNavigateBack: () -> Unit = {},
) {
    val usuarios by adminUserViewModel.usuariosFiltrados.collectAsState()
    val isLoading by adminUserViewModel.isLoading.collectAsState()
    val error by adminUserViewModel.error.collectAsState()

    var selectedRol by remember { mutableStateOf<Rol?>(null) }
    var searchDni by remember { mutableStateOf("") }
    var showBottomSheet by remember { mutableStateOf(false) }
    var selectedUser by remember { mutableStateOf<UsuarioDTO?>(null) }

    // Estado para la alerta de confirmación
    var showConfirmDialog by remember { mutableStateOf(false) }
    var pendingRol by remember { mutableStateOf<Rol?>(null) }

    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    // Manejo de errores con Log
    LaunchedEffect(error) {
        error?.let {
            Log.e("AdminScreen", "Error: $it")
            adminUserViewModel.clearError()
        }
    }

    // Éxito al cambiar rol - Refresca automáticamente
    LaunchedEffect(adminRoleViewModel.success) {
        adminRoleViewModel.success?.let { message ->
            Log.d("AdminScreen", "Success: $message")
            adminRoleViewModel.clearMessages()
            // Recargar usuarios después de cambiar rol
            adminUserViewModel.cargarUsuarios()
        }
    }

    LaunchedEffect(adminRoleViewModel.error) {
        adminRoleViewModel.error?.let { message ->
            Log.e("AdminScreen", "Role Error: $message")
            adminRoleViewModel.clearMessages()
        }
    }

    // Carga inicial
    LaunchedEffect(Unit) {
        adminUserViewModel.cargarUsuarios()
    }

    // Filtros
    LaunchedEffect(selectedRol, searchDni) {
        adminUserViewModel.filtrarUsuarios(rol = selectedRol, dni = searchDni)
    }

    // Función para confirmar el cambio de rol
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

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        "Gestión de Usuarios",
                        style = typography.titleLarge.copy(fontWeight = FontWeight.Bold),
                        color = colorScheme.onPrimary,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(
                            Icons.Default.ArrowBack,
                            contentDescription = "Volver",
                            tint = colorScheme.onPrimary,
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = colorScheme.primary,
                        titleContentColor = colorScheme.onPrimary,
                        navigationIconContentColor = colorScheme.onPrimary,
                    ),
                actions = {
                    // Botón de refresco manual
                    IconButton(onClick = { adminUserViewModel.cargarUsuarios() }) {
                        Icon(Icons.Default.Refresh, contentDescription = "Refrescar", tint = colorScheme.onPrimary)
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
                    .background(
                        brush =
                            Brush.verticalGradient(
                                colors =
                                    listOf(
                                        colorScheme.surfaceContainer.copy(alpha = 0.3f),
                                        colorScheme.background,
                                    ),
                            ),
                    ),
        ) {
            Column(
                modifier = Modifier.fillMaxSize(),
            ) {
                // Filtros - Estilo profesional
                Card(
                    modifier =
                        Modifier
                            .fillMaxWidth()
                            .padding(16.dp)
                            .shadow(4.dp, shapes.medium),
                    shape = shapes.medium,
                    colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
                    elevation = CardDefaults.cardElevation(defaultElevation = 0.dp),
                ) {
                    Column(modifier = Modifier.padding(20.dp)) {
                        Text(
                            "Filtros",
                            style = typography.titleMedium,
                            fontWeight = FontWeight.SemiBold,
                            color = colorScheme.primary,
                        )
                        Spacer(modifier = Modifier.height(16.dp))

                        OutlinedTextField(
                            value = searchDni,
                            onValueChange = { searchDni = it },
                            label = { Text("Buscar por DNI o Nombre") },
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

                        Spacer(modifier = Modifier.height(16.dp))

                        Text(
                            "Filtrar por Rol:",
                            style = typography.labelLarge,
                            color = colorScheme.onSurface,
                        )
                        Spacer(modifier = Modifier.height(12.dp))

                        Row(
                            horizontalArrangement = Arrangement.spacedBy(10.dp),
                            modifier = Modifier.fillMaxWidth(),
                        ) {
                            FilterChip(
                                selected = selectedRol == null,
                                onClick = { selectedRol = null },
                                label = { Text("Todos") },
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
                                selected = selectedRol == Rol.ADMIN,
                                onClick = { selectedRol = Rol.ADMIN },
                                label = { Text("👑 Admins") },
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
                                selected = selectedRol == Rol.PSICOLOGO,
                                onClick = { selectedRol = Rol.PSICOLOGO },
                                label = { Text("🧠 Psicólogos") },
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
                                selected = selectedRol == Rol.PACIENTE,
                                onClick = { selectedRol = Rol.PACIENTE },
                                label = { Text("👤 Pacientes") },
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

                // Lista de usuarios
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
                                modifier = Modifier.size(72.dp),
                                tint = colorScheme.onSurfaceVariant.copy(alpha = 0.5f),
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                "No se encontraron usuarios",
                                style = typography.titleMedium,
                                color = colorScheme.onSurfaceVariant,
                            )
                            Text(
                                "Prueba con otros filtros",
                                style = typography.bodySmall,
                                color = colorScheme.onSurfaceVariant.copy(alpha = 0.85f),
                            )
                        }
                    }
                } else {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 8.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        items(usuarios) { user ->
                            UserCard(
                                user = user,
                                onCambiarRol = {
                                    selectedUser = user
                                    showBottomSheet = true
                                },
                            )
                        }
                    }
                }
            }
        }
    }

    // Diálogo de confirmación
    if (showConfirmDialog) {
        AlertDialog(
            onDismissRequest = {
                showConfirmDialog = false
                pendingRol = null
            },
            title = {
                Text(
                    "Confirmar cambio de rol",
                    style = typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                    color = colorScheme.primary,
                )
            },
            text = {
                Column {
                    Text(
                        "¿Estás seguro de que quieres cambiar el rol de?",
                        style = typography.bodyMedium,
                        color = colorScheme.onSurface,
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "${selectedUser?.nombre ?: ""} ${selectedUser?.apellido ?: ""}".trim(),
                        style = typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.primary,
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    Text(
                        text = selectedUser?.email ?: "",
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                    )
                    Spacer(modifier = Modifier.height(12.dp))
                    Text(
                        text = "Rol actual: ${when (selectedUser?.rol) {
                            Rol.ADMIN -> "👑 Administrador"
                            Rol.PSICOLOGO -> "🧠 Psicólogo"
                            else -> "👤 Paciente"
                        }}",
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                    )
                    Text(
                        text = "Nuevo rol: ${when (pendingRol) {
                            Rol.ADMIN -> "👑 Administrador"
                            Rol.PSICOLOGO -> "🧠 Psicólogo"
                            else -> "👤 Paciente"
                        }}",
                        style = typography.bodySmall,
                        fontWeight = FontWeight.Bold,
                        color =
                            when (pendingRol) {
                                Rol.ADMIN -> colorScheme.error
                                Rol.PSICOLOGO -> colorScheme.secondary
                                else -> colorScheme.primary
                            },
                    )
                }
            },
            confirmButton = {
                Button(
                    onClick = {
                        confirmRoleChange()
                    },
                    colors =
                        ButtonDefaults.buttonColors(
                            containerColor = colorScheme.primary,
                        ),
                    shape = shapes.small,
                ) {
                    Text("Sí, cambiar rol", color = colorScheme.onPrimary)
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
                    Text("Cancelar")
                }
            },
            containerColor = colorScheme.surface,
            shape = shapes.extraLarge,
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

@Composable
fun UserCard(
    user: UsuarioDTO,
    onCambiarRol: () -> Unit,
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    // Colores según rol
    val roleColor =
        when (user.rol) {
            Rol.ADMIN -> colorScheme.error
            Rol.PSICOLOGO -> colorScheme.tertiary
            else -> colorScheme.primary
        }

    val roleBgColor = roleColor.copy(alpha = 0.1f)

    val roleLabel =
        when (user.rol) {
            Rol.ADMIN -> "👑 Administrador"
            Rol.PSICOLOGO -> "🧠 Psicólogo"
            else -> "👤 Paciente"
        }

    val roleIcon =
        when (user.rol) {
            Rol.ADMIN -> Icons.Default.AdminPanelSettings
            Rol.PSICOLOGO -> Icons.Default.Psychology
            else -> Icons.Default.Person
        }

    Card(
        modifier =
            Modifier
                .fillMaxWidth()
                .shadow(2.dp, shapes.medium),
        shape = shapes.medium,
        colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = 0.dp),
    ) {
        Row(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Column(modifier = Modifier.weight(1f)) {
                // Nombre y rol en una fila
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(10.dp),
                ) {
                    Icon(
                        roleIcon,
                        contentDescription = null,
                        tint = roleColor,
                        modifier = Modifier.size(28.dp),
                    )
                    Text(
                        text = "${user.nombre ?: ""} ${user.apellido ?: ""}".trim(),
                        style = typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        color = colorScheme.onSurface,
                    )
                }

                Spacer(modifier = Modifier.height(6.dp))

                // Email
                Text(
                    text = user.email ?: "",
                    style = typography.bodySmall,
                    color = colorScheme.onSurfaceVariant,
                )

                // DNI si existe
                if (!user.dni.isNullOrEmpty()) {
                    Text(
                        text = "DNI: ${user.dni}",
                        style = typography.labelSmall,
                        color = colorScheme.onSurfaceVariant.copy(alpha = 0.7f),
                    )
                }

                Spacer(modifier = Modifier.height(8.dp))

                // Badge de rol
                Surface(
                    shape = CircleShape,
                    color = roleBgColor,
                    modifier = Modifier,
                ) {
                    Text(
                        text = roleLabel,
                        style = typography.labelSmall,
                        fontWeight = FontWeight.Medium,
                        modifier = Modifier.padding(horizontal = 12.dp, vertical = 5.dp),
                        color = roleColor,
                    )
                }
            }

            // Botón cambiar rol
            IconButton(
                onClick = onCambiarRol,
                modifier = Modifier.size(44.dp),
            ) {
                Icon(
                    Icons.Default.SwapHoriz,
                    contentDescription = "Cambiar rol",
                    modifier = Modifier.size(24.dp),
                    tint = colorScheme.primary.copy(alpha = 0.8f),
                )
            }
        }
    }
}
