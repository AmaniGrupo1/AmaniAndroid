package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
public abstract class zzz extends com.google.android.gms.internal.common.zzb implements IGmsCallbacks {
    public zzz() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.internal.common.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                int i3 = parcel.readInt();
                IBinder strongBinder = parcel.readStrongBinder();
                Bundle bundle = (Bundle) com.google.android.gms.internal.common.zzc.zzb(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.common.zzc.zzf(parcel);
                onPostInitComplete(i3, strongBinder, bundle);
                break;
            case 2:
                int i4 = parcel.readInt();
                Bundle bundle2 = (Bundle) com.google.android.gms.internal.common.zzc.zzb(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.common.zzc.zzf(parcel);
                zzb(i4, bundle2);
                break;
            case 3:
                int i5 = parcel.readInt();
                IBinder strongBinder2 = parcel.readStrongBinder();
                zzj zzjVar = (zzj) com.google.android.gms.internal.common.zzc.zzb(parcel, zzj.CREATOR);
                com.google.android.gms.internal.common.zzc.zzf(parcel);
                zzc(i5, strongBinder2, zzjVar);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
