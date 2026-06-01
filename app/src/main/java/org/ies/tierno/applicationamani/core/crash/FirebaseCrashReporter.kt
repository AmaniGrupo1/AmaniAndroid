package org.ies.tierno.applicationamani.core.crash

import com.google.firebase.crashlytics.FirebaseCrashlytics

class FirebaseCrashReporter : CrashReporter {
    private val crashlytics = FirebaseCrashlytics.getInstance()

    override fun setUserId(userId: String) {
        crashlytics.setUserId(userId)
    }

    override fun setUserRole(role: String) {
        crashlytics.setCustomKey("user_role", role)
    }

    override fun log(message: String) {
        crashlytics.log(message)
    }

    override fun recordException(throwable: Throwable) {
        crashlytics.recordException(throwable)
    }

    override fun setCustomKey(key: String, value: String) {
        crashlytics.setCustomKey(key, value)
    }

    override fun clearUser() {
        crashlytics.setUserId("")
        // Unfortunately, Crashlytics does not provide a direct method to remove custom keys.
        // We set them to an empty string instead.
        crashlytics.setCustomKey("user_role", "")
    }
}
