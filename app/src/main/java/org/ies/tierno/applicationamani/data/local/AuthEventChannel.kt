package org.ies.tierno.applicationamani.data.local

import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.receiveAsFlow

/**
 * Canal de eventos de autenticación para notificar cuando el usuario
 * necesita ser deslogueado (ej: HTTP 401, token expirado).
 */
class AuthEventChannel {

    private val _eventChannel = Channel<AuthEvent>(Channel.BUFFERED)
    val events: Flow<AuthEvent> = _eventChannel.receiveAsFlow()

    suspend fun sendEvent(event: AuthEvent) {
        _eventChannel.send(event)
    }
}

sealed class AuthEvent {
    /**
     * El servidor ha devuelto 401 Unauthorized - la sesión debe cerrarse
     */
    data object Unauthorized : AuthEvent()

    /**
     * Token refrescado exitosamente
     */
    data class TokenRefreshed(val newToken: String) : AuthEvent()
}

