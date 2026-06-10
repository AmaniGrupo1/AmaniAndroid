package org.ies.tierno.applicationamani.core.crash

import com.google.firebase.crashlytics.FirebaseCrashlytics
import com.google.firebase.analytics.FirebaseAnalytics
import java.security.MessageDigest

class FirebaseCrashReporter(private val analytics: FirebaseAnalytics) : CrashReporter {
    private val crashlytics = FirebaseCrashlytics.getInstance()

    // --- Legacy API support ---
    override fun setUserId(userId: String) {
        setUserContext(userId, null)
    }

    override fun setUserRole(role: String) {
        crashlytics.setCustomKey("user_role", role)
    }

    override fun log(message: String) {
        logBreadcrumb(message)
    }

    override fun recordException(throwable: Throwable) {
        logError(throwable)
    }

    override fun setCustomKey(key: String, value: String) {
        // Simple sanitization to avoid leaking obvious tokens or passwords in custom keys
        val safeValue = if (key.contains("token", true) || key.contains("password", true)) {
            "***MASKED***"
        } else {
            value
        }
        crashlytics.setCustomKey(key, safeValue)
    }

    override fun clearUser() {
        crashlytics.setUserId("")
        crashlytics.setCustomKey("user_role", "")
        crashlytics.setCustomKey("session_id", "")
    }

    // --- Robust API ---

    override fun logError(throwable: Throwable, message: String?) {
        try {
            message?.let {
                crashlytics.log("ERROR Context: $it")
            }
            crashlytics.recordException(throwable)
        } catch (e: Exception) {
            // Fail-safe: Never crash the app while reporting a crash
        }
    }

    override fun logWarning(message: String, throwable: Throwable?) {
        try {
            crashlytics.log("WARNING: $message")
            throwable?.let {
                crashlytics.recordException(it)
            }
        } catch (e: Exception) {
            // Fail-safe
        }
    }

    override fun logBreadcrumb(message: String) {
        try {
            // Mask any potential emails or tokens in breadcrumbs
            val safeMessage = maskSensitiveData(message)
            crashlytics.log("BREADCRUMB: $safeMessage")
        } catch (e: Exception) {
            // Fail-safe
        }
    }

    override fun setUserContext(userId: String?, role: String?) {
        try {
            userId?.let {
                // One-way hash the userId so it's not reversible PII
                val hashedId = hashString(it)
                crashlytics.setUserId(hashedId)
                analytics.setUserId(hashedId)
            }
            role?.let {
                crashlytics.setCustomKey("user_role", it)
                analytics.setUserProperty("user_role", it)
            }
            
            // Set a unique session ID for this app launch to correlate events
            if (currentSessionId == null) {
                currentSessionId = java.util.UUID.randomUUID().toString()
                crashlytics.setCustomKey("session_id", currentSessionId!!)
                analytics.setUserProperty("session_id", currentSessionId!!)
            }
        } catch (e: Exception) {
            // Fail-safe
        }
    }

    override fun logNetworkFailure(url: String, method: String, code: Int, latencyMs: Long, errorType: String) {
        try {
            // Strip query parameters to avoid PII leaking in URLs
            val safeUrl = url.substringBefore("?")
            crashlytics.log("NETWORK FAILURE -> Method: $method, URL: $safeUrl, Code: $code, Latency: ${latencyMs}ms, Type: $errorType")
            crashlytics.setCustomKey("last_failed_network_url", safeUrl)
            crashlytics.setCustomKey("last_failed_network_code", code)
        } catch (e: Exception) {
            // Fail-safe
        }
    }

    override fun logNavigationEvent(screenName: String, params: Map<String, String>?) {
        try {
            crashlytics.log("NAVIGATE -> Screen: $screenName")
            crashlytics.setCustomKey("active_screen", screenName)
        } catch (e: Exception) {
            // Fail-safe
        }
    }

    // --- Helpers ---

    private fun maskSensitiveData(input: String): String {
        // Regex to mask emails
        var masked = input.replace(Regex("[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), "***@***.***")
        // Regex to mask typical JWT tokens (ey...)
        masked = masked.replace(Regex("eyJ[a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+"), "ey***TOKEN***")
        return masked
    }

    private fun hashString(input: String): String {
        val digest = MessageDigest.getInstance("SHA-256")
        val hashBytes = digest.digest(input.toByteArray(Charsets.UTF_8))
        return hashBytes.joinToString("") { "%02x".format(it) }
    }

    companion object {
        var currentSessionId: String? = null
    }
}
