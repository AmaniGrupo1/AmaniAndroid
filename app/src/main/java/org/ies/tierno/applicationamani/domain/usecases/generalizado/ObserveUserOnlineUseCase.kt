package org.ies.tierno.applicationamani.domain.usecases.generalizado

import kotlinx.coroutines.flow.Flow
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository

/**
 * Caso de uso para observar el estado de conexión de un usuario.
 *
 * Devuelve un [Flow] reactivo que emite `true` cuando el usuario
 * está en línea y `false` cuando se desconecta.
 *
 * @property chatRepository Repositorio de chat.
 *
 * @see org.ies.tierno.applicationamani.data.repositorio.ChatRepository
 */
class ObserveUserOnlineUseCase(
    private val chatRepository: ChatRepository,
) {
    /**
     * Observa el estado de conexión de un usuario.
     *
     * @param userId Identificador único del usuario a observar.
     * @return [Flow] que emite `true` si está en línea, `false` en caso contrario.
     */
    operator fun invoke(userId: Long): Flow<Boolean> = chatRepository.observeUserOnline(userId)
}
