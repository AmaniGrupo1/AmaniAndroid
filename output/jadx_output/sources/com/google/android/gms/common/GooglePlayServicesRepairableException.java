package com.google.android.gms.common;

import android.content.Intent;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
public class GooglePlayServicesRepairableException extends UserRecoverableException {
    private final int zza;

    public GooglePlayServicesRepairableException(int connectionStatusCode, String msg, Intent intent) {
        super(msg, intent);
        this.zza = connectionStatusCode;
    }

    public int getConnectionStatusCode() {
        return this.zza;
    }
}
