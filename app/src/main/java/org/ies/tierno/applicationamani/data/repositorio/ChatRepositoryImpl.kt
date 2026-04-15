package org.ies.tierno.applicationamani.data.repositorio

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService
import org.ies.tierno.applicationamani.domain.models.Message

class ChatRepositoryImpl(
    private val chatFirebaseService: ChatFirebaseService
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
        return chatFirebaseService.sendMessage(
            senderId,
            receiverId,
            content,
            attachmentUrl,
            attachmentType?.name,
            attachmentName
        )
    }

    override suspend fun markMessagesAsRead(senderId: Long, receiverId: Long): Result<Unit> {
        return chatFirebaseService.markMessagesAsRead(senderId, receiverId)
    }

    override suspend fun getMessages(currentUserId: Long, otherUserId: Long): Result<List<Message>> {
        return chatFirebaseService.getMessages(currentUserId, otherUserId)
    }
}
