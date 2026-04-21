package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: compiled from: NodeCoordinator.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a,\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u001a-\u0010\b\u001a\u0004\u0018\u00010\t*\u00020\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"compareEquals", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Landroidx/collection/MutableObjectIntMap;", "Landroidx/compose/ui/layout/AlignmentLine;", "b", "", "", "nextUntil", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DelegatableNode;", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "Landroidx/compose/ui/node/NodeKind;", "stopType", "nextUntil-hw7D004", "(Landroidx/compose/ui/node/DelegatableNode;II)Landroidx/compose/ui/Modifier$Node;", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class NodeCoordinatorKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0081, code lost:
    
        return r16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean compareEquals(MutableObjectIntMap<AlignmentLine> mutableObjectIntMap, Map<AlignmentLine, Integer> map) {
        int $i$f$forEach;
        boolean z;
        int i;
        int $i$f$forEach2;
        boolean z2 = false;
        if (mutableObjectIntMap == null || mutableObjectIntMap.get_size() != map.size()) {
            return false;
        }
        MutableObjectIntMap<AlignmentLine> this_$iv = mutableObjectIntMap;
        int $i$f$forEach3 = 0;
        Object[] k$iv = this_$iv.keys;
        int[] v$iv = this_$iv.values;
        long[] m$iv$iv = this_$iv.metadata;
        int lastIndex$iv$iv = m$iv$iv.length - 2;
        int i$iv$iv = 0;
        if (0 > lastIndex$iv$iv) {
            return true;
        }
        loop0: while (true) {
            long slot$iv$iv = m$iv$iv[i$iv$iv];
            boolean z3 = z2;
            ObjectIntMap this_$iv2 = this_$iv;
            if ((((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L)) == -9187201950435737472L) {
                $i$f$forEach = $i$f$forEach3;
                z = true;
            } else {
                int i2 = 8;
                int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                int j$iv$iv = 0;
                while (j$iv$iv < bitCount$iv$iv) {
                    long value$iv$iv$iv = 255 & slot$iv$iv;
                    if (!(value$iv$iv$iv < 128 ? true : z3)) {
                        i = i2;
                        $i$f$forEach2 = $i$f$forEach3;
                    } else {
                        int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                        Object obj = k$iv[index$iv$iv];
                        int v = v$iv[index$iv$iv];
                        i = i2;
                        AlignmentLine k = (AlignmentLine) obj;
                        $i$f$forEach2 = $i$f$forEach3;
                        Integer num = map.get(k);
                        if (num == null || num.intValue() != v) {
                            break loop0;
                        }
                    }
                    slot$iv$iv >>= i;
                    j$iv$iv++;
                    i2 = i;
                    $i$f$forEach3 = $i$f$forEach2;
                }
                $i$f$forEach = $i$f$forEach3;
                z = true;
                if (bitCount$iv$iv != i2) {
                    return true;
                }
            }
            if (i$iv$iv == lastIndex$iv$iv) {
                return z;
            }
            i$iv$iv++;
            z2 = z3;
            this_$iv = this_$iv2;
            $i$f$forEach3 = $i$f$forEach;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: nextUntil-hw7D004, reason: not valid java name */
    public static final Modifier.Node m6458nextUntilhw7D004(DelegatableNode $this$nextUntil_u2dhw7D004, int i, int i2) {
        Modifier.Node child = $this$nextUntil_u2dhw7D004.getNode().getChild();
        if (child == null || (child.getAggregateChildKindSet() & i) == 0) {
            return null;
        }
        for (Modifier.Node next = child; next != null; next = next.getChild()) {
            int kindSet = next.getKindSet();
            if ((kindSet & i2) != 0) {
                return null;
            }
            if ((kindSet & i) != 0) {
                return next;
            }
        }
        return null;
    }
}
