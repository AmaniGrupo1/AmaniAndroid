package org.ies.tierno.applicationamani


import android.app.Application
import org.ies.tierno.applicationamani.di.appModule
import org.ies.tierno.applicationamani.di.retrofitModule
import org.koin.android.ext.koin.androidContext
import org.koin.core.context.GlobalContext.startKoin

class MyLibraryApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        startKoin {
            androidContext(this@MyLibraryApplication)
            modules(
                appModule,
                retrofitModule
            )
        }
    }
}