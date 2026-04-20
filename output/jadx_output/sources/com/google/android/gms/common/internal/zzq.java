package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
final class zzq extends GmsClientSupervisor {
    private final Context zzc;
    private volatile Handler zzd;
    private volatile Executor zzi;
    private final HashMap zzb = new HashMap();
    private final zzp zze = new zzp(this, null);
    private final ConnectionTracker zzf = ConnectionTracker.getInstance();
    private final long zzg = 5000;
    private final long zzh = 300000;

    zzq(Context context, Looper looper, Executor executor) {
        this.zzc = context.getApplicationContext();
        this.zzd = new com.google.android.gms.internal.common.zzg(looper, this.zze);
        this.zzi = executor;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    protected final ConnectionResult zza(zzn zznVar, ServiceConnection serviceConnection, String str, Executor executor) {
        ConnectionResult connectionResultZzj;
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        HashMap map = this.zzb;
        synchronized (map) {
            zzo zzoVar = (zzo) map.get(zznVar);
            if (executor == null) {
                executor = this.zzi;
            }
            if (zzoVar == null) {
                zzoVar = new zzo(this, zznVar);
                zzoVar.zzb(serviceConnection, serviceConnection, str);
                connectionResultZzj = zzoVar.zzj(str, executor);
                map.put(zznVar, zzoVar);
            } else {
                this.zzd.removeMessages(0, zznVar);
                if (!zzoVar.zzf(serviceConnection)) {
                    zzoVar.zzb(serviceConnection, serviceConnection, str);
                    switch (zzoVar.zze()) {
                        case 1:
                            serviceConnection.onServiceConnected(zzoVar.zzi(), zzoVar.zzh());
                            connectionResultZzj = null;
                            break;
                        case 2:
                            connectionResultZzj = zzoVar.zzj(str, executor);
                            break;
                        default:
                            connectionResultZzj = null;
                            break;
                    }
                } else {
                    String string = zznVar.toString();
                    StringBuilder sb = new StringBuilder(string.length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(string);
                    throw new IllegalStateException(sb.toString());
                }
            }
            if (zzoVar.zzd()) {
                return ConnectionResult.RESULT_SUCCESS;
            }
            if (connectionResultZzj == null) {
                connectionResultZzj = new ConnectionResult(-1);
            }
            return connectionResultZzj;
        }
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    protected final void zzc(zzn zznVar, ServiceConnection serviceConnection, String str) {
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        HashMap map = this.zzb;
        synchronized (map) {
            zzo zzoVar = (zzo) map.get(zznVar);
            if (zzoVar == null) {
                String string = zznVar.toString();
                StringBuilder sb = new StringBuilder(string.length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(string);
                throw new IllegalStateException(sb.toString());
            }
            if (!zzoVar.zzf(serviceConnection)) {
                String string2 = zznVar.toString();
                StringBuilder sb2 = new StringBuilder(string2.length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(string2);
                throw new IllegalStateException(sb2.toString());
            }
            zzoVar.zzc(serviceConnection, str);
            if (zzoVar.zzg()) {
                this.zzd.sendMessageDelayed(this.zzd.obtainMessage(0, zznVar), this.zzg);
            }
        }
    }

    final void zzd(Looper looper) {
        synchronized (this.zzb) {
            this.zzd = new com.google.android.gms.internal.common.zzg(looper, this.zze);
        }
    }

    final void zze(Executor executor) {
        synchronized (this.zzb) {
            this.zzi = executor;
        }
    }

    final /* synthetic */ HashMap zzf() {
        return this.zzb;
    }

    final /* synthetic */ Context zzg() {
        return this.zzc;
    }

    final /* synthetic */ Handler zzh() {
        return this.zzd;
    }

    final /* synthetic */ ConnectionTracker zzi() {
        return this.zzf;
    }

    final /* synthetic */ long zzj() {
        return this.zzh;
    }
}
