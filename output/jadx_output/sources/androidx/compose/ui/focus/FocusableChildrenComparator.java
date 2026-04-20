package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OneDimensionalFocusSearch.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÂ\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\fH\u0002¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/focus/FocusableChildrenComparator;", "Ljava/util/Comparator;", "Landroidx/compose/ui/focus/FocusTargetNode;", "Lkotlin/Comparator;", "<init>", "()V", "compare", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "pathFromRoot", "Landroidx/compose/runtime/collection/MutableVector;", "Landroidx/compose/ui/node/LayoutNode;", "layoutNode", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class FocusableChildrenComparator implements Comparator<FocusTargetNode> {
    public static final FocusableChildrenComparator INSTANCE = new FocusableChildrenComparator();

    private FocusableChildrenComparator() {
    }

    /* JADX WARN: Incorrect condition in loop: B:13:0x0054 */
    @Override // java.util.Comparator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int compare(FocusTargetNode a, FocusTargetNode b) {
        if (!FocusTraversalKt.isEligibleForFocusSearch(a) || !FocusTraversalKt.isEligibleForFocusSearch(b)) {
            if (FocusTraversalKt.isEligibleForFocusSearch(a)) {
                return -1;
            }
            return FocusTraversalKt.isEligibleForFocusSearch(b) ? 1 : 0;
        }
        LayoutNode layoutNode1 = DelegatableNodeKt.requireLayoutNode(a);
        LayoutNode layoutNode2 = DelegatableNodeKt.requireLayoutNode(b);
        if (Intrinsics.areEqual(layoutNode1, layoutNode2)) {
            return 0;
        }
        MutableVector<LayoutNode> mutableVectorPathFromRoot = pathFromRoot(layoutNode1);
        MutableVector<LayoutNode> mutableVectorPathFromRoot2 = pathFromRoot(layoutNode2);
        int depth = 0;
        int iMin = Math.min(mutableVectorPathFromRoot.getSize() - 1, mutableVectorPathFromRoot2.getSize() - 1);
        if (0 <= iMin) {
            while (Intrinsics.areEqual(mutableVectorPathFromRoot.content[index$iv], mutableVectorPathFromRoot2.content[index$iv])) {
                if (depth != iMin) {
                    depth++;
                }
            }
            int index$iv = depth;
            int index$iv2 = depth;
            return Intrinsics.compare(mutableVectorPathFromRoot.content[index$iv].getPlaceOrder$ui(), mutableVectorPathFromRoot2.content[index$iv2].getPlaceOrder$ui());
        }
        throw new IllegalStateException("Could not find a common ancestor between the two FocusModifiers.".toString());
    }

    private final MutableVector<LayoutNode> pathFromRoot(LayoutNode layoutNode) {
        MutableVector<LayoutNode> mutableVector = new MutableVector<>(new LayoutNode[16], 0);
        for (LayoutNode current = layoutNode; current != null; current = current.getParent$ui()) {
            mutableVector.add(0, current);
        }
        return mutableVector;
    }
}
