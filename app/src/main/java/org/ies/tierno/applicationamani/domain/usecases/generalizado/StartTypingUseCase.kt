package org.ies.tierno.applicationamani.domain.usecases.generalizado

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

class StartTypingUseCase(
    private val chatRepository: ChatRepository,
) {
    suspend operator fun invoke(
        senderId: Long,
        receiverId: Long,
    ): Result<Unit> = chatRepository.startTyping(senderId, receiverId)
}
