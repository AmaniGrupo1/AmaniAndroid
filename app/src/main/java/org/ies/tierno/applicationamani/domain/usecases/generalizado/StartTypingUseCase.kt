package org.ies.tierno.applicationamani.domain.usecases.generalizado

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

/**
 * Caso de uso para notificar que el usuario ha empezado a escribir.
 *
 * Delega en el repositorio de chat la señalización del estado
 * de escritura para que el destinatario vea el indicador de «escribiendo…».
 *
 * @property chatRepository Repositorio de chat.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.ChatRepository
 */
class StartTypingUseCase(
    private val chatRepository: ChatRepository,
) {
    /**
     * Notifica que el usuario ha empezado a escribir un mensaje.
     *
     * @param senderId Identificador del remitente.
     * @param receiverId Identificador del destinatario.
     * @return [Result.success] con [Unit] si se notificó correctamente,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend operator fun invoke(
        senderId: Long,
        receiverId: Long,
    ): Result<Unit> = chatRepository.startTyping(senderId, receiverId)
}
