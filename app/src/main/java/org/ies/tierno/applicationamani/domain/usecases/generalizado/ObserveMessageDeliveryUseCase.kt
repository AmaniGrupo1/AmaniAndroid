package org.ies.tierno.applicationamani.domain.usecases.generalizado

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

/**
 * Caso de uso para observar el estado de entrega de un mensaje.
 *
 * Devuelve un [Flow] reactivo que emite `true` cuando el mensaje
 * ha sido entregado al destinatario.
 *
 * @property chatRepository Repositorio de chat.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.ChatRepository
 */
class ObserveMessageDeliveryUseCase(
    private val chatRepository: ChatRepository,
) {
    /**
     * Observa el estado de entrega de un mensaje.
     *
     * @param messageId Identificador único del mensaje.
     * @param receiverId Identificador del destinatario.
     * @return [Flow] que emite `true` cuando el mensaje ha sido entregado.
     */
    operator fun invoke(
        messageId: Long,
        receiverId: Long,
    ): Flow<Boolean> = chatRepository.observeMessageDelivery(messageId, receiverId)
}
