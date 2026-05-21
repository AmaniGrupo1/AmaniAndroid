package org.ies.tierno.applicationamani.domain.usecases.generalizado

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

/**
 * Caso de uso para marcar un mensaje individual como leído.
 *
 * Delega en el repositorio de chat la actualización del estado
 * de lectura de un mensaje concreto.
 *
 * @property chatRepository Repositorio de chat.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.ChatRepository
 */
class MarkMessageAsReadUseCase(
    private val chatRepository: ChatRepository,
) {
    /**
     * Marca un mensaje como leído por el destinatario.
     *
     * @param messageId Identificador único del mensaje.
     * @param receiverId Identificador del usuario que lo recibe.
     * @return [Result.success] con [Unit] si se marcó correctamente,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend operator fun invoke(
        messageId: Long,
        receiverId: Long,
    ): Result<Unit> = chatRepository.markMessageAsRead(messageId, receiverId)
}
