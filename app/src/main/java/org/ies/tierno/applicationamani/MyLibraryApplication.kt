package org.ies.tierno.applicationamani

import android.app.Application
import org.ies.tierno.applicationamani.di.appModule
import org.ies.tierno.applicationamani.di.retrofitModule
import org.koin.android.ext.koin.androidContext
import org.koin.core.context.GlobalContext.startKoin

/**
 * Clase [Application] personalizada para la aplicación Amani.
 *
 * Inicializa el framework de inyección de dependencias **Koin** al
 * arrancar la aplicación, registrando los módulos [appModule] y
 * [retrofitModule].
 *
 * Debe declararse en el `AndroidManifest.xml` como atributo
 * `android:name` de la etiqueta `<application>`.
 *
 * @see appModule
 * @see retrofitModule
 */
class MyLibraryApplication : Application() {
    /**
     * Se ejecuta antes que cualquier actividad, servicio o receptor.
     *
     * Arranca Koin con el contexto de la aplicación y los módulos
     * de dependencias definidos en el paquete `di`.
     */
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