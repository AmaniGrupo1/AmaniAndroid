package com.google.firebase.storage;

import com.google.firebase.concurrent.FirebaseExecutors;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes22.dex */
public class StorageTaskScheduler {
    private static Executor CALLBACK_QUEUE_EXECUTOR = null;
    private static Executor COMMAND_POOL_EXECUTOR = null;
    private static final int COMMAND_POOL_SIZE = 5;
    private static final int DOWNLOAD_POOL_SIZE = 3;
    private static Executor DOWNLOAD_QUEUE_EXECUTOR = null;
    private static Executor MAIN_THREAD_EXECUTOR = null;
    private static final int UPLOAD_POOL_SIZE = 2;
    private static Executor UPLOAD_QUEUE_EXECUTOR;
    public static StorageTaskScheduler sInstance = new StorageTaskScheduler();

    public static void initializeExecutors(Executor firebaseExecutor, Executor uiExecutor) {
        COMMAND_POOL_EXECUTOR = FirebaseExecutors.newLimitedConcurrencyExecutor(firebaseExecutor, 5);
        DOWNLOAD_QUEUE_EXECUTOR = FirebaseExecutors.newLimitedConcurrencyExecutor(firebaseExecutor, 3);
        UPLOAD_QUEUE_EXECUTOR = FirebaseExecutors.newLimitedConcurrencyExecutor(firebaseExecutor, 2);
        CALLBACK_QUEUE_EXECUTOR = FirebaseExecutors.newSequentialExecutor(firebaseExecutor);
        MAIN_THREAD_EXECUTOR = uiExecutor;
    }

    public static StorageTaskScheduler getInstance() {
        return sInstance;
    }

    public void scheduleCommand(Runnable task) {
        COMMAND_POOL_EXECUTOR.execute(task);
    }

    public void scheduleUpload(Runnable task) {
        UPLOAD_QUEUE_EXECUTOR.execute(task);
    }

    public Executor getMainThreadExecutor() {
        return MAIN_THREAD_EXECUTOR;
    }

    public void scheduleDownload(Runnable task) {
        DOWNLOAD_QUEUE_EXECUTOR.execute(task);
    }

    public void scheduleCallback(Runnable task) {
        CALLBACK_QUEUE_EXECUTOR.execute(task);
    }

    public Executor getCommandPoolExecutor() {
        return COMMAND_POOL_EXECUTOR;
    }
}
