package com.google.firebase.storage.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.storage.StorageTaskScheduler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes22.dex */
public class SmartHandler {
    static boolean testMode = false;
    private final Executor executor;

    public SmartHandler(Executor executor) {
        if (executor == null) {
            if (!testMode) {
                this.executor = StorageTaskScheduler.getInstance().getMainThreadExecutor();
                return;
            } else {
                this.executor = null;
                return;
            }
        }
        this.executor = executor;
    }

    public void callBack(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        if (this.executor != null) {
            this.executor.execute(runnable);
        } else {
            StorageTaskScheduler.getInstance().scheduleCallback(runnable);
        }
    }
}
