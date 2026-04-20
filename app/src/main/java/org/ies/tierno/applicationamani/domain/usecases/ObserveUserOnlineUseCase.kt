package org.ies.tierno.applicationamani.domain.usecases

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

class ObserveUserOnlineUseCase(private val chatRepository: ChatRepository) {
    operator fun invoke(userId: Long): Flow<Boolean> {
        return chatRepository.observeUserOnline(userId)
    }
}
