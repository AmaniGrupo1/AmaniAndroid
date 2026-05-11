package org.ies.tierno.applicationamani.domain.usecases.generalizado

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

class ObserveMessageReadUseCase(private val chatRepository: ChatRepository) {
    operator fun invoke(messageId: Long, receiverId: Long): Flow<Boolean> {
        return chatRepository.observeMessageRead(messageId, receiverId)
    }
}
