package org.ies.tierno.applicationamani

import android.app.Application
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import android.os.Build
import android.util.Log
import com.google.firebase.FirebaseApp
import com.google.firebase.crashlytics.FirebaseCrashlytics
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.runBlocking
import org.ies.tierno.applicationamani.data.local.LanguageManager
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.di.appModule
import org.ies.tierno.applicationamani.di.chatModule
import org.ies.tierno.applicationamani.di.crashModule
import org.ies.tierno.applicationamani.di.gameModule
import org.ies.tierno.applicationamani.di.retrofitModule
import org.ies.tierno.applicationamani.utils.CitaNotificationWorker
import org.ies.tierno.applicationamani.utils.FileLoggingTree
import org.koin.android.ext.koin.androidContext
import org.koin.androidx.workmanager.koin.workManagerFactory
import org.koin.core.context.GlobalContext.startKoin
import timber.log.Timber

/**
 * Clase [Application] personalizada para la aplicación Amani.
 *
 * Inicializa el framework de inyección de dependencias **Koin** al
 * arrancar la aplicación, registrando los módulos [appModule],
 * [retrofitModule] y [chatModule]. También crea el canal de
 * notificaciones para los recordatorios de citas.
 *
 * Debe declararse en el `AndroidManifest.xml` como atributo
 * `android:name` de la etiqueta `<application>`.
 *
 * @see appModule
 * @see retrofitModule
 * @see chatModule
 */
class AmaniApplication : Application() {
    // Bug 3 Fix: Envolver el applicationContext con el Locale personalizado
    // Esto asegura que los componentes que usen applicationContext tengan recursos localizados
    override fun attachBaseContext(base: Context) {
        val lang =
            runBlocking {
                try {
                    UserSessionDataStore(base).sessionFlow.firstOrNull()?.idioma ?: "es"
                } catch (e: Exception) {
                    "es"
                }
            }
        val context = LanguageManager.setLocale(base, lang)
        super.attachBaseContext(context)
    }

    /**
     * Se ejecuta antes que cualquier actividad, servicio o receptor.
     *
     * Arranca Koin con el contexto de la aplicación y los módulos
     * de dependencias definidos en el paquete `di`.
     * Crea el canal de notificaciones para recordatorios de citas.
     */
    override fun onCreate() {
        super.onCreate()

        // Inicializar Stripe con la clave pública leída desde GCP Secret Manager (via BuildConfig)
        println("Stripe Publishable Key: ${BuildConfig.STRIPE_PUBLISHABLE_KEY.takeIf { it.isNotBlank() } ?: "NO CONFIGURADA"}")
        if(BuildConfig.STRIPE_PUBLISHABLE_KEY.isNotBlank()) {
            com.stripe.android.PaymentConfiguration.init(
                applicationContext,
                BuildConfig.STRIPE_PUBLISHABLE_KEY
            )
        }



        // Inicializar Firebase y configurar Crashlytics
        FirebaseApp.initializeApp(this)

        if (BuildConfig.DEBUG) Timber.plant(Timber.DebugTree())
        Timber.plant(FileLoggingTree(this))

        crearCanalNotificaciones()

        startKoin {
            androidContext(this@AmaniApplication)
            workManagerFactory()
            modules(
                appModule,
                retrofitModule,
                crashModule,
                chatModule,
                gameModule
            )
        }

        val defaultHandler = Thread.getDefaultUncaughtExceptionHandler()
        Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
            if (!BuildConfig.DEBUG) {
                FirebaseCrashlytics.getInstance().recordException(throwable)
            }
            defaultHandler?.uncaughtException(thread, throwable)
        }
    }

    /**
     * Crea el canal de notificaciones para recordatorios de citas.
     *
     * Desde Android 8 (API 26) los canales son obligatorios.
     * La llamada es idempotente: si el canal ya existe no se modifica.
     * Se protege con comprobación de versión porque minSdk es 24.
     */
    private fun crearCanalNotificaciones() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channelCitas =
                NotificationChannel(
                    CitaNotificationWorker.CANAL_CITAS_ID,
                    "Recordatorio de citas",
                    NotificationManager.IMPORTANCE_HIGH,
                ).apply {
                    description = "Notificaciones de recordatorio de tus citas en Amani"
                }
            val manager = getSystemService(NotificationManager::class.java)
            manager.createNotificationChannel(channelCitas)

            // Canal para el Chat
            val channelChat =
                NotificationChannel(
                    org.ies.tierno.applicationamani.services.AmaniFirebaseMessagingService.CANAL_CHAT_ID,
                    "Mensajes de chat",
                    NotificationManager.IMPORTANCE_HIGH,
                ).apply {
                    description = "Notificaciones de nuevos mensajes en el chat"
                }
            manager.createNotificationChannel(channelChat)
        }
    }
}
