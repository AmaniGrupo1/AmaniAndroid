package org.ies.tierno.applicationamani.data.remoto

import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.runBlocking
import okhttp3.Interceptor
import okhttp3.Response
import org.ies.tierno.applicationamani.data.local.TokenDataStore

// data/remote/AuthInterceptor.kt
class AuthInterceptor(private val tokenDataStore: TokenDataStore) : Interceptor {

    override fun intercept(chain: Interceptor.Chain): Response {
        // Leemos el token de forma síncrona (estamos ya en un hilo IO)
        val token = runBlocking {
            tokenDataStore.tokenFlow.firstOrNull()
        }

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