package androidx.compose.ui.node;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMap;
import androidx.collection.ScatterSet;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.PlaceableKt;
import androidx.compose.ui.layout.Ruler;
import androidx.compose.ui.layout.RulerScope;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import androidx.compose.ui.layout.VerticalRuler;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import com.google.firebase.firestore.model.Values;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LookaheadDelegate.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0010$\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\b!\u0018\u0000 p2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002opB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010'\u001a\u00020 2\u0006\u0010(\u001a\u00020\u0010H\u0016J\u0011\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0086\u0002J\u0010\u00100\u001a\u00020-2\u0006\u0010.\u001a\u00020/H&J\r\u00108\u001a\u00020 H ¢\u0006\u0002\b9J\f\u0010E\u001a\u00020 *\u00020FH\u0004J\u0016\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020L2\u0006\u0010R\u001a\u00020PJ\u0018\u0010S\u001a\u00020 2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010Q\u001a\u00020LH\u0002J\u0010\u0010T\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020LH\u0002J\u0014\u0010U\u001a\u00020\u0010*\u00020\u00142\u0006\u0010V\u001a\u00020\u0014H\u0002J\u0015\u0010W\u001a\u00020 2\u0006\u0010Q\u001a\u00020LH\u0000¢\u0006\u0002\bXJ`\u0010Y\u001a\u0002052\u0006\u0010Z\u001a\u00020-2\u0006\u0010[\u001a\u00020-2\u0012\u0010\\\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020-0]2\u0019\u0010^\u001a\u0015\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e¢\u0006\u0002\b!2\u0017\u0010_\u001a\u0013\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u00020 0\u001e¢\u0006\u0002\b!H\u0016J\u0017\u0010`\u001a\u00020 2\b\u0010a\u001a\u0004\u0018\u000105H\u0000¢\u0006\u0002\bbJ+\u0010c\u001a\u00020 2\u0006\u0010d\u001a\u00020#2\b\b\u0002\u0010e\u001a\u00020\u00072\b\b\u0002\u0010f\u001a\u00020gH\u0002¢\u0006\u0004\bh\u0010iJ\u0010\u0010`\u001a\u00020 2\u0006\u0010d\u001a\u00020#H\u0002J\u001c\u0010j\u001a\u00020 2\u0012\u0010k\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140N0MH\u0002J\u0016\u0010l\u001a\u00020 2\u0006\u0010Q\u001a\u00020L2\u0006\u0010m\u001a\u00020PJ\u0016\u0010n\u001a\u00020 2\u0006\u0010Q\u001a\u00020L2\u0006\u0010m\u001a\u00020PR\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u0000X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u0004\u0018\u00010\u0000X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\fR\u0012\u0010\u000f\u001a\u00020\u0010X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0014X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0012\u0010\u0017\u001a\u00020\u0018X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\b\u0018\u00010\u001cR\u00020\u0000X\u0082\u000e¢\u0006\u0002\n\u0000R!\u0010\u001d\u001a\u0015\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e¢\u0006\u0002\b!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010$\u001a\u00020\u0010X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0012\"\u0004\b%\u0010&R\u0018\u0010)\u001a\u00060\u001cR\u00020\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+R\u001a\u00101\u001a\u00020\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0012\"\u0004\b3\u0010&R\u0012\u00104\u001a\u000205X \u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u0012\u0010:\u001a\u00020;X¦\u0004¢\u0006\u0006\u001a\u0004\b<\u0010=R\u001a\u0010>\u001a\u00020\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u0012\"\u0004\b@\u0010&R\u0011\u0010A\u001a\u00020B¢\u0006\b\n\u0000\u001a\u0004\bC\u0010DR\u0014\u0010G\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010\u0012R\u0010\u0010H\u001a\u0004\u0018\u00010IX\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010J\u001a\u001c\u0012\u0004\u0012\u00020L\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140N0M\u0018\u00010KX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006q"}, d2 = {"Landroidx/compose/ui/node/LookaheadCapablePlaceable;", "Landroidx/compose/ui/layout/Placeable;", "Landroidx/compose/ui/node/MeasureScopeWithLayoutNode;", "Landroidx/compose/ui/node/MotionReferencePlacementDelegate;", "<init>", "()V", "position", "Landroidx/compose/ui/unit/IntOffset;", "getPosition-nOcc-ac", "()J", "child", "getChild", "()Landroidx/compose/ui/node/LookaheadCapablePlaceable;", "parent", "getParent", "hasMeasureResult", "", "getHasMeasureResult", "()Z", "layoutNode", "Landroidx/compose/ui/node/LayoutNode;", "getLayoutNode", "()Landroidx/compose/ui/node/LayoutNode;", "coordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "getCoordinates", "()Landroidx/compose/ui/layout/LayoutCoordinates;", "_rulerScope", "Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;", "rulersLambda", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/RulerScope;", "", "Lkotlin/ExtensionFunctionType;", "cachedRulerPlaceableResult", "Landroidx/compose/ui/node/PlaceableResult;", "isPlacedUnderMotionFrameOfReference", "setPlacedUnderMotionFrameOfReference", "(Z)V", "updatePlacedUnderMotionFrameOfReference", "newMFR", "rulerScope", "getRulerScope", "()Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;", "get", "", "alignmentLine", "Landroidx/compose/ui/layout/AlignmentLine;", "calculateAlignmentLine", "isShallowPlacing", "isShallowPlacing$ui", "setShallowPlacing$ui", "measureResult", "Landroidx/compose/ui/layout/MeasureResult;", "getMeasureResult$ui", "()Landroidx/compose/ui/layout/MeasureResult;", "replace", "replace$ui", "alignmentLinesOwner", "Landroidx/compose/ui/node/AlignmentLinesOwner;", "getAlignmentLinesOwner", "()Landroidx/compose/ui/node/AlignmentLinesOwner;", "isPlacingForAlignment", "isPlacingForAlignment$ui", "setPlacingForAlignment$ui", "placementScope", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "getPlacementScope", "()Landroidx/compose/ui/layout/Placeable$PlacementScope;", "invalidateAlignmentLinesFromPositionChange", "Landroidx/compose/ui/node/NodeCoordinator;", "isLookingAhead", "rulerValues", "Landroidx/compose/ui/node/RulerTrackingMap;", "rulerReaders", "Landroidx/collection/MutableScatterMap;", "Landroidx/compose/ui/layout/Ruler;", "Landroidx/collection/MutableScatterSet;", "Landroidx/compose/ui/node/WeakReference;", "findRulerValue", "", "ruler", "defaultValue", "addRulerReader", "findAncestorRulerDefiner", "isLayoutNodeAncestor", "ancestor", "invalidateChildrenOfDefiningRuler", "invalidateChildrenOfDefiningRuler$ui", "layout", "width", "height", "alignmentLines", "", "rulers", "placementBlock", "captureRulersIfNeeded", "result", "captureRulersIfNeeded$ui", "captureRulers", "placeableResult", "positionOnScreen", "size", "Landroidx/compose/ui/unit/IntSize;", "captureRulers-OSxE8f4", "(Landroidx/compose/ui/node/PlaceableResult;JJ)V", "notifyRulerValueChange", "layoutNodes", "provideRulerValue", Values.VECTOR_MAP_VECTORS_KEY, "provideRelativeRulerValue", "ResettableRulerScope", "Companion", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class LookaheadCapablePlaceable extends Placeable implements MeasureScopeWithLayoutNode, MotionReferencePlacementDelegate {
    public static final int $stable = 0;
    private static final Function1<PlaceableResult, Unit> onCommitAffectingRuler = new Function1<PlaceableResult, Unit>() { // from class: androidx.compose.ui.node.LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(PlaceableResult placeableResult) {
            invoke2(placeableResult);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(PlaceableResult result) {
            if (result.isValidOwnerScope()) {
                result.getPlaceable().captureRulersIfNeeded(result);
            }
        }
    };
    private ResettableRulerScope _rulerScope;
    private PlaceableResult cachedRulerPlaceableResult;
    private boolean isPlacedUnderMotionFrameOfReference;
    private boolean isPlacingForAlignment;
    private boolean isShallowPlacing;
    private final Placeable.PlacementScope placementScope = PlaceableKt.PlacementScope(this);
    private MutableScatterMap<Ruler, MutableScatterSet<WeakReference<LayoutNode>>> rulerReaders;
    private RulerTrackingMap rulerValues;
    private Function1<? super RulerScope, Unit> rulersLambda;

    public abstract int calculateAlignmentLine(AlignmentLine alignmentLine);

    public abstract AlignmentLinesOwner getAlignmentLinesOwner();

    public abstract LookaheadCapablePlaceable getChild();

    public abstract LayoutCoordinates getCoordinates();

    public abstract boolean getHasMeasureResult();

    @Override // androidx.compose.ui.node.MeasureScopeWithLayoutNode
    public abstract LayoutNode getLayoutNode();

    public abstract MeasureResult getMeasureResult$ui();

    public abstract LookaheadCapablePlaceable getParent();

    /* JADX INFO: renamed from: getPosition-nOcc-ac, reason: not valid java name */
    public abstract long getPosition();

    public abstract void replace$ui();

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    /* JADX INFO: renamed from: isPlacedUnderMotionFrameOfReference, reason: from getter */
    public boolean getIsPlacedUnderMotionFrameOfReference() {
        return this.isPlacedUnderMotionFrameOfReference;
    }

    public void setPlacedUnderMotionFrameOfReference(boolean z) {
        this.isPlacedUnderMotionFrameOfReference = z;
    }

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    public void updatePlacedUnderMotionFrameOfReference(boolean newMFR) {
        LookaheadCapablePlaceable parent = getParent();
        LayoutNode parentNode = parent != null ? parent.getLayoutNode() : null;
        if (Intrinsics.areEqual(parentNode, getLayoutNode())) {
            setPlacedUnderMotionFrameOfReference(newMFR);
            return;
        }
        if ((parentNode != null ? parentNode.getLayoutState$ui() : null) != LayoutNode.LayoutState.LayingOut) {
            if ((parentNode != null ? parentNode.getLayoutState$ui() : null) != LayoutNode.LayoutState.LookaheadLayingOut) {
                return;
            }
        }
        setPlacedUnderMotionFrameOfReference(newMFR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ResettableRulerScope getRulerScope() {
        ResettableRulerScope resettableRulerScope = this._rulerScope;
        if (resettableRulerScope != null) {
            return resettableRulerScope;
        }
        ResettableRulerScope it = new ResettableRulerScope();
        this._rulerScope = it;
        return it;
    }

    @Override // androidx.compose.ui.layout.Measured
    public final int get(AlignmentLine alignmentLine) {
        int measuredPosition;
        int iM7634getYimpl;
        if (!getHasMeasureResult() || (measuredPosition = calculateAlignmentLine(alignmentLine)) == Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        if (alignmentLine instanceof VerticalAlignmentLine) {
            iM7634getYimpl = IntOffset.m7633getXimpl(getApparentToRealOffset());
        } else {
            iM7634getYimpl = IntOffset.m7634getYimpl(getApparentToRealOffset());
        }
        return iM7634getYimpl + measuredPosition;
    }

    /* JADX INFO: renamed from: isShallowPlacing$ui, reason: from getter */
    public final boolean getIsShallowPlacing() {
        return this.isShallowPlacing;
    }

    public final void setShallowPlacing$ui(boolean z) {
        this.isShallowPlacing = z;
    }

    /* JADX INFO: renamed from: isPlacingForAlignment$ui, reason: from getter */
    public final boolean getIsPlacingForAlignment() {
        return this.isPlacingForAlignment;
    }

    public final void setPlacingForAlignment$ui(boolean z) {
        this.isPlacingForAlignment = z;
    }

    public final Placeable.PlacementScope getPlacementScope() {
        return this.placementScope;
    }

    protected final void invalidateAlignmentLinesFromPositionChange(NodeCoordinator $this$invalidateAlignmentLinesFromPositionChange) {
        AlignmentLines alignmentLines;
        NodeCoordinator wrapped = $this$invalidateAlignmentLinesFromPositionChange.getWrapped();
        if (!Intrinsics.areEqual(wrapped != null ? wrapped.getLayoutNode() : null, $this$invalidateAlignmentLinesFromPositionChange.getLayoutNode())) {
            $this$invalidateAlignmentLinesFromPositionChange.getAlignmentLinesOwner().getAlignmentLines().onAlignmentsChanged();
            return;
        }
        AlignmentLinesOwner parentAlignmentLinesOwner = $this$invalidateAlignmentLinesFromPositionChange.getAlignmentLinesOwner().getParentAlignmentLinesOwner();
        if (parentAlignmentLinesOwner == null || (alignmentLines = parentAlignmentLinesOwner.getAlignmentLines()) == null) {
            return;
        }
        alignmentLines.onAlignmentsChanged();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public boolean isLookingAhead() {
        return false;
    }

    public final float findRulerValue(Ruler ruler, float defaultValue) {
        if (this.isPlacingForAlignment) {
            return defaultValue;
        }
        LookaheadCapablePlaceable p = this;
        while (true) {
            RulerTrackingMap rulerTrackingMap = p.rulerValues;
            float rulerValue = rulerTrackingMap != null ? rulerTrackingMap.getOrDefault(ruler, Float.NaN) : Float.NaN;
            if (!Float.isNaN(rulerValue)) {
                p.addRulerReader(getLayoutNode(), ruler);
                return ruler.calculateCoordinate$ui(rulerValue, p.getCoordinates(), getCoordinates());
            }
            LookaheadCapablePlaceable parent = p.getParent();
            if (parent == null) {
                p.addRulerReader(getLayoutNode(), ruler);
                return defaultValue;
            }
            p = parent;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void addRulerReader(LayoutNode layoutNode, Ruler ruler) {
        long j;
        long j2;
        char c;
        long j3;
        int $i$f$removeIf;
        int $i$f$removeIf2;
        ScatterMap this_$iv;
        long[] m$iv$iv;
        int $i$f$forEachValue;
        ScatterMap this_$iv2;
        long[] m$iv$iv2;
        int j$iv$iv;
        int $i$f$forEachValue2;
        int index$iv;
        int j$iv$iv2;
        int index$iv2;
        int j$iv$iv3;
        ScatterMap scatterMap = this.rulerReaders;
        if (scatterMap != null) {
            ScatterMap this_$iv3 = scatterMap;
            int $i$f$forEachValue3 = 0;
            Object[] v$iv = this_$iv3.values;
            j = 128;
            long[] m$iv$iv3 = this_$iv3.metadata;
            int lastIndex$iv$iv = m$iv$iv3.length - 2;
            j2 = 255;
            int i$iv$iv = 0;
            if (0 <= lastIndex$iv$iv) {
                while (true) {
                    long slot$iv$iv = m$iv$iv3[i$iv$iv];
                    int i = 8;
                    c = 7;
                    j3 = -9187201950435737472L;
                    if ((((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L)) != -9187201950435737472L) {
                        int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                        int j$iv$iv4 = 0;
                        while (j$iv$iv4 < bitCount$iv$iv) {
                            long value$iv$iv$iv = slot$iv$iv & 255;
                            if (value$iv$iv$iv < 128) {
                                int index$iv$iv = (i$iv$iv << 3) + j$iv$iv4;
                                int index$iv3 = index$iv$iv;
                                MutableScatterSet set = (MutableScatterSet) v$iv[index$iv3];
                                Object[] elements$iv = set.elements;
                                this_$iv2 = this_$iv3;
                                MutableScatterSet this_$iv$iv = set;
                                m$iv$iv2 = m$iv$iv3;
                                long[] m$iv$iv4 = this_$iv$iv.metadata;
                                int lastIndex$iv$iv2 = m$iv$iv4.length - 2;
                                int i$iv$iv2 = 0;
                                if (0 <= lastIndex$iv$iv2) {
                                    while (true) {
                                        long slot$iv$iv2 = m$iv$iv4[i$iv$iv2];
                                        j$iv$iv = j$iv$iv4;
                                        int index$iv$iv2 = index$iv$iv;
                                        Object[] elements$iv2 = elements$iv;
                                        $i$f$forEachValue2 = $i$f$forEachValue3;
                                        long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv2) << 7) & slot$iv$iv2 & (-9187201950435737472L);
                                        if ($this$maskEmptyOrDeleted$iv$iv$iv != -9187201950435737472L) {
                                            int bitCount$iv$iv2 = 8 - ((~(i$iv$iv2 - lastIndex$iv$iv2)) >>> 31);
                                            int j$iv$iv5 = 0;
                                            while (j$iv$iv5 < bitCount$iv$iv2) {
                                                long value$iv$iv$iv2 = slot$iv$iv2 & 255;
                                                if (value$iv$iv$iv2 < 128) {
                                                    int index$iv$iv3 = (i$iv$iv2 << 3) + j$iv$iv5;
                                                    WeakReference it = (WeakReference) elements$iv2[index$iv$iv3];
                                                    LayoutNode layoutNode2 = (LayoutNode) it.get();
                                                    if (layoutNode2 != null) {
                                                        j$iv$iv2 = j$iv$iv5;
                                                        boolean zIsAttached = layoutNode2.isAttached();
                                                        index$iv2 = index$iv3;
                                                        j$iv$iv3 = zIsAttached ? 1 : 0;
                                                        if (j$iv$iv3 != 0) {
                                                            set.removeElementAt(index$iv$iv3);
                                                        }
                                                    } else {
                                                        j$iv$iv2 = j$iv$iv5;
                                                        index$iv2 = index$iv3;
                                                    }
                                                    if (j$iv$iv3 != 0) {
                                                    }
                                                } else {
                                                    j$iv$iv2 = j$iv$iv5;
                                                    index$iv2 = index$iv3;
                                                }
                                                slot$iv$iv2 >>= i;
                                                j$iv$iv5 = j$iv$iv2 + 1;
                                                index$iv3 = index$iv2;
                                            }
                                            index$iv = index$iv3;
                                            int j$iv$iv6 = i;
                                            if (bitCount$iv$iv2 == j$iv$iv6) {
                                                break;
                                            }
                                        } else {
                                            index$iv = index$iv3;
                                        }
                                        if (i$iv$iv2 != lastIndex$iv$iv2) {
                                            i$iv$iv2++;
                                            $i$f$forEachValue3 = $i$f$forEachValue2;
                                            elements$iv = elements$iv2;
                                            j$iv$iv4 = j$iv$iv;
                                            index$iv$iv = index$iv$iv2;
                                            index$iv3 = index$iv;
                                            i = 8;
                                        }
                                    }
                                } else {
                                    j$iv$iv = j$iv$iv4;
                                    $i$f$forEachValue2 = $i$f$forEachValue3;
                                }
                            } else {
                                this_$iv2 = this_$iv3;
                                m$iv$iv2 = m$iv$iv3;
                                j$iv$iv = j$iv$iv4;
                                $i$f$forEachValue2 = $i$f$forEachValue3;
                            }
                            slot$iv$iv >>= 8;
                            j$iv$iv4 = j$iv$iv + 1;
                            i = 8;
                            this_$iv3 = this_$iv2;
                            m$iv$iv3 = m$iv$iv2;
                            $i$f$forEachValue3 = $i$f$forEachValue2;
                        }
                        this_$iv = this_$iv3;
                        m$iv$iv = m$iv$iv3;
                        $i$f$forEachValue = $i$f$forEachValue3;
                        if (bitCount$iv$iv != i) {
                            break;
                        }
                    } else {
                        this_$iv = this_$iv3;
                        m$iv$iv = m$iv$iv3;
                        $i$f$forEachValue = $i$f$forEachValue3;
                    }
                    if (i$iv$iv == lastIndex$iv$iv) {
                        break;
                    }
                    i$iv$iv++;
                    this_$iv3 = this_$iv;
                    m$iv$iv3 = m$iv$iv;
                    $i$f$forEachValue3 = $i$f$forEachValue;
                }
            } else {
                c = 7;
                j3 = -9187201950435737472L;
            }
        } else {
            j = 128;
            j2 = 255;
            c = 7;
            j3 = -9187201950435737472L;
        }
        MutableScatterMap<Ruler, MutableScatterSet<WeakReference<LayoutNode>>> mutableScatterMap = this.rulerReaders;
        if (mutableScatterMap != null) {
            int $i$f$removeIf3 = 0;
            MutableScatterMap<Ruler, MutableScatterSet<WeakReference<LayoutNode>>> this_$iv$iv2 = mutableScatterMap;
            long[] m$iv$iv5 = this_$iv$iv2.metadata;
            int lastIndex$iv$iv3 = m$iv$iv5.length - 2;
            int i$iv$iv3 = 0;
            if (0 <= lastIndex$iv$iv3) {
                while (true) {
                    long slot$iv$iv3 = m$iv$iv5[i$iv$iv3];
                    long $this$maskEmptyOrDeleted$iv$iv$iv2 = ((~slot$iv$iv3) << c) & slot$iv$iv3 & j3;
                    if ($this$maskEmptyOrDeleted$iv$iv$iv2 != j3) {
                        int bitCount$iv$iv3 = 8 - ((~(i$iv$iv3 - lastIndex$iv$iv3)) >>> 31);
                        int j$iv$iv7 = 0;
                        while (j$iv$iv7 < bitCount$iv$iv3) {
                            long value$iv$iv$iv3 = slot$iv$iv3 & j2;
                            if (value$iv$iv$iv3 < j) {
                                int index$iv$iv4 = (i$iv$iv3 << 3) + j$iv$iv7;
                                Object obj = mutableScatterMap.keys[index$iv$iv4];
                                $i$f$removeIf2 = $i$f$removeIf3;
                                MutableScatterSet value = (MutableScatterSet) mutableScatterMap.values[index$iv$iv4];
                                if (value.isEmpty()) {
                                    mutableScatterMap.removeValueAt(index$iv$iv4);
                                }
                            } else {
                                $i$f$removeIf2 = $i$f$removeIf3;
                            }
                            slot$iv$iv3 >>= 8;
                            j$iv$iv7++;
                            $i$f$removeIf3 = $i$f$removeIf2;
                        }
                        $i$f$removeIf = $i$f$removeIf3;
                        if (bitCount$iv$iv3 != 8) {
                            break;
                        }
                    } else {
                        $i$f$removeIf = $i$f$removeIf3;
                    }
                    if (i$iv$iv3 == lastIndex$iv$iv3) {
                        break;
                    }
                    i$iv$iv3++;
                    $i$f$removeIf3 = $i$f$removeIf;
                }
            }
        }
        MutableScatterMap<Ruler, MutableScatterSet<WeakReference<LayoutNode>>> mutableScatterMap2 = this.rulerReaders;
        DefaultConstructorMarker defaultConstructorMarker = null;
        if (mutableScatterMap2 == null) {
            mutableScatterMap2 = new MutableScatterMap<>(0, 1, defaultConstructorMarker);
            this.rulerReaders = mutableScatterMap2;
        }
        MutableScatterMap<Ruler, MutableScatterSet<WeakReference<LayoutNode>>> mutableScatterMap3 = mutableScatterMap2;
        Object obj2 = mutableScatterMap3.get(ruler);
        if (obj2 == null) {
            MutableScatterSet<WeakReference<LayoutNode>> mutableScatterSet = new MutableScatterSet<>(0, 1, defaultConstructorMarker);
            mutableScatterMap3.set(ruler, mutableScatterSet);
            obj2 = mutableScatterSet;
        }
        Object it$iv = obj2;
        ((MutableScatterSet) it$iv).plusAssign(new WeakReference<>(layoutNode));
    }

    private final LookaheadCapablePlaceable findAncestorRulerDefiner(Ruler ruler) {
        LookaheadCapablePlaceable p = this;
        while (true) {
            RulerTrackingMap rulerTrackingMap = p.rulerValues;
            boolean z = false;
            if (rulerTrackingMap != null && rulerTrackingMap.contains(ruler)) {
                z = true;
            }
            if (z) {
                return p;
            }
            LookaheadCapablePlaceable parent = p.getParent();
            if (parent == null) {
                return p;
            }
            p = parent;
        }
    }

    private final boolean isLayoutNodeAncestor(LayoutNode $this$isLayoutNodeAncestor, LayoutNode ancestor) {
        if ($this$isLayoutNodeAncestor == ancestor) {
            return true;
        }
        LayoutNode parent$ui = $this$isLayoutNodeAncestor.getParent$ui();
        if (parent$ui != null) {
            return isLayoutNodeAncestor(parent$ui, ancestor);
        }
        return false;
    }

    public final void invalidateChildrenOfDefiningRuler$ui(Ruler ruler) {
        LookaheadCapablePlaceable definer = findAncestorRulerDefiner(ruler);
        MutableScatterMap<Ruler, MutableScatterSet<WeakReference<LayoutNode>>> mutableScatterMap = definer.rulerReaders;
        MutableScatterSet<WeakReference<LayoutNode>> mutableScatterSetRemove = mutableScatterMap != null ? mutableScatterMap.remove(ruler) : null;
        if (mutableScatterSetRemove != null) {
            notifyRulerValueChange(mutableScatterSetRemove);
        }
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public MeasureResult layout(final int width, final int height, final Map<AlignmentLine, Integer> alignmentLines, final Function1<? super RulerScope, Unit> rulers, final Function1<? super Placeable.PlacementScope, Unit> placementBlock) {
        boolean value$iv$iv = (width & (-16777216)) == 0 && ((-16777216) & height) == 0;
        if (!value$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("Size(" + width + " x " + height + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new MeasureResult() { // from class: androidx.compose.ui.node.LookaheadCapablePlaceable.layout.1
            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: getWidth, reason: from getter */
            public int get$w() {
                return width;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: getHeight, reason: from getter */
            public int get$h() {
                return height;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public Map<AlignmentLine, Integer> getAlignmentLines() {
                return alignmentLines;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public Function1<RulerScope, Unit> getRulers() {
                return rulers;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public void placeChildren() {
                placementBlock.invoke(this.getPlacementScope());
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void captureRulersIfNeeded$ui(MeasureResult result) {
        ScatterMap this_$iv;
        int i;
        ScatterMap this_$iv2;
        boolean recaptureRulers;
        MutableScatterMap<Ruler, MutableScatterSet<WeakReference<LayoutNode>>> mutableScatterMap = this.rulerReaders;
        int i2 = 8;
        if (result != null) {
            if (this.isPlacingForAlignment) {
                return;
            }
            Function1<RulerScope, Unit> rulers = result.getRulers();
            if (rulers == null) {
                if (mutableScatterMap != null) {
                    MutableScatterMap<Ruler, MutableScatterSet<WeakReference<LayoutNode>>> this_$iv3 = mutableScatterMap;
                    Object[] v$iv = this_$iv3.values;
                    long[] m$iv$iv = this_$iv3.metadata;
                    int lastIndex$iv$iv = m$iv$iv.length - 2;
                    int i$iv$iv = 0;
                    if (0 <= lastIndex$iv$iv) {
                        while (true) {
                            long slot$iv$iv = m$iv$iv[i$iv$iv];
                            Function1<RulerScope, Unit> function1 = rulers;
                            long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
                            if ($this$maskEmptyOrDeleted$iv$iv$iv != -9187201950435737472L) {
                                int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                                for (int j$iv$iv = 0; j$iv$iv < bitCount$iv$iv; j$iv$iv++) {
                                    long value$iv$iv$iv = slot$iv$iv & 255;
                                    if (value$iv$iv$iv < 128) {
                                        int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                                        notifyRulerValueChange((MutableScatterSet) v$iv[index$iv$iv]);
                                    }
                                    slot$iv$iv >>= 8;
                                }
                                if (bitCount$iv$iv != 8) {
                                    break;
                                }
                                if (i$iv$iv == lastIndex$iv$iv) {
                                    break;
                                }
                                i$iv$iv++;
                                rulers = function1;
                            }
                        }
                    }
                    mutableScatterMap.clear();
                    return;
                }
                return;
            }
            boolean recaptureRulers2 = this.rulersLambda != rulers;
            long positionOnScreen = IntOffset.INSTANCE.m7643getMaxnOccac();
            long size = IntSize.INSTANCE.m7681getZeroYbymL2g();
            if (!recaptureRulers2 && getRulerScope().getCoordinatesAccessed()) {
                LayoutCoordinates coordinates = getCoordinates();
                positionOnScreen = IntOffsetKt.m7650roundk4lQ0M(LayoutCoordinatesKt.positionOnScreen(coordinates));
                size = coordinates.mo6149getSizeYbymL2g();
                recaptureRulers = (IntOffset.m7632equalsimpl0(positionOnScreen, getRulerScope().getPositionOnScreen()) && IntSize.m7674equalsimpl0(size, getRulerScope().getSize())) ? false : true;
            } else {
                recaptureRulers = recaptureRulers2;
            }
            if (recaptureRulers) {
                PlaceableResult placeableResult = this.cachedRulerPlaceableResult;
                if (placeableResult == null) {
                    placeableResult = new PlaceableResult(result, this);
                    this.cachedRulerPlaceableResult = placeableResult;
                } else {
                    placeableResult.setResult(result);
                }
                m6387captureRulersOSxE8f4(placeableResult, positionOnScreen, size);
                this.rulersLambda = result.getRulers();
                return;
            }
            return;
        }
        if (mutableScatterMap != null) {
            MutableScatterMap<Ruler, MutableScatterSet<WeakReference<LayoutNode>>> this_$iv4 = mutableScatterMap;
            Object[] v$iv2 = this_$iv4.values;
            long[] m$iv$iv2 = this_$iv4.metadata;
            int lastIndex$iv$iv2 = m$iv$iv2.length - 2;
            int i$iv$iv2 = 0;
            if (0 <= lastIndex$iv$iv2) {
                while (true) {
                    long slot$iv$iv2 = m$iv$iv2[i$iv$iv2];
                    int i3 = i2;
                    long slot$iv$iv3 = slot$iv$iv2;
                    if ((((~slot$iv$iv2) << 7) & slot$iv$iv2 & (-9187201950435737472L)) == -9187201950435737472L) {
                        this_$iv = this_$iv4;
                        i = i3;
                    } else {
                        int bitCount$iv$iv2 = 8 - ((~(i$iv$iv2 - lastIndex$iv$iv2)) >>> 31);
                        int j$iv$iv2 = 0;
                        while (j$iv$iv2 < bitCount$iv$iv2) {
                            long value$iv$iv$iv2 = slot$iv$iv3 & 255;
                            if (!(value$iv$iv$iv2 < 128)) {
                                this_$iv2 = this_$iv4;
                            } else {
                                int index$iv$iv2 = (i$iv$iv2 << 3) + j$iv$iv2;
                                this_$iv2 = this_$iv4;
                                notifyRulerValueChange((MutableScatterSet) v$iv2[index$iv$iv2]);
                            }
                            slot$iv$iv3 >>= i3;
                            j$iv$iv2++;
                            this_$iv4 = this_$iv2;
                        }
                        this_$iv = this_$iv4;
                        i = i3;
                        if (bitCount$iv$iv2 != i) {
                            break;
                        }
                    }
                    if (i$iv$iv2 == lastIndex$iv$iv2) {
                        break;
                    }
                    i$iv$iv2++;
                    i2 = i;
                    this_$iv4 = this_$iv;
                }
            }
        }
        if (mutableScatterMap != null) {
            mutableScatterMap.clear();
        }
        RulerTrackingMap rulerTrackingMap = this.rulerValues;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.clear();
        }
    }

    /* JADX INFO: renamed from: captureRulers-OSxE8f4$default, reason: not valid java name */
    static /* synthetic */ void m6388captureRulersOSxE8f4$default(LookaheadCapablePlaceable lookaheadCapablePlaceable, PlaceableResult placeableResult, long j, long j2, int i, Object obj) {
        long jM7643getMaxnOccac;
        long jM7681getZeroYbymL2g;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: captureRulers-OSxE8f4");
        }
        if ((i & 2) == 0) {
            jM7643getMaxnOccac = j;
        } else {
            jM7643getMaxnOccac = IntOffset.INSTANCE.m7643getMaxnOccac();
        }
        if ((i & 4) == 0) {
            jM7681getZeroYbymL2g = j2;
        } else {
            jM7681getZeroYbymL2g = IntSize.INSTANCE.m7681getZeroYbymL2g();
        }
        lookaheadCapablePlaceable.m6387captureRulersOSxE8f4(placeableResult, jM7643getMaxnOccac, jM7681getZeroYbymL2g);
    }

    /* JADX INFO: renamed from: captureRulers-OSxE8f4, reason: not valid java name */
    private final void m6387captureRulersOSxE8f4(final PlaceableResult placeableResult, final long positionOnScreen, final long size) {
        OwnerSnapshotObserver this_$iv;
        MutableScatterMap<Ruler, MutableScatterSet<WeakReference<LayoutNode>>> mutableScatterMap = this.rulerReaders;
        RulerTrackingMap it = this.rulerValues;
        if (it == null) {
            it = new RulerTrackingMap();
            this.rulerValues = it;
        }
        Owner owner = getLayoutNode().getOwner();
        if (owner != null && (this_$iv = owner.getSnapshotObserver()) != null) {
            this_$iv.observer.observeReads(placeableResult, onCommitAffectingRuler, new Function0<Unit>() { // from class: androidx.compose.ui.node.LookaheadCapablePlaceable$captureRulers$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.this$0.getRulerScope().setCoordinatesAccessed(false);
                    this.this$0.getRulerScope().m6392setPositionOnScreengyyYBs(positionOnScreen);
                    this.this$0.getRulerScope().m6393setSizeozmzZPI(size);
                    Function1<RulerScope, Unit> rulers = placeableResult.getResult().getRulers();
                    if (rulers != null) {
                        rulers.invoke(this.this$0.getRulerScope());
                    }
                }
            });
        }
        it.notifyChanged(isLookingAhead(), this, mutableScatterMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void captureRulersIfNeeded(PlaceableResult placeableResult) {
        int i;
        if (this.isPlacingForAlignment) {
            return;
        }
        Function1<RulerScope, Unit> rulers = placeableResult.getResult().getRulers();
        MutableScatterMap<Ruler, MutableScatterSet<WeakReference<LayoutNode>>> mutableScatterMap = this.rulerReaders;
        if (rulers != null) {
            m6388captureRulersOSxE8f4$default(this, placeableResult, 0L, 0L, 6, null);
            this.rulersLambda = rulers;
            return;
        }
        if (mutableScatterMap != null) {
            MutableScatterMap<Ruler, MutableScatterSet<WeakReference<LayoutNode>>> this_$iv = mutableScatterMap;
            int $i$f$forEachValue = 0;
            Object[] v$iv = this_$iv.values;
            long[] m$iv$iv = this_$iv.metadata;
            int lastIndex$iv$iv = m$iv$iv.length - 2;
            int i$iv$iv = 0;
            if (0 <= lastIndex$iv$iv) {
                while (true) {
                    long slot$iv$iv = m$iv$iv[i$iv$iv];
                    ScatterMap this_$iv2 = this_$iv;
                    int $i$f$forEachValue2 = $i$f$forEachValue;
                    if ((((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8;
                        int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                        int j$iv$iv = 0;
                        while (j$iv$iv < bitCount$iv$iv) {
                            long value$iv$iv$iv = 255 & slot$iv$iv;
                            if (!(value$iv$iv$iv < 128)) {
                                i = i2;
                            } else {
                                int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                                i = i2;
                                notifyRulerValueChange((MutableScatterSet) v$iv[index$iv$iv]);
                            }
                            slot$iv$iv >>= i;
                            j$iv$iv++;
                            i2 = i;
                        }
                        if (bitCount$iv$iv != i2) {
                            break;
                        }
                        if (i$iv$iv == lastIndex$iv$iv) {
                            break;
                        }
                        i$iv$iv++;
                        this_$iv = this_$iv2;
                        $i$f$forEachValue = $i$f$forEachValue2;
                    }
                }
            }
            mutableScatterMap.clear();
        }
    }

    private final void notifyRulerValueChange(MutableScatterSet<WeakReference<LayoutNode>> layoutNodes) {
        ScatterSet this_$iv;
        ScatterSet this_$iv2;
        MutableScatterSet<WeakReference<LayoutNode>> this_$iv3 = layoutNodes;
        Object[] elements$iv = this_$iv3.elements;
        long[] m$iv$iv = this_$iv3.metadata;
        int lastIndex$iv$iv = m$iv$iv.length - 2;
        int i$iv$iv = 0;
        if (0 > lastIndex$iv$iv) {
            return;
        }
        while (true) {
            long slot$iv$iv = m$iv$iv[i$iv$iv];
            long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
            if ($this$maskEmptyOrDeleted$iv$iv$iv == -9187201950435737472L) {
                this_$iv = this_$iv3;
            } else {
                int i = 8;
                int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                int j$iv$iv = 0;
                while (j$iv$iv < bitCount$iv$iv) {
                    long value$iv$iv$iv = 255 & slot$iv$iv;
                    int i2 = i;
                    if (!(value$iv$iv$iv < 128)) {
                        this_$iv2 = this_$iv3;
                    } else {
                        int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                        WeakReference layoutNodeRef = (WeakReference) elements$iv[index$iv$iv];
                        LayoutNode layoutNode = (LayoutNode) layoutNodeRef.get();
                        if (layoutNode == null) {
                            this_$iv2 = this_$iv3;
                        } else if (isLookingAhead()) {
                            this_$iv2 = this_$iv3;
                            layoutNode.requestLookaheadRelayout$ui(false);
                        } else {
                            this_$iv2 = this_$iv3;
                            layoutNode.requestRelayout$ui(false);
                        }
                    }
                    slot$iv$iv >>= i2;
                    j$iv$iv++;
                    i = i2;
                    this_$iv3 = this_$iv2;
                }
                this_$iv = this_$iv3;
                if (bitCount$iv$iv != i) {
                    return;
                }
            }
            if (i$iv$iv == lastIndex$iv$iv) {
                return;
            }
            i$iv$iv++;
            this_$iv3 = this_$iv;
        }
    }

    public final void provideRulerValue(Ruler ruler, float value) {
        RulerTrackingMap it = this.rulerValues;
        if (it == null) {
            it = new RulerTrackingMap();
            this.rulerValues = it;
        }
        it.set(ruler, value);
    }

    public final void provideRelativeRulerValue(Ruler ruler, float value) {
        float width;
        RulerTrackingMap it = this.rulerValues;
        if (it == null) {
            it = new RulerTrackingMap();
            this.rulerValues = it;
        }
        if (getLayoutDirection() == LayoutDirection.Ltr) {
            width = value;
        } else {
            width = getWidth() - value;
        }
        it.set(ruler, width);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: LookaheadDelegate.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0096\u0004J\u0015\u0010\u001e\u001a\u00020\u001a*\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001dH\u0096\u0004R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0013\u0010\r\"\u0004\b\u0014\u0010\u000fR\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010 \u001a\u00020\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0014\u0010#\u001a\u00020\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b$\u0010\"¨\u0006%"}, d2 = {"Landroidx/compose/ui/node/LookaheadCapablePlaceable$ResettableRulerScope;", "Landroidx/compose/ui/layout/RulerScope;", "<init>", "(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V", "coordinatesAccessed", "", "getCoordinatesAccessed", "()Z", "setCoordinatesAccessed", "(Z)V", "positionOnScreen", "Landroidx/compose/ui/unit/IntOffset;", "getPositionOnScreen-nOcc-ac", "()J", "setPositionOnScreen--gyyYBs", "(J)V", "J", "size", "Landroidx/compose/ui/unit/IntSize;", "getSize-YbymL2g", "setSize-ozmzZPI", "coordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "getCoordinates", "()Landroidx/compose/ui/layout/LayoutCoordinates;", "provides", "", "Landroidx/compose/ui/layout/Ruler;", Values.VECTOR_MAP_VECTORS_KEY, "", "providesRelative", "Landroidx/compose/ui/layout/VerticalRuler;", "density", "getDensity", "()F", "fontScale", "getFontScale", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
    final class ResettableRulerScope implements RulerScope {
        private boolean coordinatesAccessed;
        private long positionOnScreen = IntOffset.INSTANCE.m7643getMaxnOccac();
        private long size = IntSize.INSTANCE.m7681getZeroYbymL2g();

        public ResettableRulerScope() {
        }

        public final boolean getCoordinatesAccessed() {
            return this.coordinatesAccessed;
        }

        public final void setCoordinatesAccessed(boolean z) {
            this.coordinatesAccessed = z;
        }

        /* JADX INFO: renamed from: getPositionOnScreen-nOcc-ac, reason: not valid java name and from getter */
        public final long getPositionOnScreen() {
            return this.positionOnScreen;
        }

        /* JADX INFO: renamed from: setPositionOnScreen--gyyYBs, reason: not valid java name */
        public final void m6392setPositionOnScreengyyYBs(long j) {
            this.positionOnScreen = j;
        }

        /* JADX INFO: renamed from: getSize-YbymL2g, reason: not valid java name and from getter */
        public final long getSize() {
            return this.size;
        }

        /* JADX INFO: renamed from: setSize-ozmzZPI, reason: not valid java name */
        public final void m6393setSizeozmzZPI(long j) {
            this.size = j;
        }

        @Override // androidx.compose.ui.layout.RulerScope
        public LayoutCoordinates getCoordinates() {
            this.coordinatesAccessed = true;
            LayoutCoordinates coords = LookaheadCapablePlaceable.this.getCoordinates();
            if (IntOffset.m7632equalsimpl0(this.positionOnScreen, IntOffset.INSTANCE.m7643getMaxnOccac())) {
                this.positionOnScreen = IntOffsetKt.m7650roundk4lQ0M(LayoutCoordinatesKt.positionOnScreen(coords));
                this.size = coords.mo6149getSizeYbymL2g();
            }
            LookaheadCapablePlaceable.this.getLayoutNode().getLayoutDelegate().onCoordinatesUsed();
            return coords;
        }

        @Override // androidx.compose.ui.layout.RulerScope
        public void provides(Ruler $this$provides, float value) {
            LookaheadCapablePlaceable.this.provideRulerValue($this$provides, value);
        }

        @Override // androidx.compose.ui.layout.RulerScope
        public void providesRelative(VerticalRuler $this$providesRelative, float value) {
            LookaheadCapablePlaceable.this.provideRelativeRulerValue($this$providesRelative, value);
        }

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            return LookaheadCapablePlaceable.this.getDensity();
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public float getFontScale() {
            return LookaheadCapablePlaceable.this.getFontScale();
        }
    }
}
