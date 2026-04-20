package androidx.compose.animation;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SharedTransitionStateMachine.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a7\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\f\u0010\r\u001a\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002\u001a\u0019\u0010\u0016\u001a\u00020\t*\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u000fH\u0000¢\u0006\u0002\u0010\u0018\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u0018\u0010\u0013\u001a\u00020\u000f*\u00020\u00058@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"SharedTransitionDebug", "", "updateTargetData", "", "targetData", "Landroidx/compose/animation/TargetData;", "lookaheadSize", "Landroidx/compose/ui/geometry/Size;", "topLeft", "Landroidx/compose/ui/geometry/Offset;", "structuralOffset", "targetBoundsProviderChanged", "updateTargetData-BGTQxF0", "(Landroidx/compose/animation/TargetData;JJJZ)V", "obtainBoundsFromLastTarget", "Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/animation/SharedElement;", "lastTargetBoundsProvider", "Landroidx/compose/animation/BoundsProvider;", "targetBounds", "getTargetBounds", "(Landroidx/compose/animation/TargetData;)Landroidx/compose/ui/geometry/Rect;", "calculateOffsetFromDirectManipulation", "animatedBounds", "(Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)J", "animation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SharedTransitionStateMachineKt {
    public static final boolean SharedTransitionDebug = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updateTargetData-BGTQxF0, reason: not valid java name */
    public static final void m131updateTargetDataBGTQxF0(TargetData targetData, long j, long j2, long j3, boolean targetBoundsProviderChanged) {
        if (!Offset.m4449equalsimpl0(targetData.m147getTargetStructuralOffsetF1C5BW0(), j3) || !Size.m4517equalsimpl0(targetData.m146getSizeNHjbRc(), j) || targetBoundsProviderChanged) {
            targetData.m150setSizeuvyYCjk(j);
            targetData.m151setTargetStructuralOffsetk4lQ0M(j3);
            if (targetBoundsProviderChanged) {
                targetData.m149setInitialMfrOffsetk4lQ0M(Offset.m4456minusMKHz9U(Offset.m4456minusMKHz9U(j2, j3), Offset.m4456minusMKHz9U(targetData.m144getCurrentMfrOffsetF1C5BW0(), targetData.m145getInitialMfrOffsetF1C5BW0())));
            }
        }
        targetData.m148setCurrentMfrOffsetk4lQ0M(Offset.m4456minusMKHz9U(j2, j3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect obtainBoundsFromLastTarget(SharedElement $this$obtainBoundsFromLastTarget, BoundsProvider lastTargetBoundsProvider) {
        boolean z;
        if (lastTargetBoundsProvider != null) {
            List<SharedElementEntry> allEntries = $this$obtainBoundsFromLastTarget.getAllEntries();
            int index$iv$iv = 0;
            int size = allEntries.size();
            while (true) {
                if (index$iv$iv < size) {
                    Object item$iv$iv = allEntries.get(index$iv$iv);
                    SharedElementEntry state = (SharedElementEntry) item$iv$iv;
                    if (Intrinsics.areEqual(state.getBoundsProvider(), lastTargetBoundsProvider)) {
                        z = true;
                        break;
                    }
                    index$iv$iv++;
                } else {
                    z = false;
                    break;
                }
            }
            if (z) {
                return lastTargetBoundsProvider.getLastBoundsInSharedTransitionScope();
            }
        }
        return null;
    }

    public static final Rect getTargetBounds(TargetData $this$targetBounds) {
        return RectKt.m4492Recttz77jQw(Offset.m4457plusMKHz9U($this$targetBounds.m145getInitialMfrOffsetF1C5BW0(), $this$targetBounds.m147getTargetStructuralOffsetF1C5BW0()), $this$targetBounds.m146getSizeNHjbRc());
    }

    public static final long calculateOffsetFromDirectManipulation(TargetData $this$calculateOffsetFromDirectManipulation, Rect animatedBounds) {
        return Offset.m4457plusMKHz9U(Offset.m4456minusMKHz9U(animatedBounds.m4487getTopLeftF1C5BW0(), $this$calculateOffsetFromDirectManipulation.m145getInitialMfrOffsetF1C5BW0()), $this$calculateOffsetFromDirectManipulation.m144getCurrentMfrOffsetF1C5BW0());
    }
}
