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

class ChatFirebaseService(
    private val firebaseInstance: FirebaseInstance,
) {
    private val chatsRef = firebaseInstance.getReference("chats")
    private val usersRef = firebaseInstance.getReference("users")
    private val typingRef = firebaseInstance.getReference("typing")

    companion object {
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
            val asLong = node.getValue(Long::class.java)
            if (asLong != null) return asLong
            val asString = node.getValue(String::class.java)
            val parsed = asString?.toLongOrNull()
            if (parsed != null) return parsed
        }
        return null
    }

    private fun DataSnapshot.longMapValue(key: String): Map<String, Long>? {
        val mapNode = child(key)
        if (!mapNode.exists()) return null

        val result = mutableMapOf<String, Long>()
        for (entry in mapNode.children) {
            val parsed =
                entry.getValue(Long::class.java)
                    ?: entry.getValue(String::class.java)?.toLongOrNull()
            if (parsed != null && entry.key != null) {
                result[entry.key!!] = parsed
            }
        }
        return result.ifEmpty { null }
    }

    private fun parseMessage(
        child: DataSnapshot,
        currentUserId: Long? = null,
    ): Message {
        val idMensaje = child.longValue("idMensaje") ?: 0L
        val senderId = child.longValue("idSender", "senderId") ?: 0L
        val mensaje = child.child("mensaje").getValue(String::class.java) ?: ""
        val enviadoEnRaw = child.child("enviadoEn").getValue()
        val timestamp =
            when (enviadoEnRaw) {
                is Long -> enviadoEnRaw
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
        val attachmentUrl = child.child("attachmentUrl").getValue(String::class.java)
        val attachmentType =
            child.child("attachmentType").getValue(String::class.java)?.let {
                try {
                    org.ies.tierno.applicationamani.domain.models.AttachmentType
                        .valueOf(it)
                } catch (e: IllegalArgumentException) {
                    null
                }
            }
        val attachmentName = child.child("attachmentName").getValue(String::class.java)

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

            val query = messagesRef.orderByChild("idMensaje").equalTo(messageId.toDouble())
            val snapshot = query.get().await()

            for (child in snapshot.children) {
                val updateMap = mutableMapOf<String, Any>("attachmentUrl" to attachmentUrl)
                attachmentType?.let { updateMap["attachmentType"] = it }
                attachmentName?.let { updateMap["attachmentName"] = it }
                child.ref.updateChildren(updateMap).await()
            }
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }

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

    suspend fun markMessageDelivered(
        messageId: Long,
        receiverId: Long,
    ): Result<Unit> = Result.success(Unit)

    suspend fun markMessageAsRead(
        messageId: Long,
        receiverId: Long,
    ): Result<Unit> = Result.success(Unit)

    fun observeMessageDelivery(
        messageId: Long,
        receiverId: Long,
    ): Flow<Boolean> =
        callbackFlow {
            trySend(false)
            awaitClose {}
        }

    fun observeMessageRead(
        messageId: Long,
        receiverId: Long,
    ): Flow<Boolean> =
        callbackFlow {
            trySend(false)
            awaitClose {}
        }
}
