package org.ies.tierno.applicationamani.data.remoto

import okhttp3.Interceptor
import okhttp3.Response
import org.ies.tierno.applicationamani.core.crash.CrashReporter

/**
 * Interceptor de Retrofit que reporta fallos HTTP (4xx y 5xx) y timeouts
 * automáticamente a Crashlytics, sin exponer PII o payloads sensibles.
 */
class CrashlyticsInterceptor(
    private val crashReporter: CrashReporter
) : Interceptor {

    override fun intercept(chain: Interceptor.Chain): Response {
        val request = chain.request()
        val url = request.url.toString()
        val method = request.method
        val startTime = System.currentTimeMillis()

        return try {
            val response = chain.proceed(request)
            val latency = System.currentTimeMillis() - startTime

            if (!response.isSuccessful) {
                // Determine if client error or server error
                val errorType = if (response.code in 400..499) "HTTP_CLIENT_ERROR" else "HTTP_SERVER_ERROR"
                crashReporter.logNetworkFailure(
                    url = url,
                    method = method,
                    code = response.code,
                    latencyMs = latency,
                    errorType = errorType
                )
            }
            response
        } catch (e: Exception) {
            val latency = System.currentTimeMillis() - startTime
            val errorType = when (e) {
                is java.net.SocketTimeoutException -> "TIMEOUT"
                is java.net.UnknownHostException -> "UNKNOWN_HOST"
                is javax.net.ssl.SSLException -> "SSL_ERROR"
                else -> "NETWORK_EXCEPTION"
            }
            
            crashReporter.logNetworkFailure(
                url = url,
                method = method,
                code = -1,
                latencyMs = latency,
                errorType = errorType
            )
            // Log the exception securely without user context
            crashReporter.logWarning("Network Exception: $errorType on $method", e)
            throw e
        }
    }
}
