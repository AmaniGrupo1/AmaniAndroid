package org.ies.tierno.applicationamani.domain.usecases

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

class MarkMessagesAsReadUseCase(private val chatRepository: ChatRepository) {
    suspend operator fun invoke(senderId: Long, receiverId: Long): Result<Unit> {
        return chatRepository.markMessagesAsRead(senderId, receiverId)
    }
}
