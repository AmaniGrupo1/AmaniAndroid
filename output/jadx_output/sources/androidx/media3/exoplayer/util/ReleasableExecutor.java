package androidx.media3.exoplayer.util;

import androidx.media3.common.util.Consumer;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes21.dex */
public interface ReleasableExecutor extends Executor {
    void release();

    static <T extends Executor> ReleasableExecutor from(final T executor, final Consumer<T> releaseCallback) {
        return new ReleasableExecutor() { // from class: androidx.media3.exoplayer.util.ReleasableExecutor.1
            @Override // java.util.concurrent.Executor
            public void execute(Runnable command) {
                executor.execute(command);
            }

            @Override // androidx.media3.exoplayer.util.ReleasableExecutor
            public void release() {
                releaseCallback.accept(executor);
            }
        };
    }
}
