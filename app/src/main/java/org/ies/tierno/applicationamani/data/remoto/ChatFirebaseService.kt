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

                    messages.add(
                        Message(
                            id = idMensaje.toString(),
                            senderId = senderId.toString(),
                            content = mensaje,
                            timestamp = enviadoEn?.toLongOrNull() ?: System.currentTimeMillis(),
                            isRead = leido,
                            attachmentUrl = attachmentUrl,
                            attachmentType = attachmentType,
                            attachmentName = attachmentName
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
                val receiverIdValue = child.child("receiverId").getValue(String::class.java)?.toLongOrNull()
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

                messages.add(
                    Message(
                        id = idMensaje.toString(),
                        senderId = senderId?.toString() ?: "",
                        content = mensaje,
                        timestamp = enviadoEn?.toLongOrNull() ?: System.currentTimeMillis(),
                        isRead = leido,
                        attachmentUrl = attachmentUrl,
                        attachmentType = attachmentType,
                        attachmentName = attachmentName
                    )
                )
            }
            Result.success(messages.sortedBy { it.timestamp })
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}
