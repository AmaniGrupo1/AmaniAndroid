package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: AspectRatio.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\u0011\u001a\u00020\u0012*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001c\u0010\u001a\u001a\u00020\u001b*\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001bH\u0016J\u001c\u0010\u001f\u001a\u00020\u001b*\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001bH\u0016J\u001c\u0010 \u001a\u00020\u001b*\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u001bH\u0016J\u001c\u0010\"\u001a\u00020\u001b*\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u001bH\u0016J\u0013\u0010#\u001a\u00020$*\u00020\u0017H\u0002¢\u0006\u0004\b%\u0010&J\u001b\u0010'\u001a\u00020$*\u00020\u00172\u0006\u0010(\u001a\u00020\u0006H\u0002¢\u0006\u0004\b)\u0010*J\u001b\u0010+\u001a\u00020$*\u00020\u00172\u0006\u0010(\u001a\u00020\u0006H\u0002¢\u0006\u0004\b,\u0010*J\u001b\u0010-\u001a\u00020$*\u00020\u00172\u0006\u0010(\u001a\u00020\u0006H\u0002¢\u0006\u0004\b.\u0010*J\u001b\u0010/\u001a\u00020$*\u00020\u00172\u0006\u0010(\u001a\u00020\u0006H\u0002¢\u0006\u0004\b0\u0010*R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u00061"}, d2 = {"Landroidx/compose/foundation/layout/AspectRatioNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "aspectRatio", "", "matchHeightConstraintsFirst", "", "<init>", "(FZ)V", "getAspectRatio", "()F", "setAspectRatio", "(F)V", "getMatchHeightConstraintsFirst", "()Z", "setMatchHeightConstraintsFirst", "(Z)V", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicWidth", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "height", "maxIntrinsicWidth", "minIntrinsicHeight", "width", "maxIntrinsicHeight", "findSize", "Landroidx/compose/ui/unit/IntSize;", "findSize-ToXhtMw", "(J)J", "tryMaxWidth", "enforceConstraints", "tryMaxWidth-JN-0ABg", "(JZ)J", "tryMaxHeight", "tryMaxHeight-JN-0ABg", "tryMinWidth", "tryMinWidth-JN-0ABg", "tryMinHeight", "tryMinHeight-JN-0ABg", "foundation-layout"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class AspectRatioNode extends Modifier.Node implements LayoutModifierNode {
    private float aspectRatio;
    private boolean matchHeightConstraintsFirst;

    public AspectRatioNode(float aspectRatio, boolean matchHeightConstraintsFirst) {
        this.aspectRatio = aspectRatio;
        this.matchHeightConstraintsFirst = matchHeightConstraintsFirst;
    }

    public final float getAspectRatio() {
        return this.aspectRatio;
    }

    public final boolean getMatchHeightConstraintsFirst() {
        return this.matchHeightConstraintsFirst;
    }

    public final void setAspectRatio(float f) {
        this.aspectRatio = f;
    }

    public final void setMatchHeightConstraintsFirst(boolean z) {
        this.matchHeightConstraintsFirst = z;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo69measure3p2s80s(MeasureScope $this$measure_u2d3p2s80s, Measurable measurable, long j) {
        long wrappedConstraints;
        long size = m706findSizeToXhtMw(j);
        if (!IntSize.m7674equalsimpl0(size, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
            wrappedConstraints = Constraints.INSTANCE.m7468fixedJhjzzOo((int) (size >> 32), (int) (4294967295L & size));
        } else {
            wrappedConstraints = j;
        }
        final Placeable placeable = measurable.mo6141measureBRTryo0(wrappedConstraints);
        return MeasureScope.layout$default($this$measure_u2d3p2s80s, placeable.getWidth(), placeable.getHeight(), null, new Function1() { // from class: androidx.compose.foundation.layout.AspectRatioNode$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AspectRatioNode.measure_3p2s80s$lambda$0(placeable, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    static final Unit measure_3p2s80s$lambda$0(Placeable $placeable, Placeable.PlacementScope $this$layout) {
        Placeable.PlacementScope.placeRelative$default($this$layout, $placeable, 0, 0, 0.0f, 4, null);
        return Unit.INSTANCE;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope $this$minIntrinsicWidth, IntrinsicMeasurable measurable, int height) {
        if (height != Integer.MAX_VALUE) {
            float $this$fastRoundToInt$iv = height * this.aspectRatio;
            return Math.round($this$fastRoundToInt$iv);
        }
        return measurable.minIntrinsicWidth(height);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope $this$maxIntrinsicWidth, IntrinsicMeasurable measurable, int height) {
        if (height != Integer.MAX_VALUE) {
            float $this$fastRoundToInt$iv = height * this.aspectRatio;
            return Math.round($this$fastRoundToInt$iv);
        }
        return measurable.maxIntrinsicWidth(height);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope $this$minIntrinsicHeight, IntrinsicMeasurable measurable, int width) {
        if (width != Integer.MAX_VALUE) {
            float $this$fastRoundToInt$iv = width / this.aspectRatio;
            return Math.round($this$fastRoundToInt$iv);
        }
        return measurable.minIntrinsicHeight(width);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope $this$maxIntrinsicHeight, IntrinsicMeasurable measurable, int width) {
        if (width != Integer.MAX_VALUE) {
            float $this$fastRoundToInt$iv = width / this.aspectRatio;
            return Math.round($this$fastRoundToInt$iv);
        }
        return measurable.maxIntrinsicHeight(width);
    }

    /* JADX INFO: renamed from: findSize-ToXhtMw, reason: not valid java name */
    private final long m706findSizeToXhtMw(long j) {
        if (this.matchHeightConstraintsFirst) {
            long it = m707tryMaxHeightJN0ABg(j, true);
            if (!IntSize.m7674equalsimpl0(it, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it;
            }
            long it2 = m708tryMaxWidthJN0ABg(j, true);
            if (!IntSize.m7674equalsimpl0(it2, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it2;
            }
            long it3 = m709tryMinHeightJN0ABg(j, true);
            if (!IntSize.m7674equalsimpl0(it3, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it3;
            }
            long it4 = m710tryMinWidthJN0ABg(j, true);
            if (!IntSize.m7674equalsimpl0(it4, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it4;
            }
            long it5 = m707tryMaxHeightJN0ABg(j, false);
            if (!IntSize.m7674equalsimpl0(it5, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it5;
            }
            long it6 = m708tryMaxWidthJN0ABg(j, false);
            if (!IntSize.m7674equalsimpl0(it6, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it6;
            }
            long it7 = m709tryMinHeightJN0ABg(j, false);
            if (!IntSize.m7674equalsimpl0(it7, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it7;
            }
            long it8 = m710tryMinWidthJN0ABg(j, false);
            if (!IntSize.m7674equalsimpl0(it8, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it8;
            }
        } else {
            long it9 = m708tryMaxWidthJN0ABg(j, true);
            if (!IntSize.m7674equalsimpl0(it9, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it9;
            }
            long it10 = m707tryMaxHeightJN0ABg(j, true);
            if (!IntSize.m7674equalsimpl0(it10, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it10;
            }
            long it11 = m710tryMinWidthJN0ABg(j, true);
            if (!IntSize.m7674equalsimpl0(it11, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it11;
            }
            long it12 = m709tryMinHeightJN0ABg(j, true);
            if (!IntSize.m7674equalsimpl0(it12, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it12;
            }
            long it13 = m708tryMaxWidthJN0ABg(j, false);
            if (!IntSize.m7674equalsimpl0(it13, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it13;
            }
            long it14 = m707tryMaxHeightJN0ABg(j, false);
            if (!IntSize.m7674equalsimpl0(it14, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it14;
            }
            long it15 = m710tryMinWidthJN0ABg(j, false);
            if (!IntSize.m7674equalsimpl0(it15, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it15;
            }
            long it16 = m709tryMinHeightJN0ABg(j, false);
            if (!IntSize.m7674equalsimpl0(it16, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                return it16;
            }
        }
        return IntSize.INSTANCE.m7681getZeroYbymL2g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001f, code lost:
    
        if (androidx.compose.foundation.layout.AspectRatioKt.m705isSatisfiedByNN6EwU(r18, r0, r1) != false) goto L11;
     */
    /* JADX INFO: renamed from: tryMaxWidth-JN-0ABg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final long m708tryMaxWidthJN0ABg(long j, boolean enforceConstraints) {
        int maxWidth = Constraints.m7458getMaxWidthimpl(j);
        if (maxWidth != Integer.MAX_VALUE) {
            float $this$fastRoundToInt$iv = maxWidth / this.aspectRatio;
            int height = Math.round($this$fastRoundToInt$iv);
            if (height > 0) {
                if (enforceConstraints) {
                }
                return IntSize.m7671constructorimpl((((long) maxWidth) << 32) | (((long) height) & 4294967295L));
            }
        }
        return IntSize.INSTANCE.m7681getZeroYbymL2g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001f, code lost:
    
        if (androidx.compose.foundation.layout.AspectRatioKt.m705isSatisfiedByNN6EwU(r18, r1, r0) != false) goto L11;
     */
    /* JADX INFO: renamed from: tryMaxHeight-JN-0ABg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final long m707tryMaxHeightJN0ABg(long j, boolean enforceConstraints) {
        int maxHeight = Constraints.m7457getMaxHeightimpl(j);
        if (maxHeight != Integer.MAX_VALUE) {
            float $this$fastRoundToInt$iv = maxHeight * this.aspectRatio;
            int width = Math.round($this$fastRoundToInt$iv);
            if (width > 0) {
                if (enforceConstraints) {
                }
                return IntSize.m7671constructorimpl((((long) width) << 32) | (((long) maxHeight) & 4294967295L));
            }
        }
        return IntSize.INSTANCE.m7681getZeroYbymL2g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001a, code lost:
    
        if (androidx.compose.foundation.layout.AspectRatioKt.m705isSatisfiedByNN6EwU(r18, r0, r1) != false) goto L9;
     */
    /* JADX INFO: renamed from: tryMinWidth-JN-0ABg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final long m710tryMinWidthJN0ABg(long j, boolean enforceConstraints) {
        int minWidth = Constraints.m7460getMinWidthimpl(j);
        float $this$fastRoundToInt$iv = minWidth / this.aspectRatio;
        int height = Math.round($this$fastRoundToInt$iv);
        if (height > 0) {
            if (enforceConstraints) {
            }
            return IntSize.m7671constructorimpl((((long) minWidth) << 32) | (((long) height) & 4294967295L));
        }
        return IntSize.INSTANCE.m7681getZeroYbymL2g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001a, code lost:
    
        if (androidx.compose.foundation.layout.AspectRatioKt.m705isSatisfiedByNN6EwU(r18, r1, r0) != false) goto L9;
     */
    /* JADX INFO: renamed from: tryMinHeight-JN-0ABg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final long m709tryMinHeightJN0ABg(long j, boolean enforceConstraints) {
        int minHeight = Constraints.m7459getMinHeightimpl(j);
        float $this$fastRoundToInt$iv = minHeight * this.aspectRatio;
        int width = Math.round($this$fastRoundToInt$iv);
        if (width > 0) {
            if (enforceConstraints) {
            }
            return IntSize.m7671constructorimpl((((long) width) << 32) | (((long) minHeight) & 4294967295L));
        }
        return IntSize.INSTANCE.m7681getZeroYbymL2g();
    }
}
