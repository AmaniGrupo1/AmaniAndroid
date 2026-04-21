package org.ies.tierno.applicationamani;

import android.app.Application;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.os.Build;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.di.AppModuleKt;
import org.ies.tierno.applicationamani.di.RetrofitModuleKt;
import org.ies.tierno.applicationamani.utils.CitaNotificationWorker;
import org.ies.tierno.applicationamani.utils.FileLoggingTree;
import org.koin.android.ext.koin.KoinExtKt;
import org.koin.core.KoinApplication;
import org.koin.core.context.GlobalContext;
import timber.log.Timber;

/* JADX INFO: compiled from: MyLibraryApplication.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0002¨\u0006\u0007"}, d2 = {"Lorg/ies/tierno/applicationamani/MyLibraryApplication;", "Landroid/app/Application;", "<init>", "()V", "onCreate", "", "crearCanalNotificaciones", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class MyLibraryApplication extends Application {
    public static final int $stable = 8;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        if (BuildConfig.DEBUG) {
            Timber.INSTANCE.plant(new Timber.DebugTree());
        }
        Timber.INSTANCE.plant(new FileLoggingTree(this));
        crearCanalNotificaciones();
        GlobalContext.INSTANCE.startKoin(new Function1() { // from class: org.ies.tierno.applicationamani.MyLibraryApplication$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MyLibraryApplication.onCreate$lambda$0(this.f$0, (KoinApplication) obj);
            }
        });
    }

    static final Unit onCreate$lambda$0(MyLibraryApplication this$0, KoinApplication startKoin) {
        Intrinsics.checkNotNullParameter(startKoin, "$this$startKoin");
        KoinExtKt.androidContext(startKoin, this$0);
        startKoin.modules(AppModuleKt.getAppModule(), RetrofitModuleKt.getRetrofitModule());
        return Unit.INSTANCE;
    }

    private final void crearCanalNotificaciones() {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel channel = new NotificationChannel(CitaNotificationWorker.CANAL_CITAS_ID, "Recordatorio de citas", 4);
            channel.setDescription("Notificaciones de recordatorio de tus citas en Amani");
            NotificationManager manager = (NotificationManager) getSystemService(NotificationManager.class);
            manager.createNotificationChannel(channel);
        }
    }
}
