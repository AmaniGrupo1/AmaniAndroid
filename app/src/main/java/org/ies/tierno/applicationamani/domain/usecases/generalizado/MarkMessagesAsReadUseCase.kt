package org.ies.tierno.applicationamani.domain.usecases.generalizado

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

class MarkMessagesAsReadUseCase(
    private val chatRepository: ChatRepository,
) {
    suspend operator fun invoke(
        currentUserId: Long,
        otherUserId: Long,
    ): Result<Unit> = chatRepository.markMessagesAsRead(currentUserId, otherUserId)
}
