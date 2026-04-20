package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.ScaleFactorKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: renamed from: androidx.compose.ui.draw.PainterNode, reason: from toString */
/* JADX INFO: compiled from: PainterModifier.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003BA\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0010\u0010\u0011J#\u0010.\u001a\u00020/*\u0002002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0016¢\u0006\u0004\b5\u00106J\u001c\u00107\u001a\u000208*\u0002092\u0006\u00101\u001a\u00020:2\u0006\u0010;\u001a\u000208H\u0016J\u001c\u0010<\u001a\u000208*\u0002092\u0006\u00101\u001a\u00020:2\u0006\u0010;\u001a\u000208H\u0016J\u001c\u0010=\u001a\u000208*\u0002092\u0006\u00101\u001a\u00020:2\u0006\u0010>\u001a\u000208H\u0016J\u001c\u0010?\u001a\u000208*\u0002092\u0006\u00101\u001a\u00020:2\u0006\u0010>\u001a\u000208H\u0016J\u0017\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020AH\u0002¢\u0006\u0004\bC\u0010DJ\u0017\u0010E\u001a\u0002042\u0006\u00103\u001a\u000204H\u0002¢\u0006\u0004\bF\u0010DJ\f\u0010G\u001a\u00020H*\u00020IH\u0016J\u0013\u0010J\u001a\u00020\u0007*\u00020AH\u0002¢\u0006\u0004\bK\u0010LJ\u0013\u0010M\u001a\u00020\u0007*\u00020AH\u0002¢\u0006\u0004\bN\u0010LJ\b\u0010O\u001a\u00020PH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u0014\u0010*\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b+\u0010\u0017R\u0014\u0010,\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010\u0017¨\u0006Q"}, d2 = {"Landroidx/compose/ui/draw/PainterNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DrawModifierNode;", "painter", "Landroidx/compose/ui/graphics/painter/Painter;", "sizeToIntrinsics", "", "alignment", "Landroidx/compose/ui/Alignment;", "contentScale", "Landroidx/compose/ui/layout/ContentScale;", "alpha", "", "colorFilter", "Landroidx/compose/ui/graphics/ColorFilter;", "<init>", "(Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V", "getPainter", "()Landroidx/compose/ui/graphics/painter/Painter;", "setPainter", "(Landroidx/compose/ui/graphics/painter/Painter;)V", "getSizeToIntrinsics", "()Z", "setSizeToIntrinsics", "(Z)V", "getAlignment", "()Landroidx/compose/ui/Alignment;", "setAlignment", "(Landroidx/compose/ui/Alignment;)V", "getContentScale", "()Landroidx/compose/ui/layout/ContentScale;", "setContentScale", "(Landroidx/compose/ui/layout/ContentScale;)V", "getAlpha", "()F", "setAlpha", "(F)V", "getColorFilter", "()Landroidx/compose/ui/graphics/ColorFilter;", "setColorFilter", "(Landroidx/compose/ui/graphics/ColorFilter;)V", "useIntrinsicSize", "getUseIntrinsicSize", "shouldAutoInvalidate", "getShouldAutoInvalidate", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicWidth", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "height", "maxIntrinsicWidth", "minIntrinsicHeight", "width", "maxIntrinsicHeight", "calculateScaledSize", "Landroidx/compose/ui/geometry/Size;", "dstSize", "calculateScaledSize-E7KxVPU", "(J)J", "modifyConstraints", "modifyConstraints-ZezNO4M", "draw", "", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "hasSpecifiedAndFiniteWidth", "hasSpecifiedAndFiniteWidth-uvyYCjk", "(J)Z", "hasSpecifiedAndFiniteHeight", "hasSpecifiedAndFiniteHeight-uvyYCjk", "toString", "", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class PainterModifier extends Modifier.Node implements LayoutModifierNode, DrawModifierNode {
    private Alignment alignment;
    private float alpha;
    private ColorFilter colorFilter;
    private ContentScale contentScale;
    private Painter painter;
    private boolean sizeToIntrinsics;

    public PainterModifier(Painter painter, boolean sizeToIntrinsics, Alignment alignment, ContentScale contentScale, float alpha, ColorFilter colorFilter) {
        this.painter = painter;
        this.sizeToIntrinsics = sizeToIntrinsics;
        this.alignment = alignment;
        this.contentScale = contentScale;
        this.alpha = alpha;
        this.colorFilter = colorFilter;
    }

    public /* synthetic */ PainterModifier(Painter painter, boolean z, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(painter, z, (i & 4) != 0 ? Alignment.INSTANCE.getCenter() : alignment, (i & 8) != 0 ? ContentScale.INSTANCE.getInside() : contentScale, (i & 16) != 0 ? 1.0f : f, (i & 32) != 0 ? null : colorFilter);
    }

    public final Painter getPainter() {
        return this.painter;
    }

    public final void setPainter(Painter painter) {
        this.painter = painter;
    }

    public final boolean getSizeToIntrinsics() {
        return this.sizeToIntrinsics;
    }

    public final void setSizeToIntrinsics(boolean z) {
        this.sizeToIntrinsics = z;
    }

    public final Alignment getAlignment() {
        return this.alignment;
    }

    public final void setAlignment(Alignment alignment) {
        this.alignment = alignment;
    }

    public final ContentScale getContentScale() {
        return this.contentScale;
    }

    public final void setContentScale(ContentScale contentScale) {
        this.contentScale = contentScale;
    }

    public final float getAlpha() {
        return this.alpha;
    }

    public final void setAlpha(float f) {
        this.alpha = f;
    }

    public final ColorFilter getColorFilter() {
        return this.colorFilter;
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
    }

    private final boolean getUseIntrinsicSize() {
        if (this.sizeToIntrinsics) {
            return ((this.painter.getIntrinsicSize() > InlineClassHelperKt.UnspecifiedPackedFloats ? 1 : (this.painter.getIntrinsicSize() == InlineClassHelperKt.UnspecifiedPackedFloats ? 0 : -1)) != 0 ? 1 : 0) != 0;
        }
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo69measure3p2s80s(MeasureScope $this$measure_u2d3p2s80s, Measurable measurable, long j) {
        final Placeable placeable = measurable.mo6141measureBRTryo0(m4285modifyConstraintsZezNO4M(j));
        return MeasureScope.layout$default($this$measure_u2d3p2s80s, placeable.getWidth(), placeable.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.draw.PainterNode$measure$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable.PlacementScope $this$layout) {
                Placeable.PlacementScope.placeRelative$default($this$layout, placeable, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope $this$minIntrinsicWidth, IntrinsicMeasurable measurable, int height) {
        if (getUseIntrinsicSize()) {
            long constraints = m4285modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, height, 7, null));
            int layoutWidth = measurable.minIntrinsicWidth(height);
            return Math.max(Constraints.m7460getMinWidthimpl(constraints), layoutWidth);
        }
        return measurable.minIntrinsicWidth(height);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope $this$maxIntrinsicWidth, IntrinsicMeasurable measurable, int height) {
        if (getUseIntrinsicSize()) {
            long constraints = m4285modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, height, 7, null));
            int layoutWidth = measurable.maxIntrinsicWidth(height);
            return Math.max(Constraints.m7460getMinWidthimpl(constraints), layoutWidth);
        }
        return measurable.maxIntrinsicWidth(height);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope $this$minIntrinsicHeight, IntrinsicMeasurable measurable, int width) {
        if (getUseIntrinsicSize()) {
            long constraints = m4285modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, width, 0, 0, 13, null));
            int layoutHeight = measurable.minIntrinsicHeight(width);
            return Math.max(Constraints.m7459getMinHeightimpl(constraints), layoutHeight);
        }
        return measurable.minIntrinsicHeight(width);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope $this$maxIntrinsicHeight, IntrinsicMeasurable measurable, int width) {
        if (getUseIntrinsicSize()) {
            long constraints = m4285modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, width, 0, 0, 13, null));
            int layoutHeight = measurable.maxIntrinsicHeight(width);
            return Math.max(Constraints.m7459getMinHeightimpl(constraints), layoutHeight);
        }
        return measurable.maxIntrinsicHeight(width);
    }

    /* JADX INFO: renamed from: calculateScaledSize-E7KxVPU, reason: not valid java name */
    private final long m4282calculateScaledSizeE7KxVPU(long dstSize) {
        float srcWidth;
        float srcHeight;
        if (!getUseIntrinsicSize()) {
            return dstSize;
        }
        if (m4284hasSpecifiedAndFiniteWidthuvyYCjk(this.painter.getIntrinsicSize())) {
            int bits$iv$iv$iv = (int) (this.painter.getIntrinsicSize() >> 32);
            srcWidth = Float.intBitsToFloat(bits$iv$iv$iv);
        } else {
            int bits$iv$iv$iv2 = (int) (dstSize >> 32);
            srcWidth = Float.intBitsToFloat(bits$iv$iv$iv2);
        }
        if (m4283hasSpecifiedAndFiniteHeightuvyYCjk(this.painter.getIntrinsicSize())) {
            int bits$iv$iv$iv3 = (int) (this.painter.getIntrinsicSize() & 4294967295L);
            srcHeight = Float.intBitsToFloat(bits$iv$iv$iv3);
        } else {
            int bits$iv$iv$iv4 = (int) (dstSize & 4294967295L);
            srcHeight = Float.intBitsToFloat(bits$iv$iv$iv4);
        }
        float height$iv = srcHeight;
        float width$iv = srcWidth;
        long v1$iv$iv = Float.floatToRawIntBits(width$iv);
        long v2$iv$iv = Float.floatToRawIntBits(height$iv);
        long srcSize = Size.m4512constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L));
        int bits$iv$iv$iv5 = (int) (dstSize >> 32);
        if (!(Float.intBitsToFloat(bits$iv$iv$iv5) == 0.0f)) {
            int bits$iv$iv$iv6 = (int) (4294967295L & dstSize);
            if (!(Float.intBitsToFloat(bits$iv$iv$iv6) == 0.0f)) {
                return ScaleFactorKt.m6272timesUQTWf7w(srcSize, this.contentScale.mo6134computeScaleFactorH7hwNQA(srcSize, dstSize));
            }
        }
        return Size.INSTANCE.m4530getZeroNHjbRc();
    }

    /* JADX INFO: renamed from: modifyConstraints-ZezNO4M, reason: not valid java name */
    private final long m4285modifyConstraintsZezNO4M(long constraints) {
        int $i$f$fastRoundToInt;
        char c;
        long j;
        int $i$f$fastRoundToInt2;
        boolean hasBoundedDimens = Constraints.m7454getHasBoundedWidthimpl(constraints) && Constraints.m7453getHasBoundedHeightimpl(constraints);
        boolean hasFixedDimens = Constraints.m7456getHasFixedWidthimpl(constraints) && Constraints.m7455getHasFixedHeightimpl(constraints);
        if ((!getUseIntrinsicSize() && hasBoundedDimens) || hasFixedDimens) {
            return Constraints.m7447copyZbe2FdA(constraints, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(constraints) : Constraints.m7458getMaxWidthimpl(constraints), (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(constraints) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(constraints) : Constraints.m7457getMaxHeightimpl(constraints), (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(constraints) : 0);
        }
        long intrinsicSize = this.painter.getIntrinsicSize();
        if (!m4284hasSpecifiedAndFiniteWidthuvyYCjk(intrinsicSize)) {
            $i$f$fastRoundToInt = Constraints.m7460getMinWidthimpl(constraints);
        } else {
            int bits$iv$iv$iv = (int) (intrinsicSize >> 32);
            float $this$fastRoundToInt$iv = Float.intBitsToFloat(bits$iv$iv$iv);
            $i$f$fastRoundToInt = Math.round($this$fastRoundToInt$iv);
        }
        int intrinsicWidth = $i$f$fastRoundToInt;
        if (!m4283hasSpecifiedAndFiniteHeightuvyYCjk(intrinsicSize)) {
            c = ' ';
            j = 4294967295L;
            $i$f$fastRoundToInt2 = Constraints.m7459getMinHeightimpl(constraints);
        } else {
            c = ' ';
            j = 4294967295L;
            int bits$iv$iv$iv2 = (int) (intrinsicSize & 4294967295L);
            float $this$fastRoundToInt$iv2 = Float.intBitsToFloat(bits$iv$iv$iv2);
            $i$f$fastRoundToInt2 = Math.round($this$fastRoundToInt$iv2);
        }
        int intrinsicHeight = $i$f$fastRoundToInt2;
        int constrainedWidth = ConstraintsKt.m7475constrainWidthK40F9xA(constraints, intrinsicWidth);
        int constrainedHeight = ConstraintsKt.m7474constrainHeightK40F9xA(constraints, intrinsicHeight);
        float width$iv = constrainedWidth;
        float height$iv = constrainedHeight;
        int constrainedHeight2 = Float.floatToRawIntBits(width$iv);
        long v1$iv$iv = constrainedHeight2;
        long v2$iv$iv = Float.floatToRawIntBits(height$iv);
        long jM4282calculateScaledSizeE7KxVPU = m4282calculateScaledSizeE7KxVPU(Size.m4512constructorimpl((v1$iv$iv << c) | (v2$iv$iv & j)));
        int bits$iv$iv$iv3 = (int) (jM4282calculateScaledSizeE7KxVPU >> c);
        float $this$fastRoundToInt$iv3 = Float.intBitsToFloat(bits$iv$iv$iv3);
        int minWidth = ConstraintsKt.m7475constrainWidthK40F9xA(constraints, Math.round($this$fastRoundToInt$iv3));
        int bits$iv$iv$iv4 = (int) (jM4282calculateScaledSizeE7KxVPU & j);
        float $this$fastRoundToInt$iv4 = Float.intBitsToFloat(bits$iv$iv$iv4);
        int minHeight = ConstraintsKt.m7474constrainHeightK40F9xA(constraints, Math.round($this$fastRoundToInt$iv4));
        return Constraints.m7447copyZbe2FdA(constraints, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(constraints) : minWidth, (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(constraints) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(constraints) : minHeight, (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(constraints) : 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00c2  */
    @Override // androidx.compose.ui.node.DrawModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void draw(ContentDrawScope $this$draw) {
        float srcWidth;
        float srcHeight;
        long jM6272timesUQTWf7w;
        long intrinsicSize = this.painter.getIntrinsicSize();
        if (m4284hasSpecifiedAndFiniteWidthuvyYCjk(intrinsicSize)) {
            int bits$iv$iv$iv = (int) (intrinsicSize >> 32);
            srcWidth = Float.intBitsToFloat(bits$iv$iv$iv);
        } else {
            int bits$iv$iv$iv2 = (int) ($this$draw.mo5271getSizeNHjbRc() >> 32);
            srcWidth = Float.intBitsToFloat(bits$iv$iv$iv2);
        }
        if (m4283hasSpecifiedAndFiniteHeightuvyYCjk(intrinsicSize)) {
            int bits$iv$iv$iv3 = (int) (intrinsicSize & 4294967295L);
            srcHeight = Float.intBitsToFloat(bits$iv$iv$iv3);
        } else {
            int bits$iv$iv$iv4 = (int) ($this$draw.mo5271getSizeNHjbRc() & 4294967295L);
            srcHeight = Float.intBitsToFloat(bits$iv$iv$iv4);
        }
        float height$iv = srcHeight;
        float width$iv = srcWidth;
        long v1$iv$iv = Float.floatToRawIntBits(width$iv);
        long v2$iv$iv = Float.floatToRawIntBits(height$iv);
        long srcSize = Size.m4512constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L));
        int bits$iv$iv$iv5 = (int) ($this$draw.mo5271getSizeNHjbRc() >> 32);
        if (!(Float.intBitsToFloat(bits$iv$iv$iv5) == 0.0f)) {
            int bits$iv$iv$iv6 = (int) ($this$draw.mo5271getSizeNHjbRc() & 4294967295L);
            jM6272timesUQTWf7w = !((Float.intBitsToFloat(bits$iv$iv$iv6) > 0.0f ? 1 : (Float.intBitsToFloat(bits$iv$iv$iv6) == 0.0f ? 0 : -1)) == 0) ? ScaleFactorKt.m6272timesUQTWf7w(srcSize, this.contentScale.mo6134computeScaleFactorH7hwNQA(srcSize, $this$draw.mo5271getSizeNHjbRc())) : Size.INSTANCE.m4530getZeroNHjbRc();
        }
        long scaledSize = jM6272timesUQTWf7w;
        Alignment alignment = this.alignment;
        long value$iv$iv = jM6272timesUQTWf7w;
        int bits$iv$iv$iv7 = (int) (value$iv$iv >> 32);
        float $this$fastRoundToInt$iv = Float.intBitsToFloat(bits$iv$iv$iv7);
        int $i$f$fastRoundToInt = Math.round($this$fastRoundToInt$iv);
        int bits$iv$iv$iv8 = (int) (scaledSize & 4294967295L);
        float $this$fastRoundToInt$iv2 = Float.intBitsToFloat(bits$iv$iv$iv8);
        int height$iv2 = Math.round($this$fastRoundToInt$iv2);
        long jM7671constructorimpl = IntSize.m7671constructorimpl((((long) $i$f$fastRoundToInt) << 32) | (((long) height$iv2) & 4294967295L));
        int bits$iv$iv$iv9 = (int) ($this$draw.mo5271getSizeNHjbRc() >> 32);
        float $this$fastRoundToInt$iv3 = Float.intBitsToFloat(bits$iv$iv$iv9);
        int $i$f$fastRoundToInt2 = Math.round($this$fastRoundToInt$iv3);
        int bits$iv$iv$iv10 = (int) ($this$draw.mo5271getSizeNHjbRc() & 4294967295L);
        float $this$fastRoundToInt$iv4 = Float.intBitsToFloat(bits$iv$iv$iv10);
        int $i$f$fastRoundToInt3 = Math.round($this$fastRoundToInt$iv4);
        long alignedPosition = alignment.mo4171alignKFBX0sM(jM7671constructorimpl, IntSize.m7671constructorimpl((((long) $i$f$fastRoundToInt2) << 32) | (((long) $i$f$fastRoundToInt3) & 4294967295L)), $this$draw.getLayoutDirection());
        float dx = IntOffset.m7633getXimpl(alignedPosition);
        float dy = IntOffset.m7634getYimpl(alignedPosition);
        ContentDrawScope $this$translate$iv = $this$draw;
        $this$translate$iv.getDrawContext().getTransform().translate(dx, dy);
        try {
            Painter $this$draw_u24lambda_u240_u240 = this.painter;
            $this$draw_u24lambda_u240_u240.m5397drawx_KDEd0($this$translate$iv, scaledSize, this.alpha, this.colorFilter);
            $this$translate$iv.getDrawContext().getTransform().translate(-dx, -dy);
            $this$draw.drawContent();
        } catch (Throwable th) {
            $this$translate$iv.getDrawContext().getTransform().translate(-dx, -dy);
            throw th;
        }
    }

    /* JADX INFO: renamed from: hasSpecifiedAndFiniteWidth-uvyYCjk, reason: not valid java name */
    private final boolean m4284hasSpecifiedAndFiniteWidthuvyYCjk(long j) {
        if (Size.m4517equalsimpl0(j, Size.INSTANCE.m4529getUnspecifiedNHjbRc())) {
            return false;
        }
        int bits$iv$iv$iv = (int) (j >> 32);
        float $this$fastIsFinite$iv = Float.intBitsToFloat(bits$iv$iv$iv);
        int $i$f$fastIsFinite = (Float.floatToRawIntBits($this$fastIsFinite$iv) & Integer.MAX_VALUE) < 2139095040 ? 1 : 0;
        return $i$f$fastIsFinite != 0;
    }

    /* JADX INFO: renamed from: hasSpecifiedAndFiniteHeight-uvyYCjk, reason: not valid java name */
    private final boolean m4283hasSpecifiedAndFiniteHeightuvyYCjk(long j) {
        if (Size.m4517equalsimpl0(j, Size.INSTANCE.m4529getUnspecifiedNHjbRc())) {
            return false;
        }
        int bits$iv$iv$iv = (int) (4294967295L & j);
        float $this$fastIsFinite$iv = Float.intBitsToFloat(bits$iv$iv$iv);
        int $i$f$fastIsFinite = (Float.floatToRawIntBits($this$fastIsFinite$iv) & Integer.MAX_VALUE) < 2139095040 ? 1 : 0;
        return $i$f$fastIsFinite != 0;
    }

    public String toString() {
        return "PainterModifier(painter=" + this.painter + ", sizeToIntrinsics=" + this.sizeToIntrinsics + ", alignment=" + this.alignment + ", alpha=" + this.alpha + ", colorFilter=" + this.colorFilter + ')';
    }
}
