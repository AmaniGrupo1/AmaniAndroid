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
import kotlinx.coroutines.flow.catch
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
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral
import timber.log.Timber
import java.io.File

/**
 * Define los posibles estados de la reproducción de audio en el chat.
 */
enum class AudioPlaybackStatus {
    /** El reproductor está inactivo. */
    IDLE,
    /** El audio se está cargando o cargando en el buffer. */
    LOADING,
    /** El audio se está reproduciendo actualmente. */
    PLAYING,
    /** La reproducción está pausada. */
    PAUSED,
    /** Ocurrió un error durante la reproducción. */
    ERROR
}

/**
 * Representa el estado de la interfaz de usuario para la reproducción de audio.
 *
 * @property status Estado actual del reproductor.
 * @property activeMessageId Identificador del mensaje cuyo audio está activo.
 * @property positionMs Posición actual de reproducción en milisegundos.
 * @property durationMs Duración total del audio en milisegundos.
 * @property errorMessage Mensaje de error en caso de fallo.
 */
data class AudioPlaybackUiState(
    val status: AudioPlaybackStatus = AudioPlaybackStatus.IDLE,
    val activeMessageId: String? = null,
    val positionMs: Long = 0L,
    val durationMs: Long = 0L,
    val errorMessage: String? = null
)

/**
 * Información básica del psicólogo para la vista de chat.
 *
 * @property id Identificador del psicólogo.
 * @property name Nombre completo o apelativo.
 * @property avatarUrl URL de la imagen de perfil.
 * @property isOnline Indica si el psicólogo está actualmente conectado.
 */
data class PsychologistInfo(
    val id: String,
    val name: String,
    val avatarUrl: String?,
    val isOnline: Boolean
)

/**
 * Estado integral de la pantalla de chat.
 *
 * @property messages Lista de mensajes de la conversación.
 * @property assignedPsychologist Información del psicólogo con el que se chatea.
 * @property currentUserId Identificador del usuario que usa la aplicación.
 * @property inputText Texto actual en el campo de entrada del chat.
 * @property isLoading Indica si se están cargando mensajes.
 * @property error Mensaje de error para mostrar al usuario.
 * @property isOtherTyping Indica si el interlocutor está escribiendo.
 * @property psychologistOnline Indica si el interlocutor está en línea.
 */
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

/**
 * ViewModel que gestiona la lógica de la pantalla de chat individual.
 *
 * Maneja el envío y recepción de mensajes en tiempo real (mediante Firebase),
 * la gestión de estados "escribiendo" y "en línea", la subida de archivos adjuntos
 * y la reproducción de notas de voz.
 */
class ChatViewModel(
    private val currentUserId: Long,
    private val otherUserId: Long,
    private val otherUserName: String,
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
    private val profileUseCaseGeneral: ProfileUseCaseGeneral,
    private val authRepository: org.ies.tierno.applicationamani.data.AuthRepository,
    appContext: Context
) : ViewModel() {
    companion object {
        private const val TAG = "ChatViewModel"
    }

    private val _messages = MutableStateFlow<List<Message>>(emptyList())
    private val _isLoading = MutableStateFlow(false)
    private val _error = MutableStateFlow<String?>(null)
    private val _inputText = MutableStateFlow("")
    private val _assignedPsychologist = MutableStateFlow<PsychologistInfo?>(null)
    private val _isOtherTyping = MutableStateFlow(false)
    private val _psychologistOnline = MutableStateFlow(false)

    /** Flujo de estado de la reproducción de audio. */
    val audioUiState: StateFlow<AudioPlaybackUiState> get() = _audioUiState.asStateFlow()

    private val baseUiState = combine(
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
    }

    /** Flujo de estado principal de la interfaz de chat. */
    val uiState: StateFlow<ChatUiState> = combine(
        baseUiState,
        _isOtherTyping,
        _psychologistOnline
    ) { base, isTyping, isOnline ->
        base.copy(
            isOtherTyping = isTyping,
            psychologistOnline = isOnline
        )
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5000),
        initialValue = ChatUiState(currentUserId = currentUserId.toString())
    )

    /** Flujo que combina los estados de presencia y actividad de escritura del interlocutor. */
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
        if (currentUserId <= 0L || otherUserId <= 0L) {
            _error.value = "No se pudo abrir el chat. IDs inválidos."
            Log.e(TAG, "Chat init abortado: currentUserId=$currentUserId otherUserId=$otherUserId")
        } else {
            viewModelScope.launch {
                initPlayer()
                // Asegurar autenticación Firebase antes de iniciar listeners
                authRepository.ensureFirebaseAuthenticated()
                
                runCatching { initChatFeatures() }
                    .onFailure { throwable ->
                        Log.e(TAG, "Error iniciando features de chat", throwable)
                        _error.value = throwable.message ?: "Error al inicializar chat"
                    }
                runCatching { loadPsychologistInfo() }
                    .onFailure { throwable ->
                        Log.e(TAG, "Error cargando info de interlocutor", throwable)
                    }
                observeMessages()
            }
        }
    }

    /**
     * Carga la información del interlocutor (nombre, avatar) desde los casos de uso de perfil.
     */
    private suspend fun loadPsychologistInfo() {
        if (currentUserId == otherUserId) return

        val psicologoInfo = profileUseCaseGeneral.getPsicologoById(otherUserId).getOrNull()?.usuario
            ?: profileUseCaseGeneral.getPacienteByIdFirebase(otherUserId).getOrNull()?.usuario

        val name = if (psicologoInfo != null) {
            buildString {
                psicologoInfo.nombre?.let { append(it) }
                psicologoInfo.apellido?.let {
                    if (isNotEmpty()) append(" ")
                    append(it)
                }
            }
        } else {
            otherUserName
        }

        _assignedPsychologist.value = PsychologistInfo(
            id = otherUserId.toString(),
            name = name.ifEmpty { "Usuario" },
            avatarUrl = psicologoInfo?.fotoPerfilUrl,
            isOnline = _psychologistOnline.value
        )
    }

    /**
     * Inicializa el reproductor multimedia ExoPlayer.
     */
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

    private var typingJob: Job? = null
    private var onlineJob: Job? = null

    /**
     * Inicializa las funcionalidades de tiempo real del chat (escritura y presencia).
     */
    private suspend fun initChatFeatures() {
        initTyping()
        initOnlineStatus()
    }

    /**
     * Suscribe el ViewModel a los cambios en el estado de escritura del otro usuario.
     */
    private fun initTyping() {
        typingJob?.cancel()
        typingJob = observeTypingUseCase(currentUserId, otherUserId)
            .catch { throwable ->
                Log.e(TAG, "Error observando typing", throwable)
                _isOtherTyping.value = false
            }
            .onEach { isTyping ->
                _isOtherTyping.value = isTyping
            }
            .launchIn(viewModelScope)
    }

    /**
     * Suscribe el ViewModel a los cambios en el estado online del otro usuario.
     */
    private fun initOnlineStatus() {
        onlineJob?.cancel()
        onlineJob = observeUserOnlineUseCase(otherUserId)
            .catch { throwable ->
                Log.e(TAG, "Error observando estado online", throwable)
                _psychologistOnline.value = false
            }
            .onEach { isOnline ->
                _psychologistOnline.value = isOnline
                updatePsychologistInfo()
            }
            .launchIn(viewModelScope)
    }

    /**
     * Actualiza el estado online dentro del objeto de información del psicólogo.
     */
    private fun updatePsychologistInfo() {
        val current = _assignedPsychologist.value
        current?.let {
            _assignedPsychologist.value = it.copy(isOnline = _psychologistOnline.value)
        }
    }

    private var observeMessagesJob: Job? = null

    /**
     * Inicia la observación de los mensajes de la conversación actual.
     */
    fun observeMessages() {
        observeMessagesJob?.cancel()
        observeMessagesJob = viewModelScope.launch {
            _isLoading.value = true
            getMessagesUseCase(currentUserId, otherUserId)
                .catch { throwable ->
                    Log.e(TAG, "Error observando mensajes", throwable)
                    _error.value = throwable.message ?: "No se pudieron cargar los mensajes"
                    _messages.value = emptyList()
                    _isLoading.value = false
                }
                .collect { messages ->
                    _error.value = null
                    _messages.value = messages
                    _isLoading.value = false
                    markMessagesAsRead()
                    markMessagesAsDelivered()
                }
        }
    }

    /**
     * Marca como entregados todos los mensajes recibidos que aún no tengan ese estado.
     */
    fun markMessagesAsDelivered() {
        viewModelScope.launch {
            _messages.value.forEach { message ->
                if (!message.isDelivered && message.senderId != currentUserId.toString()) {
                    val messageId = message.id.toLongOrNull()
                    if (messageId == null) {
                        Log.w(TAG, "Se omite delivery receipt por id no numérico: ${message.id}")
                    } else {
                        markMessageDeliveredUseCase(messageId, currentUserId)
                    }
                }
            }
        }
    }

    /**
     * Notifica que el usuario actual ha empezado a escribir.
     */
    fun startTyping() {
        viewModelScope.launch {
            startTypingUseCase(currentUserId, otherUserId)
        }
    }

    /**
     * Notifica que el usuario actual ha dejado de escribir.
     */
    fun stopTyping() {
        viewModelScope.launch {
            stopTypingUseCase(currentUserId, otherUserId)
        }
    }

    /**
     * Controla la reproducción de una nota de voz.
     *
     * Si ya se está reproduciendo el audio solicitado, alterna entre pausa y reproducción.
     * Si es un audio nuevo, detiene el anterior y carga el solicitado.
     *
     * @param messageId ID del mensaje que contiene el audio.
     * @param remoteUrl URL remota del archivo de audio.
     */
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

    /**
     * Detiene la reproducción de audio actual.
     */
    fun stopAudioPlayback() {
        exoPlayer?.stop()
        stopProgressUpdates()
        _audioUiState.value = AudioPlaybackUiState()
    }

    /**
     * Libera los recursos del reproductor de audio.
     */
    fun releaseAudioPlayer() {
        stopProgressUpdates()
        exoPlayer?.removeListener(playerListener)
        exoPlayer?.release()
        exoPlayer = null
        _audioUiState.value = AudioPlaybackUiState()
    }

    /**
     * Inicia una tarea periódica para actualizar la posición de reproducción del audio.
     */
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

    /**
     * Cancela la tarea de actualización de progreso de audio.
     */
    private fun stopProgressUpdates() {
        progressJob?.cancel()
        progressJob = null
    }

    /**
     * Envía un mensaje de texto.
     *
     * @param content Texto del mensaje.
     */
    fun sendTextMessage(content: String) {
        if (content.isBlank()) return

        viewModelScope.launch {
            _error.value = null
            stopTyping()

            sendMessageUseCase(currentUserId, otherUserId, content)
                .onSuccess {
                }
                .onFailure { e ->
                    Log.e(TAG, "Error enviando mensaje de texto", e)
                    _error.value = e.message
                }
        }
    }

    /**
     * Sube y envía un archivo adjunto.
     *
     * @param uri URI local del archivo a enviar.
     */
    fun sendAttachment(uri: Uri) {
        viewModelScope.launch {
            _error.value = null
            stopTyping()

            Timber.d("Iniciando flujo de subida de adjunto. Uri: $uri")
            
            // Asegurar que la sesión de Firebase esté activa y fresca antes de subir
            authRepository.ensureFirebaseAuthenticated()

            val conversationId = org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService.generateRoomId(currentUserId, otherUserId)
            
            Timber.d("Subiendo archivo a Storage... Room: $conversationId")
            when (val result = fileStorageService.uploadFile(uri, conversationId)) {
                is FileStorageService.UploadResult.Success -> {
                    Timber.d("Subida exitosa: ${result.url}")
                    sendMessageUseCase(
                        senderId = currentUserId,
                        receiverId = otherUserId,
                        content = "",
                        attachmentUrl = result.url,
                        attachmentType = result.type,
                        attachmentName = result.fileName
                    ).onSuccess {
                    }.onFailure { e ->
                        Log.e(TAG, "Error enviando adjunto", e)
                        _error.value = e.message
                    }
                }
                is FileStorageService.UploadResult.Error -> {
                    Log.e(TAG, "Error subiendo adjunto: ${result.message}")
                    _error.value = result.message
                }
            }
        }
    }

    private val _isRecording = MutableStateFlow(false)
    /** Indica si se está grabando una nota de voz en este momento. */
    val isRecording: StateFlow<Boolean> get() = _isRecording.asStateFlow()

    /**
     * Prepara el estado para el inicio de una grabación de voz.
     *
     * @param file Archivo local donde se guardará el audio.
     */
    fun startRecording(file: File) {
        Log.d("VoiceNote", "Iniciando grabación: ${file.absolutePath}")
        _isRecording.value = true
        _recordingFile.value = file
        startTyping()
    }

    private val _recordingFile = MutableStateFlow<File?>(null)
    /** Referencia al archivo de audio que se está grabando actualmente. */
    val recordingFile: StateFlow<File?> get() = _recordingFile.asStateFlow()

    /**
     * Detiene la grabación y envía el archivo resultante como nota de voz.
     *
     * @param file Archivo de audio finalizado.
     */
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

            Timber.d("Iniciando subida de nota de voz: ${file.name}")

            // Asegurar que la sesión de Firebase esté activa y fresca antes de subir
            authRepository.ensureFirebaseAuthenticated()

            val conversationId = org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService.generateRoomId(currentUserId, otherUserId)
            
            Timber.d("Subiendo nota de voz a Storage... Room: $conversationId")
            when (val result = fileStorageService.uploadVoiceNote(file, conversationId)) {
                is FileStorageService.UploadResult.Success -> {
                    Timber.d("Subida de nota de voz exitosa: ${result.url}")
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
                    Log.e(TAG, "Error subiendo nota de voz: ${result.message}")
                    _error.value = result.message
                }
            }
        }
    }

    /**
     * Actualiza el texto de entrada y gestiona el estado de escritura.
     *
     * @param text Nuevo contenido del campo de entrada.
     */
    fun onInputChanged(text: String) {
        _inputText.value = text
        if (text.isNotBlank()) {
            startTyping()
        } else {
            stopTyping()
        }
    }

    /**
     * Envía el contenido actual del campo de entrada del chat.
     */
    fun sendMessage() {
        val text = _inputText.value
        if (text.isBlank()) return
        sendTextMessage(text)
        _inputText.value = ""
    }

    /**
     * Marca todos los mensajes de la conversación como leídos por el usuario actual.
     */
    fun markMessagesAsRead() {
        viewModelScope.launch {
            val result = markMessagesAsReadUseCase(currentUserId, otherUserId)
            result.exceptionOrNull()?.let { throwable ->
                Log.w(TAG, "No se pudieron marcar mensajes como leídos", throwable)
            }
        }
    }

    /**
     * Limpia el estado de error actual.
     */
    fun clearError() {
        _error.value = null
    }

    /**
     * Cancela la grabación actual y elimina el archivo temporal.
     */
    fun cancelRecording() {
        _isRecording.value = false
        _recordingFile.value?.delete()
        _recordingFile.value = null
        stopTyping()
    }

    /**
     * Se llama cuando el ViewModel se destruye para liberar recursos.
     */
    override fun onCleared() {
        super.onCleared()
        releaseAudioPlayer()
    }
}
