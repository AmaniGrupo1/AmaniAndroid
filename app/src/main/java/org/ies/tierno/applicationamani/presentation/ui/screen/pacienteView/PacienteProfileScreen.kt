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
import org.ies.tierno.applicationamani.presentation.ui.screen.AmaniLoginColors
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

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PacienteProfileScreen(
    pacienteId: Long,
    navController: NavController,
    viewModel: ProfilePacienteViewModel = koinViewModel()
) {
    val imageLoader = koinInject<coil.ImageLoader>()
    val colors = AmaniLoginColors
    val context = LocalContext.current
    val scope = rememberCoroutineScope()

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
        containerColor = colors.Background,
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = "Mi Perfil",
                        fontSize = 20.sp,
                        fontWeight = FontWeight.SemiBold,
                        color = Color.White
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Volver", tint = Color.White)
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = colors.Primary
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
                        colors = listOf(colors.Accent, Color.White)
                    )
                )
        ) {
            when {
                isLoading && perfil == null -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        CircularProgressIndicator(color = colors.Primary)
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
                            colors = CardDefaults.cardColors(containerColor = colors.Surface)
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
                                    color = colors.Primary,
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
                                                BorderStroke(3.dp, colors.Primary),
                                                CircleShape
                                            ),
                                        contentScale = ContentScale.Crop
                                    )

                                    FloatingActionButton(
                                        onClick = { showImageOptions = true },
                                        modifier = Modifier.size(40.dp),
                                        containerColor = colors.Primary,
                                        contentColor = Color.White,
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
                                    color = colors.TextPrimary,
                                    modifier = Modifier.padding(top = 16.dp)
                                )

                                Text(
                                    text = perfil!!.usuario?.email ?: "Email no disponible",
                                    fontSize = 14.sp,
                                    color = colors.TextSecondary
                                )
                            }
                        }

                        // ========== SECCIÓN INFORMACIÓN PERSONAL ==========
                        Card(
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(24.dp),
                            elevation = CardDefaults.cardElevation(8.dp),
                            colors = CardDefaults.cardColors(containerColor = colors.Surface)
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
                                        color = colors.Primary
                                    )
                                    if (!isEditing) {
                                        TextButton(
                                            onClick = { isEditing = true },
                                            colors = ButtonDefaults.textButtonColors(
                                                contentColor = colors.Primary
                                            )
                                        ) {
                                            Icon(
                                                Icons.Default.Edit,
                                                contentDescription = "Editar",
                                                modifier = Modifier.size(18.dp)
                                            )
                                            Spacer(modifier = Modifier.width(6.dp))
                                            Text("Editar", fontSize = 14.sp)
                                        }
                                    }
                                }

                                Spacer(modifier = Modifier.height(20.dp))

                                if (isEditing) {
                                    // Modo edición
                                    OutlinedTextField(
                                        value = nombreEdit,
                                        onValueChange = { nombreEdit = it },
                                        label = { Text("Nombre", color = colors.TextSecondary) },
                                        modifier = Modifier.fillMaxWidth(),
                                        singleLine = true,
                                        shape = RoundedCornerShape(14.dp),
                                        colors = OutlinedTextFieldDefaults.colors(
                                            focusedTextColor = colors.TextPrimary,
                                            unfocusedTextColor = colors.TextPrimary,
                                            focusedBorderColor = colors.Primary,
                                            unfocusedBorderColor = colors.TextSecondary.copy(alpha = 0.3f),
                                            focusedLabelColor = colors.Primary,
                                            unfocusedLabelColor = colors.TextSecondary,
                                            cursorColor = colors.Primary
                                        )
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    OutlinedTextField(
                                        value = apellidoEdit,
                                        onValueChange = { apellidoEdit = it },
                                        label = { Text("Apellido (opcional)", color = colors.TextSecondary) },
                                        modifier = Modifier.fillMaxWidth(),
                                        singleLine = true,
                                        shape = RoundedCornerShape(14.dp),
                                        colors = OutlinedTextFieldDefaults.colors(
                                            focusedTextColor = colors.TextPrimary,
                                            unfocusedTextColor = colors.TextPrimary,
                                            focusedBorderColor = colors.Primary,
                                            unfocusedBorderColor = colors.TextSecondary.copy(alpha = 0.3f),
                                            focusedLabelColor = colors.Primary,
                                            unfocusedLabelColor = colors.TextSecondary,
                                            cursorColor = colors.Primary
                                        )
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    OutlinedTextField(
                                        value = emailEdit,
                                        onValueChange = { emailEdit = it },
                                        label = { Text("Correo electrónico", color = colors.TextSecondary) },
                                        modifier = Modifier.fillMaxWidth(),
                                        singleLine = true,
                                        shape = RoundedCornerShape(14.dp),
                                        colors = OutlinedTextFieldDefaults.colors(
                                            focusedTextColor = colors.TextPrimary,
                                            unfocusedTextColor = colors.TextPrimary,
                                            focusedBorderColor = colors.Primary,
                                            unfocusedBorderColor = colors.TextSecondary.copy(alpha = 0.3f),
                                            focusedLabelColor = colors.Primary,
                                            unfocusedLabelColor = colors.TextSecondary,
                                            cursorColor = colors.Primary
                                        )
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    OutlinedTextField(
                                        value = telefonoEdit,
                                        onValueChange = { telefonoEdit = it },
                                        label = { Text("Teléfono", color = colors.TextSecondary) },
                                        modifier = Modifier.fillMaxWidth(),
                                        singleLine = true,
                                        shape = RoundedCornerShape(14.dp),
                                        colors = OutlinedTextFieldDefaults.colors(
                                            focusedTextColor = colors.TextPrimary,
                                            unfocusedTextColor = colors.TextPrimary,
                                            focusedBorderColor = colors.Primary,
                                            unfocusedBorderColor = colors.TextSecondary.copy(alpha = 0.3f),
                                            focusedLabelColor = colors.Primary,
                                            unfocusedLabelColor = colors.TextSecondary,
                                            cursorColor = colors.Primary
                                        )
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    OutlinedTextField(
                                        value = fechaNacimientoEdit,
                                        onValueChange = { fechaNacimientoEdit = it },
                                        label = { Text("Fecha de nacimiento (YYYY-MM-DD)", color = colors.TextSecondary) },
                                        modifier = Modifier.fillMaxWidth(),
                                        singleLine = true,
                                        shape = RoundedCornerShape(14.dp),
                                        colors = OutlinedTextFieldDefaults.colors(
                                            focusedTextColor = colors.TextPrimary,
                                            unfocusedTextColor = colors.TextPrimary,
                                            focusedBorderColor = colors.Primary,
                                            unfocusedBorderColor = colors.TextSecondary.copy(alpha = 0.3f),
                                            focusedLabelColor = colors.Primary,
                                            unfocusedLabelColor = colors.TextSecondary,
                                            cursorColor = colors.Primary
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
                                            label = { Text("Género", color = colors.TextSecondary) },
                                            trailingIcon = {
                                                ExposedDropdownMenuDefaults.TrailingIcon(expanded = showGeneroDropdown)
                                            },
                                            modifier = Modifier
                                                .fillMaxWidth()
                                                .menuAnchor(),
                                            shape = RoundedCornerShape(14.dp),
                                            colors = OutlinedTextFieldDefaults.colors(
                                                focusedTextColor = colors.TextPrimary,
                                                unfocusedTextColor = colors.TextPrimary,
                                                focusedBorderColor = colors.Primary,
                                                unfocusedBorderColor = colors.TextSecondary.copy(alpha = 0.3f),
                                                focusedLabelColor = colors.Primary,
                                                unfocusedLabelColor = colors.TextSecondary,
                                                cursorColor = colors.Primary
                                            )
                                        )
                                        ExposedDropdownMenu(
                                            expanded = showGeneroDropdown,
                                            onDismissRequest = { showGeneroDropdown = false }
                                        ) {
                                            generoOptions.forEach { opcion ->
                                                DropdownMenuItem(
                                                    text = { Text(opcion, color = colors.TextPrimary) },
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

                                                // Mostrar loading mientras se actualiza
                                                viewModel.updateProfile(pacienteId, updateDto) { success ->
                                                    if (success) {
                                                        isEditing = false
                                                        if (emailCambiado) {
                                                            // Mostrar mensaje de correo actualizado
                                                            scope.launch {
                                                                snackbarHostState.showSnackbar(
                                                                    message = "✅ Correo electrónico actualizado correctamente. Serás redirigido al inicio de sesión.",
                                                                    duration = SnackbarDuration.Long
                                                                )
                                                            }
                                                            // Activar redirección al login
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
                                                containerColor = colors.Primary
                                            ),
                                            shape = RoundedCornerShape(14.dp),
                                            elevation = ButtonDefaults.buttonElevation(4.dp)
                                        ) {
                                            if (viewModel.isLoading.collectAsState().value) {
                                                CircularProgressIndicator(
                                                    modifier = Modifier.size(20.dp),
                                                    color = Color.White,
                                                    strokeWidth = 2.dp
                                                )
                                            } else {
                                                Row {
                                                    Icon(
                                                        Icons.Default.Save,
                                                        contentDescription = "Guardar",
                                                        modifier = Modifier.size(18.dp),
                                                        tint = Color.White
                                                    )
                                                    Spacer(modifier = Modifier.width(6.dp))
                                                    Text("Guardar", fontSize = 14.sp, fontWeight = FontWeight.Medium)
                                                }
                                            }
                                        }

                                        OutlinedButton(
                                            onClick = {
                                                isEditing = false
                                                // Restaurar valores originales
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
                                                contentColor = colors.TextSecondary
                                            ),
                                            shape = RoundedCornerShape(14.dp)
                                        ) {
                                            Text("Cancelar", fontSize = 14.sp)
                                        }
                                    }
                                } else {
                                    // Modo visualización
                                    InfoRowPaciente(
                                        icon = Icons.Default.Person,
                                        label = "Nombre completo",
                                        value = "${perfil!!.usuario?.nombre ?: ""} ${perfil!!.usuario?.apellido ?: ""}".trim(),
                                        colors = colors
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    InfoRowPaciente(
                                        icon = Icons.Default.Email,
                                        label = "Correo electrónico",
                                        value = perfil!!.usuario?.email ?: "No especificado",
                                        colors = colors
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    InfoRowPaciente(
                                        icon = Icons.Default.Phone,
                                        label = "Teléfono",
                                        value = perfil!!.telefono ?: "No especificado",
                                        colors = colors
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    InfoRowPaciente(
                                        icon = Icons.Default.Cake,
                                        label = "Fecha de nacimiento",
                                        value = formatFecha(perfil!!.fechaNacimiento),
                                        colors = colors
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    InfoRowPaciente(
                                        icon = Icons.Default.Face,
                                        label = "Género",
                                        value = perfil!!.genero ?: "No especificado",
                                        colors = colors
                                    )

                                    Spacer(modifier = Modifier.height(12.dp))

                                    InfoRowPaciente(
                                        icon = Icons.Default.Badge,
                                        label = "ID de paciente",
                                        value = perfil!!.idPaciente?.toString() ?: "No disponible",
                                        colors = colors
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
                                containerColor = colors.PrimaryLight.copy(alpha = 0.1f)
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
                                    color = colors.Primary
                                )
                                Spacer(modifier = Modifier.height(8.dp))
                                Text(
                                    text = "Tu bienestar es nuestra prioridad",
                                    fontSize = 12.sp,
                                    color = colors.TextSecondary,
                                    textAlign = TextAlign.Center
                                )
                                Spacer(modifier = Modifier.height(12.dp))
                                Text(
                                    text = "Versión 1.0.0",
                                    fontSize = 11.sp,
                                    color = colors.TextSecondary
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
                        colors = colors
                    )
                }
            }
        }
    }

    // ========== DIÁLOGO PARA SELECCIONAR ORIGEN DE LA FOTO ==========
    if (showImageOptions) {
        AlertDialog(
            onDismissRequest = { showImageOptions = false },
            containerColor = colors.Surface,
            shape = RoundedCornerShape(24.dp),
            title = {
                Text(
                    text = "Cambiar foto de perfil",
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Bold,
                    color = colors.TextPrimary
                )
            },
            text = {
                Text(
                    text = "Selecciona una opción para obtener la imagen",
                    fontSize = 14.sp,
                    color = colors.TextSecondary
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
                        colors = ButtonDefaults.buttonColors(containerColor = colors.Primary),
                        shape = RoundedCornerShape(12.dp)
                    ) {
                        Icon(Icons.Default.CameraAlt, contentDescription = "Cámara", modifier = Modifier.size(16.dp))
                        Spacer(modifier = Modifier.width(6.dp))
                        Text("Cámara", fontSize = 12.sp)
                    }
                    Button(
                        onClick = {
                            showImageOptions = false
                            galleryLauncher.launch("image/*")
                        },
                        modifier = Modifier.weight(1f),
                        colors = ButtonDefaults.buttonColors(containerColor = colors.PrimaryLight),
                        shape = RoundedCornerShape(12.dp)
                    ) {
                        Icon(Icons.Default.PhotoLibrary, contentDescription = "Galería", modifier = Modifier.size(16.dp))
                        Spacer(modifier = Modifier.width(6.dp))
                        Text("Galería", fontSize = 12.sp)
                    }
                }
            },
            dismissButton = {
                TextButton(onClick = { showImageOptions = false }) {
                    Text("Cancelar", color = colors.TextSecondary)
                }
            }
        )
    }

    // Diálogo de redirección al login
    if (isRedirecting) {
        AlertDialog(
            onDismissRequest = { },
            containerColor = colors.Surface,
            shape = RoundedCornerShape(24.dp),
            title = {
                Text(
                    text = "Correo actualizado",
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Bold,
                    color = colors.Primary
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
                        tint = colors.Primary
                    )
                    Spacer(modifier = Modifier.height(12.dp))
                    Text(
                        text = "Tu correo electrónico ha sido actualizado correctamente.",
                        fontSize = 14.sp,
                        color = colors.TextPrimary,
                        textAlign = TextAlign.Center
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "Serás redirigido al inicio de sesión para que ingreses con tu nuevo correo.",
                        fontSize = 12.sp,
                        color = colors.TextSecondary,
                        textAlign = TextAlign.Center
                    )
                }
            },
            confirmButton = {
                Button(
                    onClick = { },
                    modifier = Modifier.fillMaxWidth(),
                    colors = ButtonDefaults.buttonColors(containerColor = colors.Primary),
                    shape = RoundedCornerShape(12.dp),
                    enabled = false
                ) {
                    Row(
                        horizontalArrangement = Arrangement.Center,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(16.dp),
                            color = Color.White,
                            strokeWidth = 2.dp
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text("Redirigiendo...", fontSize = 14.sp)
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
                colors = CardDefaults.cardColors(containerColor = colors.Surface)
            ) {
                Column(
                    modifier = Modifier.padding(24.dp),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    CircularProgressIndicator(color = colors.Primary)
                    Spacer(modifier = Modifier.height(12.dp))
                    Text(
                        text = "Subiendo foto...",
                        fontSize = 14.sp,
                        color = colors.TextPrimary
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
    colors: AmaniLoginColors
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.Top
    ) {
        Icon(
            icon,
            contentDescription = null,
            modifier = Modifier.size(20.dp),
            tint = colors.Primary
        )
        Spacer(modifier = Modifier.width(14.dp))
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = label,
                fontSize = 12.sp,
                color = colors.TextSecondary
            )
            Text(
                text = value.ifEmpty { "No especificado" },
                fontSize = 15.sp,
                fontWeight = FontWeight.Medium,
                color = colors.TextPrimary
            )
        }
    }
}

@Composable
fun ErrorContentPaciente(
    error: String,
    onRetry: () -> Unit,
    colors: AmaniLoginColors
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
            tint = colors.Error
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(
            text = "Error al cargar el perfil",
            fontSize = 18.sp,
            fontWeight = FontWeight.Bold,
            color = colors.TextPrimary
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(
            text = error,
            fontSize = 14.sp,
            color = colors.TextSecondary,
            textAlign = TextAlign.Center
        )
        Spacer(modifier = Modifier.height(24.dp))
        Button(
            onClick = onRetry,
            shape = RoundedCornerShape(12.dp)
        ) {
            Icon(Icons.Default.Refresh, contentDescription = null)
            Spacer(modifier = Modifier.width(8.dp))
            Text("Reintentar")
        }
    }
}