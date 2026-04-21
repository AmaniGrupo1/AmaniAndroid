package androidx.compose.animation;

import androidx.compose.animation.SharedTransitionScope;
import androidx.compose.animation.SharedTransitionStateMachine;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.layout.ApproachLayoutModifierNode;
import androidx.compose.ui.layout.ApproachMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.modifier.ModifierLocalMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ModifierLocalModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: SharedContentNode.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0011\u001a\u00020\fH\u0016J\b\u0010\u001f\u001a\u00020\u0013H\u0002J\b\u00100\u001a\u000201H\u0002J\b\u00102\u001a\u000201H\u0016J\b\u00103\u001a\u000201H\u0016J\b\u00104\u001a\u000201H\u0016J#\u00105\u001a\u000206*\u0002072\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0016¢\u0006\u0004\b<\u0010=J\u001c\u0010>\u001a\u000201*\u00020?2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020\fH\u0002J)\u0010C\u001a\u000201*\u00020?2\u0006\u0010@\u001a\u00020A2\u0006\u0010D\u001a\u00020E2\u0006\u0010B\u001a\u00020\fH\u0000¢\u0006\u0002\bFJ\u0014\u0010G\u001a\u000206*\u0002072\u0006\u0010@\u001a\u00020AH\u0002J\u0017\u0010H\u001a\u00020\u00172\u0006\u0010I\u001a\u00020JH\u0016¢\u0006\u0004\bK\u0010LJ#\u0010M\u001a\u000206*\u00020N2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0016¢\u0006\u0004\bO\u0010PJ\f\u0010Q\u001a\u000201*\u00020RH\u0016J\b\u0010S\u001a\u000201H\u0016R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0015R$\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\b@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\nR\u0014\u0010 \u001a\u00020!8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\"\u0010%\u001a\u0004\u0018\u00010$2\b\u0010\u001a\u001a\u0004\u0018\u00010$@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b&\u0010'R\u0014\u0010(\u001a\u00020)8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0014\u0010,\u001a\u00020-X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/¨\u0006T"}, d2 = {"Landroidx/compose/animation/SharedBoundsNode;", "Landroidx/compose/ui/layout/ApproachLayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;", "Landroidx/compose/ui/node/ObserverModifierNode;", "Landroidx/compose/animation/BoundsProvider;", "state", "Landroidx/compose/animation/SharedElementEntry;", "<init>", "(Landroidx/compose/animation/SharedElementEntry;)V", "boundsBeforeDetached", "Landroidx/compose/ui/geometry/Rect;", "lastBoundsInSharedTransitionScope", "getLastBoundsInSharedTransitionScope", "()Landroidx/compose/ui/geometry/Rect;", "calculateAlternativeTargetBounds", "targetBoundsBeforeDisposed", "approachCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "getApproachCoordinates", "()Landroidx/compose/ui/layout/LayoutCoordinates;", "isPlaced", "", "rootCoords", "getRootCoords", Values.VECTOR_MAP_VECTORS_KEY, "sharedElementEntry", "getSharedElementEntry", "()Landroidx/compose/animation/SharedElementEntry;", "setSharedElementEntry$animation", "requireLookaheadLayoutCoordinates", "boundsAnimation", "Landroidx/compose/animation/BoundsAnimation;", "getBoundsAnimation", "()Landroidx/compose/animation/BoundsAnimation;", "Landroidx/compose/ui/graphics/layer/GraphicsLayer;", "layer", "setLayer", "(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V", "sharedElement", "Landroidx/compose/animation/SharedElement;", "getSharedElement", "()Landroidx/compose/animation/SharedElement;", "providedValues", "Landroidx/compose/ui/modifier/ModifierLocalMap;", "getProvidedValues", "()Landroidx/compose/ui/modifier/ModifierLocalMap;", "setup", "", "onAttach", "onDetach", "onReset", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "measurable", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "approachPlaceMatchBeyondTransition", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "placeable", "Landroidx/compose/ui/layout/Placeable;", "currentBounds", "approachPlaceMatchInTransition", "targetData", "Landroidx/compose/animation/TargetData;", "approachPlaceMatchInTransition$animation", "approachPlace", "isMeasurementApproachInProgress", "lookaheadSize", "Landroidx/compose/ui/unit/IntSize;", "isMeasurementApproachInProgress-ozmzZPI", "(J)Z", "approachMeasure", "Landroidx/compose/ui/layout/ApproachMeasureScope;", "approachMeasure-3p2s80s", "(Landroidx/compose/ui/layout/ApproachMeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "draw", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "onObservedReadsChanged", "animation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SharedBoundsNode extends Modifier.Node implements ApproachLayoutModifierNode, DrawModifierNode, ModifierLocalModifierNode, ObserverModifierNode, BoundsProvider {
    public static final int $stable = 8;
    private Rect boundsBeforeDetached;
    private boolean isPlaced;
    private GraphicsLayer layer;
    private final ModifierLocalMap providedValues;
    private SharedElementEntry sharedElementEntry;

    public SharedBoundsNode(SharedElementEntry state) {
        this.sharedElementEntry = state;
        this.layer = state.getLayer();
        this.providedValues = ModifierLocalModifierNodeKt.modifierLocalMapOf(TuplesKt.to(SharedContentNodeKt.getModifierLocalSharedElementInternalState(), state));
    }

    @Override // androidx.compose.animation.BoundsProvider
    public Rect getLastBoundsInSharedTransitionScope() {
        if (getIsAttached()) {
            return !this.isPlaced ? this.boundsBeforeDetached : RectKt.m4492Recttz77jQw(LayoutCoordinates.m6148localPositionOfS_NoaFU$default(getRootCoords(), getApproachCoordinates(), 0L, false, 6, null), IntSizeKt.m7688toSizeozmzZPI(getApproachCoordinates().mo6149getSizeYbymL2g()));
        }
        return null;
    }

    @Override // androidx.compose.animation.BoundsProvider
    public Rect calculateAlternativeTargetBounds(Rect targetBoundsBeforeDisposed) {
        return this.sharedElementEntry.calculateTargetBounds(targetBoundsBeforeDisposed);
    }

    private final LayoutCoordinates getApproachCoordinates() {
        return DelegatableNodeKt.requireLayoutCoordinates(this);
    }

    private final LayoutCoordinates getRootCoords() {
        return getSharedElement().getScope().getRoot$animation();
    }

    public final SharedElementEntry getSharedElementEntry() {
        return this.sharedElementEntry;
    }

    public final void setSharedElementEntry$animation(SharedElementEntry value) {
        if (!Intrinsics.areEqual(value, this.sharedElementEntry)) {
            this.sharedElementEntry.setAttached(false);
            this.sharedElementEntry = value;
            value.setAttached(getIsAttached());
            if (getIsAttached()) {
                setup();
            }
        }
    }

    private final LayoutCoordinates requireLookaheadLayoutCoordinates() {
        SharedTransitionScopeImpl $this$requireLookaheadLayoutCoordinates_u24lambda_u240 = this.sharedElementEntry.getSharedElement().getScope();
        return $this$requireLookaheadLayoutCoordinates_u24lambda_u240.toLookaheadCoordinates(DelegatableNodeKt.requireLayoutCoordinates(this));
    }

    private final BoundsAnimation getBoundsAnimation() {
        return this.sharedElementEntry.getBoundsAnimation();
    }

    private final void setLayer(GraphicsLayer value) {
        if (value == null) {
            GraphicsLayer it = this.layer;
            if (it != null) {
                DelegatableNodeKt.requireGraphicsContext(this).releaseGraphicsLayer(it);
            }
        } else {
            this.sharedElementEntry.setLayer(value);
        }
        this.layer = value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedElement getSharedElement() {
        return this.sharedElementEntry.getSharedElement();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode
    public ModifierLocalMap getProvidedValues() {
        return this.providedValues;
    }

    private final void setup() {
        provide(SharedContentNodeKt.getModifierLocalSharedElementInternalState(), this.sharedElementEntry);
        this.sharedElementEntry.setParentState((SharedElementEntry) getCurrent(SharedContentNodeKt.getModifierLocalSharedElementInternalState()));
        setLayer(DelegatableNodeKt.requireGraphicsContext(this).createGraphicsLayer());
        this.isPlaced = false;
        this.sharedElementEntry.setBoundsProvider(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        super.onAttach();
        ObserverModifierNodeKt.observeReads(this, getSharedElement().getObservingVisibilityChange$animation());
        setup();
        this.sharedElementEntry.setAttached(true);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        Rect rectM4492Recttz77jQw;
        super.onDetach();
        LayoutCoordinates rootCoords = getSharedElement().getScope().getNullableRoot();
        if (rootCoords != null) {
            if (rootCoords.isAttached() && this.isPlaced) {
                rectM4492Recttz77jQw = RectKt.m4492Recttz77jQw(Offset.m4456minusMKHz9U(LayoutCoordinatesKt.positionInRoot(getApproachCoordinates()), LayoutCoordinatesKt.positionInRoot(rootCoords)), IntSizeKt.m7688toSizeozmzZPI(getApproachCoordinates().mo6149getSizeYbymL2g()));
            } else {
                rectM4492Recttz77jQw = null;
            }
            this.boundsBeforeDetached = rectM4492Recttz77jQw;
        }
        setLayer(null);
        this.sharedElementEntry.setParentState(null);
        this.sharedElementEntry.setBoundsProvider(null);
        this.sharedElementEntry.setAttached(false);
        this.isPlaced = false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onReset() {
        super.onReset();
        this.boundsBeforeDetached = null;
        GraphicsLayer it = this.layer;
        if (it != null) {
            DelegatableNodeKt.requireGraphicsContext(this).releaseGraphicsLayer(it);
        }
        setLayer(DelegatableNodeKt.requireGraphicsContext(this).createGraphicsLayer());
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode, androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo69measure3p2s80s(MeasureScope $this$measure_u2d3p2s80s, Measurable measurable, long j) {
        final Placeable placeable = measurable.mo6141measureBRTryo0(j);
        return MeasureScope.layout$default($this$measure_u2d3p2s80s, placeable.getWidth(), placeable.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.SharedBoundsNode$measure$1
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
                Placeable.PlacementScope.place$default($this$layout, placeable, 0, 0, 0.0f, 4, null);
                this.getSharedElement().onLookaheadPlaced($this$layout, this.getSharedElementEntry());
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void approachPlaceMatchBeyondTransition(Placeable.PlacementScope $this$approachPlaceMatchBeyondTransition, Placeable placeable, Rect currentBounds) {
        long jM7644getZeronOccac;
        if (!getBoundsAnimation().getTarget()) {
            LayoutCoordinates it = $this$approachPlaceMatchBeyondTransition.getCoordinates();
            if (it != null) {
                long positionInScope = getRootCoords().mo6150localPositionOfR5De75A(it, Offset.INSTANCE.m4468getZeroF1C5BW0());
                jM7644getZeronOccac = IntOffsetKt.m7650roundk4lQ0M(Offset.m4456minusMKHz9U(currentBounds.m4487getTopLeftF1C5BW0(), positionInScope));
            } else {
                jM7644getZeronOccac = IntOffset.INSTANCE.m7644getZeronOccac();
            }
            int iM7633getXimpl = IntOffset.m7633getXimpl(jM7644getZeronOccac);
            int y = IntOffset.m7634getYimpl(jM7644getZeronOccac);
            Placeable.PlacementScope.place$default($this$approachPlaceMatchBeyondTransition, placeable, iM7633getXimpl, y, 0.0f, 4, null);
            return;
        }
        Placeable.PlacementScope.place$default($this$approachPlaceMatchBeyondTransition, placeable, 0, 0, 0.0f, 4, null);
    }

    public final void approachPlaceMatchInTransition$animation(Placeable.PlacementScope $this$approachPlaceMatchInTransition, Placeable placeable, TargetData targetData, Rect currentBounds) {
        long topLeft;
        LayoutCoordinates coordinates = $this$approachPlaceMatchInTransition.getCoordinates();
        if (coordinates == null) {
            Placeable.PlacementScope.place$default($this$approachPlaceMatchInTransition, placeable, 0, 0, 0.0f, 4, null);
            return;
        }
        boolean activeMatchRemoved = !getSharedElement().getState$animation().getActiveMatchFound();
        long positionInScope = getRootCoords().mo6150localPositionOfR5De75A(coordinates, Offset.INSTANCE.m4468getZeroF1C5BW0());
        if (activeMatchRemoved) {
            getBoundsAnimation().animate(currentBounds, SharedTransitionStateMachineKt.getTargetBounds(targetData), new BoundsTransform() { // from class: androidx.compose.animation.SharedBoundsNode$$ExternalSyntheticLambda0
                @Override // androidx.compose.animation.BoundsTransform
                public final FiniteAnimationSpec createAnimationSpec(Rect rect, Rect rect2) {
                    return AnimationSpecKt.spring$default(0.0f, 0.0f, VisibilityThresholdsKt.getVisibilityThreshold(Rect.INSTANCE), 3, null);
                }
            });
        } else {
            BoundsAnimation.animate$default(getBoundsAnimation(), currentBounds, SharedTransitionStateMachineKt.getTargetBounds(targetData), null, 4, null);
        }
        Rect animatedBounds = getBoundsAnimation().getValue();
        Offset animatedTopLeft = animatedBounds != null ? Offset.m4441boximpl(SharedTransitionStateMachineKt.calculateOffsetFromDirectManipulation(targetData, animatedBounds)) : null;
        if (getBoundsAnimation().getTarget() || activeMatchRemoved) {
            long topLeft2 = animatedTopLeft != null ? animatedTopLeft.m4462unboximpl() : positionInScope;
            Rect bounds = animatedTopLeft == null ? RectKt.m4492Recttz77jQw(positionInScope, IntSizeKt.m7688toSizeozmzZPI(coordinates.mo6149getSizeYbymL2g())) : RectKt.m4492Recttz77jQw(animatedTopLeft.m4462unboximpl(), animatedBounds.m4485getSizeNHjbRc());
            getSharedElement().getState$animation().updateBounds(bounds);
            topLeft = topLeft2;
        } else {
            topLeft = animatedTopLeft != null ? animatedTopLeft.m4462unboximpl() : currentBounds.m4487getTopLeftF1C5BW0();
        }
        long it = Offset.m4456minusMKHz9U(topLeft, positionInScope);
        int bits$iv$iv$iv$iv = (int) (it >> 32);
        float x = Float.intBitsToFloat(bits$iv$iv$iv$iv);
        int bits$iv$iv$iv$iv2 = (int) (it & 4294967295L);
        float y = Float.intBitsToFloat(bits$iv$iv$iv$iv2);
        Placeable.PlacementScope.place$default($this$approachPlaceMatchInTransition, placeable, Math.round(x), Math.round(y), 0.0f, 4, null);
    }

    private final MeasureResult approachPlace(MeasureScope $this$approachPlace, final Placeable placeable) {
        long j;
        long jM7671constructorimpl;
        if (getSharedElement().getState$animation().getMatchIsOrHasBeenConfigured()) {
            SharedTransitionScope.PlaceholderSize placeholderSize = this.sharedElementEntry.getPlaceholderSize();
            long jMo6149getSizeYbymL2g = requireLookaheadLayoutCoordinates().mo6149getSizeYbymL2g();
            int width$iv = placeable.getWidth();
            int height$iv = placeable.getHeight();
            j = 4294967295L;
            jM7671constructorimpl = placeholderSize.mo123calculateSizeJyjRU_E(jMo6149getSizeYbymL2g, IntSize.m7671constructorimpl((((long) height$iv) & 4294967295L) | (((long) width$iv) << 32)));
        } else {
            j = 4294967295L;
            int width$iv2 = placeable.getWidth();
            int height$iv2 = placeable.getHeight();
            jM7671constructorimpl = IntSize.m7671constructorimpl((((long) width$iv2) << 32) | (((long) height$iv2) & 4294967295L));
        }
        int w = (int) (jM7671constructorimpl >> 32);
        int h = (int) (jM7671constructorimpl & j);
        return MeasureScope.layout$default($this$approachPlace, w, h, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.SharedBoundsNode.approachPlace.1
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
                SharedBoundsNode.this.isPlaced = true;
                SharedBoundsNode.this.boundsBeforeDetached = null;
                SharedTransitionStateMachine.State matchState = SharedBoundsNode.this.getSharedElement().getState$animation();
                if (!SharedBoundsNode.this.getSharedElementEntry().isEnabled()) {
                    Placeable.PlacementScope.place$default($this$layout, placeable, 0, 0, 0.0f, 4, null);
                    return;
                }
                if (matchState.getMatchIsOrHasBeenConfigured()) {
                    TargetData targetData = matchState.getTargetData();
                    if (targetData == null) {
                        throw new IllegalArgumentException(("Match State is configured, but target data is null. State = " + matchState).toString());
                    }
                    Rect currentBounds = matchState.getCurrentBounds();
                    if (currentBounds != null) {
                        boolean zIsTransitionActive = SharedBoundsNode.this.getSharedElement().getScope().isTransitionActive();
                        SharedBoundsNode sharedBoundsNode = SharedBoundsNode.this;
                        if (!zIsTransitionActive) {
                            sharedBoundsNode.approachPlaceMatchBeyondTransition($this$layout, placeable, currentBounds);
                            return;
                        } else {
                            sharedBoundsNode.approachPlaceMatchInTransition$animation($this$layout, placeable, targetData, currentBounds);
                            return;
                        }
                    }
                    throw new IllegalArgumentException(("Match State is configured, but current bounds is null. State = " + matchState).toString());
                }
                Placeable.PlacementScope.place$default($this$layout, placeable, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    /* JADX INFO: renamed from: isMeasurementApproachInProgress-ozmzZPI */
    public boolean mo75isMeasurementApproachInProgressozmzZPI(long lookaheadSize) {
        return this.sharedElementEntry.isEnabled() && getSharedElement().getFoundMatch() && getSharedElement().getScope().isTransitionActive();
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    /* JADX INFO: renamed from: approachMeasure-3p2s80s */
    public MeasureResult mo74approachMeasure3p2s80s(ApproachMeasureScope $this$approachMeasure_u2d3p2s80s, Measurable measurable, long j) {
        long resolvedConstraints;
        Rect it = getBoundsAnimation().getValue();
        if (it == null) {
            it = getSharedElement().tryInitializingCurrentBounds();
        }
        if (it != null) {
            long jM7684roundToIntSizeuvyYCjk = IntSizeKt.m7684roundToIntSizeuvyYCjk(it.m4485getSizeNHjbRc());
            int width = (int) (jM7684roundToIntSizeuvyYCjk >> 32);
            int height = (int) (4294967295L & jM7684roundToIntSizeuvyYCjk);
            if (!((width == Integer.MAX_VALUE || height == Integer.MAX_VALUE) ? false : true)) {
                throw new IllegalArgumentException(("Error: Infinite width/height is invalid. animated bounds: " + getBoundsAnimation().getValue() + ", current bounds: " + getSharedElement().getState$animation().getCurrentBounds()).toString());
            }
            resolvedConstraints = Constraints.INSTANCE.m7468fixedJhjzzOo(RangesKt.coerceAtLeast(width, 0), RangesKt.coerceAtLeast(height, 0));
        } else {
            resolvedConstraints = j;
        }
        Placeable placeable = measurable.mo6141measureBRTryo0(resolvedConstraints);
        return approachPlace($this$approachMeasure_u2d3p2s80s, placeable);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(final ContentDrawScope $this$draw) {
        SharedTransitionStateMachine.State matchState = getSharedElement().getState$animation();
        final Rect bounds = matchState.getCurrentBounds();
        this.sharedElementEntry.setClipPathInOverlay$animation((!this.sharedElementEntry.getShouldRenderInOverlay$animation() || bounds == null) ? null : this.sharedElementEntry.getOverlayClip().getClipPath(this.sharedElementEntry.getUserState(), bounds, $this$draw.getLayoutDirection(), DelegatableNodeKt.requireDensity(this)));
        GraphicsLayer layer = this.sharedElementEntry.getLayer();
        if (layer == null) {
            throw new IllegalArgumentException(("Error: Layer is null when accessed for shared bounds/element : " + getSharedElement().getKey() + ",target: " + this.sharedElementEntry.getBoundsAnimation().getTarget() + ", is attached: " + getIsAttached()).toString());
        }
        DrawScope.m5269recordJVtK1S4$default($this$draw, layer, 0L, new Function1<DrawScope, Unit>() { // from class: androidx.compose.animation.SharedBoundsNode.draw.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                invoke2(drawScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DrawScope $this$record) {
                $this$draw.drawContent();
            }
        }, 1, null);
        if (this.sharedElementEntry.getShouldRenderInPlace()) {
            GraphicsLayerKt.drawLayer($this$draw, layer);
        }
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() throws Throwable {
        getSharedElement().updateMatch$animation();
        ObserverModifierNodeKt.observeReads(this, getSharedElement().getObservingVisibilityChange$animation());
    }
}
