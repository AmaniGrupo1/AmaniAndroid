package org.ies.tierno.applicationamani.data.repositorio

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.domain.models.AttachmentType
import org.ies.tierno.applicationamani.domain.models.Message

interface ChatRepository {
    fun observeMessages(currentUserId: Long, otherUserId: Long): Flow<List<Message>>
    
suspend fun sendMessage(
        senderId: Long,
        receiverId: Long,
        content: String,
        attachmentUrl: String? = null,
        attachmentType: org.ies.tierno.applicationamani.domain.models.AttachmentType? = null,
        attachmentName: String? = null
    ): Result<Unit>

    suspend fun markMessagesAsRead(senderId: Long, receiverId: Long): Result<Unit>
    
    suspend fun getMessages(currentUserId: Long, otherUserId: Long): Result<List<Message>>
}
