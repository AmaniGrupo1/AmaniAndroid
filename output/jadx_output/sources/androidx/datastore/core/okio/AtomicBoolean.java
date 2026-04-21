package androidx.datastore.core.okio;

import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;

/* JADX INFO: compiled from: Atomic.jvm.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\b\u001a\u00020\u0003J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/datastore/core/okio/AtomicBoolean;", "", "initialValue", "", "<init>", "(Z)V", "delegate", "Ljava/util/concurrent/atomic/AtomicBoolean;", "get", "set", "", Values.VECTOR_MAP_VECTORS_KEY, "datastore-core-okio"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AtomicBoolean {
    private final java.util.concurrent.atomic.AtomicBoolean delegate;

    public AtomicBoolean(boolean initialValue) {
        this.delegate = new java.util.concurrent.atomic.AtomicBoolean(initialValue);
    }

    public final boolean get() {
        return this.delegate.get();
    }

    public final void set(boolean value) {
        this.delegate.set(value);
    }
}
