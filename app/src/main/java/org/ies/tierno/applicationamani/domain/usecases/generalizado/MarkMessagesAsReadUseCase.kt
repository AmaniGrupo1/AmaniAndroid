package org.ies.tierno.applicationamani.domain.usecases.generalizado

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

/**
 * Caso de uso para marcar todos los mensajes de una conversación como leídos.
 *
 * Delega en el repositorio de chat la actualización masiva del estado
 * de lectura de los mensajes entre dos usuarios.
 *
 * @property chatRepository Repositorio de chat.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.ChatRepository
 */
class MarkMessagesAsReadUseCase(
    private val chatRepository: ChatRepository,
) {
    /**
     * Marca todos los mensajes entre dos usuarios como leídos.
     *
     * @param currentUserId Identificador del usuario que recibe los mensajes.
     * @param otherUserId Identificador del otro participante.
     * @return [Result.success] con [Unit] si se marcaron correctamente,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend operator fun invoke(
        currentUserId: Long,
        otherUserId: Long,
    ): Result<Unit> = chatRepository.markMessagesAsRead(currentUserId, otherUserId)
}
