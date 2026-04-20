package org.ies.tierno.applicationamani.domain.usecases

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

class ObserveTypingUseCase(private val chatRepository: ChatRepository) {
    operator fun invoke(userId1: Long, userId2: Long): Flow<Boolean> {
        return chatRepository.observeTyping(userId1, userId2)
    }
}
