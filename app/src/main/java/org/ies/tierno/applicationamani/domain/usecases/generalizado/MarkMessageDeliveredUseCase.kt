package org.ies.tierno.applicationamani.domain.usecases.generalizado

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

class MarkMessageDeliveredUseCase(
    private val chatRepository: ChatRepository,
) {
    suspend operator fun invoke(
        messageId: Long,
        receiverId: Long,
    ): Result<Unit> = chatRepository.markMessageDelivered(messageId, receiverId)
}
