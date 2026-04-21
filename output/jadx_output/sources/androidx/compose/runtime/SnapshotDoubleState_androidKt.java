package androidx.compose.runtime;

import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;

/* JADX INFO: compiled from: SnapshotDoubleState.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000¨\u0006\u0004"}, d2 = {"createSnapshotMutableDoubleState", "Landroidx/compose/runtime/MutableDoubleState;", Values.VECTOR_MAP_VECTORS_KEY, "", "runtime"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SnapshotDoubleState_androidKt {
    public static final MutableDoubleState createSnapshotMutableDoubleState(double value) {
        return new ParcelableSnapshotMutableDoubleState(value);
    }
}
