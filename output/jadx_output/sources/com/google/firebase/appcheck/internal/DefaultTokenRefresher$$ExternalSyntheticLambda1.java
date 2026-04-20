package com.google.firebase.appcheck.internal;

import com.android.tools.r8.annotations.LambdaMethod;
import com.android.tools.r8.annotations.SynthesizedClassV2;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes22.dex */
@LambdaMethod(holder = "Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;", method = "onRefresh", proto = "()V")
@SynthesizedClassV2(apiLevel = -2, kind = 19, versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0")
public final /* synthetic */ class DefaultTokenRefresher$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ DefaultTokenRefresher f$0;

    public /* synthetic */ DefaultTokenRefresher$$ExternalSyntheticLambda1(DefaultTokenRefresher defaultTokenRefresher) {
        this.f$0 = defaultTokenRefresher;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.onRefresh();
    }
}
