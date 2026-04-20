package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.ScaleFactor;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: SkipToLookaheadSizeNode.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ#\u0010\u001a\u001a\u00020\u001b*\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0016H\u0016¢\u0006\u0004\b \u0010!J\u001c\u0010\"\u001a\u00020#*\u00020$2\u0006\u0010\u001d\u001a\u00020%2\u0006\u0010&\u001a\u00020#H\u0016J\u001c\u0010'\u001a\u00020#*\u00020$2\u0006\u0010\u001d\u001a\u00020%2\u0006\u0010&\u001a\u00020#H\u0016J\u001c\u0010(\u001a\u00020#*\u00020$2\u0006\u0010\u001d\u001a\u00020%2\u0006\u0010)\u001a\u00020#H\u0016J\u001c\u0010*\u001a\u00020#*\u00020$2\u0006\u0010\u001d\u001a\u00020%2\u0006\u0010)\u001a\u00020#H\u0016R/\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR7\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0014\u0010\u0010\u001a\u0004\b\u0005\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0019¨\u0006+"}, d2 = {"Landroidx/compose/animation/SkipToLookaheadSizeNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "scaleToBounds", "Landroidx/compose/animation/ScaleToBoundsImpl;", "isEnabled", "Lkotlin/Function0;", "", "<init>", "(Landroidx/compose/animation/ScaleToBoundsImpl;Lkotlin/jvm/functions/Function0;)V", "<set-?>", "getScaleToBounds", "()Landroidx/compose/animation/ScaleToBoundsImpl;", "setScaleToBounds", "(Landroidx/compose/animation/ScaleToBoundsImpl;)V", "scaleToBounds$delegate", "Landroidx/compose/runtime/MutableState;", "()Lkotlin/jvm/functions/Function0;", "setEnabled", "(Lkotlin/jvm/functions/Function0;)V", "isEnabled$delegate", "lookaheadConstraints", "Landroidx/compose/ui/unit/Constraints;", "lookaheadSize", "Landroidx/compose/ui/unit/IntSize;", "J", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "maxIntrinsicWidth", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "height", "minIntrinsicWidth", "maxIntrinsicHeight", "width", "minIntrinsicHeight", "animation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SkipToLookaheadSizeNode extends Modifier.Node implements LayoutModifierNode {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: isEnabled$delegate, reason: from kotlin metadata */
    private final MutableState isEnabled;
    private Constraints lookaheadConstraints;
    private long lookaheadSize = AnimationModifierKt.getInvalidSize();

    /* JADX INFO: renamed from: scaleToBounds$delegate, reason: from kotlin metadata */
    private final MutableState scaleToBounds;

    public SkipToLookaheadSizeNode(ScaleToBoundsImpl scaleToBounds, Function0<Boolean> function0) {
        this.scaleToBounds = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(scaleToBounds, null, 2, null);
        this.isEnabled = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(function0, null, 2, null);
    }

    public final ScaleToBoundsImpl getScaleToBounds() {
        State $this$getValue$iv = this.scaleToBounds;
        return (ScaleToBoundsImpl) $this$getValue$iv.getValue();
    }

    public final void setScaleToBounds(ScaleToBoundsImpl scaleToBoundsImpl) {
        MutableState $this$setValue$iv = this.scaleToBounds;
        $this$setValue$iv.setValue(scaleToBoundsImpl);
    }

    public final Function0<Boolean> isEnabled() {
        State $this$getValue$iv = this.isEnabled;
        return (Function0) $this$getValue$iv.getValue();
    }

    public final void setEnabled(Function0<Boolean> function0) {
        MutableState $this$setValue$iv = this.isEnabled;
        $this$setValue$iv.setValue(function0);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo69measure3p2s80s(final MeasureScope $this$measure_u2d3p2s80s, Measurable measurable, long j) {
        long j2;
        final Placeable p;
        if ($this$measure_u2d3p2s80s.isLookingAhead()) {
            this.lookaheadConstraints = Constraints.m7445boximpl(j);
        }
        if (!isEnabled().invoke().booleanValue()) {
            final Placeable $this$measure_3p2s80s_u24lambda_u240 = measurable.mo6141measureBRTryo0(j);
            return MeasureScope.layout$default($this$measure_u2d3p2s80s, $this$measure_3p2s80s_u24lambda_u240.getWidth(), $this$measure_3p2s80s_u24lambda_u240.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.SkipToLookaheadSizeNode$measure$1$1
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
                    Placeable.PlacementScope.place$default($this$layout, $this$measure_3p2s80s_u24lambda_u240, 0, 0, 0.0f, 4, null);
                }
            }, 4, null);
        }
        if ($this$measure_u2d3p2s80s.isLookingAhead()) {
            Placeable it = measurable.mo6141measureBRTryo0(j);
            int width$iv = it.getWidth();
            int height$iv = it.getHeight();
            j2 = 4294967295L;
            this.lookaheadSize = IntSize.m7671constructorimpl((((long) height$iv) & 4294967295L) | (((long) width$iv) << 32));
            p = it;
        } else {
            j2 = 4294967295L;
            Constraints constraints = this.lookaheadConstraints;
            Intrinsics.checkNotNull(constraints);
            p = measurable.mo6141measureBRTryo0(constraints.getValue());
        }
        final long constrainedSize = ConstraintsKt.m7472constrain4WqzIAM(j, this.lookaheadSize);
        return MeasureScope.layout$default($this$measure_u2d3p2s80s, (int) (constrainedSize >> 32), (int) (constrainedSize & j2), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.SkipToLookaheadSizeNode$measure$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x0058  */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void invoke2(Placeable.PlacementScope $this$layout) {
                final long resolvedScale;
                ScaleToBoundsImpl scaleToBounds = this.this$0.getScaleToBounds();
                if (scaleToBounds == null) {
                    Placeable.PlacementScope.place$default($this$layout, p, 0, 0, 0.0f, 4, null);
                    return;
                }
                ContentScale contentScale = scaleToBounds.getContentScale();
                if (((int) (this.this$0.lookaheadSize >> 32)) != 0) {
                    int $i$f$unpackInt2 = (int) (this.this$0.lookaheadSize & 4294967295L);
                    if ($i$f$unpackInt2 == 0) {
                        long v1$iv$iv = Float.floatToRawIntBits(1.0f);
                        long v2$iv$iv = Float.floatToRawIntBits(1.0f);
                        resolvedScale = ScaleFactor.m6251constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L));
                    } else {
                        resolvedScale = contentScale.mo6134computeScaleFactorH7hwNQA(IntSizeKt.m7688toSizeozmzZPI(this.this$0.lookaheadSize), IntSizeKt.m7688toSizeozmzZPI(constrainedSize));
                    }
                }
                Alignment alignment = scaleToBounds.getAlignment();
                int bits$iv$iv$iv = (int) (resolvedScale >> 32);
                int width$iv2 = MathKt.roundToInt(((int) (this.this$0.lookaheadSize >> 32)) * Float.intBitsToFloat(bits$iv$iv$iv));
                int bits$iv$iv$iv2 = (int) (resolvedScale & 4294967295L);
                int height$iv2 = MathKt.roundToInt(((int) (this.this$0.lookaheadSize & 4294967295L)) * Float.intBitsToFloat(bits$iv$iv$iv2));
                long jMo4171alignKFBX0sM = alignment.mo4171alignKFBX0sM(IntSize.m7671constructorimpl((((long) width$iv2) << 32) | (((long) height$iv2) & 4294967295L)), constrainedSize, $this$measure_u2d3p2s80s.getLayoutDirection());
                int x = IntOffset.m7633getXimpl(jMo4171alignKFBX0sM);
                int y = IntOffset.m7634getYimpl(jMo4171alignKFBX0sM);
                Placeable.PlacementScope.placeWithLayer$default($this$layout, p, x, y, 0.0f, new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.SkipToLookaheadSizeNode$measure$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                        invoke2(graphicsLayerScope);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(GraphicsLayerScope $this$placeWithLayer) {
                        int bits$iv$iv$iv3 = (int) (resolvedScale >> 32);
                        $this$placeWithLayer.setScaleX(Float.intBitsToFloat(bits$iv$iv$iv3));
                        int bits$iv$iv$iv4 = (int) (4294967295L & resolvedScale);
                        $this$placeWithLayer.setScaleY(Float.intBitsToFloat(bits$iv$iv$iv4));
                        $this$placeWithLayer.mo4898setTransformOrigin__ExYCQ(TransformOriginKt.TransformOrigin(0.0f, 0.0f));
                    }
                }, 4, (Object) null);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope $this$maxIntrinsicWidth, IntrinsicMeasurable measurable, int height) {
        if ($this$maxIntrinsicWidth.isLookingAhead() || !AnimationModifierKt.m73isValidozmzZPI(this.lookaheadSize)) {
            return measurable.maxIntrinsicWidth(height);
        }
        return (int) (this.lookaheadSize >> 32);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope $this$minIntrinsicWidth, IntrinsicMeasurable measurable, int height) {
        if ($this$minIntrinsicWidth.isLookingAhead() || !AnimationModifierKt.m73isValidozmzZPI(this.lookaheadSize)) {
            return measurable.minIntrinsicWidth(height);
        }
        return (int) (this.lookaheadSize >> 32);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope $this$maxIntrinsicHeight, IntrinsicMeasurable measurable, int width) {
        if ($this$maxIntrinsicHeight.isLookingAhead() || !AnimationModifierKt.m73isValidozmzZPI(this.lookaheadSize)) {
            return measurable.maxIntrinsicHeight(width);
        }
        return (int) (4294967295L & this.lookaheadSize);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope $this$minIntrinsicHeight, IntrinsicMeasurable measurable, int width) {
        if ($this$minIntrinsicHeight.isLookingAhead() || !AnimationModifierKt.m73isValidozmzZPI(this.lookaheadSize)) {
            return measurable.minIntrinsicHeight(width);
        }
        return (int) (4294967295L & this.lookaheadSize);
    }
}
