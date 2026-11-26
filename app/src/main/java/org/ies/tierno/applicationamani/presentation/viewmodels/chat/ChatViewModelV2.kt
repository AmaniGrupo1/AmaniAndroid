// presentation/viewmodels/chat/ChatViewModelV2.kt
package org.ies.tierno.applicationamani.presentation.viewmodels.chat

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
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asSharedFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
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
 * - Observación reactiva de la ventana de mensajes más recientes ([liveMessages]) y carga
 *   de páginas antiguas ([olderMessages]) por separado: una página antigua nunca se pierde
 *   cuando llega un mensaje nuevo.
 * - Inserción optimista (SENDING) con paso a FAILED conservado y reintento idempotente: el id
 *   del mensaje es la clave definitiva de Firebase, así que reenviar sobrescribe, no duplica.
 * - Marcado de lectura de los mensajes del interlocutor mientras la pantalla está visible.
 * - Subida de multimedia y reproducción de audio.
 * - Eventos de un solo disparo (scroll, snackbar) mediante SharedFlow.
 *
 * Estados de mensaje que la infraestructura puede garantizar:
 * `SENDING` (aún no vuelto del listener), `SENT` (presente en el listener, es decir, escrito
 * localmente o confirmado), `READ` (el otro participante puso `leido=true`) y `FAILED`.
 * `DELIVERED` no se produce: RTDB no ofrece evidencia de entrega al dispositivo destino.
 *
 * @param repo Repositorio de dominio inyectado por Koin.
 * @param chatId Identificador único de la sala de chat (formato: "minId_maxId").
 * @param currentUserId UID del usuario autenticado actualmente.
 * @param otherUserId UID del interlocutor.
 * @param ensureAuthenticated Garantiza una sesión Firebase válida antes de observar/enviar.
 */
class ChatViewModelV2(
    appContext: android.content.Context,
    private val repo: ChatRepository,
    private val chatId: String,
    internal val currentUserId: String,
    private val otherUserId: String,
    private val ensureAuthenticated: suspend () -> Unit = {},
) : ViewModel() {

    companion object {
        private const val TAG = "ChatViewModelV2"
        private const val PAGE_SIZE = 20

        /** Debe coincidir con la validación de `firebase-database-rules.json` (2000). */
        const val MAX_MESSAGE_LENGTH = 2000
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

    // Fuentes de la lista: todas se leen/escriben en el hilo principal (viewModelScope).
    private var liveMessages: List<ChatMessage> = emptyList()
    private var olderMessages: List<ChatMessage> = emptyList()
    private val pendingMessages = LinkedHashMap<String, ChatMessage>()
    private val markedAsRead = HashSet<String>()
    private var screenResumed = false

    init {
        observeMessages()
    }

    // ─── Composición de la lista visible ──────────────────────────────────────

    /**
     * Recalcula [ChatUiStateV2.messages] a partir de las tres fuentes.
     * Prioridad ante el mismo id: servidor (live) > pendiente local > página antigua.
     */
    private fun publishMessages() {
        val liveIds = liveMessages.mapTo(HashSet()) { it.id }
        pendingMessages.keys.removeAll(liveIds)

        val byId = LinkedHashMap<String, ChatMessage>()
        olderMessages.forEach { byId[it.id] = it }
        pendingMessages.values.forEach { byId[it.id] = it }
        liveMessages.forEach { byId[it.id] = it }

        val merged = byId.values.sortedWith(compareBy<ChatMessage>({ it.timestamp }, { it.id }))
        _uiState.update { it.copy(messages = merged) }
    }

    // ─── Observación reactiva de mensajes ─────────────────────────────────────

    /**
     * Inicia la observación del stream de mensajes más recientes.
     * Se llama en el init; la corrutina se cancela con el ViewModel (viewModelScope),
     * lo que cierra el callbackFlow y retira el listener de Firebase.
     */
    private fun observeMessages() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoadingInitial = true) }
            authenticate()

            repo.observeMessages(chatId, PAGE_SIZE)
                .catch { e ->
                    Log.e(TAG, "Error observando mensajes", e)
                    _uiState.update {
                        it.copy(
                            isLoadingInitial = false,
                            canSendMessages = false,
                            error = e.message ?: "Error desconocido al cargar mensajes",
                        )
                    }
                }
                .collect { result ->
                    when (result) {
                        is ChatResult.Success -> {
                            liveMessages = result.data
                            publishMessages()
                            _uiState.update {
                                it.copy(isLoadingInitial = false, canSendMessages = true, error = null)
                            }
                            markIncomingAsRead()
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

    /** Refresca la sesión Firebase; un fallo no impide intentar (las reglas dirán la última palabra). */
    private suspend fun authenticate() {
        try {
            ensureAuthenticated()
        } catch (e: CancellationException) {
            throw e
        } catch (e: Exception) {
            Log.w(TAG, "No se pudo asegurar la sesión Firebase: ${e.message}")
        }
    }

    // ─── Paginación hacia atrás ────────────────────────────────────────────────

    /**
     * Carga mensajes anteriores al mensaje más antiguo actualmente visible.
     *
     * Guarda con [ChatUiStateV2.isLoadingMore] para evitar peticiones simultáneas. Si no hay
     * más mensajes, desactiva el trigger con `hasMoreMessages=false`. Las páginas cargadas se
     * conservan en [olderMessages] y sobreviven a nuevos mensajes entrantes.
     */
    fun loadOlderMessages() {
        val state = _uiState.value
        if (state.isLoadingMore || !state.hasMoreMessages) return

        // Los mensajes legacy sin fecha interpretable tienen timestamp 0: no sirven de ancla.
        val oldestTimestamp = state.messages.firstOrNull { it.timestamp > 0L }?.timestamp ?: return

        viewModelScope.launch {
            _uiState.update { it.copy(isLoadingMore = true) }

            when (val result = repo.loadOlderMessages(chatId, oldestTimestamp, PAGE_SIZE)) {
                is ChatResult.Success -> {
                    if (result.data.isEmpty()) {
                        _uiState.update { it.copy(isLoadingMore = false, hasMoreMessages = false) }
                    } else {
                        olderMessages = (result.data + olderMessages).distinctBy { it.id }
                        publishMessages()
                        _uiState.update { it.copy(isLoadingMore = false) }
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

                ChatResult.Loading -> _uiState.update { it.copy(isLoadingMore = false) }
            }
        }
    }

    // ─── Envío de mensaje de texto (Optimistic UI) ────────────────────────────

    /**
     * Envía un mensaje de texto con inserción optimista.
     *
     * El mensaje aparece de inmediato con [MessageStatus.SENDING]. El id es la clave
     * definitiva de Firebase ([ChatRepository.newMessageId]): cuando el listener devuelve
     * el nodo, sustituye al pendiente sin duplicarlo. Si falla, queda como
     * [MessageStatus.FAILED] (no desaparece) y puede reenviarse con [retrySend].
     *
     * @param body Texto del mensaje. Se ignora si está en blanco.
     */
    fun sendText(body: String) {
        val trimmed = body.trim()
        if (trimmed.isEmpty()) return
        if (trimmed.length > MAX_MESSAGE_LENGTH) {
            _uiState.update { it.copy(error = "El mensaje supera los $MAX_MESSAGE_LENGTH caracteres") }
            return
        }

        dispatch(
            ChatMessage(
                id = repo.newMessageId(chatId),
                senderId = currentUserId,
                receiverId = otherUserId,
                content = MessageContent.Text(trimmed),
                timestamp = System.currentTimeMillis(),
                status = MessageStatus.SENDING,
            ),
        )
    }

    /**
     * Reenvía un mensaje que quedó en [MessageStatus.FAILED], reutilizando su id
     * (idempotente: no genera un duplicado si el primer intento llegó a escribirse).
     */
    fun retrySend(messageId: String) {
        val failed = pendingMessages[messageId]?.takeIf { it.status == MessageStatus.FAILED } ?: return
        dispatch(failed)
    }

    private fun dispatch(message: ChatMessage) {
        val outgoing = message.copy(status = MessageStatus.SENDING)
        pendingMessages[outgoing.id] = outgoing
        publishMessages()

        viewModelScope.launch {
            _events.emit(ChatEvent.ScrollToBottom)
            authenticate()

            when (val result = repo.sendTextMessage(chatId, outgoing)) {
                is ChatResult.Success -> Log.d(TAG, "sendText confirmado por servidor")

                is ChatResult.Error -> {
                    Log.e(TAG, "sendText falló: ${result.exception.message}")
                    // Si el listener ya devolvió el nodo (escritura local) no se degrada a FAILED.
                    if (pendingMessages.containsKey(outgoing.id)) {
                        pendingMessages[outgoing.id] = outgoing.copy(status = MessageStatus.FAILED)
                        publishMessages()
                    }
                    _events.emit(
                        ChatEvent.ShowSnackbar(
                            message = "Error al enviar. Toca para reintentar.",
                            actionLabel = "Reintentar",
                            retryMessageId = outgoing.id,
                        ),
                    )
                }

                ChatResult.Loading -> Unit
            }
        }
    }

    // ─── Lectura ───────────────────────────────────────────────────────────────

    /** La pantalla es visible: marca como leídos los mensajes pendientes del interlocutor. */
    fun onScreenResumed() {
        screenResumed = true
        markIncomingAsRead()
    }

    /** La pantalla deja de ser visible: no se marca nada como leído y se pausa el audio. */
    fun onScreenPaused() {
        screenResumed = false
        exoPlayer?.pause()
    }

    private fun markIncomingAsRead() {
        if (!screenResumed) return
        val ids = liveMessages
            .filter { it.senderId == otherUserId && it.status != MessageStatus.READ && it.id !in markedAsRead }
            .map { it.id }
        if (ids.isEmpty()) return

        markedAsRead.addAll(ids)
        viewModelScope.launch {
            if (repo.markAsRead(chatId, ids) is ChatResult.Error) {
                markedAsRead.removeAll(ids.toSet()) // se reintentará en la próxima emisión
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
        if (_uiState.value.uploadState is UploadState.Uploading) return // evita doble subida

        viewModelScope.launch {
            _uiState.update { it.copy(uploadState = UploadState.Uploading(progress = 0f)) }
            authenticate()

            when (val result = repo.uploadMedia(chatId, uri, type)) {
                is ChatResult.Success -> {
                    val storageRef = result.data
                    val content: MessageContent = when (type) {
                        MediaType.IMAGE -> MessageContent.Image(storageRef, caption.trim())
                        MediaType.AUDIO -> MessageContent.Audio(storageRef)
                    }

                    val message = ChatMessage(
                        id = repo.newMessageId(chatId),
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
                            _uiState.update { it.copy(uploadState = UploadState.Failed(reason)) }
                            _events.emit(ChatEvent.ShowSnackbar(reason))
                        }

                        ChatResult.Loading -> Unit
                    }
                }

                is ChatResult.Error -> {
                    val reason = result.exception.message ?: "Error al subir el archivo"
                    Log.e(TAG, "sendMedia: uploadMedia falló: $reason")
                    _uiState.update { it.copy(uploadState = UploadState.Failed(reason)) }
                    _events.emit(ChatEvent.ShowSnackbar(reason))
                }

                ChatResult.Loading -> Unit
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
