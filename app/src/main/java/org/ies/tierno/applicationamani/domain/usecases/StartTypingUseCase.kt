package org.ies.tierno.applicationamani.domain.usecases

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

class StartTypingUseCase(private val chatRepository: ChatRepository) {
    suspend operator fun invoke(senderId: Long, receiverId: Long): Result<Unit> {
        return chatRepository.startTyping(senderId, receiverId)
    }
}
