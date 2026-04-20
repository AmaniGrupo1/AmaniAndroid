package org.ies.tierno.applicationamani.utils;

import android.content.Context;
import android.content.Intent;
import android.provider.CalendarContract;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.ZoneId;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CalendarUtils.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001aE\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\bH\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroid/content/Context;", "context", "j$/time/LocalDate", "fecha", "j$/time/LocalTime", "hora", "", "duracionMinutos", "", CitaNotificationWorker.KEY_TITULO, "descripcion", "", "enviarCitaAlCalendario", "(Landroid/content/Context;Lj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;Ljava/lang/String;)V", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class CalendarUtilsKt {
    public static final void enviarCitaAlCalendario(Context context, LocalDate fecha, LocalTime hora, int duracionMinutos, String titulo, String descripcion) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Intrinsics.checkNotNullParameter(hora, "hora");
        Intrinsics.checkNotNullParameter(titulo, "titulo");
        Intrinsics.checkNotNullParameter(descripcion, "descripcion");
        long inicio = fecha.atTime(hora).atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();
        long fin = fecha.atTime(hora.plusMinutes(duracionMinutos)).atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();
        Intent intent = new Intent("android.intent.action.INSERT");
        intent.setData(CalendarContract.Events.CONTENT_URI);
        intent.putExtra("title", titulo);
        intent.putExtra("description", descripcion);
        intent.putExtra("beginTime", inicio);
        intent.putExtra("endTime", fin);
        intent.putExtra("availability", 0);
        context.startActivity(intent);
    }
}
