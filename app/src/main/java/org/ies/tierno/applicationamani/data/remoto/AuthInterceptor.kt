package org.ies.tierno.applicationamani.data.remoto

import android.util.Log
import okhttp3.Interceptor
import okhttp3.Request
import okhttp3.Response
import org.ies.tierno.applicationamani.data.local.TokenHolder

// data/remote/AuthInterceptor.kt
class AuthInterceptor(private val tokenHolder: TokenHolder) : Interceptor {

    override fun intercept(chain: Interceptor.Chain): Response {
        // Lectura no-bloqueante desde caché en memoria
        val token = tokenHolder.getToken()
        Log.d("AuthInterceptor", "Token obtenido: ${token?.take(20)}...")
        val originalRequest = chain.request()
        println("TOKEN EN INTERCEPTOR: $token")

        val request = chain.request().newBuilder()
            .apply {
                if (token != null) {
                    header("Authorization", "Bearer $token")
                    Log.d("AuthInterceptor", "✅ Token añadido a la petición")
                } else {
                    Log.w("AuthInterceptor", "⚠️ Token es nulo, no se añadió Authorization")
                }
            }
            .build()

        return chain.proceed(request)
    }
}