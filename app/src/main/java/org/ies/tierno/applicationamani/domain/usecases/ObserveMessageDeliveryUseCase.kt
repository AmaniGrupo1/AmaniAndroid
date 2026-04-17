package org.ies.tierno.applicationamani.domain.usecases

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

class ObserveMessageDeliveryUseCase(private val chatRepository: ChatRepository) {
    operator fun invoke(messageId: Long, receiverId: Long): Flow<Boolean> {
        return chatRepository.observeMessageDelivery(messageId, receiverId)
    }
}
