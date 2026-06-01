package org.ies.tierno.applicationamani.core.crash

class NoOpCrashReporter : CrashReporter {
    override fun setUserId(userId: String) {}
    override fun setUserRole(role: String) {}
    override fun log(message: String) {}
    override fun recordException(throwable: Throwable) {}
    override fun setCustomKey(key: String, value: String) {}
    override fun clearUser() {}
}
