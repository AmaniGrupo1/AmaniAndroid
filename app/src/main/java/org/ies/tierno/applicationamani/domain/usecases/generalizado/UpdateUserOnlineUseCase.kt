package org.ies.tierno.applicationamani.domain.usecases.generalizado

import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

/**
 * Caso de uso para actualizar el estado de conexión de un usuario.
 *
 * Delega en el repositorio de chat la actualización del estado
 * en línea / desconectado de un usuario en el sistema de chat.
 *
 * @property chatRepository Repositorio de chat.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.ChatRepository
 */
class UpdateUserOnlineUseCase(
    private val chatRepository: ChatRepository,
) {
    /**
     * Actualiza el estado de conexión del usuario.
     *
     * @param userId Identificador único del usuario.
     * @param isOnline `true` para marcar como en línea, `false` para desconectado.
     * @return [Result.success] con [Unit] si se actualizó correctamente,
     *         o [Result.failure] con la excepción correspondiente.
     */
    suspend operator fun invoke(
        userId: Long,
        isOnline: Boolean,
    ): Result<Unit> = chatRepository.updateUserOnline(userId, isOnline)
}
