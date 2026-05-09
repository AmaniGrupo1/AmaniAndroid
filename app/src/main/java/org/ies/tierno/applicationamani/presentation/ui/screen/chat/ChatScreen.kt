package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import android.Manifest
import android.content.pm.PackageManager
import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.consumeWindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.ime
import androidx.compose.foundation.layout.imePadding
import androidx.compose.foundation.layout.navigationBars
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.union
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.outlined.ChatBubbleOutline
import androidx.compose.material3.CenterAlignedTopAppBar
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.SuggestionChip
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.content.ContextCompat
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.PsychologistInfo
import org.ies.tierno.applicationamani.ui.theme.LocalAmaniColors

/**
 * Pantalla principal del chat individual entre un paciente y un psicólogo (o viceversa).
 *
 * Muestra la lista de mensajes, permite enviar texto, archivos adjuntos y notas de voz.
 * Gestiona los permisos de grabación de audio y la navegación hacia atrás.
 *
 * @param viewModel ViewModel que gestiona la lógica y el estado del chat.
 * @param onNavigateBack Callback ejecutado al pulsar el botón de retroceso.
 * @param otherUserName Nombre del interlocutor para mostrar en la cabecera si no hay info completa.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ChatScreen(
    viewModel: ChatViewModel = viewModel(),
    onNavigateBack: () -> Unit,
    otherUserName: String = ""
) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    val audioUiState by viewModel.audioUiState.collectAsStateWithLifecycle()
    val listState = rememberLazyListState()
    val snackbarHostState = remember { SnackbarHostState() }

    val context = LocalContext.current
    val audioHandler = remember { AudioHandler(context) }
    val isRecording by audioHandler.isRecording.collectAsStateWithLifecycle()
    val recordingSeconds by audioHandler.recordingSeconds.collectAsStateWithLifecycle()

    DisposableEffect(audioHandler) {
        onDispose { audioHandler.release() }
    }

    val chatItems = remember(uiState.messages) {
        buildChatItems(uiState.messages, uiState.currentUserId)
    }

    val audioPermissionLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.RequestPermission()
    ) { isGranted ->
        if (isGranted) {
            val file = audioHandler.startRecording()
            file?.let { viewModel.startRecording(it) }
        }
    }

    val fileLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        uri?.let { viewModel.sendAttachment(it) }
    }

    LaunchedEffect(chatItems.size) {
        if (chatItems.isNotEmpty()) listState.animateScrollToItem(0)
    }

    LaunchedEffect(uiState.error) {
        uiState.error?.let { error ->
            snackbarHostState.showSnackbar(error)
            viewModel.clearError()
        }
    }

    Scaffold(
        modifier = Modifier.fillMaxSize(),
        contentWindowInsets = WindowInsets(0, 0, 0, 0),
        topBar = {
            ChatTopBar(
                psychologistInfo = uiState.assignedPsychologist,
                onNavigateBack = onNavigateBack,
                otherUserName = otherUserName
            )
        },
        bottomBar = {
            ChatInputBar(
                modifier = Modifier
                    .navigationBarsPadding()
                    .imePadding(),
                text = uiState.inputText,
                onTextChange = viewModel::onInputChanged,
                onSend = viewModel::sendMessage,
                onMicClick = {
                    if (ContextCompat.checkSelfPermission(
                            context, Manifest.permission.RECORD_AUDIO
                        ) == PackageManager.PERMISSION_GRANTED
                    ) {
                        val file = audioHandler.startRecording()
                        file?.let { viewModel.startRecording(it) }
                    } else {
                        audioPermissionLauncher.launch(Manifest.permission.RECORD_AUDIO)
                    }
                },
                onAttachFile = { fileLauncher.launch("*/*") },
                onStopRecording = {
                    val file = audioHandler.stopRecording()
                    if (file != null && file.length() > 0) {
                        viewModel.stopRecordingAndSend(file)
                    } else {
                        viewModel.cancelRecording()
                    }
                },
                isRecording = isRecording,
                recordingSeconds = recordingSeconds,
                isOtherTyping = uiState.isOtherTyping
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(MaterialTheme.colorScheme.background)
                .padding(paddingValues)
                .consumeWindowInsets(paddingValues)
        ) {
            when {
                uiState.isLoading -> {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        CircularProgressIndicator()
                    }
                }

                chatItems.isEmpty() -> {
                    Column(
                        modifier = Modifier.fillMaxSize(),
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.Center
                    ) {
                        Icon(
                            imageVector = Icons.Outlined.ChatBubbleOutline,
                            contentDescription = null,
                            modifier = Modifier.size(64.dp),
                            tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.4f)
                        )
                        Spacer(modifier = Modifier.height(24.dp))
                        Text(
                            text = "Aún no hay mensajes",
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }

                else -> {
                    LazyColumn(
                        modifier = Modifier.fillMaxSize(),
                        state = listState,
                        reverseLayout = true,
                        contentPadding = PaddingValues(horizontal = 8.dp, vertical = 16.dp)
                    ) {
                        items(
                            items = chatItems,
                            key = { item ->
                                when (item) {
                                    is ChatListItem.MessageItem -> item.msg.id
                                    is ChatListItem.DateSeparator -> "sep_${item.label}"
                                }
                            }
                        ) { item ->
                            when (item) {
                                is ChatListItem.DateSeparator -> DateSeparatorChip(item.label)
                                is ChatListItem.MessageItem -> MessageBubble(
                                    message = item.msg,
                                    isFirstInGroup = item.isFirstInGroup,
                                    isLastInGroup = item.isLastInGroup,
                                    currentUserId = uiState.currentUserId,
                                    psychologistInfo = uiState.assignedPsychologist,
                                    audioUiState = audioUiState,
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

/**
 * Barra superior personalizada para la pantalla de chat.
 *
 * Muestra el avatar del psicólogo, su nombre y su estado de conexión.
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun ChatTopBar(
    psychologistInfo: PsychologistInfo?,
    onNavigateBack: () -> Unit,
    otherUserName: String = ""
) {
    val amaniColors = LocalAmaniColors.current

    CenterAlignedTopAppBar(
        title = {
            if (psychologistInfo != null) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.Start,
                    modifier = Modifier.clickable { }
                ) {
                    PsychologistAvatar(psychologistInfo = psychologistInfo, size = 28.dp)
                    Spacer(modifier = Modifier.width(8.dp))
                    Column {
                        Text(
                            text = psychologistInfo.name,
                            style = MaterialTheme.typography.titleMedium.copy(fontSize = 16.sp)
                        )
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Box(
                                modifier = Modifier
                                    .size(6.dp)
                                    .clip(CircleShape)
                                    .background(
                                        if (psychologistInfo.isOnline) amaniColors.citaLibre
                                        else MaterialTheme.colorScheme.outline
                                    )
                            )
                            Spacer(modifier = Modifier.width(4.dp))
                            Text(
                                text = if (psychologistInfo.isOnline) "En línea" else "Desconectado",
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }
            } else {
                Text(
                    text = otherUserName.ifEmpty { "Psicólogo" },
                    style = MaterialTheme.typography.titleMedium.copy(fontSize = 16.sp)
                )
            }
        },
        navigationIcon = {
            IconButton(onClick = onNavigateBack) {
                Icon(
                    imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                    contentDescription = "Volver",
                    modifier = Modifier.size(20.dp)
                )
            }
        },
        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = MaterialTheme.colorScheme.surface,
            titleContentColor = MaterialTheme.colorScheme.onSurface
        ),
        windowInsets = WindowInsets(0, 0, 0, 0)
    )
}

/**
 * Chip visual que se utiliza para separar mensajes por fecha en el LazyColumn.
 */
@Composable
private fun DateSeparatorChip(label: String) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp),
        horizontalArrangement = Arrangement.Center
    ) {
        SuggestionChip(
            onClick = { },
            shape = MaterialTheme.shapes.small,
            label = {
                Text(
                    text = label,
                    style = MaterialTheme.typography.labelSmall
                )
            }
        )
    }
}
