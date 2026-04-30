package org.ies.tierno.applicationamani.domain.usecases

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.ies.tierno.applicationamani.domain.models.Message
import org.ies.tierno.applicationamani.domain.models.MessageStatus

class SendMessageUseCase(private val repository: ChatRepository) {
    suspend operator fun invoke(
        senderId: Long,
        receiverId: Long,
        content: String,
        attachmentUrl: String? = null,
        attachmentType: org.ies.tierno.applicationamani.domain.models.AttachmentType? = null,
        attachmentName: String? = null
    ): Result<Unit> {
        val result = repository.sendMessage(
            senderId,
            receiverId,
            content,
            attachmentUrl,
            attachmentType,
            attachmentName
        )
        if (result.isFailure) {
            // TC-03: chat_offlineMessage_queuesForRetry
            val offlineMessage = Message(
                senderId = senderId.toString(),
                content = content,
                attachmentUrl = attachmentUrl,
                attachmentType = attachmentType,
                attachmentName = attachmentName,
                status = MessageStatus.PENDING_RETRY
            )
            repository.saveMessageOffline(offlineMessage)
        }
        return result
    }
}
