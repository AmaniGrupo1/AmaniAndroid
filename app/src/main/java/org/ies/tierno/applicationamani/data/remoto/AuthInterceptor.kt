package org.ies.tierno.applicationamani.data.remoto

import okhttp3.Interceptor
import okhttp3.Response
import org.ies.tierno.applicationamani.data.local.TokenHolder

// data/remote/AuthInterceptor.kt
class AuthInterceptor(private val tokenHolder: TokenHolder) : Interceptor {

    override fun intercept(chain: Interceptor.Chain): Response {
        // Lectura no-bloqueante desde caché en memoria
        val token = tokenHolder.getToken()

        val originalRequest = chain.request()

        // Si no hay token, dejamos pasar la petición tal cual
        // (login y register no lo necesitan)
        val request = if (token != null) {
            originalRequest.newBuilder()
                .header("Authorization", "Bearer $token")
                .build()
        } else {
            originalRequest
        }

        return chain.proceed(request)
    }
}