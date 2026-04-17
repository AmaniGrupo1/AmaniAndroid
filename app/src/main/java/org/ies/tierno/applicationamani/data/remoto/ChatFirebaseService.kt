package org.ies.tierno.applicationamani.data.remoto

import com.google.firebase.database.DataSnapshot
import com.google.firebase.database.DatabaseError
import com.google.firebase.database.ValueEventListener
import kotlinx.coroutines.channels.awaitClose
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.callbackFlow
import kotlinx.coroutines.tasks.await
import org.ies.tierno.applicationamani.domain.models.Message

class ChatFirebaseService(private val firebaseInstance: FirebaseInstance) {

    private val chatsRef = firebaseInstance.getReference("chats")
    private val usersRef = firebaseInstance.getReference("users")
    private val typingRef = firebaseInstance.getReference("typing")

    companion object {
        fun generateRoomId(userId1: Long, userId2: Long): String {
            val minId = minOf(userId1, userId2)
            val maxId = maxOf(userId1, userId2)
            return "${minId}_${maxId}"
        }
    }

    fun observeMessages(userId1: Long, userId2: Long): Flow<List<Message>> = callbackFlow {
        val roomId = generateRoomId(userId1, userId2)
        val messagesRef = chatsRef.child(roomId).child("messages")

        val listener = object : ValueEventListener {
            override fun onDataChange(snapshot: DataSnapshot) {
                val messages = mutableListOf<Message>()
                for (child in snapshot.children) {
                    val idMensaje = child.child("idMensaje").getValue(Long::class.java) ?: 0L
                    val senderId = child.child("idSender").getValue(Long::class.java) ?: 0L
                    val mensaje = child.child("mensaje").getValue(String::class.java) ?: ""
                    val enviadoEn = child.child("enviadoEn").getValue(String::class.java)
                    val leido = child.child("leido").getValue(Boolean::class.java) ?: false
                    val attachmentUrl = child.child("attachmentUrl").getValue(String::class.java)
                    val attachmentType = child.child("attachmentType").getValue(String::class.java)?.let {
                        try {
                            org.ies.tierno.applicationamani.domain.models.AttachmentType.valueOf(it)
                        } catch (e: IllegalArgumentException) {
                            null
                        }
                    }
                    val attachmentName = child.child("attachmentName").getValue(String::class.java)

                    // Leer readBy map si existe (Firebase serializa keys como strings)
                    val readByData = child.child("readBy").getValue(Map::class.java) as? Map<String, *>
                    val readBy = readByData?.mapKeys { it.key } as? Map<String, Long>

                    // Leer deliveredTo map
                    val deliveredToData = child.child("deliveredTo").getValue(Map::class.java) as? Map<String, *>
                    val deliveredAt = deliveredToData?.get(userId1.toString()) as? Long

                    messages.add(
                        Message(
                            id = idMensaje.toString(),
                            senderId = senderId.toString(),
                            content = mensaje,
                            timestamp = enviadoEn?.toLongOrNull() ?: System.currentTimeMillis(),
                            isRead = leido,
                            attachmentUrl = attachmentUrl,
                            attachmentType = attachmentType,
                            attachmentName = attachmentName,
                            deliveredAt = deliveredAt,
                            readBy = readBy
                        )
                    )
                }
                trySend(messages.sortedBy { it.timestamp })
            }

            override fun onCancelled(error: DatabaseError) {
                close(error.toException())
            }
        }

        messagesRef.addValueEventListener(listener)
        awaitClose { messagesRef.removeEventListener(listener) }
    }

    suspend fun sendMessage(
        senderId: Long,
        receiverId: Long,
        content: String,
        attachmentUrl: String? = null,
        attachmentType: String? = null,
        attachmentName: String? = null
    ): Result<Unit> {
        return try {
            val roomId = generateRoomId(senderId, receiverId)
            val messagesRef = chatsRef.child(roomId).child("messages")
            val messageRef = messagesRef.push()
            val messageId = System.currentTimeMillis()

            val messageMap = mutableMapOf<String, Any>(
                "idMensaje" to messageId,
                "idSender" to senderId,
                "idReceiver" to receiverId,
                "mensaje" to content,
                "enviadoEn" to messageId.toString(),
                "leido" to false
            )

            attachmentUrl?.let { messageMap["attachmentUrl"] = it }
            attachmentType?.let { messageMap["attachmentType"] = it }
            attachmentName?.let { messageMap["attachmentName"] = it }

            messageRef.setValue(messageMap).await()
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    suspend fun markMessagesAsRead(senderId: Long, receiverId: Long): Result<Unit> {
        return try {
            val roomId = generateRoomId(senderId, receiverId)
            val messagesRef = chatsRef.child(roomId).child("messages")
            val snapshot = messagesRef.get().await()

            for (child in snapshot.children) {
                val receiverIdValue = child.child("idReceiver").getValue(Long::class.java) ?: 0L
                val leido = child.child("leido").getValue(Boolean::class.java) ?: false

                if (receiverIdValue == senderId && !leido) {
                    messagesRef.child(child.key ?: "").child("leido").setValue(true).await()
                }
            }
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    suspend fun getMessages(userId1: Long, userId2: Long): Result<List<Message>> {
        return try {
            val roomId = generateRoomId(userId1, userId2)
            val messagesRef = chatsRef.child(roomId).child("messages")
            val snapshot = messagesRef.get().await()

            val messages = mutableListOf<Message>()
            for (child in snapshot.children) {
                val idMensaje = child.child("idMensaje").getValue(Long::class.java) ?: 0L
                val senderId = child.child("idSender").getValue(Long::class.java)
                val mensaje = child.child("mensaje").getValue(String::class.java) ?: ""
                val leido = child.child("leido").getValue(Boolean::class.java) ?: false
                val enviadoEn = child.child("enviadoEn").getValue(String::class.java)
                val attachmentUrl = child.child("attachmentUrl").getValue(String::class.java)
                val attachmentType = child.child("attachmentType").getValue(String::class.java)?.let {
                    try {
                        org.ies.tierno.applicationamani.domain.models.AttachmentType.valueOf(it)
                    } catch (e: IllegalArgumentException) {
                        null
                    }
                }
                val attachmentName = child.child("attachmentName").getValue(String::class.java)

                // Leer readBy map si existe
                val readByData = child.child("readBy").getValue(Map::class.java) as? Map<String, *>
                val readBy = readByData?.mapKeys { it.key } as? Map<String, Long>

                // Leer deliveredTo map
                val deliveredToData = child.child("deliveredTo").getValue(Map::class.java) as? Map<String, *>
                val deliveredAt = deliveredToData?.get(userId1.toString()) as? Long

                messages.add(
                    Message(
                        id = idMensaje.toString(),
                        senderId = senderId?.toString() ?: "",
                        content = mensaje,
                        timestamp = enviadoEn?.toLongOrNull() ?: System.currentTimeMillis(),
                        isRead = leido,
                        attachmentUrl = attachmentUrl,
                        attachmentType = attachmentType,
                        attachmentName = attachmentName,
                        deliveredAt = deliveredAt,
                        readBy = readBy
                    )
                )
            }
            Result.success(messages.sortedBy { it.timestamp })
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    // ==================== TYPING INDICATORS ====================

    fun observeTyping(userId1: Long, userId2: Long): Flow<Boolean> = callbackFlow {
        val roomId = generateRoomId(userId1, userId2)
        val typingRefChild = typingRef.child(roomId)

        val listener = object : ValueEventListener {
            override fun onDataChange(snapshot: DataSnapshot) {
                val hasTyping = snapshot.children.any { child ->
                    child.getValue(Boolean::class.java) == true
                }
                trySend(hasTyping)
            }

            override fun onCancelled(error: DatabaseError) {
                close(error.toException())
            }
        }

        typingRefChild.addValueEventListener(listener)
        awaitClose { typingRefChild.removeEventListener(listener) }
    }

    suspend fun startTyping(senderId: Long, receiverId: Long): Result<Unit> {
        return try {
            val roomId = generateRoomId(senderId, receiverId)
            typingRef.child(roomId).child(senderId.toString()).setValue(true).await()
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    suspend fun stopTyping(senderId: Long, receiverId: Long): Result<Unit> {
        return try {
            val roomId = generateRoomId(senderId, receiverId)
            typingRef.child(roomId).child(senderId.toString()).removeValue().await()
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    // ==================== ONLINE STATUS ====================

    fun observeUserOnline(userId: Long): Flow<Boolean> = callbackFlow {
        val userRef = usersRef.child(userId.toString()).child("isOnline")

        val listener = object : ValueEventListener {
            override fun onDataChange(snapshot: DataSnapshot) {
                val isOnline = snapshot.getValue(Boolean::class.java) ?: false
                trySend(isOnline)
            }

            override fun onCancelled(error: DatabaseError) {
                close(error.toException())
            }
        }

        userRef.addValueEventListener(listener)
        awaitClose { userRef.removeEventListener(listener) }
    }

    suspend fun updateUserOnline(userId: Long, isOnline: Boolean): Result<Unit> {
        return try {
            usersRef.child(userId.toString()).child("isOnline").setValue(isOnline).await()
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    suspend fun updateLastSeen(userId: Long, lastSeen: Long): Result<Unit> {
        return try {
            usersRef.child(userId.toString()).child("lastSeen").setValue(lastSeen).await()
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    // ==================== DELIVERY & READ RECEIPTS ====================

    suspend fun markMessageDelivered(messageId: Long, receiverId: Long): Result<Unit> {
        return try {
            // Buscar todos los mensajes en todos los rooms es costoso en Firebase
            // Simplificación: usar la estructura de datos existente
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    suspend fun markMessageAsRead(messageId: Long, receiverId: Long): Result<Unit> {
        return try {
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }

    fun observeMessageDelivery(messageId: Long, receiverId: Long): Flow<Boolean> = callbackFlow {
        // Simplificación: no implementado por ahora
        trySend(false)
        awaitClose {}
    }

    fun observeMessageRead(messageId: Long, receiverId: Long): Flow<Boolean> = callbackFlow {
        // Simplificación: no implementado por ahora
        trySend(false)
        awaitClose {}
    }
}
