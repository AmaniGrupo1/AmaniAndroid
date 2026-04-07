package org.ies.tierno.applicationamani.data.remoto

import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import okhttp3.Interceptor
import okhttp3.Response
import org.ies.tierno.applicationamani.data.local.AuthEvent
import org.ies.tierno.applicationamani.data.local.AuthEventChannel
import timber.log.Timber

/**
 * Interceptor que detecta respuestas HTTP 401 (Unauthorized) y notifica
 * al sistema para que cierre la sesión del usuario.
 *
 * En una implementación completa, aquí se podría intentar refrescar el token
 * antes de notificar el logout.
 */
class TokenRefreshInterceptor(
    private val authEventChannel: AuthEventChannel
) : Interceptor {

    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    override fun intercept(chain: Interceptor.Chain): Response {
        val request = chain.request()
        val response = chain.proceed(request)

        // Detectar respuesta 401 Unauthorized
        if (response.code == 401) {
            Timber.w("HTTP 401 detected - token expired or invalid")

            // Notificar evento de sesión no autorizada
            scope.launch {
                try {
                    authEventChannel.sendEvent(AuthEvent.Unauthorized)
                } catch (e: Exception) {
                    Timber.e(e, "Failed to send unauthorized event")
                }
            }
        }

        return response
    }
}

