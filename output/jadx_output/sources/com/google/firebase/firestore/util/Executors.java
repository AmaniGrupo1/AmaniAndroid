package com.google.firebase.firestore.util;

import android.os.AsyncTask;
import com.google.android.gms.tasks.TaskExecutors;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes22.dex */
public final class Executors {
    private static final int ASYNC_THREAD_POOL_MAXIMUM_CONCURRENCY = 4;
    public static final Executor DEFAULT_CALLBACK_EXECUTOR = TaskExecutors.MAIN_THREAD;
    public static final Executor DIRECT_EXECUTOR = new Executor() { // from class: com.google.firebase.firestore.util.Executors$$ExternalSyntheticLambda0
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };
    public static final Executor BACKGROUND_EXECUTOR = new ThrottledForwardingExecutor(4, AsyncTask.THREAD_POOL_EXECUTOR);

    private Executors() {
    }
}
