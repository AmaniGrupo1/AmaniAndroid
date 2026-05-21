package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.role

import android.util.Log
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.delay
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomSheetCambiarRol
import org.ies.tierno.applicationamani.presentation.viewmodels.role.AdminRoleViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.role.AdminUserViewModel
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

    // 📍 LOG: Estado inicial de la pantalla
    LaunchedEffect(Unit) {
        Log.d(TAG, "=== INICIALIZANDO PANTALLA DE ADMIN ===")
        Log.d(TAG, "ColorScheme: ${colorScheme.primary}")
        Log.d(TAG, "ViewModel inicializado correctamente")
    }

    // 📍 LOG: Seguimiento de cambios en usuarios filtrados
    LaunchedEffect(usuarios) {
        Log.d(TAG, "📊 LISTA ACTUALIZADA - Usuarios filtrados: ${usuarios.size}")
        usuarios.forEach { user ->
            Log.d(TAG, "   👤 Usuario: ID=${user.idUsuario}, Nombre=${user.nombre} ${user.apellido}, " +
                    "Rol=${user.rol}, DNI=${user.dni ?: "null"}, Email=${user.email}")
        }
        if (usuarios.isEmpty()) {
            Log.w(TAG, "⚠️ No hay usuarios en la lista filtrada")
        }
    }

    // 📍 LOG: Seguimiento de estado de carga
    LaunchedEffect(isLoading) {
        Log.d(TAG, "🔄 Estado de carga: ${if (isLoading) "CARGANDO..." else "COMPLETADO"}")
    }

    // Manejo de errores con Log
    LaunchedEffect(error) {
        error?.let {
            Log.e(TAG, "❌ Error en AdminUserViewModel: $it")
            adminUserViewModel.clearError()
        }
    }

    // Éxito al cambiar rol - Refresca automáticamente
    LaunchedEffect(adminRoleViewModel.success) {
        adminRoleViewModel.success?.let { message ->
            Log.d(TAG, "✅ Éxito al cambiar rol: $message")
            adminRoleViewModel.clearMessages()
            Log.d(TAG, "🔄 Recargando usuarios después de cambio de rol...")
            // Recargar usuarios después de cambiar rol
            adminUserViewModel.cargarUsuarios()
        }
    }

    LaunchedEffect(adminRoleViewModel.error) {
        adminRoleViewModel.error?.let { message ->
            Log.e(TAG, "❌ Error al cambiar rol: $message")
            adminRoleViewModel.clearMessages()
        }
    }

    // 📍 LOG: Seguimiento de filtros aplicados
    LaunchedEffect(selectedRol, searchDni) {
        Log.d(TAG, "🔍 APLICANDO FILTROS - Rol: ${selectedRol?.name ?: "TODOS"}, " +
                "Búsqueda: '${searchDni.ifEmpty { "vacío" }}'")
        adminUserViewModel.filtrarUsuarios(rol = selectedRol, dni = searchDni)
    }

    // Carga inicial con log detallado
    LaunchedEffect(Unit) {
        Log.d(TAG, "🚀 Iniciando carga inicial de usuarios...")
        adminUserViewModel.cargarUsuarios()
        // Pequeña pausa para permitir que se complete la carga
        delay(500)
        Log.d(TAG, "📋 Verificación post-carga inicial")
    }

    // Función para confirmar el cambio de rol con logs
    fun confirmRoleChange() {
        pendingRol?.let { nuevoRol ->
            Log.d(TAG, "🔄 Confirmando cambio de rol para usuario ID=${selectedUser?.idUsuario}, " +
                    "Nombre=${selectedUser?.nombre}, Nuevo rol=$nuevoRol")
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
                            Icons.AutoMirrored.Filled.ArrowBack,
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
                    IconButton(onClick = {
                        Log.d(TAG, "🔄 Refresco manual solicitado por el usuario")
                        adminUserViewModel.cargarUsuarios()
                    }) {
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
                            onValueChange = {
                                Log.d(TAG, "✏️ Cambiando búsqueda a: '$it'")
                                searchDni = it
                            },
                            label = { Text("Buscar por DNI, Nombre o Email") },
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
                                onClick = {
                                    Log.d(TAG, "🎯 Filtro cambiado a: TODOS")
                                    selectedRol = null
                                },
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
                                selected = selectedRol == Rol.admin,
                                onClick = {
                                    Log.d(TAG, "🎯 Filtro cambiado a: ADMIN")
                                    selectedRol = Rol.admin
                                },
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
                                selected = selectedRol == Rol.psicologo,
                                onClick = {
                                    Log.d(TAG, "🎯 Filtro cambiado a: PSICÓLOGO")
                                    selectedRol = Rol.psicologo
                                },
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
                                selected = selectedRol == Rol.paciente,
                                onClick = {
                                    Log.d(TAG, "🎯 Filtro cambiado a: PACIENTE")
                                    selectedRol = Rol.paciente
                                },
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
                    Log.d(TAG, "⏳ Mostrando indicador de carga...")
                    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                        CircularProgressIndicator(color = colorScheme.primary)
                    }
                } else if (usuarios.isEmpty()) {
                    Log.w(TAG, "📭 No hay usuarios para mostrar - Lista vacía")
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
                    Log.d(TAG, "📋 Mostrando ${usuarios.size} usuarios en la lista")
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 8.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        items(
                            items = usuarios,
                            key = { user -> user.idUsuario ?: user.email ?: user.hashCode() },
                        ) { user ->
                            UserCard(
                                user = user,
                                onCambiarRol = {
                                    Log.d(TAG, "🖱️ Click en cambiar rol para usuario: ${user.nombre} ${user.apellido} (ID: ${user.idUsuario})")
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
        Log.d(TAG, "💬 Mostrando diálogo de confirmación para usuario: ${selectedUser?.nombre}")
        AlertDialog(
            onDismissRequest = {
                Log.d(TAG, "❌ Diálogo de confirmación cancelado")
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
                            Rol.admin -> "👑 Administrador"
                            Rol.psicologo -> "🧠 Psicólogo"
                            else -> "👤 Paciente"
                        }}",
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                    )
                    Text(
                        text = "Nuevo rol: ${when (pendingRol) {
                            Rol.admin -> "👑 Administrador"
                            Rol.psicologo -> "🧠 Psicólogo"
                            else -> "👤 Paciente"
                        }}",
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
                    onClick = {
                        Log.d(TAG, "✅ Confirmando cambio de rol")
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
                        Log.d(TAG, "❌ Cancelando cambio de rol")
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
        Log.d(TAG, "📱 Mostrando BottomSheet para seleccionar nuevo rol de usuario: ${selectedUser?.nombre}")
        BottomSheetCambiarRol(
            user = selectedUser!!,
            onDismiss = {
                Log.d(TAG, "❌ BottomSheet cerrado sin selección")
                showBottomSheet = false
                selectedUser = null
            },
            onConfirm = { nuevoRol ->
                Log.d(TAG, "🎯 Nuevo rol seleccionado: $nuevoRol para usuario ${selectedUser?.nombre}")
                pendingRol = nuevoRol
                showConfirmDialog = true
            },
        )
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
) {
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val shapes = MaterialTheme.shapes

    // Log para depuración de cada tarjeta
    LaunchedEffect(user) {
        Log.d(TAG, "🎴 Renderizando tarjeta para: ${user.nombre} ${user.apellido}, " +
                "Rol: ${user.rol}, DNI: ${user.dni ?: "null"}")
    }

    // Colores según rol
    val roleColor =
        when (user.rol) {
            Rol.admin -> colorScheme.error
            Rol.psicologo -> colorScheme.tertiary
            else -> colorScheme.primary
        }

    val roleBgColor = roleColor.copy(alpha = 0.1f)

    val roleLabel =
        when (user.rol) {
            Rol.admin -> "👑 Administrador"
            Rol.psicologo -> "🧠 Psicólogo"
            else -> "👤 Paciente"
        }

    val roleIcon =
        when (user.rol) {
            Rol.admin -> Icons.Default.AdminPanelSettings
            Rol.psicologo -> Icons.Default.Psychology
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
                } else {
                    Text(
                        text = "DNI: No registrado",
                        style = typography.labelSmall,
                        color = colorScheme.onSurfaceVariant.copy(alpha = 0.5f),
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