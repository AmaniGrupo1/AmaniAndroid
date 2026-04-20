package co.touchlab.stately.concurrency;

import com.google.firebase.firestore.model.Values;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AtomicLong.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\",\u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {Values.VECTOR_MAP_VECTORS_KEY, "", "Ljava/util/concurrent/atomic/AtomicLong;", "Lco/touchlab/stately/concurrency/AtomicLong;", "getValue", "(Ljava/util/concurrent/atomic/AtomicLong;)J", "setValue", "(Ljava/util/concurrent/atomic/AtomicLong;J)V", "stately-concurrency"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class AtomicLongKt {
    public static final long getValue(AtomicLong $this$value) {
        Intrinsics.checkNotNullParameter($this$value, "<this>");
        return $this$value.get();
    }

    public static final void setValue(AtomicLong $this$value, long value) {
        Intrinsics.checkNotNullParameter($this$value, "<this>");
        $this$value.set(value);
    }
}
