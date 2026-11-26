// ui/chat/ChatScreenV2.kt
package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import android.content.res.Configuration
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
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.layout.wrapContentHeight
import androidx.compose.foundation.layout.wrapContentWidth
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.outlined.ChatBubbleOutline
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
import androidx.compose.material3.TextButton
import androidx.compose.material3.FilledTonalButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.compose.LifecycleEventEffect
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil.compose.AsyncImage
import coil.request.ImageRequest
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.R
import org.ies.tierno.applicationamani.domain.models.ChatMessage
import org.ies.tierno.applicationamani.domain.models.MessageContent
import org.ies.tierno.applicationamani.domain.models.MessageStatus
import org.ies.tierno.applicationamani.domain.repository.MediaType
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackUiState
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModelV2
import org.ies.tierno.applicationamani.ui.theme.AppTheme
import org.ies.tierno.applicationamani.ui.theme.Dimensions
import org.ies.tierno.applicationamani.ui.theme.Elevation
import org.ies.tierno.applicationamani.ui.theme.Spacing
import java.time.Instant
import java.time.LocalDate
import java.time.ZoneId
import java.time.format.DateTimeFormatter
import java.time.format.FormatStyle
import java.util.Locale

private const val LOAD_MORE_THRESHOLD = 3
private const val NEAR_BOTTOM_THRESHOLD = 1

sealed class ChatV2ListItem {
    data class MessageItem(
        val msg: ChatMessage,
        val isFirstInGroup: Boolean,
        val isLastInGroup: Boolean,
    ) : ChatV2ListItem()

    data class DateSeparator(
        val label: String,
        val date: LocalDate,
    ) : ChatV2ListItem()
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
    val scope = rememberCoroutineScope()
    val hoyLabel = stringResource(R.string.chat_hoy)
    val ayerLabel = stringResource(R.string.chat_ayer)
    val chatDefaultTitle = stringResource(R.string.chat_titulo_default)

    val chatItems =
        remember(state.messages, hoyLabel, ayerLabel) {
            buildChatV2Items(state.messages, hoyLabel, ayerLabel)
        }

    // ── Trigger de paginación ─────────────────────────────────────────────────
    // Con reverseLayout el índice 0 es el mensaje MÁS NUEVO; los antiguos están al final de la
    // lista. Se pide la página anterior cuando el último ítem visible está cerca del final.
    val shouldLoadMore by remember {
        derivedStateOf {
            val info = listState.layoutInfo
            val lastVisible = info.visibleItemsInfo.lastOrNull()?.index ?: -1
            info.totalItemsCount > 0 && lastVisible >= info.totalItemsCount - 1 - LOAD_MORE_THRESHOLD
        }
    }

    LaunchedEffect(shouldLoadMore, state.hasMoreMessages, state.isLoadingMore) {
        if (shouldLoadMore && state.hasMoreMessages && !state.isLoadingMore) {
            viewModel.loadOlderMessages()
        }
    }

    // ── Política de scroll ────────────────────────────────────────────────────
    // Cerca del final (índice 0 en reverseLayout) → se sigue a los mensajes nuevos.
    // Leyendo historial → no se interrumpe y se muestra el chip "Mensajes nuevos".
    val isNearBottom by remember {
        derivedStateOf { listState.firstVisibleItemIndex <= NEAR_BOTTOM_THRESHOLD }
    }
    var hasNewMessages by remember { mutableStateOf(false) }
    val newestMessageId = state.messages.lastOrNull()?.id
    var lastSeenNewestId by remember { mutableStateOf<String?>(null) }

    LaunchedEffect(newestMessageId) {
        val previous = lastSeenNewestId
        lastSeenNewestId = newestMessageId
        if (previous == null || newestMessageId == null || previous == newestMessageId) return@LaunchedEffect
        val isOwn = state.messages.lastOrNull()?.senderId == viewModel.currentUserId
        if (isOwn || isNearBottom) {
            listState.animateScrollToItem(0)
        } else {
            hasNewMessages = true
        }
    }
    LaunchedEffect(isNearBottom) { if (isNearBottom) hasNewMessages = false }

    // ── Ciclo de vida: lectura solo con la pantalla visible ───────────────────
    LifecycleEventEffect(Lifecycle.Event.ON_RESUME) { viewModel.onScreenResumed() }
    LifecycleEventEffect(Lifecycle.Event.ON_PAUSE) { viewModel.onScreenPaused() }

    // ── Eventos de un solo disparo ────────────────────────────────────────────
    LaunchedEffect(viewModel) {
        viewModel.events.collectLatest { event ->
            when (event) {
                is ChatEvent.ScrollToBottom -> {
                    // Solo lo emite el VM al enviar un mensaje propio.
                    if (listState.layoutInfo.totalItemsCount > 0) {
                        listState.animateScrollToItem(0)
                    }
                }

                is ChatEvent.ShowSnackbar -> {
                    val result =
                        snackbarHostState.showSnackbar(
                            message = event.message,
                            actionLabel = event.actionLabel,
                            duration = SnackbarDuration.Long,
                        )
                    if (result == SnackbarResult.ActionPerformed) {
                        val retryId = event.retryMessageId
                        if (retryId != null) viewModel.retrySend(retryId) else viewModel.resetUploadState()
                    }
                }
            }
        }
    }

    // Los errores de estado (carga, permisos, red) también se muestran al usuario.
    LaunchedEffect(state.error) {
        state.error?.let {
            snackbarHostState.showSnackbar(message = it, duration = SnackbarDuration.Short)
            viewModel.clearError()
        }
    }

    // ── Picker de archivos ────────────────────────────────────────────────────
    var pendingAttachmentUri by remember { mutableStateOf<Uri?>(null) }

    val fileLauncher =
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.GetContent(),
        ) { uri: Uri? ->
            uri?.let { pendingAttachmentUri = it }
        }

    val context = androidx.compose.ui.platform.LocalContext.current
    val audioHandler = remember { AudioHandler(context) }
    DisposableEffect(audioHandler) { onDispose { audioHandler.release() } }
    val isRecording by audioHandler.isRecording.collectAsStateWithLifecycle()
    val recordingSeconds by audioHandler.recordingSeconds.collectAsStateWithLifecycle()

    val recordPermissionLauncher =
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.RequestPermission(),
        ) { isGranted ->
            if (isGranted) {
                audioHandler.startRecording()
            }
        }

    var text by remember { mutableStateOf("") }

    Scaffold(
        modifier =
            Modifier
                .fillMaxSize()
                .imePadding(),
        containerColor = MaterialTheme.colorScheme.surfaceContainerLow,
        topBar = {
            ChatTopBarV2(
                title = otherUserName.ifBlank { chatDefaultTitle },
                onNavigateBack = onNavigateBack,
            )
        },
        bottomBar = {
            Column {
                UploadProgressBar(uploadState = state.uploadState)

                MessageInput(
                    text = text,
                    onTextChange = { if (it.length <= ChatViewModelV2.MAX_MESSAGE_LENGTH) text = it },
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
                        val isGranted =
                            androidx.core.content.ContextCompat.checkSelfPermission(
                                context,
                                permission,
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
                        if (file != null && file.length() > 0L) {
                            val uri = Uri.fromFile(file)
                            viewModel.sendMedia(uri, MediaType.AUDIO)
                        }
                    },
                    isRecording = isRecording,
                    recordingSeconds = recordingSeconds,
                    pendingAttachmentUri = pendingAttachmentUri,
                    onClearAttachment = { pendingAttachmentUri = null },
                )
            }
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
    ) { paddingValues ->
        Box(
            modifier =
                Modifier
                    .fillMaxSize()
                    .padding(paddingValues),
        ) {
            when {
                state.isLoadingInitial -> {
                    CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
                }

                state.messages.isEmpty() -> {
                    ChatEmptyState(
                        modifier = Modifier.align(Alignment.Center),
                    )
                }

                else -> {
                    Column(modifier = Modifier.fillMaxSize()) {
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
                            contentPadding = PaddingValues(horizontal = Spacing.s, vertical = Spacing.m),
                        ) {
                            items(
                                items = chatItems,
                                key = { item ->
                                    when (item) {
                                        is ChatV2ListItem.MessageItem -> item.msg.id
                                        is ChatV2ListItem.DateSeparator -> "sep_${item.date}"
                                    }
                                },
                            ) { item ->
                                when (item) {
                                    is ChatV2ListItem.DateSeparator -> {
                                        ChatDateSeparator(item.label)
                                    }
                                    is ChatV2ListItem.MessageItem -> {
                                        MessageBubbleV2(
                                            message = item.msg,
                                            isOwnMessage = item.msg.senderId == viewModel.currentUserId,
                                            isFirstInGroup = item.isFirstInGroup,
                                            isLastInGroup = item.isLastInGroup,
                                            otherUserName = otherUserName.ifBlank { chatDefaultTitle },
                                            audioUiState = state.audioUiState,
                                            onPlayPause = { messageId, url ->
                                                viewModel.toggleAudioPlayback(messageId, url)
                                            },
                                            onRetry = { viewModel.retrySend(item.msg.id) },
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }

            AnimatedVisibility(
                visible = hasNewMessages,
                enter = fadeIn(),
                exit = fadeOut(),
                modifier = Modifier.align(Alignment.BottomCenter).padding(Spacing.s),
            ) {
                FilledTonalButton(
                    onClick = {
                        hasNewMessages = false
                        scope.launch { listState.animateScrollToItem(0) }
                    },
                ) {
                    Text(stringResource(R.string.chat_nuevos_mensajes))
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
    TopAppBar(
        title = {
            Row(verticalAlignment = Alignment.CenterVertically) {
                ConversationAvatar(
                    name = title,
                    size = Dimensions.avatarSmall,
                )
                Spacer(modifier = Modifier.width(Spacing.sm))
                Text(
                    text = title,
                    style = MaterialTheme.typography.titleLarge,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
            }
        },
        navigationIcon = {
            IconButton(onClick = onNavigateBack) {
                Icon(
                    imageVector = Icons.AutoMirrored.Filled.ArrowBack,
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
        windowInsets = WindowInsets(0, 0, 0, 0),
    )
}

@Composable
private fun ChatEmptyState(modifier: Modifier = Modifier) {
    Column(
        modifier = modifier.padding(horizontal = Spacing.xl),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Icon(
            imageVector = Icons.Outlined.ChatBubbleOutline,
            contentDescription = null,
            modifier = Modifier.size(Dimensions.iconHero),
            tint = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        Spacer(modifier = Modifier.height(Spacing.m))
        Text(
            text = stringResource(R.string.auto_aun_no_hay_mensajes),
            style = MaterialTheme.typography.titleLarge,
            color = MaterialTheme.colorScheme.onSurface,
        )
        Spacer(modifier = Modifier.height(Spacing.xs))
        Text(
            text = stringResource(R.string.chat_empty_hint),
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center,
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
    isFirstInGroup: Boolean,
    isLastInGroup: Boolean,
    otherUserName: String,
    audioUiState: AudioPlaybackUiState,
    onPlayPause: (String, String) -> Unit,
    onRetry: () -> Unit = {},
) {
    val bubbleColor =
        if (isOwnMessage) {
            MaterialTheme.colorScheme.primaryContainer
        } else {
            MaterialTheme.colorScheme.surfaceContainerHighest
        }
    val textColor =
        if (isOwnMessage) {
            MaterialTheme.colorScheme.onPrimaryContainer
        } else {
            MaterialTheme.colorScheme.onSurface
        }
    val metaColor =
        if (isOwnMessage) {
            MaterialTheme.colorScheme.onPrimaryContainer
        } else {
            MaterialTheme.colorScheme.onSurfaceVariant
        }
    val bottomPadding = if (isLastInGroup) Spacing.s else Spacing.xxs

    Row(
        modifier =
            Modifier
                .fillMaxWidth()
                .padding(bottom = bottomPadding),
        horizontalArrangement = if (isOwnMessage) Arrangement.End else Arrangement.Start,
        verticalAlignment = Alignment.Bottom,
    ) {
        if (!isOwnMessage) {
            if (isLastInGroup) {
                ConversationAvatar(
                    name = otherUserName,
                    size = Dimensions.iconLarge,
                )
                Spacer(modifier = Modifier.width(Spacing.xs))
            } else {
                Spacer(modifier = Modifier.width(Dimensions.avatarSmall))
            }
        }

        Column(
            horizontalAlignment = if (isOwnMessage) Alignment.End else Alignment.Start,
            modifier = Modifier.widthIn(max = Dimensions.chatBubbleMax),
        ) {
        Surface(
            shape = chatBubbleShape(isOwnMessage, isFirstInGroup, isLastInGroup),
            color = bubbleColor,
            tonalElevation = if (isOwnMessage) Elevation.level1 else Elevation.level0,
            modifier =
                Modifier
                    .wrapContentHeight()
                    .semantics(mergeDescendants = true) {},
        ) {
            val timeString =
                remember(message.timestamp) {
                    Instant
                        .ofEpochMilli(message.timestamp)
                        .atZone(ZoneId.systemDefault())
                        .toLocalTime()
                        .format(
                            DateTimeFormatter.ofLocalizedTime(FormatStyle.SHORT).withLocale(Locale.getDefault()),
                        )
                }

            Column {
                when (val content = message.content) {
                    is MessageContent.Text -> {
                        Column(
                            modifier =
                                Modifier.padding(
                                    start = Spacing.sm,
                                    top = Spacing.s,
                                    end = Spacing.sm,
                                    bottom = Spacing.xs,
                                ),
                        ) {
                            Text(
                                text = content.body,
                                color = textColor,
                                style = MaterialTheme.typography.bodyLarge,
                            )
                            if (message.status == MessageStatus.FAILED) {
                                TextButton(onClick = onRetry) {
                                    Text(
                                        text = stringResource(R.string.chat_no_enviado) + " · " +
                                            stringResource(R.string.chat_reintentar),
                                        color = MaterialTheme.colorScheme.error,
                                        style = MaterialTheme.typography.labelSmall,
                                    )
                                }
                            }
                            Spacer(modifier = Modifier.height(Spacing.xxs))
                            Row(
                                modifier =
                                    Modifier
                                        .wrapContentWidth()
                                        .align(Alignment.End)
                                        .padding(top = Spacing.xxs),
                                horizontalArrangement = Arrangement.End,
                                verticalAlignment = Alignment.CenterVertically,
                            ) {
                                Text(
                                    text = timeString,
                                    style = MaterialTheme.typography.labelSmall,
                                    color = metaColor,
                                )
                                if (isOwnMessage) {
                                    Spacer(modifier = Modifier.width(Spacing.xs))
                                    StatusIcon(
                                        isRead = message.status == MessageStatus.READ,
                                        isDelivered = false, // DELIVERED no es verificable con RTDB: solo enviado/leído
                                    )
                                }
                            }
                        }
                    }

                    is MessageContent.Image -> {
                        Column {
                            Box(modifier = Modifier.padding(Spacing.xxs)) {
                                AsyncImage(
                                    model =
                                        ImageRequest
                                            .Builder(androidx.compose.ui.platform.LocalContext.current)
                                            .data(content.storageRef)
                                            .crossfade(true)
                                            .build(),
                                    contentDescription = stringResource(R.string.chat_imagen_adjunta),
                                    contentScale = ContentScale.Crop,
                                    placeholder =
                                        androidx.compose.ui.graphics.painter.ColorPainter(
                                            MaterialTheme.colorScheme.surfaceVariant,
                                        ),
                                    error =
                                        androidx.compose.ui.graphics.painter.ColorPainter(
                                            MaterialTheme.colorScheme.errorContainer,
                                        ),
                                    modifier =
                                        Modifier
                                            .size(Dimensions.chatImageMax)
                                            .clip(
                                                RoundedCornerShape(
                                                    topStart = Spacing.sm,
                                                    topEnd = Spacing.sm,
                                                    bottomStart = if (isOwnMessage) Spacing.sm else Spacing.xxs,
                                                    bottomEnd = if (isOwnMessage) Spacing.xxs else Spacing.sm,
                                                ),
                                            ),
                                )
                                if (content.caption.isBlank()) {
                                    val overlayTextColor = MaterialTheme.colorScheme.inverseOnSurface
                                    Row(
                                        modifier =
                                            Modifier
                                                .align(Alignment.BottomEnd)
                                                .padding(Spacing.xs)
                                                .background(
                                                    color = MaterialTheme.colorScheme.scrim.copy(alpha = 0.4f),
                                                    shape = MaterialTheme.shapes.medium,
                                                ).padding(horizontal = Spacing.xs, vertical = Spacing.xxs),
                                        verticalAlignment = Alignment.CenterVertically,
                                    ) {
                                        Text(
                                            text = timeString,
                                            style = MaterialTheme.typography.labelSmall,
                                            color = overlayTextColor,
                                        )
                                        if (isOwnMessage) {
                                            Spacer(modifier = Modifier.width(Spacing.xs))
                                            StatusIcon(
                                                isRead = message.status == MessageStatus.READ,
                                                isDelivered = false, // DELIVERED no es verificable con RTDB: solo enviado/leído
                                                tint = overlayTextColor,
                                            )
                                        }
                                    }
                                }
                            }
                            if (content.caption.isNotBlank()) {
                                Column(
                                    modifier =
                                        Modifier.padding(
                                            start = Spacing.sm,
                                            top = Spacing.xs,
                                            end = Spacing.sm,
                                            bottom = Spacing.xs,
                                        ),
                                ) {
                                    Text(
                                        text = content.caption,
                                        color = textColor,
                                        style = MaterialTheme.typography.bodyLarge,
                                        modifier = Modifier.widthIn(max = Dimensions.chatImageMax),
                                    )
                                    Spacer(modifier = Modifier.height(Spacing.xxs))
                                    Row(
                                        modifier = Modifier.wrapContentWidth().align(Alignment.End),
                                        horizontalArrangement = Arrangement.End,
                                        verticalAlignment = Alignment.CenterVertically,
                                    ) {
                                        Text(
                                            text = timeString,
                                            style = MaterialTheme.typography.labelSmall,
                                            color = metaColor,
                                        )
                                        if (isOwnMessage) {
                                            Spacer(modifier = Modifier.width(Spacing.xs))
                                            StatusIcon(
                                                isRead = message.status == MessageStatus.READ,
                                                isDelivered = false, // DELIVERED no es verificable con RTDB: solo enviado/leído
                                            )
                                        }
                                    }
                                }
                            }
                        }
                    }

                    is MessageContent.Audio -> {
                        Column(modifier = Modifier.padding(horizontal = Spacing.sm, vertical = Spacing.s)) {
                            AudioBubbleV2(
                                message = message,
                                isOwn = isOwnMessage,
                                audioUiState = audioUiState,
                                onPlayPause = onPlayPause,
                            )
                            Spacer(modifier = Modifier.height(Spacing.xs))
                            Row(
                                modifier = Modifier.wrapContentWidth().align(Alignment.End),
                                horizontalArrangement = Arrangement.End,
                                verticalAlignment = Alignment.CenterVertically,
                            ) {
                                Text(
                                    text = timeString,
                                    style = MaterialTheme.typography.labelSmall,
                                    color = metaColor,
                                )
                                if (isOwnMessage) {
                                    Spacer(modifier = Modifier.width(Spacing.xs))
                                    StatusIcon(
                                        isRead = message.status == MessageStatus.READ,
                                        isDelivered = false, // DELIVERED no es verificable con RTDB: solo enviado/leído
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }

        if (message.status == MessageStatus.SENDING) {
            Text(
                text = stringResource(R.string.chat_enviando),
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.padding(horizontal = Spacing.xs, vertical = Spacing.xxs),
            )
        }
        }
    }
}

private fun chatBubbleShape(
    isOwn: Boolean,
    isFirstInGroup: Boolean,
    isLastInGroup: Boolean,
): RoundedCornerShape {
    val full = Spacing.m
    val reduced = Spacing.s
    val tail = Spacing.xs
    return if (isOwn) {
        RoundedCornerShape(
            topStart = full,
            topEnd = if (isFirstInGroup) full else reduced,
            bottomStart = full,
            bottomEnd = if (isLastInGroup) tail else reduced,
        )
    } else {
        RoundedCornerShape(
            topStart = if (isFirstInGroup) full else reduced,
            topEnd = full,
            bottomStart = if (isLastInGroup) tail else reduced,
            bottomEnd = full,
        )
    }
}

private fun buildChatV2Items(
    messages: List<ChatMessage>,
    hoyLabel: String,
    ayerLabel: String,
): List<ChatV2ListItem> {
    val sortedAsc = messages.sortedBy { it.timestamp }
    val items = mutableListOf<ChatV2ListItem>()
    var lastDate: LocalDate? = null

    sortedAsc.forEachIndexed { index, msg ->
        val messageDate = messageLocalDate(msg.timestamp)
        if (lastDate != messageDate) {
            lastDate = messageDate
            val label =
                when {
                    messageDate == LocalDate.now() -> hoyLabel
                    messageDate == LocalDate.now().minusDays(1) -> ayerLabel
                    else ->
                        messageDate.format(
                            DateTimeFormatter.ofLocalizedDate(FormatStyle.MEDIUM).withLocale(Locale.getDefault()),
                        )
                }
            items.add(ChatV2ListItem.DateSeparator(label, messageDate))
        }

        val previous = sortedAsc.getOrNull(index - 1)
        val next = sortedAsc.getOrNull(index + 1)
        val isFirstInGroup =
            previous == null ||
                previous.senderId != msg.senderId ||
                messageLocalDate(previous.timestamp) != messageDate
        val isLastInGroup =
            next == null ||
                next.senderId != msg.senderId ||
                messageLocalDate(next.timestamp) != messageDate

        items.add(
            ChatV2ListItem.MessageItem(
                msg = msg,
                isFirstInGroup = isFirstInGroup,
                isLastInGroup = isLastInGroup,
            ),
        )
    }
    return items.reversed()
}

private fun messageLocalDate(timestamp: Long): LocalDate =
    Instant
        .ofEpochMilli(timestamp)
        .atZone(ZoneId.systemDefault())
        .toLocalDate()

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
                    text = stringResource(R.string.chat_subiendo_formato, (progress * 100).toInt()),
                    modifier = Modifier.padding(horizontal = Spacing.m, vertical = Spacing.xxs),
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
            Spacer(modifier = Modifier.height(Spacing.xs))
        }
    }
}

@Preview(name = "ChatScreenV2 Light", showBackground = true)
@Preview(name = "ChatScreenV2 Dark", uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true)
@Preview(name = "ChatScreenV2 FontScale 1.5", fontScale = 1.5f, showBackground = true)
@Composable
private fun ChatScreenV2Preview() {
    AppTheme {
        Column(modifier = Modifier.padding(Spacing.m)) {
            ChatTopBarV2(title = "Dra. Laura Fernández", onNavigateBack = {})
            Spacer(modifier = Modifier.height(Spacing.s))
            ChatDateSeparator(label = "Hoy")
            MessageBubbleV2(
                message =
                    ChatMessage(
                        id = "2",
                        senderId = "2",
                        receiverId = "1",
                        timestamp = 1761299940000L,
                        status = MessageStatus.READ,
                        content = MessageContent.Text("Hola, ¿cómo te encuentras hoy?"),
                    ),
                isOwnMessage = false,
                isFirstInGroup = true,
                isLastInGroup = true,
                otherUserName = "Dra. Laura Fernández",
                audioUiState = AudioPlaybackUiState(),
                onPlayPause = { _, _ -> },
            )
            MessageBubbleV2(
                message =
                    ChatMessage(
                        id = "1",
                        senderId = "1",
                        receiverId = "2",
                        timestamp = 1761300000000L,
                        status = MessageStatus.READ,
                        content = MessageContent.Text("Hola doctora, quería confirmar nuestra sesión del jueves."),
                    ),
                isOwnMessage = true,
                isFirstInGroup = true,
                isLastInGroup = true,
                otherUserName = "Dra. Laura Fernández",
                audioUiState = AudioPlaybackUiState(),
                onPlayPause = { _, _ -> },
            )
        }
    }
}
