package org.ies.tierno.applicationamani.utils

import android.content.Context
import android.content.Intent
import androidx.core.content.FileProvider
import java.io.File
import java.time.LocalDate
import java.time.format.DateTimeFormatter

/**
 * Utilidades para leer y compartir los ficheros de log de AMANI.
 */
object LogUtils {
    private const val LOG_FILE = "amani_logs.txt"
    private val DATE_FORMAT = DateTimeFormatter.ofPattern("yyyy-MM-dd")

    /**
     * Devuelve el contenido completo del fichero de log actual.
     *
     * @param context Contexto de aplicación.
     * @return Contenido del fichero o "Sin logs disponibles" si no existe.
     */
    fun obtenerLogs(context: Context): String {
        val file = File(context.filesDir, LOG_FILE)
        return if (file.exists()) {
            file.readText().ifEmpty { "Sin logs disponibles" }
        } else {
            "Sin logs disponibles"
        }
    }

    /**
     * Lanza un intent [Intent.ACTION_SEND] con el fichero de log adjunto
     * como texto plano, usando [FileProvider] para generar una URI segura.
     *
     * @param context Contexto de aplicación.
     * @throws IllegalStateException si no existe el fichero de log.
     */
    fun compartirLogs(context: Context) {
        val file = File(context.filesDir, LOG_FILE)
        if (!file.exists()) {
            throw IllegalStateException("No hay fichero de log disponible")
        }

        val fecha = LocalDate.now().format(DATE_FORMAT)
        val uri = FileProvider.getUriForFile(
            context,
            "${context.packageName}.provider",
            file
        )

        val shareIntent = Intent(Intent.ACTION_SEND).apply {
            type = "text/plain"
            putExtra(Intent.EXTRA_SUBJECT, "Logs AMANI - $fecha")
            putExtra(Intent.EXTRA_STREAM, uri)
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        }

        context.startActivity(
            Intent.createChooser(shareIntent, "Compartir logs").apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
        )
    }
}
