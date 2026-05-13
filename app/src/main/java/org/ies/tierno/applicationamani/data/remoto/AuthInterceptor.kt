package org.ies.tierno.applicationamani.data.remoto

import android.util.Log
import okhttp3.Interceptor
import okhttp3.Response
import org.ies.tierno.applicationamani.data.local.TokenHolder

class AuthInterceptor(private val tokenHolder: TokenHolder) : Interceptor {

    override fun intercept(chain: Interceptor.Chain): Response {
        val token = tokenHolder.getToken()

        val originalRequest = chain.request()
        if (token != null) {
            Log.d("AuthInterceptor", "Token presente (${token.take(20)}...), añadiendo Authorization header. URL: ${originalRequest.url}")
        } else {
            Log.w("AuthInterceptor", "TOKEN ES NULL — petición sin Authorization. URL: ${originalRequest.url}")
        }

        val request = originalRequest.newBuilder().apply {
            if (!token.isNullOrEmpty()) {
                header("Authorization", "Bearer $token")
            }
        }.build()

        return chain.proceed(request)
    }
}
