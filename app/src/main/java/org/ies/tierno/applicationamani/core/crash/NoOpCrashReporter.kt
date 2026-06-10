package org.ies.tierno.applicationamani.core.crash

import timber.log.Timber

class NoOpCrashReporter : CrashReporter {
    override fun setUserId(userId: String) {}
    override fun setUserRole(role: String) {}
    override fun log(message: String) {
        Timber.d("NoOpCrashReporter log: $message")
    }
    override fun recordException(throwable: Throwable) {
        Timber.e(throwable, "NoOpCrashReporter recordException")
    }
    override fun setCustomKey(key: String, value: String) {}
    override fun clearUser() {}

    override fun logError(throwable: Throwable, message: String?) {
        Timber.e(throwable, "NoOpCrashReporter logError: $message")
    }

    override fun logWarning(message: String, throwable: Throwable?) {
        Timber.w(throwable, "NoOpCrashReporter logWarning: $message")
    }

    override fun logBreadcrumb(message: String) {
        Timber.d("NoOpCrashReporter logBreadcrumb: $message")
    }

    override fun setUserContext(userId: String?, role: String?) {
        Timber.d("NoOpCrashReporter setUserContext: $userId, role: $role")
    }

    override fun logNetworkFailure(url: String, method: String, code: Int, latencyMs: Long, errorType: String) {
        Timber.e("NoOpCrashReporter logNetworkFailure: $method $url - Code: $code, Latency: ${latencyMs}ms, Type: $errorType")
    }

    override fun logNavigationEvent(screenName: String, params: Map<String, String>?) {
        Timber.d("NoOpCrashReporter logNavigationEvent: $screenName")
    }
}
