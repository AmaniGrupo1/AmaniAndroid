package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: compiled from: IndirectPointerInputDragCycleDetector.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/gestures/OffsetSmoother;", "", "<init>", "()V", "eventRotatingIndex", "", "eventRotatingArray", "", "Landroidx/compose/ui/geometry/Offset;", "smoothEventPosition", "offset", "smoothEventPosition-MK-Hz9U", "(J)J", "reset", "", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OffsetSmoother {
    public static final int $stable = 8;
    private List<Offset> eventRotatingArray = new ArrayList();
    private int eventRotatingIndex;

    /* JADX INFO: renamed from: smoothEventPosition-MK-Hz9U, reason: not valid java name */
    public final long m532smoothEventPositionMKHz9U(long offset) {
        int size = this.eventRotatingArray.size();
        List<Offset> list = this.eventRotatingArray;
        if (size == 3) {
            int i = this.eventRotatingIndex;
            this.eventRotatingIndex = i + 1;
            list.set(i, Offset.m4441boximpl(offset));
        } else {
            list.add(Offset.m4441boximpl(offset));
        }
        if (this.eventRotatingIndex == 3) {
            this.eventRotatingIndex = 0;
        }
        List<Offset> list2 = this.eventRotatingArray;
        int $i$f$fastMap = 0;
        ArrayList target$iv = new ArrayList(list2.size());
        int index$iv$iv = 0;
        int size2 = list2.size();
        while (index$iv$iv < size2) {
            Object item$iv$iv = list2.get(index$iv$iv);
            long it = ((Offset) item$iv$iv).m4462unboximpl();
            List<Offset> list3 = list2;
            int bits$iv$iv$iv = (int) (it >> 32);
            target$iv.add(Float.valueOf(Float.intBitsToFloat(bits$iv$iv$iv)));
            index$iv$iv++;
            list2 = list3;
            $i$f$fastMap = $i$f$fastMap;
        }
        float xPosition = (float) CollectionsKt.averageOfFloat(target$iv);
        List<Offset> list4 = this.eventRotatingArray;
        List target$iv2 = new ArrayList(list4.size());
        int size3 = list4.size();
        for (int index$iv$iv2 = 0; index$iv$iv2 < size3; index$iv$iv2++) {
            Object item$iv$iv2 = list4.get(index$iv$iv2);
            long it2 = ((Offset) item$iv$iv2).m4462unboximpl();
            int bits$iv$iv$iv2 = (int) (it2 & 4294967295L);
            target$iv2.add(Float.valueOf(Float.intBitsToFloat(bits$iv$iv$iv2)));
        }
        List $this$fastMap$iv = target$iv2;
        float yPosition = (float) CollectionsKt.averageOfFloat($this$fastMap$iv);
        long v1$iv$iv = Float.floatToRawIntBits(xPosition);
        long v2$iv$iv = Float.floatToRawIntBits(yPosition);
        return Offset.m4444constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv));
    }

    public final void reset() {
        this.eventRotatingIndex = 0;
        this.eventRotatingArray.clear();
    }
}
