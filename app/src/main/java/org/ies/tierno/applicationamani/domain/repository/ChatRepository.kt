// domain/repository/ChatRepository.kt
package org.ies.tierno.applicationamani.domain.repository

import android.net.Uri
import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.domain.models.ChatMessage

// ─── Tipos de media soportados ────────────────────────────────────────────────

/**
 * Tipo de archivo multimedia que puede adjuntarse en un mensaje.
 */
enum class MediaType {
    /** Imagen (JPG, PNG, WEBP, etc.). */
    IMAGE,

    /** Audio (OGG, M4A, MP3, WAV). */
    AUDIO,
}

// ─── Resultado genérico del repositorio ───────────────────────────────────────

/**
 * Contenedor sellado que encapsula el resultado de cualquier operación del repositorio.
 *
 * Por qué no usar Result<T>: La clase estándar de Kotlin no tiene un estado Loading,
 * esencial para representar operaciones largas (subida de archivos) en la UI sin
 * necesidad de un StateFlow adicional.
 *
 * @param T Tipo de datos encapsulados en el resultado exitoso.
 */
sealed class ChatResult<out T> {
    /** La operación finalizó con éxito. */
    data class Success<T>(val data: T) : ChatResult<T>()

    /** La operación falló. */
    data class Error(val exception: Throwable) : ChatResult<Nothing>()

    /** La operación está en progreso. */
    data object Loading : ChatResult<Nothing>()
}

// ─── Interfaz del repositorio ─────────────────────────────────────────────────

/**
 * Contrato de acceso a datos para el módulo de chat.
 *
 * Esta interfaz pertenece a la capa de Dominio y no tiene dependencias de Android
 * ni de Firebase. El ViewModel y los UseCases solo deben depender de esta abstracción,
 * nunca de la implementación concreta [org.ies.tierno.applicationamani.data.repository.ChatRepositoryImpl].
 */
interface ChatRepository {

    /**
     * Observa el stream de mensajes más recientes de una conversación.
     *
     * La consulta está limitada a [pageSize] mensajes para evitar descargar
     * el historial completo del nodo. Firebase Realtime Database actualiza
     * el Flow reactivamente ante cualquier cambio (ChildAdded, ChildChanged).
     *
     * @param chatId Identificador único de la sala de chat (formato: "minId_maxId").
     * @param pageSize Número máximo de mensajes recientes a observar (por defecto 20).
     * @return Flow que emite [ChatResult.Success] con la lista ordenada de mensajes
     *         o [ChatResult.Error] si falla el listener de Firebase.
     */
    fun observeMessages(chatId: String, pageSize: Int = 20): Flow<ChatResult<List<ChatMessage>>>

    /**
     * Carga mensajes anteriores a un timestamp dado (paginación hacia atrás).
     *
     * Usa la consulta `endAt(beforeTimestamp).limitToLast(pageSize)` de Realtime Database
     * para obtener exactamente [pageSize] mensajes anteriores al marcador.
     *
     * @param chatId Identificador de la sala de chat.
     * @param beforeTimestamp Timestamp del mensaje más antiguo ya cargado en la UI.
     * @param pageSize Número de mensajes a cargar (por defecto 20).
     * @return [ChatResult.Success] con la lista o [ChatResult.Error] si falla la consulta.
     */
    suspend fun loadOlderMessages(
        chatId: String,
        beforeTimestamp: Long,
        pageSize: Int = 20,
    ): ChatResult<List<ChatMessage>>

    /**
     * Envía un mensaje de texto a la conversación.
     *
     * La implementación guarda el mensaje en Firebase Realtime Database.
     * Gracias a la persistencia offline, el SDK encolará el mensaje localmente
     * si no hay conexión y lo sincronizará automáticamente al recuperarla.
     *
     * @param chatId Identificador de la sala de chat.
     * @param message Mensaje de dominio a persistir. Su [ChatMessage.id] puede estar vacío;
     *                la implementación asignará la clave generada por `push()`.
     * @return [ChatResult.Success] si la escritura se confirmó, [ChatResult.Error] si falló.
     */
    suspend fun sendTextMessage(chatId: String, message: ChatMessage): ChatResult<Unit>

    /**
     * Sube un archivo multimedia a Firebase Storage y devuelve la ruta (Storage ref).
     *
     * La función emite [ChatResult.Loading] antes de iniciar la subida y
     * [ChatResult.Success] con la ruta de Storage (no la URL de descarga) al terminar.
     * Las URLs de descarga de Firebase Storage caducan; la ruta de Storage es permanente.
     *
     * @param chatId Identificador de la sala de chat (usado para organizar el path en Storage).
     * @param uri URI local del archivo seleccionado por el usuario.
     * @param type Tipo de medio ([MediaType.IMAGE] o [MediaType.AUDIO]).
     * @return [ChatResult.Success] con la ruta de Storage, [ChatResult.Error] si la subida falla
     *         tras los reintentos, o [ChatResult.Loading] durante la operación.
     */
    suspend fun uploadMedia(chatId: String, uri: Uri, type: MediaType): ChatResult<String>
}
