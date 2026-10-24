package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView

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
import androidx.compose.material.icons.filled.CameraAlt
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Email
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.PhotoLibrary
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.filled.Save
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.FloatingActionButtonDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
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
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.core.content.ContextCompat
import androidx.core.content.FileProvider
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavController
import coil.compose.AsyncImage
import coil.request.ImageRequest
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.perfil.admin.AdminDTO
import org.ies.tierno.applicationamani.dto.perfil.admin.UpdateAdminRequestDTO
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.admin.ProfileAdminViewModel
import org.ies.tierno.applicationamani.ui.theme.AmaniTheme
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import org.koin.androidx.compose.koinViewModel
import org.koin.compose.koinInject
import java.io.File

private const val BASE_URL = "http://192.168.1.175:8080"

/**
 * Pantalla de perfil del administrador.
 *
 * Muestra los datos personales del administrador (nombre, apellidos, email,
 * nombre de usuario) y permite editar el perfil, cambiar la contraseña y
 * subir una foto de perfil desde la cámara o galería. Incluye gestión de
 * permisos de cámara y un diálogo de confirmación para el cambio de contraseña.
 *
 * @param adminId Identificador del administrador cuyo perfil se muestra.
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona el estado del perfil del administrador.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AdminProfileScreen(
    adminId: Long,
    navController: NavController,
    viewModel: ProfileAdminViewModel = koinViewModel(),
) {
    val imageLoader = koinInject<coil.ImageLoader>()
    val context = LocalContext.current
    val scope = rememberCoroutineScope()

    val perfil by viewModel.perfil.collectAsStateWithLifecycle()
    val isLoading by viewModel.isLoading.collectAsStateWithLifecycle()
    val error by viewModel.error.collectAsStateWithLifecycle()
    val uploadStatus by viewModel.uploadStatus.collectAsStateWithLifecycle()

    val snackbarHostState = remember { SnackbarHostState() }
    var isEditing by remember { mutableStateOf(false) }
    var nombreEdit by remember { mutableStateOf("") }
    var apellidoEdit by remember { mutableStateOf("") }
    var emailEdit by remember { mutableStateOf("") }
    var refreshTrigger by remember { mutableLongStateOf(0L) }

    LaunchedEffect(adminId) {
        viewModel.fetchProfile(adminId)
    }

    LaunchedEffect(perfil) {
        perfil?.let {
            nombreEdit = it.nombre
            apellidoEdit = it.apellido ?: ""
            emailEdit = it.email
        }
    }

    LaunchedEffect(error) {
        error?.let {
            scope.launch {
                snackbarHostState.showSnackbar(it)
                viewModel.clearError()
            }
        }
    }

    LaunchedEffect(uploadStatus) {
        when (uploadStatus) {
            is ProfileAdminViewModel.UploadStatus.Success -> {
                scope.launch {
                    snackbarHostState.showSnackbar(context.getString(R.string.admin_foto_actualizada_exito))
                }
                refreshTrigger = System.currentTimeMillis()
                viewModel.clearUpload()
            }
            is ProfileAdminViewModel.UploadStatus.Error -> {
                scope.launch {
                    snackbarHostState.showSnackbar(
                        (uploadStatus as ProfileAdminViewModel.UploadStatus.Error).message,
                    )
                }
                viewModel.clearUpload()
            }
            else -> {}
        }
    }

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
                viewModel.uploadFoto(adminId, it, context)
                refreshTrigger = System.currentTimeMillis()
            }
        }

    val photoFile = remember { File(context.cacheDir, "camera_photo_admin.jpg") }
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
                viewModel.uploadFoto(adminId, photoUri, context)
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
                    snackbarHostState.showSnackbar(context.getString(R.string.admin_permiso_camara_denegado))
                }
            }
        }

    fun buildFullImageUrl(relativeUrl: String?): String {
        if (relativeUrl.isNullOrEmpty()) return ""
        if (relativeUrl.startsWith("http://") || relativeUrl.startsWith("https://")) {
            return relativeUrl
        }
        return "${BASE_URL}$relativeUrl"
    }

    val fullImageUrl = buildFullImageUrl(perfil?.fotoPerfilUrl)

    Scaffold(
        snackbarHost = { SnackbarHost(snackbarHostState) },
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_mi_perfil),
                        style = MaterialTheme.typography.titleLarge,
                    )
                },
                navigationIcon = {
                    IconButton(onClick = { navController.navigateUp() }) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = stringResource(R.string.auto_volver),
                        )
                    }
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                    ),
            )
        },
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .background(MaterialTheme.colorScheme.background),
        ) {
            when {
                isLoading && perfil == null -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center,
                    ) {
                        CircularProgressIndicator()
                    }
                }
                perfil != null -> {
                    val imageUrl: Any? =
                        if (fullImageUrl.isEmpty()) {
                            null
                        } else {
                            "$fullImageUrl?t=$refreshTrigger"
                        }

                    AdminProfileBody(
                        perfil = perfil!!,
                        isEditing = isEditing,
                        nombreEdit = nombreEdit,
                        apellidoEdit = apellidoEdit,
                        emailEdit = emailEdit,
                        onNombreChange = { nombreEdit = it },
                        onApellidoChange = { apellidoEdit = it },
                        onEmailChange = { emailEdit = it },
                        onEditClick = { isEditing = true },
                        onCancelEdit = { isEditing = false },
                        onSaveEdit = {
                            val updateDto =
                                UpdateAdminRequestDTO(
                                    nombre = nombreEdit.ifBlank { null },
                                    apellido = apellidoEdit.ifBlank { null },
                                    email = emailEdit.ifBlank { null },
                                )
                            viewModel.updateProfile(adminId, updateDto)
                            isEditing = false
                        },
                        onChangePhotoClick = { showImageOptions = true },
                        avatarContent = {
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
                                            BorderStroke(Dimensions.progressStroke, MaterialTheme.colorScheme.primary),
                                            CircleShape,
                                        ),
                                contentScale = ContentScale.Crop,
                            )
                        },
                    )
                }
                error != null -> {
                    ErrorContentAdmin(
                        error = error!!,
                        onRetry = { viewModel.fetchProfile(adminId) },
                    )
                }
            }
        }
    }

    if (showImageOptions) {
        AlertDialog(
            onDismissRequest = { showImageOptions = false },
            shape = MaterialTheme.shapes.large,
            title = {
                Text(
                    text = stringResource(R.string.auto_cambiar_foto_de_perfil),
                    style = MaterialTheme.typography.headlineSmall,
                )
            },
            text = {
                Text(
                    text = stringResource(R.string.auto_selecciona_una_opcion_para),
                    style = MaterialTheme.typography.bodyMedium,
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
                        shape = MaterialTheme.shapes.medium,
                    ) {
                        Icon(
                            Icons.Default.CameraAlt,
                            contentDescription = stringResource(R.string.auto_camara),
                            modifier = Modifier.size(Dimensions.iconSmall),
                        )
                        Spacer(modifier = Modifier.width(Spacing.s))
                        Text(
                            text = stringResource(R.string.auto_camara),
                            style = MaterialTheme.typography.labelLarge,
                        )
                    }
                    Button(
                        onClick = {
                            showImageOptions = false
                            galleryLauncher.launch("image/*")
                        },
                        modifier = Modifier.weight(1f),
                        shape = MaterialTheme.shapes.medium,
                        colors =
                            ButtonDefaults.buttonColors(
                                containerColor = MaterialTheme.colorScheme.secondaryContainer,
                                contentColor = MaterialTheme.colorScheme.onSecondaryContainer,
                            ),
                    ) {
                        Icon(
                            Icons.Default.PhotoLibrary,
                            contentDescription = stringResource(R.string.auto_galeria),
                            modifier = Modifier.size(Dimensions.iconSmall),
                        )
                        Spacer(modifier = Modifier.width(Spacing.s))
                        Text(
                            text = stringResource(R.string.auto_galeria),
                            style = MaterialTheme.typography.labelLarge,
                        )
                    }
                }
            },
            dismissButton = {
                TextButton(onClick = { showImageOptions = false }) {
                    Text(stringResource(R.string.auto_cancelar))
                }
            },
        )
    }

    if (uploadStatus is ProfileAdminViewModel.UploadStatus.Loading) {
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .background(MaterialTheme.colorScheme.scrim.copy(alpha = 0.5f))
                    .clickable(enabled = false) { },
            contentAlignment = Alignment.Center,
        ) {
            Card(
                shape = MaterialTheme.shapes.medium,
                colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
            ) {
                Column(
                    modifier = Modifier.padding(Spacing.l),
                    horizontalAlignment = Alignment.CenterHorizontally,
                ) {
                    CircularProgressIndicator()
                    Spacer(modifier = Modifier.height(Spacing.sm))
                    Text(
                        text = stringResource(R.string.auto_subiendo_foto),
                        style = MaterialTheme.typography.bodyMedium,
                    )
                }
            }
        }
    }
}

@Composable
fun AdminProfileBody(
    perfil: AdminDTO,
    isEditing: Boolean,
    nombreEdit: String,
    apellidoEdit: String,
    emailEdit: String,
    onNombreChange: (String) -> Unit,
    onApellidoChange: (String) -> Unit,
    onEmailChange: (String) -> Unit,
    onEditClick: () -> Unit,
    onCancelEdit: () -> Unit,
    onSaveEdit: () -> Unit,
    onChangePhotoClick: () -> Unit,
    avatarContent: @Composable () -> Unit,
    modifier: Modifier = Modifier,
) {
    Column(
        modifier =
            modifier
                .fillMaxSize()
                .verticalScroll(rememberScrollState())
                .padding(horizontal = Spacing.m, vertical = Spacing.m),
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Card(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(bottom = Spacing.l),
            shape = MaterialTheme.shapes.medium,
            colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainerLow),
            elevation = CardDefaults.cardElevation(Elevation.level1),
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
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.padding(bottom = Spacing.m),
                )

                Box(
                    modifier = Modifier.size(Dimensions.avatarHero),
                    contentAlignment = Alignment.BottomEnd,
                ) {
                    avatarContent()

                    FloatingActionButton(
                        onClick = onChangePhotoClick,
                        modifier = Modifier.size(Dimensions.avatarSmall),
                        containerColor = MaterialTheme.colorScheme.primary,
                        contentColor = MaterialTheme.colorScheme.onPrimary,
                        shape = CircleShape,
                        elevation = FloatingActionButtonDefaults.elevation(Elevation.level1),
                    ) {
                        Icon(
                            Icons.Default.CameraAlt,
                            contentDescription = stringResource(R.string.auto_cambiar_foto),
                            modifier = Modifier.size(Dimensions.iconMedium),
                        )
                    }
                }

                Text(
                    text = "${perfil.nombre} ${perfil.apellido ?: ""}",
                    style = MaterialTheme.typography.headlineSmall,
                    modifier = Modifier.padding(top = Spacing.m),
                )

                Text(
                    text = perfil.email,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        }

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.medium,
            colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainerLow),
            elevation = CardDefaults.cardElevation(Elevation.level1),
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
                        text = stringResource(R.string.auto_informacion_personal_1),
                        style = MaterialTheme.typography.titleMedium,
                        color = MaterialTheme.colorScheme.primary,
                    )
                    if (!isEditing) {
                        TextButton(onClick = onEditClick) {
                            Icon(
                                Icons.Default.Edit,
                                contentDescription = stringResource(R.string.auto_editar),
                                modifier = Modifier.size(Dimensions.iconButton),
                            )
                            Spacer(modifier = Modifier.width(Spacing.s))
                            Text(stringResource(R.string.auto_editar))
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
                        shape = MaterialTheme.shapes.medium,
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    OutlinedTextField(
                        value = apellidoEdit,
                        onValueChange = onApellidoChange,
                        label = { Text(stringResource(R.string.auto_apellido_opcional)) },
                        modifier = Modifier.fillMaxWidth(),
                        singleLine = true,
                        shape = MaterialTheme.shapes.medium,
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    OutlinedTextField(
                        value = emailEdit,
                        onValueChange = onEmailChange,
                        label = { Text(stringResource(R.string.auto_correo_electronico_1)) },
                        modifier = Modifier.fillMaxWidth(),
                        singleLine = true,
                        shape = MaterialTheme.shapes.medium,
                    )

                    Spacer(modifier = Modifier.height(Spacing.m))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(Spacing.sm),
                    ) {
                        Button(
                            onClick = onSaveEdit,
                            modifier = Modifier.weight(1f).height(Dimensions.buttonHeight),
                            shape = MaterialTheme.shapes.medium,
                        ) {
                            Icon(
                                Icons.Default.Save,
                                contentDescription = stringResource(R.string.auto_guardar),
                                modifier = Modifier.size(Dimensions.iconButton),
                            )
                            Spacer(modifier = Modifier.width(Spacing.s))
                            Text(
                                text = stringResource(R.string.auto_guardar),
                                style = MaterialTheme.typography.labelLarge,
                            )
                        }

                        OutlinedButton(
                            onClick = onCancelEdit,
                            modifier = Modifier.weight(1f).height(Dimensions.buttonHeight),
                            shape = MaterialTheme.shapes.medium,
                        ) {
                            Text(stringResource(R.string.auto_cancelar))
                        }
                    }
                } else {
                    InfoRowAdmin(
                        icon = Icons.Default.Person,
                        label = stringResource(R.string.auto_nombre_completo),
                        value = "${perfil.nombre} ${perfil.apellido ?: ""}".trim(),
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    InfoRowAdmin(
                        icon = Icons.Default.Email,
                        label = stringResource(R.string.auto_correo_electronico_1),
                        value = perfil.email,
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    InfoRowAdmin(
                        icon = Icons.Default.Badge,
                        label = stringResource(R.string.auto_rol),
                        value = stringResource(R.string.admin_rol_administrador),
                    )

                    Spacer(modifier = Modifier.height(Spacing.sm))

                    InfoRowAdmin(
                        icon = Icons.Default.Lock,
                        label = stringResource(R.string.auto_id_de_usuario),
                        value = perfil.idUsuario.toString(),
                    )
                }
            }
        }

        Spacer(modifier = Modifier.height(Spacing.m))

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.medium,
            elevation = CardDefaults.cardElevation(Elevation.level1),
            colors =
                CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surfaceContainer,
                ),
        ) {
            Column(
                modifier = Modifier.padding(Spacing.m),
                horizontalAlignment = Alignment.CenterHorizontally,
            ) {
                Text(
                    text = stringResource(R.string.auto_amani_psicologia),
                    style = MaterialTheme.typography.titleSmall,
                    color = MaterialTheme.colorScheme.primary,
                )
                Spacer(modifier = Modifier.height(Spacing.s))
                Text(
                    text = stringResource(R.string.auto_plataforma_de_gestion_terapeutica),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    textAlign = TextAlign.Center,
                )
                Spacer(modifier = Modifier.height(Spacing.sm))
                Text(
                    text = stringResource(R.string.auto_version_100),
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        }

        Spacer(modifier = Modifier.height(Dimensions.bottomContentSpacer))
    }
}

/**
 * Fila informativa con icono, etiqueta y valor para los datos del perfil.
 *
 * @param icon Icono vectorial representativo del campo.
 * @param label Etiqueta descriptiva del campo.
 * @param value Valor del campo a mostrar.
 */
@Composable
fun InfoRowAdmin(
    icon: ImageVector,
    label: String,
    value: String,
) {
    val noEspecificado = stringResource(R.string.admin_no_especificado)
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.Top,
    ) {
        Icon(
            icon,
            contentDescription = null,
            modifier = Modifier.size(Dimensions.iconMedium),
            tint = MaterialTheme.colorScheme.primary,
        )
        Spacer(modifier = Modifier.width(Spacing.sm))
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = label,
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
            Text(
                text = value.ifEmpty { noEspecificado },
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurface,
            )
        }
    }
}

/**
 * Pantalla de error con mensaje y botón de reintento para la carga del perfil.
 *
 * @param error Mensaje descriptivo del error.
 * @param onRetry Callback invocado al pulsar el botón de reintento.
 */
@Composable
fun ErrorContentAdmin(
    error: String,
    onRetry: () -> Unit,
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
            tint = MaterialTheme.colorScheme.error,
        )
        Spacer(modifier = Modifier.height(Spacing.m))
        Text(
            text = stringResource(R.string.auto_error_al_cargar_el),
            style = MaterialTheme.typography.headlineSmall,
        )
        Spacer(modifier = Modifier.height(Spacing.s))
        Text(
            text = error,
            style = MaterialTheme.typography.bodyMedium,
            textAlign = TextAlign.Center,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        Spacer(modifier = Modifier.height(Spacing.l))
        Button(
            onClick = onRetry,
            shape = MaterialTheme.shapes.medium,
        ) {
            Icon(
                Icons.Default.Refresh,
                contentDescription = null,
            )
            Spacer(modifier = Modifier.width(Spacing.s))
            Text(stringResource(R.string.auto_reintentar))
        }
    }
}

@Preview(name = "AdminProfile Light", showBackground = true)
@Preview(name = "AdminProfile Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "AdminProfile FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun AdminProfileScreenPreview() {
    AppTheme {
        AdminProfileBody(
            perfil =
                AdminDTO(
                    idUsuario = 1L,
                    nombre = "Admin",
                    apellido = "Principal",
                    email = "admin@amani.es",
                    fotoPerfilUrl = "",
                ),
            isEditing = false,
            nombreEdit = "Admin",
            apellidoEdit = "Principal",
            emailEdit = "admin@amani.es",
            onNombreChange = {},
            onApellidoChange = {},
            onEmailChange = {},
            onEditClick = {},
            onCancelEdit = {},
            onSaveEdit = {},
            onChangePhotoClick = {},
            avatarContent = {
                Box(
                    modifier =
                        Modifier
                            .fillMaxSize()
                            .clip(CircleShape)
                            .background(MaterialTheme.colorScheme.primaryContainer),
                )
            },
        )
    }
}
