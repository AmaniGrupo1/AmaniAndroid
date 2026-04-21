package androidx.compose.ui.input.pointer;

import android.os.Build;
import android.util.SparseBooleanArray;
import android.util.SparseLongArray;
import android.view.MotionEvent;
import androidx.collection.LongSparseArray;
import androidx.collection.SieveCacheKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent_androidKt;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import com.google.firebase.firestore.model.Values;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: MotionEventAdapter.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018\u00002\u00020\u0001:\u00012B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0000¢\u0006\u0002\b\u001cJ#\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u0018\u001a\u00020\u00192\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 H\u0000¢\u0006\u0002\b!J\u000e\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0014J\u0010\u0010%\u001a\u00020#2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010&\u001a\u00020#2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0014\u0010'\u001a\u00020(*\u00020\u00192\u0006\u0010$\u001a\u00020\u0014H\u0002J\u0017\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0014H\u0002¢\u0006\u0004\b,\u0010-J\u0010\u0010.\u001a\u00020#2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J(\u0010/\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u00100\u001a\u00020\u00142\u0006\u00101\u001a\u00020(H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u00020\u00078\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\u0003\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Landroidx/compose/ui/input/pointer/MotionEventAdapter;", "", "<init>", "()V", "nextId", "", "motionEventToComposePointerIdMap", "Landroid/util/SparseLongArray;", "getMotionEventToComposePointerIdMap$ui$annotations", "getMotionEventToComposePointerIdMap$ui", "()Landroid/util/SparseLongArray;", "activeHoverIds", "Landroid/util/SparseBooleanArray;", "pointers", "", "Landroidx/compose/ui/input/pointer/PointerInputEventData;", "previousIndirectPointerEventData", "Landroidx/collection/LongSparseArray;", "Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;", "previousToolType", "", "previousSource", "convertToPointerInputEvent", "Landroidx/compose/ui/input/pointer/PointerInputEvent;", "motionEvent", "Landroid/view/MotionEvent;", "positionCalculator", "Landroidx/compose/ui/input/pointer/PositionCalculator;", "convertToPointerInputEvent$ui", "convertToIndirectPointerEvent", "Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;", "primaryDirectionalMotionAxisOverride", "Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;", "convertToIndirectPointerEvent-k92h6UU$ui", "endStream", "", "pointerId", "addFreshIds", "removeStaleIds", "hasPointerId", "", "getComposePointerId", "Landroidx/compose/ui/input/pointer/PointerId;", "motionEventPointerId", "getComposePointerId-_I2yYro", "(I)J", "clearOnDeviceChange", "createPointerInputEventData", "index", "pressed", "IndirectPointerEventData", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MotionEventAdapter {
    public static final int $stable = 8;
    private long nextId;
    private final SparseLongArray motionEventToComposePointerIdMap = new SparseLongArray();
    private final SparseBooleanArray activeHoverIds = new SparseBooleanArray();
    private final List<PointerInputEventData> pointers = new ArrayList();
    private final LongSparseArray<IndirectPointerEventData> previousIndirectPointerEventData = new LongSparseArray<>(0, 1, null);
    private int previousToolType = -1;
    private int previousSource = -1;

    public static /* synthetic */ void getMotionEventToComposePointerIdMap$ui$annotations() {
    }

    /* JADX INFO: renamed from: getMotionEventToComposePointerIdMap$ui, reason: from getter */
    public final SparseLongArray getMotionEventToComposePointerIdMap() {
        return this.motionEventToComposePointerIdMap;
    }

    /* JADX INFO: compiled from: MotionEventAdapter.android.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0083@\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B!\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\u000bJ\u001a\u0010\u0012\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u001bHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0005R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0005\u0088\u0001\u0002¨\u0006\u001f"}, d2 = {"Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData;", "", "packedValue", "", "constructor-impl", "(J)J", "uptime", "position", "Landroidx/compose/ui/geometry/Offset;", "down", "", "(JJZ)J", "getPackedValue", "()J", "getDown-impl", "(J)Z", "getUptime-impl", "getPosition-F1C5BW0", "equals", "other", "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "", "hashCode-impl", "(J)I", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "Companion", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @JvmInline
    private static final class IndirectPointerEventData {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final long packedValue;

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ IndirectPointerEventData m5930boximpl(long j) {
            return new IndirectPointerEventData(j);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static long m5931constructorimpl(long j) {
            return j;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m5933equalsimpl(long j, Object obj) {
            return (obj instanceof IndirectPointerEventData) && j == ((IndirectPointerEventData) obj).m5940unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m5934equalsimpl0(long j, long j2) {
            return j == j2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m5938hashCodeimpl(long j) {
            return Long.hashCode(j);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m5939toStringimpl(long j) {
            return "IndirectPointerEventData(packedValue=" + j + ')';
        }

        public boolean equals(Object obj) {
            return m5933equalsimpl(this.packedValue, obj);
        }

        public int hashCode() {
            return m5938hashCodeimpl(this.packedValue);
        }

        public String toString() {
            return m5939toStringimpl(this.packedValue);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ long m5940unboximpl() {
            return this.packedValue;
        }

        private /* synthetic */ IndirectPointerEventData(long packedValue) {
            this.packedValue = packedValue;
        }

        public final long getPackedValue() {
            return this.packedValue;
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static long m5932constructorimpl(long uptime, long j, boolean down) {
            int bits$iv$iv$iv = (int) (j >> 32);
            int bits$iv$iv$iv2 = (int) (4294967295L & j);
            return m5931constructorimpl((down ? 1L : 0L) | ((SieveCacheKt.NodeLinkMask & uptime) << 1) | (((long) INSTANCE.packShorts((short) Float.intBitsToFloat(bits$iv$iv$iv), (short) Float.intBitsToFloat(bits$iv$iv$iv2))) << 32));
        }

        /* JADX INFO: renamed from: getDown-impl, reason: not valid java name */
        public static final boolean m5935getDownimpl(long j) {
            return (1 & j) != 0;
        }

        /* JADX INFO: renamed from: getUptime-impl, reason: not valid java name */
        public static final long m5937getUptimeimpl(long j) {
            return (j >> 1) & SieveCacheKt.NodeLinkMask;
        }

        /* JADX INFO: renamed from: getPosition-F1C5BW0, reason: not valid java name */
        public static final long m5936getPositionF1C5BW0(long j) {
            int packedShorts = (int) (j >>> 32);
            float x$iv = INSTANCE.unpackShort1(packedShorts);
            float y$iv = INSTANCE.unpackShort2(packedShorts);
            long v1$iv$iv = Float.floatToRawIntBits(x$iv);
            long v2$iv$iv = Float.floatToRawIntBits(y$iv);
            return Offset.m4444constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv));
        }

        /* JADX INFO: compiled from: MotionEventAdapter.android.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\n\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0005H\u0002¨\u0006\f"}, d2 = {"Landroidx/compose/ui/input/pointer/MotionEventAdapter$IndirectPointerEventData$Companion;", "", "<init>", "()V", "packShorts", "", "val1", "", "val2", "unpackShort1", Values.VECTOR_MAP_VECTORS_KEY, "unpackShort2", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int packShorts(short val1, short val2) {
                return (val1 << 16) | (65535 & val2);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final short unpackShort1(int value) {
                return (short) (value >>> 16);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final short unpackShort2(int value) {
                return (short) (65535 & value);
            }
        }
    }

    public final PointerInputEvent convertToPointerInputEvent$ui(MotionEvent motionEvent, PositionCalculator positionCalculator) {
        int upIndex;
        int action = motionEvent.getActionMasked();
        switch (action) {
            case 3:
            case 4:
                this.motionEventToComposePointerIdMap.clear();
                this.activeHoverIds.clear();
                return null;
            default:
                clearOnDeviceChange(motionEvent);
                addFreshIds(motionEvent);
                boolean isHover = action == 9 || action == 7 || action == 10;
                boolean isScroll = action == 8;
                if (isHover) {
                    int hoverId = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.activeHoverIds.put(hoverId, true);
                }
                switch (action) {
                    case 1:
                        upIndex = 0;
                        break;
                    case 6:
                        upIndex = motionEvent.getActionIndex();
                        break;
                    default:
                        upIndex = -1;
                        break;
                }
                this.pointers.clear();
                int i = 0;
                int pointerCount = motionEvent.getPointerCount();
                while (i < pointerCount) {
                    this.pointers.add(createPointerInputEventData(positionCalculator, motionEvent, i, (isHover || i == upIndex || (isScroll && motionEvent.getButtonState() == 0)) ? false : true));
                    i++;
                }
                removeStaleIds(motionEvent);
                return new PointerInputEvent(motionEvent.getEventTime(), this.pointers, motionEvent);
        }
    }

    /* JADX INFO: renamed from: convertToIndirectPointerEvent-k92h6UU$ui$default, reason: not valid java name */
    public static /* synthetic */ AndroidIndirectPointerEvent m5927convertToIndirectPointerEventk92h6UU$ui$default(MotionEventAdapter motionEventAdapter, MotionEvent motionEvent, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, int i, Object obj) {
        if ((i & 2) != 0) {
            indirectPointerEventPrimaryDirectionalMotionAxis = null;
        }
        return motionEventAdapter.m5929convertToIndirectPointerEventk92h6UU$ui(motionEvent, indirectPointerEventPrimaryDirectionalMotionAxis);
    }

    /* JADX INFO: renamed from: convertToIndirectPointerEvent-k92h6UU$ui, reason: not valid java name */
    public final AndroidIndirectPointerEvent m5929convertToIndirectPointerEventk92h6UU$ui(MotionEvent motionEvent, IndirectPointerEventPrimaryDirectionalMotionAxis primaryDirectionalMotionAxisOverride) {
        int actionIndex;
        boolean z;
        long currentLocation;
        int i;
        int action;
        MotionEventAdapter motionEventAdapter = this;
        int action2 = motionEvent.getActionMasked();
        clearOnDeviceChange(motionEvent);
        if (action2 == 3) {
            motionEventAdapter.motionEventToComposePointerIdMap.clear();
            motionEventAdapter.activeHoverIds.clear();
            return null;
        }
        addFreshIds(motionEvent);
        switch (action2) {
            case 1:
                actionIndex = 0;
                break;
            case 6:
                actionIndex = motionEvent.getActionIndex();
                break;
            default:
                actionIndex = -1;
                break;
        }
        int upIndex = actionIndex;
        switch (action2) {
            case 0:
            case 2:
            case 5:
                z = true;
                break;
            default:
                z = false;
                break;
        }
        boolean downOrMove = z;
        int pointerCount = motionEvent.getPointerCount();
        ArrayList arrayList = new ArrayList(pointerCount);
        int i2 = 0;
        while (i2 < pointerCount) {
            int index = i2;
            int motionEventPointerId = motionEvent.getPointerId(index);
            long pointerId = motionEventAdapter.m5928getComposePointerId_I2yYro(motionEventPointerId);
            float x$iv = motionEvent.getX(index);
            float y$iv = motionEvent.getY(index);
            int i3 = pointerCount;
            long v1$iv$iv = Float.floatToRawIntBits(x$iv);
            long v2$iv$iv = Float.floatToRawIntBits(y$iv);
            long currentLocation2 = Offset.m4444constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L));
            boolean isPressed = index != upIndex;
            IndirectPointerEventData previousData = motionEventAdapter.previousIndirectPointerEventData.get(pointerId);
            if (index == upIndex) {
                motionEventAdapter.previousIndirectPointerEventData.remove(pointerId);
                currentLocation = currentLocation2;
                i = i2;
                action = action2;
            } else if (!downOrMove) {
                currentLocation = currentLocation2;
                i = i2;
                action = action2;
            } else {
                LongSparseArray<IndirectPointerEventData> longSparseArray = motionEventAdapter.previousIndirectPointerEventData;
                i = i2;
                action = action2;
                IndirectPointerEventData indirectPointerEventDataM5930boximpl = IndirectPointerEventData.m5930boximpl(IndirectPointerEventData.m5932constructorimpl(motionEvent.getEventTime(), currentLocation2, true));
                currentLocation = currentLocation2;
                longSparseArray.put(pointerId, indirectPointerEventDataM5930boximpl);
            }
            arrayList.add(new IndirectPointerInputChange(pointerId, motionEvent.getEventTime(), currentLocation, isPressed, motionEvent.getPressure(index), previousData != null ? IndirectPointerEventData.m5937getUptimeimpl(previousData.m5940unboximpl()) : motionEvent.getEventTime(), previousData != null ? IndirectPointerEventData.m5936getPositionF1C5BW0(previousData.m5940unboximpl()) : currentLocation, previousData != null ? IndirectPointerEventData.m5935getDownimpl(previousData.m5940unboximpl()) : false, null));
            i2 = i + 1;
            motionEventAdapter = this;
            pointerCount = i3;
            action2 = action;
        }
        int action3 = action2;
        ArrayList changes = arrayList;
        removeStaleIds(motionEvent);
        int primaryDirectionalMotionAxis = primaryDirectionalMotionAxisOverride != null ? primaryDirectionalMotionAxisOverride.getValue() : AndroidIndirectPointerEvent_androidKt.indirectPrimaryDirectionalScrollAxis(motionEvent);
        return new AndroidIndirectPointerEvent(changes, AndroidIndirectPointerEvent_androidKt.convertActionToIndirectPointerEventType(action3), primaryDirectionalMotionAxis, motionEvent, null);
    }

    public final void endStream(int pointerId) {
        this.activeHoverIds.delete(pointerId);
        this.motionEventToComposePointerIdMap.delete(pointerId);
    }

    private final void addFreshIds(MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 0:
            case 5:
                int actionIndex = motionEvent.getActionIndex();
                int pointerId = motionEvent.getPointerId(actionIndex);
                if (this.motionEventToComposePointerIdMap.indexOfKey(pointerId) < 0) {
                    SparseLongArray sparseLongArray = this.motionEventToComposePointerIdMap;
                    long j = this.nextId;
                    this.nextId = 1 + j;
                    sparseLongArray.put(pointerId, j);
                    if (motionEvent.getToolType(actionIndex) == 3) {
                        this.activeHoverIds.put(pointerId, true);
                    }
                }
                break;
            case 9:
                int pointerId2 = motionEvent.getPointerId(0);
                if (this.motionEventToComposePointerIdMap.indexOfKey(pointerId2) < 0) {
                    SparseLongArray sparseLongArray2 = this.motionEventToComposePointerIdMap;
                    long j2 = this.nextId;
                    this.nextId = 1 + j2;
                    sparseLongArray2.put(pointerId2, j2);
                }
                break;
        }
    }

    private final void removeStaleIds(MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 1:
            case 6:
                int actionIndex = motionEvent.getActionIndex();
                int pointerId = motionEvent.getPointerId(actionIndex);
                if (!this.activeHoverIds.get(pointerId, false)) {
                    this.motionEventToComposePointerIdMap.delete(pointerId);
                    this.activeHoverIds.delete(pointerId);
                }
                break;
        }
        if (this.motionEventToComposePointerIdMap.size() > motionEvent.getPointerCount()) {
            int i = this.motionEventToComposePointerIdMap.size();
            while (true) {
                i--;
                if (-1 < i) {
                    int pointerId2 = this.motionEventToComposePointerIdMap.keyAt(i);
                    if (!hasPointerId(motionEvent, pointerId2)) {
                        this.motionEventToComposePointerIdMap.removeAt(i);
                        this.activeHoverIds.delete(pointerId2);
                    }
                } else {
                    return;
                }
            }
        }
    }

    private final boolean hasPointerId(MotionEvent $this$hasPointerId, int pointerId) {
        int pointerCount = $this$hasPointerId.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            if ($this$hasPointerId.getPointerId(i) == pointerId) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: getComposePointerId-_I2yYro, reason: not valid java name */
    private final long m5928getComposePointerId_I2yYro(int motionEventPointerId) {
        long newId;
        int pointerIndex = this.motionEventToComposePointerIdMap.indexOfKey(motionEventPointerId);
        if (pointerIndex >= 0) {
            newId = this.motionEventToComposePointerIdMap.valueAt(pointerIndex);
        } else {
            newId = this.nextId;
            this.nextId = 1 + newId;
            this.motionEventToComposePointerIdMap.put(motionEventPointerId, newId);
        }
        return PointerId.m5990constructorimpl(newId);
    }

    private final void clearOnDeviceChange(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != 1) {
            return;
        }
        int toolType = motionEvent.getToolType(0);
        int source = motionEvent.getSource();
        if (toolType != this.previousToolType || source != this.previousSource) {
            this.previousToolType = toolType;
            this.previousSource = source;
            this.activeHoverIds.clear();
            this.motionEventToComposePointerIdMap.clear();
        }
    }

    private final PointerInputEventData createPointerInputEventData(PositionCalculator positionCalculator, MotionEvent motionEvent, int index, boolean pressed) {
        long originalPositionEventPosition;
        long rawPosition;
        long position;
        int toolType;
        long scrollDelta;
        int i = index;
        int motionEventPointerId = motionEvent.getPointerId(index);
        long pointerId = m5928getComposePointerId_I2yYro(motionEventPointerId);
        float pressure = motionEvent.getPressure(index);
        float x$iv = motionEvent.getX(index);
        float y$iv = motionEvent.getY(index);
        long v1$iv$iv = Float.floatToRawIntBits(x$iv);
        int motionEventPointerId2 = Float.floatToRawIntBits(y$iv);
        long v2$iv$iv = motionEventPointerId2;
        long position2 = Offset.m4444constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L));
        long originalPositionEventPosition2 = Offset.m4446copydBAh8RU$default(position2, 0.0f, 0.0f, 3, null);
        if (i == 0) {
            float x$iv2 = motionEvent.getRawX();
            float y$iv2 = motionEvent.getRawY();
            originalPositionEventPosition = originalPositionEventPosition2;
            long v1$iv$iv2 = Float.floatToRawIntBits(x$iv2);
            long v2$iv$iv2 = Float.floatToRawIntBits(y$iv2);
            long rawPosition2 = Offset.m4444constructorimpl((v1$iv$iv2 << 32) | (v2$iv$iv2 & 4294967295L));
            rawPosition = rawPosition2;
            position = positionCalculator.mo6091screenToLocalMKHz9U(rawPosition2);
        } else {
            originalPositionEventPosition = originalPositionEventPosition2;
            if (Build.VERSION.SDK_INT >= 29) {
                long rawPosition3 = MotionEventHelper.INSTANCE.m5941toRawOffsetdBAh8RU(motionEvent, i);
                rawPosition = rawPosition3;
                position = positionCalculator.mo6091screenToLocalMKHz9U(rawPosition3);
            } else {
                long rawPosition4 = positionCalculator.mo6090localToScreenMKHz9U(position2);
                rawPosition = rawPosition4;
                position = position2;
            }
        }
        switch (motionEvent.getToolType(index)) {
            case 0:
                toolType = PointerType.INSTANCE.m6089getUnknownT8wyACA();
                break;
            case 1:
                toolType = PointerType.INSTANCE.m6088getTouchT8wyACA();
                break;
            case 2:
                toolType = PointerType.INSTANCE.m6087getStylusT8wyACA();
                break;
            case 3:
                toolType = PointerType.INSTANCE.m6086getMouseT8wyACA();
                break;
            case 4:
                toolType = PointerType.INSTANCE.m6085getEraserT8wyACA();
                break;
            default:
                toolType = PointerType.INSTANCE.m6089getUnknownT8wyACA();
                break;
        }
        ArrayList historical = new ArrayList(motionEvent.getHistorySize());
        int historySize = motionEvent.getHistorySize();
        int i2 = 0;
        while (i2 < historySize) {
            int pos = i2;
            float x = motionEvent.getHistoricalX(i, pos);
            float y = motionEvent.getHistoricalY(i, pos);
            long pointerId2 = pointerId;
            if ((Float.floatToRawIntBits(x) & Integer.MAX_VALUE) < 2139095040) {
                if ((Float.floatToRawIntBits(y) & Integer.MAX_VALUE) < 2139095040) {
                    long v1$iv$iv3 = Float.floatToRawIntBits(x);
                    long v1$iv$iv4 = Float.floatToRawIntBits(y);
                    long v2$iv$iv3 = (v1$iv$iv3 << 32) | (v1$iv$iv4 & 4294967295L);
                    long originalEventPosition = Offset.m4444constructorimpl(v2$iv$iv3);
                    HistoricalChange historicalChange = new HistoricalChange(motionEvent.getHistoricalEventTime(pos), originalEventPosition, originalEventPosition, null);
                    historical.add(historicalChange);
                }
            }
            i2++;
            i = index;
            pointerId = pointerId2;
        }
        long pointerId3 = pointerId;
        if (motionEvent.getActionMasked() == 8) {
            float x2 = motionEvent.getAxisValue(10);
            float y$iv3 = (-motionEvent.getAxisValue(9)) + 0.0f;
            long v1$iv$iv5 = Float.floatToRawIntBits(x2);
            long v2$iv$iv4 = Float.floatToRawIntBits(y$iv3);
            scrollDelta = Offset.m4444constructorimpl((v1$iv$iv5 << 32) | (v2$iv$iv4 & 4294967295L));
        } else {
            scrollDelta = Offset.INSTANCE.m4468getZeroF1C5BW0();
        }
        boolean activeHover = this.activeHoverIds.get(motionEvent.getPointerId(index), false);
        return new PointerInputEventData(pointerId3, motionEvent.getEventTime(), rawPosition, position, pressed, pressure, toolType, activeHover, historical, scrollDelta, originalPositionEventPosition, null);
    }
}
