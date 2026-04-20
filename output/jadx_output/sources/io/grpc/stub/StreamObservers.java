package io.grpc.stub;

import com.google.common.base.Preconditions;
import java.util.Iterator;

/* JADX INFO: loaded from: classes22.dex */
@Deprecated
public final class StreamObservers {
    public static <V> void copyWithFlowControl(final Iterator<V> source, final CallStreamObserver<V> target) {
        Preconditions.checkNotNull(source, "source");
        Preconditions.checkNotNull(target, "target");
        target.setOnReadyHandler(new Runnable() { // from class: io.grpc.stub.StreamObservers.1FlowControllingOnReadyHandler
            private boolean completed;

            @Override // java.lang.Runnable
            public void run() {
                if (this.completed) {
                    return;
                }
                while (target.isReady() && source.hasNext()) {
                    target.onNext(source.next());
                }
                if (!source.hasNext()) {
                    this.completed = true;
                    target.onCompleted();
                }
            }
        });
    }

    public static <V> void copyWithFlowControl(Iterable<V> source, CallStreamObserver<V> target) {
        Preconditions.checkNotNull(source, "source");
        copyWithFlowControl(source.iterator(), target);
    }
}
