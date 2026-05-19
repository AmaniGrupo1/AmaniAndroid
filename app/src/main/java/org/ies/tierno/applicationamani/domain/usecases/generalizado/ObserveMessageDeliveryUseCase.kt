package org.ies.tierno.applicationamani.domain.usecases.generalizado

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

class ObserveMessageDeliveryUseCase(
    private val chatRepository: ChatRepository,
) {
    operator fun invoke(
        messageId: Long,
        receiverId: Long,
    ): Flow<Boolean> = chatRepository.observeMessageDelivery(messageId, receiverId)
}
