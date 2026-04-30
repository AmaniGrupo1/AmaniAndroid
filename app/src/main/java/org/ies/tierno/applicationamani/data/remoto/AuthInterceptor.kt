package org.ies.tierno.applicationamani.data.remoto

import android.util.Log
import okhttp3.Interceptor
import okhttp3.Request
import okhttp3.Response
import org.ies.tierno.applicationamani.data.local.TokenHolder

// data/remote/AuthInterceptor.kt
class AuthInterceptor(
    private val tokenHolder: TokenHolder
) : Interceptor {

    override fun intercept(chain: Interceptor.Chain): Response {

        val token = tokenHolder.getToken()

        val request = chain.request().newBuilder().apply {
            if (!token.isNullOrEmpty()) {
                addHeader("Authorization", "Bearer $token")
            }
        }.build()

        return chain.proceed(request)
    }
}