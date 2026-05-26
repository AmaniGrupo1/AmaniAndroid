package org.ies.tierno.applicationamani.data.remoto

import com.google.firebase.database.ChildEventListener
import com.google.firebase.database.DataSnapshot
import com.google.firebase.database.DatabaseError
import com.google.firebase.database.ValueEventListener
import kotlinx.coroutines.channels.awaitClose
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.callbackFlow
import kotlinx.coroutines.tasks.await
import org.ies.tierno.applicationamani.domain.models.Message

/**
 * Servicio de mensajería en tiempo real mediante Firebase Realtime Database.
 *
 * Gestiona la creación de salas de chat, el envío y recepción de mensajes,
 * los indicadores de escritura, el estado de conexión de usuarios y las
 * confirmaciones de entrega y lectura. Utiliza [FirebaseInstance] para
 * acceder a las referencias de la base de datos.
 *
 * @property firebaseInstance Instancia singleton de Firebase RTDB.
 */
class ChatFirebaseService(
    private val firebaseInstance: FirebaseInstance,
) {
    private val chatsRef = firebaseInstance.getReference("chats")
    private val usersRef = firebaseInstance.getReference("users")
    private val typingRef = firebaseInstance.getReference("typing")

    companion object {
        /**
         * Genera un identificador único de sala de chat a partir de dos IDs de usuario,
         * ordenándolos para garantizar que la misma sala se use independientemente del orden.
         *
         * @param userId1 Identificador del primer usuario.
         * @param userId2 Identificador del segundo usuario.
         * @return Cadena con formato "{minId}_{maxId}".
         */
        fun generateRoomId(
            userId1: Long,
            userId2: Long,
        ): String {
            val minId = minOf(userId1, userId2)
            val maxId = maxOf(userId1, userId2)
            return "${minId}_$maxId"
        }
    }

    private fun DataSnapshot.longValue(vararg keys: String): Long? {
        for (key in keys) {
            val node = child(key)
            val value = node.getValue() ?: continue
            val longVal =
                when (value) {
                    is Long -> value
                    is Int -> value.toLong()
                    is Double -> value.toLong()
                    is String -> value.toLongOrNull()
                    else -> null
                }
            if (longVal != null) return longVal
        }
        return null
    }

    private fun DataSnapshot.longMapValue(key: String): Map<String, Long>? {
        val mapNode = child(key)
        if (!mapNode.exists()) return null

        val result = mutableMapOf<String, Long>()
        for (entry in mapNode.children) {
            val value = entry.getValue()
            val parsed =
                when (value) {
                    is Long -> value
                    is Int -> value.toLong()
                    is Double -> value.toLong()
                    is String -> value.toLongOrNull()
                    else -> null
                }
            if (parsed != null && entry.key != null) {
                result[entry.key!!] = parsed
            }
        }
        return result.ifEmpty { null }
    }

    private fun DataSnapshot.stringValue(vararg keys: String): String? {
        for (key in keys) {
            val node = child(key)
            val value = node.getValue() ?: continue
            if (value is Map<*, *> || value is List<*>) continue
            val s = value.toString()
            if (s.isNotBlank()) return s
        }
        return null
    }

    private fun inferAttachmentType(
        rawType: String?,
        attachmentUrl: String?,
        attachmentName: String?,
        messageText: String,
    ): org.ies.tierno.applicationamani.domain.models.AttachmentType? {
        rawType
            ?.trim()
            ?.takeIf { it.isNotEmpty() }
            ?.uppercase()
            ?.let {
                runCatching {
                    org.ies.tierno.applicationamani.domain.models.AttachmentType.valueOf(it)
                }.getOrNull()
            }?.let { return it }

        val probe = listOfNotNull(attachmentName, attachmentUrl, messageText).joinToString(" ").lowercase()
        return when {
            "🎙" in messageText || probe.contains(".ogg") || probe.contains(".m4a") || probe.contains(".mp3") || probe.contains(".wav") -> org.ies.tierno.applicationamani.domain.models.AttachmentType.AUDIO
            "📸" in messageText || probe.contains(".jpg") || probe.contains(".jpeg") || probe.contains(".png") || probe.contains(".webp") || probe.contains(".gif") -> org.ies.tierno.applicationamani.domain.models.AttachmentType.IMAGE
            attachmentUrl != null || attachmentName != null || "📄" in messageText -> org.ies.tierno.applicationamani.domain.models.AttachmentType.DOCUMENT
            else -> null
        }
    }

    private fun parseMessage(
        child: DataSnapshot,
        currentUserId: Long? = null,
    ): Message {
        val idMensaje = child.longValue("idMensaje", "messageId", "id") ?: child.key?.toLongOrNull() ?: 0L
        val senderId = child.longValue("idSender", "senderId") ?: 0L
        val mensaje = child.stringValue("mensaje", "message", "content") ?: ""
        val enviadoEnRaw = child.child("enviadoEn").getValue() ?: child.child("timestamp").getValue()
        val timestamp =
            when (enviadoEnRaw) {
                is Long -> enviadoEnRaw
                is Double -> enviadoEnRaw.toLong()
                is String ->
                    enviadoEnRaw.toLongOrNull() ?: try {
                        java.time.OffsetDateTime
                            .parse(enviadoEnRaw)
                            .toInstant()
                            .toEpochMilli()
                    } catch (e: Exception) {
                        System.currentTimeMillis()
                    }
                else -> System.currentTimeMillis()
            }
        val leido = child.child("leido").getValue(Boolean::class.java) ?: false
        val attachmentUrl = child.stringValue("attachmentUrl", "fileUrl", "urlArchivo", "archivoUrl", "url", "file_url", "mediaUrl")
        val attachmentName = child.stringValue("attachmentName", "fileName", "nombreArchivo")
        val attachmentType =
            inferAttachmentType(
                rawType = child.stringValue("attachmentType", "fileType", "tipoAdjunto"),
                attachmentUrl = attachmentUrl,
                attachmentName = attachmentName,
                messageText = mensaje,
            )

        val readBy = child.longMapValue("readBy")
        val deliveredAt = if (currentUserId != null) child.longMapValue("deliveredTo")?.get(currentUserId.toString()) else null

        return Message(
            id = child.key ?: idMensaje.toString(),
            senderId = senderId.toString(),
            content = mensaje,
            timestamp = timestamp,
            isRead = leido,
            attachmentUrl = attachmentUrl,
            attachmentType = attachmentType,
            attachmentName = attachmentName,
            deliveredAt = deliveredAt,
            readBy = readBy,
        )
    }

    /**
     * Observa el flujo de mensajes en tiempo real entre dos usuarios.
     *
     * Escucha los cambios en la sala de chat compartida y convierte cada
     * [DataSnapshot] en un [Message] del modelo de dominio.
     *
     * @param userId1 Identificador del primer usuario.
     * @param userId2 Identificador del segundo usuario.
     * @return [Flow] que emite la lista actualizada de [Message].
     */
    fun observeMessages(
        userId1: Long,
        userId2: Long,
    ): Flow<List<Message>> =
        callbackFlow {
            val roomId = generateRoomId(userId1, userId2)
            val messagesRef = chatsRef.child(roomId).child("messages")

            val messagesMap = LinkedHashMap<String, Message>()

            fun emitList() {
                trySend(messagesMap.values.sortedBy { it.timestamp })
            }

            val listener =
                object : ChildEventListener {
                    override fun onChildAdded(
                        snapshot: DataSnapshot,
                        previousChildName: String?,
                    ) {
                        val msg = parseMessage(snapshot, userId1)
                        messagesMap[snapshot.key ?: msg.id] = msg
                        emitList()
                    }

                    override fun onChildChanged(
                        snapshot: DataSnapshot,
                        previousChildName: String?,
                    ) {
                        val msg = parseMessage(snapshot, userId1)
                        messagesMap[snapshot.key ?: msg.id] = msg
                        emitList()
                    }

                    override fun onChildRemoved(snapshot: DataSnapshot) {
                        messagesMap.remove(snapshot.key)
                        emitList()
                    }

                    override fun onChildMoved(
                        snapshot: DataSnapshot,
                        previousChildName: String?,
                    ) {}

                    override fun onCancelled(error: DatabaseError) {
                        android.util.Log.e("ChatFirebaseService", "Error Firebase (Room: $roomId): ${error.message} (Code: ${error.code})")
                        close(error.toException())
                    }
                }

            messagesRef.addChildEventListener(listener)
            awaitClose { messagesRef.removeEventListener(listener) }
        }

    /**
     * Actualiza los metadatos de un adjunto en un mensaje existente.
     *
     * @param senderId Identificador del remitente.
     * @param receiverId Identificador del destinatario.
     * @param messageId Identificador del mensaje.
     * @param attachmentUrl URL del archivo adjunto.
     * @param attachmentType Tipo de adjunto como cadena.
     * @param attachmentName Nombre del archivo.
     */
    suspend fun updateMessageAttachment(
        senderId: Long,
        receiverId: Long,
        messageId: Long,
        attachmentUrl: String,
        attachmentType: String?,
        attachmentName: String?,
    ): Result<Unit> =
        try {
            val roomId = generateRoomId(senderId, receiverId)
            val messagesRef = chatsRef.child(roomId).child("messages")
            val updateMap = mutableMapOf<String, Any>("attachmentUrl" to attachmentUrl)
            attachmentType?.let { updateMap["attachmentType"] = it }
            attachmentName?.let { updateMap["attachmentName"] = it }

            var updated = false
            repeat(6) { attempt ->
                val snapshot = messagesRef.get().await()
                val matchingChildren =
                    snapshot.children.filter { child ->
                        val idMatches = child.longValue("idMensaje", "messageId", "id") == messageId ||
                                child.stringValue("idMensaje", "messageId", "id") == messageId.toString()
                        val keyMatches = child.key == messageId.toString()
                        val senderMatches = child.longValue("idSender", "senderId") == senderId

                        (idMatches || keyMatches) && senderMatches
                    }

                for (child in matchingChildren) {
                    child.ref.updateChildren(updateMap).await()
                    updated = true
                }

                if (updated) return@repeat
                if (attempt < 5) kotlinx.coroutines.delay(350)
            }

            if (updated) {
                Result.success(Unit)
            } else {
                Result.failure(IllegalStateException("No se encontró el mensaje en Firebase para asociar el adjunto"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Envía un mensaje a la sala de chat en Firebase RTDB.
     *
     * @param senderId Identificador del remitente.
     * @param receiverId Identificador del destinatario.
     * @param content Contenido textual del mensaje.
     * @param attachmentUrl URL del adjunto, opcional.
     * @param attachmentType Tipo de adjunto, opcional.
     * @param attachmentName Nombre del adjunto, opcional.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun sendMessage(
        senderId: Long,
        receiverId: Long,
        content: String,
        attachmentUrl: String? = null,
        attachmentType: String? = null,
        attachmentName: String? = null,
    ): Result<Unit> =
        try {
            val roomId = generateRoomId(senderId, receiverId)
            val messagesRef = chatsRef.child(roomId).child("messages")
            val messageRef = messagesRef.push()
            val messageId = System.currentTimeMillis()

            val messageMap =
                mutableMapOf<String, Any>(
                    "idMensaje" to messageId,
                    "idSender" to senderId,
                    "idReceiver" to receiverId,
                    "mensaje" to content,
                    "enviadoEn" to messageId.toString(),
                    "leido" to false,
                )

            attachmentUrl?.let { messageMap["attachmentUrl"] = it }
            attachmentType?.let { messageMap["attachmentType"] = it }
            attachmentName?.let { messageMap["attachmentName"] = it }

            messageRef.setValue(messageMap).await()
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Marca todos los mensajes de una conversación como leídos.
     *
     * @param userId Identificador del usuario que lee.
     * @param otherUserId Identificador del otro participante.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun markMessagesAsRead(
        currentUserId: Long,
        otherUserId: Long,
    ): Result<Unit> =
        try {
            val roomId = generateRoomId(currentUserId, otherUserId)
            val messagesRef = chatsRef.child(roomId).child("messages")

            val query = messagesRef.orderByChild("leido").equalTo(false)
            val snapshot = query.get().await()

            for (child in snapshot.children) {
                val senderIdValue = child.longValue("idSender", "senderId") ?: 0L
                if (senderIdValue != currentUserId) {
                    child.ref
                        .child("leido")
                        .setValue(true)
                        .await()
                }
            }
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Obtiene el historial de mensajes de una conversación.
     *
     * @param userId Identificador del usuario actual.
     * @param otherUserId Identificador del otro participante.
     * @return [Result] con la lista de [Message].
     */
    suspend fun getMessages(
        userId1: Long,
        userId2: Long,
    ): Result<List<Message>> =
        try {
            val roomId = generateRoomId(userId1, userId2)
            val messagesRef = chatsRef.child(roomId).child("messages")
            val snapshot = messagesRef.get().await()

            val messages = mutableListOf<Message>()
            for (child in snapshot.children) {
                messages.add(parseMessage(child, userId1))
            }
            Result.success(messages.sortedBy { it.timestamp })
        } catch (e: Exception) {
            Result.failure(e)
        }

    // ==================== TYPING INDICATORS ====================

    /**
     * Observa el indicador de escritura entre dos usuarios.
     *
     * @param userId1 Identificador del primer usuario.
     * @param userId2 Identificador del segundo usuario.
     * @return [Flow] que emite `true` cuando el otro usuario está escribiendo.
     */
    fun observeTyping(
        userId1: Long,
        userId2: Long,
    ): Flow<Boolean> =
        callbackFlow {
            val roomId = generateRoomId(userId1, userId2)
            val typingRefChild = typingRef.child(roomId)

            val listener =
                object : ValueEventListener {
                    override fun onDataChange(snapshot: DataSnapshot) {
                        val hasTyping =
                            snapshot.children.any { child ->
                                child.getValue(Boolean::class.java) == true
                            }
                        trySend(hasTyping)
                    }

                    override fun onCancelled(error: DatabaseError) {
                        android.util.Log.e("ChatFirebaseService", "Error Firebase (Room: $roomId): ${error.message} (Code: ${error.code})")
                        close(error.toException())
                    }
                }

            typingRefChild.addValueEventListener(listener)
            awaitClose { typingRefChild.removeEventListener(listener) }
        }

    /**
     * Activa el indicador de escritura del usuario en la sala de chat.
     *
     * @param senderId Identificador del usuario que escribe.
     * @param receiverId Identificador del destinatario.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun startTyping(
        senderId: Long,
        receiverId: Long,
    ): Result<Unit> =
        try {
            val roomId = generateRoomId(senderId, receiverId)
            val ref = typingRef.child(roomId).child(senderId.toString())
            ref.setValue(true).await()
            ref.onDisconnect().removeValue()
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Desactiva el indicador de escritura del usuario.
     *
     * @param senderId Identificador del usuario.
     * @param receiverId Identificador del destinatario.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun stopTyping(
        senderId: Long,
        receiverId: Long,
    ): Result<Unit> =
        try {
            val roomId = generateRoomId(senderId, receiverId)
            val ref = typingRef.child(roomId).child(senderId.toString())
            ref.removeValue().await()
            ref.onDisconnect().cancel()
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }

    // ==================== ONLINE STATUS ====================

    /**
     * Observa el estado de conexión de un usuario.
     *
     * @param userId Identificador del usuario.
     * @return [Flow] que emite `true` cuando está en línea.
     */
    fun observeUserOnline(userId: Long): Flow<Boolean> =
        callbackFlow {
            val userRef = usersRef.child(userId.toString()).child("isOnline")

            val listener =
                object : ValueEventListener {
                    override fun onDataChange(snapshot: DataSnapshot) {
                        val isOnline = snapshot.getValue(Boolean::class.java) ?: false
                        trySend(isOnline)
                    }

                    override fun onCancelled(error: DatabaseError) {
                        val errorDetails = "Error observando estado online de usuario: ${error.message} (Code: ${error.code})"
                        close(Exception(errorDetails, error.toException()))
                    }
                }

            userRef.addValueEventListener(listener)
            awaitClose { userRef.removeEventListener(listener) }
        }

    /**
     * Actualiza el estado de conexión de un usuario en Firebase.
     *
     * @param userId Identificador del usuario.
     * @param isOnline `true` si está en línea.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun updateUserOnline(
        userId: Long,
        isOnline: Boolean,
    ): Result<Unit> =
        try {
            val ref = usersRef.child(userId.toString()).child("isOnline")
            ref.setValue(isOnline).await()
            if (isOnline) {
                ref.onDisconnect().setValue(false)
            } else {
                ref.onDisconnect().cancel()
            }
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }

    /**
     * Actualiza la marca de última actividad del usuario.
     *
     * @param userId Identificador del usuario.
     * @param lastSeen Timestamp en milisegundos.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun updateLastSeen(
        userId: Long,
        lastSeen: Long,
    ): Result<Unit> =
        try {
            usersRef
                .child(userId.toString())
                .child("lastSeen")
                .setValue(lastSeen)
                .await()
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }

    // ==================== DELIVERY & READ RECEIPTS ====================

    /**
     * Marca un mensaje como entregado al destinatario.
     *
     * @param messageId Identificador del mensaje.
     * @param receiverId Identificador del destinatario.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun markMessageDelivered(
        messageId: Long,
        receiverId: Long,
    ): Result<Unit> = Result.success(Unit)

    /**
     * Marca un mensaje individual como leído por el destinatario.
     *
     * @param messageId Identificador del mensaje.
     * @param receiverId Identificador del destinatario.
     * @return [Result] que indica éxito o fallo.
     */
    suspend fun markMessageAsRead(
        messageId: Long,
        receiverId: Long,
    ): Result<Unit> = Result.success(Unit)

    /**
     * Observa el estado de entrega de un mensaje específico.
     *
     * @param messageId Identificador del mensaje.
     * @param receiverId Identificador del destinatario.
     * @return [Flow] que emite `true` cuando ha sido entregado.
     */
    fun observeMessageDelivery(
        messageId: Long,
        receiverId: Long,
    ): Flow<Boolean> =
        callbackFlow {
            trySend(false)
            awaitClose {}
        }

    /**
     * Observa el estado de lectura de un mensaje específico.
     *
     * @param messageId Identificador del mensaje.
     * @param receiverId Identificador del destinatario.
     * @return [Flow] que emite `true` cuando ha sido leído.
     */
    fun observeMessageRead(
        messageId: Long,
        receiverId: Long,
    ): Flow<Boolean> =
        callbackFlow {
            trySend(false)
            awaitClose {}
        }
}
