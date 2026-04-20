package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: compiled from: IndirectPointerInputDragCycleDetector.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;", "", "<init>", "()V", "eventRotatingIndex", "", "eventRotatingArray", "", "Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;", "smoothEventPosition", "Landroidx/compose/ui/geometry/Offset;", "change", "smoothEventPosition-tuRUvjQ", "(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)J", "Companion", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class IndirectPointerInputEventSmoother {
    private static final int SmoothingFactor = 3;
    private List<IndirectPointerInputChange> eventRotatingArray = new ArrayList();
    private int eventRotatingIndex;
    public static final int $stable = 8;

    /* JADX INFO: renamed from: smoothEventPosition-tuRUvjQ, reason: not valid java name */
    public final long m520smoothEventPositiontuRUvjQ(IndirectPointerInputChange change) {
        char c;
        long j;
        char c2 = ' ';
        int bits$iv$iv$iv = (int) (change.getPosition() >> 32);
        float xPosition = Float.intBitsToFloat(bits$iv$iv$iv);
        long j2 = 4294967295L;
        int bits$iv$iv$iv2 = (int) (change.getPosition() & 4294967295L);
        float yPosition = Float.intBitsToFloat(bits$iv$iv$iv2);
        if (IndirectPointerInputDragCycleDetectorKt.changedToDownIgnoreConsumed(change)) {
            this.eventRotatingIndex = 0;
            this.eventRotatingArray.clear();
        }
        if (IndirectPointerInputDragCycleDetectorKt.changedToUpIgnoreConsumed(change) || IndirectPointerInputDragCycleDetectorKt.changedToDownIgnoreConsumed(change)) {
            c = ' ';
            j = 4294967295L;
        } else {
            int size = this.eventRotatingArray.size();
            List<IndirectPointerInputChange> list = this.eventRotatingArray;
            if (size == 3) {
                int i = this.eventRotatingIndex;
                this.eventRotatingIndex = i + 1;
                list.set(i, change);
            } else {
                list.add(change);
            }
            if (this.eventRotatingIndex == 3) {
                this.eventRotatingIndex = 0;
            }
            List<IndirectPointerInputChange> list2 = this.eventRotatingArray;
            List target$iv = new ArrayList(list2.size());
            int index$iv$iv = 0;
            int size2 = list2.size();
            while (index$iv$iv < size2) {
                Object item$iv$iv = list2.get(index$iv$iv);
                char c3 = c2;
                IndirectPointerInputChange it = (IndirectPointerInputChange) item$iv$iv;
                long j3 = j2;
                int bits$iv$iv$iv3 = (int) (it.getPosition() >> c3);
                target$iv.add(Float.valueOf(Float.intBitsToFloat(bits$iv$iv$iv3)));
                index$iv$iv++;
                c2 = c3;
                j2 = j3;
            }
            c = c2;
            j = j2;
            List $this$fastMap$iv = target$iv;
            xPosition = (float) CollectionsKt.averageOfFloat($this$fastMap$iv);
            List<IndirectPointerInputChange> list3 = this.eventRotatingArray;
            ArrayList target$iv2 = new ArrayList(list3.size());
            int size3 = list3.size();
            for (int index$iv$iv2 = 0; index$iv$iv2 < size3; index$iv$iv2++) {
                Object item$iv$iv2 = list3.get(index$iv$iv2);
                IndirectPointerInputChange it2 = (IndirectPointerInputChange) item$iv$iv2;
                int bits$iv$iv$iv4 = (int) (it2.getPosition() & j);
                target$iv2.add(Float.valueOf(Float.intBitsToFloat(bits$iv$iv$iv4)));
            }
            yPosition = (float) CollectionsKt.averageOfFloat(target$iv2);
        }
        float y$iv = yPosition;
        float x$iv = xPosition;
        long v1$iv$iv = Float.floatToRawIntBits(x$iv);
        long v2$iv$iv = Float.floatToRawIntBits(y$iv);
        return Offset.m4444constructorimpl((v1$iv$iv << c) | (v2$iv$iv & j));
    }
}
