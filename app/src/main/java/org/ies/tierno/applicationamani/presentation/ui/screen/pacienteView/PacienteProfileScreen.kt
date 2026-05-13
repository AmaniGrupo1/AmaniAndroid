package org.ies.tierno.applicationamani.presentation.screens.profile

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
import androidx.compose.ui.graphics.vector.ImageVector
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
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.dto.perfil.UsuarioUpdateDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.UpdatePacienteRequestDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.ui.theme.getCardColors
import org.ies.tierno.applicationamani.ui.theme.getScreenColors
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.paciente.ProfilePacienteViewModel
import org.koin.androidx.compose.koinViewModel
import org.koin.compose.koinInject
import org.koin.java.KoinJavaComponent.getKoin
import java.io.File
import java.io.FileOutputStream
import java.time.LocalDate
import java.time.format.DateTimeFormatter
import java.util.Locale
import androidx.compose.runtime.collectAsState

private const val TAG = "PacienteProfileScreen"
private const val BASE_URL = "http://192.168.1.175:8080"

// Colores originales para el modo DEFECTO
object PacienteProfileDefaultColors {
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
fun PacienteProfileScreen(
    pacienteId: Long,
    navController: NavController,
    viewModel: ProfilePacienteViewModel = koinViewModel()
) {
    val imageLoader = koinInject<coil.ImageLoader>()
    val roboto = FontFamily(Font(R.font.roboto_variablefont_wdth_wght))
    val context = LocalContext.current
    val scope = rememberCoroutineScope()

    // Obtener estado del tema
    val isDark = isDarkTheme()
    val screenColors = getScreenColors()
    val cardColors = getCardColors()

    // Determinar colores según el tema
    val colors = if (isDark) {
        PacienteProfileThemeColors(
            primary = Color.White,
            primaryLight = Color.White.copy(alpha = 0.7f),
            primaryDark = Color.DarkGray,
            secondary = Color.Gray,
            accent = cardColors.cardBackground,
            background = screenColors.background,
            surface = cardColors.cardBackground,
            textPrimary = cardColors.cardContent,
            textSecondary = cardColors.cardContent.copy(alpha = 0.7f),
            error = PacienteProfileDefaultColors.Error,
            success = PacienteProfileDefaultColors.Success,
            textFieldContainer = Color.DarkGray,
            textFieldText = Color.White,
            textFieldLabel = Color.White.copy(alpha = 0.8f),
            textFieldBorder = Color.White
        )
    } else {
        PacienteProfileThemeColors(
            primary = PacienteProfileDefaultColors.Primary,
            primaryLight = PacienteProfileDefaultColors.PrimaryLight,
            primaryDark = PacienteProfileDefaultColors.PrimaryDark,
            secondary = PacienteProfileDefaultColors.Secondary,
            accent = PacienteProfileDefaultColors.Accent,
            background = PacienteProfileDefaultColors.Background,
            surface = PacienteProfileDefaultColors.Surface,
            textPrimary = PacienteProfileDefaultColors.TextPrimary,
            textSecondary = PacienteProfileDefaultColors.TextSecondary,
            error = PacienteProfileDefaultColors.Error,
            success = PacienteProfileDefaultColors.Success,
            textFieldContainer = Color.White,
            textFieldText = Color.Black,
            textFieldLabel = PacienteProfileDefaultColors.Primary,
            textFieldBorder = PacienteProfileDefaultColors.Primary
        )
    }

    // Obtener el store de sesión para limpiar datos
    val userSessionDataStore: UserSessionDataStore = getKoin().get()

    val perfil by viewModel.perfil.collectAsStateWithLifecycle()
    val isLoading by viewModel.isLoading.collectAsStateWithLifecycle()
    val error by viewModel.error.collectAsStateWithLifecycle()
    val uploadStatus by viewModel.uploadStatus.collectAsStateWithLifecycle()

    val snackbarHostState = remember { SnackbarHostState() }
    var isEditing by remember { mutableStateOf(false) }
    var nombreEdit by remember { mutableStateOf("") }
    var apellidoEdit by remember { mutableStateOf("") }
    var emailEdit by remember { mutableStateOf("") }
    var telefonoEdit by remember { mutableStateOf("") }
    var fechaNacimientoEdit by remember { mutableStateOf("") }
    var generoEdit by remember { mutableStateOf("") }
    var refreshTrigger by remember { mutableStateOf(0L) }

    // Estado para controlar si se está redirigiendo al login
    var isRedirecting by remember { mutableStateOf(false) }

    // Opciones de género
    val generoOptions = listOf("Masculino", "Femenino", "Otro", "Prefiero no decirlo")
    var showGeneroDropdown by remember { mutableStateOf(false) }

    // Cargar perfil
    LaunchedEffect(pacienteId) {
        viewModel.fetchProfile(pacienteId)
    }

    // Sincronizar valores editables
    LaunchedEffect(perfil) {
        perfil?.let {
            nombreEdit = it.usuario?.nombre ?: ""
            apellidoEdit = it.usuario?.apellido ?: ""
            emailEdit = it.usuario?.email ?: ""
            telefonoEdit = it.telefono ?: ""
            fechaNacimientoEdit = it.fechaNacimiento?.toString() ?: ""
            generoEdit = it.genero ?: ""
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
            is ProfilePacienteViewModel.UploadStatus.Success -> {
                scope.launch {
                    snackbarHostState.showSnackbar("✅ Foto actualizada correctamente")
                }
                refreshTrigger = System.currentTimeMillis()
                viewModel.clearUpload()
            }
            is ProfilePacienteViewModel.UploadStatus.Error -> {
                scope.launch {
                    snackbarHostState.showSnackbar(
                        (uploadStatus as ProfilePacienteViewModel.UploadStatus.Error).message
                    )
                }
                viewModel.clearUpload()
            }
            else -> {}
        }
    }

    // Redirigir al login después de cambiar el email
    LaunchedEffect(isRedirecting) {
        if (isRedirecting) {
            delay(2500)
            userSessionDataStore.clearSession()
            navController.navigate(Screens.login.route) {
                popUpTo(0) { inclusive = true }
            }
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
            viewModel.uploadFoto(pacienteId, it, context)
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
            viewModel.uploadFoto(pacienteId, uri, context)
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

    val fullImageUrl = buildFullImageUrl(perfil?.usuario?.fotoPerfilUrl)

    // Función para convertir String a LocalDate
    fun parseLocalDate(dateString: String): LocalDate? {
        return try {
            LocalDate.parse(dateString)
        } catch (e: Exception) {
            null
        }
    }

    // Función para formatear LocalDate a String
    fun formatFecha(fecha: LocalDate?): String {
        if (fecha == null) return "No especificada"
        return try {
            fecha.format(
                DateTimeFormatter.ofPattern("dd 'de' MMMM 'de' yyyy", Locale("es", "ES"))
            )
        } catch (e: Exception) {
            fecha.toString()
        }
    }

    // Verificar si el email ha cambiado
    fun emailHasChanged(): Boolean {
        val emailOriginal = perfil?.usuario?.email ?: ""
        val emailNuevo = emailEdit.trim()
        return emailOriginal != emailNuevo && emailNuevo.isNotBlank()
    }

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
                                    text = "${perfil!!.usuario?.nombre ?: ""} ${perfil!!.usuario?.apellido ?: ""}".trim(),
                                    fontSize = 22.sp,
                                    fontWeight = FontWeight.Bold,
                                    color = colors.textPrimary,
                                    fontFamily = roboto,
                                    modifier = Modifier.padding(top = 16.dp)
                                )

                                Text(
                                    text = perfil!!.usuario?.email ?: "Email no disponible",
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

                                    Spacer(modifier = Modifier.height(12.dp))

                                    OutlinedTextField(
                                        value = telefonoEdit,
                                        onValueChange = { telefonoEdit = it },
                                        label = { Text("Teléfono", color = colors.textSecondary, fontFamily = roboto) },
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
                                        value = fechaNacimientoEdit,
                                        onValueChange = { fechaNacimientoEdit = it },
                                        label = { Text("Fecha de nacimiento (YYYY-MM-DD)", color = colors.textSecondary, fontFamily = roboto) },
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

                                    // Dropdown para género
                                    ExposedDropdownMenuBox(
                                        expanded = showGeneroDropdown,
                                        onExpandedChange = { showGeneroDropdown = it }
                                    ) {
                                        OutlinedTextField(
                                            value = generoEdit,
                                            onValueChange = {},
                                            readOnly = true,
                                            label = { Text("Género", color = colors.textSecondary, fontFamily = roboto) },
                                            trailingIcon = {
                                                ExposedDropdownMenuDefaults.TrailingIcon(expanded = showGeneroDropdown)
                                            },
                                            modifier = Modifier
                                                .fillMaxWidth()
                                                .menuAnchor(),
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
                                        ExposedDropdownMenu(
                                            expanded = showGeneroDropdown,
                                            onDismissRequest = { showGeneroDropdown = false }
                                        ) {
                                            generoOptions.forEach { opcion ->
                                                DropdownMenuItem(
                                                    text = { Text(opcion, color = colors.textPrimary, fontFamily = roboto) },
                                                    onClick = {
                                                        generoEdit = opcion
                                                        showGeneroDropdown = false
                                                    }
                                                )
                                            }
                                        }
                                    }

                                    Spacer(modifier = Modifier.height(24.dp))

                                    Row(
                                        modifier = Modifier.fillMaxWidth(),
                                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                                    ) {
                                        Button(
                                            onClick = {
                                                val emailCambiado = emailHasChanged()
                                                val updateDto = UpdatePacienteRequestDTO(
                                                    telefono = telefonoEdit.ifBlank { null },
                                                    genero = generoEdit.ifBlank { null },
                                                    fechaNacimiento = parseLocalDate(fechaNacimientoEdit),
                                                    usuario = UsuarioUpdateDTO(
                                                        nombre = nombreEdit.ifBlank { null },
                                                        apellido = apellidoEdit.ifBlank { null },
                                                        email = emailEdit.ifBlank { null }
                                                    )
                                                )

                                                viewModel.updateProfile(pacienteId, updateDto) { success ->
                                                    if (success) {
                                                        isEditing = false
                                                        if (emailCambiado) {
                                                            scope.launch {
                                                                snackbarHostState.showSnackbar(
                                                                    message = "✅ Correo electrónico actualizado correctamente. Serás redirigido al inicio de sesión.",
                                                                    duration = SnackbarDuration.Long
                                                                )
                                                            }
                                                            isRedirecting = true
                                                        } else {
                                                            scope.launch {
                                                                snackbarHostState.showSnackbar(
                                                                    message = "✅ Perfil actualizado correctamente",
                                                                    duration = SnackbarDuration.Short
                                                                )
                                                            }
                                                        }
                                                    } else {
                                                        scope.launch {
                                                            snackbarHostState.showSnackbar(
                                                                message = "❌ Error al actualizar el perfil",
                                                                duration = SnackbarDuration.Short
                                                            )
                                                        }
                                                    }
                                                }
                                            },
                                            modifier = Modifier.weight(1f).height(48.dp),
                                            colors = ButtonDefaults.buttonColors(
                                                containerColor = colors.primary
                                            ),
                                            shape = RoundedCornerShape(14.dp),
                                            elevation = ButtonDefaults.buttonElevation(4.dp)
                                        ) {
                                            if (viewModel.isLoading.collectAsState().value) {
                                                CircularProgressIndicator(
                                                    modifier = Modifier.size(20.dp),
                                                    color = if (isDark) Color.Black else Color.White,
                                                    strokeWidth = 2.dp
                                                )
                                            } else {
                                                Row {
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
                                            }
                                        }

                                        OutlinedButton(
                                            onClick = {
                                                isEditing = false
                                                perfil?.let {
                                                    nombreEdit = it.usuario?.nombre ?: ""
                                                    apellidoEdit = it.usuario?.apellido ?: ""
                                                    emailEdit = it.usuario?.email ?: ""
                                                    telefonoEdit = it.telefono ?: ""
                                                    fechaNacimientoEdit = it.fechaNacimiento?.toString() ?: ""
                                                    generoEdit = it.genero ?: ""
                                                }
                                            },
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
                                    InfoRowPaciente(
                                        icon = Icons.Default.Person,
                                        label = "Nombre completo",
                                        value = "${perfil!!.usuario?.nombre ?: ""} ${perfil!!.usuario?.apellido ?: ""}".trim(),
                                        colors = colors,
                                        roboto = roboto
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    InfoRowPaciente(
                                        icon = Icons.Default.Email,
                                        label = "Correo electrónico",
                                        value = perfil!!.usuario?.email ?: "No especificado",
                                        colors = colors,
                                        roboto = roboto
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    InfoRowPaciente(
                                        icon = Icons.Default.Phone,
                                        label = "Teléfono",
                                        value = perfil!!.telefono ?: "No especificado",
                                        colors = colors,
                                        roboto = roboto
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    InfoRowPaciente(
                                        icon = Icons.Default.Cake,
                                        label = "Fecha de nacimiento",
                                        value = formatFecha(perfil!!.fechaNacimiento),
                                        colors = colors,
                                        roboto = roboto
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    InfoRowPaciente(
                                        icon = Icons.Default.Face,
                                        label = "Género",
                                        value = perfil!!.genero ?: "No especificado",
                                        colors = colors,
                                        roboto = roboto
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    InfoRowPaciente(
                                        icon = Icons.Default.Badge,
                                        label = "ID de paciente",
                                        value = perfil!!.idPaciente?.toString() ?: "No disponible",
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
                                    text = "Tu bienestar es nuestra prioridad",
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
                    ErrorContentPaciente(
                        error = error!!,
                        onRetry = { viewModel.fetchProfile(pacienteId) },
                        colors = colors,
                        roboto = roboto,
                        isDark = isDark
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

    // Diálogo de redirección al login
    if (isRedirecting) {
        AlertDialog(
            onDismissRequest = { },
            containerColor = colors.surface,
            shape = RoundedCornerShape(24.dp),
            title = {
                Text(
                    text = "Correo actualizado",
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Bold,
                    color = colors.primary,
                    fontFamily = roboto
                )
            },
            text = {
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Icon(
                        Icons.Default.Email,
                        contentDescription = null,
                        modifier = Modifier.size(48.dp),
                        tint = colors.primary
                    )
                    Spacer(modifier = Modifier.height(12.dp))
                    Text(
                        text = "Tu correo electrónico ha sido actualizado correctamente.",
                        fontSize = 14.sp,
                        color = colors.textPrimary,
                        textAlign = TextAlign.Center,
                        fontFamily = roboto
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "Serás redirigido al inicio de sesión para que ingreses con tu nuevo correo.",
                        fontSize = 12.sp,
                        color = colors.textSecondary,
                        textAlign = TextAlign.Center,
                        fontFamily = roboto
                    )
                }
            },
            confirmButton = {
                Button(
                    onClick = { },
                    modifier = Modifier.fillMaxWidth(),
                    colors = ButtonDefaults.buttonColors(containerColor = colors.primary),
                    shape = RoundedCornerShape(12.dp),
                    enabled = false
                ) {
                    Row(
                        horizontalArrangement = Arrangement.Center,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(16.dp),
                            color = if (isDark) Color.Black else Color.White,
                            strokeWidth = 2.dp
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(
                            "Redirigiendo...",
                            fontSize = 14.sp,
                            fontFamily = roboto,
                            color = if (isDark) Color.Black else Color.White
                        )
                    }
                }
            }
        )
    }

    // Mostrar loading overlay mientras sube la foto
    if (uploadStatus is ProfilePacienteViewModel.UploadStatus.Loading) {
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
fun InfoRowPaciente(
    icon: ImageVector,
    label: String,
    value: String,
    colors: PacienteProfileThemeColors,
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
fun ErrorContentPaciente(
    error: String,
    onRetry: () -> Unit,
    colors: PacienteProfileThemeColors,
    roboto: FontFamily,
    isDark: Boolean
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
                tint = if (isDark) Color.Black else Color.White
            )
            Spacer(modifier = Modifier.width(8.dp))
            Text(
                "Reintentar",
                fontFamily = roboto,
                color = if (isDark) Color.Black else Color.White
            )
        }
    }
}

// Clase auxiliar para los colores del tema
data class PacienteProfileThemeColors(
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