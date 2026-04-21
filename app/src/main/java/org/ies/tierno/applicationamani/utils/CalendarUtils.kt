package org.ies.tierno.applicationamani.utils

import android.content.Context
import android.content.Intent
import android.os.Build
import android.provider.CalendarContract
import androidx.annotation.RequiresApi
import java.time.LocalDate
import java.time.LocalTime
import java.time.ZoneId

/**
 * Abre la aplicación de calendario del sistema con un evento pre-rellenado.
 *
 * No requiere permisos especiales: usa [Intent.ACTION_INSERT] para delegar
 * la creación del evento al calendario del usuario (Google Calendar,
 * Samsung Calendar, etc.).
 *
 * @param context Contexto de Android.
 * @param fecha Fecha de la cita.
 * @param hora Hora de inicio de la cita.
 * @param duracionMinutos Duración de la cita en minutos (por defecto 60).
 * @param titulo Título del evento en el calendario.
 * @param descripcion Descripción opcional del evento.
 */
@RequiresApi(Build.VERSION_CODES.O)
fun enviarCitaAlCalendario(
    context: Context,
    fecha: LocalDate,
    hora: LocalTime,
    duracionMinutos: Int = 60,
    titulo: String = "Cita – Amani",
    descripcion: String = ""
) {
    val inicio = fecha.atTime(hora)
        .atZone(ZoneId.systemDefault())
        .toInstant()
        .toEpochMilli()

    val fin = fecha.atTime(hora.plusMinutes(duracionMinutos.toLong()))
        .atZone(ZoneId.systemDefault())
        .toInstant()
        .toEpochMilli()

    val intent = Intent(Intent.ACTION_INSERT).apply {
        data = CalendarContract.Events.CONTENT_URI
        putExtra(CalendarContract.Events.TITLE, titulo)
        putExtra(CalendarContract.Events.DESCRIPTION, descripcion)
        putExtra(CalendarContract.EXTRA_EVENT_BEGIN_TIME, inicio)
        putExtra(CalendarContract.EXTRA_EVENT_END_TIME, fin)
        putExtra(CalendarContract.Events.AVAILABILITY, CalendarContract.Events.AVAILABILITY_BUSY)
    }
    context.startActivity(intent)
}