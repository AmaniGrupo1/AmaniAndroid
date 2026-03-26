package org.ies.tierno.applicationamani.utils

import android.content.Context
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.work.Data
import androidx.work.OneTimeWorkRequestBuilder
import androidx.work.WorkManager
import timber.log.Timber
import java.time.LocalDate
import java.time.LocalTime
import java.time.ZoneId
import java.util.concurrent.TimeUnit

/**
 * Programa una notificación local de recordatorio usando [WorkManager].
 *
 * El trabajo se ejecuta **una sola vez** tras el delay calculado (fecha+hora
 * menos [minutosAntes]). Al usar WorkManager, el recordatorio **sobrevive
 * reinicios** de la app y del dispositivo.
 *
 * Si la hora calculada ya ha pasado, no se programa nada.
 *
 * @param context Contexto de Android.
 * @param fecha Fecha de la cita.
 * @param hora Hora de inicio de la cita.
 * @param minutosAntes Minutos de antelación para el recordatorio (por defecto 30).
 * @param titulo Título que aparecerá en la notificación.
 * @param mensaje Cuerpo del texto de la notificación.
 */
@RequiresApi(Build.VERSION_CODES.O)
fun programarRecordatorioCita(
    context: Context,
    fecha: LocalDate,
    hora: LocalTime,
    minutosAntes: Int = 30,
    titulo: String = "Recordatorio – Amani",
    mensaje: String = "Tu cita es en $minutosAntes minutos"
) {
    val triggerMillis = fecha.atTime(hora)
        .minusMinutes(minutosAntes.toLong())
        .atZone(ZoneId.systemDefault())
        .toInstant()
        .toEpochMilli()

    val now = System.currentTimeMillis()

    // No programar si la hora del recordatorio ya pasó
    if (triggerMillis <= now) {
        Timber.w("Recordatorio ignorado: fecha pasada [fecha=$fecha hora=$hora]")
        return
    }

    val delayMillis = triggerMillis - now

    // Tag único para poder cancelar este recordatorio concreto
    val tag = "cita_${fecha}_${hora}"

    val inputData = Data.Builder()
        .putString(CitaNotificationWorker.KEY_TITULO, titulo)
        .putString(CitaNotificationWorker.KEY_MENSAJE, mensaje)
        .build()

    val workRequest = OneTimeWorkRequestBuilder<CitaNotificationWorker>()
        .setInitialDelay(delayMillis, TimeUnit.MILLISECONDS)
        .setInputData(inputData)
        .addTag(tag)
        .build()

    val workManager = WorkManager.getInstance(context)

    // Si ya existía un recordatorio para esta cita, lo cancela primero
    runCatching {
        workManager.cancelAllWorkByTag(tag)
    }.onFailure { e ->
        Timber.e(e, "Error al cancelar WorkManager anterior [tag=$tag]")
    }

    // Encola el nuevo recordatorio
    runCatching {
        workManager.enqueue(workRequest)
    }.onSuccess {
        Timber.d("Recordatorio programado ✓ [tag=$tag delay=${delayMillis}ms]")
    }.onFailure { e ->
        Timber.e(e, "Error al encolar WorkManager [tag=$tag]")
    }
}

/**
 * Cancela un recordatorio previamente programado para una cita.
 *
 * @param context Contexto de Android.
 * @param fecha Fecha de la cita cuyo recordatorio se cancela.
 * @param hora Hora de la cita cuyo recordatorio se cancela.
 */
@RequiresApi(Build.VERSION_CODES.O)
fun cancelarRecordatorioCita(
    context: Context,
    fecha: LocalDate,
    hora: LocalTime
) {
    val tag = "cita_${fecha}_${hora}"
    runCatching {
        WorkManager.getInstance(context).cancelAllWorkByTag(tag)
    }.onSuccess {
        Timber.d("Recordatorio cancelado ✓ [tag=$tag]")
    }.onFailure { e ->
        Timber.e(e, "Error al cancelar WorkManager [tag=$tag]")
    }
}

