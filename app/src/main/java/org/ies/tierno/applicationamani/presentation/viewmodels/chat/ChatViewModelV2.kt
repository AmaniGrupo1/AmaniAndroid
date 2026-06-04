// presentation/viewmodels/chat/ChatViewModelV2.kt
package org.ies.tierno.applicationamani.presentation.viewmodels.chat

import android.net.Uri
import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asSharedFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.onStart
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.isActive
import androidx.media3.common.AudioAttributes
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackStatus
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackUiState
import org.ies.tierno.applicationamani.domain.models.ChatMessage
import org.ies.tierno.applicationamani.domain.models.MessageContent
import org.ies.tierno.applicationamani.domain.models.MessageStatus
import org.ies.tierno.applicationamani.domain.repository.ChatRepository
import org.ies.tierno.applicationamani.domain.repository.ChatResult
import org.ies.tierno.applicationamani.domain.repository.MediaType
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatEvent
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatUiStateV2
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.UploadState

/*
 * Por qué el chatId se pasa como parámetro de constructor y no como SavedStateHandle:
 * Koin con parametersOf() es más limpio que SavedStateHandle para IDs simples en módulos
 * de feature. Si se necesitara supervivencia a kill de proceso, se migraría a SavedStateHandle.
 */

/**
 * ViewModel para la pantalla de chat refactorizada.
 *
 * Gestiona:
 * - Observación reactiva de mensajes con paginación.
 * - Inserción optimista de mensajes (status=SENDING) con rollback a FAILED si el servidor falla.
 * - Subida de multimedia con retroalimentación de progreso y reintentos transparentes.
 * - Eventos de un solo disparo (scroll, snackbar) mediante SharedFlow.
 *
 * @param repo Repositorio de dominio inyectado por Koin.
 * @param chatId Identificador único de la sala de chat (formato: "minId_maxId").
 * @param currentUserId UID del usuario autenticado actualmente.
 * @param otherUserId UID del interlocutor.
 */
class ChatViewModelV2(
    appContext: android.content.Context,
    private val repo: ChatRepository,
    private val chatId: String,
    internal val currentUserId: String,
    private val otherUserId: String,
) : ViewModel() {

    companion object {
        private const val TAG = "ChatViewModelV2"
        private const val PAGE_SIZE = 20
    }

    private val _uiState = MutableStateFlow(ChatUiStateV2())

    /** Estado observable de la UI. Expuesto como StateFlow inmutable. */
    val uiState: StateFlow<ChatUiStateV2> = _uiState.asStateFlow()

    /*
     * SharedFlow con replay=0: los eventos de un solo disparo (scroll, snackbar)
     * NO se reproducen si un nuevo collector se suscribe tarde (p. ej. tras rotación).
     * Un Snackbar ya mostrado no debe volver a aparecer.
     */
    private val _events = MutableSharedFlow<ChatEvent>(replay = 0, extraBufferCapacity = 8)

    /** Flujo de eventos de un solo disparo para la UI. */
    val events: SharedFlow<ChatEvent> = _events.asSharedFlow()

    init {
        observeMessages()
    }

    // ─── Observación reactiva de mensajes ─────────────────────────────────────

    /**
     * Inicia la observación del stream de mensajes más recientes.
     * Se llama automáticamente en el init y no necesita ser llamada desde la UI.
     */
    private fun observeMessages() {
        viewModelScope.launch {
            repo.observeMessages(chatId, PAGE_SIZE)
                .onStart {
                    _uiState.update { it.copy(isLoadingInitial = true) }
                }
                .catch { e ->
                    Log.e(TAG, "Error observando mensajes", e)
                    _uiState.update {
                        it.copy(
                            isLoadingInitial = false,
                            error = e.message ?: "Error desconocido al cargar mensajes",
                        )
                    }
                }
                .collect { result ->
                    when (result) {
                        is ChatResult.Success -> {
                            val incomingIds = result.data.map { it.id }.toSet()

                            // Merge atómico: todas las lecturas y escrituras sobre _uiState
                            // ocurren dentro del bloque update{}, que aplica la lambda
                            // sobre el estado más reciente en el momento de la escritura,
                            // eliminando la ventana de carrera entre la lectura optimista
                            // y el update final.
                            var wasEmpty = false
                            var shouldScroll = false

                            _uiState.update { currentState ->
                                wasEmpty = currentState.messages.isEmpty()

                                // Conservar mensajes optimistas (SENDING) que Firebase
                                // aún no ha confirmado (su id real aún no está en incomingIds)
                                val optimisticMessages = currentState.messages.filter { local ->
                                    local.status == MessageStatus.SENDING && local.id !in incomingIds
                                }

                                val merged = (optimisticMessages + result.data)
                                    .sortedBy { it.timestamp }

                                // Decidir scroll dentro del bloque para usar el tamaño real
                                shouldScroll = wasEmpty || result.data.size > currentState.messages.size

                                currentState.copy(
                                    messages = merged,
                                    isLoadingInitial = false,
                                    error = null,
                                )
                            }

                            // Scroll al fondo solo en la carga inicial o cuando llega un mensaje nuevo
                            if (shouldScroll) {
                                _events.emit(ChatEvent.ScrollToBottom)
                            }
                        }


                        is ChatResult.Error -> {
                            _uiState.update {
                                it.copy(
                                    isLoadingInitial = false,
                                    error = result.exception.message ?: "Error al cargar mensajes",
                                )
                            }
                        }

                        ChatResult.Loading -> {
                            _uiState.update { it.copy(isLoadingInitial = true) }
                        }
                    }
                }
        }
    }

    // ─── Paginación hacia atrás ────────────────────────────────────────────────

    /**
     * Carga mensajes anteriores al mensaje más antiguo actualmente visible.
     *
     * Guarda con [isLoadingMore] para evitar peticiones simultáneas. Si no hay
     * más mensajes, desactiva el trigger de paginación con [hasMoreMessages]=false.
     */
    fun loadOlderMessages() {
        val state = _uiState.value
        if (state.isLoadingMore || !state.hasMoreMessages) return

        val oldestTimestamp = state.messages.firstOrNull()?.timestamp ?: return

        viewModelScope.launch {
            _uiState.update { it.copy(isLoadingMore = true) }

            when (val result = repo.loadOlderMessages(chatId, oldestTimestamp, PAGE_SIZE)) {
                is ChatResult.Success -> {
                    val older = result.data
                    if (older.isEmpty()) {
                        _uiState.update { it.copy(isLoadingMore = false, hasMoreMessages = false) }
                    } else {
                        // Prependemos los mensajes más antiguos al inicio de la lista
                        val merged = (older + _uiState.value.messages)
                            .distinctBy { it.id }
                            .sortedBy { it.timestamp }

                        _uiState.update { it.copy(messages = merged, isLoadingMore = false) }
                    }
                }

                is ChatResult.Error -> {
                    Log.e(TAG, "loadOlderMessages error: ${result.exception.message}")
                    _uiState.update {
                        it.copy(
                            isLoadingMore = false,
                            error = "No se pudieron cargar mensajes anteriores",
                        )
                    }
                }

                ChatResult.Loading -> Unit // No debería ocurrir en una función suspend
            }
        }
    }

    // ─── Envío de mensaje de texto (Optimistic UI) ────────────────────────────

    /**
     * Envía un mensaje de texto con inserción optimista.
     *
     * El mensaje aparece INMEDIATAMENTE en la UI con [MessageStatus.SENDING].
     * Si el servidor confirma, la actualización del listener sustituirá el nodo.
     * Si falla, el mensaje se marca como [MessageStatus.FAILED] para permitir reenvío.
     *
     * @param body Texto del mensaje. Se ignora si está en blanco.
     */
    fun sendText(body: String) {
        val trimmed = body.trim()
        if (trimmed.isBlank()) return

        val tempId = "optimistic_${System.currentTimeMillis()}"
        val optimisticMessage = ChatMessage(
            id = tempId,
            senderId = currentUserId,
            receiverId = otherUserId,
            content = MessageContent.Text(trimmed),
            timestamp = System.currentTimeMillis(),
            status = MessageStatus.SENDING,
        )

        // 1. Inserción optimista inmediata
        _uiState.update { state ->
            state.copy(messages = state.messages + optimisticMessage)
        }

        viewModelScope.launch {
            _events.emit(ChatEvent.ScrollToBottom)

            when (val result = repo.sendTextMessage(chatId, optimisticMessage)) {
                is ChatResult.Success -> {
                    // El listener de observeMessages recibirá el nodo real y reemplazará el optimista
                    Log.d(TAG, "sendText confirmado por servidor")
                }

                is ChatResult.Error -> {
                    // Revertir el mensaje optimista a FAILED
                    Log.e(TAG, "sendText falló: ${result.exception.message}")
                    _uiState.update { state ->
                        val updated = state.messages.map { msg ->
                            if (msg.id == tempId) msg.copy(status = MessageStatus.FAILED) else msg
                        }
                        state.copy(messages = updated, error = "No se pudo enviar el mensaje")
                    }
                    _events.emit(
                        ChatEvent.ShowSnackbar(
                            message = "Error al enviar. Toca para reintentar.",
                            actionLabel = "Reintentar",
                        ),
                    )
                }

                ChatResult.Loading -> Unit
            }
        }
    }

    // ─── Subida de multimedia ──────────────────────────────────────────────────

    /**
     * Sube un archivo multimedia y envía el mensaje correspondiente al terminar.
     *
     * Flujo de estados de [UploadState]:
     * Idle → Uploading(0f) → … → Success / Failed
     *
     * @param uri URI local del archivo seleccionado por el usuario.
     * @param type Tipo de multimedia ([MediaType.IMAGE] o [MediaType.AUDIO]).
     * @param caption Texto opcional que acompaña a la imagen.
     */
    fun sendMedia(uri: Uri, type: MediaType, caption: String = "") {
        viewModelScope.launch {
            _uiState.update { it.copy(uploadState = UploadState.Uploading(progress = 0f)) }

            when (val result = repo.uploadMedia(chatId, uri, type)) {
                is ChatResult.Success -> {
                    val storageRef = result.data
                    val content: MessageContent = when (type) {
                        MediaType.IMAGE -> MessageContent.Image(storageRef, caption)
                        MediaType.AUDIO -> MessageContent.Audio(storageRef)
                    }

                    val message = ChatMessage(
                        senderId = currentUserId,
                        receiverId = otherUserId,
                        content = content,
                        timestamp = System.currentTimeMillis(),
                        status = MessageStatus.SENDING,
                    )

                    when (val sendResult = repo.sendTextMessage(chatId, message)) {
                        is ChatResult.Success -> {
                            _uiState.update { it.copy(uploadState = UploadState.Success) }
                            _events.emit(ChatEvent.ScrollToBottom)
                        }

                        is ChatResult.Error -> {
                            val reason = sendResult.exception.message ?: "Error al registrar el archivo"
                            Log.e(TAG, "sendMedia: error guardando mensaje: $reason")
                            _uiState.update {
                                it.copy(uploadState = UploadState.Failed(reason))
                            }
                            _events.emit(ChatEvent.ShowSnackbar(reason, "Reintentar"))
                        }

                        ChatResult.Loading -> Unit
                    }
                }

                is ChatResult.Error -> {
                    val reason = result.exception.message ?: "Error al subir el archivo"
                    Log.e(TAG, "sendMedia: uploadMedia falló: $reason")
                    _uiState.update { it.copy(uploadState = UploadState.Failed(reason)) }
                    _events.emit(ChatEvent.ShowSnackbar(reason, "Reintentar"))
                }

                ChatResult.Loading -> {
                    // El repositorio emite Loading antes de iniciar; aquí ya se puso Uploading(0f)
                }
            }
        }
    }

    // ─── Utilidades ───────────────────────────────────────────────────────────

    /** Limpia el error actual del estado de la UI. */
    fun clearError() {
        _uiState.update { it.copy(error = null) }
    }

    /** Resetea el estado de subida a Idle (p. ej. al cerrar el indicador de progreso). */
    fun resetUploadState() {
        _uiState.update { it.copy(uploadState = UploadState.Idle) }
    }

    // ─── Reproductor de Audio (ExoPlayer) ─────────────────────────────────────

    private val applicationContext = appContext.applicationContext
    private var exoPlayer: ExoPlayer? = null
    private var progressJob: Job? = null

    private val playerListener = object : Player.Listener {
        override fun onPlaybackStateChanged(playbackState: Int) {
            val player = exoPlayer ?: return
            val current = _uiState.value.audioUiState

            when (playbackState) {
                Player.STATE_BUFFERING -> {
                    _uiState.update { it.copy(audioUiState = current.copy(status = AudioPlaybackStatus.LOADING)) }
                }
                Player.STATE_READY -> {
                    if (player.isPlaying) {
                        _uiState.update { 
                            it.copy(audioUiState = current.copy(
                                status = AudioPlaybackStatus.PLAYING,
                                durationMs = maxOf(player.duration, 0L)
                            )) 
                        }
                        startProgressUpdates()
                    }
                }
                Player.STATE_ENDED -> {
                    stopProgressUpdates()
                    _uiState.update { it.copy(audioUiState = AudioPlaybackUiState()) }
                }
            }
        }

        override fun onIsPlayingChanged(isPlaying: Boolean) {
            val player = exoPlayer ?: return
            val current = _uiState.value.audioUiState
            if (current.activeMessageId == null) return

            if (isPlaying) {
                _uiState.update {
                    it.copy(audioUiState = current.copy(
                        status = AudioPlaybackStatus.PLAYING,
                        durationMs = maxOf(player.duration, 0L)
                    ))
                }
                startProgressUpdates()
            } else if (player.playbackState != Player.STATE_ENDED) {
                stopProgressUpdates()
                _uiState.update {
                    it.copy(audioUiState = current.copy(
                        status = AudioPlaybackStatus.PAUSED,
                        positionMs = maxOf(player.currentPosition, 0L),
                        durationMs = maxOf(player.duration, 0L)
                    ))
                }
            }
        }

        override fun onPlayerError(error: PlaybackException) {
            Log.e(TAG, "Error de reproducción: ${error.message}", error)
            stopProgressUpdates()
            _uiState.update { 
                it.copy(audioUiState = it.audioUiState.copy(
                    status = AudioPlaybackStatus.ERROR,
                    errorMessage = "Error al reproducir el audio"
                ))
            }
        }
    }

    private fun initPlayer() {
        if (exoPlayer != null) return
        val audioAttributes = AudioAttributes.Builder()
            .setContentType(C.AUDIO_CONTENT_TYPE_SPEECH)
            .setUsage(C.USAGE_MEDIA)
            .build()
        exoPlayer = ExoPlayer.Builder(applicationContext).build().apply {
            setAudioAttributes(audioAttributes, true)
            addListener(playerListener)
        }
    }

    private fun startProgressUpdates() {
        val player = exoPlayer ?: return
        progressJob?.cancel()
        progressJob = viewModelScope.launch {
            while (isActive && exoPlayer != null) {
                val currentState = _uiState.value.audioUiState
                if (currentState.activeMessageId == null) break

                _uiState.update { 
                    it.copy(audioUiState = currentState.copy(
                        positionMs = maxOf(player.currentPosition, 0L),
                        durationMs = maxOf(player.duration, 0L)
                    ))
                }
                delay(300)
            }
        }
    }

    private fun stopProgressUpdates() {
        progressJob?.cancel()
        progressJob = null
    }

    fun toggleAudioPlayback(messageId: String, remoteUrl: String) {
        if (!remoteUrl.startsWith("http")) {
            _uiState.update { 
                it.copy(audioUiState = AudioPlaybackUiState(
                    status = AudioPlaybackStatus.ERROR,
                    activeMessageId = messageId,
                    errorMessage = "URL de audio inválida"
                )) 
            }
            return
        }

        initPlayer()
        val player = exoPlayer ?: run {
            Log.e(TAG, "ExoPlayer no se pudo inicializar")
            _uiState.update { 
                it.copy(audioUiState = AudioPlaybackUiState(
                    status = AudioPlaybackStatus.ERROR,
                    activeMessageId = messageId,
                    errorMessage = "Error al inicializar el reproductor"
                )) 
            }
            return
        }
        val current = _uiState.value.audioUiState

        if (current.activeMessageId == messageId) {
            if (player.isPlaying) player.pause() else player.play()
            return
        }

        stopProgressUpdates()
        _uiState.update { 
            it.copy(audioUiState = AudioPlaybackUiState(
                status = AudioPlaybackStatus.LOADING,
                activeMessageId = messageId
            )) 
        }

        val mimeType = when {
            remoteUrl.contains(".ogg", ignoreCase = true) -> "audio/ogg"
            remoteUrl.contains(".m4a", ignoreCase = true) -> "audio/mp4"
            remoteUrl.contains(".mp3", ignoreCase = true) -> "audio/mpeg"
            remoteUrl.contains(".wav", ignoreCase = true) -> "audio/wav"
            else -> null
        }

        val mediaItem = if (mimeType != null) {
            MediaItem.Builder().setUri(remoteUrl).setMimeType(mimeType).build()
        } else {
            MediaItem.fromUri(remoteUrl)
        }

        Log.d(TAG, "Reproduciendo: $remoteUrl (mime=$mimeType)")
        player.setMediaItem(mediaItem)
        player.playWhenReady = true
        player.prepare()
    }

    override fun onCleared() {
        super.onCleared()
        stopProgressUpdates()
        exoPlayer?.removeListener(playerListener)
        exoPlayer?.release()
        exoPlayer = null
    }
}
