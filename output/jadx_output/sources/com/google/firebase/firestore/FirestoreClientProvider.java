package com.google.firebase.firestore;

import androidx.core.util.Consumer;
import com.google.android.gms.tasks.Task;
import com.google.firebase.firestore.core.FirestoreClient;
import com.google.firebase.firestore.util.AsyncQueue;
import com.google.firebase.firestore.util.Function;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes22.dex */
final class FirestoreClientProvider {
    private AsyncQueue asyncQueue = new AsyncQueue();
    private FirestoreClient client;
    private final Function<AsyncQueue, FirestoreClient> clientFactory;

    FirestoreClientProvider(Function<AsyncQueue, FirestoreClient> clientFactory) {
        this.clientFactory = clientFactory;
    }

    boolean isConfigured() {
        return this.client != null;
    }

    synchronized void ensureConfigured() {
        if (!isConfigured()) {
            this.client = this.clientFactory.apply(this.asyncQueue);
        }
    }

    synchronized <T> T call(Function<FirestoreClient, T> call) {
        ensureConfigured();
        return call.apply(this.client);
    }

    synchronized void procedure(Consumer<FirestoreClient> call) {
        ensureConfigured();
        call.accept(this.client);
    }

    synchronized <T> T executeIfShutdown(Function<Executor, T> callIf, Function<Executor, T> callElse) {
        Executor executor = new Executor() { // from class: com.google.firebase.firestore.FirestoreClientProvider$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                this.f$0.m8329x1755525a(runnable);
            }
        };
        if (this.client != null && !this.client.isTerminated()) {
            return callElse.apply(executor);
        }
        return callIf.apply(executor);
    }

    /* JADX INFO: renamed from: lambda$executeIfShutdown$0$com-google-firebase-firestore-FirestoreClientProvider, reason: not valid java name */
    /* synthetic */ void m8329x1755525a(Runnable command) {
        this.asyncQueue.enqueueAndForgetEvenAfterShutdown(command);
    }

    synchronized Task<Void> terminate() {
        Task<Void> terminate;
        ensureConfigured();
        terminate = this.client.terminate();
        this.asyncQueue.shutdown();
        return terminate;
    }

    AsyncQueue getAsyncQueue() {
        return this.asyncQueue;
    }
}
