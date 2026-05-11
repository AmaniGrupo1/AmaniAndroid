package org.ies.tierno.applicationamani.domain.usecases.generalizado

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

class UpdateUserOnlineUseCase(private val chatRepository: ChatRepository) {
    suspend operator fun invoke(userId: Long, isOnline: Boolean): Result<Unit> {
        return chatRepository.updateUserOnline(userId, isOnline)
    }
}
