package org.ies.tierno.applicationamani.data.repositorio

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.remoto.ChatApi
import org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService
import org.ies.tierno.applicationamani.data.remoto.SendMessageRequest
import org.ies.tierno.applicationamani.domain.models.Message

class ChatRepositoryImpl(
    private val chatFirebaseService: ChatFirebaseService,
    private val chatApi: ChatApi
) : ChatRepository {

    override fun observeMessages(currentUserId: Long, otherUserId: Long): Flow<List<Message>> {
        return chatFirebaseService.observeMessages(currentUserId, otherUserId)
    }

    override suspend fun sendMessage(
        senderId: Long,
        receiverId: Long,
        content: String,
        attachmentUrl: String?,
        attachmentType: org.ies.tierno.applicationamani.domain.models.AttachmentType?,
        attachmentName: String?
    ): Result<Unit> {
        return try {
            val response = chatApi.sendMessage(
                SendMessageRequest(
                    idSender = senderId,
                    idReceiver = receiverId,
                    mensaje = content,
                    idCita = null
                )
            )
            if (response.isSuccessful) {
                android.util.Log.d("ChatRepository", "Mensaje enviado OK — HTTP ${response.code()}")
                Result.success(Unit)
            } else {
                android.util.Log.e("ChatRepository", "Error enviando mensaje — HTTP ${response.code()}: ${response.message()}. Body: ${response.errorBody()?.string()}")
                Result.failure(Exception("Error sending message: ${response.code()} ${response.message()}"))
            }
        } catch (e: Exception) {
            android.util.Log.e("ChatRepository", "Excepción enviando mensaje: ${e.message}", e)
            Result.failure(e)
        }
    }

    override suspend fun markMessagesAsRead(currentUserId: Long, otherUserId: Long): Result<Unit> {
        return chatFirebaseService.markMessagesAsRead(currentUserId, otherUserId)
    }

    override suspend fun getMessages(currentUserId: Long, otherUserId: Long): Result<List<Message>> {
        return chatFirebaseService.getMessages(currentUserId, otherUserId)
    }

    override fun observeTyping(userId1: Long, userId2: Long): Flow<Boolean> {
        return chatFirebaseService.observeTyping(userId1, userId2)
    }

    override suspend fun startTyping(senderId: Long, receiverId: Long): Result<Unit> {
        return chatFirebaseService.startTyping(senderId, receiverId)
    }

    override suspend fun stopTyping(senderId: Long, receiverId: Long): Result<Unit> {
        return chatFirebaseService.stopTyping(senderId, receiverId)
    }

    override fun observeUserOnline(userId: Long): Flow<Boolean> {
        return chatFirebaseService.observeUserOnline(userId)
    }

    override suspend fun updateUserOnline(userId: Long, isOnline: Boolean): Result<Unit> {
        return chatFirebaseService.updateUserOnline(userId, isOnline)
    }

    override suspend fun updateLastSeen(userId: Long, lastSeen: Long): Result<Unit> {
        return chatFirebaseService.updateLastSeen(userId, lastSeen)
    }

    override suspend fun markMessageDelivered(messageId: Long, receiverId: Long): Result<Unit> {
        // Simplificado: no necesario por ahora
        return Result.success(Unit)
    }

    override suspend fun markMessageAsRead(messageId: Long, receiverId: Long): Result<Unit> {
        // Simplificado: no necesario por ahora
        return Result.success(Unit)
    }

    override fun observeMessageDelivery(messageId: Long, receiverId: Long): Flow<Boolean> {
        // Simplificado: no necesario por ahora
        return kotlinx.coroutines.flow.flow { emit(false) }
    }

    override fun observeMessageRead(messageId: Long, receiverId: Long): Flow<Boolean> {
        // Simplificado: no necesario por ahora
        return kotlinx.coroutines.flow.flow { emit(false) }
    }

    override suspend fun saveMessageOffline(message: Message): Result<Unit> {
        // TC-03: chat_offlineMessage_queuesForRetry
        // En una implementación real, aquí se guardaría en Room o DataStore
        return Result.success(Unit)
    }
}
