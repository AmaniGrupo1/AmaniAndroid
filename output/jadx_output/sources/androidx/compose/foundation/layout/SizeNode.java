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
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: Size.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ#\u0010 \u001a\u00020!*\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001cH\u0016¢\u0006\u0004\b&\u0010'J\u001c\u0010(\u001a\u00020)*\u00020*2\u0006\u0010#\u001a\u00020+2\u0006\u0010,\u001a\u00020)H\u0016J\u001c\u0010-\u001a\u00020)*\u00020*2\u0006\u0010#\u001a\u00020+2\u0006\u0010.\u001a\u00020)H\u0016J\u001c\u0010/\u001a\u00020)*\u00020*2\u0006\u0010#\u001a\u00020+2\u0006\u0010,\u001a\u00020)H\u0016J\u001c\u00100\u001a\u00020)*\u00020*2\u0006\u0010#\u001a\u00020+2\u0006\u0010.\u001a\u00020)H\u0016R\u001c\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0005\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001c\u0010\u0006\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0013\u0010\r\"\u0004\b\u0014\u0010\u000fR\u001c\u0010\u0007\u001a\u00020\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0015\u0010\r\"\u0004\b\u0016\u0010\u000fR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001b\u001a\u00020\u001c*\u00020\u001d8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f¨\u00061"}, d2 = {"Landroidx/compose/foundation/layout/SizeNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "minWidth", "Landroidx/compose/ui/unit/Dp;", "minHeight", "maxWidth", "maxHeight", "enforceIncoming", "", "<init>", "(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getMinWidth-D9Ej5fM", "()F", "setMinWidth-0680j_4", "(F)V", "F", "getMinHeight-D9Ej5fM", "setMinHeight-0680j_4", "getMaxWidth-D9Ej5fM", "setMaxWidth-0680j_4", "getMaxHeight-D9Ej5fM", "setMaxHeight-0680j_4", "getEnforceIncoming", "()Z", "setEnforceIncoming", "(Z)V", "targetConstraints", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/ui/unit/Density;", "getTargetConstraints-OenEA2s", "(Landroidx/compose/ui/unit/Density;)J", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicWidth", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "height", "minIntrinsicHeight", "width", "maxIntrinsicWidth", "maxIntrinsicHeight", "foundation-layout"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class SizeNode extends Modifier.Node implements LayoutModifierNode {
    private boolean enforceIncoming;
    private float maxHeight;
    private float maxWidth;
    private float minHeight;
    private float minWidth;

    public /* synthetic */ SizeNode(float f, float f2, float f3, float f4, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, f2, f3, f4, z);
    }

    private SizeNode(float minWidth, float minHeight, float maxWidth, float maxHeight, boolean enforceIncoming) {
        this.minWidth = minWidth;
        this.minHeight = minHeight;
        this.maxWidth = maxWidth;
        this.maxHeight = maxHeight;
        this.enforceIncoming = enforceIncoming;
    }

    public /* synthetic */ SizeNode(float f, float f2, float f3, float f4, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM() : f, (i & 2) != 0 ? Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM() : f2, (i & 4) != 0 ? Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM() : f3, (i & 8) != 0 ? Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM() : f4, z, null);
    }

    /* JADX INFO: renamed from: getMinWidth-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMinWidth() {
        return this.minWidth;
    }

    /* JADX INFO: renamed from: setMinWidth-0680j_4, reason: not valid java name */
    public final void m880setMinWidth0680j_4(float f) {
        this.minWidth = f;
    }

    /* JADX INFO: renamed from: getMinHeight-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMinHeight() {
        return this.minHeight;
    }

    /* JADX INFO: renamed from: setMinHeight-0680j_4, reason: not valid java name */
    public final void m879setMinHeight0680j_4(float f) {
        this.minHeight = f;
    }

    /* JADX INFO: renamed from: getMaxWidth-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMaxWidth() {
        return this.maxWidth;
    }

    /* JADX INFO: renamed from: setMaxWidth-0680j_4, reason: not valid java name */
    public final void m878setMaxWidth0680j_4(float f) {
        this.maxWidth = f;
    }

    /* JADX INFO: renamed from: getMaxHeight-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMaxHeight() {
        return this.maxHeight;
    }

    /* JADX INFO: renamed from: setMaxHeight-0680j_4, reason: not valid java name */
    public final void m877setMaxHeight0680j_4(float f) {
        this.maxHeight = f;
    }

    public final boolean getEnforceIncoming() {
        return this.enforceIncoming;
    }

    public final void setEnforceIncoming(boolean z) {
        this.enforceIncoming = z;
    }

    /* JADX INFO: renamed from: getTargetConstraints-OenEA2s, reason: not valid java name */
    private final long m872getTargetConstraintsOenEA2s(Density $this$targetConstraints) {
        int $this$fastCoerceAtLeast$iv;
        int $this$fastCoerceAtLeast$iv2;
        int $this$fastCoerceAtLeast$iv$iv;
        if (!Float.isNaN(this.maxWidth)) {
            $this$fastCoerceAtLeast$iv = $this$targetConstraints.mo399roundToPx0680j_4(this.maxWidth);
            if ($this$fastCoerceAtLeast$iv < 0) {
                $this$fastCoerceAtLeast$iv = 0;
            }
        } else {
            $this$fastCoerceAtLeast$iv = Integer.MAX_VALUE;
        }
        if (!Float.isNaN(this.maxHeight)) {
            $this$fastCoerceAtLeast$iv2 = $this$targetConstraints.mo399roundToPx0680j_4(this.maxHeight);
            if ($this$fastCoerceAtLeast$iv2 < 0) {
                $this$fastCoerceAtLeast$iv2 = 0;
            }
        } else {
            $this$fastCoerceAtLeast$iv2 = Integer.MAX_VALUE;
        }
        int minHeight = 0;
        if (!Float.isNaN(this.minWidth)) {
            int maximumValue$iv = $this$fastCoerceAtLeast$iv;
            $this$fastCoerceAtLeast$iv$iv = $this$targetConstraints.mo399roundToPx0680j_4(this.minWidth);
            if ($this$fastCoerceAtLeast$iv$iv < 0) {
                $this$fastCoerceAtLeast$iv$iv = 0;
            }
            if ($this$fastCoerceAtLeast$iv$iv > maximumValue$iv) {
                $this$fastCoerceAtLeast$iv$iv = maximumValue$iv;
            }
            if ($this$fastCoerceAtLeast$iv$iv == Integer.MAX_VALUE) {
                $this$fastCoerceAtLeast$iv$iv = 0;
            }
        } else {
            $this$fastCoerceAtLeast$iv$iv = 0;
        }
        if (!Float.isNaN(this.minHeight)) {
            int $this$fastCoerceIn$iv = $this$targetConstraints.mo399roundToPx0680j_4(this.minHeight);
            int maximumValue$iv2 = $this$fastCoerceAtLeast$iv2;
            int minimumValue$iv$iv = 0;
            if ($this$fastCoerceIn$iv >= 0) {
                minimumValue$iv$iv = $this$fastCoerceIn$iv;
            }
            int maximumValue$iv$iv = maximumValue$iv2;
            if (minimumValue$iv$iv <= maximumValue$iv$iv) {
                maximumValue$iv$iv = minimumValue$iv$iv;
            }
            if (maximumValue$iv$iv != Integer.MAX_VALUE) {
                minHeight = maximumValue$iv$iv;
            }
        }
        return ConstraintsKt.Constraints($this$fastCoerceAtLeast$iv$iv, $this$fastCoerceAtLeast$iv, minHeight, $this$fastCoerceAtLeast$iv2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo69measure3p2s80s(MeasureScope $this$measure_u2d3p2s80s, Measurable measurable, long j) {
        int $this$fastCoerceAtMost$iv;
        int $this$fastCoerceAtLeast$iv;
        int $this$fastCoerceAtMost$iv2;
        int $this$fastCoerceAtLeast$iv2;
        long wrappedConstraints;
        long targetConstraints = m872getTargetConstraintsOenEA2s($this$measure_u2d3p2s80s);
        if (this.enforceIncoming) {
            wrappedConstraints = ConstraintsKt.m7473constrainN9IONVI(j, targetConstraints);
        } else {
            if (!Float.isNaN(this.minWidth)) {
                $this$fastCoerceAtMost$iv = Constraints.m7460getMinWidthimpl(targetConstraints);
            } else {
                $this$fastCoerceAtMost$iv = Constraints.m7460getMinWidthimpl(j);
                int maximumValue$iv = Constraints.m7458getMaxWidthimpl(targetConstraints);
                if ($this$fastCoerceAtMost$iv > maximumValue$iv) {
                    $this$fastCoerceAtMost$iv = maximumValue$iv;
                }
            }
            if (!Float.isNaN(this.maxWidth)) {
                $this$fastCoerceAtLeast$iv = Constraints.m7458getMaxWidthimpl(targetConstraints);
            } else {
                $this$fastCoerceAtLeast$iv = Constraints.m7458getMaxWidthimpl(j);
                int minimumValue$iv = Constraints.m7460getMinWidthimpl(targetConstraints);
                if ($this$fastCoerceAtLeast$iv < minimumValue$iv) {
                    $this$fastCoerceAtLeast$iv = minimumValue$iv;
                }
            }
            if (!Float.isNaN(this.minHeight)) {
                $this$fastCoerceAtMost$iv2 = Constraints.m7459getMinHeightimpl(targetConstraints);
            } else {
                $this$fastCoerceAtMost$iv2 = Constraints.m7459getMinHeightimpl(j);
                int maximumValue$iv2 = Constraints.m7457getMaxHeightimpl(targetConstraints);
                if ($this$fastCoerceAtMost$iv2 > maximumValue$iv2) {
                    $this$fastCoerceAtMost$iv2 = maximumValue$iv2;
                }
            }
            if (!Float.isNaN(this.maxHeight)) {
                $this$fastCoerceAtLeast$iv2 = Constraints.m7457getMaxHeightimpl(targetConstraints);
            } else {
                $this$fastCoerceAtLeast$iv2 = Constraints.m7457getMaxHeightimpl(j);
                int minimumValue$iv2 = Constraints.m7459getMinHeightimpl(targetConstraints);
                if ($this$fastCoerceAtLeast$iv2 < minimumValue$iv2) {
                    $this$fastCoerceAtLeast$iv2 = minimumValue$iv2;
                }
            }
            wrappedConstraints = ConstraintsKt.Constraints($this$fastCoerceAtMost$iv, $this$fastCoerceAtLeast$iv, $this$fastCoerceAtMost$iv2, $this$fastCoerceAtLeast$iv2);
        }
        final Placeable placeable = measurable.mo6141measureBRTryo0(wrappedConstraints);
        return MeasureScope.layout$default($this$measure_u2d3p2s80s, placeable.getWidth(), placeable.getHeight(), null, new Function1() { // from class: androidx.compose.foundation.layout.SizeNode$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SizeNode.measure_3p2s80s$lambda$1(placeable, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    static final Unit measure_3p2s80s$lambda$1(Placeable $placeable, Placeable.PlacementScope $this$layout) {
        Placeable.PlacementScope.placeRelative$default($this$layout, $placeable, 0, 0, 0.0f, 4, null);
        return Unit.INSTANCE;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope $this$minIntrinsicWidth, IntrinsicMeasurable measurable, int height) {
        long constraints = m872getTargetConstraintsOenEA2s($this$minIntrinsicWidth);
        if (Constraints.m7456getHasFixedWidthimpl(constraints)) {
            int childHeight = Constraints.m7458getMaxWidthimpl(constraints);
            return childHeight;
        }
        int childHeight2 = this.enforceIncoming ? height : ConstraintsKt.m7474constrainHeightK40F9xA(constraints, height);
        return ConstraintsKt.m7475constrainWidthK40F9xA(constraints, measurable.minIntrinsicWidth(childHeight2));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope $this$minIntrinsicHeight, IntrinsicMeasurable measurable, int width) {
        long constraints = m872getTargetConstraintsOenEA2s($this$minIntrinsicHeight);
        if (Constraints.m7455getHasFixedHeightimpl(constraints)) {
            int childWidth = Constraints.m7457getMaxHeightimpl(constraints);
            return childWidth;
        }
        int childWidth2 = this.enforceIncoming ? width : ConstraintsKt.m7475constrainWidthK40F9xA(constraints, width);
        return ConstraintsKt.m7474constrainHeightK40F9xA(constraints, measurable.minIntrinsicHeight(childWidth2));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope $this$maxIntrinsicWidth, IntrinsicMeasurable measurable, int height) {
        long constraints = m872getTargetConstraintsOenEA2s($this$maxIntrinsicWidth);
        if (Constraints.m7456getHasFixedWidthimpl(constraints)) {
            int childHeight = Constraints.m7458getMaxWidthimpl(constraints);
            return childHeight;
        }
        int childHeight2 = this.enforceIncoming ? height : ConstraintsKt.m7474constrainHeightK40F9xA(constraints, height);
        return ConstraintsKt.m7475constrainWidthK40F9xA(constraints, measurable.maxIntrinsicWidth(childHeight2));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope $this$maxIntrinsicHeight, IntrinsicMeasurable measurable, int width) {
        long constraints = m872getTargetConstraintsOenEA2s($this$maxIntrinsicHeight);
        if (Constraints.m7455getHasFixedHeightimpl(constraints)) {
            int childWidth = Constraints.m7457getMaxHeightimpl(constraints);
            return childWidth;
        }
        int childWidth2 = this.enforceIncoming ? width : ConstraintsKt.m7475constrainWidthK40F9xA(constraints, width);
        return ConstraintsKt.m7474constrainHeightK40F9xA(constraints, measurable.maxIntrinsicHeight(childWidth2));
    }
}
