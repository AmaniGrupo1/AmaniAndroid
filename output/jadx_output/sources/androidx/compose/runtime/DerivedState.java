package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.runtime.DerivedState;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.System_jvmKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.StateRecord;
import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: androidx.compose.runtime.DerivedSnapshotState, reason: from toString */
/* JADX INFO: compiled from: DerivedState.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001(B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J:\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\r2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00152\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000fH\u0016J\b\u0010!\u001a\u00020\"H\u0016J\b\u0010'\u001a\u00020\"H\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00028\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u001e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0019\u0010#\u001a\u0004\u0018\u00018\u00008G¢\u0006\f\u0012\u0004\b$\u0010%\u001a\u0004\b&\u0010\u001d¨\u0006)"}, d2 = {"Landroidx/compose/runtime/DerivedSnapshotState;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/runtime/snapshots/StateObjectImpl;", "Landroidx/compose/runtime/DerivedState;", "calculation", "Lkotlin/Function0;", "policy", "Landroidx/compose/runtime/SnapshotMutationPolicy;", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/SnapshotMutationPolicy;)V", "getPolicy", "()Landroidx/compose/runtime/SnapshotMutationPolicy;", "first", "Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;", "current", "Landroidx/compose/runtime/snapshots/StateRecord;", "snapshot", "Landroidx/compose/runtime/snapshots/Snapshot;", "currentRecord", "readable", "forceDependencyReads", "", "firstStateRecord", "getFirstStateRecord", "()Landroidx/compose/runtime/snapshots/StateRecord;", "prependStateRecord", "", Values.VECTOR_MAP_VECTORS_KEY, "getValue", "()Ljava/lang/Object;", "Landroidx/compose/runtime/DerivedState$Record;", "getCurrentRecord", "()Landroidx/compose/runtime/DerivedState$Record;", "toString", "", "debuggerDisplayValue", "getDebuggerDisplayValue$annotations", "()V", "getDebuggerDisplayValue", "displayValue", "ResultRecord", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class DerivedState<T> extends StateObjectImpl implements androidx.compose.runtime.DerivedState<T> {
    private final Function0<T> calculation;
    private ResultRecord<T> first = new ResultRecord<>(SnapshotKt.currentSnapshot().getSnapshotId());
    private final SnapshotMutationPolicy<T> policy;

    public static /* synthetic */ void getDebuggerDisplayValue$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DerivedState(Function0<? extends T> function0, SnapshotMutationPolicy<T> snapshotMutationPolicy) {
        this.calculation = function0;
        this.policy = snapshotMutationPolicy;
    }

    @Override // androidx.compose.runtime.DerivedState
    public SnapshotMutationPolicy<T> getPolicy() {
        return this.policy;
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.DerivedSnapshotState$ResultRecord */
    /* JADX INFO: compiled from: DerivedState.kt */
    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 2*\u0004\b\u0001\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u00012B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0002H\u0016J\b\u0010'\u001a\u00020\u0002H\u0016J\u0019\u0010'\u001a\u00020\u00022\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016¢\u0006\u0002\u0010(J\u001a\u0010)\u001a\u00020*2\n\u0010+\u001a\u0006\u0012\u0002\b\u00030,2\u0006\u0010-\u001a\u00020.J\u001a\u0010/\u001a\u00020\u000f2\n\u0010+\u001a\u0006\u0012\u0002\b\u00030,2\u0006\u0010-\u001a\u00020.R \u0010\t\u001a\u00060\u0005j\u0002`\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\bR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R \u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0011\"\u0004\b#\u0010\u0013R\u0014\u00100\u001a\u00028\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u0010\u001e¨\u00063"}, d2 = {"Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/runtime/snapshots/StateRecord;", "Landroidx/compose/runtime/DerivedState$Record;", "snapshotId", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "<init>", "(J)V", "validSnapshotId", "getValidSnapshotId", "()J", "setValidSnapshotId", "J", "validSnapshotWriteCount", "", "getValidSnapshotWriteCount", "()I", "setValidSnapshotWriteCount", "(I)V", "dependencies", "Landroidx/collection/ObjectIntMap;", "Landroidx/compose/runtime/snapshots/StateObject;", "getDependencies", "()Landroidx/collection/ObjectIntMap;", "setDependencies", "(Landroidx/collection/ObjectIntMap;)V", "result", "", "getResult", "()Ljava/lang/Object;", "setResult", "(Ljava/lang/Object;)V", "resultHash", "getResultHash", "setResultHash", "assign", "", Values.VECTOR_MAP_VECTORS_KEY, "create", "(J)Landroidx/compose/runtime/snapshots/StateRecord;", "isValid", "", "derivedState", "Landroidx/compose/runtime/DerivedState;", "snapshot", "Landroidx/compose/runtime/snapshots/Snapshot;", "readableHash", "currentValue", "getCurrentValue", "Companion", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ResultRecord<T> extends StateRecord implements DerivedState.Record<T> {
        private ObjectIntMap<StateObject> dependencies;
        private Object result;
        private int resultHash;
        private long validSnapshotId;
        private int validSnapshotWriteCount;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        public static final int $stable = 8;
        private static final Object Unset = new Object();

        public ResultRecord(long snapshotId) {
            super(snapshotId);
            this.dependencies = ObjectIntMapKt.emptyObjectIntMap();
            this.result = Unset;
        }

        /* JADX INFO: renamed from: androidx.compose.runtime.DerivedSnapshotState$ResultRecord$Companion, reason: from kotlin metadata */
        /* JADX INFO: compiled from: DerivedState.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;", "", "<init>", "()V", "Unset", "getUnset", "()Ljava/lang/Object;", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Object getUnset() {
                return ResultRecord.Unset;
            }
        }

        public final long getValidSnapshotId() {
            return this.validSnapshotId;
        }

        public final void setValidSnapshotId(long j) {
            this.validSnapshotId = j;
        }

        public final int getValidSnapshotWriteCount() {
            return this.validSnapshotWriteCount;
        }

        public final void setValidSnapshotWriteCount(int i) {
            this.validSnapshotWriteCount = i;
        }

        @Override // androidx.compose.runtime.DerivedState.Record
        public ObjectIntMap<StateObject> getDependencies() {
            return this.dependencies;
        }

        public void setDependencies(ObjectIntMap<StateObject> objectIntMap) {
            this.dependencies = objectIntMap;
        }

        public final Object getResult() {
            return this.result;
        }

        public final void setResult(Object obj) {
            this.result = obj;
        }

        public final int getResultHash() {
            return this.resultHash;
        }

        public final void setResultHash(int i) {
            this.resultHash = i;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(StateRecord value) {
            Intrinsics.checkNotNull(value, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState.ResultRecord>");
            ResultRecord other = (ResultRecord) value;
            setDependencies(other.getDependencies());
            this.result = other.result;
            this.resultHash = other.resultHash;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public StateRecord create() {
            return create(SnapshotKt.currentSnapshot().getSnapshotId());
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public StateRecord create(long snapshotId) {
            return new ResultRecord(snapshotId);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x001f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean isValid(androidx.compose.runtime.DerivedState<?> derivedState, Snapshot snapshot) {
            boolean isValid;
            int i;
            Object lock$iv$iv = SnapshotKt.getLock();
            synchronized (lock$iv$iv) {
                isValid = false;
                if (this.validSnapshotId == snapshot.getSnapshotId()) {
                    i = this.validSnapshotWriteCount != snapshot.getWriteCount() ? 1 : 0;
                }
            }
            if (this.result != Unset && (i == 0 || this.resultHash == readableHash(derivedState, snapshot))) {
                isValid = true;
            }
            if (isValid && i != 0) {
                Object lock$iv$iv2 = SnapshotKt.getLock();
                synchronized (lock$iv$iv2) {
                    this.validSnapshotId = snapshot.getSnapshotId();
                    this.validSnapshotWriteCount = snapshot.getWriteCount();
                    Unit unit = Unit.INSTANCE;
                }
            }
            return isValid;
        }

        public final int readableHash(androidx.compose.runtime.DerivedState<?> derivedState, Snapshot snapshot) throws Throwable {
            ObjectIntMap<StateObject> dependencies;
            MutableVector<DerivedStateObserver> mutableVector;
            int i;
            int i2;
            int hash = 7;
            Object lock$iv$iv = SnapshotKt.getLock();
            synchronized (lock$iv$iv) {
                dependencies = getDependencies();
            }
            if (dependencies.isNotEmpty()) {
                int $i$f$notifyObservers = 0;
                MutableVector<DerivedStateObserver> mutableVectorDerivedStateObservers = SnapshotStateKt.derivedStateObservers();
                Object[] content$iv$iv = mutableVectorDerivedStateObservers.content;
                int size$iv$iv = mutableVectorDerivedStateObservers.getSize();
                for (int i$iv$iv = 0; i$iv$iv < size$iv$iv; i$iv$iv++) {
                    DerivedStateObserver it$iv = (DerivedStateObserver) content$iv$iv[i$iv$iv];
                    it$iv.start(derivedState);
                }
                int i3 = 0;
                ObjectIntMap<StateObject> objectIntMap = dependencies;
                try {
                    Object[] k$iv = objectIntMap.keys;
                    int[] v$iv = objectIntMap.values;
                    long[] m$iv$iv = objectIntMap.metadata;
                    int lastIndex$iv$iv = m$iv$iv.length - 2;
                    int i$iv$iv2 = 0;
                    if (0 <= lastIndex$iv$iv) {
                        while (true) {
                            long slot$iv$iv = m$iv$iv[i$iv$iv2];
                            int $i$f$notifyObservers2 = $i$f$notifyObservers;
                            mutableVector = mutableVectorDerivedStateObservers;
                            ObjectIntMap<StateObject> objectIntMap2 = dependencies;
                            ObjectIntMap<StateObject> objectIntMap3 = objectIntMap;
                            long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
                            if ($this$maskEmptyOrDeleted$iv$iv$iv != -9187201950435737472L) {
                                int i4 = 8;
                                int bitCount$iv$iv = 8 - ((~(i$iv$iv2 - lastIndex$iv$iv)) >>> 31);
                                int j$iv$iv = 0;
                                while (j$iv$iv < bitCount$iv$iv) {
                                    long value$iv$iv$iv = slot$iv$iv & 255;
                                    int i5 = i4;
                                    if (value$iv$iv$iv < 128) {
                                        int index$iv$iv = (i$iv$iv2 << 3) + j$iv$iv;
                                        try {
                                            Object obj = k$iv[index$iv$iv];
                                            int readLevel = v$iv[index$iv$iv];
                                            StateObject stateObject = (StateObject) obj;
                                            i2 = i3;
                                            if (readLevel == 1) {
                                                StateRecord record = stateObject instanceof DerivedState ? ((DerivedState) stateObject).current(snapshot) : SnapshotKt.current(stateObject.getFirstStateRecord(), snapshot);
                                                hash = (((hash * 31) + System_jvmKt.identityHashCode(record)) * 31) + Long.hashCode(record.getSnapshotId());
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            MutableVector<DerivedStateObserver> mutableVector2 = mutableVector;
                                            Object[] content$iv$iv2 = mutableVector2.content;
                                            int size$iv$iv2 = mutableVector2.getSize();
                                            for (int i$iv$iv3 = 0; i$iv$iv3 < size$iv$iv2; i$iv$iv3++) {
                                                DerivedStateObserver it$iv2 = (DerivedStateObserver) content$iv$iv2[i$iv$iv3];
                                                it$iv2.done(derivedState);
                                            }
                                            throw th;
                                        }
                                    } else {
                                        i2 = i3;
                                    }
                                    slot$iv$iv >>= i5;
                                    j$iv$iv++;
                                    i4 = i5;
                                    i3 = i2;
                                }
                                i = i3;
                                if (bitCount$iv$iv != i4) {
                                    break;
                                }
                            } else {
                                i = i3;
                            }
                            if (i$iv$iv2 == lastIndex$iv$iv) {
                                break;
                            }
                            i$iv$iv2++;
                            dependencies = objectIntMap2;
                            objectIntMap = objectIntMap3;
                            $i$f$notifyObservers = $i$f$notifyObservers2;
                            mutableVectorDerivedStateObservers = mutableVector;
                            i3 = i;
                        }
                    } else {
                        mutableVector = mutableVectorDerivedStateObservers;
                    }
                    Unit unit = Unit.INSTANCE;
                    MutableVector<DerivedStateObserver> mutableVector3 = mutableVector;
                    Object[] content$iv$iv3 = mutableVector3.content;
                    int size$iv$iv3 = mutableVector3.getSize();
                    for (int i$iv$iv4 = 0; i$iv$iv4 < size$iv$iv3; i$iv$iv4++) {
                        DerivedStateObserver it$iv3 = (DerivedStateObserver) content$iv$iv3[i$iv$iv4];
                        it$iv3.done(derivedState);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    mutableVector = mutableVectorDerivedStateObservers;
                }
            }
            return hash;
        }

        @Override // androidx.compose.runtime.DerivedState.Record
        public T getCurrentValue() {
            return (T) this.result;
        }
    }

    public final StateRecord current(Snapshot snapshot) {
        return currentRecord((ResultRecord) SnapshotKt.current(this.first, snapshot), snapshot, false, this.calculation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0147 A[LOOP:3: B:52:0x0145->B:53:0x0147, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0223 A[Catch: all -> 0x029c, TryCatch #5 {, blocks: (B:73:0x01f8, B:75:0x020b, B:77:0x0211, B:83:0x0223, B:85:0x0236), top: B:127:0x01f8 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final ResultRecord<T> currentRecord(ResultRecord<T> readable, Snapshot snapshot, boolean forceDependencyReads, Function0<? extends T> calculation) throws Throwable {
        boolean z;
        ResultRecord<T> resultRecord;
        boolean z2;
        MutableVector<DerivedStateObserver> mutableVector;
        int i;
        int size;
        int i2;
        int i3;
        if (!readable.isValid(this, snapshot)) {
            final MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
            IntRef intRef = (IntRef) SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.get();
            if (intRef == null) {
                intRef = new IntRef(0);
                SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.set(intRef);
            }
            final IntRef intRef2 = intRef;
            final int element = intRef2.getElement();
            DerivedState<T> derivedState = this;
            MutableVector<DerivedStateObserver> mutableVectorDerivedStateObservers = SnapshotStateKt.derivedStateObservers();
            MutableVector<DerivedStateObserver> mutableVector2 = mutableVectorDerivedStateObservers;
            int i4 = 0;
            DerivedStateObserver[] derivedStateObserverArr = mutableVector2.content;
            int size2 = mutableVector2.getSize();
            while (i4 < size2) {
                derivedStateObserverArr[i4].start(derivedState);
                i4++;
                mutableVector2 = mutableVector2;
            }
            try {
                intRef2.setElement(element + 1);
            } catch (Throwable th) {
                th = th;
            }
            try {
                Object objObserve = Snapshot.INSTANCE.observe(new Function1() { // from class: androidx.compose.runtime.DerivedSnapshotState$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return DerivedState.currentRecord$lambda$1$0$0(this.f$0, intRef2, mutableObjectIntMap, element, obj);
                    }
                }, null, calculation);
                intRef2.setElement(element);
                int i5 = 0;
                DerivedStateObserver[] derivedStateObserverArr2 = mutableVectorDerivedStateObservers.content;
                for (int size3 = mutableVectorDerivedStateObservers.getSize(); i5 < size3; size3 = size3) {
                    derivedStateObserverArr2[i5].done(derivedState);
                    i5++;
                }
                synchronized (SnapshotKt.getLock()) {
                    Snapshot current = Snapshot.INSTANCE.getCurrent();
                    if (readable.getResult() != ResultRecord.INSTANCE.getUnset()) {
                        SnapshotMutationPolicy<T> policy = getPolicy();
                        if (policy != 0) {
                            z = true;
                            z2 = policy.equivalent(objObserve, readable.getResult());
                            if (!z2) {
                                readable.setDependencies(mutableObjectIntMap);
                                readable.setResultHash(readable.readableHash(this, current));
                                resultRecord = readable;
                            }
                        } else {
                            z = true;
                        }
                        if (!z2) {
                        }
                    } else {
                        z = true;
                    }
                    resultRecord = (ResultRecord) SnapshotKt.newWritableRecord(this.first, this, current);
                    resultRecord.setDependencies(mutableObjectIntMap);
                    resultRecord.setResultHash(resultRecord.readableHash(this, current));
                    resultRecord.setResult(objObserve);
                }
                IntRef intRef3 = (IntRef) SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.get();
                if ((intRef3 == null || intRef3.getElement() != 0) ? false : z) {
                    Snapshot.INSTANCE.notifyObjectsInitialized();
                    synchronized (SnapshotKt.getLock()) {
                        Snapshot current2 = Snapshot.INSTANCE.getCurrent();
                        resultRecord.setValidSnapshotId(current2.getSnapshotId());
                        resultRecord.setValidSnapshotWriteCount(current2.getWriteCount());
                        Unit unit = Unit.INSTANCE;
                    }
                }
                return resultRecord;
            } catch (Throwable th2) {
                th = th2;
                int i6 = 0;
                Throwable th3 = th;
                DerivedStateObserver[] derivedStateObserverArr3 = mutableVectorDerivedStateObservers.content;
                for (int size4 = mutableVectorDerivedStateObservers.getSize(); i6 < size4; size4 = size4) {
                    derivedStateObserverArr3[i6].done(derivedState);
                    i6++;
                }
                throw th3;
            }
        }
        if (forceDependencyReads) {
            DerivedState<T> derivedState2 = this;
            int i7 = 0;
            MutableVector<DerivedStateObserver> mutableVectorDerivedStateObservers2 = SnapshotStateKt.derivedStateObservers();
            DerivedStateObserver[] derivedStateObserverArr4 = mutableVectorDerivedStateObservers2.content;
            int size5 = mutableVectorDerivedStateObservers2.getSize();
            for (int i8 = 0; i8 < size5; i8++) {
                derivedStateObserverArr4[i8].start(derivedState2);
            }
            try {
                ObjectIntMap<StateObject> dependencies = readable.getDependencies();
                IntRef intRef4 = (IntRef) SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.get();
                if (intRef4 == null) {
                    try {
                        intRef4 = new IntRef(0);
                        SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.set(intRef4);
                    } catch (Throwable th4) {
                        th = th4;
                        mutableVector = mutableVectorDerivedStateObservers2;
                        MutableVector<DerivedStateObserver> mutableVector3 = mutableVector;
                        DerivedStateObserver[] derivedStateObserverArr5 = mutableVector3.content;
                        size = mutableVector3.getSize();
                        while (i < size) {
                        }
                        throw th;
                    }
                }
                IntRef intRef5 = intRef4;
                int element2 = intRef5.getElement();
                Object[] objArr = dependencies.keys;
                int[] iArr = dependencies.values;
                long[] jArr = dependencies.metadata;
                int length = jArr.length - 2;
                int i9 = 0;
                if (0 <= length) {
                    while (true) {
                        long j = jArr[i9];
                        Object[] objArr2 = objArr;
                        int[] iArr2 = iArr;
                        int i10 = i7;
                        mutableVector = mutableVectorDerivedStateObservers2;
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i11 = 8;
                            int i12 = 8 - ((~(i9 - length)) >>> 31);
                            int i13 = 0;
                            while (i13 < i12) {
                                if (((j & 255) < 128 ? 1 : 0) != 0) {
                                    int i14 = (i9 << 3) + i13;
                                    try {
                                        StateObject stateObject = (StateObject) objArr2[i14];
                                        i2 = i11;
                                        intRef5.setElement(element2 + iArr2[i14]);
                                        Function1<Object, Unit> readObserver = snapshot.getReadObserver();
                                        if (readObserver != null) {
                                            i3 = i13;
                                            readObserver.invoke(stateObject);
                                        } else {
                                            i3 = i13;
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        MutableVector<DerivedStateObserver> mutableVector32 = mutableVector;
                                        DerivedStateObserver[] derivedStateObserverArr52 = mutableVector32.content;
                                        size = mutableVector32.getSize();
                                        for (i = 0; i < size; i++) {
                                            derivedStateObserverArr52[i].done(derivedState2);
                                        }
                                        throw th;
                                    }
                                } else {
                                    i2 = i11;
                                    i3 = i13;
                                }
                                j >>= i2;
                                i13 = i3 + 1;
                                i11 = i2;
                            }
                            if (i12 != i11) {
                                break;
                            }
                            if (i9 == length) {
                                break;
                            }
                            i9++;
                            i7 = i10;
                            mutableVectorDerivedStateObservers2 = mutableVector;
                            objArr = objArr2;
                            iArr = iArr2;
                        }
                    }
                } else {
                    mutableVector = mutableVectorDerivedStateObservers2;
                }
                intRef5.setElement(element2);
                Unit unit2 = Unit.INSTANCE;
                MutableVector<DerivedStateObserver> mutableVector4 = mutableVector;
                DerivedStateObserver[] derivedStateObserverArr6 = mutableVector4.content;
                int size6 = mutableVector4.getSize();
                for (int i15 = 0; i15 < size6; i15++) {
                    derivedStateObserverArr6[i15].done(derivedState2);
                }
            } catch (Throwable th6) {
                th = th6;
                mutableVector = mutableVectorDerivedStateObservers2;
            }
        }
        return readable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit currentRecord$lambda$1$0$0(DerivedState this$0, IntRef $calculationLevelRef, MutableObjectIntMap $newDependencies, int $nestedCalculationLevel, Object it) {
        if (it == this$0) {
            throw new IllegalStateException("A derived state calculation cannot read itself".toString());
        }
        if (it instanceof StateObject) {
            int readNestedLevel = $calculationLevelRef.getElement();
            $newDependencies.set(it, Math.min(readNestedLevel - $nestedCalculationLevel, $newDependencies.getOrDefault(it, Integer.MAX_VALUE)));
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public StateRecord getFirstStateRecord() {
        return this.first;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(StateRecord value) {
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState>");
        this.first = (ResultRecord) value;
    }

    @Override // androidx.compose.runtime.State
    public T getValue() {
        Function1<Object, Unit> readObserver = Snapshot.INSTANCE.getCurrent().getReadObserver();
        if (readObserver != null) {
            readObserver.invoke(this);
        }
        Snapshot current = Snapshot.INSTANCE.getCurrent();
        return (T) currentRecord((ResultRecord) SnapshotKt.current(this.first, current), current, true, this.calculation).getResult();
    }

    @Override // androidx.compose.runtime.DerivedState
    public DerivedState.Record<T> getCurrentRecord() {
        Snapshot snapshot = Snapshot.INSTANCE.getCurrent();
        ResultRecord<T> record = (ResultRecord) SnapshotKt.current(this.first, snapshot);
        return currentRecord(record, snapshot, false, this.calculation);
    }

    public String toString() {
        StateRecord $this$withCurrent$iv = this.first;
        return "DerivedState(value=" + displayValue() + ")@" + hashCode();
    }

    public final T getDebuggerDisplayValue() {
        ResultRecord resultRecord = (ResultRecord) SnapshotKt.current(this.first);
        if (resultRecord.isValid(this, Snapshot.INSTANCE.getCurrent())) {
            return (T) resultRecord.getResult();
        }
        return null;
    }

    private final String displayValue() {
        StateRecord $this$withCurrent$iv = this.first;
        ResultRecord it = (ResultRecord) SnapshotKt.current($this$withCurrent$iv);
        if (it.isValid(this, Snapshot.INSTANCE.getCurrent())) {
            return String.valueOf(it.getResult());
        }
        return "<Not calculated>";
    }
}
