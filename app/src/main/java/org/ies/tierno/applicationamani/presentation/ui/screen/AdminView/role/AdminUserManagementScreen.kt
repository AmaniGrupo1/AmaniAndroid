package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.role

import android.util.Log
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.ies.tierno.applicationamani.domain.models.login.UsuarioDTO
import org.ies.tierno.applicationamani.presentation.ui.componente.BottomSheetCambiarRol
import org.ies.tierno.applicationamani.presentation.viewmodels.role.AdminRoleViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.role.AdminUserViewModel
import org.koin.androidx.compose.koinViewModel
import androidx.compose.ui.platform.LocalContext
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme

// Colores originales para el modo DEFECTO/CLARO
object AmaniAdminColors {
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
fun AdminUserManagementScreen(
    adminUserViewModel: AdminUserViewModel = koinViewModel(),
    adminRoleViewModel: AdminRoleViewModel = koinViewModel(),
    onNavigateBack: () -> Unit = {}
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

    // Estado de refresco automático
    var refreshTrigger by remember { mutableStateOf(false) }

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Determinar colores según el tema
    val primaryColor = if (isDark) Color.White else AmaniAdminColors.Primary
    val titleOnPrimary = if (isDark) Color.Black else Color.White
    val cardBackground = if (isDark) cardColors.cardBackground else AmaniAdminColors.Surface
    val cardContent = if (isDark) cardColors.cardContent else AmaniAdminColors.TextPrimary
    val secondaryText = if (isDark) cardColors.cardContent.copy(alpha = 0.7f) else AmaniAdminColors.TextSecondary
    val backgroundColor = if (isDark) screenColors.background else AmaniAdminColors.Background
    val accentColor = if (isDark) cardColors.cardBackground else AmaniAdminColors.Accent
    val textFieldContainer = if (isDark) Color.DarkGray else Color.White
    val textFieldBorderColor = if (isDark) Color.White else AmaniAdminColors.TextSecondary.copy(alpha = 0.3f)

    // Manejo de errores con Log
    LaunchedEffect(error) {
        error?.let {
            Log.e("AdminScreen", "Error: $it")
            adminUserViewModel.clearError()
        }
    }

    // Éxito al cambiar rol - Refresca automáticamente
    LaunchedEffect(adminRoleViewModel.success, refreshTrigger) {
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

    // Función para refrescar manualmente si es necesario
    fun refreshUsers() {
        refreshTrigger = !refreshTrigger
        adminUserViewModel.cargarUsuarios()
    }

    // Función para confirmar el cambio de rol
    fun confirmRoleChange() {
        pendingRol?.let { nuevoRol ->
            adminRoleViewModel.cambiarRol(
                idUsuario = selectedUser!!.idUsuario ?: 0,
                nuevoRol = nuevoRol
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
                        fontSize = 22.sp,
                        fontWeight = FontWeight.Bold,
                        letterSpacing = 0.5.sp,
                        color = titleOnPrimary
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(
                            Icons.Default.ArrowBack,
                            contentDescription = "Volver",
                            tint = titleOnPrimary
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = primaryColor,
                    titleContentColor = titleOnPrimary,
                    navigationIconContentColor = titleOnPrimary
                ),
                actions = {
                    // Botón de refresco manual
                    IconButton(onClick = { refreshUsers() }) {
                        Icon(Icons.Default.Refresh, contentDescription = "Refrescar", tint = titleOnPrimary)
                    }
                }
            )
        }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .background(
                    brush = Brush.verticalGradient(
                        colors = listOf(
                            if (isDark) cardColors.cardBackground else accentColor.copy(alpha = 0.3f),
                            if (isDark) screenColors.background else backgroundColor
                        )
                    )
                )
        ) {
            Column(
                modifier = Modifier.fillMaxSize()
            ) {
                // Filtros - Estilo profesional
                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp)
                        .shadow(4.dp, RoundedCornerShape(20.dp)),
                    shape = RoundedCornerShape(20.dp),
                    colors = CardDefaults.cardColors(containerColor = cardBackground),
                    elevation = CardDefaults.cardElevation(defaultElevation = 0.dp)
                ) {
                    Column(modifier = Modifier.padding(20.dp)) {
                        Text(
                            "Filtros",
                            fontSize = 18.sp,
                            fontWeight = FontWeight.SemiBold,
                            color = primaryColor,
                            letterSpacing = 0.5.sp
                        )
                        Spacer(modifier = Modifier.height(16.dp))

                        OutlinedTextField(
                            value = searchDni,
                            onValueChange = { searchDni = it },
                            label = { Text("Buscar por DNI o Nombre", color = secondaryText) },
                            leadingIcon = {
                                Icon(
                                    Icons.Default.Search,
                                    contentDescription = null,
                                    tint = if (isDark) Color.White else AmaniAdminColors.PrimaryLight
                                )
                            },
                            modifier = Modifier.fillMaxWidth(),
                            singleLine = true,
                            shape = RoundedCornerShape(16.dp),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = cardContent,
                                unfocusedTextColor = cardContent,
                                focusedBorderColor = primaryColor,
                                unfocusedBorderColor = textFieldBorderColor,
                                focusedLabelColor = primaryColor,
                                unfocusedLabelColor = secondaryText,
                                cursorColor = primaryColor,
                                focusedContainerColor = textFieldContainer,
                                unfocusedContainerColor = textFieldContainer
                            )
                        )

                        Spacer(modifier = Modifier.height(16.dp))

                        Text(
                            "Filtrar por Rol:",
                            fontSize = 14.sp,
                            fontWeight = FontWeight.Medium,
                            color = cardContent
                        )
                        Spacer(modifier = Modifier.height(12.dp))

                        Row(
                            horizontalArrangement = Arrangement.spacedBy(10.dp),
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            FilterChip(
                                selected = selectedRol == null,
                                onClick = { selectedRol = null },
                                label = { Text("Todos", color = if (selectedRol == null) titleOnPrimary else cardContent) },
                                modifier = Modifier.weight(1f),
                                colors = FilterChipDefaults.filterChipColors(
                                    selectedContainerColor = primaryColor,
                                    selectedLabelColor = titleOnPrimary,
                                    disabledSelectedContainerColor = if (isDark) Color.DarkGray else AmaniAdminColors.PrimaryLight,
                                    containerColor = cardBackground,
                                    labelColor = secondaryText
                                )
                            )
                            FilterChip(
                                selected = selectedRol == Rol.admin,
                                onClick = { selectedRol = Rol.admin },
                                label = { Text("👑 Admins", color = if (selectedRol == Rol.admin) titleOnPrimary else cardContent) },
                                modifier = Modifier.weight(1f),
                                colors = FilterChipDefaults.filterChipColors(
                                    selectedContainerColor = primaryColor,
                                    selectedLabelColor = titleOnPrimary,
                                    containerColor = cardBackground,
                                    labelColor = secondaryText
                                )
                            )
                            FilterChip(
                                selected = selectedRol == Rol.psicologo,
                                onClick = { selectedRol = Rol.psicologo },
                                label = { Text("🧠 Psicólogos", color = if (selectedRol == Rol.psicologo) titleOnPrimary else cardContent) },
                                modifier = Modifier.weight(1f),
                                colors = FilterChipDefaults.filterChipColors(
                                    selectedContainerColor = primaryColor,
                                    selectedLabelColor = titleOnPrimary,
                                    containerColor = cardBackground,
                                    labelColor = secondaryText
                                )
                            )
                            FilterChip(
                                selected = selectedRol == Rol.paciente,
                                onClick = { selectedRol = Rol.paciente },
                                label = { Text("👤 Pacientes", color = if (selectedRol == Rol.paciente) titleOnPrimary else cardContent) },
                                modifier = Modifier.weight(1f),
                                colors = FilterChipDefaults.filterChipColors(
                                    selectedContainerColor = primaryColor,
                                    selectedLabelColor = titleOnPrimary,
                                    containerColor = cardBackground,
                                    labelColor = secondaryText
                                )
                            )
                        }
                    }
                }

                // Lista de usuarios
                if (isLoading) {
                    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                        CircularProgressIndicator(color = primaryColor)
                    }
                } else if (usuarios.isEmpty()) {
                    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                        Column(horizontalAlignment = Alignment.CenterHorizontally) {
                            Icon(
                                Icons.Default.People,
                                contentDescription = null,
                                modifier = Modifier.size(72.dp),
                                tint = secondaryText.copy(alpha = 0.5f)
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                "No se encontraron usuarios",
                                fontSize = 16.sp,
                                color = secondaryText,
                                fontWeight = FontWeight.Medium
                            )
                            Text(
                                "Prueba con otros filtros",
                                fontSize = 13.sp,
                                color = secondaryText.copy(alpha = 0.85f)
                            )
                        }
                    }
                } else {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 8.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        items(usuarios) { user ->
                            UserCard(
                                user = user,
                                onCambiarRol = {
                                    selectedUser = user
                                    showBottomSheet = true
                                },
                                cardBackground = cardBackground,
                                cardContent = cardContent,
                                primaryColor = primaryColor,
                                isDark = isDark
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
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Bold,
                    color = primaryColor
                )
            },
            text = {
                Column {
                    Text(
                        "¿Estás seguro de que quieres cambiar el rol de?",
                        fontSize = 14.sp,
                        color = cardContent
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "${selectedUser?.nombre ?: ""} ${selectedUser?.apellido ?: ""}".trim(),
                        fontSize = 16.sp,
                        fontWeight = FontWeight.Bold,
                        color = primaryColor
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    Text(
                        text = selectedUser?.email ?: "",
                        fontSize = 13.sp,
                        color = secondaryText
                    )
                    Spacer(modifier = Modifier.height(12.dp))
                    Text(
                        text = "Rol actual: ${when (selectedUser?.rol) {
                            Rol.admin -> "👑 Administrador"
                            Rol.psicologo -> "🧠 Psicólogo"
                            else -> "👤 Paciente"
                        }}",
                        fontSize = 13.sp,
                        color = secondaryText
                    )
                    Text(
                        text = "Nuevo rol: ${when (pendingRol) {
                            Rol.admin -> "👑 Administrador"
                            Rol.psicologo -> "🧠 Psicólogo"
                            else -> "👤 Paciente"
                        }}",
                        fontSize = 13.sp,
                        fontWeight = FontWeight.Bold,
                        color = when (pendingRol) {
                            Rol.admin -> Color(0xFFE53935)
                            Rol.psicologo -> Color(0xFF43A047)
                            else -> primaryColor
                        }
                    )
                }
            },
            confirmButton = {
                Button(
                    onClick = { confirmRoleChange() },
                    colors = ButtonDefaults.buttonColors(
                        containerColor = primaryColor
                    ),
                    shape = RoundedCornerShape(8.dp)
                ) {
                    Text("Sí, cambiar rol", color = titleOnPrimary)
                }
            },
            dismissButton = {
                OutlinedButton(
                    onClick = {
                        showConfirmDialog = false
                        pendingRol = null
                    },
                    shape = RoundedCornerShape(8.dp)
                ) {
                    Text("Cancelar")
                }
            },
            containerColor = cardBackground,
            shape = RoundedCornerShape(16.dp)
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
            }
        )
    }
}

@Composable
fun UserCard(
    user: UsuarioDTO,
    onCambiarRol: () -> Unit,
    cardBackground: Color,
    cardContent: Color,
    primaryColor: Color,
    isDark: Boolean
) {
    // Colores según rol
    val roleColor = when (user.rol) {
        Rol.admin -> Color(0xFFE53935)
        Rol.psicologo -> Color(0xFF43A047)
        else -> if (isDark) Color.White else AmaniAdminColors.Primary
    }

    val roleBgColor = when (user.rol) {
        Rol.admin -> roleColor.copy(alpha = 0.15f)
        Rol.psicologo -> roleColor.copy(alpha = 0.15f)
        else -> roleColor.copy(alpha = if (isDark) 0.2f else 0.08f)
    }

    val roleLabel = when (user.rol) {
        Rol.admin -> "👑 Administrador"
        Rol.psicologo -> "🧠 Psicólogo"
        else -> "👤 Paciente"
    }

    val roleIcon = when (user.rol) {
        Rol.admin -> Icons.Default.AdminPanelSettings
        Rol.psicologo -> Icons.Default.Psychology
        else -> Icons.Default.Person
    }

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .shadow(2.dp, RoundedCornerShape(16.dp)),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(containerColor = cardBackground),
        elevation = CardDefaults.cardElevation(defaultElevation = 0.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(modifier = Modifier.weight(1f)) {
                // Nombre y rol en una fila
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    Icon(
                        roleIcon,
                        contentDescription = null,
                        tint = roleColor,
                        modifier = Modifier.size(28.dp)
                    )
                    Text(
                        text = "${user.nombre ?: ""} ${user.apellido ?: ""}".trim(),
                        fontSize = 16.sp,
                        fontWeight = FontWeight.Bold,
                        color = cardContent,
                        letterSpacing = 0.3.sp
                    )
                }

                Spacer(modifier = Modifier.height(6.dp))

                // Email
                Text(
                    text = user.email ?: "",
                    fontSize = 13.sp,
                    color = cardContent.copy(alpha = 0.85f)
                )

                // DNI si existe
                if (!user.dni.isNullOrEmpty()) {
                    Text(
                        text = "DNI: ${user.dni}",
                        fontSize = 12.sp,
                        color = cardContent.copy(alpha = 0.7f)
                    )
                }

                Spacer(modifier = Modifier.height(8.dp))

                // Badge de rol
                Surface(
                    shape = RoundedCornerShape(20.dp),
                    color = roleBgColor,
                    modifier = Modifier
                ) {
                    Text(
                        text = roleLabel,
                        fontSize = 11.sp,
                        fontWeight = FontWeight.Medium,
                        modifier = Modifier.padding(horizontal = 12.dp, vertical = 5.dp),
                        color = roleColor,
                        letterSpacing = 0.3.sp
                    )
                }
            }

            // Botón cambiar rol
            IconButton(
                onClick = onCambiarRol,
                modifier = Modifier.size(44.dp)
            ) {
                Icon(
                    Icons.Default.SwapHoriz,
                    contentDescription = "Cambiar rol",
                    modifier = Modifier.size(24.dp),
                    tint = primaryColor.copy(alpha = 0.8f)
                )
            }
        }
    }
}