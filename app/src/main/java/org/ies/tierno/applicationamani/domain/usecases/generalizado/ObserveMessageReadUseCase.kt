package org.ies.tierno.applicationamani.domain.usecases.generalizado

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

/**
 * Caso de uso para observar el estado de lectura de un mensaje.
 *
 * Devuelve un [Flow] reactivo que emite `true` cuando el mensaje
 * ha sido leído por el destinatario.
 *
 * @property chatRepository Repositorio de chat.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.ChatRepository
 */
class ObserveMessageReadUseCase(
    private val chatRepository: ChatRepository,
) {
    /**
     * Observa el estado de lectura de un mensaje.
     *
     * @param messageId Identificador único del mensaje.
     * @param receiverId Identificador del destinatario.
     * @return [Flow] que emite `true` cuando el mensaje ha sido leído.
     */
    operator fun invoke(
        messageId: Long,
        receiverId: Long,
    ): Flow<Boolean> = chatRepository.observeMessageRead(messageId, receiverId)
}
