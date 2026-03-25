package org.ies.tierno.applicationamani.utils

import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import androidx.core.app.NotificationCompat
import androidx.core.app.NotificationManagerCompat
import androidx.core.content.ContextCompat
import androidx.work.Worker
import androidx.work.WorkerParameters
import org.ies.tierno.applicationamani.MainActivity
import org.ies.tierno.applicationamani.R
import timber.log.Timber

/**
 * Worker que muestra una notificación local de recordatorio de cita.
 *
 * Se programa mediante [programarRecordatorioCita] con un delay calculado
 * para que se ejecute X minutos antes de la hora de la cita.
 *
 * Al usar [androidx.work.WorkManager], la notificación **sobrevive reinicios**
 * de la aplicación y del dispositivo.
 *
 * El canal de notificaciones [CANAL_CITAS_ID] se crea en
 * [org.ies.tierno.applicationamani.MyLibraryApplication.onCreate].
 */
class CitaNotificationWorker(
    context: Context,
    params: WorkerParameters
) : Worker(context, params) {

    override fun doWork(): Result {
        val titulo = inputData.getString(KEY_TITULO) ?: "Recordatorio de cita"
        val mensaje = inputData.getString(KEY_MENSAJE) ?: "Tienes una cita próximamente"

        // En Android 13+ comprobar que el permiso POST_NOTIFICATIONS fue concedido
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            val granted = ContextCompat.checkSelfPermission(
                applicationContext,
                android.Manifest.permission.POST_NOTIFICATIONS
            ) == PackageManager.PERMISSION_GRANTED
            if (!granted) {
                Timber.e("Permiso POST_NOTIFICATIONS no concedido, no se puede mostrar notificación")
                return Result.failure()
            }
        }

        // Intent que abre la app al pulsar la notificación
        val tapIntent = PendingIntent.getActivity(
            applicationContext,
            0,
            Intent(applicationContext, MainActivity::class.java).apply {
                flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
            },
            PendingIntent.FLAG_IMMUTABLE
        )

        val notification = NotificationCompat.Builder(applicationContext, CANAL_CITAS_ID)
            .setSmallIcon(R.drawable.ic_notificacion_amani)
            .setContentTitle(titulo)
            .setContentText(mensaje)
            .setPriority(NotificationCompat.PRIORITY_HIGH)
            .setAutoCancel(true)
            .setContentIntent(tapIntent)
            .build()

        NotificationManagerCompat.from(applicationContext)
            .notify(System.currentTimeMillis().toInt(), notification)

        return Result.success()
    }

    companion object {
        /** ID del canal de notificaciones de citas. */
        const val CANAL_CITAS_ID = "amani_citas"

        /** Clave del dato de entrada para el título de la notificación. */
        const val KEY_TITULO = "titulo"

        /** Clave del dato de entrada para el mensaje de la notificación. */
        const val KEY_MENSAJE = "mensaje"
    }
}
