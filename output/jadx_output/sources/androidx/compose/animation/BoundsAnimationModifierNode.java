package androidx.compose.animation;

import androidx.autofill.HintConstants;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.ApproachLayoutModifierNode;
import androidx.compose.ui.layout.ApproachMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: AnimateBoundsModifier.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002BW\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00126\u0010\u0007\u001a2\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\r0\b\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010&\u001a\u00020\u00102\u0006\u0010'\u001a\u00020\tH\u0016¢\u0006\u0004\b(\u0010)J\b\u0010*\u001a\u00020+H\u0016J\u0014\u0010,\u001a\u00020\u0010*\u00020-2\u0006\u0010.\u001a\u00020/H\u0016J#\u00100\u001a\u000201*\u0002022\u0006\u00103\u001a\u0002042\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b5\u00106R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aRJ\u0010\u0007\u001a2\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\r0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u000e\u0010#\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Landroidx/compose/animation/BoundsAnimationModifierNode;", "Landroidx/compose/ui/layout/ApproachLayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "lookaheadScope", "Landroidx/compose/ui/layout/LookaheadScope;", "boundsTransform", "Landroidx/compose/animation/BoundsTransform;", "onChooseMeasureConstraints", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/IntSize;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "animatedSize", "Landroidx/compose/ui/unit/Constraints;", "constraints", "animateMotionFrameOfReference", "", "<init>", "(Landroidx/compose/ui/layout/LookaheadScope;Landroidx/compose/animation/BoundsTransform;Lkotlin/jvm/functions/Function2;Z)V", "getLookaheadScope", "()Landroidx/compose/ui/layout/LookaheadScope;", "setLookaheadScope", "(Landroidx/compose/ui/layout/LookaheadScope;)V", "getBoundsTransform", "()Landroidx/compose/animation/BoundsTransform;", "setBoundsTransform", "(Landroidx/compose/animation/BoundsTransform;)V", "getOnChooseMeasureConstraints", "()Lkotlin/jvm/functions/Function2;", "setOnChooseMeasureConstraints", "(Lkotlin/jvm/functions/Function2;)V", "getAnimateMotionFrameOfReference", "()Z", "setAnimateMotionFrameOfReference", "(Z)V", "directManipulationParentsDirty", "boundsAnimation", "Landroidx/compose/animation/BoundsTransformDeferredAnimation;", "isMeasurementApproachInProgress", "lookaheadSize", "isMeasurementApproachInProgress-ozmzZPI", "(J)Z", "onAttach", "", "isPlacementApproachInProgress", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "lookaheadCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "approachMeasure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/ApproachMeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "approachMeasure-3p2s80s", "(Landroidx/compose/ui/layout/ApproachMeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "animation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BoundsAnimationModifierNode extends Modifier.Node implements ApproachLayoutModifierNode {
    public static final int $stable = 8;
    private boolean animateMotionFrameOfReference;
    private BoundsTransform boundsTransform;
    private LookaheadScope lookaheadScope;
    private Function2<? super IntSize, ? super Constraints, Constraints> onChooseMeasureConstraints;
    private boolean directManipulationParentsDirty = true;
    private final BoundsTransformDeferredAnimation boundsAnimation = new BoundsTransformDeferredAnimation();

    public BoundsAnimationModifierNode(LookaheadScope lookaheadScope, BoundsTransform boundsTransform, Function2<? super IntSize, ? super Constraints, Constraints> function2, boolean animateMotionFrameOfReference) {
        this.lookaheadScope = lookaheadScope;
        this.boundsTransform = boundsTransform;
        this.onChooseMeasureConstraints = function2;
        this.animateMotionFrameOfReference = animateMotionFrameOfReference;
    }

    public final LookaheadScope getLookaheadScope() {
        return this.lookaheadScope;
    }

    public final void setLookaheadScope(LookaheadScope lookaheadScope) {
        this.lookaheadScope = lookaheadScope;
    }

    public final BoundsTransform getBoundsTransform() {
        return this.boundsTransform;
    }

    public final void setBoundsTransform(BoundsTransform boundsTransform) {
        this.boundsTransform = boundsTransform;
    }

    public final Function2<IntSize, Constraints, Constraints> getOnChooseMeasureConstraints() {
        return this.onChooseMeasureConstraints;
    }

    public final void setOnChooseMeasureConstraints(Function2<? super IntSize, ? super Constraints, Constraints> function2) {
        this.onChooseMeasureConstraints = function2;
    }

    public final boolean getAnimateMotionFrameOfReference() {
        return this.animateMotionFrameOfReference;
    }

    public final void setAnimateMotionFrameOfReference(boolean z) {
        this.animateMotionFrameOfReference = z;
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    /* JADX INFO: renamed from: isMeasurementApproachInProgress-ozmzZPI, reason: not valid java name */
    public boolean mo75isMeasurementApproachInProgressozmzZPI(long lookaheadSize) {
        this.boundsAnimation.m80updateTargetSizeuvyYCjk(IntSizeKt.m7688toSizeozmzZPI(lookaheadSize));
        return !this.boundsAnimation.isIdle();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        this.directManipulationParentsDirty = true;
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    public boolean isPlacementApproachInProgress(Placeable.PlacementScope $this$isPlacementApproachInProgress, LayoutCoordinates lookaheadCoordinates) {
        this.boundsAnimation.updateTargetOffsetAndAnimate(this.lookaheadScope, $this$isPlacementApproachInProgress, getCoroutineScope(), this.directManipulationParentsDirty, this.animateMotionFrameOfReference, this.boundsTransform);
        this.directManipulationParentsDirty = this.animateMotionFrameOfReference;
        return !this.boundsAnimation.isIdle();
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    /* JADX INFO: renamed from: approachMeasure-3p2s80s, reason: not valid java name */
    public MeasureResult mo74approachMeasure3p2s80s(ApproachMeasureScope $this$approachMeasure_u2d3p2s80s, Measurable measurable, long j) {
        long fallbackSize;
        if (this.boundsAnimation.getCurrentSize() == InlineClassHelperKt.UnspecifiedPackedFloats) {
            fallbackSize = IntSizeKt.m7688toSizeozmzZPI($this$approachMeasure_u2d3p2s80s.mo6119getLookaheadSizeYbymL2g());
        } else {
            fallbackSize = this.boundsAnimation.getCurrentSize();
        }
        Rect value = this.boundsAnimation.getValue();
        long animatedSize = IntSizeKt.m7684roundToIntSizeuvyYCjk(value != null ? value.m4485getSizeNHjbRc() : fallbackSize);
        long chosenConstraints = this.onChooseMeasureConstraints.invoke(IntSize.m7668boximpl(animatedSize), Constraints.m7445boximpl(j)).getValue();
        final Placeable placeable = measurable.mo6141measureBRTryo0(chosenConstraints);
        long jM7472constrain4WqzIAM = ConstraintsKt.m7472constrain4WqzIAM(chosenConstraints, animatedSize);
        long fallbackSize2 = jM7472constrain4WqzIAM >> 32;
        int w = (int) fallbackSize2;
        int h = (int) (jM7472constrain4WqzIAM & 4294967295L);
        return MeasureScope.layout$default($this$approachMeasure_u2d3p2s80s, w, h, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.BoundsAnimationModifierNode$approachMeasure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                Placeable.PlacementScope placementScope;
                Offset positionInScope;
                long topLeft;
                long it;
                Rect animatedBounds = this.this$0.boundsAnimation.getValue();
                LookaheadScope $this$invoke_u24lambda_u240 = this.this$0.getLookaheadScope();
                BoundsAnimationModifierNode boundsAnimationModifierNode = this.this$0;
                LayoutCoordinates coordinates = $this$layout.getCoordinates();
                if (coordinates != null) {
                    placementScope = $this$layout;
                    positionInScope = Offset.m4441boximpl($this$invoke_u24lambda_u240.getLookaheadScopeCoordinates(placementScope).mo6151localPositionOfS_NoaFU(coordinates, Offset.INSTANCE.m4468getZeroF1C5BW0(), boundsAnimationModifierNode.getAnimateMotionFrameOfReference()));
                } else {
                    placementScope = $this$layout;
                    positionInScope = null;
                }
                BoundsAnimationModifierNode boundsAnimationModifierNode2 = this.this$0;
                if (animatedBounds != null) {
                    boundsAnimationModifierNode2.boundsAnimation.m79updateCurrentBoundstz77jQw(animatedBounds.m4487getTopLeftF1C5BW0(), animatedBounds.m4485getSizeNHjbRc());
                    topLeft = animatedBounds.m4487getTopLeftF1C5BW0();
                } else {
                    Rect currentBounds = boundsAnimationModifierNode2.boundsAnimation.getCurrentBounds();
                    topLeft = currentBounds != null ? currentBounds.m4487getTopLeftF1C5BW0() : Offset.INSTANCE.m4468getZeroF1C5BW0();
                }
                if (positionInScope != null) {
                    long it2 = positionInScope.m4462unboximpl();
                    it = Offset.m4456minusMKHz9U(topLeft, it2);
                } else {
                    it = Offset.INSTANCE.m4468getZeroF1C5BW0();
                }
                long j2 = it;
                int bits$iv$iv$iv$iv = (int) (j2 >> 32);
                float x = Float.intBitsToFloat(bits$iv$iv$iv$iv);
                int bits$iv$iv$iv$iv2 = (int) (j2 & 4294967295L);
                float y = Float.intBitsToFloat(bits$iv$iv$iv$iv2);
                Placeable.PlacementScope.place$default(placementScope, placeable, Math.round(x), Math.round(y), 0.0f, 4, null);
            }
        }, 4, null);
    }
}
