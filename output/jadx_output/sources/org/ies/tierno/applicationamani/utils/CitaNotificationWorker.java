package org.ies.tierno.applicationamani.utils;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.MainActivity;
import org.ies.tierno.applicationamani.R;
import timber.log.Timber;

/* JADX INFO: compiled from: CitaNotificationWorker.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, d2 = {"Lorg/ies/tierno/applicationamani/utils/CitaNotificationWorker;", "Landroidx/work/Worker;", "context", "Landroid/content/Context;", "params", "Landroidx/work/WorkerParameters;", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class CitaNotificationWorker extends Worker {
    public static final String CANAL_CITAS_ID = "amani_citas";
    public static final String KEY_MENSAJE = "mensaje";
    public static final String KEY_TITULO = "titulo";
    public static final int $stable = 8;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CitaNotificationWorker(Context context, WorkerParameters params) {
        super(context, params);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(params, "params");
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        String titulo = getInputData().getString(KEY_TITULO);
        if (titulo == null) {
            titulo = "Recordatorio de cita";
        }
        String mensaje = getInputData().getString(KEY_MENSAJE);
        if (mensaje == null) {
            mensaje = "Tienes una cita próximamente";
        }
        if (Build.VERSION.SDK_INT >= 33) {
            boolean granted = ContextCompat.checkSelfPermission(getApplicationContext(), "android.permission.POST_NOTIFICATIONS") == 0;
            if (!granted) {
                Timber.INSTANCE.e("Permiso POST_NOTIFICATIONS no concedido, no se puede mostrar notificación", new Object[0]);
                ListenableWorker.Result resultFailure = ListenableWorker.Result.failure();
                Intrinsics.checkNotNullExpressionValue(resultFailure, "failure(...)");
                return resultFailure;
            }
        }
        Context applicationContext = getApplicationContext();
        Intent intent = new Intent(getApplicationContext(), (Class<?>) MainActivity.class);
        intent.setFlags(268468224);
        Unit unit = Unit.INSTANCE;
        PendingIntent tapIntent = PendingIntent.getActivity(applicationContext, 0, intent, 67108864);
        Notification notification = new NotificationCompat.Builder(getApplicationContext(), CANAL_CITAS_ID).setSmallIcon(R.drawable.ic_notificacion_amani).setContentTitle(titulo).setContentText(mensaje).setPriority(1).setAutoCancel(true).setContentIntent(tapIntent).build();
        Intrinsics.checkNotNullExpressionValue(notification, "build(...)");
        NotificationManagerCompat.from(getApplicationContext()).notify((int) System.currentTimeMillis(), notification);
        ListenableWorker.Result resultSuccess = ListenableWorker.Result.success();
        Intrinsics.checkNotNullExpressionValue(resultSuccess, "success(...)");
        return resultSuccess;
    }
}
