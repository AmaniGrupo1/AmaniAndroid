package org.ies.tierno.applicationamani.core.crash

interface CrashReporter {
    fun setUserId(userId: String)
    fun setUserRole(role: String)      // "PATIENT" or "PSYCHOLOGIST"
    fun log(message: String)
    fun recordException(throwable: Throwable)
    fun setCustomKey(key: String, value: String)
    fun clearUser()
}
