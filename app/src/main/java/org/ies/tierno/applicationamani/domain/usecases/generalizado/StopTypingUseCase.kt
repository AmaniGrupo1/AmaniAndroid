package org.ies.tierno.applicationamani.domain.usecases.generalizado

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

/**
 * Caso de uso para notificar que el usuario ha dejado de escribir.
 *
 * Delega en el repositorio de chat la señalización del fin del
 * estado de escritura para ocultar el indicador de «escribiendo…».
 *
 * @property chatRepository Repositorio de chat.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.ChatRepository
 */
class StopTypingUseCase(
    private val chatRepository: ChatRepository,
) {
    /**
     * Notifica que el usuario ha dejado de escribir un mensaje.
     *
     * @param senderId Identificador del remitente.
     * @param receiverId Identificador del destinatario.
     * @return [Result.success] con [Unit] si se notificó correctamente,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend operator fun invoke(
        senderId: Long,
        receiverId: Long,
    ): Result<Unit> = chatRepository.stopTyping(senderId, receiverId)
}
