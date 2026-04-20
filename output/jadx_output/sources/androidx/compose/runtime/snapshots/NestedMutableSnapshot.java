package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.snapshots.SnapshotApplyResult;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserverKt;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Snapshot.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001BO\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\b\u0012\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\b\u0012\u0006\u0010\f\u001a\u00020\u0001¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0017\u001a\u00020\nH\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\nH\u0002R\u0011\u0010\f\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001b"}, d2 = {"Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;", "Landroidx/compose/runtime/snapshots/MutableSnapshot;", "snapshotId", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "invalid", "Landroidx/compose/runtime/snapshots/SnapshotIdSet;", "readObserver", "Lkotlin/Function1;", "", "", "writeObserver", "parent", "<init>", "(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/MutableSnapshot;)V", "getParent", "()Landroidx/compose/runtime/snapshots/MutableSnapshot;", "deactivated", "", "root", "Landroidx/compose/runtime/snapshots/Snapshot;", "getRoot", "()Landroidx/compose/runtime/snapshots/Snapshot;", "dispose", "apply", "Landroidx/compose/runtime/snapshots/SnapshotApplyResult;", "deactivate", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NestedMutableSnapshot extends MutableSnapshot {
    public static final int $stable = 8;
    private boolean deactivated;
    private final MutableSnapshot parent;

    public NestedMutableSnapshot(long snapshotId, SnapshotIdSet invalid, Function1<Object, Unit> function1, Function1<Object, Unit> function12, MutableSnapshot parent) {
        super(snapshotId, invalid, function1, function12);
        this.parent = parent;
        this.parent.mo4142nestedActivated$runtime(this);
    }

    public final MutableSnapshot getParent() {
        return this.parent;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public Snapshot getRoot() {
        return this.parent.getRoot();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void dispose() {
        if (!getDisposed()) {
            super.dispose();
            deactivate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007c A[Catch: all -> 0x00f2, TryCatch #0 {all -> 0x00f2, blocks: (B:31:0x0089, B:32:0x008e, B:34:0x009c, B:35:0x00a1, B:21:0x005b, B:25:0x006a, B:27:0x0072, B:29:0x007c), top: B:48:0x0044 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009c A[Catch: all -> 0x00f2, TryCatch #0 {all -> 0x00f2, blocks: (B:31:0x0089, B:32:0x008e, B:34:0x009c, B:35:0x00a1, B:21:0x005b, B:25:0x006a, B:27:0x0072, B:29:0x007c), top: B:48:0x0044 }] */
    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SnapshotApplyResult apply() throws Throwable {
        NestedMutableSnapshot nestedMutableSnapshot;
        long $this$compareTo$iv;
        if (this.parent.getApplied() || this.parent.getDisposed()) {
            NestedMutableSnapshot nestedMutableSnapshot2 = this;
            return new SnapshotApplyResult.Failure(nestedMutableSnapshot2);
        }
        MutableScatterSet<StateObject> modified$runtime = getModified$runtime();
        long id = getSnapshotId();
        Map<StateRecord, ? extends StateRecord> mapOptimisticMerges = modified$runtime != null ? SnapshotKt.optimisticMerges(this.parent.getSnapshotId(), this, this.parent.getInvalid()) : null;
        Object lock$iv$iv = SnapshotKt.getLock();
        synchronized (lock$iv$iv) {
            try {
                SnapshotKt.validateOpen(this);
                try {
                    if (modified$runtime == null || modified$runtime.get_size() == 0) {
                        nestedMutableSnapshot = this;
                        closeAndReleasePinning$runtime();
                        Unit unit = Unit.INSTANCE;
                        $this$compareTo$iv = nestedMutableSnapshot.parent.getSnapshotId();
                        if (Intrinsics.compare($this$compareTo$iv, id) < 0) {
                            nestedMutableSnapshot.parent.advance$runtime();
                        }
                        nestedMutableSnapshot.parent.setInvalid$runtime(nestedMutableSnapshot.parent.getInvalid().clear(id).andNot(getPreviousIds()));
                        nestedMutableSnapshot.parent.recordPrevious$runtime(id);
                        nestedMutableSnapshot.parent.recordPreviousPinnedSnapshot$runtime(takeoverPinnedSnapshot$runtime());
                        nestedMutableSnapshot.parent.recordPreviousList$runtime(getPreviousIds());
                        nestedMutableSnapshot.parent.recordPreviousPinnedSnapshots$runtime(getPreviousPinnedSnapshots());
                        Unit unit2 = Unit.INSTANCE;
                        setApplied$runtime(true);
                        deactivate();
                        SnapshotObserverKt.dispatchObserverOnApplied(nestedMutableSnapshot, modified$runtime);
                        return SnapshotApplyResult.Success.INSTANCE;
                    }
                    nestedMutableSnapshot = this;
                    SnapshotApplyResult result = nestedMutableSnapshot.innerApplyLocked$runtime(this.parent.getSnapshotId(), modified$runtime, mapOptimisticMerges, this.parent.getInvalid());
                    if (!Intrinsics.areEqual(result, SnapshotApplyResult.Success.INSTANCE)) {
                        return result;
                    }
                    MutableScatterSet<StateObject> modified$runtime2 = nestedMutableSnapshot.parent.getModified$runtime();
                    if (modified$runtime2 != null) {
                        modified$runtime2.addAll(modified$runtime);
                        if (modified$runtime2 == null) {
                            nestedMutableSnapshot.parent.setModified$runtime(modified$runtime);
                            setModified$runtime(null);
                        }
                    }
                    $this$compareTo$iv = nestedMutableSnapshot.parent.getSnapshotId();
                    if (Intrinsics.compare($this$compareTo$iv, id) < 0) {
                    }
                    nestedMutableSnapshot.parent.setInvalid$runtime(nestedMutableSnapshot.parent.getInvalid().clear(id).andNot(getPreviousIds()));
                    nestedMutableSnapshot.parent.recordPrevious$runtime(id);
                    nestedMutableSnapshot.parent.recordPreviousPinnedSnapshot$runtime(takeoverPinnedSnapshot$runtime());
                    nestedMutableSnapshot.parent.recordPreviousList$runtime(getPreviousIds());
                    nestedMutableSnapshot.parent.recordPreviousPinnedSnapshots$runtime(getPreviousPinnedSnapshots());
                    Unit unit22 = Unit.INSTANCE;
                    setApplied$runtime(true);
                    deactivate();
                    SnapshotObserverKt.dispatchObserverOnApplied(nestedMutableSnapshot, modified$runtime);
                    return SnapshotApplyResult.Success.INSTANCE;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            throw th;
        }
    }

    private final void deactivate() {
        if (!this.deactivated) {
            this.deactivated = true;
            this.parent.mo4143nestedDeactivated$runtime(this);
        }
    }
}
