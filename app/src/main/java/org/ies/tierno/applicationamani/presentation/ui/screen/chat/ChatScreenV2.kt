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
import org.ies.tierno.applicationamani.domain.models.MessageStatus
import org.ies.tierno.applicationamani.domain.repository.MediaType
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModelV2

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
    LaunchedEffect(Unit) {
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
    val fileLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent(),
    ) { uri: Uri? ->
        uri?.let { viewModel.sendMedia(it, MediaType.IMAGE) }
    }

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

                MessageInputBar(
                    onSend = viewModel::sendText,
                    onAttachFile = { fileLauncher.launch("image/*") },
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
                                items = state.messages.asReversed(),
                                // key estable: evita recomposiciones innecesarias y animaciones incorrectas
                                key = { message -> message.id },
                            ) { message ->
                                MessageBubbleV2(
                                    message = message,
                                    isOwnMessage = message.senderId == viewModel.currentUserId,
                                )
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
            when (val content = message.content) {
                is MessageContent.Text -> {
                    Column(modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp)) {
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
                    }
                }

                is MessageContent.Image -> {
                    /*
                     * Coil resuelve el storageRef SOLO si es una URL. Para rutas de Storage,
                     * necesitas un Fetcher personalizado o resolver la downloadUrl antes
                     * de pasársela. La implementación completa del StorageFetcher de Coil
                     * queda fuera del scope de este archivo; aquí se muestra el patrón correcto.
                     */
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
                            .size(200.dp)
                            .clip(RoundedCornerShape(12.dp)),
                    )
                }

                is MessageContent.Audio -> {
                    Row(
                        modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Text(
                            text = "🎙 Nota de voz",
                            color = textColor,
                            style = MaterialTheme.typography.bodyMedium,
                        )
                    }
                }
            }
        }

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

// ─── Barra de entrada ──────────────────────────────────────────────────────────

/**
 * Barra de composición de mensaje con campo de texto, botón de adjuntar y botón de envío.
 */
@Composable
private fun MessageInputBar(
    onSend: (String) -> Unit,
    onAttachFile: () -> Unit,
) {
    var text by remember { mutableStateOf("") }

    Surface(
        modifier = Modifier.fillMaxWidth(),
        tonalElevation = 4.dp,
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 8.dp, vertical = 6.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            IconButton(onClick = onAttachFile) {
                Icon(
                    imageVector = Icons.Default.AttachFile,
                    contentDescription = "Adjuntar archivo",
                    tint = MaterialTheme.colorScheme.primary,
                )
            }

            Spacer(modifier = Modifier.width(4.dp))

            TextField(
                value = text,
                onValueChange = { text = it },
                modifier = Modifier.weight(1f),
                placeholder = { Text("Escribe un mensaje…") },
                shape = RoundedCornerShape(24.dp),
                colors = TextFieldDefaults.colors(
                    focusedIndicatorColor = Color.Transparent,
                    unfocusedIndicatorColor = Color.Transparent,
                    disabledIndicatorColor = Color.Transparent,
                ),
                singleLine = false,
                maxLines = 5,
                keyboardOptions = KeyboardOptions(imeAction = ImeAction.Default),
                keyboardActions = KeyboardActions(
                    onSend = {
                        onSend(text)
                        text = ""
                    },
                ),
            )

            Spacer(modifier = Modifier.width(4.dp))

            IconButton(
                onClick = {
                    if (text.isNotBlank()) {
                        onSend(text)
                        text = ""
                    }
                },
                enabled = text.isNotBlank(),
            ) {
                Icon(
                    imageVector = Icons.AutoMirrored.Filled.Send,
                    contentDescription = "Enviar mensaje",
                    tint = if (text.isNotBlank()) {
                        MaterialTheme.colorScheme.primary
                    } else {
                        MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.4f)
                    },
                )
            }
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
