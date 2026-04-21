package com.google.firebase.storage;

import com.google.firebase.FirebaseApp;
import com.google.firebase.appcheck.interop.InteropAppCheckTokenProvider;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.inject.Provider;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes22.dex */
class FirebaseStorageComponent {
    private final FirebaseApp app;
    private final Provider<InteropAppCheckTokenProvider> appCheckProvider;
    private final Provider<InternalAuthProvider> authProvider;
    private final Map<String, FirebaseStorage> instances = new HashMap();

    FirebaseStorageComponent(FirebaseApp app, Provider<InternalAuthProvider> authProvider, Provider<InteropAppCheckTokenProvider> appCheckProvider, Executor blockingExecutor, Executor uiExecutor) {
        this.app = app;
        this.authProvider = authProvider;
        this.appCheckProvider = appCheckProvider;
        StorageTaskScheduler.initializeExecutors(blockingExecutor, uiExecutor);
    }

    synchronized FirebaseStorage get(String bucketName) {
        FirebaseStorage storage;
        storage = this.instances.get(bucketName);
        if (storage == null) {
            storage = new FirebaseStorage(bucketName, this.app, this.authProvider, this.appCheckProvider);
            this.instances.put(bucketName, storage);
        }
        return storage;
    }

    synchronized void clearInstancesForTesting() {
        this.instances.clear();
    }
}
