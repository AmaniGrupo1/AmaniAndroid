package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

import android.Manifest.permission.CAMERA
import android.content.pm.PackageManager.PERMISSION_GRANTED
import android.graphics.Bitmap
import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
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
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.content.ContextCompat
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import coil.compose.AsyncImage
import coil.request.ImageRequest
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.admin.ProfileAdminViewModel
import org.koin.androidx.compose.koinViewModel
import org.koin.compose.koinInject
import java.io.File
import java.io.FileOutputStream

private const val TAG = "AdminProfileScreen"
private const val BASE_URL = "http://192.168.1.175:8080"

// Colores originales para el modo DEFECTO (Amani)
object AdminProfileDefaultColors {
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
fun AdminProfileScreen(
    adminId: Long,
    navController: NavController,
    viewModel: ProfileAdminViewModel = koinViewModel()
) {
    val imageLoader = koinInject<coil.ImageLoader>()
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Determinar colores según el tema
    val colors = if (isDark) {
        // Modo NEGRO: fondo negro, texto blanco
        AdminProfileThemeColors(
            primary = Color.White,
            primaryLight = Color.White.copy(alpha = 0.7f),
            primaryDark = Color.DarkGray,
            secondary = Color.Gray,
            accent = cardColors.cardBackground,
            background = screenColors.background,
            surface = cardColors.cardBackground,
            textPrimary = cardColors.cardContent,
            textSecondary = cardColors.cardContent.copy(alpha = 0.7f),
            error = AdminProfileDefaultColors.Error,
            success = AdminProfileDefaultColors.Success,
            textFieldContainer = Color.DarkGray,
            textFieldText = Color.White,
            textFieldLabel = Color.White.copy(alpha = 0.8f),
            textFieldBorder = Color.White
        )
    } else {
        // Modo DEFECTO o BLANCO: colores originales de Amani
        AdminProfileThemeColors(
            primary = AdminProfileDefaultColors.Primary,
            primaryLight = AdminProfileDefaultColors.PrimaryLight,
            primaryDark = AdminProfileDefaultColors.PrimaryDark,
            secondary = AdminProfileDefaultColors.Secondary,
            accent = AdminProfileDefaultColors.Accent,
            background = AdminProfileDefaultColors.Background,
            surface = AdminProfileDefaultColors.Surface,
            textPrimary = AdminProfileDefaultColors.TextPrimary,
            textSecondary = AdminProfileDefaultColors.TextSecondary,
            error = AdminProfileDefaultColors.Error,
            success = AdminProfileDefaultColors.Success,
            textFieldContainer = Color.White,
            textFieldText = Color.Black,
            textFieldLabel = AdminProfileDefaultColors.Primary,
            textFieldBorder = AdminProfileDefaultColors.Primary
        )
    }

    val perfil by viewModel.perfil.collectAsStateWithLifecycle()
    val isLoading by viewModel.isLoading.collectAsStateWithLifecycle()
    val error by viewModel.error.collectAsStateWithLifecycle()
    val uploadStatus by viewModel.uploadStatus.collectAsStateWithLifecycle()

    val snackbarHostState = remember { SnackbarHostState() }
    var isEditing by remember { mutableStateOf(false) }
    var nombreEdit by remember { mutableStateOf("") }
    var apellidoEdit by remember { mutableStateOf("") }
    var emailEdit by remember { mutableStateOf("") }
    var refreshTrigger by remember { mutableStateOf(0L) }

    // Cargar perfil
    LaunchedEffect(adminId) {
        viewModel.fetchProfile(adminId)
    }

    // Sincronizar valores editables
    LaunchedEffect(perfil) {
        perfil?.let {
            nombreEdit = it.nombre
            apellidoEdit = it.apellido ?: ""
            emailEdit = it.email
        }
    }

    // Manejar errores
    LaunchedEffect(error) {
        error?.let {
            scope.launch {
                snackbarHostState.showSnackbar(it)
                viewModel.clearError()
            }
        }
    }

    // Manejar estado de subida de foto
    LaunchedEffect(uploadStatus) {
        when (uploadStatus) {
            is ProfileAdminViewModel.UploadStatus.Success -> {
                scope.launch {
                    snackbarHostState.showSnackbar("✅ Foto actualizada correctamente")
                }
                refreshTrigger = System.currentTimeMillis()
                viewModel.clearUpload()
            }
            is ProfileAdminViewModel.UploadStatus.Error -> {
                scope.launch {
                    snackbarHostState.showSnackbar(
                        (uploadStatus as ProfileAdminViewModel.UploadStatus.Error).message
                    )
                }
                viewModel.clearUpload()
            }
            else -> {}
        }
    }

    // ========== CÁMARA Y GALERÍA ==========
    var showImageOptions by remember { mutableStateOf(false) }
    var hasCameraPermission by remember {
        mutableStateOf(
            ContextCompat.checkSelfPermission(context, CAMERA) == PERMISSION_GRANTED
        )
    }

    val galleryLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        uri?.let {
            viewModel.uploadFoto(adminId, it, context)
        }
    }

    val cameraLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.TakePicturePreview()
    ) { bitmap: Bitmap? ->
        bitmap?.let {
            val tempFile = File(context.cacheDir, "camera_photo_${System.currentTimeMillis()}.jpg")
            FileOutputStream(tempFile).use { out ->
                it.compress(Bitmap.CompressFormat.JPEG, 90, out)
            }
            val uri = Uri.fromFile(tempFile)
            viewModel.uploadFoto(adminId, uri, context)
        }
    }

    val permissionLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.RequestPermission()
    ) { isGranted ->
        hasCameraPermission = isGranted
        if (isGranted) {
            cameraLauncher.launch(null)
        } else {
            scope.launch {
                snackbarHostState.showSnackbar("Permiso de cámara denegado")
            }
        }
    }

    fun buildFullImageUrl(relativeUrl: String?): String {
        if (relativeUrl.isNullOrEmpty()) return ""
        if (relativeUrl.startsWith("http://") || relativeUrl.startsWith("https://")) {
            return relativeUrl
        }
        return "${BASE_URL}${relativeUrl}"
    }

    val fullImageUrl = buildFullImageUrl(perfil?.fotoPerfilUrl)

    Scaffold(
        snackbarHost = { SnackbarHost(snackbarHostState) },
        containerColor = colors.background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "Mi Perfil",
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = if (isDark) Color.Black else Color.White,
                        fontFamily = roboto
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.Default.ArrowBack,
                            contentDescription = "Volver",
                            tint = if (isDark) Color.Black else Color.White
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = colors.primary
                )
            )
        }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .background(
                    brush = Brush.verticalGradient(
                        colors = if (isDark) {
                            listOf(colors.background, colors.background)
                        } else {
                            listOf(colors.accent, Color.White)
                        }
                    )
                )
        ) {
            when {
                isLoading && perfil == null -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        CircularProgressIndicator(color = colors.primary)
                    }
                }
                perfil != null -> {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .verticalScroll(rememberScrollState())
                            .padding(horizontal = 20.dp, vertical = 16.dp),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        // ========== SECCIÓN FOTO DE PERFIL ==========
                        Card(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(bottom = 24.dp),
                            shape = RoundedCornerShape(24.dp),
                            elevation = CardDefaults.cardElevation(8.dp),
                            colors = CardDefaults.cardColors(containerColor = colors.surface)
                        ) {
                            Column(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .padding(24.dp),
                                horizontalAlignment = Alignment.CenterHorizontally
                            ) {
                                Text(
                                    text = "Foto de Perfil",
                                    fontSize = 18.sp,
                                    fontWeight = FontWeight.SemiBold,
                                    color = colors.primary,
                                    fontFamily = roboto,
                                    modifier = Modifier.padding(bottom = 16.dp)
                                )

                                Box(
                                    modifier = Modifier.size(130.dp),
                                    contentAlignment = Alignment.BottomEnd
                                ) {
                                    val imageUrl = if (fullImageUrl.isEmpty()) {
                                        R.drawable.ic_default_avatar
                                    } else {
                                        "$fullImageUrl?t=$refreshTrigger"
                                    }

                                    AsyncImage(
                                        model = ImageRequest.Builder(context)
                                            .data(imageUrl)
                                            .crossfade(true)
                                            .error(R.drawable.ic_default_avatar)
                                            .placeholder(R.drawable.ic_default_avatar)
                                            .build(),
                                        imageLoader = imageLoader,
                                        contentDescription = "Foto de perfil",
                                        modifier = Modifier
                                            .fillMaxSize()
                                            .clip(CircleShape)
                                            .border(
                                                BorderStroke(3.dp, colors.primary),
                                                CircleShape
                                            ),
                                        contentScale = ContentScale.Crop
                                    )

                                    FloatingActionButton(
                                        onClick = { showImageOptions = true },
                                        modifier = Modifier.size(40.dp),
                                        containerColor = colors.primary,
                                        contentColor = if (isDark) Color.Black else Color.White,
                                        shape = CircleShape,
                                        elevation = FloatingActionButtonDefaults.elevation(4.dp)
                                    ) {
                                        Icon(
                                            Icons.Default.CameraAlt,
                                            contentDescription = "Cambiar foto",
                                            modifier = Modifier.size(20.dp)
                                        )
                                    }
                                }

                                Text(
                                    text = "${perfil!!.nombre} ${perfil!!.apellido ?: ""}",
                                    fontSize = 22.sp,
                                    fontWeight = FontWeight.Bold,
                                    color = colors.textPrimary,
                                    fontFamily = roboto,
                                    modifier = Modifier.padding(top = 16.dp)
                                )

                                Text(
                                    text = perfil!!.email,
                                    fontSize = 14.sp,
                                    color = colors.textSecondary,
                                    fontFamily = roboto
                                )
                            }
                        }

                        // ========== SECCIÓN INFORMACIÓN PERSONAL ==========
                        Card(
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(24.dp),
                            elevation = CardDefaults.cardElevation(8.dp),
                            colors = CardDefaults.cardColors(containerColor = colors.surface)
                        ) {
                            Column(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .padding(24.dp)
                            ) {
                                Row(
                                    modifier = Modifier.fillMaxWidth(),
                                    horizontalArrangement = Arrangement.SpaceBetween,
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Text(
                                        text = "Información Personal",
                                        fontSize = 18.sp,
                                        fontWeight = FontWeight.SemiBold,
                                        color = colors.primary,
                                        fontFamily = roboto
                                    )
                                    if (!isEditing) {
                                        TextButton(
                                            onClick = { isEditing = true },
                                            colors = ButtonDefaults.textButtonColors(
                                                contentColor = colors.primary
                                            )
                                        ) {
                                            Icon(
                                                Icons.Default.Edit,
                                                contentDescription = "Editar",
                                                modifier = Modifier.size(18.dp),
                                                tint = colors.primary
                                            )
                                            Spacer(modifier = Modifier.width(6.dp))
                                            Text("Editar", fontSize = 14.sp, fontFamily = roboto)
                                        }
                                    }
                                }

                                Spacer(modifier = Modifier.height(20.dp))

                                if (isEditing) {
                                    // Modo edición
                                    OutlinedTextField(
                                        value = nombreEdit,
                                        onValueChange = { nombreEdit = it },
                                        label = { Text("Nombre", color = colors.textSecondary, fontFamily = roboto) },
                                        modifier = Modifier.fillMaxWidth(),
                                        singleLine = true,
                                        shape = RoundedCornerShape(14.dp),
                                        colors = OutlinedTextFieldDefaults.colors(
                                            focusedTextColor = colors.textFieldText,
                                            unfocusedTextColor = colors.textFieldText,
                                            focusedBorderColor = colors.primary,
                                            unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.3f),
                                            focusedLabelColor = colors.primary,
                                            unfocusedLabelColor = colors.textSecondary,
                                            cursorColor = colors.primary,
                                            focusedContainerColor = colors.textFieldContainer,
                                            unfocusedContainerColor = colors.textFieldContainer
                                        )
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    OutlinedTextField(
                                        value = apellidoEdit,
                                        onValueChange = { apellidoEdit = it },
                                        label = { Text("Apellido (opcional)", color = colors.textSecondary, fontFamily = roboto) },
                                        modifier = Modifier.fillMaxWidth(),
                                        singleLine = true,
                                        shape = RoundedCornerShape(14.dp),
                                        colors = OutlinedTextFieldDefaults.colors(
                                            focusedTextColor = colors.textFieldText,
                                            unfocusedTextColor = colors.textFieldText,
                                            focusedBorderColor = colors.primary,
                                            unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.3f),
                                            focusedLabelColor = colors.primary,
                                            unfocusedLabelColor = colors.textSecondary,
                                            cursorColor = colors.primary,
                                            focusedContainerColor = colors.textFieldContainer,
                                            unfocusedContainerColor = colors.textFieldContainer
                                        )
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    OutlinedTextField(
                                        value = emailEdit,
                                        onValueChange = { emailEdit = it },
                                        label = { Text("Correo electrónico", color = colors.textSecondary, fontFamily = roboto) },
                                        modifier = Modifier.fillMaxWidth(),
                                        singleLine = true,
                                        shape = RoundedCornerShape(14.dp),
                                        colors = OutlinedTextFieldDefaults.colors(
                                            focusedTextColor = colors.textFieldText,
                                            unfocusedTextColor = colors.textFieldText,
                                            focusedBorderColor = colors.primary,
                                            unfocusedBorderColor = colors.textSecondary.copy(alpha = 0.3f),
                                            focusedLabelColor = colors.primary,
                                            unfocusedLabelColor = colors.textSecondary,
                                            cursorColor = colors.primary,
                                            focusedContainerColor = colors.textFieldContainer,
                                            unfocusedContainerColor = colors.textFieldContainer
                                        )
                                    )

                                    Spacer(modifier = Modifier.height(20.dp))

                                    Row(
                                        modifier = Modifier.fillMaxWidth(),
                                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                                    ) {
                                        Button(
                                            onClick = {
                                                val updateDto = org.ies.tierno.applicationamani.dto.perfil.admin.UpdateAdminRequestDTO(
                                                    nombre = nombreEdit.ifBlank { null },
                                                    apellido = apellidoEdit.ifBlank { null },
                                                    email = emailEdit.ifBlank { null }
                                                )
                                                viewModel.updateProfile(adminId, updateDto)
                                                isEditing = false
                                            },
                                            modifier = Modifier.weight(1f).height(48.dp),
                                            colors = ButtonDefaults.buttonColors(
                                                containerColor = colors.primary
                                            ),
                                            shape = RoundedCornerShape(14.dp),
                                            elevation = ButtonDefaults.buttonElevation(4.dp)
                                        ) {
                                            Icon(
                                                Icons.Default.Save,
                                                contentDescription = "Guardar",
                                                modifier = Modifier.size(18.dp),
                                                tint = if (isDark) Color.Black else Color.White
                                            )
                                            Spacer(modifier = Modifier.width(6.dp))
                                            Text(
                                                "Guardar",
                                                fontSize = 14.sp,
                                                fontWeight = FontWeight.Medium,
                                                fontFamily = roboto,
                                                color = if (isDark) Color.Black else Color.White
                                            )
                                        }

                                        OutlinedButton(
                                            onClick = { isEditing = false },
                                            modifier = Modifier.weight(1f).height(48.dp),
                                            colors = ButtonDefaults.outlinedButtonColors(
                                                contentColor = colors.textSecondary
                                            ),
                                            shape = RoundedCornerShape(14.dp)
                                        ) {
                                            Text("Cancelar", fontSize = 14.sp, fontFamily = roboto)
                                        }
                                    }
                                } else {
                                    // Modo visualización
                                    InfoRowAdmin(
                                        icon = Icons.Default.Person,
                                        label = "Nombre completo",
                                        value = "${perfil!!.nombre} ${perfil!!.apellido ?: ""}".trim(),
                                        colors = colors,
                                        roboto = roboto
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    InfoRowAdmin(
                                        icon = Icons.Default.Email,
                                        label = "Correo electrónico",
                                        value = perfil!!.email,
                                        colors = colors,
                                        roboto = roboto
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    InfoRowAdmin(
                                        icon = Icons.Default.Badge,
                                        label = "Rol",
                                        value = "Administrador",
                                        colors = colors,
                                        roboto = roboto
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    InfoRowAdmin(
                                        icon = Icons.Default.Lock,
                                        label = "ID de usuario",
                                        value = perfil!!.idUsuario.toString(),
                                        colors = colors,
                                        roboto = roboto
                                    )
                                }
                            }
                        }

                        Spacer(modifier = Modifier.height(16.dp))

                        // ========== SECCIÓN INFORMACIÓN DEL SISTEMA ==========
                        Card(
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(24.dp),
                            elevation = CardDefaults.cardElevation(4.dp),
                            colors = CardDefaults.cardColors(
                                containerColor = colors.primaryLight.copy(alpha = 0.1f)
                            )
                        ) {
                            Column(
                                modifier = Modifier.padding(20.dp),
                                horizontalAlignment = Alignment.CenterHorizontally
                            ) {
                                Text(
                                    text = "💜 AMANI Psicología",
                                    fontSize = 14.sp,
                                    fontWeight = FontWeight.Bold,
                                    color = colors.primary,
                                    fontFamily = roboto
                                )
                                Spacer(modifier = Modifier.height(8.dp))
                                Text(
                                    text = "Plataforma de gestión terapéutica",
                                    fontSize = 12.sp,
                                    color = colors.textSecondary,
                                    textAlign = TextAlign.Center,
                                    fontFamily = roboto
                                )
                                Spacer(modifier = Modifier.height(12.dp))
                                Text(
                                    text = "Versión 1.0.0",
                                    fontSize = 11.sp,
                                    color = colors.textSecondary,
                                    fontFamily = roboto
                                )
                            }
                        }

                        Spacer(modifier = Modifier.height(80.dp))
                    }
                }
                error != null -> {
                    ErrorContentAdmin(
                        error = error!!,
                        onRetry = { viewModel.fetchProfile(adminId) },
                        colors = colors,
                        roboto = roboto
                    )
                }
            }
        }
    }

    // ========== DIÁLOGO PARA SELECCIONAR ORIGEN DE LA FOTO ==========
    if (showImageOptions) {
        AlertDialog(
            onDismissRequest = { showImageOptions = false },
            containerColor = colors.surface,
            shape = RoundedCornerShape(24.dp),
            title = {
                Text(
                    text = "Cambiar foto de perfil",
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Bold,
                    color = colors.textPrimary,
                    fontFamily = roboto
                )
            },
            text = {
                Text(
                    text = "Selecciona una opción para obtener la imagen",
                    fontSize = 14.sp,
                    color = colors.textSecondary,
                    fontFamily = roboto
                )
            },
            confirmButton = {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    Button(
                        onClick = {
                            showImageOptions = false
                            if (hasCameraPermission) {
                                cameraLauncher.launch(null)
                            } else {
                                permissionLauncher.launch(CAMERA)
                            }
                        },
                        modifier = Modifier.weight(1f),
                        colors = ButtonDefaults.buttonColors(containerColor = colors.primary),
                        shape = RoundedCornerShape(12.dp)
                    ) {
                        Icon(
                            Icons.Default.CameraAlt,
                            contentDescription = "Cámara",
                            modifier = Modifier.size(16.dp),
                            tint = if (isDark) Color.Black else Color.White
                        )
                        Spacer(modifier = Modifier.width(6.dp))
                        Text(
                            "Cámara",
                            fontSize = 12.sp,
                            fontFamily = roboto,
                            color = if (isDark) Color.Black else Color.White
                        )
                    }
                    Button(
                        onClick = {
                            showImageOptions = false
                            galleryLauncher.launch("image/*")
                        },
                        modifier = Modifier.weight(1f),
                        colors = ButtonDefaults.buttonColors(containerColor = colors.primaryLight),
                        shape = RoundedCornerShape(12.dp)
                    ) {
                        Icon(
                            Icons.Default.PhotoLibrary,
                            contentDescription = "Galería",
                            modifier = Modifier.size(16.dp),
                            tint = if (isDark) Color.Black else Color.White
                        )
                        Spacer(modifier = Modifier.width(6.dp))
                        Text(
                            "Galería",
                            fontSize = 12.sp,
                            fontFamily = roboto,
                            color = if (isDark) Color.Black else Color.White
                        )
                    }
                }
            },
            dismissButton = {
                TextButton(onClick = { showImageOptions = false }) {
                    Text("Cancelar", color = colors.textSecondary, fontFamily = roboto)
                }
            }
        )
    }

    // Mostrar loading overlay mientras sube la foto
    if (uploadStatus is ProfileAdminViewModel.UploadStatus.Loading) {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(Color.Black.copy(alpha = 0.5f))
                .clickable(enabled = false) { },
            contentAlignment = Alignment.Center
        ) {
            Card(
                shape = RoundedCornerShape(16.dp),
                colors = CardDefaults.cardColors(containerColor = colors.surface)
            ) {
                Column(
                    modifier = Modifier.padding(24.dp),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    CircularProgressIndicator(color = colors.primary)
                    Spacer(modifier = Modifier.height(12.dp))
                    Text(
                        text = "Subiendo foto...",
                        fontSize = 14.sp,
                        color = colors.textPrimary,
                        fontFamily = roboto
                    )
                }
            }
        }
    }
}

@Composable
fun InfoRowAdmin(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    label: String,
    value: String,
    colors: AdminProfileThemeColors,
    roboto: FontFamily
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.Top
    ) {
        Icon(
            icon,
            contentDescription = null,
            modifier = Modifier.size(20.dp),
            tint = colors.primary
        )
        Spacer(modifier = Modifier.width(14.dp))
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = label,
                fontSize = 12.sp,
                color = colors.textSecondary,
                fontFamily = roboto
            )
            Text(
                text = value.ifEmpty { "No especificado" },
                fontSize = 15.sp,
                fontWeight = FontWeight.Medium,
                color = colors.textPrimary,
                fontFamily = roboto
            )
        }
    }
}

@Composable
fun ErrorContentAdmin(
    error: String,
    onRetry: () -> Unit,
    colors: AdminProfileThemeColors,
    roboto: FontFamily
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(
            imageVector = Icons.Default.Error,
            contentDescription = null,
            modifier = Modifier.size(64.dp),
            tint = colors.error
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(
            text = "Error al cargar el perfil",
            fontSize = 18.sp,
            fontWeight = FontWeight.Bold,
            color = colors.textPrimary,
            fontFamily = roboto
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(
            text = error,
            fontSize = 14.sp,
            color = colors.textSecondary,
            textAlign = TextAlign.Center,
            fontFamily = roboto
        )
        Spacer(modifier = Modifier.height(24.dp))
        Button(
            onClick = onRetry,
            colors = ButtonDefaults.buttonColors(containerColor = colors.primary),
            shape = RoundedCornerShape(12.dp)
        ) {
            Icon(
                Icons.Default.Refresh,
                contentDescription = null,
                tint = if (isDarkTheme()) Color.Black else Color.White
            )
            Spacer(modifier = Modifier.width(8.dp))
            Text(
                "Reintentar",
                fontFamily = roboto,
                color = if (isDarkTheme()) Color.Black else Color.White
            )
        }
    }
}

// Clase auxiliar para los colores del tema
data class AdminProfileThemeColors(
    val primary: Color,
    val primaryLight: Color,
    val primaryDark: Color,
    val secondary: Color,
    val accent: Color,
    val background: Color,
    val surface: Color,
    val textPrimary: Color,
    val textSecondary: Color,
    val error: Color,
    val success: Color,
    val textFieldContainer: Color,
    val textFieldText: Color,
    val textFieldLabel: Color,
    val textFieldBorder: Color
)