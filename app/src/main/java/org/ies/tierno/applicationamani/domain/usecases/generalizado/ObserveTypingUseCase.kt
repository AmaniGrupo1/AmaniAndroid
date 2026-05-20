package org.ies.tierno.applicationamani.domain.usecases.generalizado

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

/**
 * Caso de uso para observar el estado de escritura del otro usuario.
 *
 * Devuelve un [Flow] reactivo que emite `true` mientras el otro
 * participante de la conversación está escribiendo, y `false` cuando deja de hacerlo.
 *
 * @property chatRepository Repositorio de chat.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.ChatRepository
 */
class ObserveTypingUseCase(
    private val chatRepository: ChatRepository,
) {
    /**
     * Observa si el otro usuario está escribiendo.
     *
     * @param userId1 Identificador del usuario autenticado.
     * @param userId2 Identificador del otro participante.
     * @return [Flow] que emite `true` cuando el otro usuario está escribiendo.
     */
    operator fun invoke(
        userId1: Long,
        userId2: Long,
    ): Flow<Boolean> = chatRepository.observeTyping(userId1, userId2)
}
