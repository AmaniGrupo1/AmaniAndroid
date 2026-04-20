package io.grpc.internal;

/* JADX INFO: loaded from: classes22.dex */
public interface RetryScheduler {
    void reset();

    void schedule(Runnable runnable);
}
