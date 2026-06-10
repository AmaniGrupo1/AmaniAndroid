package org.ies.tierno.applicationamani.di

import org.ies.tierno.applicationamani.BuildConfig
import org.ies.tierno.applicationamani.core.crash.CrashReporter
import org.ies.tierno.applicationamani.core.crash.FirebaseCrashReporter
import org.ies.tierno.applicationamani.core.crash.NoOpCrashReporter
import org.koin.android.ext.koin.androidContext
import org.koin.dsl.module
import com.google.firebase.analytics.FirebaseAnalytics

val crashModule = module {
    single<CrashReporter> {
        if (BuildConfig.DEBUG) {
            NoOpCrashReporter()
        } else {
            val analytics = FirebaseAnalytics.getInstance(androidContext())
            FirebaseCrashReporter(analytics)
        }
    }
}
