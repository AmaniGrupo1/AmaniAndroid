// ui/chat/ChatUiState.kt
package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import org.ies.tierno.applicationamani.domain.models.ChatMessage
import org.ies.tierno.applicationamani.domain.models.Message
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.PsychologistInfo

// ═══════════════════════════════════════════════════════════════════════════════
// ESTADO ORIGINAL — usado por ChatViewModel y ChatScreen (código existente)
// ═══════════════════════════════════════════════════════════════════════════════

/**
 * Sealed class de estado para la pantalla de chat original.
 *
 * Coexiste con [ChatUiStateV2] para no romper el código existente
 * mientras se migra al nuevo módulo de chat.
 */
sealed class ChatUiState {
    /** La pantalla está cargando los mensajes por primera vez. */
    data object Loading : ChatUiState()

    /**
     * Ocurrió un error al cargar o enviar mensajes.
     * @property message Descripción del error para mostrar al usuario.
     */
    data class Error(val message: String) : ChatUiState()

    /**
     * Los mensajes se cargaron correctamente.
     *
     * @property messages Lista de mensajes de la conversación.
     * @property assignedPsychologist Información del interlocutor (psicólogo o paciente).
     * @property currentUserId Identificador del usuario actualmente autenticado.
     * @property inputText Texto actual del campo de entrada.
     * @property isOtherTyping `true` si el interlocutor está escribiendo.
     * @property psychologistOnline `true` si el interlocutor está en línea.
     * @property pendingAttachmentUri URI de un archivo adjunto pendiente de enviar.
     */
    data class Success(
        val messages: List<Message> = emptyList(),
        val assignedPsychologist: PsychologistInfo? = null,
        val currentUserId: String = "",
        val inputText: String = "",
        val isOtherTyping: Boolean = false,
        val psychologistOnline: Boolean = false,
        val pendingAttachmentUri: android.net.Uri? = null,
    ) : ChatUiState()
}

// ═══════════════════════════════════════════════════════════════════════════════
// ESTADO REFACTORIZADO — usado por ChatViewModelV2 y ChatScreenV2 (nuevo módulo)
// ═══════════════════════════════════════════════════════════════════════════════

/*
 * Por qué un único data class en lugar de una sealed class Loading/Success/Error:
 * Un ChatUiStateV2 plano permite mostrar simultáneamente mensajes cacheados Y un indicador
 * de error/carga, comportamiento real que espera un usuario offline (ver historial sin red).
 */

/**
 * Estado completo de la UI de la pantalla de chat refactorizada.
 *
 * @property messages Lista de mensajes ordenados de más antiguo a más reciente.
 * @property isLoadingInitial `true` durante la primera carga; muestra un spinner centrado.
 * @property isLoadingMore `true` mientras se carga la página anterior (paginación).
 * @property uploadState Estado del ciclo de vida de la última subida de archivo.
 * @property error Mensaje de error a mostrar en el Snackbar. `null` si no hay error.
 * @property hasMoreMessages `false` cuando se ha alcanzado el inicio del historial.
 */
data class ChatUiStateV2(
    val messages: List<ChatMessage> = emptyList(),
    val isLoadingInitial: Boolean = false,
    val isLoadingMore: Boolean = false,
    val uploadState: UploadState = UploadState.Idle,
    val error: String? = null,
    val hasMoreMessages: Boolean = true,
)

/**
 * Estado del ciclo de vida de una subida de archivo multimedia.
 */
sealed class UploadState {
    /** No hay ninguna subida activa. */
    data object Idle : UploadState()

    /**
     * Subida en progreso.
     * @property progress Porcentaje de avance entre 0f y 1f.
     */
    data class Uploading(val progress: Float) : UploadState()

    /**
     * La subida falló tras los reintentos.
     * @property reason Descripción del error para mostrar al usuario.
     */
    data class Failed(val reason: String) : UploadState()

    /** La subida completó con éxito. */
    data object Success : UploadState()
}

/**
 * Eventos de un solo disparo emitidos por [ChatViewModelV2] hacia la UI.
 *
 * Se usan [kotlinx.coroutines.flow.SharedFlow] en lugar de StateFlow porque
 * estos eventos no tienen estado persistente: un scroll-to-bottom no debe
 * repetirse si la pantalla se recrea por rotación.
 */
sealed class ChatEvent {
    /** Desplaza el LazyColumn al último mensaje. */
    data object ScrollToBottom : ChatEvent()

    /**
     * Muestra un Snackbar con el mensaje indicado.
     * @property message Texto a mostrar.
     * @property actionLabel Etiqueta del botón de acción opcional.
     */
    data class ShowSnackbar(
        val message: String,
        val actionLabel: String? = null,
    ) : ChatEvent()
}
