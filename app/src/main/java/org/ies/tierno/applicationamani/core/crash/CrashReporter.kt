package org.ies.tierno.applicationamani.core.crash

interface CrashReporter {
    // Legacy API support
    fun setUserId(userId: String)
    fun setUserRole(role: String)
    fun log(message: String)
    fun recordException(throwable: Throwable)
    fun setCustomKey(key: String, value: String)
    fun clearUser()

    // --- New Robust Observability API ---

    /** Logs an error (fatal or non-fatal) to Crashlytics with context. */
    fun logError(throwable: Throwable, message: String? = null)

    /** Logs a non-fatal warning with optional throwable context. */
    fun logWarning(message: String, throwable: Throwable? = null)

    /** Logs a breadcrumb (a step the user took) to help trace the actions leading to a crash. */
    fun logBreadcrumb(message: String)

    /** Sets the user context using a hashed/safe ID and role, masking PII. */
    fun setUserContext(userId: String?, role: String?)

    /** Logs detailed but safe info about a network failure. */
    fun logNetworkFailure(url: String, method: String, code: Int, latencyMs: Long, errorType: String)

    /** Logs navigation events, stripping sensitive arguments. */
    fun logNavigationEvent(screenName: String, params: Map<String, String>? = null)
}
