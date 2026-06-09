package org.ies.tierno.applicationamani.presentation.screens.profile

import android.Manifest.permission.CAMERA
import android.content.pm.PackageManager.PERMISSION_GRANTED
import android.net.Uri
import android.util.Log
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.border
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
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Badge
import androidx.compose.material.icons.filled.CameraAlt
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.Timeline
import androidx.compose.material.icons.filled.Work
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Snackbar
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.content.ContextCompat
import androidx.core.content.FileProvider
import androidx.navigation.NavController
import coil.compose.AsyncImage
import coil.request.ImageRequest
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.dto.perfil.psicologo.PsicologoProfileResponseDTO
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel
import org.koin.compose.koinInject
import org.koin.compose.viewmodel.koinViewModel
import java.io.File

private const val TAG = "PsicologoProfileScreen"

// Usar la MISMA URL que en Retrofit
private const val BASE_URL = "http://192.168.1.175:8080"

/**
 * Pantalla de perfil del psicólogo con opción de edición y cambio de foto.
 *
 * Muestra los datos profesionales del psicólogo (nombre, especialidad,
 * experiencia, licencia, email) y permite editar el perfil, cambiar la
 * foto desde cámara o galería, y gestionar los permisos de cámara.
 * Incluye gestión de estado de subida de imagen con indicador de carga.
 *
 * @param psicologoId Identificador del psicólogo cuyo perfil se muestra.
 * @param navController Controlador de navegación para transiciones entre pantallas.
 * @param viewModel ViewModel que gestiona el estado del perfil del psicólogo.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PsicologoProfileScreen(
    psicologoId: Long,
    navController: NavController,
    viewModel: ProfilePsicologoViewModel = koinViewModel(),
) {
    // INYECTO LA IMAGEN EN EL VIEWMODEL PARA QUE PUEDA GESTIONAR EL ESTADO DE LA URL Y FORZAR REFRESH DESDE ALLÍ
    val imageLoader = koinInject<coil.ImageLoader>()

    val context = LocalContext.current
    val perfil by viewModel.perfil.collectAsState()
    val isLoading by viewModel.isLoading.collectAsState()
    val error by viewModel.error.collectAsState()
    val uploadStatus by viewModel.uploadStatus.collectAsState()

    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    Log.d(TAG, "PsicologoProfileScreen iniciada con ID: $psicologoId")

    LaunchedEffect(Unit) {
        Log.d(TAG, "LaunchedEffect - Fetching profile for ID: $psicologoId")
        viewModel.fetchProfile(psicologoId)
    }

    LaunchedEffect(perfil) {
        if (perfil != null) {
            Log.d(TAG, "Perfil cargado correctamente")
            Log.d(TAG, "Nombre: ${perfil?.usuario?.nombre} ${perfil?.usuario?.apellido}")
            Log.d(TAG, "Email: ${perfil?.usuario?.email}")
            Log.d(TAG, "URL foto perfil: ${perfil?.usuario?.fotoPerfilUrl}")
        }
    }

    LaunchedEffect(error) {
        error?.let { errorMessage ->
            Log.e(TAG, "Error en perfil: $errorMessage")
            scope.launch {
                snackbarHostState.showSnackbar(
                    message = errorMessage,
                    actionLabel = "Cerrar",
                    duration = SnackbarDuration.Short,
                )
            }
        }
    }

    LaunchedEffect(uploadStatus) {
        when (uploadStatus) {
            is ProfilePsicologoViewModel.UploadStatus.Success -> {
                Log.d(TAG, "UploadStatus: SUCCESS - Foto subida correctamente")
                scope.launch {
                    snackbarHostState.showSnackbar(
                        message = "¡Foto de perfil actualizada correctamente!",
                        actionLabel = "👍",
                        duration = SnackbarDuration.Short,
                    )
                }
            }
            is ProfilePsicologoViewModel.UploadStatus.Error -> {
                val errorMessage = (uploadStatus as ProfilePsicologoViewModel.UploadStatus.Error).message
                Log.e(TAG, "UploadStatus: ERROR - $errorMessage")
                scope.launch {
                    snackbarHostState.showSnackbar(
                        message = errorMessage,
                        actionLabel = "Cerrar",
                        duration = SnackbarDuration.Long,
                    )
                }
            }
            else -> {}
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text(
                        text = stringResource(R.string.auto_mi_perfil_profesional),
                        fontWeight = FontWeight.Bold,
                    )
                },
                colors =
                    TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                    ),
                navigationIcon = {
                    IconButton(onClick = { navController.popBackStack() }) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = stringResource(R.string.auto_volver), tint = Color.White)
                    }
                },
            )
        },
        snackbarHost = {
            SnackbarHost(
                hostState = snackbarHostState,
                modifier = Modifier.padding(16.dp),
            ) { data ->
                Snackbar(
                    snackbarData = data,
                    containerColor = MaterialTheme.colorScheme.primaryContainer,
                    contentColor = MaterialTheme.colorScheme.onPrimaryContainer,
                    actionColor = MaterialTheme.colorScheme.primary,
                )
            }
        },
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues),
        ) {
            when {
                isLoading -> {
                    Log.d(TAG, "Estado: Cargando...")
                    CircularProgressIndicator(
                        modifier = Modifier.align(Alignment.Center),
                    )
                }
                perfil != null -> {
                    Log.d(TAG, "Estado: Mostrando contenido del perfil")
                    ProfileContent(
                        navController,
                        perfil = perfil!!,
                        imageLoader = imageLoader,
                        onPhotoUpload = { uri ->
                            Log.d(TAG, "onPhotoUpload llamado con URI: $uri")
                            viewModel.uploadFotoPerfil(psicologoId, uri, context)
                        },
                    )
                }
                error != null -> {
                    Log.d(TAG, "Estado: Mostrando error: $error")
                    ErrorContent(
                        error = error!!,
                        onRetry = {
                            Log.d(TAG, "Retry clicked - fetching profile again")
                            viewModel.fetchProfile(psicologoId)
                        },
                    )
                }
            }
        }
    }
}

@Composable
fun ProfileContent(
    navController: NavController,
    perfil: PsicologoProfileResponseDTO,
    imageLoader: coil.ImageLoader,
    onPhotoUpload: (Uri) -> Unit,
) {
    val context = LocalContext.current
    var showOptions by remember { mutableStateOf(false) }

    // Variable para forzar refresco de la imagen (Optimizado para evitar autoboxing)
    var refreshTrigger by remember { mutableLongStateOf(0L) }

    // Función para construir la URL completa de la imagen
    fun buildFullImageUrl(relativeUrl: String?): String {
        if (relativeUrl.isNullOrEmpty()) {
            return ""
        }
        // Si ya es una URL completa, la devolvemos tal cual
        if (relativeUrl.startsWith("http://") || relativeUrl.startsWith("https://")) {
            return relativeUrl
        }
        // Construimos la URL completa con la base
        return "${BASE_URL}$relativeUrl"
    }

    val currentPhotoUrl = perfil.usuario?.fotoPerfilUrl
    val fullImageUrl = buildFullImageUrl(currentPhotoUrl)

    Log.d(TAG, "ProfileContent - URL foto actual (relativa): $currentPhotoUrl")
    Log.d(TAG, "ProfileContent - URL foto completa: $fullImageUrl")
    Log.d(TAG, "ProfileContent - ¿URL vacía o nula?: ${currentPhotoUrl.isNullOrEmpty()}")

    // ========== LAUNCHER PARA GALERÍA ==========
    val galleryLauncher =
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.GetContent(),
        ) { uri: Uri? ->
            Log.d(TAG, "Galería - URI seleccionada: $uri")
            uri?.let {
                Log.d(TAG, "Galería - Path: ${it.path}")
                Log.d(TAG, "Galería - Scheme: ${it.scheme}")
                onPhotoUpload(it)
                // Forzar refresco después del upload
                refreshTrigger = System.currentTimeMillis()
                Log.d(TAG, "Refresh trigger actualizado: $refreshTrigger")
            }
        }

    // Archivo temporal para la cámara
    val photoFile =
        remember {
            File(context.cacheDir, "camera_photo.jpg")
        }
    val photoUri =
        remember(photoFile) {
            FileProvider.getUriForFile(
                context,
                "${context.packageName}.fileprovider",
                photoFile,
            )
        }

    // ========== CÁMARA CON TAKEPICTURE (RECOMENDADO PARA ALTA RESOLUCIÓN) ==========
    val cameraLauncher =
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.TakePicture(),
        ) { success: Boolean ->
            Log.d(TAG, "Cámara - Resultado: $success")
            if (success) {
                Log.d(TAG, "Cámara - Foto capturada en: ${photoFile.absolutePath}")
                onPhotoUpload(photoUri)
                // Forzar refresco después del upload
                refreshTrigger = System.currentTimeMillis()
                Log.d(TAG, "Refresh trigger actualizado: $refreshTrigger")
            }
        }

    // ========== PERMISOS ==========
    var hasCameraPermission by remember {
        mutableStateOf(
            ContextCompat.checkSelfPermission(
                context,
                CAMERA,
            ) == PERMISSION_GRANTED,
        )
    }

    val permissionLauncher =
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.RequestPermission(),
        ) { isGranted ->
            Log.d(TAG, "Permiso de cámara - ¿Concedido?: $isGranted")
            hasCameraPermission = isGranted
            if (isGranted) {
                Log.d(TAG, "Permiso concedido - lanzando cámara")
                cameraLauncher.launch(photoUri)
            } else {
                Log.w(TAG, "Permiso de cámara denegado")
            }
        }

    // ========== UI ==========
    Column(
        modifier =
            Modifier
                .fillMaxSize()
                .verticalScroll(rememberScrollState())
                .padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Card(
            modifier =
                Modifier
                    .fillMaxWidth()
                    .padding(bottom = 24.dp),
            shape = RoundedCornerShape(16.dp),
            elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
            colors =
                CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surface,
                ),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .padding(20.dp),
                horizontalAlignment = Alignment.CenterHorizontally,
            ) {
                Text(
                    text = stringResource(R.string.auto_foto_de_perfil_1),
                    fontSize = 18.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.padding(bottom = 16.dp),
                )

                Box(
                    modifier = Modifier.size(120.dp),
                    contentAlignment = Alignment.BottomEnd,
                ) {
                    val imageUrl: Any? =
                        if (fullImageUrl.isEmpty()) {
                            Log.d(TAG, "AsyncImage - Usando avatar por defecto (URL vacía)")
                            null
                        } else {
                            val urlWithTimestamp = "$fullImageUrl?t=$refreshTrigger"
                            Log.d(TAG, "AsyncImage - URL construida: $urlWithTimestamp")
                            urlWithTimestamp
                        }

                    // ✅ FORZAR REFRESH CON refreshTrigger
                    AsyncImage(
                        model =
                            ImageRequest
                                .Builder(LocalContext.current)
                                .data(imageUrl)
                                .crossfade(true)
                                .error(R.drawable.ic_default_avatar)
                                .placeholder(R.drawable.ic_default_avatar)
                                .diskCacheKey("$fullImageUrl$refreshTrigger")
                                .listener(
                                    onStart = { request ->
                                        Log.d(TAG, "AsyncImage - Iniciando carga: ${request.data}")
                                    },
                                    onSuccess = { request, metadata ->
                                        Log.d(TAG, "AsyncImage - Éxito al cargar imagen: ${request.data}")
                                    },
                                    onError = { request, throwable ->
                                        Log.e(TAG, "AsyncImage - Error al cargar imagen: ${request.data}")
                                    },
                                ).build(),
                        imageLoader = imageLoader,
                        contentDescription = stringResource(R.string.auto_foto_de_perfil),
                        modifier =
                            Modifier
                                .fillMaxSize()
                                .clip(CircleShape)
                                .border(
                                    BorderStroke(3.dp, MaterialTheme.colorScheme.primary),
                                    CircleShape,
                                ),
                        contentScale = ContentScale.Crop,
                    )

                    FloatingActionButton(
                        onClick = {
                            Log.d(TAG, "Botón cámara clickeado - Mostrando opciones")
                            showOptions = true
                        },
                        modifier = Modifier.size(40.dp),
                        containerColor = MaterialTheme.colorScheme.primary,
                        contentColor = Color.White,
                    ) {
                        Icon(
                            Icons.Default.CameraAlt,
                            contentDescription = stringResource(R.string.auto_cambiar_foto),
                            modifier = Modifier.size(20.dp),
                        )
                    }
                }

                Text(
                    text = "${perfil.usuario?.nombre} ${perfil.usuario?.apellido}",
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.padding(top = 12.dp),
                )

                Text(
                    text = perfil.usuario?.email ?: "Email no disponible",
                    fontSize = 14.sp,
                    color = Color.Gray,
                )
            }
        }

        Card(
            modifier = Modifier.fillMaxWidth(),
            shape = RoundedCornerShape(16.dp),
            elevation = CardDefaults.cardElevation(defaultElevation = 4.dp),
            colors =
                CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surface,
                ),
        ) {
            Column(
                modifier =
                    Modifier
                        .fillMaxWidth()
                        .padding(20.dp),
            ) {
                Text(
                    text = stringResource(R.string.auto_informacion_profesional),
                    fontSize = 18.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.padding(bottom = 16.dp),
                )

                InfoRow(
                    icon = Icons.Default.Work,
                    label = stringResource(R.string.auto_especialidad_1),
                    value = perfil.especialidad ?: "No especificada",
                )

                Spacer(modifier = Modifier.height(12.dp))

                InfoRow(
                    icon = Icons.Default.Timeline,
                    label = stringResource(R.string.auto_experiencia_1),
                    value = if (perfil.experiencia != null) "${perfil.experiencia} años" else "No especificada",
                )

                Spacer(modifier = Modifier.height(12.dp))

                InfoRow(
                    icon = Icons.Default.Badge,
                    label = stringResource(R.string.auto_numero_de_licencia_1),
                    value = perfil.licencia ?: "No especificada",
                )

                Spacer(modifier = Modifier.height(16.dp))

                Text(
                    text = stringResource(R.string.auto_descripcion_1),
                    fontSize = 14.sp,
                    fontWeight = FontWeight.Medium,
                    color = MaterialTheme.colorScheme.primary,
                )
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = perfil.descripcion ?: "Sin descripción disponible",
                    fontSize = 14.sp,
                    color = Color.DarkGray,
                    lineHeight = 20.sp,
                )
            }
        }

        Spacer(modifier = Modifier.height(16.dp))

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            OutlinedButton(
                onClick = {
                    perfil.idPsicologo?.let { id ->
                        navController.navigate(
                            Screens.editProfilePsicologo.createRoute(id),
                        )
                    }
                },
                modifier = Modifier.weight(1f),
                shape = RoundedCornerShape(12.dp),
            ) {
                Icon(Icons.Default.Edit, contentDescription = null)
                Spacer(modifier = Modifier.width(8.dp))
                Text(stringResource(R.string.auto_editar_perfil))
            }

            Button(
                onClick = {
                    navController.popBackStack()
                },
                modifier = Modifier.weight(1f),
                shape = RoundedCornerShape(12.dp),
            ) {
                Icon(Icons.Default.Settings, contentDescription = null)
                Spacer(modifier = Modifier.width(8.dp))
                Text(stringResource(R.string.auto_cancelar))
            }
        }
    }

    // Diálogo para seleccionar origen de la foto
    if (showOptions) {
        Log.d(TAG, "Mostrando diálogo de opciones de foto")
        AlertDialog(
            onDismissRequest = {
                Log.d(TAG, "Diálogo cerrado sin selección")
                showOptions = false
            },
            title = { Text(stringResource(R.string.auto_cambiar_foto_de_perfil)) },
            text = { Text(stringResource(R.string.auto_selecciona_una_opcion_para_2)) },
            confirmButton = {
                TextButton(
                    onClick = {
                        Log.d(TAG, "Opción Galería seleccionada")
                        showOptions = false
                        galleryLauncher.launch("image/*")
                    },
                ) {
                    Text(stringResource(R.string.auto_galeria_1))
                }
            },
            dismissButton = {
                TextButton(
                    onClick = {
                        Log.d(TAG, "Opción Cámara seleccionada")
                        showOptions = false
                        if (hasCameraPermission) {
                            Log.d(TAG, "Permiso de cámara ya concedido, lanzando cámara")
                            cameraLauncher.launch(photoUri)
                        } else {
                            Log.d(TAG, "Solicitando permiso de cámara")
                            permissionLauncher.launch(android.Manifest.permission.CAMERA)
                        }
                    },
                ) {
                    Text(stringResource(R.string.auto_camara_1))
                }
            },
        )
    }
}

/**
 * Fila informativa con icono, etiqueta y valor para los datos del psicólogo.
 *
 * @param icon Icono vectorial representativo del campo.
 * @param label Etiqueta descriptiva del campo.
 * @param value Valor del campo a mostrar.
 */
@Composable
fun InfoRow(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    label: String,
    value: String,
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Icon(
            imageVector = icon,
            contentDescription = null,
            tint = MaterialTheme.colorScheme.primary,
            modifier = Modifier.size(24.dp),
        )
        Spacer(modifier = Modifier.width(12.dp))
        Column {
            Text(
                text = label,
                fontSize = 12.sp,
                color = Color.Gray,
            )
            Text(
                text = value,
                fontSize = 14.sp,
                fontWeight = FontWeight.Medium,
            )
        }
    }
}

/**
 * Pantalla de error con mensaje y botón de reintento para el perfil del psicólogo.
 *
 * @param error Mensaje descriptivo del error.
 * @param onRetry Callback invocado al pulsar el botón de reintento.
 */
@Composable
fun ErrorContent(
    error: String,
    onRetry: () -> Unit,
) {
    Log.e(TAG, "ErrorContent mostrando error: $error")

    Column(
        modifier =
            Modifier
                .fillMaxSize()
                .padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Icon(
            imageVector = Icons.Default.Error,
            contentDescription = null,
            modifier = Modifier.size(64.dp),
            tint = MaterialTheme.colorScheme.error,
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(
            text = stringResource(R.string.auto_error_al_cargar_el),
            fontSize = 18.sp,
            fontWeight = FontWeight.Bold,
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(
            text = error,
            fontSize = 14.sp,
            color = Color.Gray,
            textAlign = TextAlign.Center,
        )
        Spacer(modifier = Modifier.height(24.dp))
        Button(
            onClick = {
                Log.d(TAG, "Botón Reintentar clickeado")
                onRetry()
            },
            shape = RoundedCornerShape(12.dp),
        ) {
            Icon(Icons.Default.Refresh, contentDescription = null)
            Spacer(modifier = Modifier.width(8.dp))
            Text(stringResource(R.string.auto_reintentar))
        }
    }
}
