package org.ies.tierno.applicationamani.data.remoto

import okhttp3.Interceptor
import okhttp3.Response
import org.ies.tierno.applicationamani.data.local.TokenHolder
import timber.log.Timber

// Interceptor que añade el header Authorization usando el token cacheado en TokenHolder.
// Evita bloquear threads de red con runBlocking y reduce la probabilidad de leer null
// si DataStore aún no está listo.
class AuthInterceptor(
    private val tokenHolder: TokenHolder
) : Interceptor {

    override fun intercept(chain: Interceptor.Chain): Response {
        // Obtener token de la caché en memoria (no bloqueante)
        val token = tokenHolder.getToken()

        val originalRequest = chain.request()
        if (token != null) {
            Log.d("AuthInterceptor", "Token presente (${token.take(20)}...), añadiendo Authorization header. URL: ${originalRequest.url}")
        } else {
            Log.w("AuthInterceptor", "TOKEN ES NULL — petición sin Authorization. URL: ${originalRequest.url}")
        }

        val request = originalRequest.newBuilder().apply {
            if (!token.isNullOrEmpty()) {
                addHeader("Authorization", "Bearer $token")
            } else {
                // Loguear para depuración cuando no hay token disponible
                Timber.d("No token available for request to %s", chain.request().url)
            }
        }.build()

        return chain.proceed(request)
    }
}
