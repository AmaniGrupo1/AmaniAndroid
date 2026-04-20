package io.grpc.internal;

import androidx.core.app.NotificationCompat;
import com.google.common.base.Preconditions;
import io.grpc.ClientStreamTracer;
import io.grpc.Metadata;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;

/* JADX INFO: loaded from: classes22.dex */
public final class FailingClientStream extends NoopClientStream {
    private final Status error;
    private final ClientStreamListener.RpcProgress rpcProgress;
    private boolean started;
    private final ClientStreamTracer[] tracers;

    public FailingClientStream(Status error, ClientStreamTracer[] tracers) {
        this(error, ClientStreamListener.RpcProgress.PROCESSED, tracers);
    }

    public FailingClientStream(Status error, ClientStreamListener.RpcProgress rpcProgress, ClientStreamTracer[] tracers) {
        Preconditions.checkArgument(!error.isOk(), "error must not be OK");
        this.error = error;
        this.rpcProgress = rpcProgress;
        this.tracers = tracers;
    }

    @Override // io.grpc.internal.NoopClientStream, io.grpc.internal.ClientStream
    public void start(ClientStreamListener listener) {
        Preconditions.checkState(!this.started, "already started");
        this.started = true;
        for (ClientStreamTracer tracer : this.tracers) {
            tracer.streamClosed(this.error);
        }
        listener.closed(this.error, this.rpcProgress, new Metadata());
    }

    Status getError() {
        return this.error;
    }

    @Override // io.grpc.internal.NoopClientStream, io.grpc.internal.ClientStream
    public void appendTimeoutInsight(InsightBuilder insight) {
        insight.appendKeyValue("error", this.error).appendKeyValue(NotificationCompat.CATEGORY_PROGRESS, this.rpcProgress);
    }
}
