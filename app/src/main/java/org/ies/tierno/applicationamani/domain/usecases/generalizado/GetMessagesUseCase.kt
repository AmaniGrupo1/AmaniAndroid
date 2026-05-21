package org.ies.tierno.applicationamani.domain.usecases.generalizado

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository
import org.ies.tierno.applicationamani.domain.models.Message

/**
 * Caso de uso para observar los mensajes entre dos usuarios.
 *
 * Devuelve un [Flow] reactivo que emite la lista de mensajes
 * intercambiados entre el usuario actual y otro usuario.
 *
 * @property chatRepository Repositorio de chat.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.ChatRepository
 */
class GetMessagesUseCase(
    private val chatRepository: ChatRepository,
) {
    /**
     * Obtiene un flujo reactivo con los mensajes de una conversación.
     *
     * @param currentUserId Identificador del usuario autenticado.
     * @param otherUserId Identificador del otro participante.
     * @return [Flow] que emite una lista de [Message].
     */
    operator fun invoke(
        currentUserId: Long,
        otherUserId: Long,
    ): Flow<List<Message>> = chatRepository.observeMessages(currentUserId, otherUserId)
}
