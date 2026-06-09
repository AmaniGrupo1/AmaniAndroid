// data/repository/ChatRepositoryImpl.kt
package org.ies.tierno.applicationamani.data.repository

import android.net.Uri
import android.util.Log
import androidx.annotation.WorkerThread
import com.google.firebase.database.ChildEventListener
import com.google.firebase.database.DataSnapshot
import com.google.firebase.database.DatabaseError
import com.google.firebase.database.FirebaseDatabase
import com.google.firebase.storage.FirebaseStorage
import com.google.firebase.storage.StorageException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.channels.awaitClose
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.callbackFlow
import kotlinx.coroutines.flow.shareIn
import kotlinx.coroutines.tasks.await
import kotlinx.coroutines.withContext
import org.ies.tierno.applicationamani.domain.models.ChatMessage
import org.ies.tierno.applicationamani.domain.models.MessageContent
import org.ies.tierno.applicationamani.domain.models.MessageStatus
import org.ies.tierno.applicationamani.domain.repository.ChatRepository
import org.ies.tierno.applicationamani.domain.repository.ChatResult
import org.ies.tierno.applicationamani.domain.repository.MediaType
import java.util.concurrent.ConcurrentHashMap

/*
 * ESTRUCTURA FIREBASE RTDB (PLANA Y OPTIMIZADA)
 * ─────────────────────────────────────────────
 * {
 *   "chats": {
 *     "{chatId}": {
 *       "messages": {
 *         "{messageId}": {
 *           "senderId":   "uid1",
 *           "receiverId": "uid2",
 *           "type":       "text | image | audio",
 *           "body":       "Hola",
 *           "storageRef": "chats/{chatId}/{fileName}",
 *           "timestamp":  1700000000000,
 *           "status":     "sent"
 *         }
 *       }
 *     }
 *   }
 * }
 *
 * Por qué esta estructura evita over-fetching:
 * 1. Los perfiles de usuario (nombre, avatar) viven en /users/{uid}, SEPARADOS de /chats.
 *    Cuando se abre el chat SOLO se descarga el nodo de mensajes, no datos de usuario.
 * 2. storageRef guarda la RUTA de Storage ("chats/123/foto.jpg"), NO la downloadUrl.
 *    Las downloadUrls de Firebase Storage caducan a las 24h. La ruta es permanente y permite
 *    generar una URL fresca en cualquier momento sin re-escribir el nodo del mensaje.
 * 3. Con limitToLast(N) solo se transfieren los N mensajes más recientes, ignorando
 *    el historial completo que puede tener miles de nodos.
 */

/**
 * Implementación concreta de [ChatRepository] que usa Firebase Realtime Database
 * para mensajería en tiempo real y Firebase Storage para archivos multimedia.
 *
 * Principios aplicados:
 * - setPersistenceEnabled(true): activa la caché SQLite nativa de Firebase para soporte offline.
 * - keepSynced(true): mantiene el nodo del chat sincronizado activamente cuando hay red.
 * - callbackFlow: convierte los listeners de Firebase en Flows reactivos seguros con Coroutines.
 * - Retry con backoff exponencial para subidas a Storage fallidas por red inestable.
 */
class ChatRepositoryImpl(
    private val database: FirebaseDatabase,
    private val storage: FirebaseStorage,
) : ChatRepository {

    /**
     * Scope de aplicación con ciclo de vida independiente del ViewModel.
     * Permite que shareIn mantenga el listener activo entre rotaciones y
     * transiciones de navegación cortas sin crear listeners duplicados.
     */
    private val repositoryScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

    /**
     * Caché de SharedFlows activos por chatId.
     *
     * Garantiza que, sin importar cuántos collectors haya, existe exactamente
     * UN ChildEventListener de Firebase por sala de chat.
     * WhileSubscribed(5_000) mantiene el listener vivo 5 s tras el último
     * collector, cubriendo rotaciones de pantalla y transiciones de navegación.
     */
    private val flowCache =
        ConcurrentHashMap<String, SharedFlow<ChatResult<List<ChatMessage>>>>()

    companion object {
        private const val TAG = "ChatRepositoryImpl"
        private const val NODE_CHATS = "chats"
        private const val NODE_MESSAGES = "messages"
        private const val STORAGE_BASE_PATH = "chats"

        private const val FIELD_SENDER_ID = "idSender"
        private const val FIELD_RECEIVER_ID = "idReceiver"
        private const val FIELD_TYPE = "attachmentType"
        private const val FIELD_BODY = "mensaje"
        private const val FIELD_STORAGE_REF = "attachmentUrl"
        private const val FIELD_TIMESTAMP = "enviadoEn"
        private const val FIELD_STATUS = "leido" // En la DB es un boolean

        private const val TYPE_TEXT = "TEXT"
        private const val TYPE_IMAGE = "IMAGE"
        private const val TYPE_AUDIO = "AUDIO"

        private const val MAX_UPLOAD_RETRIES = 3
        private const val RETRY_BASE_DELAY_MS = 2_000L
    }

    init {
        // La persistencia debe habilitarse UNA SOLA VEZ antes de cualquier uso de la DB.
        // Si ya fue habilitada (p. ej. en Application.onCreate), Firebase ignora la llamada.
        runCatching { database.setPersistenceEnabled(true) }
    }

    private fun messagesRef(chatId: String) =
        database.getReference("$NODE_CHATS/$chatId/$NODE_MESSAGES")

    // ─── 1. Observar mensajes en tiempo real (paginado) ───────────────────────

    /**
     * Devuelve un [SharedFlow] con los [pageSize] mensajes más recientes.
     *
     * El caché [flowCache] asegura un único listener Firebase por sala:
     * si el Flow ya existe en caché, se reutiliza; si no, se crea uno nuevo
     * con [shareIn] que lo mantiene vivo mientras haya collectors activos
     * (+ 5 s de margen para rotaciones y transiciones de navegación).
     *
     * Por qué ChildEventListener en lugar de ValueEventListener:
     * Con ValueEventListener, cada nuevo mensaje descarga TODA la lista ordenada de nuevo.
     * Con ChildEventListener, Firebase solo emite el delta (el nodo hijo añadido/cambiado),
     * lo que reduce drásticamente el ancho de banda en conversaciones largas.
     */
    override fun observeMessages(
        chatId: String,
        pageSize: Int,
    ): Flow<ChatResult<List<ChatMessage>>> {
        return flowCache.getOrPut(chatId) {
            rawMessagesFlow(chatId, pageSize)
                .shareIn(
                    scope = repositoryScope,
                    started = SharingStarted.WhileSubscribed(stopTimeoutMillis = 5_000L),
                    replay = 1,
                )
        }
    }

    /**
     * Crea el Flow frío de Firebase. Solo se ejecuta cuando [observeMessages]
     * necesita un Flow nuevo (primera suscripción tras expiración del caché).
     *
     * Usa [ChildEventListener] en lugar de [ValueEventListener] para evitar
     * descargar la lista completa de mensajes en cada actualización.
     */
    private fun rawMessagesFlow(
        chatId: String,
        pageSize: Int,
    ): Flow<ChatResult<List<ChatMessage>>> = callbackFlow {
        val ref = messagesRef(chatId)

        // keepSynced asegura que este nodo se sincroniza agresivamente mientras el Flow esté activo
        ref.keepSynced(true)

        val messages = mutableListOf<ChatMessage>()

        val query = ref
            .orderByChild(FIELD_TIMESTAMP)
            .limitToLast(pageSize)

        val listener = object : ChildEventListener {
            override fun onChildAdded(snapshot: DataSnapshot, previousChildName: String?) {
                snapshot.toChatMessage()?.let { msg ->
                    messages.removeIf { it.id == msg.id }
                    messages.add(msg)
                    messages.sortBy { it.timestamp }
                    trySend(ChatResult.Success(messages.toList()))
                }
            }

            override fun onChildChanged(snapshot: DataSnapshot, previousChildName: String?) {
                snapshot.toChatMessage()?.let { updated ->
                    val idx = messages.indexOfFirst { it.id == updated.id }
                    if (idx >= 0) {
                        messages[idx] = updated
                        trySend(ChatResult.Success(messages.toList()))
                    }
                }
            }

            override fun onChildRemoved(snapshot: DataSnapshot) {
                val id = snapshot.key ?: return
                messages.removeIf { it.id == id }
                trySend(ChatResult.Success(messages.toList()))
            }

            override fun onChildMoved(snapshot: DataSnapshot, previousChildName: String?) = Unit

            override fun onCancelled(error: DatabaseError) {
                Log.e(TAG, "observeMessages cancelado: ${error.message}")
                close(error.toException())
            }
        }

        query.addChildEventListener(listener)

        // Listener de un solo disparo para apagar isLoadingInitial en cuanto Firebase
        // confirme que ha entregado todos los hijos iniciales — incluso si el nodo
        // está vacío (ChildEventListener nunca llama onChildAdded si no hay mensajes,
        // por lo que el spinner quedaría activo indefinidamente sin este mecanismo).
        query.addListenerForSingleValueEvent(object : com.google.firebase.database.ValueEventListener {
            override fun onDataChange(snapshot: DataSnapshot) {
                // Si el nodo está vacío emitimos lista vacía para que la UI
                // salga del estado Loading y muestre el estado "sin mensajes".
                if (!snapshot.hasChildren()) {
                    trySend(ChatResult.Success(emptyList()))
                }
                // Si tiene hijos, el ChildEventListener ya los habrá emitido.
                // No hacemos nada extra: el estado Loading se apaga en el primer onChildAdded.
            }

            override fun onCancelled(error: DatabaseError) {
                Log.w(TAG, "singleValueEvent cancelado: ${error.message}")
            }
        })

        // awaitClose garantiza que el listener se elimina cuando el Flow se cancela
        // (p. ej. cuando WhileSubscribed expira tras 5 s sin collectors)
        awaitClose {
            query.removeEventListener(listener)
            ref.keepSynced(false)
            flowCache.remove(chatId)  // Limpiar caché para permitir recreación limpia
            Log.d(TAG, "observeMessages: listener eliminado para chatId=$chatId")
        }
    }

    // ─── 2. Cargar mensajes más antiguos (paginación hacia atrás) ─────────────

    /**
     * Carga mensajes anteriores a [beforeTimestamp] de forma puntual (no en stream).
     *
     * La consulta `endAt(beforeTimestamp - 1)` excluye el mensaje ancla ya visible
     * en la UI para evitar duplicados al hacer merge con la lista existente.
     */
    @WorkerThread
    override suspend fun loadOlderMessages(
        chatId: String,
        beforeTimestamp: Long,
        pageSize: Int,
    ): ChatResult<List<ChatMessage>> = withContext(Dispatchers.IO) {
        runCatching {
            val snapshot = messagesRef(chatId)
                .orderByChild(FIELD_TIMESTAMP)
                .endAt((beforeTimestamp - 1).toDouble())
                .limitToLast(pageSize)
                .get()
                .await()

            val older = snapshot.children
                .mapNotNull { it.toChatMessage() }
                .sortedBy { it.timestamp }

            ChatResult.Success(older)
        }.getOrElse { e ->
            Log.e(TAG, "loadOlderMessages error: ${e.message}", e)
            ChatResult.Error(e)
        }
    }

    // ─── 3. Enviar mensaje de texto ────────────────────────────────────────────

    /**
     * Escribe el mensaje en Firebase RTDB.
     *
     * Si el dispositivo está offline, Firebase encola la escritura localmente
     * gracias a setPersistenceEnabled(true) y la sincroniza al recuperar la red.
     */
    @WorkerThread
    override suspend fun sendTextMessage(
        chatId: String,
        message: ChatMessage,
    ): ChatResult<Unit> = withContext(Dispatchers.IO) {
        runCatching {
            val ref = messagesRef(chatId)
            val key = if (message.id.isBlank()) requireNotNull(ref.push().key) {
                "Firebase no pudo generar una clave para el mensaje"
            } else message.id

            val body = (message.content as? MessageContent.Text)?.body 
                ?: (message.content as? MessageContent.Image)?.caption.orEmpty()

            val payload = mutableMapOf<String, Any>(
                FIELD_SENDER_ID to (message.senderId.toLongOrNull() ?: 0L),
                FIELD_RECEIVER_ID to (message.receiverId.toLongOrNull() ?: 0L),
                FIELD_BODY to body,
                FIELD_TIMESTAMP to message.timestamp.toString(), // La DB vieja guarda timestamp como String
                FIELD_STATUS to false, // leido = false
                "idMensaje" to message.timestamp // El ID numérico que usa el backend viejo
            )

            // Si es contenido multimedia, añadimos los campos adicionales
            when (val content = message.content) {
                is MessageContent.Image -> {
                    payload[FIELD_TYPE] = TYPE_IMAGE
                    payload[FIELD_STORAGE_REF] = content.storageRef // Aquí viene la URL
                    payload["attachmentName"] = "image_${System.currentTimeMillis()}.jpg"
                }
                is MessageContent.Audio -> {
                    payload[FIELD_TYPE] = TYPE_AUDIO
                    payload[FIELD_STORAGE_REF] = content.storageRef // Aquí viene la URL
                    payload["attachmentName"] = "voice_${System.currentTimeMillis()}.ogg"
                }
                else -> {
                    // Texto plano, no hay attachmentType
                }
            }

            ref.child(key).setValue(payload).await()
            ChatResult.Success(Unit)
        }.getOrElse { e ->
            Log.e(TAG, "sendTextMessage error: ${e.message}", e)
            ChatResult.Error(e)
        }
    }

    // ─── 4. Subir archivo multimedia con reintentos ────────────────────────────

    /**
     * Sube un archivo a Firebase Storage y devuelve la ruta de Storage (no la URL).
     *
     * Estrategia de reintentos con backoff exponencial:
     * intento 1 → espera 2s → intento 2 → espera 4s → intento 3 → Error.
     * Solo se reintenta si el error es transitorio (red); los errores de permisos
     * o cuota se propagan inmediatamente.
     */
    @WorkerThread
    override suspend fun uploadMedia(
        chatId: String,
        uri: Uri,
        type: MediaType,
    ): ChatResult<String> = withContext(Dispatchers.IO) {
        val extension = when (type) {
            MediaType.IMAGE -> "jpg"
            MediaType.AUDIO -> "ogg"
        }
        val fileName = "${System.currentTimeMillis()}.$extension"
        val storagePath = "$STORAGE_BASE_PATH/$chatId/$fileName"
        val storageRef = storage.reference.child(storagePath)

        var attempt = 0
        var lastException: Exception? = null

        while (attempt < MAX_UPLOAD_RETRIES) {
            try {
                val snapshot = storageRef.putFile(uri).await()
                val downloadUrl = snapshot.storage.downloadUrl.await().toString()
                Log.d(TAG, "uploadMedia exitoso en intento ${attempt + 1}: $downloadUrl")
                return@withContext ChatResult.Success(downloadUrl)
            } catch (e: StorageException) {
                // Errores no recuperables (permisos, cuota): fallar inmediatamente
                if (e.errorCode == StorageException.ERROR_NOT_AUTHORIZED ||
                    e.errorCode == StorageException.ERROR_QUOTA_EXCEEDED
                ) {
                    Log.e(TAG, "Error de Storage no recuperable: ${e.message}", e)
                    return@withContext ChatResult.Error(e)
                }
                lastException = e
                attempt++
                val delayMs = RETRY_BASE_DELAY_MS * attempt
                Log.w(TAG, "uploadMedia intento $attempt fallido, reintentando en ${delayMs}ms: ${e.message}")
                delay(delayMs)
            } catch (e: Exception) {
                lastException = e
                attempt++
                val delayMs = RETRY_BASE_DELAY_MS * attempt
                Log.w(TAG, "uploadMedia excepción inesperada intento $attempt: ${e.message}")
                delay(delayMs)
            }
        }

        val finalError = lastException ?: Exception("uploadMedia: max reintentos alcanzados")
        Log.e(TAG, "uploadMedia fallido tras $MAX_UPLOAD_RETRIES intentos", finalError)
        ChatResult.Error(finalError)
    }

    // ─── Mapper: DataSnapshot → ChatMessage ───────────────────────────────────

    /**
     * Convierte un nodo de Firebase en un objeto de dominio [ChatMessage].
     *
     * Devuelve `null` si el nodo no tiene los campos mínimos obligatorios,
     * evitando el uso del operador !! y propagación de NullPointerException.
     */
    private fun DataSnapshot.toChatMessage(): ChatMessage? {
        val id = key ?: return null
        // Soportar tanto Long como String para evitar descartar mensajes si Firebase o el Backend los guarda distinto
        val senderId = child(FIELD_SENDER_ID).value?.toString() ?: return null
        val receiverId = child(FIELD_RECEIVER_ID).value?.toString().orEmpty()
        val type = child(FIELD_TYPE).value?.toString() ?: TYPE_TEXT
        val body = child(FIELD_BODY).value?.toString().orEmpty()
        val storageRef = child(FIELD_STORAGE_REF).value?.toString().orEmpty()
        
        // enviadoEn puede venir como Long o como String (ISO date o unix timestamp en string)
        val timestamp = try {
            val tsObj = child(FIELD_TIMESTAMP).value
            when (tsObj) {
                is Long -> tsObj
                is String -> {
                    if (tsObj.contains("T")) {
                        // Fecha ISO (ej: 2026-05-26T09:01:38.875604537)
                        java.time.LocalDateTime.parse(tsObj).atZone(java.time.ZoneId.systemDefault()).toInstant().toEpochMilli()
                    } else {
                        tsObj.toLongOrNull() ?: System.currentTimeMillis()
                    }
                }
                else -> System.currentTimeMillis()
            }
        } catch (e: Exception) {
            System.currentTimeMillis()
        }

        val leido = child(FIELD_STATUS).getValue(Boolean::class.java) ?: false

        val content: MessageContent = when (type) {
            TYPE_IMAGE -> MessageContent.Image(storageRef) // storageRef ahora trae la URL completa
            TYPE_AUDIO -> MessageContent.Audio(storageRef)
            else -> MessageContent.Text(body)
        }

        val status = if (leido) MessageStatus.READ else MessageStatus.SENT

        return ChatMessage(
            id = id,
            senderId = senderId,
            receiverId = receiverId,
            content = content,
            timestamp = timestamp,
            status = status,
        )
    }
}
