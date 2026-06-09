package org.ies.tierno.applicationamani.di

import org.ies.tierno.applicationamani.BuildConfig
import org.ies.tierno.applicationamani.core.crash.CrashReporter
import org.ies.tierno.applicationamani.core.crash.FirebaseCrashReporter
import org.ies.tierno.applicationamani.core.crash.NoOpCrashReporter
import org.koin.dsl.module

val crashModule = module {
    single<CrashReporter> {
        if (BuildConfig.DEBUG) NoOpCrashReporter()
        else FirebaseCrashReporter()
    }
}
