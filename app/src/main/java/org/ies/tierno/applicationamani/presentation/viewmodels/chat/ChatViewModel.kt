package org.ies.tierno.applicationamani.presentation.viewmodels.chat

import android.content.Context
import android.net.Uri
import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import org.ies.tierno.applicationamani.data.remoto.FileStorageService
import org.ies.tierno.applicationamani.domain.models.Message
import org.ies.tierno.applicationamani.domain.usecases.GetMessagesUseCase
import org.ies.tierno.applicationamani.domain.usecases.MarkMessagesAsReadUseCase
import org.ies.tierno.applicationamani.domain.usecases.SendMessageUseCase

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

class ChatViewModel(
    private val currentUserId: Long,
    private val otherUserId: Long,
    private val sendMessageUseCase: SendMessageUseCase,
    private val getMessagesUseCase: GetMessagesUseCase,
    private val markMessagesAsReadUseCase: MarkMessagesAsReadUseCase,
    private val fileStorageService: FileStorageService,
    appContext: Context
) : ViewModel() {

    private val _messages = MutableStateFlow<List<Message>>(emptyList())
    val messages: StateFlow<List<Message>> = _messages.asStateFlow()

    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

    private val _isSending = MutableStateFlow(false)
    val isSending: StateFlow<Boolean> = _isSending.asStateFlow()

    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error.asStateFlow()

    private val _audioUiState = MutableStateFlow(AudioPlaybackUiState())
    val audioUiState: StateFlow<AudioPlaybackUiState> = _audioUiState.asStateFlow()

    private val appContext = appContext.applicationContext
    private var exoPlayer: ExoPlayer? = null
    private var progressJob: Job? = null

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

        override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
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
        }
        observeMessages()
    }

    private fun initPlayer() {
        if (exoPlayer != null) return
        exoPlayer = ExoPlayer.Builder(appContext).build().apply {
            addListener(playerListener)
        }
    }

    fun observeMessages() {
        viewModelScope.launch {
            _isLoading.value = true
            getMessagesUseCase(currentUserId, otherUserId).collect { messages ->
                _messages.value = messages
                _isLoading.value = false
                markMessagesAsRead()
            }
        }
    }

    private fun markMessagesAsRead() {
        viewModelScope.launch {
            markMessagesAsReadUseCase(currentUserId, otherUserId)
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
        val player = exoPlayer ?: return
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

        player.setMediaItem(MediaItem.fromUri(remoteUrl))
        player.prepare()
        player.playWhenReady = true
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
            _isSending.value = true
            _error.value = null

            sendMessageUseCase(currentUserId, otherUserId, content)
                .onSuccess {
                    _isSending.value = false
                }
                .onFailure { e ->
                    _error.value = e.message
                    _isSending.value = false
                }
        }
    }

    fun sendAttachment(uri: Uri) {
        viewModelScope.launch {
            _isSending.value = true
            _error.value = null

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
                        _isSending.value = false
                    }.onFailure { e ->
                        _error.value = e.message
                        _isSending.value = false
                    }
                }
                is FileStorageService.UploadResult.Error -> {
                    _error.value = result.message
                    _isSending.value = false
                }
            }
        }
    }

    private val _isRecording = MutableStateFlow(false)
    val isRecording: StateFlow<Boolean> = _isRecording.asStateFlow()

    fun startRecording() {
        _isRecording.value = true
    }

    fun stopRecordingAndSend(file: java.io.File) {
        _isRecording.value = false
        Log.d("VoiceNote", "Archivo: ${file.absolutePath}, Tamaño: ${file.length()} bytes")
        if (file.length() <= 0L) {
            _error.value = "La nota de voz está vacía"
            return
        }
        viewModelScope.launch {
            _isSending.value = true
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
                    ).onSuccess {
                        _isSending.value = false
                    }.onFailure { e ->
                        _error.value = e.message
                        _isSending.value = false
                    }
                }
                is FileStorageService.UploadResult.Error -> {
                    _error.value = result.message
                    _isSending.value = false
                }
            }
        }
    }

    fun clearError() {
        _error.value = null
    }

    override fun onCleared() {
        super.onCleared()
        releaseAudioPlayer()
    }
}