package org.ies.tierno.applicationamani.data.remoto

import android.util.Log
import okhttp3.Interceptor
import okhttp3.Response
import org.ies.tierno.applicationamani.data.local.TokenHolder
import timber.log.Timber

/**
 * Interceptor OkHttp que añade el header `Authorization: Bearer <token>` a cada petición.
 *
 * Utiliza [TokenHolder] como caché en memoria para obtener el token de forma no bloqueante,
 * evitando así problemas de latencia que ocurrirían al leer directamente de DataStore.
 * Si no hay token disponible, la petición se envía sin el header de autorización.
 *
 * @property tokenHolder Contenedor en memoria del token JWT actual.
 */
class AuthInterceptor(
    private val tokenHolder: TokenHolder,
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

        val request =
            originalRequest
                .newBuilder()
                .apply {
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
