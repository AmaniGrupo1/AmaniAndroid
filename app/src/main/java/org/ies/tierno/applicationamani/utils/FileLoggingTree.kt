package org.ies.tierno.applicationamani.utils

import android.content.Context
import android.util.Log
import androidx.annotation.RequiresApi
import timber.log.Timber
import java.io.File
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

/**
 * Árbol de Timber que escribe mensajes de WARNING y ERROR en un fichero de texto.
 *
 * El fichero se almacena en [Context.filesDir]/amani_logs.txt con rotación
 * automática cuando supera 1 MB (renombra a amani_logs_old.txt).
 *
 * No usa Timber dentro de sí mismo para evitar recursión — recurre a [Log] del
 * sistema como fallback si la escritura falla.
 *
 * @param context Contexto de aplicación para resolver la ruta del fichero.
 */
class FileLoggingTree(private val context: Context) : Timber.Tree() {

    companion object {
        private const val LOG_FILE = "amani_logs.txt"
        private const val OLD_LOG_FILE = "amani_logs_old.txt"
        private const val MAX_SIZE_BYTES = 1 * 1024 * 1024L // 1 MB
        private val DATE_FORMAT = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
    }

    private val logFile: File
        get() = File(context.filesDir, LOG_FILE)

    override fun log(priority: Int, tag: String?, message: String, t: Throwable?) {
        if (priority < Log.WARN) return

        val timestamp = LocalDateTime.now().format(DATE_FORMAT)
        val level = when (priority) {
            Log.WARN -> "W"
            Log.ERROR -> "E"
            else -> "?"
        }

        val prefix = "[$timestamp] $level/${tag ?: "null"}: $message"

        val linesToWrite = buildList {
            add(prefix)
            if (t != null) {
                add(Log.getStackTraceString(t))
            }
        }

        runCatching {
            rotateIfNeeded()
            appendText(logFile, linesToWrite.joinToString(System.lineSeparator()) + System.lineSeparator())
        }.onFailure { e ->
            Log.e("FileLoggingTree", "Error al escribir en log: ${e.message}")
        }
    }

    private fun rotateIfNeeded() {
        val file = logFile
        if (file.exists() && file.length() >= MAX_SIZE_BYTES) {
            val oldFile = File(context.filesDir, OLD_LOG_FILE)
            file.delete()
            oldFile.delete()
            file.createNewFile()
        }
    }

    private fun appendText(file: File, text: String) {
        file.appendText(text)
    }
}
