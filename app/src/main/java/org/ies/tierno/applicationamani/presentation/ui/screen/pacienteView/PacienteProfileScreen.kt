package org.ies.tierno.applicationamani.presentation.screens.profile

import android.Manifest.permission.CAMERA
import android.content.pm.PackageManager.PERMISSION_GRANTED
import android.content.res.Configuration
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
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Badge
import androidx.compose.material.icons.filled.Cake
import androidx.compose.material.icons.filled.CameraAlt
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.Face
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Phone
import androidx.compose.material.icons.filled.PhotoLibrary
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.filled.Save
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ColorScheme
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuAnchorType
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.FloatingActionButtonDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.core.content.ContextCompat
import androidx.core.content.FileProvider
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import coil.ImageLoader
import coil.compose.AsyncImage
import coil.request.ImageRequest
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.dto.perfil.UsuarioUpdateDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.PacienteProfileResponseDTO
import org.ies.tierno.applicationamani.dto.perfil.paciente.UpdatePacienteRequestDTO
import org.ies.tierno.applicationamani.dto.perfil.psicologo.UsuarioProfileResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.paciente.ProfilePacienteViewModel
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.ies.tierno.applicationamani.ui.theme.isDarkTheme
import org.koin.androidx.compose.koinViewModel
import org.koin.compose.koinInject
import org.koin.java.KoinJavaComponent.getKoin
import java.io.File
import java.time.LocalDate
import java.time.format.DateTimeFormatter
import java.util.Locale

private const val TAG = "PacienteProfileScreen"
private const val BASE_URL = "http://192.168.1.175:8080"

/**
 * Pantalla de perfil del paciente.
 *
 * Muestra los datos personales del paciente (nombre, apellidos, email,
 * teléfono, fecha de nacimiento, DNI) y permite editar el perfil y subir
 * una foto desde la cámara o galería. Incluye gestión de permisos de
 * cámara y un diálogo de éxito tras la actualización.
 *
 * @param pacienteId Identificador del paciente cuyo perfil se muestra.
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona el estado del perfil del paciente.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PacienteProfileScreen(
    pacienteId: Long,
    navController: NavController,
    viewModel: ProfilePacienteViewModel = koinViewModel(),
) {
    val imageLoader = koinInject<ImageLoader>()
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography

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
    var refreshTrigger by remember { mutableLongStateOf(0L) }

    // Estado para controlar si se está redirigiendo al login
    var isRedirecting by remember { mutableStateOf(false) }

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
                    snackbarHostState.showSnackbar(context.getString(R.string.perfil_foto_actualizada))
                }
                refreshTrigger = System.currentTimeMillis()
                viewModel.clearUpload()
            }
            is ProfilePacienteViewModel.UploadStatus.Error -> {
                scope.launch {
                    snackbarHostState.showSnackbar(
                        (uploadStatus as ProfilePacienteViewModel.UploadStatus.Error).message,
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
            ContextCompat.checkSelfPermission(context, CAMERA) == PERMISSION_GRANTED,
        )
    }

    val galleryLauncher =
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.GetContent(),
        ) { uri: Uri? ->
            uri?.let {
                viewModel.uploadFoto(pacienteId, it, context)
                refreshTrigger = System.currentTimeMillis()
            }
        }

    // Archivo temporal para la cámara
    val photoFile =
        remember {
            File(context.cacheDir, "camera_photo_paciente.jpg")
        }
    val photoUri =
        remember(photoFile) {
            FileProvider.getUriForFile(
                context,
                "${context.packageName}.fileprovider",
                photoFile,
            )
        }

    val cameraLauncher =
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.TakePicture(),
        ) { success: Boolean ->
            if (success) {
                viewModel.uploadFoto(pacienteId, photoUri, context)
                refreshTrigger = System.currentTimeMillis()
            }
        }

    val permissionLauncher =
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.RequestPermission(),
        ) { isGranted ->
            hasCameraPermission = isGranted
            if (isGranted) {
                cameraLauncher.launch(photoUri)
            } else {
                scope.launch {
                    snackbarHostState.showSnackbar(context.getString(R.string.perfil_permiso_camara_denegado))
                }
            }
        }

    fun parseLocalDate(dateString: String): LocalDate? =
        try {
            LocalDate.parse(dateString)
        } catch (e: Exception) {
            null
        }

    fun emailHasChanged(): Boolean {
        val emailOriginal = perfil?.usuario?.email ?: ""
        val emailNuevo = emailEdit.trim()
        return emailOriginal != emailNuevo && emailNuevo.isNotBlank()
    }

    PacienteProfileContent(
        perfil = perfil,
        isLoading = isLoading,
        error = error,
        isUploadingFoto = uploadStatus is ProfilePacienteViewModel.UploadStatus.Loading,
        isEditing = isEditing,
        nombreEdit = nombreEdit,
        apellidoEdit = apellidoEdit,
        emailEdit = emailEdit,
        telefonoEdit = telefonoEdit,
        fechaNacimientoEdit = fechaNacimientoEdit,
        generoEdit = generoEdit,
        refreshTrigger = refreshTrigger,
        imageLoader = imageLoader,
        snackbarHostState = snackbarHostState,
        onBackClick = { navController.navigateUp() },
        onRetry = { viewModel.fetchProfile(pacienteId) },
        onChangePhotoClick = { showImageOptions = true },
        onEditToggle = { editing ->
            isEditing = editing
            if (!editing) {
                perfil?.let {
                    nombreEdit = it.usuario?.nombre ?: ""
                    apellidoEdit = it.usuario?.apellido ?: ""
                    emailEdit = it.usuario?.email ?: ""
                    telefonoEdit = it.telefono ?: ""
                    fechaNacimientoEdit = it.fechaNacimiento?.toString() ?: ""
                    generoEdit = it.genero ?: ""
                }
            }
        },
        onNombreChange = { nombreEdit = it },
        onApellidoChange = { apellidoEdit = it },
        onEmailChange = { emailEdit = it },
        onTelefonoChange = { telefonoEdit = it },
        onFechaNacimientoChange = { fechaNacimientoEdit = it },
        onGeneroChange = { generoEdit = it },
        onSaveClick = {
            val emailCambiado = emailHasChanged()
            val updateDto =
                UpdatePacienteRequestDTO(
                    telefono = telefonoEdit.ifBlank { null },
                    genero = generoEdit.ifBlank { null },
                    fechaNacimiento = parseLocalDate(fechaNacimientoEdit),
                    usuario =
                        UsuarioUpdateDTO(
                            nombre = nombreEdit.ifBlank { null },
                            apellido = apellidoEdit.ifBlank { null },
                            email = emailEdit.ifBlank { null },
                        ),
                )

            viewModel.updateProfile(pacienteId, updateDto) { success ->
                if (success) {
                    isEditing = false
                    if (emailCambiado) {
                        scope.launch {
                            snackbarHostState.showSnackbar(
                                message = context.getString(R.string.perfil_correo_actualizado_msg),
                                duration = SnackbarDuration.Long,
                            )
                        }
                        isRedirecting = true
                    } else {
                        scope.launch {
                            snackbarHostState.showSnackbar(
                                message = context.getString(R.string.perfil_actualizado_msg),
                                duration = SnackbarDuration.Short,
                            )
                        }
                    }
                } else {
                    scope.launch {
                        snackbarHostState.showSnackbar(
                            message = context.getString(R.string.perfil_error_actualizar),
                            duration = SnackbarDuration.Short,
                        )
                    }
                }
            }
        },
    )

    // ========== DIÁLOGO PARA SELECCIONAR ORIGEN DE LA FOTO ==========
    if (showImageOptions) {
        AlertDialog(
            onDismissRequest = { showImageOptions = false },
            containerColor = colorScheme.surface,
            shape = MaterialTheme.shapes.extraLarge,
            title = {
                Text(
                    text = stringResource(R.string.auto_cambiar_foto_de_perfil),
                    style = typography.titleLarge,
                    fontWeight = FontWeight.Bold,
                    color = colorScheme.onSurface,
                )
            },
            text = {
                Text(
                    text = stringResource(R.string.auto_selecciona_una_opcion_para_1),
                    style = typography.bodyMedium,
                    color = colorScheme.onSurfaceVariant,
                )
            },
            confirmButton = {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(Spacing.sm),
                ) {
                    Button(
                        onClick = {
                            showImageOptions = false
                            if (hasCameraPermission) {
                                cameraLauncher.launch(photoUri)
                            } else {
                                permissionLauncher.launch(CAMERA)
                            }
                        },
                        modifier = Modifier.weight(1f),
                        colors = ButtonDefaults.buttonColors(containerColor = colorScheme.primary),
                        shape = CircleShape,
                    ) {
                        Icon(
                            Icons.Default.CameraAlt,
                            contentDescription = stringResource(R.string.auto_camara_1),
                            modifier = Modifier.size(Dimensions.iconSmall),
                        )
                        Spacer(modifier = Modifier.width(Spacing.xs))
                        Text(
                            stringResource(R.string.auto_camara_1),
                            style = typography.labelLarge,
                        )
                    }
                    Button(
                        onClick = {
                            showImageOptions = false
                            galleryLauncher.launch("image/*")
                        },
                        modifier = Modifier.weight(1f),
                        colors = ButtonDefaults.buttonColors(containerColor = colorScheme.secondary),
                        shape = CircleShape,
                    ) {
                        Icon(
                            Icons.Default.PhotoLibrary,
                            contentDescription = stringResource(R.string.auto_galeria_1),
                            modifier = Modifier.size(Dimensions.iconSmall),
                        )
                        Spacer(modifier = Modifier.width(Spacing.xs))
                        Text(
                            stringResource(R.string.auto_galeria_1),
                            style = typography.labelLarge,
                        )
                    }
                }
            },
            dismissButton = {
                TextButton(onClick = { showImageOptions = false }) {
                    Text(
                        stringResource(R.string.auto_cancelar),
                        style = typography.labelLarge,
                        color = colorScheme.primary,
                    )
                }
            },
        )
    }

    // Diálogo de redirección al login
    if (isRedirecting) {
        AlertDialog(
            onDismissRequest = { },
            containerColor = colorScheme.surface,
            shape = MaterialTheme.shapes.extraLarge,
            title = {
                Text(
                    text = stringResource(R.string.auto_correo_actualizado),
                    style = typography.headlineSmall,
                    fontWeight = FontWeight.Bold,
                    color = colorScheme.primary,
                )
            },
            text = {
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally,
                ) {
                    Icon(
                        Icons.Default.Email,
                        contentDescription = null,
                        modifier = Modifier.size(Dimensions.iconExtraLarge),
                        tint = colorScheme.primary,
                    )
                    Spacer(modifier = Modifier.height(Spacing.sm))
                    Text(
                        text = stringResource(R.string.auto_tu_correo_electronico_ha),
                        style = typography.bodyMedium,
                        color = colorScheme.onSurface,
                        textAlign = TextAlign.Center,
                    )
                    Spacer(modifier = Modifier.height(Spacing.s))
                    Text(
                        text = stringResource(R.string.auto_seras_redirigido_al_inicio),
                        style = typography.bodySmall,
                        color = colorScheme.onSurfaceVariant,
                        textAlign = TextAlign.Center,
                    )
                }
            },
            confirmButton = {
                Button(
                    onClick = { },
                    modifier = Modifier.fillMaxWidth(),
                    colors = ButtonDefaults.buttonColors(containerColor = colorScheme.primary),
                    shape = CircleShape,
                    enabled = false,
                ) {
                    Row(
                        horizontalArrangement = Arrangement.Center,
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(Dimensions.iconSmall),
                            color = colorScheme.onPrimary,
                            strokeWidth = Dimensions.borderMedium,
                        )
                        Spacer(modifier = Modifier.width(Spacing.s))
                        Text(
                            stringResource(R.string.auto_redirigiendo),
                            style = typography.labelLarge,
                        )
                    }
                }
            },
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PacienteProfileContent(
    perfil: PacienteProfileResponseDTO?,
    isLoading: Boolean,
    error: String?,
    isUploadingFoto: Boolean,
    isEditing: Boolean,
    nombreEdit: String,
    apellidoEdit: String,
    emailEdit: String,
    telefonoEdit: String,
    fechaNacimientoEdit: String,
    generoEdit: String,
    refreshTrigger: Long,
    imageLoader: ImageLoader?,
    snackbarHostState: SnackbarHostState,
    onBackClick: () -> Unit,
    onRetry: () -> Unit,
    onChangePhotoClick: () -> Unit,
    onEditToggle: (Boolean) -> Unit,
    onNombreChange: (String) -> Unit,
    onApellidoChange: (String) -> Unit,
    onEmailChange: (String) -> Unit,
    onTelefonoChange: (String) -> Unit,
    onFechaNacimientoChange: (String) -> Unit,
    onGeneroChange: (String) -> Unit,
    onSaveClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val context = LocalContext.current
    val colorScheme = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val isDark = isDarkTheme()

    val generoOptions =
        listOf(
            stringResource(R.string.genero_hombre),
            stringResource(R.string.genero_mujer),
            stringResource(R.string.genero_otro),
            stringResource(R.string.genero_prefiero_no_decirlo),
        )
    var showGeneroDropdown by remember { mutableStateOf(false) }

    fun buildFullImageUrl(relativeUrl: String?): String {
        if (relativeUrl.isNullOrEmpty()) return ""
        if (relativeUrl.startsWith("http://") || relativeUrl.startsWith("https://")) {
            return relativeUrl
        }
        return "${BASE_URL}$relativeUrl"
    }

    val fullImageUrl = buildFullImageUrl(perfil?.usuario?.fotoPerfilUrl)
    val noEspecificadoText = stringResource(R.string.valor_no_especificado)
    val noDisponibleText = stringResource(R.string.valor_no_disponible)

    fun formatFecha(fecha: LocalDate?): String {
        if (fecha == null) return noEspecificadoText
        return try {
            fecha.format(
                DateTimeFormatter.ofPattern(
                    "dd 'de' MMMM 'de' yyyy",
                    Locale.Builder().setLanguage("es").setRegion("ES").build(),
                ),
            )
        } catch (e: Exception) {
            fecha.toString()
        }
    }

    Box(modifier = modifier.fillMaxSize()) {
        Scaffold(
            snackbarHost = { SnackbarHost(snackbarHostState) },
            containerColor = colorScheme.background,
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = stringResource(R.string.auto_mi_perfil),
                            style = typography.titleLarge,
                            fontWeight = FontWeight.SemiBold,
                            color = colorScheme.onSurface,
                        )
                    },
                    navigationIcon = {
                        IconButton(onClick = onBackClick) {
                            Icon(
                                Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = stringResource(R.string.auto_volver),
                                tint = colorScheme.onSurface,
                            )
                        }
                    },
                    colors =
                        TopAppBarDefaults.topAppBarColors(
                            containerColor = colorScheme.surface,
                            titleContentColor = colorScheme.onSurface,
                            navigationIconContentColor = colorScheme.onSurface,
                        ),
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
                when {
                    isLoading && perfil == null -> {
                        Box(
                            modifier = Modifier.fillMaxSize(),
                            contentAlignment = Alignment.Center,
                        ) {
                            CircularProgressIndicator(color = colorScheme.primary)
                        }
                    }
                    perfil != null -> {
                        Column(
                            modifier =
                                Modifier
                                    .fillMaxSize()
                                    .verticalScroll(rememberScrollState())
                                    .padding(horizontal = Spacing.m, vertical = Spacing.m),
                            horizontalAlignment = Alignment.CenterHorizontally,
                        ) {
                            // ========== SECCIÓN FOTO DE PERFIL ==========
                            Card(
                                modifier =
                                    Modifier
                                        .fillMaxWidth()
                                        .padding(bottom = Spacing.l),
                                shape = MaterialTheme.shapes.medium,
                                elevation = CardDefaults.cardElevation(Elevation.level2),
                                colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
                            ) {
                                Column(
                                    modifier =
                                        Modifier
                                            .fillMaxWidth()
                                            .padding(Spacing.l),
                                    horizontalAlignment = Alignment.CenterHorizontally,
                                ) {
                                    Text(
                                        text = stringResource(R.string.auto_foto_de_perfil_1),
                                        style = typography.titleMedium,
                                        fontWeight = FontWeight.SemiBold,
                                        color = colorScheme.primary,
                                        modifier = Modifier.padding(bottom = Spacing.m),
                                    )

                                    Box(
                                        modifier = Modifier.size(Dimensions.avatarHero),
                                        contentAlignment = Alignment.BottomEnd,
                                    ) {
                                        val imageUrl: Any? =
                                            if (fullImageUrl.isEmpty()) {
                                                null
                                            } else {
                                                "$fullImageUrl?t=$refreshTrigger"
                                            }

                                        if (imageLoader != null) {
                                            AsyncImage(
                                                model =
                                                    ImageRequest
                                                        .Builder(context)
                                                        .data(imageUrl)
                                                        .crossfade(true)
                                                        .error(R.drawable.ic_default_avatar)
                                                        .placeholder(R.drawable.ic_default_avatar)
                                                        .build(),
                                                imageLoader = imageLoader,
                                                contentDescription = stringResource(R.string.auto_foto_de_perfil),
                                                modifier =
                                                    Modifier
                                                        .fillMaxSize()
                                                        .clip(CircleShape)
                                                        .border(
                                                            BorderStroke(Dimensions.progressStroke, colorScheme.primary),
                                                            CircleShape,
                                                        ),
                                                contentScale = ContentScale.Crop,
                                            )
                                        } else {
                                            Box(
                                                modifier =
                                                    Modifier
                                                        .fillMaxSize()
                                                        .clip(CircleShape)
                                                        .background(colorScheme.primaryContainer)
                                                        .border(
                                                            BorderStroke(Dimensions.progressStroke, colorScheme.primary),
                                                            CircleShape,
                                                        ),
                                                contentAlignment = Alignment.Center,
                                            ) {
                                                Icon(
                                                    imageVector = Icons.Default.Person,
                                                    contentDescription = null,
                                                    tint = colorScheme.onPrimaryContainer,
                                                    modifier = Modifier.size(Dimensions.iconExtraLarge),
                                                )
                                            }
                                        }

                                        FloatingActionButton(
                                            onClick = onChangePhotoClick,
                                            modifier = Modifier.size(Dimensions.avatarSmall),
                                            containerColor = colorScheme.primary,
                                            contentColor = colorScheme.onPrimary,
                                            shape = CircleShape,
                                            elevation = FloatingActionButtonDefaults.elevation(Elevation.level2),
                                        ) {
                                            Icon(
                                                Icons.Default.CameraAlt,
                                                contentDescription = stringResource(R.string.auto_cambiar_foto),
                                                modifier = Modifier.size(Dimensions.iconMedium),
                                            )
                                        }
                                    }

                                    Text(
                                        text = "${perfil.usuario?.nombre ?: ""} ${perfil.usuario?.apellido ?: ""}".trim(),
                                        style = typography.headlineSmall,
                                        fontWeight = FontWeight.Bold,
                                        color = colorScheme.onSurface,
                                        modifier = Modifier.padding(top = Spacing.m),
                                    )

                                    Text(
                                        text = perfil.usuario?.email ?: stringResource(R.string.perfil_email_no_disponible),
                                        style = typography.bodyMedium,
                                        color = colorScheme.onSurfaceVariant,
                                    )
                                }
                            }

                            // ========== SECCIÓN INFORMACIÓN PERSONAL ==========
                            Card(
                                modifier = Modifier.fillMaxWidth(),
                                shape = MaterialTheme.shapes.medium,
                                elevation = CardDefaults.cardElevation(Elevation.level2),
                                colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
                            ) {
                                Column(
                                    modifier =
                                        Modifier
                                            .fillMaxWidth()
                                            .padding(Spacing.l),
                                ) {
                                    Row(
                                        modifier = Modifier.fillMaxWidth(),
                                        horizontalArrangement = Arrangement.SpaceBetween,
                                        verticalAlignment = Alignment.CenterVertically,
                                    ) {
                                        Text(
                                            text = stringResource(R.string.auto_informacion_personal),
                                            style = typography.titleMedium,
                                            fontWeight = FontWeight.SemiBold,
                                            color = colorScheme.primary,
                                        )
                                        if (!isEditing) {
                                            TextButton(
                                                onClick = { onEditToggle(true) },
                                                colors =
                                                    ButtonDefaults.textButtonColors(
                                                        contentColor = colorScheme.primary,
                                                    ),
                                            ) {
                                                Icon(
                                                    Icons.Default.Edit,
                                                    contentDescription = stringResource(R.string.auto_editar),
                                                    modifier = Modifier.size(Dimensions.iconButton),
                                                )
                                                Spacer(modifier = Modifier.width(Spacing.xs))
                                                Text(stringResource(R.string.auto_editar), style = typography.labelLarge)
                                            }
                                        }
                                    }

                                    Spacer(modifier = Modifier.height(Spacing.m))

                                    if (isEditing) {
                                        OutlinedTextField(
                                            value = nombreEdit,
                                            onValueChange = onNombreChange,
                                            label = { Text(stringResource(R.string.auto_nombre)) },
                                            modifier = Modifier.fillMaxWidth(),
                                            singleLine = true,
                                            shape = MaterialTheme.shapes.small,
                                            colors =
                                                OutlinedTextFieldDefaults.colors(
                                                    focusedBorderColor = colorScheme.primary,
                                                    unfocusedBorderColor = colorScheme.outline,
                                                    focusedLabelColor = colorScheme.primary,
                                                    unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                                ),
                                        )

                                        Spacer(modifier = Modifier.height(Spacing.sm))

                                        OutlinedTextField(
                                            value = apellidoEdit,
                                            onValueChange = onApellidoChange,
                                            label = { Text(stringResource(R.string.auto_apellido_opcional)) },
                                            modifier = Modifier.fillMaxWidth(),
                                            singleLine = true,
                                            shape = MaterialTheme.shapes.small,
                                            colors =
                                                OutlinedTextFieldDefaults.colors(
                                                    focusedBorderColor = colorScheme.primary,
                                                    unfocusedBorderColor = colorScheme.outline,
                                                    focusedLabelColor = colorScheme.primary,
                                                    unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                                ),
                                        )

                                        Spacer(modifier = Modifier.height(Spacing.sm))

                                        OutlinedTextField(
                                            value = emailEdit,
                                            onValueChange = onEmailChange,
                                            label = { Text(stringResource(R.string.auto_correo_electronico)) },
                                            modifier = Modifier.fillMaxWidth(),
                                            singleLine = true,
                                            shape = MaterialTheme.shapes.small,
                                            colors =
                                                OutlinedTextFieldDefaults.colors(
                                                    focusedBorderColor = colorScheme.primary,
                                                    unfocusedBorderColor = colorScheme.outline,
                                                    focusedLabelColor = colorScheme.primary,
                                                    unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                                ),
                                        )

                                        Spacer(modifier = Modifier.height(Spacing.sm))

                                        OutlinedTextField(
                                            value = telefonoEdit,
                                            onValueChange = onTelefonoChange,
                                            label = { Text(stringResource(R.string.auto_telefono)) },
                                            modifier = Modifier.fillMaxWidth(),
                                            singleLine = true,
                                            shape = MaterialTheme.shapes.small,
                                            colors =
                                                OutlinedTextFieldDefaults.colors(
                                                    focusedBorderColor = colorScheme.primary,
                                                    unfocusedBorderColor = colorScheme.outline,
                                                    focusedLabelColor = colorScheme.primary,
                                                    unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                                ),
                                        )

                                        Spacer(modifier = Modifier.height(Spacing.sm))

                                        OutlinedTextField(
                                            value = fechaNacimientoEdit,
                                            onValueChange = onFechaNacimientoChange,
                                            label = { Text(stringResource(R.string.auto_fecha_de_nacimiento_yyyy)) },
                                            modifier = Modifier.fillMaxWidth(),
                                            singleLine = true,
                                            shape = MaterialTheme.shapes.small,
                                            colors =
                                                OutlinedTextFieldDefaults.colors(
                                                    focusedBorderColor = colorScheme.primary,
                                                    unfocusedBorderColor = colorScheme.outline,
                                                    focusedLabelColor = colorScheme.primary,
                                                    unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                                ),
                                        )

                                        Spacer(modifier = Modifier.height(Spacing.sm))

                                        // Dropdown para género
                                        ExposedDropdownMenuBox(
                                            expanded = showGeneroDropdown,
                                            onExpandedChange = { showGeneroDropdown = it },
                                        ) {
                                            OutlinedTextField(
                                                value = generoEdit,
                                                onValueChange = {},
                                                readOnly = true,
                                                label = { Text(stringResource(R.string.auto_genero)) },
                                                trailingIcon = {
                                                    ExposedDropdownMenuDefaults.TrailingIcon(expanded = showGeneroDropdown)
                                                },
                                                modifier =
                                                    Modifier
                                                        .fillMaxWidth()
                                                        .menuAnchor(type = ExposedDropdownMenuAnchorType.PrimaryNotEditable, enabled = true),
                                                shape = MaterialTheme.shapes.small,
                                                colors =
                                                    OutlinedTextFieldDefaults.colors(
                                                        focusedBorderColor = colorScheme.primary,
                                                        unfocusedBorderColor = colorScheme.outline,
                                                        focusedLabelColor = colorScheme.primary,
                                                        unfocusedLabelColor = colorScheme.onSurfaceVariant,
                                                    ),
                                            )
                                            ExposedDropdownMenu(
                                                expanded = showGeneroDropdown,
                                                onDismissRequest = { showGeneroDropdown = false },
                                            ) {
                                                generoOptions.forEach { opcion ->
                                                    DropdownMenuItem(
                                                        text = { Text(opcion, style = typography.bodyLarge) },
                                                        onClick = {
                                                            onGeneroChange(opcion)
                                                            showGeneroDropdown = false
                                                        },
                                                    )
                                                }
                                            }
                                        }

                                        Spacer(modifier = Modifier.height(Spacing.l))

                                        Row(
                                            modifier = Modifier.fillMaxWidth(),
                                            horizontalArrangement = Arrangement.spacedBy(Spacing.sm),
                                        ) {
                                            Button(
                                                onClick = onSaveClick,
                                                modifier = Modifier.weight(1f).height(Dimensions.buttonHeight),
                                                colors =
                                                    ButtonDefaults.buttonColors(
                                                        containerColor = colorScheme.primary,
                                                    ),
                                                shape = CircleShape,
                                                elevation = ButtonDefaults.buttonElevation(Elevation.level2),
                                            ) {
                                                if (isLoading) {
                                                    CircularProgressIndicator(
                                                        modifier = Modifier.size(Dimensions.iconMedium),
                                                        color = colorScheme.onPrimary,
                                                        strokeWidth = Dimensions.borderMedium,
                                                    )
                                                } else {
                                                    Row {
                                                        Icon(
                                                            Icons.Default.Save,
                                                            contentDescription = stringResource(R.string.auto_guardar),
                                                            modifier = Modifier.size(Dimensions.iconButton),
                                                        )
                                                        Spacer(modifier = Modifier.width(Spacing.xs))
                                                        Text(
                                                            stringResource(R.string.auto_guardar),
                                                            style = typography.labelLarge,
                                                            fontWeight = FontWeight.Medium,
                                                        )
                                                    }
                                                }
                                            }

                                            OutlinedButton(
                                                onClick = { onEditToggle(false) },
                                                modifier = Modifier.weight(1f).height(Dimensions.buttonHeight),
                                                colors =
                                                    ButtonDefaults.outlinedButtonColors(
                                                        contentColor = colorScheme.onSurfaceVariant,
                                                    ),
                                                shape = CircleShape,
                                            ) {
                                                Text(stringResource(R.string.auto_cancelar), style = typography.labelLarge)
                                            }
                                        }
                                    } else {
                                        InfoRowPaciente(
                                            icon = Icons.Default.Person,
                                            label = stringResource(R.string.auto_nombre_completo),
                                            value = "${perfil.usuario?.nombre ?: ""} ${perfil.usuario?.apellido ?: ""}".trim(),
                                            colorScheme = colorScheme,
                                            typography = typography,
                                        )

                                        Spacer(modifier = Modifier.height(Spacing.sm))

                                        InfoRowPaciente(
                                            icon = Icons.Default.Email,
                                            label = stringResource(R.string.auto_correo_electronico),
                                            value = perfil.usuario?.email ?: noEspecificadoText,
                                            colorScheme = colorScheme,
                                            typography = typography,
                                        )

                                        Spacer(modifier = Modifier.height(Spacing.sm))

                                        InfoRowPaciente(
                                            icon = Icons.Default.Phone,
                                            label = stringResource(R.string.auto_telefono),
                                            value = perfil.telefono ?: noEspecificadoText,
                                            colorScheme = colorScheme,
                                            typography = typography,
                                        )

                                        Spacer(modifier = Modifier.height(Spacing.sm))

                                        InfoRowPaciente(
                                            icon = Icons.Default.Cake,
                                            label = stringResource(R.string.auto_fecha_de_nacimiento_1),
                                            value = formatFecha(perfil.fechaNacimiento),
                                            colorScheme = colorScheme,
                                            typography = typography,
                                        )

                                        Spacer(modifier = Modifier.height(Spacing.sm))

                                        InfoRowPaciente(
                                            icon = Icons.Default.Face,
                                            label = stringResource(R.string.auto_genero),
                                            value = perfil.genero ?: noEspecificadoText,
                                            colorScheme = colorScheme,
                                            typography = typography,
                                        )

                                        Spacer(modifier = Modifier.height(Spacing.sm))

                                        InfoRowPaciente(
                                            icon = Icons.Default.Badge,
                                            label = stringResource(R.string.auto_id_de_paciente),
                                            value = perfil.idPaciente?.toString() ?: noDisponibleText,
                                            colorScheme = colorScheme,
                                            typography = typography,
                                        )
                                    }
                                }
                            }

                            Spacer(modifier = Modifier.height(Spacing.m))

                            // ========== SECCIÓN INFORMACIÓN DEL SISTEMA ==========
                            Card(
                                modifier = Modifier.fillMaxWidth(),
                                shape = MaterialTheme.shapes.medium,
                                elevation = CardDefaults.cardElevation(Elevation.level1),
                                colors =
                                    CardDefaults.cardColors(
                                        containerColor = colorScheme.surfaceContainerLow,
                                    ),
                            ) {
                                Column(
                                    modifier = Modifier.padding(Spacing.m),
                                    horizontalAlignment = Alignment.CenterHorizontally,
                                ) {
                                    Text(
                                        text = stringResource(R.string.auto__amani_psicologia),
                                        style = typography.titleSmall,
                                        fontWeight = FontWeight.Bold,
                                        color = colorScheme.primary,
                                    )
                                    Spacer(modifier = Modifier.height(Spacing.s))
                                    Text(
                                        text = stringResource(R.string.auto_tu_bienestar_es_nuestra),
                                        style = typography.bodySmall,
                                        color = colorScheme.onSurfaceVariant,
                                        textAlign = TextAlign.Center,
                                    )
                                    Spacer(modifier = Modifier.height(Spacing.sm))
                                    Text(
                                        text = stringResource(R.string.auto_version_100_1),
                                        style = typography.labelSmall,
                                        color = colorScheme.onSurfaceVariant,
                                    )
                                }
                            }

                            Spacer(modifier = Modifier.height(Dimensions.bottomContentSpacer))
                        }
                    }
                    error != null -> {
                        ErrorContentPaciente(
                            error = error,
                            onRetry = onRetry,
                            colorScheme = colorScheme,
                            typography = typography,
                            isDark = isDark,
                        )
                    }
                }
            }
        }

        // Mostrar loading overlay mientras sube la foto
        if (isUploadingFoto) {
            Box(
                modifier =
                    Modifier
                        .fillMaxSize()
                        .background(colorScheme.scrim.copy(alpha = 0.5f))
                        .clickable(enabled = false) { },
                contentAlignment = Alignment.Center,
            ) {
                Card(
                    shape = MaterialTheme.shapes.medium,
                    colors = CardDefaults.cardColors(containerColor = colorScheme.surface),
                ) {
                    Column(
                        modifier = Modifier.padding(Spacing.l),
                        horizontalAlignment = Alignment.CenterHorizontally,
                    ) {
                        CircularProgressIndicator(color = colorScheme.primary)
                        Spacer(modifier = Modifier.height(Spacing.sm))
                        Text(
                            text = stringResource(R.string.auto_subiendo_foto),
                            style = typography.bodyMedium,
                            color = colorScheme.onSurface,
                        )
                    }
                }
            }
        }
    }
}

/**
 * Fila informativa con icono, etiqueta y valor para los datos del perfil del paciente.
 *
 * @param icon Icono vectorial representativo del campo.
 * @param label Etiqueta descriptiva del campo.
 * @param value Valor del campo a mostrar.
 * @param colorScheme Esquema de colores de Material 3.
 * @param typography Tipografía de Material 3.
 */
@Composable
fun InfoRowPaciente(
    icon: ImageVector,
    label: String,
    value: String,
    colorScheme: ColorScheme,
    typography: androidx.compose.material3.Typography,
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.Top,
    ) {
        Icon(
            icon,
            contentDescription = null,
            modifier = Modifier.size(Dimensions.iconMedium),
            tint = colorScheme.primary,
        )
        Spacer(modifier = Modifier.width(Spacing.sm))
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = label,
                style = typography.labelSmall,
                color = colorScheme.onSurfaceVariant,
            )
            Text(
                text = value.ifEmpty { stringResource(R.string.valor_no_especificado) },
                style = typography.bodyLarge,
                fontWeight = FontWeight.Medium,
                color = colorScheme.onSurface,
            )
        }
    }
}

/**
 * Pantalla de error con mensaje y botón de reintento para el perfil del paciente.
 *
 * @param error Mensaje descriptivo del error.
 * @param onRetry Callback invocado al pulsar el botón de reintento.
 * @param colorScheme Esquema de colores de Material 3.
 * @param typography Tipografía de Material 3.
 * @param isDark Indica si el tema oscuro está activo.
 */
@Composable
fun ErrorContentPaciente(
    error: String,
    onRetry: () -> Unit,
    colorScheme: ColorScheme,
    typography: androidx.compose.material3.Typography,
    isDark: Boolean,
) {
    Column(
        modifier =
            Modifier
                .fillMaxSize()
                .padding(Spacing.m),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Icon(
            imageVector = Icons.Default.Error,
            contentDescription = null,
            modifier = Modifier.size(Dimensions.iconHero),
            tint = colorScheme.error,
        )
        Spacer(modifier = Modifier.height(Spacing.m))
        Text(
            text = stringResource(R.string.auto_error_al_cargar_el),
            style = typography.headlineSmall,
            fontWeight = FontWeight.Bold,
            color = colorScheme.onSurface,
        )
        Spacer(modifier = Modifier.height(Spacing.s))
        Text(
            text = error,
            style = typography.bodyMedium,
            color = colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center,
        )
        Spacer(modifier = Modifier.height(Spacing.l))
        Button(
            onClick = onRetry,
            colors = ButtonDefaults.buttonColors(containerColor = colorScheme.primary),
            shape = CircleShape,
        ) {
            Icon(
                Icons.Default.Refresh,
                contentDescription = null,
            )
            Spacer(modifier = Modifier.width(Spacing.s))
            Text(
                stringResource(R.string.auto_reintentar),
                style = typography.labelLarge,
            )
        }
    }
}

private val previewPerfilPaciente =
    PacienteProfileResponseDTO(
        idPaciente = 42L,
        usuario =
            UsuarioProfileResponseDTO(
                idUsuario = 10L,
                nombre = "Laura",
                apellido = "Gómez",
                email = "laura.gomez@amani.org",
                fotoPerfilUrl = null,
            ),
        fechaNacimiento = LocalDate.of(1995, 5, 14),
        genero = "Femenino",
        telefono = "600123456",
    )

@Preview(showBackground = true, name = "PacienteProfile - Light")
@Composable
private fun PacienteProfileScreenLightPreview() {
    AppTheme(darkTheme = false) {
        PacienteProfileContent(
            perfil = previewPerfilPaciente,
            isLoading = false,
            error = null,
            isUploadingFoto = false,
            isEditing = false,
            nombreEdit = "Laura",
            apellidoEdit = "Gómez",
            emailEdit = "laura.gomez@amani.org",
            telefonoEdit = "600123456",
            fechaNacimientoEdit = "1995-05-14",
            generoEdit = "Femenino",
            refreshTrigger = 0L,
            imageLoader = null,
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onRetry = {},
            onChangePhotoClick = {},
            onEditToggle = {},
            onNombreChange = {},
            onApellidoChange = {},
            onEmailChange = {},
            onTelefonoChange = {},
            onFechaNacimientoChange = {},
            onGeneroChange = {},
            onSaveClick = {},
        )
    }
}

@Preview(
    showBackground = true,
    uiMode = Configuration.UI_MODE_NIGHT_YES,
    name = "PacienteProfile - Dark",
)
@Composable
private fun PacienteProfileScreenDarkPreview() {
    AppTheme(darkTheme = true) {
        PacienteProfileContent(
            perfil = previewPerfilPaciente,
            isLoading = false,
            error = null,
            isUploadingFoto = false,
            isEditing = true,
            nombreEdit = "Laura",
            apellidoEdit = "Gómez",
            emailEdit = "laura.gomez@amani.org",
            telefonoEdit = "600123456",
            fechaNacimientoEdit = "1995-05-14",
            generoEdit = "Femenino",
            refreshTrigger = 0L,
            imageLoader = null,
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onRetry = {},
            onChangePhotoClick = {},
            onEditToggle = {},
            onNombreChange = {},
            onApellidoChange = {},
            onEmailChange = {},
            onTelefonoChange = {},
            onFechaNacimientoChange = {},
            onGeneroChange = {},
            onSaveClick = {},
        )
    }
}

@Preview(
    showBackground = true,
    fontScale = 1.5f,
    name = "PacienteProfile - FontScale 1.5x",
)
@Composable
private fun PacienteProfileScreenFontScalePreview() {
    AppTheme(darkTheme = false) {
        PacienteProfileContent(
            perfil = null,
            isLoading = false,
            error = "No se pudo conectar con el servidor",
            isUploadingFoto = false,
            isEditing = false,
            nombreEdit = "",
            apellidoEdit = "",
            emailEdit = "",
            telefonoEdit = "",
            fechaNacimientoEdit = "",
            generoEdit = "",
            refreshTrigger = 0L,
            imageLoader = null,
            snackbarHostState = remember { SnackbarHostState() },
            onBackClick = {},
            onRetry = {},
            onChangePhotoClick = {},
            onEditToggle = {},
            onNombreChange = {},
            onApellidoChange = {},
            onEmailChange = {},
            onTelefonoChange = {},
            onFechaNacimientoChange = {},
            onGeneroChange = {},
            onSaveClick = {},
        )
    }
}
