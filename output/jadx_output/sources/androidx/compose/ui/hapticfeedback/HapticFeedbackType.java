package androidx.compose.ui.hapticfeedback;

import com.google.firebase.firestore.model.Values;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: HapticFeedbackType.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;", "", Values.VECTOR_MAP_VECTORS_KEY, "", "constructor-impl", "(I)I", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "equals", "", "other", "hashCode", "Companion", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
@JvmInline
public final class HapticFeedbackType {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ HapticFeedbackType m5467boximpl(int i) {
        return new HapticFeedbackType(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m5468constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5469equalsimpl(int i, Object obj) {
        return (obj instanceof HapticFeedbackType) && i == ((HapticFeedbackType) obj).getValue();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5470equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5471hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object other) {
        return m5469equalsimpl(this.value, other);
    }

    public int hashCode() {
        return m5471hashCodeimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    private /* synthetic */ HapticFeedbackType(int value) {
        this.value = value;
    }

    public String toString() {
        return m5472toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5472toStringimpl(int i) {
        return m5470equalsimpl0(i, INSTANCE.m5474getConfirm5zf0vsI()) ? "Confirm" : m5470equalsimpl0(i, INSTANCE.m5475getContextClick5zf0vsI()) ? "ContextClick" : m5470equalsimpl0(i, INSTANCE.m5476getGestureEnd5zf0vsI()) ? "GestureEnd" : m5470equalsimpl0(i, INSTANCE.m5477getGestureThresholdActivate5zf0vsI()) ? "GestureThresholdActivate" : m5470equalsimpl0(i, INSTANCE.m5478getKeyboardTap5zf0vsI()) ? "KeyboardTap" : m5470equalsimpl0(i, INSTANCE.m5479getLongPress5zf0vsI()) ? "LongPress" : m5470equalsimpl0(i, INSTANCE.m5480getReject5zf0vsI()) ? "Reject" : m5470equalsimpl0(i, INSTANCE.m5481getSegmentFrequentTick5zf0vsI()) ? "SegmentFrequentTick" : m5470equalsimpl0(i, INSTANCE.m5482getSegmentTick5zf0vsI()) ? "SegmentTick" : m5470equalsimpl0(i, INSTANCE.m5483getTextHandleMove5zf0vsI()) ? "TextHandleMove" : m5470equalsimpl0(i, INSTANCE.m5484getToggleOff5zf0vsI()) ? "ToggleOff" : m5470equalsimpl0(i, INSTANCE.m5485getToggleOn5zf0vsI()) ? "ToggleOn" : m5470equalsimpl0(i, INSTANCE.m5486getVirtualKey5zf0vsI()) ? "VirtualKey" : "Invalid";
    }

    /* JADX INFO: compiled from: HapticFeedbackType.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00050!R\u0011\u0010\u0004\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\u0007R\u0011\u0010\f\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\r\u0010\u0007R\u0011\u0010\u000e\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0007R\u0011\u0010\u0010\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0007R\u0011\u0010\u0012\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0007R\u0011\u0010\u0014\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0007R\u0011\u0010\u0016\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0007R\u0011\u0010\u0018\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0007R\u0011\u0010\u001a\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0007R\u0011\u0010\u001c\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0007R\u0011\u0010\u001e\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0007¨\u0006\""}, d2 = {"Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;", "", "<init>", "()V", "Confirm", "Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;", "getConfirm-5zf0vsI", "()I", "ContextClick", "getContextClick-5zf0vsI", "GestureEnd", "getGestureEnd-5zf0vsI", "GestureThresholdActivate", "getGestureThresholdActivate-5zf0vsI", "KeyboardTap", "getKeyboardTap-5zf0vsI", "LongPress", "getLongPress-5zf0vsI", "Reject", "getReject-5zf0vsI", "SegmentFrequentTick", "getSegmentFrequentTick-5zf0vsI", "SegmentTick", "getSegmentTick-5zf0vsI", "TextHandleMove", "getTextHandleMove-5zf0vsI", "ToggleOff", "getToggleOff-5zf0vsI", "ToggleOn", "getToggleOn-5zf0vsI", "VirtualKey", "getVirtualKey-5zf0vsI", "values", "", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getConfirm-5zf0vsI, reason: not valid java name */
        public final int m5474getConfirm5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m5487getConfirm5zf0vsI();
        }

        /* JADX INFO: renamed from: getContextClick-5zf0vsI, reason: not valid java name */
        public final int m5475getContextClick5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m5488getContextClick5zf0vsI();
        }

        /* JADX INFO: renamed from: getGestureEnd-5zf0vsI, reason: not valid java name */
        public final int m5476getGestureEnd5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m5489getGestureEnd5zf0vsI();
        }

        /* JADX INFO: renamed from: getGestureThresholdActivate-5zf0vsI, reason: not valid java name */
        public final int m5477getGestureThresholdActivate5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m5490getGestureThresholdActivate5zf0vsI();
        }

        /* JADX INFO: renamed from: getKeyboardTap-5zf0vsI, reason: not valid java name */
        public final int m5478getKeyboardTap5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m5491getKeyboardTap5zf0vsI();
        }

        /* JADX INFO: renamed from: getLongPress-5zf0vsI, reason: not valid java name */
        public final int m5479getLongPress5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m5492getLongPress5zf0vsI();
        }

        /* JADX INFO: renamed from: getReject-5zf0vsI, reason: not valid java name */
        public final int m5480getReject5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m5493getReject5zf0vsI();
        }

        /* JADX INFO: renamed from: getSegmentFrequentTick-5zf0vsI, reason: not valid java name */
        public final int m5481getSegmentFrequentTick5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m5494getSegmentFrequentTick5zf0vsI();
        }

        /* JADX INFO: renamed from: getSegmentTick-5zf0vsI, reason: not valid java name */
        public final int m5482getSegmentTick5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m5495getSegmentTick5zf0vsI();
        }

        /* JADX INFO: renamed from: getTextHandleMove-5zf0vsI, reason: not valid java name */
        public final int m5483getTextHandleMove5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m5496getTextHandleMove5zf0vsI();
        }

        /* JADX INFO: renamed from: getToggleOff-5zf0vsI, reason: not valid java name */
        public final int m5484getToggleOff5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m5497getToggleOff5zf0vsI();
        }

        /* JADX INFO: renamed from: getToggleOn-5zf0vsI, reason: not valid java name */
        public final int m5485getToggleOn5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m5498getToggleOn5zf0vsI();
        }

        /* JADX INFO: renamed from: getVirtualKey-5zf0vsI, reason: not valid java name */
        public final int m5486getVirtualKey5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m5499getVirtualKey5zf0vsI();
        }

        public final List<HapticFeedbackType> values() {
            return CollectionsKt.listOf((Object[]) new HapticFeedbackType[]{HapticFeedbackType.m5467boximpl(m5474getConfirm5zf0vsI()), HapticFeedbackType.m5467boximpl(m5475getContextClick5zf0vsI()), HapticFeedbackType.m5467boximpl(m5476getGestureEnd5zf0vsI()), HapticFeedbackType.m5467boximpl(m5477getGestureThresholdActivate5zf0vsI()), HapticFeedbackType.m5467boximpl(m5478getKeyboardTap5zf0vsI()), HapticFeedbackType.m5467boximpl(m5479getLongPress5zf0vsI()), HapticFeedbackType.m5467boximpl(m5480getReject5zf0vsI()), HapticFeedbackType.m5467boximpl(m5481getSegmentFrequentTick5zf0vsI()), HapticFeedbackType.m5467boximpl(m5482getSegmentTick5zf0vsI()), HapticFeedbackType.m5467boximpl(m5483getTextHandleMove5zf0vsI()), HapticFeedbackType.m5467boximpl(m5484getToggleOff5zf0vsI()), HapticFeedbackType.m5467boximpl(m5485getToggleOn5zf0vsI()), HapticFeedbackType.m5467boximpl(m5486getVirtualKey5zf0vsI())});
        }
    }
}
