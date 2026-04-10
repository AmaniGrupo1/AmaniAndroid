package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Send
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.core.content.ContextCompat
import coil.compose.AsyncImage
import org.ies.tierno.applicationamani.domain.models.AttachmentType
import org.ies.tierno.applicationamani.domain.models.Message
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackStatus
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackUiState
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors
import java.text.SimpleDateFormat
import java.util.*

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ChatScreen(
    currentUserId: Long,
    otherUserId: Long,
    viewModel: ChatViewModel,
    currentUserRol: String,
    otherUserName: String,
    onNavigateBack: () -> Unit
) {
    val colors = MaterialTheme.colorScheme
    val typography = MaterialTheme.typography
    val amaniColors = LocalAmaniColors.current
    val messages by viewModel.messages.collectAsState()
    val isLoading by viewModel.isLoading.collectAsState()
    val isSending by viewModel.isSending.collectAsState()
    val audioUiState by viewModel.audioUiState.collectAsState()
    val listState = rememberLazyListState()
    val context = LocalContext.current
    val error by viewModel.error.collectAsState()

    var messageText by rememberSaveable { mutableStateOf("") }
    val isRecording by viewModel.isRecording.collectAsState()
    val audioHandler = remember { AudioHandler(context) }

    // Mostrar errores
    LaunchedEffect(error) {
        error?.let {
            Toast.makeText(context, it, Toast.LENGTH_SHORT).show()
            viewModel.clearError()
        }
    }

    DisposableEffect(Unit) {
        onDispose {
            viewModel.releaseAudioPlayer()
        }
    }

    val imagePickerLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        uri?.let {
            viewModel.sendAttachment(it)
        }
    }

    val documentPickerLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        uri?.let {
            viewModel.sendAttachment(it)
        }
    }

    val permissionLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.RequestPermission()
    ) { isGranted ->
        if (isGranted) {
            val file = audioHandler.startRecording()
            if (file != null) {
                viewModel.startRecording()
            } else {
                Toast.makeText(context, "Error al iniciar la grabación", Toast.LENGTH_SHORT).show()
            }
        } else {
            Toast.makeText(context, "Permiso de micrófono requerido", Toast.LENGTH_SHORT).show()
        }
    }

    LaunchedEffect(messages.size) {
        if (messages.isNotEmpty()) {
            listState.animateScrollToItem(messages.size - 1)
        }
    }

    Scaffold(
        containerColor = amaniColors.screenBackground,
        topBar = {
            TopAppBar(
                title = {
                    Column {
                        Text(otherUserName, style = typography.titleMedium, fontWeight = FontWeight.SemiBold)
                        Text(
                            text = if (currentUserRol.lowercase().contains("paciente")) "Psicólogo" else "Paciente",
                            style = typography.labelSmall,
                            color = colors.onSurfaceVariant
                        )
                    }
                },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Volver"
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = colors.surface,
                    titleContentColor = colors.onSurface
                )
            )
        }
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            Box(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxWidth()
            ) {
                if (isLoading) {
                    CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
                } else if (messages.isEmpty()) {
                    Surface(
                        modifier = Modifier
                            .align(Alignment.Center)
                            .padding(24.dp),
                        shape = MaterialTheme.shapes.large,
                        color = colors.surface,
                        tonalElevation = 2.dp
                    ) {
                        Text(
                            text = "No hay mensajes. ¡Envía el primero!",
                            modifier = Modifier.padding(horizontal = 20.dp, vertical = 24.dp),
                            style = typography.bodyLarge,
                            textAlign = TextAlign.Center,
                            color = colors.onSurfaceVariant
                        )
                    }
                } else {
                    LazyColumn(
                        state = listState,
                        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
                        verticalArrangement = Arrangement.spacedBy(10.dp)
                    ) {
                        items(messages) { message ->
                            val isPlayingThisMessage =
                                audioUiState.activeMessageId == message.id &&
                                    audioUiState.status == AudioPlaybackStatus.PLAYING

                            MessageBubble(
                                message = message,
                                isCurrentUser = message.senderId == currentUserId.toString(),
                                isPlaying = isPlayingThisMessage,
                                audioUiState = audioUiState,
                                onPlayClick = {
                                    message.attachmentUrl?.let { url ->
                                        viewModel.toggleAudioPlayback(message.id, url)
                                    }
                                }
                            )
                        }
                    }
                }
            }

            MessageInput(
                text = messageText,
                onTextChange = { messageText = it },
                onSend = {
                    if (messageText.isNotBlank()) {
                        viewModel.sendTextMessage(messageText)
                        messageText = ""
                    }
                },
                onAttachImage = { imagePickerLauncher.launch("image/*") },
                onAttachFile = { documentPickerLauncher.launch("*/*") },
                onRecordVoice = {
                    if (isRecording) {
                        // Detener y obtener el archivo antes de subir
                        val file = audioHandler.stopRecording()
                        if (file != null) {
                            viewModel.stopRecordingAndSend(file)
                        } else {
                            Toast.makeText(context, "Error al detener la grabación", Toast.LENGTH_SHORT).show()
                        }
                    } else {
                        if (ContextCompat.checkSelfPermission(
                                context,
                                Manifest.permission.RECORD_AUDIO
                            ) == PackageManager.PERMISSION_GRANTED
                        ) {
                            val file = audioHandler.startRecording()
                            if (file != null) {
                                viewModel.startRecording()
                            } else {
                                Toast.makeText(
                                    context,
                                    "Error al iniciar la grabación",
                                    Toast.LENGTH_SHORT
                                ).show()
                            }
                        } else {
                            permissionLauncher.launch(Manifest.permission.RECORD_AUDIO)
                        }
                    }
                },
                isRecording = isRecording,
                isSending = isSending
            )
        }
    }
}

@Composable
private fun MessageBubble(
    message: Message,
    isCurrentUser: Boolean,
    isPlaying: Boolean,
    audioUiState: AudioPlaybackUiState,
    onPlayClick: () -> Unit
) {
    val bubbleColor = if (isCurrentUser) {
        MaterialTheme.colorScheme.primary
    } else {
        MaterialTheme.colorScheme.surface
    }

    val textColor = if (isCurrentUser) {
        MaterialTheme.colorScheme.onPrimary
    } else {
        MaterialTheme.colorScheme.onSurface
    }

    val attachmentContainerColor = if (isCurrentUser) {
        MaterialTheme.colorScheme.onPrimary.copy(alpha = 0.14f)
    } else {
        MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.45f)
    }

    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = if (isCurrentUser) Arrangement.End else Arrangement.Start
    ) {
        Card(
            modifier = Modifier.widthIn(max = 300.dp),
            shape = RoundedCornerShape(
                topStart = 18.dp,
                topEnd = 18.dp,
                bottomStart = if (isCurrentUser) 18.dp else 4.dp,
                bottomEnd = if (isCurrentUser) 4.dp else 18.dp
            ),
            colors = CardDefaults.cardColors(containerColor = bubbleColor),
            elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
        ) {
            Column(
                modifier = Modifier.padding(12.dp)
            ) {
                if (message.content.isNotBlank()) {
                    Text(
                        text = message.content,
                        color = textColor,
                        style = MaterialTheme.typography.bodyMedium
                    )
                }

                message.attachmentUrl?.let { url ->
                    val context = LocalContext.current
                    Spacer(modifier = Modifier.height(8.dp))
                    when (message.attachmentType) {
                        AttachmentType.IMAGE -> {
                            AsyncImage(
                                model = url,
                                contentDescription = "Imagen adjunta",
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .height(200.dp)
                                    .clip(RoundedCornerShape(12.dp))
                                    .clickable {
                                        val intent = Intent(Intent.ACTION_VIEW, Uri.parse(url))
                                        context.startActivity(intent)
                                    }
                            )
                        }
                        AttachmentType.AUDIO -> {
                            val isActiveAudio = audioUiState.activeMessageId == message.id
                            val progress = if (
                                isActiveAudio && audioUiState.durationMs > 0
                            ) {
                                audioUiState.positionMs.toFloat() / audioUiState.durationMs.toFloat()
                            } else {
                                0f
                            }

                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                modifier = Modifier
                                    .clip(RoundedCornerShape(12.dp))
                                    .background(attachmentContainerColor)
                                    .clickable { onPlayClick() }
                                    .padding(12.dp)
                            ) {
                                Icon(
                                    imageVector = if (isPlaying) Icons.Default.Pause else Icons.Default.PlayArrow,
                                    contentDescription = if (isPlaying) "Pausar" else "Reproducir",
                                    tint = textColor,
                                    modifier = Modifier.size(32.dp)
                                )
                                Spacer(modifier = Modifier.width(12.dp))
                                Column(modifier = Modifier.weight(1f)) {
                                    Text(
                                        text = when {
                                            isPlaying -> "Reproduciendo..."
                                            isActiveAudio && audioUiState.status == AudioPlaybackStatus.LOADING -> "Cargando audio..."
                                            isActiveAudio && audioUiState.status == AudioPlaybackStatus.ERROR -> "Error al reproducir"
                                            else -> "Nota de voz"
                                        },
                                        color = textColor,
                                        style = MaterialTheme.typography.bodySmall
                                    )
                                    Spacer(modifier = Modifier.height(6.dp))
                                    LinearProgressIndicator(
                                        progress = { progress.coerceIn(0f, 1f) },
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .height(4.dp)
                                            .clip(RoundedCornerShape(2.dp)),
                                        color = textColor,
                                        trackColor = textColor.copy(alpha = 0.3f)
                                    )
                                }
                            }
                        }
                        AttachmentType.DOCUMENT -> {
                            Row(
                                verticalAlignment = Alignment.CenterVertically,
                                modifier = Modifier
                                    .clip(RoundedCornerShape(12.dp))
                                    .background(attachmentContainerColor)
                                    .clickable {
                                        val intent = Intent(Intent.ACTION_VIEW, Uri.parse(url))
                                        context.startActivity(intent)
                                    }
                                    .padding(12.dp)
                            ) {
                                Icon(
                                    imageVector = Icons.Default.AttachFile,
                                    contentDescription = "Documento adjunto",
                                    tint = textColor,
                                    modifier = Modifier.size(24.dp)
                                )
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(
                                    text = message.attachmentName ?: "Documento",
                                    color = textColor,
                                    style = MaterialTheme.typography.bodySmall
                                )
                            }
                        }
                        null -> {}
                    }
                }

                Spacer(modifier = Modifier.height(6.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.End
                ) {
                    Text(
                        text = formatTime(message.timestamp),
                        style = MaterialTheme.typography.labelSmall,
                        color = textColor.copy(alpha = 0.72f)
                    )
                }
            }
        }
    }
}

@Composable
private fun MessageInput(
    text: String,
    onTextChange: (String) -> Unit,
    onSend: () -> Unit,
    onAttachImage: () -> Unit,
    onAttachFile: () -> Unit,
    onRecordVoice: () -> Unit,
    isRecording: Boolean,
    isSending: Boolean
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.surface,
        shadowElevation = 8.dp
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 8.dp, vertical = 8.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            IconButton(onClick = onAttachImage) {
                Icon(
                    imageVector = Icons.Default.Image,
                    contentDescription = "Adjuntar imagen",
                    tint = MaterialTheme.colorScheme.primary
                )
            }

            IconButton(onClick = onAttachFile) {
                Icon(
                    imageVector = Icons.Default.AttachFile,
                    contentDescription = "Adjuntar archivo",
                    tint = MaterialTheme.colorScheme.primary
                )
            }

            OutlinedTextField(
                value = text,
                onValueChange = onTextChange,
                modifier = Modifier.weight(1f),
                placeholder = { Text("Escribe un mensaje...") },
                shape = RoundedCornerShape(24.dp),
                maxLines = 4,
                colors = OutlinedTextFieldDefaults.colors(
                    focusedBorderColor = MaterialTheme.colorScheme.primary,
                    unfocusedBorderColor = MaterialTheme.colorScheme.outline,
                    focusedContainerColor = MaterialTheme.colorScheme.surfaceVariant,
                    unfocusedContainerColor = MaterialTheme.colorScheme.surfaceVariant
                )
            )

            Spacer(modifier = Modifier.width(8.dp))

            AnimatedVisibility(
                visible = isRecording,
                enter = fadeIn(),
                exit = fadeOut()
            ) {
                IconButton(
                    onClick = onRecordVoice,
                    modifier = Modifier
                        .size(48.dp)
                        .clip(RoundedCornerShape(24.dp))
                        .background(MaterialTheme.colorScheme.errorContainer)
                ) {
                    Icon(
                        imageVector = Icons.Default.Stop,
                        contentDescription = "Detener grabación",
                        tint = MaterialTheme.colorScheme.onErrorContainer
                    )
                }
            }

            AnimatedVisibility(
                visible = !isRecording && !isSending,
                enter = fadeIn(),
                exit = fadeOut()
            ) {
                IconButton(
                    onClick = onRecordVoice,
                    modifier = Modifier
                        .size(48.dp)
                        .clip(RoundedCornerShape(24.dp))
                        .background(MaterialTheme.colorScheme.secondaryContainer)
                ) {
                    Icon(
                        imageVector = Icons.Default.Mic,
                        contentDescription = "Grabar nota de voz",
                        tint = MaterialTheme.colorScheme.onSecondaryContainer
                    )
                }
            }

            if (isSending) {
                CircularProgressIndicator(
                    modifier = Modifier.size(24.dp),
                    strokeWidth = 2.dp,
                    color = MaterialTheme.colorScheme.primary
                )
                Spacer(modifier = Modifier.width(8.dp))
            }

            IconButton(
                onClick = onSend,
                enabled = text.isNotBlank() && !isSending
            ) {
                Icon(
                    imageVector = Icons.AutoMirrored.Filled.Send,
                    contentDescription = "Enviar",
                    tint = if (text.isNotBlank() && !isSending)
                        MaterialTheme.colorScheme.primary
                    else
                        MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

private fun formatTime(timestamp: Long): String {
    if (timestamp == 0L) return ""
    val sdf = SimpleDateFormat("HH:mm", Locale.getDefault())
    return sdf.format(Date(timestamp))
}
