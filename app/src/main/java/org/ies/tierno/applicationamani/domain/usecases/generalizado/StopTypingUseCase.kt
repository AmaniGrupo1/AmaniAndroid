package org.ies.tierno.applicationamani.domain.usecases.generalizado

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

class StopTypingUseCase(private val chatRepository: ChatRepository) {
    suspend operator fun invoke(senderId: Long, receiverId: Long): Result<Unit> {
        return chatRepository.stopTyping(senderId, receiverId)
    }
}
