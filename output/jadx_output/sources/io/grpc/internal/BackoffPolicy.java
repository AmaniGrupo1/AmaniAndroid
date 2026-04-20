package io.grpc.internal;

/* JADX INFO: loaded from: classes22.dex */
public interface BackoffPolicy {

    public interface Provider {
        BackoffPolicy get();
    }

    long nextBackoffNanos();
}
