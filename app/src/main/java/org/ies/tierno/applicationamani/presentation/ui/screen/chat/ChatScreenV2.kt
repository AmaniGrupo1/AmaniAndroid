// ui/chat/ChatScreenV2.kt
package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.imePadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.wrapContentHeight
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Send
import androidx.compose.material.icons.filled.AttachFile
import androidx.compose.material3.CenterAlignedTopAppBar
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.SnackbarResult
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.material3.TextFieldDefaults
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil.compose.AsyncImage
import coil.request.ImageRequest
import kotlinx.coroutines.flow.collectLatest
import org.ies.tierno.applicationamani.domain.models.ChatMessage
import org.ies.tierno.applicationamani.domain.models.MessageContent
import androidx.compose.ui.res.painterResource
import androidx.compose.foundation.Image
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatEvent
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiStateV2
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.UploadState
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.StatusIcon
import androidx.compose.foundation.layout.wrapContentWidth
import org.ies.tierno.applicationamani.domain.models.MessageStatus
import org.ies.tierno.applicationamani.domain.repository.MediaType
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModelV2
import java.time.Instant
import java.time.LocalDate
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import java.util.Locale
import androidx.compose.material3.SuggestionChip
import androidx.compose.ui.unit.sp

sealed class ChatV2ListItem {
    data class MessageItem(val msg: ChatMessage) : ChatV2ListItem()
    data class DateSeparator(val label: String) : ChatV2ListItem()
}

/*
 * Por qué reverseLayout = true en LazyColumn:
 * Los nuevos mensajes se añaden al FINAL de la lista. Con reverseLayout=true, el índice 0
 * del LazyColumn apunta al ÚLTIMO elemento de la lista de datos, por lo que `scrollToItem(0)`
 * siempre lleva al mensaje más reciente sin necesidad de calcular el tamaño de la lista.
 */

/**
 * Pantalla de chat refactorizada con paginación, soporte offline y gestión de multimedia.
 *
 * @param viewModel ViewModel inyectado por Koin con [ChatViewModelV2].
 * @param onNavigateBack Callback ejecutado al pulsar el botón de retroceso.
 * @param otherUserName Nombre del interlocutor para mostrar en la cabecera.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ChatScreenV2(
    viewModel: ChatViewModelV2,
    onNavigateBack: () -> Unit,
    otherUserName: String = "",
) {
    val state by viewModel.uiState.collectAsStateWithLifecycle()
    val listState = rememberLazyListState()
    val snackbarHostState = remember { SnackbarHostState() }

    val chatItems = remember(state.messages) {
        val sortedAsc = state.messages.sortedBy { it.timestamp }
        val items = mutableListOf<ChatV2ListItem>()
        var lastDate: LocalDate? = null

        for (msg in sortedAsc) {
            val messageDate = Instant.ofEpochMilli(msg.timestamp)
                .atZone(ZoneId.systemDefault())
                .toLocalDate()

            if (lastDate != messageDate) {
                lastDate = messageDate
                val label = when {
                    messageDate == LocalDate.now() -> "Hoy"
                    messageDate == LocalDate.now().minusDays(1) -> "Ayer"
                    else -> messageDate.format(DateTimeFormatter.ofPattern("d MMM yyyy", Locale.forLanguageTag("es")))
                }
                items.add(ChatV2ListItem.DateSeparator(label))
            }

            items.add(ChatV2ListItem.MessageItem(msg))
        }
        items.reversed()
    }

    // ── Trigger de paginación ─────────────────────────────────────────────────
    // derivedStateOf evita recomposiciones: solo re-evalúa cuando firstVisibleItemIndex cambia.
    val shouldLoadMore by remember {
        derivedStateOf { listState.firstVisibleItemIndex <= 3 }
    }

    LaunchedEffect(shouldLoadMore) {
        if (shouldLoadMore && state.hasMoreMessages && !state.isLoadingMore) {
            viewModel.loadOlderMessages()
        }
    }

    // ── Eventos de un solo disparo ────────────────────────────────────────────
    // key = viewModel: si la instancia del ViewModel cambia (hot reload, recreación),
    // se cancela el collector anterior y se crea uno nuevo ligado al nuevo ViewModel.
    LaunchedEffect(viewModel) {
        viewModel.events.collectLatest { event ->
            when (event) {
                is ChatEvent.ScrollToBottom -> {
                    if (state.messages.isNotEmpty()) {
                        listState.animateScrollToItem(0) // índice 0 = más reciente con reverseLayout
                    }
                }

                is ChatEvent.ShowSnackbar -> {
                    val result = snackbarHostState.showSnackbar(
                        message = event.message,
                        actionLabel = event.actionLabel,
                        duration = SnackbarDuration.Long,
                    )
                    if (result == SnackbarResult.ActionPerformed) {
                        viewModel.resetUploadState()
                    }
                }
            }
        }
    }

    // ── Picker de archivos ────────────────────────────────────────────────────
    var pendingAttachmentUri by remember { mutableStateOf<Uri?>(null) }
    
    val fileLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent(),
    ) { uri: Uri? ->
        uri?.let { pendingAttachmentUri = it }
    }

    val context = androidx.compose.ui.platform.LocalContext.current
    val audioHandler = remember { AudioHandler(context) }
    val isRecording by audioHandler.isRecording.collectAsStateWithLifecycle()
    val recordingSeconds by audioHandler.recordingSeconds.collectAsStateWithLifecycle()

    val recordPermissionLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.RequestPermission()
    ) { isGranted ->
        if (isGranted) {
            audioHandler.startRecording()
        }
    }

    var text by remember { mutableStateOf("") }

    Scaffold(
        modifier = Modifier
            .fillMaxSize()
            .imePadding(),
        topBar = {
            ChatTopBarV2(
                title = otherUserName.ifBlank { "Chat" },
                onNavigateBack = onNavigateBack,
            )
        },
        bottomBar = {
            Column {
                // Indicador de progreso de subida
                UploadProgressBar(uploadState = state.uploadState)

                MessageInput(
                    text = text,
                    onTextChange = { text = it },
                    onSend = {
                        if (pendingAttachmentUri != null) {
                            viewModel.sendMedia(pendingAttachmentUri!!, MediaType.IMAGE, text)
                            pendingAttachmentUri = null
                        } else {
                            viewModel.sendText(text)
                        }
                        text = ""
                    },
                    onMicClick = {
                        val permission = android.Manifest.permission.RECORD_AUDIO
                        val isGranted = androidx.core.content.ContextCompat.checkSelfPermission(
                            context, permission
                        ) == android.content.pm.PackageManager.PERMISSION_GRANTED
                        if (isGranted) {
                            audioHandler.startRecording()
                        } else {
                            recordPermissionLauncher.launch(permission)
                        }
                    },
                    onAttachFile = { fileLauncher.launch("image/*") },
                    onStopRecording = {
                        val file = audioHandler.stopRecording()
                        if (file != null) {
                            val uri = Uri.fromFile(file)
                            viewModel.sendMedia(uri, MediaType.AUDIO)
                        }
                    },
                    isRecording = isRecording,
                    recordingSeconds = recordingSeconds,
                    pendingAttachmentUri = pendingAttachmentUri,
                    onClearAttachment = { pendingAttachmentUri = null }
                )
            }
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(MaterialTheme.colorScheme.background)
                .padding(paddingValues),
        ) {
            when {
                state.isLoadingInitial -> {
                    CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
                }

                state.messages.isEmpty() -> {
                    Text(
                        text = "Aún no hay mensajes. ¡Empieza la conversación!",
                        modifier = Modifier.align(Alignment.Center),
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }

                else -> {
                    Column(modifier = Modifier.fillMaxSize()) {
                        // Indicador de carga de mensajes antiguos en la parte superior
                        AnimatedVisibility(
                            visible = state.isLoadingMore,
                            enter = fadeIn(),
                            exit = fadeOut(),
                        ) {
                            LinearProgressIndicator(modifier = Modifier.fillMaxWidth())
                        }

                        LazyColumn(
                            modifier = Modifier.fillMaxSize(),
                            state = listState,
                            reverseLayout = true,
                            contentPadding = PaddingValues(horizontal = 12.dp, vertical = 16.dp),
                            verticalArrangement = Arrangement.spacedBy(4.dp),
                        ) {
                            items(
                                items = chatItems,
                                key = { item -> 
                                    when(item) {
                                        is ChatV2ListItem.MessageItem -> item.msg.id
                                        is ChatV2ListItem.DateSeparator -> "sep_${item.label}"
                                    }
                                },
                            ) { item ->
                                when (item) {
                                    is ChatV2ListItem.DateSeparator -> {
                                        DateSeparatorChipV2(item.label)
                                    }
                                    is ChatV2ListItem.MessageItem -> {
                                        MessageBubbleV2(
                                            message = item.msg,
                                            isOwnMessage = item.msg.senderId == viewModel.currentUserId,
                                            audioUiState = state.audioUiState,
                                            onPlayPause = { messageId, url ->
                                                viewModel.toggleAudioPlayback(messageId, url)
                                            }
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

// ─── TopBar ────────────────────────────────────────────────────────────────────

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun ChatTopBarV2(
    title: String,
    onNavigateBack: () -> Unit,
) {
    CenterAlignedTopAppBar(
        title = {
            Text(
                text = title,
                style = MaterialTheme.typography.titleMedium,
            )
        },
        navigationIcon = {
            IconButton(onClick = onNavigateBack) {
                Icon(
                    imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                    contentDescription = "Volver",
                )
            }
        },
        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = MaterialTheme.colorScheme.surface,
        ),
        windowInsets = WindowInsets(0, 0, 0, 0),
    )
}

@Composable
private fun DateSeparatorChipV2(label: String) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.Center,
    ) {
        SuggestionChip(
            onClick = { },
            shape = MaterialTheme.shapes.small,
            label = {
                Text(
                    text = label,
                    style = MaterialTheme.typography.labelSmall,
                )
            },
        )
    }
}

// ─── Burbuja de mensaje ────────────────────────────────────────────────────────

/**
 * Burbuja de mensaje que adapta su alineación y color al remitente.
 *
 * Renderiza el contenido tipado ([MessageContent]) de forma exhaustiva:
 * Text, Image y Audio tienen su propio composable hijo.
 */
@Composable
private fun MessageBubbleV2(
    message: ChatMessage,
    isOwnMessage: Boolean,
    audioUiState: org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackUiState,
    onPlayPause: (String, String) -> Unit,
) {
    val alignment = if (isOwnMessage) Alignment.End else Alignment.Start
    val bubbleColor = if (isOwnMessage) {
        MaterialTheme.colorScheme.primary
    } else {
        MaterialTheme.colorScheme.surfaceVariant
    }
    val textColor = if (isOwnMessage) {
        MaterialTheme.colorScheme.onPrimary
    } else {
        MaterialTheme.colorScheme.onSurfaceVariant
    }

    Column(
        modifier = Modifier.fillMaxWidth(),
        horizontalAlignment = alignment,
    ) {
        Surface(
            shape = RoundedCornerShape(
                topStart = 16.dp,
                topEnd = 16.dp,
                bottomStart = if (isOwnMessage) 16.dp else 4.dp,
                bottomEnd = if (isOwnMessage) 4.dp else 16.dp,
            ),
            color = bubbleColor,
            modifier = Modifier.wrapContentHeight(),
        ) {
            val timeString = remember(message.timestamp) {
                Instant.ofEpochMilli(message.timestamp)
                    .atZone(ZoneId.systemDefault())
                    .toLocalTime()
                    .format(DateTimeFormatter.ofPattern("HH:mm"))
            }
            
            Column {
                when (val content = message.content) {
                    is MessageContent.Text -> {
                        Column(modifier = Modifier.padding(start = 12.dp, top = 8.dp, end = 12.dp, bottom = 6.dp)) {
                            Text(
                                text = content.body,
                                color = textColor,
                                style = MaterialTheme.typography.bodyMedium,
                            )
                            if (message.status == MessageStatus.FAILED) {
                                Text(
                                    text = "⚠ No enviado",
                                    color = MaterialTheme.colorScheme.error,
                                    style = MaterialTheme.typography.labelSmall,
                                )
                            }
                            Spacer(modifier = Modifier.height(2.dp))
                            Row(
                                modifier = Modifier.wrapContentWidth().align(Alignment.End).padding(top = 2.dp),
                                horizontalArrangement = Arrangement.End,
                                verticalAlignment = Alignment.CenterVertically,
                            ) {
                                Text(
                                    text = timeString,
                                    style = MaterialTheme.typography.labelSmall.copy(fontSize = 10.sp),
                                    color = textColor.copy(alpha = 0.7f)
                                )
                                if (isOwnMessage) {
                                    Spacer(modifier = Modifier.width(4.dp))
                                    StatusIcon(isRead = message.status == MessageStatus.READ, isDelivered = message.status == MessageStatus.SENT, tint = textColor.copy(alpha = 0.7f))
                                }
                            }
                        }
                    }

                    is MessageContent.Image -> {
                        Column {
                            Box(modifier = Modifier.padding(2.dp)) {
                                AsyncImage(
                                    model = ImageRequest.Builder(androidx.compose.ui.platform.LocalContext.current)
                                        .data(content.storageRef)
                                        .crossfade(true)
                                        .build(),
                                    contentDescription = "Imagen adjunta",
                                    contentScale = ContentScale.Crop,
                                    placeholder = androidx.compose.ui.graphics.painter.ColorPainter(
                                        MaterialTheme.colorScheme.surfaceVariant,
                                    ),
                                    error = androidx.compose.ui.graphics.painter.ColorPainter(
                                        MaterialTheme.colorScheme.errorContainer,
                                    ),
                                    modifier = Modifier
                                        .size(240.dp)
                                        .clip(RoundedCornerShape(
                                            topStart = 14.dp,
                                            topEnd = 14.dp,
                                            bottomStart = if (isOwnMessage) 14.dp else 2.dp,
                                            bottomEnd = if (isOwnMessage) 2.dp else 14.dp,
                                        )),
                                )
                                // Solo mostramos el timestamp flotante oscuro si NO hay texto (estilo WhatsApp)
                                if (content.caption.isBlank()) {
                                    Row(
                                        modifier = Modifier
                                            .align(Alignment.BottomEnd)
                                            .padding(6.dp)
                                            .background(
                                                color = Color.Black.copy(alpha = 0.4f), 
                                                shape = RoundedCornerShape(12.dp)
                                            )
                                            .padding(horizontal = 6.dp, vertical = 2.dp),
                                        verticalAlignment = Alignment.CenterVertically
                                    ) {
                                        Text(
                                            text = timeString,
                                            style = MaterialTheme.typography.labelSmall.copy(fontSize = 10.sp),
                                            color = Color.White
                                        )
                                        if (isOwnMessage) {
                                            Spacer(modifier = Modifier.width(4.dp))
                                            StatusIcon(isRead = message.status == MessageStatus.READ, isDelivered = message.status == MessageStatus.SENT, tint = Color.White)
                                        }
                                    }
                                }
                            }
                            if (content.caption.isNotBlank()) {
                                Column(modifier = Modifier.padding(start = 12.dp, top = 4.dp, end = 12.dp, bottom = 6.dp)) {
                                    Text(
                                        text = content.caption,
                                        color = textColor,
                                        style = MaterialTheme.typography.bodyMedium,
                                        modifier = Modifier.widthIn(max = 240.dp)
                                    )
                                    Spacer(modifier = Modifier.height(2.dp))
                                    Row(
                                        modifier = Modifier.wrapContentWidth().align(Alignment.End),
                                        horizontalArrangement = Arrangement.End,
                                        verticalAlignment = Alignment.CenterVertically,
                                    ) {
                                        Text(
                                            text = timeString,
                                            style = MaterialTheme.typography.labelSmall.copy(fontSize = 10.sp),
                                            color = textColor.copy(alpha = 0.7f)
                                        )
                                        if (isOwnMessage) {
                                            Spacer(modifier = Modifier.width(4.dp))
                                            StatusIcon(isRead = message.status == MessageStatus.READ, isDelivered = message.status == MessageStatus.SENT, tint = textColor.copy(alpha = 0.7f))
                                        }
                                    }
                                }
                            }
                        }
                    }

                    is MessageContent.Audio -> {
                        Column(modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp)) {
                            AudioBubbleV2(
                                message = message,
                                isOwn = isOwnMessage,
                                audioUiState = audioUiState,
                                onPlayPause = onPlayPause,
                            )
                            Spacer(modifier = Modifier.height(4.dp))
                            Row(
                                modifier = Modifier.wrapContentWidth().align(Alignment.End),
                                horizontalArrangement = Arrangement.End,
                                verticalAlignment = Alignment.CenterVertically,
                            ) {
                                Text(
                                    text = timeString,
                                    style = MaterialTheme.typography.labelSmall.copy(fontSize = 10.sp),
                                    color = textColor.copy(alpha = 0.7f)
                                )
                                if (isOwnMessage) {
                                    Spacer(modifier = Modifier.width(4.dp))
                                    StatusIcon(isRead = message.status == MessageStatus.READ, isDelivered = message.status == MessageStatus.SENT, tint = textColor.copy(alpha = 0.7f))
                                }
                            }
                        }
                    }
                }
            } // Fin de Column interior
        } // Fin de Surface

        // Indicador de estado del mensaje
        if (message.status == MessageStatus.SENDING) {
            Text(
                text = "Enviando…",
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.padding(horizontal = 4.dp, vertical = 2.dp),
            )
        }
    }
}



// ─── Indicador de progreso de subida ─────────────────────────────────────────

/**
 * Barra de progreso animada que se muestra mientras se sube un archivo.
 * Desaparece automáticamente en estado Idle o Success.
 */
@Composable
private fun UploadProgressBar(uploadState: UploadState) {
    AnimatedVisibility(
        visible = uploadState is UploadState.Uploading,
        enter = fadeIn(),
        exit = fadeOut(),
    ) {
        Column(modifier = Modifier.fillMaxWidth()) {
            val progress = (uploadState as? UploadState.Uploading)?.progress ?: 0f
            LinearProgressIndicator(
                progress = { progress },
                modifier = Modifier.fillMaxWidth(),
                color = MaterialTheme.colorScheme.primary,
            )
            if (progress > 0f) {
                Text(
                    text = "Subiendo… ${(progress * 100).toInt()}%",
                    modifier = Modifier.padding(horizontal = 16.dp, vertical = 2.dp),
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
            Spacer(modifier = Modifier.height(4.dp))
        }
    }
}
