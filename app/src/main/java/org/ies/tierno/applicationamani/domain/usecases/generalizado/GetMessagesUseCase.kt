package org.ies.tierno.applicationamani.domain.usecases.generalizado

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.ies.tierno.applicationamani.domain.models.Message

class GetMessagesUseCase(
    private val chatRepository: ChatRepository,
) {
    operator fun invoke(
        currentUserId: Long,
        otherUserId: Long,
    ): Flow<List<Message>> = chatRepository.observeMessages(currentUserId, otherUserId)
}
