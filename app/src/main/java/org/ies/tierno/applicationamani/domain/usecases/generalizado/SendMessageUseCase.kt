package org.ies.tierno.applicationamani.domain.usecases.generalizado

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.ies.tierno.applicationamani.domain.models.AttachmentType

class SendMessageUseCase(private val chatRepository: ChatRepository) {
    suspend operator fun invoke(
        senderId: Long,
        receiverId: Long,
        content: String,
        attachmentUrl: String? = null,
        attachmentType: AttachmentType? = null,
        attachmentName: String? = null
    ): Result<Unit> {
        return chatRepository.sendMessage(
            senderId,
            receiverId,
            content,
            attachmentUrl,
            attachmentType,
            attachmentName
        )
}
}
