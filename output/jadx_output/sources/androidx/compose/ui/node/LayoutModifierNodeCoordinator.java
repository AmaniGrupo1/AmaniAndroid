package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.ApproachLayoutModifierNode;
import androidx.compose.ui.layout.ApproachMeasureScopeImpl;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import com.google.firebase.firestore.model.Values;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LayoutModifierNodeCoordinator.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000 H2\u00020\u0001:\u0002GHB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010#\u001a\u00020$H\u0016J\u0017\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0016H\u0016¢\u0006\u0004\b(\u0010)J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+H\u0016J\u0010\u0010-\u001a\u00020+2\u0006\u0010,\u001a\u00020+H\u0016J\u0010\u0010.\u001a\u00020+2\u0006\u0010/\u001a\u00020+H\u0016J\u0010\u00100\u001a\u00020+2\u0006\u0010/\u001a\u00020+H\u0016J'\u00101\u001a\u00020$2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207H\u0014¢\u0006\u0004\b8\u00109J:\u00101\u001a\u00020$2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0019\u0010:\u001a\u0015\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020$\u0018\u00010;¢\u0006\u0002\b=H\u0014¢\u0006\u0004\b8\u0010>J\b\u0010?\u001a\u00020$H\u0002J\u0010\u0010@\u001a\u00020+2\u0006\u0010A\u001a\u00020BH\u0016J\u001a\u0010C\u001a\u00020$2\u0006\u0010D\u001a\u00020E2\b\u0010F\u001a\u0004\u0018\u000107H\u0016R$\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR(\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\b\u001a\u0004\u0018\u00010\u001b@TX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006I"}, d2 = {"Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;", "Landroidx/compose/ui/node/NodeCoordinator;", "layoutNode", "Landroidx/compose/ui/node/LayoutNode;", "measureNode", "Landroidx/compose/ui/node/LayoutModifierNode;", "<init>", "(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V", Values.VECTOR_MAP_VECTORS_KEY, "layoutModifierNode", "getLayoutModifierNode", "()Landroidx/compose/ui/node/LayoutModifierNode;", "setLayoutModifierNode$ui", "(Landroidx/compose/ui/node/LayoutModifierNode;)V", "tail", "Landroidx/compose/ui/Modifier$Node;", "getTail", "()Landroidx/compose/ui/Modifier$Node;", "wrappedNonNull", "getWrappedNonNull", "()Landroidx/compose/ui/node/NodeCoordinator;", "lookaheadConstraints", "Landroidx/compose/ui/unit/Constraints;", "getLookaheadConstraints-DWUhwKw$ui", "()Landroidx/compose/ui/unit/Constraints;", "setLookaheadConstraints-_Sx5XlM$ui", "(Landroidx/compose/ui/unit/Constraints;)V", "Landroidx/compose/ui/node/LookaheadDelegate;", "lookaheadDelegate", "getLookaheadDelegate", "()Landroidx/compose/ui/node/LookaheadDelegate;", "setLookaheadDelegate", "(Landroidx/compose/ui/node/LookaheadDelegate;)V", "approachMeasureScope", "Landroidx/compose/ui/layout/ApproachMeasureScopeImpl;", "ensureLookaheadDelegateCreated", "", "measure", "Landroidx/compose/ui/layout/Placeable;", "constraints", "measure-BRTryo0", "(J)Landroidx/compose/ui/layout/Placeable;", "minIntrinsicWidth", "", "height", "maxIntrinsicWidth", "minIntrinsicHeight", "width", "maxIntrinsicHeight", "placeAt", "position", "Landroidx/compose/ui/unit/IntOffset;", "zIndex", "", "layer", "Landroidx/compose/ui/graphics/layer/GraphicsLayer;", "placeAt-f8xVGno", "(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V", "layerBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "Lkotlin/ExtensionFunctionType;", "(JFLkotlin/jvm/functions/Function1;)V", "onAfterPlaceAt", "calculateAlignmentLine", "alignmentLine", "Landroidx/compose/ui/layout/AlignmentLine;", "performDraw", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "graphicsLayer", "LookaheadDelegateForLayoutModifierNode", "Companion", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LayoutModifierNodeCoordinator extends NodeCoordinator {
    public static final int $stable = 0;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Paint modifierBoundsPaint;
    private ApproachMeasureScopeImpl approachMeasureScope;
    private LayoutModifierNode layoutModifierNode;
    private Constraints lookaheadConstraints;
    private LookaheadDelegate lookaheadDelegate;

    public LayoutModifierNodeCoordinator(LayoutNode layoutNode, LayoutModifierNode measureNode) {
        super(layoutNode);
        this.layoutModifierNode = measureNode;
        ApproachMeasureScopeImpl approachMeasureScopeImpl = null;
        this.lookaheadDelegate = layoutNode.getLookaheadRoot() != null ? new LookaheadDelegateForLayoutModifierNode() : null;
        Modifier.Node this_$iv = measureNode.getNode();
        if ((this_$iv.getKindSet() & NodeKind.m6460constructorimpl(512)) != 0) {
            Intrinsics.checkNotNull(measureNode, "null cannot be cast to non-null type androidx.compose.ui.layout.ApproachLayoutModifierNode");
            approachMeasureScopeImpl = new ApproachMeasureScopeImpl(this, (ApproachLayoutModifierNode) measureNode);
        }
        this.approachMeasureScope = approachMeasureScopeImpl;
    }

    public final LayoutModifierNode getLayoutModifierNode() {
        return this.layoutModifierNode;
    }

    public final void setLayoutModifierNode$ui(LayoutModifierNode value) {
        if (!Intrinsics.areEqual(value, this.layoutModifierNode)) {
            Modifier.Node this_$iv = value.getNode();
            if ((this_$iv.getKindSet() & NodeKind.m6460constructorimpl(512)) != 0) {
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type androidx.compose.ui.layout.ApproachLayoutModifierNode");
                ApproachMeasureScopeImpl it = this.approachMeasureScope;
                if (it == null) {
                    it = new ApproachMeasureScopeImpl(this, (ApproachLayoutModifierNode) value);
                } else {
                    it.setApproachNode((ApproachLayoutModifierNode) value);
                }
                this.approachMeasureScope = it;
            } else {
                this.approachMeasureScope = null;
            }
        }
        this.layoutModifierNode = value;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public Modifier.Node getTail() {
        return this.layoutModifierNode.getNode();
    }

    public final NodeCoordinator getWrappedNonNull() {
        NodeCoordinator wrapped$ui = getWrapped();
        Intrinsics.checkNotNull(wrapped$ui);
        return wrapped$ui;
    }

    /* JADX INFO: renamed from: getLookaheadConstraints-DWUhwKw$ui, reason: not valid java name and from getter */
    public final Constraints getLookaheadConstraints() {
        return this.lookaheadConstraints;
    }

    /* JADX INFO: renamed from: setLookaheadConstraints-_Sx5XlM$ui, reason: not valid java name */
    public final void m6361setLookaheadConstraints_Sx5XlM$ui(Constraints constraints) {
        this.lookaheadConstraints = constraints;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public LookaheadDelegate getLookaheadDelegate() {
        return this.lookaheadDelegate;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    protected void setLookaheadDelegate(LookaheadDelegate lookaheadDelegate) {
        this.lookaheadDelegate = lookaheadDelegate;
    }

    /* JADX INFO: compiled from: LayoutModifierNodeCoordinator.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000bH\u0016J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000bH\u0016¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/node/LayoutModifierNodeCoordinator$LookaheadDelegateForLayoutModifierNode;", "Landroidx/compose/ui/node/LookaheadDelegate;", "<init>", "(Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;)V", "measure", "Landroidx/compose/ui/layout/Placeable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-BRTryo0", "(J)Landroidx/compose/ui/layout/Placeable;", "calculateAlignmentLine", "", "alignmentLine", "Landroidx/compose/ui/layout/AlignmentLine;", "minIntrinsicWidth", "height", "maxIntrinsicWidth", "minIntrinsicHeight", "width", "maxIntrinsicHeight", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private final class LookaheadDelegateForLayoutModifierNode extends LookaheadDelegate {
        public LookaheadDelegateForLayoutModifierNode() {
            super(LayoutModifierNodeCoordinator.this);
        }

        @Override // androidx.compose.ui.layout.Measurable
        /* JADX INFO: renamed from: measure-BRTryo0 */
        public Placeable mo6141measureBRTryo0(long constraints) {
            LookaheadDelegateForLayoutModifierNode this_$iv = this;
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            this_$iv.m6206setMeasurementConstraintsBRTryo0(constraints);
            layoutModifierNodeCoordinator.m6361setLookaheadConstraints_Sx5XlM$ui(Constraints.m7445boximpl(constraints));
            LayoutModifierNode $this$measure_BRTryo0_u24lambda_u240_u240 = layoutModifierNodeCoordinator.getLayoutModifierNode();
            LookaheadDelegate lookaheadDelegate = layoutModifierNodeCoordinator.getWrappedNonNull().getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            this_$iv.set_measureResult($this$measure_BRTryo0_u24lambda_u240_u240.mo69measure3p2s80s(this, lookaheadDelegate, constraints));
            return this_$iv;
        }

        @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
        public int calculateAlignmentLine(AlignmentLine alignmentLine) {
            int it = LayoutModifierNodeCoordinatorKt.calculateAlignmentAndPlaceChildAsNeeded(this, alignmentLine);
            getCachedAlignmentLinesMap().set(alignmentLine, it);
            return it;
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public int minIntrinsicWidth(int height) {
            LayoutModifierNode $this$minIntrinsicWidth_u24lambda_u240 = LayoutModifierNodeCoordinator.this.getLayoutModifierNode();
            LookaheadDelegate lookaheadDelegate = LayoutModifierNodeCoordinator.this.getWrappedNonNull().getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            return $this$minIntrinsicWidth_u24lambda_u240.minIntrinsicWidth(this, lookaheadDelegate, height);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public int maxIntrinsicWidth(int height) {
            LayoutModifierNode $this$maxIntrinsicWidth_u24lambda_u240 = LayoutModifierNodeCoordinator.this.getLayoutModifierNode();
            LookaheadDelegate lookaheadDelegate = LayoutModifierNodeCoordinator.this.getWrappedNonNull().getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            return $this$maxIntrinsicWidth_u24lambda_u240.maxIntrinsicWidth(this, lookaheadDelegate, height);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public int minIntrinsicHeight(int width) {
            LayoutModifierNode $this$minIntrinsicHeight_u24lambda_u240 = LayoutModifierNodeCoordinator.this.getLayoutModifierNode();
            LookaheadDelegate lookaheadDelegate = LayoutModifierNodeCoordinator.this.getWrappedNonNull().getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            return $this$minIntrinsicHeight_u24lambda_u240.minIntrinsicHeight(this, lookaheadDelegate, width);
        }

        @Override // androidx.compose.ui.node.LookaheadDelegate, androidx.compose.ui.layout.IntrinsicMeasurable
        public int maxIntrinsicHeight(int width) {
            LayoutModifierNode $this$maxIntrinsicHeight_u24lambda_u240 = LayoutModifierNodeCoordinator.this.getLayoutModifierNode();
            LookaheadDelegate lookaheadDelegate = LayoutModifierNodeCoordinator.this.getWrappedNonNull().getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            return $this$maxIntrinsicHeight_u24lambda_u240.maxIntrinsicHeight(this, lookaheadDelegate, width);
        }
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public void ensureLookaheadDelegateCreated() {
        if (getLookaheadDelegate() == null) {
            setLookaheadDelegate(new LookaheadDelegateForLayoutModifierNode());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x009c  */
    @Override // androidx.compose.ui.layout.Measurable
    /* JADX INFO: renamed from: measure-BRTryo0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Placeable mo6141measureBRTryo0(long constraints) {
        long constraints2;
        MeasureResult measureResultMo69measure3p2s80s;
        if (getForceMeasureWithLookaheadConstraints()) {
            Constraints constraints3 = this.lookaheadConstraints;
            if (constraints3 == null) {
                throw new IllegalArgumentException("Lookahead constraints cannot be null in approach pass.".toString());
            }
            constraints2 = constraints3.getValue();
        } else {
            constraints2 = constraints;
        }
        LayoutModifierNodeCoordinator this_$iv = this;
        this_$iv.m6206setMeasurementConstraintsBRTryo0(constraints2);
        ApproachMeasureScopeImpl scope = this.approachMeasureScope;
        if (scope != null) {
            ApproachLayoutModifierNode $this$measure_BRTryo0_u24lambda_u241_u240_u240 = scope.getApproachNode();
            scope.setApproachMeasureRequired$ui($this$measure_BRTryo0_u24lambda_u241_u240_u240.mo75isMeasurementApproachInProgressozmzZPI(scope.mo6119getLookaheadSizeYbymL2g()) || !Constraints.m7450equalsimpl(constraints2, getLookaheadConstraints()));
            if (!scope.getApproachMeasureRequired()) {
                getWrappedNonNull().setForceMeasureWithLookaheadConstraints$ui(true);
            }
            final MeasureResult result = $this$measure_BRTryo0_u24lambda_u241_u240_u240.mo74approachMeasure3p2s80s(scope, getWrappedNonNull(), constraints2);
            getWrappedNonNull().setForceMeasureWithLookaheadConstraints$ui(false);
            int i = result.getWidth();
            LookaheadDelegate lookaheadDelegate = getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            if (i == lookaheadDelegate.getWidth()) {
                int i2 = result.getHeight();
                LookaheadDelegate lookaheadDelegate2 = getLookaheadDelegate();
                Intrinsics.checkNotNull(lookaheadDelegate2);
                boolean reachedLookaheadSize = i2 == lookaheadDelegate2.getHeight();
                if (!scope.getApproachMeasureRequired()) {
                    long jMo6149getSizeYbymL2g = getWrappedNonNull().mo6149getSizeYbymL2g();
                    LookaheadDelegate lookaheadDelegate3 = getWrappedNonNull().getLookaheadDelegate();
                    if (IntSize.m7673equalsimpl(jMo6149getSizeYbymL2g, lookaheadDelegate3 != null ? IntSize.m7668boximpl(lookaheadDelegate3.m6397getSizeYbymL2g$ui()) : null) && !reachedLookaheadSize) {
                        measureResultMo69measure3p2s80s = new MeasureResult(this) { // from class: androidx.compose.ui.node.LayoutModifierNodeCoordinator$measure$1$1$1$1
                            private final int height;
                            private final int width;

                            @Override // androidx.compose.ui.layout.MeasureResult
                            public Map<AlignmentLine, Integer> getAlignmentLines() {
                                return this.$$delegate_0.getAlignmentLines();
                            }

                            @Override // androidx.compose.ui.layout.MeasureResult
                            public Function1<RulerScope, Unit> getRulers() {
                                return this.$$delegate_0.getRulers();
                            }

                            @Override // androidx.compose.ui.layout.MeasureResult
                            public void placeChildren() {
                                this.$$delegate_0.placeChildren();
                            }

                            {
                                LookaheadDelegate lookaheadDelegate4 = this.getLookaheadDelegate();
                                Intrinsics.checkNotNull(lookaheadDelegate4);
                                this.width = lookaheadDelegate4.getWidth();
                                LookaheadDelegate lookaheadDelegate5 = this.getLookaheadDelegate();
                                Intrinsics.checkNotNull(lookaheadDelegate5);
                                this.height = lookaheadDelegate5.getHeight();
                            }

                            @Override // androidx.compose.ui.layout.MeasureResult
                            public int getWidth() {
                                return this.width;
                            }

                            @Override // androidx.compose.ui.layout.MeasureResult
                            public int getHeight() {
                                return this.height;
                            }
                        };
                    }
                    if (measureResultMo69measure3p2s80s == null) {
                    }
                }
                measureResultMo69measure3p2s80s = result;
                if (measureResultMo69measure3p2s80s == null) {
                }
            }
            setMeasureResult$ui(measureResultMo69measure3p2s80s);
            onMeasured();
            return this;
        }
        LayoutModifierNode $this$measure_BRTryo0_u24lambda_u241_u241 = getLayoutModifierNode();
        measureResultMo69measure3p2s80s = $this$measure_BRTryo0_u24lambda_u241_u241.mo69measure3p2s80s(this, getWrappedNonNull(), constraints2);
        setMeasureResult$ui(measureResultMo69measure3p2s80s);
        onMeasured();
        return this;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicWidth(int height) {
        ApproachMeasureScopeImpl $this$minIntrinsicWidth_u24lambda_u240 = this.approachMeasureScope;
        if ($this$minIntrinsicWidth_u24lambda_u240 != null) {
            ApproachLayoutModifierNode $this$minIntrinsicWidth_u24lambda_u240_u240 = $this$minIntrinsicWidth_u24lambda_u240.getApproachNode();
            return $this$minIntrinsicWidth_u24lambda_u240_u240.minApproachIntrinsicWidth($this$minIntrinsicWidth_u24lambda_u240, getWrappedNonNull(), height);
        }
        LayoutModifierNode $this$minIntrinsicWidth_u24lambda_u241 = this.layoutModifierNode;
        return $this$minIntrinsicWidth_u24lambda_u241.minIntrinsicWidth(this, getWrappedNonNull(), height);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicWidth(int height) {
        ApproachMeasureScopeImpl $this$maxIntrinsicWidth_u24lambda_u240 = this.approachMeasureScope;
        if ($this$maxIntrinsicWidth_u24lambda_u240 != null) {
            ApproachLayoutModifierNode $this$maxIntrinsicWidth_u24lambda_u240_u240 = $this$maxIntrinsicWidth_u24lambda_u240.getApproachNode();
            return $this$maxIntrinsicWidth_u24lambda_u240_u240.maxApproachIntrinsicWidth($this$maxIntrinsicWidth_u24lambda_u240, getWrappedNonNull(), height);
        }
        LayoutModifierNode $this$maxIntrinsicWidth_u24lambda_u241 = this.layoutModifierNode;
        return $this$maxIntrinsicWidth_u24lambda_u241.maxIntrinsicWidth(this, getWrappedNonNull(), height);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicHeight(int width) {
        ApproachMeasureScopeImpl $this$minIntrinsicHeight_u24lambda_u240 = this.approachMeasureScope;
        if ($this$minIntrinsicHeight_u24lambda_u240 != null) {
            ApproachLayoutModifierNode $this$minIntrinsicHeight_u24lambda_u240_u240 = $this$minIntrinsicHeight_u24lambda_u240.getApproachNode();
            return $this$minIntrinsicHeight_u24lambda_u240_u240.minApproachIntrinsicHeight($this$minIntrinsicHeight_u24lambda_u240, getWrappedNonNull(), width);
        }
        LayoutModifierNode $this$minIntrinsicHeight_u24lambda_u241 = this.layoutModifierNode;
        return $this$minIntrinsicHeight_u24lambda_u241.minIntrinsicHeight(this, getWrappedNonNull(), width);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicHeight(int width) {
        ApproachMeasureScopeImpl $this$maxIntrinsicHeight_u24lambda_u240 = this.approachMeasureScope;
        if ($this$maxIntrinsicHeight_u24lambda_u240 != null) {
            ApproachLayoutModifierNode $this$maxIntrinsicHeight_u24lambda_u240_u240 = $this$maxIntrinsicHeight_u24lambda_u240.getApproachNode();
            return $this$maxIntrinsicHeight_u24lambda_u240_u240.maxApproachIntrinsicHeight($this$maxIntrinsicHeight_u24lambda_u240, getWrappedNonNull(), width);
        }
        LayoutModifierNode $this$maxIntrinsicHeight_u24lambda_u241 = this.layoutModifierNode;
        return $this$maxIntrinsicHeight_u24lambda_u241.maxIntrinsicHeight(this, getWrappedNonNull(), width);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.Placeable
    /* JADX INFO: renamed from: placeAt-f8xVGno */
    protected void mo6204placeAtf8xVGno(long position, float zIndex, GraphicsLayer layer) {
        super.mo6204placeAtf8xVGno(position, zIndex, layer);
        onAfterPlaceAt();
    }

    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.Placeable
    /* JADX INFO: renamed from: placeAt-f8xVGno */
    protected void mo6142placeAtf8xVGno(long position, float zIndex, Function1<? super GraphicsLayerScope, Unit> layerBlock) {
        super.mo6142placeAtf8xVGno(position, zIndex, layerBlock);
        onAfterPlaceAt();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void onAfterPlaceAt() {
        boolean approachComplete;
        if (getIsShallowPlacing()) {
            return;
        }
        onPlaced();
        NodeCoordinator wrapped = getWrappedNonNull();
        ApproachMeasureScopeImpl it = this.approachMeasureScope;
        if (it != null) {
            ApproachLayoutModifierNode $this$onAfterPlaceAt_u24lambda_u240_u240 = it.getApproachNode();
            Placeable.PlacementScope $this$onAfterPlaceAt_u24lambda_u240_u240_u240 = getPlacementScope();
            LookaheadDelegate lookaheadDelegate = getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            if (!$this$onAfterPlaceAt_u24lambda_u240_u240.isPlacementApproachInProgress($this$onAfterPlaceAt_u24lambda_u240_u240_u240, lookaheadDelegate.getLookaheadLayoutCoordinates()) && !it.getApproachMeasureRequired()) {
                long j = mo6149getSizeYbymL2g();
                LookaheadDelegate lookaheadDelegate2 = getLookaheadDelegate();
                if (IntSize.m7673equalsimpl(j, lookaheadDelegate2 != null ? IntSize.m7668boximpl(lookaheadDelegate2.m6397getSizeYbymL2g$ui()) : null)) {
                    long jMo6149getSizeYbymL2g = wrapped.mo6149getSizeYbymL2g();
                    LookaheadDelegate lookaheadDelegate3 = wrapped.getLookaheadDelegate();
                    if (IntSize.m7673equalsimpl(jMo6149getSizeYbymL2g, lookaheadDelegate3 != null ? IntSize.m7668boximpl(lookaheadDelegate3.m6397getSizeYbymL2g$ui()) : null)) {
                        approachComplete = true;
                    }
                    wrapped.setForcePlaceWithLookaheadOffset$ui(approachComplete);
                }
            } else {
                approachComplete = false;
                wrapped.setForcePlaceWithLookaheadOffset$ui(approachComplete);
            }
        }
        wrapped.setPlacingForAlignment$ui(getIsPlacingForAlignment());
        getMeasureResult$ui().placeChildren();
        wrapped.setPlacingForAlignment$ui(false);
        wrapped.setForcePlaceWithLookaheadOffset$ui(false);
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public int calculateAlignmentLine(AlignmentLine alignmentLine) {
        LookaheadDelegate lookaheadDelegate = getLookaheadDelegate();
        return lookaheadDelegate != null ? lookaheadDelegate.getCachedAlignmentLine$ui(alignmentLine) : LayoutModifierNodeCoordinatorKt.calculateAlignmentAndPlaceChildAsNeeded(this, alignmentLine);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public void performDraw(Canvas canvas, GraphicsLayer graphicsLayer) {
        NodeCoordinator wrapped;
        getWrappedNonNull().draw(canvas, graphicsLayer);
        if (!LayoutNodeKt.requireOwner(getLayoutNode()).getShowLayoutBounds() || (wrapped = getWrapped()) == null) {
            return;
        }
        if (!IntSize.m7674equalsimpl0(mo6149getSizeYbymL2g(), wrapped.mo6149getSizeYbymL2g()) || !IntOffset.m7632equalsimpl0(wrapped.getPosition(), IntOffset.INSTANCE.m7644getZeronOccac())) {
            drawBorder(canvas, modifierBoundsPaint);
        }
    }

    /* JADX INFO: compiled from: LayoutModifierNodeCoordinator.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/node/LayoutModifierNodeCoordinator$Companion;", "", "<init>", "()V", "modifierBoundsPaint", "Landroidx/compose/ui/graphics/Paint;", "getModifierBoundsPaint", "()Landroidx/compose/ui/graphics/Paint;", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Paint getModifierBoundsPaint() {
            return LayoutModifierNodeCoordinator.modifierBoundsPaint;
        }
    }

    static {
        Paint paint = AndroidPaint_androidKt.Paint();
        paint.mo4573setColor8_81llA(Color.INSTANCE.m4724getBlue0d7_KjU());
        paint.setStrokeWidth(1.0f);
        paint.mo4577setStylek9PVt8s(PaintingStyle.INSTANCE.m4979getStrokeTiuSbCo());
        modifierBoundsPaint = paint;
    }
}
