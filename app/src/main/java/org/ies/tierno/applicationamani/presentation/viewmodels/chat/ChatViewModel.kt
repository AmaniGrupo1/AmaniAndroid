package org.ies.tierno.applicationamani.presentation.viewmodels.chat

import android.content.Context
import android.net.Uri
import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import androidx.media3.common.AudioAttributes
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.launchIn
import kotlinx.coroutines.flow.onEach
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.remoto.FileStorageService
import org.ies.tierno.applicationamani.domain.models.Message
import org.ies.tierno.applicationamani.domain.usecases.GetMessagesUseCase
import org.ies.tierno.applicationamani.domain.usecases.MarkMessageDeliveredUseCase
import org.ies.tierno.applicationamani.domain.usecases.MarkMessagesAsReadUseCase
import org.ies.tierno.applicationamani.domain.usecases.ObserveTypingUseCase
import org.ies.tierno.applicationamani.domain.usecases.ObserveUserOnlineUseCase
import org.ies.tierno.applicationamani.domain.usecases.SendMessageUseCase
import org.ies.tierno.applicationamani.domain.usecases.StartTypingUseCase
import org.ies.tierno.applicationamani.domain.usecases.StopTypingUseCase
import org.ies.tierno.applicationamani.domain.usecases.UpdateUserOnlineUseCase
import java.io.File

enum class AudioPlaybackStatus {
    IDLE,
    LOADING,
    PLAYING,
    PAUSED,
    ERROR
}

data class AudioPlaybackUiState(
    val status: AudioPlaybackStatus = AudioPlaybackStatus.IDLE,
    val activeMessageId: String? = null,
    val positionMs: Long = 0L,
    val durationMs: Long = 0L,
    val errorMessage: String? = null
)

data class PsychologistInfo(
    val id: String,
    val name: String,
    val avatarUrl: String?,
    val isOnline: Boolean
)

data class ChatUiState(
    val messages: List<Message> = emptyList(),
    val assignedPsychologist: PsychologistInfo? = null,
    val currentUserId: String = "",
    val inputText: String = "",
    val isLoading: Boolean = false,
    val error: String? = null,
    val isOtherTyping: Boolean = false,
    val psychologistOnline: Boolean = false
)

class ChatViewModel(
    private val currentUserId: Long,
    private val otherUserId: Long,
    private val sendMessageUseCase: SendMessageUseCase,
    private val getMessagesUseCase: GetMessagesUseCase,
    private val markMessagesAsReadUseCase: MarkMessagesAsReadUseCase,
    private val markMessageDeliveredUseCase: MarkMessageDeliveredUseCase,
    private val fileStorageService: FileStorageService,
    private val startTypingUseCase: StartTypingUseCase,
    private val stopTypingUseCase: StopTypingUseCase,
    private val observeTypingUseCase: ObserveTypingUseCase,
    private val observeUserOnlineUseCase: ObserveUserOnlineUseCase,
    private val updateUserOnlineUseCase: UpdateUserOnlineUseCase,
    appContext: Context
) : ViewModel() {

    private val _messages = MutableStateFlow<List<Message>>(emptyList())
    private val _isLoading = MutableStateFlow(false)
    private val _error = MutableStateFlow<String?>(null)
    private val _inputText = MutableStateFlow("")
    private val _assignedPsychologist = MutableStateFlow<PsychologistInfo?>(null)
    private val _isOtherTyping = MutableStateFlow(false)
    private val _psychologistOnline = MutableStateFlow(false)

    val audioUiState: StateFlow<AudioPlaybackUiState> get() = _audioUiState.asStateFlow()

    val uiState: StateFlow<ChatUiState> = combine(
        _messages,
        _assignedPsychologist,
        _isLoading,
        _error,
        _inputText
    ) { messages, psychologist, loading, error, input ->
        ChatUiState(
            messages = messages,
            assignedPsychologist = psychologist,
            currentUserId = currentUserId.toString(),
            inputText = input,
            isLoading = loading,
            error = error
        )
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5000),
        initialValue = ChatUiState(currentUserId = currentUserId.toString())
    )

    // Flow combinado para typing y online (usado por UI)
    val typingOnlineState: StateFlow<Pair<Boolean, Boolean>> = combine(_isOtherTyping, _psychologistOnline) { isTyping, isOnline ->
        Pair(isTyping, isOnline)
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5000),
        initialValue = Pair(false, false)
    )

    private val appContext = appContext.applicationContext
    private var exoPlayer: ExoPlayer? = null
    private var progressJob: Job? = null
    private val _audioUiState = MutableStateFlow(AudioPlaybackUiState())

    private val playerListener = object : Player.Listener {
        override fun onPlaybackStateChanged(playbackState: Int) {
            val player = exoPlayer ?: return
            val current = _audioUiState.value

            when (playbackState) {
                Player.STATE_BUFFERING -> {
                    _audioUiState.value = current.copy(status = AudioPlaybackStatus.LOADING)
                }

                Player.STATE_READY -> {
                    if (player.isPlaying) {
                        _audioUiState.value = current.copy(
                            status = AudioPlaybackStatus.PLAYING,
                            durationMs = maxOf(player.duration, 0L)
                        )
                        startProgressUpdates()
                    }
                }

                Player.STATE_ENDED -> {
                    stopProgressUpdates()
                    _audioUiState.value = AudioPlaybackUiState()
                }
            }
        }

        override fun onIsPlayingChanged(isPlaying: Boolean) {
            val player = exoPlayer ?: return
            val current = _audioUiState.value
            if (current.activeMessageId == null) return

            if (isPlaying) {
                _audioUiState.value = current.copy(
                    status = AudioPlaybackStatus.PLAYING,
                    durationMs = maxOf(player.duration, 0L)
                )
                startProgressUpdates()
            } else if (player.playbackState != Player.STATE_ENDED) {
                stopProgressUpdates()
                _audioUiState.value = current.copy(
                    status = AudioPlaybackStatus.PAUSED,
                    positionMs = maxOf(player.currentPosition, 0L),
                    durationMs = maxOf(player.duration, 0L)
                )
            }
        }

        override fun onPlayerError(error: PlaybackException) {
            Log.e("VoiceNote", "Error de reproducción: ${error.message}", error)
            stopProgressUpdates()
            _audioUiState.value = _audioUiState.value.copy(
                status = AudioPlaybackStatus.ERROR,
                errorMessage = error.message ?: "No se pudo reproducir el audio"
            )
        }
    }

    init {
        viewModelScope.launch {
            initPlayer()
            initChatFeatures()
        }
        observeMessages()
    }

    private fun initPlayer() {
        if (exoPlayer != null) return
        val audioAttributes = AudioAttributes.Builder()
            .setContentType(C.AUDIO_CONTENT_TYPE_SPEECH)
            .setUsage(C.USAGE_MEDIA)
            .build()
        exoPlayer = ExoPlayer.Builder(appContext).build().apply {
            setAudioAttributes(audioAttributes, true)
            addListener(playerListener)
        }
    }

    private suspend fun initChatFeatures() {
        initTyping()
        initOnlineStatus()
    }

    private fun initTyping() {
        observeTypingUseCase(currentUserId, otherUserId)
            .onEach { isTyping ->
                _isOtherTyping.value = isTyping
            }
            .launchIn(viewModelScope)
    }

    private fun initOnlineStatus() {
        observeUserOnlineUseCase(otherUserId)
            .onEach { isOnline ->
                _psychologistOnline.value = isOnline
                updatePsychologistInfo()
            }
            .launchIn(viewModelScope)
    }

    private fun updatePsychologistInfo() {
        val current = _assignedPsychologist.value
        current?.let {
            _assignedPsychologist.value = it.copy(isOnline = _psychologistOnline.value)
        }
    }

    fun observeMessages() {
        viewModelScope.launch {
            _isLoading.value = true
            getMessagesUseCase(currentUserId, otherUserId).collect { messages ->
                _messages.value = messages
                _isLoading.value = false
                markMessagesAsRead()
                markMessagesAsDelivered()
            }
        }
    }

    fun markMessagesAsDelivered() {
        viewModelScope.launch {
            _messages.value.forEach { message ->
                if (!message.isDelivered && message.senderId != currentUserId.toString()) {
                    markMessageDeliveredUseCase(message.id.toLong(), currentUserId)
                }
            }
        }
    }

    fun startTyping() {
        viewModelScope.launch {
            startTypingUseCase(currentUserId, otherUserId)
        }
    }

    fun stopTyping() {
        viewModelScope.launch {
            stopTypingUseCase(currentUserId, otherUserId)
        }
    }

    fun toggleAudioPlayback(messageId: String, remoteUrl: String) {
        if (!remoteUrl.startsWith("http")) {
            _audioUiState.value = AudioPlaybackUiState(
                status = AudioPlaybackStatus.ERROR,
                activeMessageId = messageId,
                errorMessage = "URL de audio inválida"
            )
            return
        }

        initPlayer()
        val player = exoPlayer ?: run {
            Log.e("VoiceNote", "ExoPlayer no se pudo inicializar")
            _audioUiState.value = AudioPlaybackUiState(
                status = AudioPlaybackStatus.ERROR,
                activeMessageId = messageId,
                errorMessage = "Error al inicializar el reproductor"
            )
            return
        }
        val current = _audioUiState.value

        if (current.activeMessageId == messageId) {
            if (player.isPlaying) {
                player.pause()
            } else {
                player.play()
            }
            return
        }

        stopProgressUpdates()
        _audioUiState.value = AudioPlaybackUiState(
            status = AudioPlaybackStatus.LOADING,
            activeMessageId = messageId
        )

        val mimeType = when {
            remoteUrl.contains(".ogg", ignoreCase = true) -> "audio/ogg"
            remoteUrl.contains(".m4a", ignoreCase = true) -> "audio/mp4"
            remoteUrl.contains(".mp3", ignoreCase = true) -> "audio/mpeg"
            remoteUrl.contains(".wav", ignoreCase = true) -> "audio/wav"
            else -> null
        }

        val mediaItem = if (mimeType != null) {
            MediaItem.Builder()
                .setUri(remoteUrl)
                .setMimeType(mimeType)
                .build()
        } else {
            MediaItem.fromUri(remoteUrl)
        }

        Log.d("VoiceNote", "Reproduciendo: $remoteUrl (mime=$mimeType)")
        player.setMediaItem(mediaItem)
        player.playWhenReady = true
        player.prepare()
    }

    fun stopAudioPlayback() {
        exoPlayer?.stop()
        stopProgressUpdates()
        _audioUiState.value = AudioPlaybackUiState()
    }

    fun releaseAudioPlayer() {
        stopProgressUpdates()
        exoPlayer?.removeListener(playerListener)
        exoPlayer?.release()
        exoPlayer = null
        _audioUiState.value = AudioPlaybackUiState()
    }

    private fun startProgressUpdates() {
        val player = exoPlayer ?: return
        progressJob?.cancel()
        progressJob = viewModelScope.launch {
            while (isActive && exoPlayer != null) {
                val currentState = _audioUiState.value
                if (currentState.activeMessageId == null) break

                _audioUiState.value = currentState.copy(
                    positionMs = maxOf(player.currentPosition, 0L),
                    durationMs = maxOf(player.duration, 0L)
                )
                delay(300)
            }
        }
    }

    private fun stopProgressUpdates() {
        progressJob?.cancel()
        progressJob = null
    }

    fun sendTextMessage(content: String) {
        if (content.isBlank()) return

        viewModelScope.launch {
            _error.value = null
            stopTyping()

            sendMessageUseCase(currentUserId, otherUserId, content)
                .onSuccess {
                }
                .onFailure { e ->
                    _error.value = e.message
                }
        }
    }

    fun sendAttachment(uri: Uri) {
        viewModelScope.launch {
            _error.value = null
            stopTyping()

            val conversationId = org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService.generateRoomId(currentUserId, otherUserId)
            when (val result = fileStorageService.uploadFile(uri, conversationId)) {
                is FileStorageService.UploadResult.Success -> {
                    sendMessageUseCase(
                        senderId = currentUserId,
                        receiverId = otherUserId,
                        content = "",
                        attachmentUrl = result.url,
                        attachmentType = result.type,
                        attachmentName = result.fileName
                    ).onSuccess {
                    }.onFailure { e ->
                        _error.value = e.message
                    }
                }
                is FileStorageService.UploadResult.Error -> {
                    _error.value = result.message
                }
            }
        }
    }

    private val _isRecording = MutableStateFlow(false)
    val isRecording: StateFlow<Boolean> get() = _isRecording.asStateFlow()

    fun startRecording(file: File) {
        Log.d("VoiceNote", "Iniciando grabación: ${file.absolutePath}")
        _isRecording.value = true
        _recordingFile.value = file
        startTyping()
    }

    private val _recordingFile = MutableStateFlow<File?>(null)
    val recordingFile: StateFlow<File?> get() = _recordingFile.asStateFlow()

    fun stopRecordingAndSend(file: File) {
        Log.d("VoiceNote", "Deteniendo grabación: ${file.absolutePath}, tamaño: ${file.length()} bytes")
        _isRecording.value = false
        _recordingFile.value = null
        stopTyping()

        if (file.length() <= 0L) {
            _error.value = "La nota de voz está vacía"
            return
        }

        viewModelScope.launch {
            _error.value = null

            val conversationId = org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService.generateRoomId(currentUserId, otherUserId)
            when (val result = fileStorageService.uploadVoiceNote(file, conversationId)) {
                is FileStorageService.UploadResult.Success -> {
                    sendMessageUseCase(
                        senderId = currentUserId,
                        receiverId = otherUserId,
                        content = "",
                        attachmentUrl = result.url,
                        attachmentType = result.type,
                        attachmentName = result.fileName
                    )
                }
                is FileStorageService.UploadResult.Error -> {
                    _error.value = result.message
                }
            }
        }
    }

    fun onInputChanged(text: String) {
        _inputText.value = text
        if (text.isNotBlank()) {
            startTyping()
        } else {
            stopTyping()
        }
    }

    fun sendMessage() {
        val text = _inputText.value
        if (text.isBlank()) return
        sendTextMessage(text)
        _inputText.value = ""
    }

    fun markMessagesAsRead() {
        viewModelScope.launch {
            markMessagesAsReadUseCase(currentUserId, otherUserId)
        }
    }

    fun clearError() {
        _error.value = null
    }

    fun cancelRecording() {
        _isRecording.value = false
        _recordingFile.value?.delete()
        _recordingFile.value = null
        stopTyping()
    }

    override fun onCleared() {
        super.onCleared()
        releaseAudioPlayer()
    }
}
