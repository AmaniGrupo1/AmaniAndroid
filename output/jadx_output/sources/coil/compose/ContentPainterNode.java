package coil.compose;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
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
import androidx.compose.ui.layout.ScaleFactor;
import androidx.compose.ui.layout.ScaleFactorKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: ContentPainterModifier.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B1\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010(\u001a\u00020)*\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u001c\u00101\u001a\u000202*\u0002032\u0006\u0010+\u001a\u0002042\u0006\u00105\u001a\u000202H\u0016J\u001c\u00106\u001a\u000202*\u0002032\u0006\u0010+\u001a\u0002042\u0006\u00105\u001a\u000202H\u0016J\u001c\u00107\u001a\u000202*\u0002032\u0006\u0010+\u001a\u0002042\u0006\u00108\u001a\u000202H\u0016J\u001c\u00109\u001a\u000202*\u0002032\u0006\u0010+\u001a\u0002042\u0006\u00108\u001a\u000202H\u0016J\u0017\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020;H\u0002¢\u0006\u0004\b=\u0010>J\u0017\u0010?\u001a\u00020.2\u0006\u0010-\u001a\u00020.H\u0002¢\u0006\u0004\b@\u0010>J\f\u0010A\u001a\u00020B*\u00020CH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0014\u0010$\u001a\u00020%8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u0006D"}, d2 = {"Lcoil/compose/ContentPainterNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "painter", "Landroidx/compose/ui/graphics/painter/Painter;", "alignment", "Landroidx/compose/ui/Alignment;", "contentScale", "Landroidx/compose/ui/layout/ContentScale;", "alpha", "", "colorFilter", "Landroidx/compose/ui/graphics/ColorFilter;", "<init>", "(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V", "getPainter", "()Landroidx/compose/ui/graphics/painter/Painter;", "setPainter", "(Landroidx/compose/ui/graphics/painter/Painter;)V", "getAlignment", "()Landroidx/compose/ui/Alignment;", "setAlignment", "(Landroidx/compose/ui/Alignment;)V", "getContentScale", "()Landroidx/compose/ui/layout/ContentScale;", "setContentScale", "(Landroidx/compose/ui/layout/ContentScale;)V", "getAlpha", "()F", "setAlpha", "(F)V", "getColorFilter", "()Landroidx/compose/ui/graphics/ColorFilter;", "setColorFilter", "(Landroidx/compose/ui/graphics/ColorFilter;)V", "shouldAutoInvalidate", "", "getShouldAutoInvalidate", "()Z", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicWidth", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "height", "maxIntrinsicWidth", "minIntrinsicHeight", "width", "maxIntrinsicHeight", "calculateScaledSize", "Landroidx/compose/ui/geometry/Size;", "dstSize", "calculateScaledSize-E7KxVPU", "(J)J", "modifyConstraints", "modifyConstraints-ZezNO4M", "draw", "", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "coil-compose-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ContentPainterNode extends Modifier.Node implements DrawModifierNode, LayoutModifierNode {
    public static final int $stable = 8;
    private Alignment alignment;
    private float alpha;
    private ColorFilter colorFilter;
    private ContentScale contentScale;
    private Painter painter;

    public final Painter getPainter() {
        return this.painter;
    }

    public final void setPainter(Painter painter) {
        this.painter = painter;
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

    public ContentPainterNode(Painter painter, Alignment alignment, ContentScale contentScale, float alpha, ColorFilter colorFilter) {
        this.painter = painter;
        this.alignment = alignment;
        this.contentScale = contentScale;
        this.alpha = alpha;
        this.colorFilter = colorFilter;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo69measure3p2s80s(MeasureScope $this$measure_u2d3p2s80s, Measurable measurable, long constraints) {
        final Placeable placeable = measurable.mo6141measureBRTryo0(m8227modifyConstraintsZezNO4M(constraints));
        return MeasureScope.layout$default($this$measure_u2d3p2s80s, placeable.getWidth(), placeable.getHeight(), null, new Function1() { // from class: coil.compose.ContentPainterNode$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ContentPainterNode.measure_3p2s80s$lambda$0(placeable, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    static final Unit measure_3p2s80s$lambda$0(Placeable $placeable, Placeable.PlacementScope $this$layout) {
        Placeable.PlacementScope.placeRelative$default($this$layout, $placeable, 0, 0, 0.0f, 4, null);
        return Unit.INSTANCE;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope $this$minIntrinsicWidth, IntrinsicMeasurable measurable, int height) {
        long $this$isSpecified$iv = this.painter.getIntrinsicSize();
        if ($this$isSpecified$iv != Size.INSTANCE.m4529getUnspecifiedNHjbRc()) {
            long constraints = ConstraintsKt.Constraints$default(0, 0, 0, height, 7, null);
            int layoutWidth = measurable.minIntrinsicWidth(Constraints.m7457getMaxHeightimpl(m8227modifyConstraintsZezNO4M(constraints)));
            long scaledSize = m8226calculateScaledSizeE7KxVPU(SizeKt.Size(layoutWidth, height));
            return Math.max(MathKt.roundToInt(Size.m4521getWidthimpl(scaledSize)), layoutWidth);
        }
        return measurable.minIntrinsicWidth(height);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope $this$maxIntrinsicWidth, IntrinsicMeasurable measurable, int height) {
        long $this$isSpecified$iv = this.painter.getIntrinsicSize();
        if ($this$isSpecified$iv != Size.INSTANCE.m4529getUnspecifiedNHjbRc()) {
            long constraints = ConstraintsKt.Constraints$default(0, 0, 0, height, 7, null);
            int layoutWidth = measurable.maxIntrinsicWidth(Constraints.m7457getMaxHeightimpl(m8227modifyConstraintsZezNO4M(constraints)));
            long scaledSize = m8226calculateScaledSizeE7KxVPU(SizeKt.Size(layoutWidth, height));
            return Math.max(MathKt.roundToInt(Size.m4521getWidthimpl(scaledSize)), layoutWidth);
        }
        return measurable.maxIntrinsicWidth(height);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope $this$minIntrinsicHeight, IntrinsicMeasurable measurable, int width) {
        long $this$isSpecified$iv = this.painter.getIntrinsicSize();
        if ($this$isSpecified$iv != Size.INSTANCE.m4529getUnspecifiedNHjbRc()) {
            long constraints = ConstraintsKt.Constraints$default(0, width, 0, 0, 13, null);
            int layoutHeight = measurable.minIntrinsicHeight(Constraints.m7458getMaxWidthimpl(m8227modifyConstraintsZezNO4M(constraints)));
            long scaledSize = m8226calculateScaledSizeE7KxVPU(SizeKt.Size(width, layoutHeight));
            return Math.max(MathKt.roundToInt(Size.m4518getHeightimpl(scaledSize)), layoutHeight);
        }
        return measurable.minIntrinsicHeight(width);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope $this$maxIntrinsicHeight, IntrinsicMeasurable measurable, int width) {
        long $this$isSpecified$iv = this.painter.getIntrinsicSize();
        if ($this$isSpecified$iv != Size.INSTANCE.m4529getUnspecifiedNHjbRc()) {
            long constraints = ConstraintsKt.Constraints$default(0, width, 0, 0, 13, null);
            int layoutHeight = measurable.maxIntrinsicHeight(Constraints.m7458getMaxWidthimpl(m8227modifyConstraintsZezNO4M(constraints)));
            long scaledSize = m8226calculateScaledSizeE7KxVPU(SizeKt.Size(width, layoutHeight));
            return Math.max(MathKt.roundToInt(Size.m4518getHeightimpl(scaledSize)), layoutHeight);
        }
        return measurable.maxIntrinsicHeight(width);
    }

    /* JADX INFO: renamed from: calculateScaledSize-E7KxVPU, reason: not valid java name */
    private final long m8226calculateScaledSizeE7KxVPU(long dstSize) {
        if (Size.m4523isEmptyimpl(dstSize)) {
            return Size.INSTANCE.m4530getZeroNHjbRc();
        }
        long intrinsicSize = this.painter.getIntrinsicSize();
        if (intrinsicSize == Size.INSTANCE.m4529getUnspecifiedNHjbRc()) {
            return dstSize;
        }
        float $this$takeOrElse$iv = Size.m4521getWidthimpl(intrinsicSize);
        if (!((Float.isInfinite($this$takeOrElse$iv) || Float.isNaN($this$takeOrElse$iv)) ? false : true)) {
            $this$takeOrElse$iv = Size.m4521getWidthimpl(dstSize);
        }
        float $this$takeOrElse$iv2 = Size.m4518getHeightimpl(intrinsicSize);
        if (!((Float.isInfinite($this$takeOrElse$iv2) || Float.isNaN($this$takeOrElse$iv2)) ? false : true)) {
            $this$takeOrElse$iv2 = Size.m4518getHeightimpl(dstSize);
        }
        long srcSize = SizeKt.Size($this$takeOrElse$iv, $this$takeOrElse$iv2);
        long scaleFactor = this.contentScale.mo6134computeScaleFactorH7hwNQA(srcSize, dstSize);
        float fM6257getScaleXimpl = ScaleFactor.m6257getScaleXimpl(scaleFactor);
        if ((Float.isInfinite(fM6257getScaleXimpl) || Float.isNaN(fM6257getScaleXimpl)) ? false : true) {
            float fM6258getScaleYimpl = ScaleFactor.m6258getScaleYimpl(scaleFactor);
            if ((Float.isInfinite(fM6258getScaleYimpl) || Float.isNaN(fM6258getScaleYimpl)) ? false : true) {
                return ScaleFactorKt.m6273timesmw2e94(scaleFactor, srcSize);
            }
        }
        return dstSize;
    }

    /* JADX INFO: renamed from: modifyConstraints-ZezNO4M, reason: not valid java name */
    private final long m8227modifyConstraintsZezNO4M(long constraints) {
        float fM7460getMinWidthimpl;
        float fM7459getMinHeightimpl;
        float dstWidth;
        float dstHeight;
        boolean hasFixedWidth = Constraints.m7456getHasFixedWidthimpl(constraints);
        boolean hasFixedHeight = Constraints.m7455getHasFixedHeightimpl(constraints);
        if (hasFixedWidth && hasFixedHeight) {
            return constraints;
        }
        boolean hasBoundedSize = Constraints.m7454getHasBoundedWidthimpl(constraints) && Constraints.m7453getHasBoundedHeightimpl(constraints);
        long intrinsicSize = this.painter.getIntrinsicSize();
        if ((intrinsicSize == Size.INSTANCE.m4529getUnspecifiedNHjbRc() ? 1 : 0) != 0) {
            if (hasBoundedSize) {
                return Constraints.m7447copyZbe2FdA(constraints, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(constraints) : Constraints.m7458getMaxWidthimpl(constraints), (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(constraints) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(constraints) : Constraints.m7457getMaxHeightimpl(constraints), (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(constraints) : 0);
            }
            return constraints;
        }
        if (hasBoundedSize && (hasFixedWidth || hasFixedHeight)) {
            float dstWidth2 = Constraints.m7458getMaxWidthimpl(constraints);
            dstWidth = dstWidth2;
            dstHeight = Constraints.m7457getMaxHeightimpl(constraints);
        } else {
            float intrinsicWidth = Size.m4521getWidthimpl(intrinsicSize);
            float intrinsicHeight = Size.m4518getHeightimpl(intrinsicSize);
            if ((Float.isInfinite(intrinsicWidth) || Float.isNaN(intrinsicWidth)) ? false : true) {
                fM7460getMinWidthimpl = UtilsKt.m8257constrainWidthK40F9xA(constraints, intrinsicWidth);
            } else {
                fM7460getMinWidthimpl = Constraints.m7460getMinWidthimpl(constraints);
            }
            float dstWidth3 = fM7460getMinWidthimpl;
            if ((Float.isInfinite(intrinsicHeight) || Float.isNaN(intrinsicHeight)) ? false : true) {
                fM7459getMinHeightimpl = UtilsKt.m8256constrainHeightK40F9xA(constraints, intrinsicHeight);
            } else {
                fM7459getMinHeightimpl = Constraints.m7459getMinHeightimpl(constraints);
            }
            dstWidth = dstWidth3;
            dstHeight = fM7459getMinHeightimpl;
        }
        long jM8226calculateScaledSizeE7KxVPU = m8226calculateScaledSizeE7KxVPU(SizeKt.Size(dstWidth, dstHeight));
        float fM4521getWidthimpl = Size.m4521getWidthimpl(jM8226calculateScaledSizeE7KxVPU);
        float scaledHeight = Size.m4518getHeightimpl(jM8226calculateScaledSizeE7KxVPU);
        return Constraints.m7447copyZbe2FdA(constraints, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(constraints) : ConstraintsKt.m7475constrainWidthK40F9xA(constraints, MathKt.roundToInt(fM4521getWidthimpl)), (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(constraints) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(constraints) : ConstraintsKt.m7474constrainHeightK40F9xA(constraints, MathKt.roundToInt(scaledHeight)), (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(constraints) : 0);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope $this$draw) throws Throwable {
        long scaledSize = m8226calculateScaledSizeE7KxVPU($this$draw.mo5271getSizeNHjbRc());
        long jMo4171alignKFBX0sM = this.alignment.mo4171alignKFBX0sM(UtilsKt.m8259toIntSizeuvyYCjk(scaledSize), UtilsKt.m8259toIntSizeuvyYCjk($this$draw.mo5271getSizeNHjbRc()), $this$draw.getLayoutDirection());
        int dx = IntOffset.m7625component1impl(jMo4171alignKFBX0sM);
        int dy = IntOffset.m7626component2impl(jMo4171alignKFBX0sM);
        ContentDrawScope $this$translate$iv = $this$draw;
        float left$iv = dx;
        float top$iv = dy;
        $this$translate$iv.getDrawContext().getTransform().translate(left$iv, top$iv);
        Painter $this$draw_u24lambda_u244_u24lambda_u243 = this.painter;
        $this$draw_u24lambda_u244_u24lambda_u243.m5397drawx_KDEd0($this$translate$iv, scaledSize, this.alpha, this.colorFilter);
        $this$translate$iv.getDrawContext().getTransform().translate(-left$iv, -top$iv);
        $this$draw.drawContent();
    }
}
