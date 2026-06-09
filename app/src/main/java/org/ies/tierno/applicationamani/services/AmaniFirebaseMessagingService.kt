package org.ies.tierno.applicationamani.services

import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.os.Build
import androidx.core.app.NotificationCompat
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage
import org.ies.tierno.applicationamani.MainActivity
import org.ies.tierno.applicationamani.R
import timber.log.Timber

class AmaniFirebaseMessagingService : FirebaseMessagingService() {

    companion object {
        const val CANAL_CHAT_ID = "canal_chat"
    }

    override fun onNewToken(token: String) {
        super.onNewToken(token)
        Timber.d("Nuevo token de FCM: $token")
        // Aquí deberías enviar este token a tu backend de Spring Boot
        // o guardarlo en Firebase Realtime Database para este usuario
        // de forma que el backend sepa a qué dispositivo enviar las notificaciones.
    }

    override fun onMessageReceived(remoteMessage: RemoteMessage) {
        super.onMessageReceived(remoteMessage)
        Timber.d("Mensaje FCM recibido de: ${remoteMessage.from}")

        // Obtener el título y el cuerpo del mensaje de datos o de la notificación
        val title = remoteMessage.notification?.title ?: remoteMessage.data["title"] ?: "Nuevo mensaje"
        val body = remoteMessage.notification?.body ?: remoteMessage.data["body"] ?: "Tienes un mensaje nuevo"

        mostrarNotificacion(title, body)
    }

    private fun mostrarNotificacion(title: String, body: String) {
        val intent = Intent(this, MainActivity::class.java).apply {
            flags = Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP
        }

        val pendingIntentFlags = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
        } else {
            PendingIntent.FLAG_UPDATE_CURRENT
        }

        val pendingIntent = PendingIntent.getActivity(
            this,
            0,
            intent,
            pendingIntentFlags
        )

        val notificationBuilder = NotificationCompat.Builder(this, CANAL_CHAT_ID)
            .setSmallIcon(R.mipmap.ic_launcher) // Asegúrate de tener un icono apropiado
            .setContentTitle(title)
            .setContentText(body)
            .setAutoCancel(true)
            .setPriority(NotificationCompat.PRIORITY_HIGH)
            .setContentIntent(pendingIntent)

        val notificationManager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager

        // Usamos la marca de tiempo como ID para que se acumulen las notificaciones
        notificationManager.notify(System.currentTimeMillis().toInt(), notificationBuilder.build())
    }
}
