package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PointerEvent.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0010\u0002\n\u0002\b\u0018\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001Bc\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\t\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0014B]\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\t\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0015BS\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0018Bw\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a\u0012\u0006\u0010\u0012\u001a\u00020\u0007\u0012\u0006\u0010\u001c\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u001dJ\u0006\u0010A\u001a\u00020BJi\u0010I\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010J\u001a\u00020\u00052\b\b\u0002\u0010K\u001a\u00020\u00072\b\b\u0002\u0010L\u001a\u00020\t2\b\b\u0002\u0010M\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\t2\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0010\u001a\u00020\u0011H\u0007¢\u0006\u0004\bN\u0010OJg\u0010I\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010J\u001a\u00020\u00052\b\b\u0002\u0010K\u001a\u00020\u00072\b\b\u0002\u0010L\u001a\u00020\t2\b\b\u0002\u0010M\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\t2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0007¢\u0006\u0004\bP\u0010QJq\u0010I\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010J\u001a\u00020\u00052\b\b\u0002\u0010K\u001a\u00020\u00072\b\b\u0002\u0010L\u001a\u00020\t2\b\b\u0002\u0010M\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0007H\u0007¢\u0006\u0004\bR\u0010SJq\u0010I\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010J\u001a\u00020\u00052\b\b\u0002\u0010K\u001a\u00020\u00072\b\b\u0002\u0010L\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010M\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\t2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0007¢\u0006\u0004\bT\u0010UJw\u0010I\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010J\u001a\u00020\u00052\b\b\u0002\u0010K\u001a\u00020\u00072\b\b\u0002\u0010L\u001a\u00020\t2\b\b\u0002\u0010M\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\t2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\b\b\u0002\u0010\u0012\u001a\u00020\u0007H\u0007¢\u0006\u0004\bV\u0010WJ\u0081\u0001\u0010I\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010J\u001a\u00020\u00052\b\b\u0002\u0010K\u001a\u00020\u00072\b\b\u0002\u0010L\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010M\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\t2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\b\b\u0002\u0010\u0012\u001a\u00020\u0007¢\u0006\u0004\bX\u0010YJ\b\u0010Z\u001a\u00020[H\u0016R\u0013\u0010\u0002\u001a\u00020\u0003¢\u0006\n\n\u0002\u0010 \u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001fR\u0013\u0010\u0006\u001a\u00020\u0007¢\u0006\n\n\u0002\u0010 \u001a\u0004\b\"\u0010\u001fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001fR\u0013\u0010\r\u001a\u00020\u0007¢\u0006\n\n\u0002\u0010 \u001a\u0004\b(\u0010\u001fR\u0011\u0010\u000e\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b)\u0010$R\u0013\u0010\u0010\u001a\u00020\u0011¢\u0006\n\n\u0002\u0010,\u001a\u0004\b*\u0010+R\u0013\u0010\u0012\u001a\u00020\u0007¢\u0006\n\n\u0002\u0010 \u001a\u0004\b-\u0010\u001fR\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8F¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0016\u00100\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001c\u001a\u00020\u0007X\u0080\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\b1\u0010\u001f\"\u0004\b2\u00103R\u0011\u00104\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b4\u0010$R\u001a\u00105\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010$\"\u0004\b7\u00108R\u001a\u00109\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010$\"\u0004\b;\u00108R\u001c\u0010<\u001a\u0004\u0018\u00010\u0000X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0016\u0010C\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\b\n\u0000\u0012\u0004\bD\u0010ER\u001a\u0010\u0016\u001a\u00020\u00178FX\u0087\u0004¢\u0006\f\u0012\u0004\bF\u0010E\u001a\u0004\bG\u0010H¨\u0006\\"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerInputChange;", "", TtmlNode.ATTR_ID, "Landroidx/compose/ui/input/pointer/PointerId;", "uptimeMillis", "", "position", "Landroidx/compose/ui/geometry/Offset;", "pressed", "", "pressure", "", "previousUptimeMillis", "previousPosition", "previousPressed", "isInitiallyConsumed", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "Landroidx/compose/ui/input/pointer/PointerType;", "scrollDelta", "<init>", "(JJJZFJJZZIJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(JJJZJJZZIJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "consumed", "Landroidx/compose/ui/input/pointer/ConsumedData;", "(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "historical", "", "Landroidx/compose/ui/input/pointer/HistoricalChange;", "originalEventPosition", "(JJJZFJJZZILjava/util/List;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getId-J3iCeTQ", "()J", "J", "getUptimeMillis", "getPosition-F1C5BW0", "getPressed", "()Z", "getPressure", "()F", "getPreviousUptimeMillis", "getPreviousPosition-F1C5BW0", "getPreviousPressed", "getType-T8wyACA", "()I", "I", "getScrollDelta-F1C5BW0", "getHistorical", "()Ljava/util/List;", "_historical", "getOriginalEventPosition-F1C5BW0$ui", "setOriginalEventPosition-k-4lQ0M$ui", "(J)V", "isConsumed", "downChange", "getDownChange$ui", "setDownChange$ui", "(Z)V", "positionChange", "getPositionChange$ui", "setPositionChange$ui", "consumedDelegate", "getConsumedDelegate$ui", "()Landroidx/compose/ui/input/pointer/PointerInputChange;", "setConsumedDelegate$ui", "(Landroidx/compose/ui/input/pointer/PointerInputChange;)V", "consume", "", "_consumed", "get_consumed$annotations", "()V", "getConsumed$annotations", "getConsumed", "()Landroidx/compose/ui/input/pointer/ConsumedData;", "copy", "currentTime", "currentPosition", "currentPressed", "previousTime", "copy-Ezr-O64", "(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;I)Landroidx/compose/ui/input/pointer/PointerInputChange;", "copy-JKmWfYY", "(JJJZJJZIJ)Landroidx/compose/ui/input/pointer/PointerInputChange;", "copy-0GkPj7c", "(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;IJ)Landroidx/compose/ui/input/pointer/PointerInputChange;", "copy-Tn9QgHE", "(JJJZFJJZIJ)Landroidx/compose/ui/input/pointer/PointerInputChange;", "copy-OHpmEuE", "(JJJZJJZILjava/util/List;J)Landroidx/compose/ui/input/pointer/PointerInputChange;", "copy-wbzehF4", "(JJJZFJJZILjava/util/List;J)Landroidx/compose/ui/input/pointer/PointerInputChange;", "toString", "", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PointerInputChange {
    public static final int $stable = 0;
    private ConsumedData _consumed;
    private List<HistoricalChange> _historical;
    private PointerInputChange consumedDelegate;
    private boolean downChange;
    private final long id;
    private long originalEventPosition;
    private final long position;
    private boolean positionChange;
    private final boolean pressed;
    private final float pressure;
    private final long previousPosition;
    private final boolean previousPressed;
    private final long previousUptimeMillis;
    private final long scrollDelta;
    private final int type;
    private final long uptimeMillis;

    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, boolean z3, int i, long j6, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, z, f, j4, j5, z2, z3, i, j6);
    }

    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, boolean z3, int i, List list, long j6, long j7, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, z, f, j4, j5, z2, z3, i, (List<HistoricalChange>) list, j6, j7);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use another constructor with `scrollDelta` and without `ConsumedData` instead", replaceWith = @ReplaceWith(expression = "this(id, uptimeMillis, position, pressed, previousUptimeMillis, previousPosition, previousPressed, consumed.downChange || consumed.positionChange, type, Offset.Zero)", imports = {}))
    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, ConsumedData consumedData, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, z, j4, j5, z2, consumedData, i);
    }

    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, boolean z3, int i, long j6, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, z, j4, j5, z2, z3, i, j6);
    }

    @Deprecated(message = "use isConsumed and consume() pair of methods instead")
    public static /* synthetic */ void getConsumed$annotations() {
    }

    private static /* synthetic */ void get_consumed$annotations() {
    }

    private PointerInputChange(long id, long uptimeMillis, long position, boolean pressed, float pressure, long previousUptimeMillis, long previousPosition, boolean previousPressed, boolean isInitiallyConsumed, int type, long scrollDelta) {
        this.id = id;
        this.uptimeMillis = uptimeMillis;
        this.position = position;
        this.pressed = pressed;
        this.pressure = pressure;
        this.previousUptimeMillis = previousUptimeMillis;
        this.previousPosition = previousPosition;
        this.previousPressed = previousPressed;
        this.type = type;
        this.scrollDelta = scrollDelta;
        this.originalEventPosition = Offset.INSTANCE.m4468getZeroF1C5BW0();
        this.downChange = isInitiallyConsumed;
        this.positionChange = isInitiallyConsumed;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, boolean z3, int i, long j6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        int iM6088getTouchT8wyACA;
        long jM4468getZeroF1C5BW0;
        if ((i2 & 512) == 0) {
            iM6088getTouchT8wyACA = i;
        } else {
            iM6088getTouchT8wyACA = PointerType.INSTANCE.m6088getTouchT8wyACA();
        }
        if ((i2 & 1024) == 0) {
            jM4468getZeroF1C5BW0 = j6;
        } else {
            jM4468getZeroF1C5BW0 = Offset.INSTANCE.m4468getZeroF1C5BW0();
        }
        this(j, j2, j3, z, f, j4, j5, z2, z3, iM6088getTouchT8wyACA, jM4468getZeroF1C5BW0, (DefaultConstructorMarker) null);
    }

    /* JADX INFO: renamed from: getId-J3iCeTQ, reason: not valid java name and from getter */
    public final long getId() {
        return this.id;
    }

    public final long getUptimeMillis() {
        return this.uptimeMillis;
    }

    /* JADX INFO: renamed from: getPosition-F1C5BW0, reason: not valid java name and from getter */
    public final long getPosition() {
        return this.position;
    }

    public final boolean getPressed() {
        return this.pressed;
    }

    public final float getPressure() {
        return this.pressure;
    }

    public final long getPreviousUptimeMillis() {
        return this.previousUptimeMillis;
    }

    /* JADX INFO: renamed from: getPreviousPosition-F1C5BW0, reason: not valid java name and from getter */
    public final long getPreviousPosition() {
        return this.previousPosition;
    }

    public final boolean getPreviousPressed() {
        return this.previousPressed;
    }

    /* JADX INFO: renamed from: getType-T8wyACA, reason: not valid java name and from getter */
    public final int getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: getScrollDelta-F1C5BW0, reason: not valid java name and from getter */
    public final long getScrollDelta() {
        return this.scrollDelta;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, boolean z3, int i, long j6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        int iM6088getTouchT8wyACA;
        long jM4468getZeroF1C5BW0;
        if ((i2 & 256) == 0) {
            iM6088getTouchT8wyACA = i;
        } else {
            iM6088getTouchT8wyACA = PointerType.INSTANCE.m6088getTouchT8wyACA();
        }
        if ((i2 & 512) == 0) {
            jM4468getZeroF1C5BW0 = j6;
        } else {
            jM4468getZeroF1C5BW0 = Offset.INSTANCE.m4468getZeroF1C5BW0();
        }
        this(j, j2, j3, z, j4, j5, z2, z3, iM6088getTouchT8wyACA, jM4468getZeroF1C5BW0, (DefaultConstructorMarker) null);
    }

    private PointerInputChange(long id, long uptimeMillis, long position, boolean pressed, long previousUptimeMillis, long previousPosition, boolean previousPressed, boolean isInitiallyConsumed, int type, long scrollDelta) {
        this(id, uptimeMillis, position, pressed, 1.0f, previousUptimeMillis, previousPosition, previousPressed, isInitiallyConsumed, type, scrollDelta, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ PointerInputChange(long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, ConsumedData consumedData, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        int iM6088getTouchT8wyACA;
        if ((i2 & 256) == 0) {
            iM6088getTouchT8wyACA = i;
        } else {
            iM6088getTouchT8wyACA = PointerType.INSTANCE.m6088getTouchT8wyACA();
        }
        this(j, j2, j3, z, j4, j5, z2, consumedData, iM6088getTouchT8wyACA, (DefaultConstructorMarker) null);
    }

    private PointerInputChange(long id, long uptimeMillis, long position, boolean pressed, long previousUptimeMillis, long previousPosition, boolean previousPressed, ConsumedData consumed, int type) {
        this(id, uptimeMillis, position, pressed, 1.0f, previousUptimeMillis, previousPosition, previousPressed, consumed.getDownChange() || consumed.getPositionChange(), type, Offset.INSTANCE.m4468getZeroF1C5BW0(), (DefaultConstructorMarker) null);
    }

    private PointerInputChange(long id, long uptimeMillis, long position, boolean pressed, float pressure, long previousUptimeMillis, long previousPosition, boolean previousPressed, boolean isInitiallyConsumed, int type, List<HistoricalChange> list, long scrollDelta, long originalEventPosition) {
        this(id, uptimeMillis, position, pressed, pressure, previousUptimeMillis, previousPosition, previousPressed, isInitiallyConsumed, type, scrollDelta, (DefaultConstructorMarker) null);
        this._historical = list;
        this.originalEventPosition = originalEventPosition;
    }

    public final List<HistoricalChange> getHistorical() {
        List<HistoricalChange> list = this._historical;
        return list == null ? CollectionsKt.emptyList() : list;
    }

    /* JADX INFO: renamed from: getOriginalEventPosition-F1C5BW0$ui, reason: not valid java name and from getter */
    public final long getOriginalEventPosition() {
        return this.originalEventPosition;
    }

    /* JADX INFO: renamed from: setOriginalEventPosition-k-4lQ0M$ui, reason: not valid java name */
    public final void m6014setOriginalEventPositionk4lQ0M$ui(long j) {
        this.originalEventPosition = j;
    }

    public final boolean isConsumed() {
        PointerInputChange pointerInputChange = this.consumedDelegate;
        return pointerInputChange != null ? pointerInputChange.isConsumed() : this.downChange || this.positionChange;
    }

    /* JADX INFO: renamed from: getDownChange$ui, reason: from getter */
    public final boolean getDownChange() {
        return this.downChange;
    }

    public final void setDownChange$ui(boolean z) {
        this.downChange = z;
    }

    /* JADX INFO: renamed from: getPositionChange$ui, reason: from getter */
    public final boolean getPositionChange() {
        return this.positionChange;
    }

    public final void setPositionChange$ui(boolean z) {
        this.positionChange = z;
    }

    /* JADX INFO: renamed from: getConsumedDelegate$ui, reason: from getter */
    public final PointerInputChange getConsumedDelegate() {
        return this.consumedDelegate;
    }

    public final void setConsumedDelegate$ui(PointerInputChange pointerInputChange) {
        this.consumedDelegate = pointerInputChange;
    }

    public final void consume() {
        if (this.consumedDelegate == null) {
            this.downChange = true;
            this.positionChange = true;
        } else {
            PointerInputChange pointerInputChange = this.consumedDelegate;
            if (pointerInputChange != null) {
                pointerInputChange.consume();
            }
        }
    }

    public final ConsumedData getConsumed() {
        if (this._consumed == null) {
            this._consumed = new ConsumedData(this);
        }
        ConsumedData consumedData = this._consumed;
        Intrinsics.checkNotNull(consumedData);
        return consumedData;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use another copy() method with scrollDelta parameter instead", replaceWith = @ReplaceWith(expression = "copy(id,currentTime, currentPosition, currentPressed, previousTime,previousPosition, previousPressed, consumed, type, this.scrollDelta)", imports = {}))
    /* JADX INFO: renamed from: copy-Ezr-O64, reason: not valid java name */
    public final /* synthetic */ PointerInputChange m6003copyEzrO64(long id, long currentTime, long currentPosition, boolean currentPressed, long previousTime, long previousPosition, boolean previousPressed, ConsumedData consumed, int type) {
        PointerInputChange it = new PointerInputChange(id, currentTime, currentPosition, currentPressed, this.pressure, previousTime, previousPosition, previousPressed, consumed.getDownChange() || consumed.getPositionChange(), type, getHistorical(), this.scrollDelta, this.originalEventPosition, null);
        it.positionChange = this.positionChange;
        it.downChange = this.downChange;
        return it;
    }

    /* JADX INFO: renamed from: copy-JKmWfYY$default, reason: not valid java name */
    public static /* synthetic */ PointerInputChange m5998copyJKmWfYY$default(PointerInputChange pointerInputChange, long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, int i, long j6, int i2, Object obj) {
        long j7;
        long j8;
        long j9 = (i2 & 1) != 0 ? pointerInputChange.id : j;
        long j10 = (i2 & 2) != 0 ? pointerInputChange.uptimeMillis : j2;
        long j11 = (i2 & 4) != 0 ? pointerInputChange.position : j3;
        boolean z3 = (i2 & 8) != 0 ? pointerInputChange.pressed : z;
        long j12 = (i2 & 16) != 0 ? pointerInputChange.previousUptimeMillis : j4;
        long j13 = (i2 & 32) != 0 ? pointerInputChange.previousPosition : j5;
        boolean z4 = (i2 & 64) != 0 ? pointerInputChange.previousPressed : z2;
        int i3 = (i2 & 128) != 0 ? pointerInputChange.type : i;
        if ((i2 & 256) != 0) {
            j7 = j9;
            j8 = pointerInputChange.scrollDelta;
        } else {
            j7 = j9;
            j8 = j6;
        }
        return pointerInputChange.m6004copyJKmWfYY(j7, j10, j11, z3, j12, j13, z4, i3, j8);
    }

    /* JADX INFO: renamed from: copy-JKmWfYY, reason: not valid java name */
    public final PointerInputChange m6004copyJKmWfYY(long id, long currentTime, long currentPosition, boolean currentPressed, long previousTime, long previousPosition, boolean previousPressed, int type, long scrollDelta) {
        PointerInputChange it = m6007copywbzehF4(id, currentTime, currentPosition, currentPressed, this.pressure, previousTime, previousPosition, previousPressed, type, getHistorical(), scrollDelta);
        PointerInputChange pointerInputChange = this.consumedDelegate;
        if (pointerInputChange == null) {
            pointerInputChange = this;
        }
        it.consumedDelegate = pointerInputChange;
        return it;
    }

    /* JADX INFO: renamed from: copy-0GkPj7c$default, reason: not valid java name */
    public static /* synthetic */ PointerInputChange m5996copy0GkPj7c$default(PointerInputChange pointerInputChange, long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, ConsumedData consumedData, int i, long j6, int i2, Object obj) {
        long j7;
        long j8;
        long j9 = (i2 & 1) != 0 ? pointerInputChange.id : j;
        long j10 = (i2 & 2) != 0 ? pointerInputChange.uptimeMillis : j2;
        long j11 = (i2 & 4) != 0 ? pointerInputChange.position : j3;
        boolean z3 = (i2 & 8) != 0 ? pointerInputChange.pressed : z;
        long j12 = (i2 & 16) != 0 ? pointerInputChange.previousUptimeMillis : j4;
        long j13 = (i2 & 32) != 0 ? pointerInputChange.previousPosition : j5;
        boolean z4 = (i2 & 64) != 0 ? pointerInputChange.previousPressed : z2;
        int i3 = (i2 & 256) != 0 ? pointerInputChange.type : i;
        if ((i2 & 512) != 0) {
            j7 = j9;
            j8 = pointerInputChange.scrollDelta;
        } else {
            j7 = j9;
            j8 = j6;
        }
        return pointerInputChange.m6002copy0GkPj7c(j7, j10, j11, z3, j12, j13, z4, consumedData, i3, j8);
    }

    @Deprecated(message = "Partial consumption has been deprecated. Use copy() instead without `consumed` parameter to create a shallow copy or a constructor to create a new PointerInputChange", replaceWith = @ReplaceWith(expression = "copy(id, currentTime, currentPosition, currentPressed, previousTime, previousPosition, previousPressed, type, scrollDelta)", imports = {}))
    /* JADX INFO: renamed from: copy-0GkPj7c, reason: not valid java name */
    public final PointerInputChange m6002copy0GkPj7c(long id, long currentTime, long currentPosition, boolean currentPressed, long previousTime, long previousPosition, boolean previousPressed, ConsumedData consumed, int type, long scrollDelta) {
        PointerInputChange it = new PointerInputChange(id, currentTime, currentPosition, currentPressed, this.pressure, previousTime, previousPosition, previousPressed, consumed.getDownChange() || consumed.getPositionChange(), type, getHistorical(), scrollDelta, this.originalEventPosition, null);
        it.positionChange = this.positionChange;
        it.downChange = this.downChange;
        return it;
    }

    /* JADX INFO: renamed from: copy-Tn9QgHE$default, reason: not valid java name */
    public static /* synthetic */ PointerInputChange m6000copyTn9QgHE$default(PointerInputChange pointerInputChange, long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, int i, long j6, int i2, Object obj) {
        long j7;
        long j8;
        long j9 = (i2 & 1) != 0 ? pointerInputChange.id : j;
        long j10 = (i2 & 2) != 0 ? pointerInputChange.uptimeMillis : j2;
        long j11 = (i2 & 4) != 0 ? pointerInputChange.position : j3;
        boolean z3 = (i2 & 8) != 0 ? pointerInputChange.pressed : z;
        float f2 = (i2 & 16) != 0 ? pointerInputChange.pressure : f;
        long j12 = (i2 & 32) != 0 ? pointerInputChange.previousUptimeMillis : j4;
        long j13 = (i2 & 64) != 0 ? pointerInputChange.previousPosition : j5;
        boolean z4 = (i2 & 128) != 0 ? pointerInputChange.previousPressed : z2;
        int i3 = (i2 & 256) != 0 ? pointerInputChange.type : i;
        if ((i2 & 512) != 0) {
            j7 = j9;
            j8 = pointerInputChange.scrollDelta;
        } else {
            j7 = j9;
            j8 = j6;
        }
        return pointerInputChange.m6006copyTn9QgHE(j7, j10, j11, z3, f2, j12, j13, z4, i3, j8);
    }

    /* JADX INFO: renamed from: copy-Tn9QgHE, reason: not valid java name */
    public final PointerInputChange m6006copyTn9QgHE(long id, long currentTime, long currentPosition, boolean currentPressed, float pressure, long previousTime, long previousPosition, boolean previousPressed, int type, long scrollDelta) {
        PointerInputChange it = new PointerInputChange(id, currentTime, currentPosition, currentPressed, pressure, previousTime, previousPosition, previousPressed, false, type, getHistorical(), scrollDelta, this.originalEventPosition, null);
        PointerInputChange pointerInputChange = this.consumedDelegate;
        if (pointerInputChange == null) {
            pointerInputChange = this;
        }
        it.consumedDelegate = pointerInputChange;
        return it;
    }

    /* JADX INFO: renamed from: copy-OHpmEuE$default, reason: not valid java name */
    public static /* synthetic */ PointerInputChange m5999copyOHpmEuE$default(PointerInputChange pointerInputChange, long j, long j2, long j3, boolean z, long j4, long j5, boolean z2, int i, List list, long j6, int i2, Object obj) {
        long j7;
        long j8;
        long j9 = (i2 & 1) != 0 ? pointerInputChange.id : j;
        long j10 = (i2 & 2) != 0 ? pointerInputChange.uptimeMillis : j2;
        long j11 = (i2 & 4) != 0 ? pointerInputChange.position : j3;
        boolean z3 = (i2 & 8) != 0 ? pointerInputChange.pressed : z;
        long j12 = (i2 & 16) != 0 ? pointerInputChange.previousUptimeMillis : j4;
        long j13 = (i2 & 32) != 0 ? pointerInputChange.previousPosition : j5;
        boolean z4 = (i2 & 64) != 0 ? pointerInputChange.previousPressed : z2;
        int i3 = (i2 & 128) != 0 ? pointerInputChange.type : i;
        if ((i2 & 512) != 0) {
            j7 = j9;
            j8 = pointerInputChange.scrollDelta;
        } else {
            j7 = j9;
            j8 = j6;
        }
        return pointerInputChange.m6005copyOHpmEuE(j7, j10, j11, z3, j12, j13, z4, i3, list, j8);
    }

    /* JADX INFO: renamed from: copy-OHpmEuE, reason: not valid java name */
    public final PointerInputChange m6005copyOHpmEuE(long id, long currentTime, long currentPosition, boolean currentPressed, long previousTime, long previousPosition, boolean previousPressed, int type, List<HistoricalChange> historical, long scrollDelta) {
        PointerInputChange it = m6007copywbzehF4(id, currentTime, currentPosition, currentPressed, this.pressure, previousTime, previousPosition, previousPressed, type, historical, scrollDelta);
        PointerInputChange pointerInputChange = this.consumedDelegate;
        if (pointerInputChange == null) {
            pointerInputChange = this;
        }
        it.consumedDelegate = pointerInputChange;
        return it;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-wbzehF4$default, reason: not valid java name */
    public static /* synthetic */ PointerInputChange m6001copywbzehF4$default(PointerInputChange pointerInputChange, long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, int i, List list, long j6, int i2, Object obj) {
        List list2;
        long j7;
        long j8 = (i2 & 1) != 0 ? pointerInputChange.id : j;
        long j9 = (i2 & 2) != 0 ? pointerInputChange.uptimeMillis : j2;
        long j10 = (i2 & 4) != 0 ? pointerInputChange.position : j3;
        boolean z3 = (i2 & 8) != 0 ? pointerInputChange.pressed : z;
        float f2 = (i2 & 16) != 0 ? pointerInputChange.pressure : f;
        long j11 = (i2 & 32) != 0 ? pointerInputChange.previousUptimeMillis : j4;
        long j12 = (i2 & 64) != 0 ? pointerInputChange.previousPosition : j5;
        boolean z4 = (i2 & 128) != 0 ? pointerInputChange.previousPressed : z2;
        int i3 = (i2 & 256) != 0 ? pointerInputChange.type : i;
        long j13 = j8;
        List historical = (i2 & 512) != 0 ? pointerInputChange.getHistorical() : list;
        if ((i2 & 1024) != 0) {
            list2 = historical;
            j7 = pointerInputChange.scrollDelta;
        } else {
            list2 = historical;
            j7 = j6;
        }
        return pointerInputChange.m6007copywbzehF4(j13, j9, j10, z3, f2, j11, j12, z4, i3, list2, j7);
    }

    /* JADX INFO: renamed from: copy-wbzehF4, reason: not valid java name */
    public final PointerInputChange m6007copywbzehF4(long id, long currentTime, long currentPosition, boolean currentPressed, float pressure, long previousTime, long previousPosition, boolean previousPressed, int type, List<HistoricalChange> historical, long scrollDelta) {
        PointerInputChange it = new PointerInputChange(id, currentTime, currentPosition, currentPressed, pressure, previousTime, previousPosition, previousPressed, false, type, historical, scrollDelta, this.originalEventPosition, null);
        PointerInputChange pointerInputChange = this.consumedDelegate;
        if (pointerInputChange == null) {
            pointerInputChange = this;
        }
        it.consumedDelegate = pointerInputChange;
        return it;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("PointerInputChange(id=").append((Object) PointerId.m5994toStringimpl(this.id)).append(", uptimeMillis=").append(this.uptimeMillis).append(", position=").append((Object) Offset.m4460toStringimpl(this.position)).append(", pressed=").append(this.pressed).append(", pressure=").append(this.pressure).append(", previousUptimeMillis=").append(this.previousUptimeMillis).append(", previousPosition=").append((Object) Offset.m4460toStringimpl(this.previousPosition)).append(", previousPressed=").append(this.previousPressed).append(", isConsumed=").append(isConsumed()).append(", type=").append((Object) PointerType.m6083toStringimpl(this.type)).append(", historical=").append(getHistorical()).append(",scrollDelta=");
        sb.append((Object) Offset.m4460toStringimpl(this.scrollDelta)).append(')');
        return sb.toString();
    }
}
