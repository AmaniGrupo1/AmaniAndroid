package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
final class zacq implements Runnable {
    final /* synthetic */ Result zaa;
    final /* synthetic */ zacs zab;

    zacq(zacs zacsVar, Result result) {
        this.zaa = result;
        Objects.requireNonNull(zacsVar);
        this.zab = zacsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zacs zacsVar;
        GoogleApiClient googleApiClient;
        try {
            try {
                BasePendingResult.zaa.set(true);
                zacs zacsVar2 = this.zab;
                zacsVar2.zah().sendMessage(zacsVar2.zah().obtainMessage(0, ((ResultTransform) Preconditions.checkNotNull(zacsVar2.zad())).onSuccess(this.zaa)));
                BasePendingResult.zaa.set(false);
                zacsVar = this.zab;
                zacs.zan(this.zaa);
                googleApiClient = (GoogleApiClient) zacsVar.zag().get();
                if (googleApiClient == null) {
                    return;
                }
            } catch (RuntimeException e) {
                zacs zacsVar3 = this.zab;
                zacsVar3.zah().sendMessage(zacsVar3.zah().obtainMessage(1, e));
                BasePendingResult.zaa.set(false);
                zacsVar = this.zab;
                zacs.zan(this.zaa);
                googleApiClient = (GoogleApiClient) zacsVar.zag().get();
                if (googleApiClient == null) {
                    return;
                }
            }
            googleApiClient.zap(zacsVar);
        } catch (Throwable th) {
            BasePendingResult.zaa.set(false);
            zacs zacsVar4 = this.zab;
            zacs.zan(this.zaa);
            GoogleApiClient googleApiClient2 = (GoogleApiClient) zacsVar4.zag().get();
            if (googleApiClient2 != null) {
                googleApiClient2.zap(zacsVar4);
            }
            throw th;
        }
    }
}
