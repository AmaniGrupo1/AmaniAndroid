package androidx.media3.common.util;

import android.os.Looper;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public final class BackgroundThreadStateHandler<T> {
    private final HandlerWrapper backgroundHandler;
    private T backgroundState;
    private final HandlerWrapper foregroundHandler;
    private T foregroundState;
    private final StateChangeListener<T> onStateChanged;
    private int pendingOperations;

    public interface StateChangeListener<T> {
        void onStateChanged(T t, T t2);
    }

    public BackgroundThreadStateHandler(T initialState, Looper backgroundLooper, Looper foregroundLooper, Clock clock, StateChangeListener<T> onStateChanged) {
        this.backgroundHandler = clock.createHandler(backgroundLooper, null);
        this.foregroundHandler = clock.createHandler(foregroundLooper, null);
        this.foregroundState = initialState;
        this.backgroundState = initialState;
        this.onStateChanged = onStateChanged;
    }

    public T get() {
        Looper myLooper = Looper.myLooper();
        if (myLooper == this.foregroundHandler.getLooper()) {
            return this.foregroundState;
        }
        Preconditions.checkState(myLooper == this.backgroundHandler.getLooper());
        return this.backgroundState;
    }

    public void updateStateAsync(Function<T, T> placeholderState, final Function<T, T> backgroundStateUpdate) {
        Preconditions.checkState(Looper.myLooper() == this.foregroundHandler.getLooper());
        this.pendingOperations++;
        runInBackground(new Runnable() { // from class: androidx.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7837x55c212ba(backgroundStateUpdate);
            }
        });
        updateStateInForeground(placeholderState.apply(this.foregroundState));
    }

    /* JADX INFO: renamed from: lambda$updateStateAsync$1$androidx-media3-common-util-BackgroundThreadStateHandler, reason: not valid java name */
    /* synthetic */ void m7837x55c212ba(Function function) {
        this.backgroundState = (T) function.apply(this.backgroundState);
        final T t = this.backgroundState;
        runInForeground(new Runnable() { // from class: androidx.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7836xc8d4fb9b(t);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: lambda$updateStateAsync$0$androidx-media3-common-util-BackgroundThreadStateHandler, reason: not valid java name */
    /* synthetic */ void m7836xc8d4fb9b(Object obj) {
        int i = this.pendingOperations - 1;
        this.pendingOperations = i;
        if (i == 0) {
            updateStateInForeground(obj);
        }
    }

    public void setStateInBackground(final T newState) {
        this.backgroundState = newState;
        runInForeground(new Runnable() { // from class: androidx.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7835x5a135e8b(newState);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: lambda$setStateInBackground$2$androidx-media3-common-util-BackgroundThreadStateHandler, reason: not valid java name */
    /* synthetic */ void m7835x5a135e8b(Object obj) {
        if (this.pendingOperations == 0) {
            updateStateInForeground(obj);
        }
    }

    public void runInBackground(Runnable runnable) {
        if (!this.backgroundHandler.getLooper().getThread().isAlive()) {
            return;
        }
        this.backgroundHandler.post(runnable);
    }

    private void runInForeground(Runnable runnable) {
        if (!this.foregroundHandler.getLooper().getThread().isAlive()) {
            return;
        }
        this.foregroundHandler.post(runnable);
    }

    private void updateStateInForeground(T newState) {
        T oldState = this.foregroundState;
        this.foregroundState = newState;
        if (!oldState.equals(newState)) {
            this.onStateChanged.onStateChanged(oldState, newState);
        }
    }
}
