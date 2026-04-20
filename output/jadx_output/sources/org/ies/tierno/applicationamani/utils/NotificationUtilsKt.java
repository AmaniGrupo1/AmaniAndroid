package org.ies.tierno.applicationamani.utils;

import android.content.Context;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.ZoneId;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;

/* JADX INFO: compiled from: NotificationUtils.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u001aE\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\bH\u0007¢\u0006\u0004\b\f\u0010\r\u001a'\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroid/content/Context;", "context", "j$/time/LocalDate", "fecha", "j$/time/LocalTime", "hora", "", "minutosAntes", "", CitaNotificationWorker.KEY_TITULO, CitaNotificationWorker.KEY_MENSAJE, "", "programarRecordatorioCita", "(Landroid/content/Context;Lj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;Ljava/lang/String;)V", "cancelarRecordatorioCita", "(Landroid/content/Context;Lj$/time/LocalDate;Lj$/time/LocalTime;)V", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class NotificationUtilsKt {
    public static /* synthetic */ void programarRecordatorioCita$default(Context context, LocalDate localDate, LocalTime localTime, int i, String str, String str2, int i2, Object obj) {
        int i3 = (i2 & 8) != 0 ? 30 : i;
        programarRecordatorioCita(context, localDate, localTime, i3, (i2 & 16) != 0 ? "Recordatorio – Amani" : str, (i2 & 32) != 0 ? "Tu cita es en " + i3 + " minutos" : str2);
    }

    public static final void programarRecordatorioCita(Context context, LocalDate fecha, LocalTime hora, int minutosAntes, String titulo, String mensaje) {
        Object objM8542constructorimpl;
        WorkManager workManager;
        Object objM8542constructorimpl2;
        Object obj;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Intrinsics.checkNotNullParameter(hora, "hora");
        Intrinsics.checkNotNullParameter(titulo, "titulo");
        Intrinsics.checkNotNullParameter(mensaje, "mensaje");
        long triggerMillis = fecha.atTime(hora).minusMinutes(minutosAntes).atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();
        long now = System.currentTimeMillis();
        if (triggerMillis <= now) {
            Timber.INSTANCE.w("Recordatorio ignorado: fecha pasada [fecha=" + fecha + " hora=" + hora + "]", new Object[0]);
            return;
        }
        long delayMillis = triggerMillis - now;
        String tag = "cita_" + fecha + "_" + hora;
        Data inputData = new Data.Builder().putString(CitaNotificationWorker.KEY_TITULO, titulo).putString(CitaNotificationWorker.KEY_MENSAJE, mensaje).build();
        OneTimeWorkRequest workRequest = new OneTimeWorkRequest.Builder((Class<? extends ListenableWorker>) CitaNotificationWorker.class).setInitialDelay(delayMillis, TimeUnit.MILLISECONDS).setInputData(inputData).addTag(tag).build();
        WorkManager workManager2 = WorkManager.INSTANCE.getInstance(context);
        try {
            Result.Companion companion = Result.INSTANCE;
            objM8542constructorimpl = Result.m8542constructorimpl(workManager2.cancelAllWorkByTag(tag));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM8542constructorimpl = Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(objM8542constructorimpl);
        if (thM8545exceptionOrNullimpl == null) {
            workManager = workManager2;
        } else {
            workManager = workManager2;
            Timber.INSTANCE.e(thM8545exceptionOrNullimpl, "Error al cancelar WorkManager anterior [tag=" + tag + "]", new Object[0]);
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            objM8542constructorimpl2 = Result.m8542constructorimpl(workManager.enqueue(workRequest));
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            objM8542constructorimpl2 = Result.m8542constructorimpl(ResultKt.createFailure(th2));
        }
        if (!Result.m8549isSuccessimpl(objM8542constructorimpl2)) {
            obj = objM8542constructorimpl2;
        } else {
            obj = objM8542constructorimpl2;
            Timber.INSTANCE.d("Recordatorio programado ✓ [tag=" + tag + " delay=" + delayMillis + "ms]", new Object[0]);
        }
        Throwable thM8545exceptionOrNullimpl2 = Result.m8545exceptionOrNullimpl(obj);
        if (thM8545exceptionOrNullimpl2 != null) {
            Timber.INSTANCE.e(thM8545exceptionOrNullimpl2, "Error al encolar WorkManager [tag=" + tag + "]", new Object[0]);
        }
    }

    public static final void cancelarRecordatorioCita(Context context, LocalDate fecha, LocalTime hora) {
        Object objM8542constructorimpl;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Intrinsics.checkNotNullParameter(hora, "hora");
        String tag = "cita_" + fecha + "_" + hora;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM8542constructorimpl = Result.m8542constructorimpl(WorkManager.INSTANCE.getInstance(context).cancelAllWorkByTag(tag));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM8542constructorimpl = Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m8549isSuccessimpl(objM8542constructorimpl)) {
            Timber.INSTANCE.d("Recordatorio cancelado ✓ [tag=" + tag + "]", new Object[0]);
        }
        Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(objM8542constructorimpl);
        if (thM8545exceptionOrNullimpl != null) {
            Timber.INSTANCE.e(thM8545exceptionOrNullimpl, "Error al cancelar WorkManager [tag=" + tag + "]", new Object[0]);
        }
    }
}
