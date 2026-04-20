package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
public abstract class GmsClientSupervisor {
    static HandlerThread zza;
    private static zzq zzd;
    private static Executor zze;
    private static final Object zzb = new Object();
    private static int zzc = 9;
    private static boolean zzf = false;

    public static int getDefaultBindFlags() {
        return 4225;
    }

    public static GmsClientSupervisor getInstance(Context context) {
        synchronized (zzb) {
            if (zzd == null) {
                zzd = new zzq(context.getApplicationContext(), zzf ? getOrStartHandlerThread().getLooper() : context.getMainLooper(), zze);
            }
        }
        return zzd;
    }

    public static HandlerThread getOrStartHandlerThread() {
        synchronized (zzb) {
            HandlerThread handlerThread = zza;
            if (handlerThread != null) {
                return handlerThread;
            }
            zza = new HandlerThread("GoogleApiHandler", zzc);
            zza.start();
            return zza;
        }
    }

    public static void setDefaultBindExecutor(Executor executor) {
        synchronized (zzb) {
            zzq zzqVar = zzd;
            if (zzqVar != null) {
                zzqVar.zze(executor);
            }
            zze = executor;
        }
    }

    public static boolean setGamHandlerThreadPriorityIfNotInitialized(int priority) {
        synchronized (zzb) {
            if (zza != null) {
                return false;
            }
            zzc = priority;
            return true;
        }
    }

    public static void setUseHandlerThreadForCallbacks() {
        synchronized (zzb) {
            zzq zzqVar = zzd;
            if (zzqVar != null && !zzf) {
                zzqVar.zzd(getOrStartHandlerThread().getLooper());
            }
            zzf = true;
        }
    }

    public boolean bindService(ComponentName componentName, ServiceConnection connection, String realClientName) {
        return zza(new zzn(componentName, 4225), connection, realClientName, null).isSuccess();
    }

    public void unbindService(ComponentName componentName, ServiceConnection connection, String realClientName) {
        zzc(new zzn(componentName, 4225), connection, realClientName);
    }

    protected abstract ConnectionResult zza(zzn zznVar, ServiceConnection serviceConnection, String str, Executor executor);

    public final void zzb(String str, String str2, int i, ServiceConnection serviceConnection, String str3, boolean z) {
        zzc(new zzn(str, str2, 4225, z), serviceConnection, str3);
    }

    protected abstract void zzc(zzn zznVar, ServiceConnection serviceConnection, String str);

    public void unbindService(String startServiceAction, ServiceConnection connection, String realClientName) {
        zzc(new zzn(startServiceAction, 4225, false), connection, realClientName);
    }

    public boolean bindService(ComponentName componentName, ServiceConnection connection, String realClientName, Executor executor) {
        return zza(new zzn(componentName, 4225), connection, realClientName, executor).isSuccess();
    }

    public static HandlerThread getOrStartHandlerThread(int priority) {
        synchronized (zzb) {
            HandlerThread handlerThread = zza;
            if (handlerThread != null) {
                return handlerThread;
            }
            zza = new HandlerThread("GoogleApiHandler", priority);
            zza.start();
            return zza;
        }
    }

    public boolean bindService(String startServiceAction, ServiceConnection connection, String realClientName) {
        return zza(new zzn(startServiceAction, 4225, false), connection, realClientName, null).isSuccess();
    }
}
