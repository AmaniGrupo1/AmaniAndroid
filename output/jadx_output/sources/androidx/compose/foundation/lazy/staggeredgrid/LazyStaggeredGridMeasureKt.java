package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LazyStaggeredGridMeasure.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000¬\u0001\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0016\u001a5\u0010\u0002\u001a\u0002H\u0003\"\u0004\b\u0000\u0010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00030\u0007¢\u0006\u0002\b\bH\u0082\b¢\u0006\u0002\u0010\t\u001a\u001d\u0010\n\u001a\u00020\u000b*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\fH\u0002¢\u0006\u0002\u0010\u000f\u001a\u0017\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0013H\u0082\b\u001a£\u0001\u0010\u0014\u001a\u00020\u0015*\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020\u001a2\u0006\u0010'\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u00012\b\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u000200H\u0000¢\u0006\u0004\b1\u00102\u001a,\u00103\u001a\u00020\u0015*\u0002042\u0006\u00105\u001a\u00020\u001a2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u0002072\u0006\u00109\u001a\u00020\u0001H\u0002\u001aK\u0010:\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0019*\u0002042\u0012\u0010;\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\f2\u0006\u0010<\u001a\u0002072\u0006\u0010=\u001a\u00020\u001a2\u0006\u0010>\u001a\u00020\u001a2\u0006\u0010?\u001a\u00020\u001aH\u0002¢\u0006\u0002\u0010@\u001aG\u0010A\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0019*\u0002042\u0006\u0010B\u001a\u00020\u001a2\u0006\u0010C\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020\u00012\u0018\u0010D\u001a\u0014\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00110EH\u0082\b\u001aR\u0010F\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0019*\u0002042\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00110\u00072!\u0010G\u001a\u001d\u0012\u0013\u0012\u00110\u001a¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(J\u0012\u0004\u0012\u00020\u00010\u00072\u0006\u0010K\u001a\u00020\u0001H\u0082\b\u001a7\u0010L\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00192\b\b\u0002\u0010M\u001a\u00020\u00012\u0012\u0010N\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u00110\u0007H\u0082\b\u001a(\u0010O\u001a\u00020\u0011*\u00020P2\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00110\u0007H\u0082\b¢\u0006\u0004\bQ\u0010R\u001a\u0014\u0010S\u001a\u00020\u0011*\u0002072\u0006\u0010T\u001a\u00020\u001aH\u0002\u001a\u001b\u0010U\u001a\u00020\u001a*\u0002072\u0006\u0010V\u001a\u00020PH\u0002¢\u0006\u0004\bW\u0010X\u001a\u0016\u0010Y\u001a\u00020\u001a*\u0002072\b\b\u0002\u0010Z\u001a\u00020\u001aH\u0000\u001a2\u0010[\u001a\u00020\u001a\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\f2\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u001a0\u0007H\u0082\b¢\u0006\u0002\u0010\\\u001a\f\u0010]\u001a\u00020\u001a*\u000207H\u0002\u001a!\u0010^\u001a\u000207*\u0002072\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001a0\u0007H\u0082\b\u001a\u001c\u0010_\u001a\u00020\u0011*\u0002042\u0006\u0010`\u001a\u0002072\u0006\u0010a\u001a\u00020\u001aH\u0002\u001a\u001c\u0010b\u001a\u00020\u001a*\u0002042\u0006\u0010c\u001a\u00020\u001a2\u0006\u0010d\u001a\u00020\u001aH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010e\u001a\u00020\u001aX\u0082T¢\u0006\u0002\n\u0000¨\u0006f"}, d2 = {"DebugLoggingEnabled", "", "withDebugLogging", ExifInterface.GPS_DIRECTION_TRUE, "scope", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "debugRender", "", "", "Lkotlin/collections/ArrayDeque;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;", "([Lkotlin/collections/ArrayDeque;)Ljava/lang/String;", "debugLog", "", "message", "Lkotlin/Function0;", "measureStaggeredGrid", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;", "state", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;", "pinnedItems", "", "", "itemProvider", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;", "resolvedSlots", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "isVertical", "reverseLayout", "contentOffset", "Landroidx/compose/ui/unit/IntOffset;", "mainAxisAvailableSize", "mainAxisSpacing", "beforeContentPadding", "afterContentPadding", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "isInLookaheadScope", "isLookingAhead", "approachLayoutInfo", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;", "graphicsContext", "Landroidx/compose/ui/graphics/GraphicsContext;", "measureStaggeredGrid-C6celF4", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Ljava/util/List;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;JZZJIIIILkotlinx/coroutines/CoroutineScope;ZZLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;Landroidx/compose/ui/graphics/GraphicsContext;)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;", "measure", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;", "initialScrollDelta", "initialItemIndices", "", "initialItemOffsets", "canRestartMeasure", "calculateVisibleItems", "measuredItems", "itemScrollOffsets", "mainAxisLayoutSize", "minOffset", "maxOffset", "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[Lkotlin/collections/ArrayDeque;[IIII)Ljava/util/List;", "itemsRetainedForLookahead", "lastVisibleItemIndex", "itemsCount", "position", "Lkotlin/Function2;", "calculateExtraItems", "filter", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "itemIndex", "beforeVisibleBounds", "fastForEach", "reverse", "action", "forEach", "Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;", "forEach-nIS5qE8", "(JLkotlin/jvm/functions/Function1;)V", "offsetBy", "delta", "maxInRange", "indexRange", "maxInRange-jy6DScQ", "([IJ)I", "indexOfMinValue", "minBound", "indexOfMinBy", "([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)I", "indexOfMaxValue", "transform", "ensureIndicesInRange", "indices", "itemCount", "findPreviousItemIndex", "item", "lane", "Unset", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class LazyStaggeredGridMeasureKt {
    private static final boolean DebugLoggingEnabled = false;
    private static final int Unset = Integer.MIN_VALUE;

    private static final <T> T withDebugLogging(LazyLayoutMeasureScope scope, Function1<? super LazyLayoutMeasureScope, ? extends T> function1) {
        return function1.invoke(scope);
    }

    private static final String debugRender(ArrayDeque<LazyStaggeredGridMeasuredItem>[] arrayDequeArr) {
        return "";
    }

    private static final void debugLog(Function0<String> function0) {
    }

    /* JADX INFO: renamed from: measureStaggeredGrid-C6celF4, reason: not valid java name */
    public static final LazyStaggeredGridMeasureResult m1044measureStaggeredGridC6celF4(LazyLayoutMeasureScope $this$measureStaggeredGrid_u2dC6celF4, LazyStaggeredGridState state, List<Integer> list, LazyStaggeredGridItemProvider itemProvider, LazyStaggeredGridSlots resolvedSlots, long j, boolean isVertical, boolean reverseLayout, long j2, int mainAxisAvailableSize, int mainAxisSpacing, int beforeContentPadding, int afterContentPadding, CoroutineScope coroutineScope, boolean isInLookaheadScope, boolean isLookingAhead, LazyStaggeredGridLayoutInfo approachLayoutInfo, GraphicsContext graphicsContext) {
        int[] initialItemIndices;
        int iM1043maxInRangejy6DScQ;
        int[] initialItemOffsets;
        int i;
        LazyStaggeredGridMeasureContext context = new LazyStaggeredGridMeasureContext(state, list, itemProvider, resolvedSlots, j, isVertical, $this$measureStaggeredGrid_u2dC6celF4, mainAxisAvailableSize, j2, beforeContentPadding, afterContentPadding, reverseLayout, mainAxisSpacing, coroutineScope, isInLookaheadScope, isLookingAhead, approachLayoutInfo, graphicsContext, null);
        int[] firstVisibleIndices = state.updateScrollPositionIfTheFirstItemWasMoved$foundation(itemProvider, state.getScrollPosition().getIndices());
        int[] firstVisibleOffsets = state.getScrollPosition().getScrollOffsets();
        if (firstVisibleIndices.length == context.getLaneCount()) {
            initialItemIndices = firstVisibleIndices;
        } else {
            context.getLaneInfo().reset();
            initialItemIndices = new int[context.getLaneCount()];
            int length = initialItemIndices.length;
            for (int lane = 0; lane < length; lane++) {
                if (lane < firstVisibleIndices.length && firstVisibleIndices[lane] != -1) {
                    iM1043maxInRangejy6DScQ = firstVisibleIndices[lane];
                } else if (lane == 0) {
                    iM1043maxInRangejy6DScQ = 0;
                } else {
                    iM1043maxInRangejy6DScQ = m1043maxInRangejy6DScQ(initialItemIndices, SpanRange.m1053constructorimpl(0, lane)) + 1;
                }
                initialItemIndices[lane] = iM1043maxInRangejy6DScQ;
                context.getLaneInfo().setLane(initialItemIndices[lane], lane);
            }
        }
        if (firstVisibleOffsets.length == context.getLaneCount()) {
            initialItemOffsets = firstVisibleOffsets;
        } else {
            initialItemOffsets = new int[context.getLaneCount()];
            int lane2 = 0;
            int length2 = initialItemOffsets.length;
            while (lane2 < length2) {
                if (lane2 < firstVisibleOffsets.length) {
                    i = firstVisibleOffsets[lane2];
                } else {
                    i = lane2 == 0 ? 0 : initialItemOffsets[lane2 - 1];
                }
                initialItemOffsets[lane2] = i;
                lane2++;
            }
        }
        float $this$fastRoundToInt$iv = state.scrollToBeConsumed$foundation(isLookingAhead);
        return measure(context, Math.round($this$fastRoundToInt$iv), initialItemIndices, initialItemOffsets, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:355:0x09bb, code lost:
    
        r5 = r1.get(r2);
        r36 = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0a46  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0af9  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0b05 A[LOOP:24: B:362:0x09f1->B:402:0x0b05, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0b92  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x0c12  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0c14  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x0cbf  */
    /* JADX WARN: Removed duplicated region for block: B:462:0x0ce2  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0d50  */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0de2  */
    /* JADX WARN: Removed duplicated region for block: B:486:0x0dee  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0e05  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x0e25  */
    /* JADX WARN: Removed duplicated region for block: B:547:0x107c  */
    /* JADX WARN: Removed duplicated region for block: B:617:0x0b17 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:630:0x0e02 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final LazyStaggeredGridMeasureResult measure(final LazyStaggeredGridMeasureContext $this$measure, int initialScrollDelta, int[] initialItemIndices, int[] initialItemOffsets, boolean canRestartMeasure) {
        int layoutWidth;
        int layoutHeight;
        int scrollDelta;
        boolean remeasureNeeded;
        int i;
        int scrollDelta2;
        int initialLaneToMeasure;
        int initialLaneToMeasure2;
        int[] gaps;
        boolean z;
        int maxOffset;
        boolean z2;
        int itemCount;
        int[] firstItemIndices;
        int[] firstItemOffsets;
        int[] itemScrollOffsets;
        ArrayDeque[] measuredItems;
        int extraItemOffset;
        int[] firstItemIndices2;
        int contentPadding;
        int extraItemOffset2;
        List itemsRetainedForLookahead;
        int extraItemOffset3;
        int index$iv$iv$iv;
        List listEmptyList;
        int layoutWidth2;
        int layoutHeight2;
        int length;
        int i2;
        boolean z3;
        boolean canScrollForward;
        boolean z4;
        int $i$f$calculateExtraItems;
        int itemCount2;
        int itemCount3;
        boolean z5;
        LazyStaggeredGridMeasureContext $this$calculateExtraItems$iv;
        List<Integer> list;
        int[] firstItemOffsets2;
        List list2;
        int i$iv;
        int iMin;
        int lastVisibleItemIndex$iv;
        boolean isLookingAhead$iv;
        int lastVisibleItemIndex$iv2;
        int preScrollBackScrollDelta;
        float scrollToBeConsumed;
        LazyStaggeredGridMeasureContext $this$itemsRetainedForLookahead$iv;
        Object obj;
        boolean z6;
        int firstIndex;
        LazyStaggeredGridMeasureContext $this$calculateExtraItems$iv2;
        int scrollDelta3;
        List list3;
        int laneIndex;
        int toScrollBack;
        boolean z7;
        boolean gapDetected;
        boolean z8;
        LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext = $this$measure;
        final LazyLayoutMeasureScope scope$iv = lazyStaggeredGridMeasureContext.getMeasureScope();
        int offset = lazyStaggeredGridMeasureContext.getItemProvider().getItemCount();
        if (offset <= 0 || lazyStaggeredGridMeasureContext.getLaneCount() == 0) {
            int itemCount4 = offset;
            long j = 4294967295L;
            char c = ' ';
            int layoutWidth3 = Constraints.m7460getMinWidthimpl($this$measure.getConstraints());
            int layoutHeight3 = Constraints.m7459getMinHeightimpl($this$measure.getConstraints());
            $this$measure.getState().getItemAnimator$foundation().onMeasured(0, layoutWidth3, layoutHeight3, new ArrayList(), $this$measure.getMeasuredItemProvider().getKeyIndexMap(), $this$measure.getMeasuredItemProvider(), $this$measure.getIsVertical(), scope$iv.isLookingAhead(), $this$measure.getLaneCount(), $this$measure.getIsInLookaheadScope(), 0, 0, $this$measure.getCoroutineScope(), $this$measure.getGraphicsContext());
            if (!scope$iv.isLookingAhead()) {
                long disappearingItemsSize = $this$measure.getState().getItemAnimator$foundation().m987getMinSizeToFitDisappearingItemsYbymL2g();
                if (IntSize.m7674equalsimpl0(disappearingItemsSize, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                    layoutWidth = layoutWidth3;
                    layoutHeight = layoutHeight3;
                } else {
                    int $i$f$unpackInt1 = (int) (disappearingItemsSize >> c);
                    int layoutWidth4 = ConstraintsKt.m7475constrainWidthK40F9xA($this$measure.getConstraints(), $i$f$unpackInt1);
                    int $i$f$unpackInt2 = (int) (disappearingItemsSize & j);
                    layoutWidth = layoutWidth4;
                    layoutHeight = ConstraintsKt.m7474constrainHeightK40F9xA($this$measure.getConstraints(), $i$f$unpackInt2);
                }
            }
            MeasureResult measureResultLayout$default = MeasureScope.layout$default(scope$iv, layoutWidth, layoutHeight, null, new Function1() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return LazyStaggeredGridMeasureKt.measure$lambda$0$0((Placeable.PlacementScope) obj2);
                }
            }, 4, null);
            boolean isVertical = $this$measure.getIsVertical();
            List listEmptyList2 = CollectionsKt.emptyList();
            int width$iv = Constraints.m7460getMinWidthimpl($this$measure.getConstraints());
            int height$iv = Constraints.m7459getMinHeightimpl($this$measure.getConstraints());
            return new LazyStaggeredGridMeasureResult(initialItemIndices, initialItemOffsets, 0.0f, measureResultLayout$default, 0.0f, false, isVertical, false, $this$measure.getResolvedSlots(), $this$measure.getItemProvider().getSpanProvider(), scope$iv, itemCount4, listEmptyList2, IntSize.m7671constructorimpl((((long) width$iv) << c) | (((long) height$iv) & j)), -$this$measure.getBeforeContentPadding(), $this$measure.getMainAxisAvailableSize() + $this$measure.getAfterContentPadding(), $this$measure.getBeforeContentPadding(), $this$measure.getAfterContentPadding(), $this$measure.getMainAxisSpacing(), $this$measure.getCoroutineScope(), null);
        }
        int scrollDelta4 = initialScrollDelta;
        int[] iArrCopyOf = Arrays.copyOf(initialItemIndices, initialItemIndices.length);
        String str = "copyOf(...)";
        Intrinsics.checkNotNullExpressionValue(iArrCopyOf, "copyOf(...)");
        int[] firstItemIndices3 = iArrCopyOf;
        int[] iArrCopyOf2 = Arrays.copyOf(initialItemOffsets, initialItemOffsets.length);
        Intrinsics.checkNotNullExpressionValue(iArrCopyOf2, "copyOf(...)");
        int[] firstItemOffsets3 = iArrCopyOf2;
        boolean remeasureNeeded2 = false;
        ensureIndicesInRange(lazyStaggeredGridMeasureContext, firstItemIndices3, offset);
        offsetBy(firstItemOffsets3, -scrollDelta4);
        int laneCount = lazyStaggeredGridMeasureContext.getLaneCount();
        ArrayDeque[] measuredItems2 = new ArrayDeque[laneCount];
        for (int i3 = 0; i3 < laneCount; i3++) {
            measuredItems2[i3] = new ArrayDeque(16);
        }
        offsetBy(firstItemOffsets3, -lazyStaggeredGridMeasureContext.getBeforeContentPadding());
        int laneToCheckForGaps = -1;
        while (true) {
            if (!measure$lambda$0$hasSpaceBeforeFirst(firstItemIndices3, firstItemOffsets3, lazyStaggeredGridMeasureContext)) {
                scrollDelta = scrollDelta4;
                remeasureNeeded = remeasureNeeded2;
                i = 0;
                break;
            }
            int laneIndex2 = indexOfMaxValue(firstItemIndices3);
            int itemIndex = firstItemIndices3[laneIndex2];
            i = 0;
            int length2 = firstItemOffsets3.length;
            int i4 = 0;
            while (i4 < length2) {
                int scrollDelta5 = scrollDelta4;
                boolean remeasureNeeded3 = remeasureNeeded2;
                if (firstItemIndices3[i4] != firstItemIndices3[laneIndex2] && firstItemOffsets3[i4] < firstItemOffsets3[laneIndex2]) {
                    firstItemOffsets3[i4] = firstItemOffsets3[laneIndex2];
                }
                i4++;
                scrollDelta4 = scrollDelta5;
                remeasureNeeded2 = remeasureNeeded3;
            }
            scrollDelta = scrollDelta4;
            remeasureNeeded = remeasureNeeded2;
            int previousItemIndex = findPreviousItemIndex(lazyStaggeredGridMeasureContext, itemIndex, laneIndex2);
            if (previousItemIndex < 0) {
                laneToCheckForGaps = laneIndex2;
                break;
            }
            long spanRange = lazyStaggeredGridMeasureContext.m1038getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext.getItemProvider(), previousItemIndex, laneIndex2);
            lazyStaggeredGridMeasureContext.getLaneInfo().setLane(previousItemIndex, ((int) (spanRange & 4294967295L)) - ((int) (spanRange >> 32)) != 1 ? -2 : (int) (spanRange >> 32));
            LazyStaggeredGridMeasuredItem measuredItem = lazyStaggeredGridMeasureContext.getMeasuredItemProvider().m1047getAndMeasurejy6DScQ(previousItemIndex, spanRange);
            int offset2 = m1043maxInRangejy6DScQ(firstItemOffsets3, spanRange);
            int[] gaps2 = ((int) (spanRange & 4294967295L)) - ((int) (spanRange >> 32)) != 1 ? lazyStaggeredGridMeasureContext.getLaneInfo().getGaps(previousItemIndex) : null;
            int i$iv2 = (int) (spanRange >> 32);
            int i5 = (int) (spanRange & 4294967295L);
            for (int i$iv3 = i$iv2; i$iv3 < i5; i$iv3++) {
                int lane = i$iv3;
                firstItemIndices3[lane] = previousItemIndex;
                int gap = gaps2 == null ? 0 : gaps2[lane];
                int newOffset = offset2 + measuredItem.getMainAxisSizeWithSpacings() + gap;
                firstItemOffsets3[lane] = newOffset;
                if (lazyStaggeredGridMeasureContext.getMainAxisAvailableSize() + newOffset <= 0) {
                    remeasureNeeded = true;
                }
            }
            scrollDelta4 = scrollDelta;
            remeasureNeeded2 = remeasureNeeded;
        }
        int $i$f$debugLog = lazyStaggeredGridMeasureContext.getBeforeContentPadding();
        int minOffset = -$i$f$debugLog;
        if (firstItemOffsets3[i] < minOffset) {
            int notConsumedScrollDelta = minOffset - firstItemOffsets3[i];
            offsetBy(firstItemOffsets3, minOffset - firstItemOffsets3[i]);
            scrollDelta2 = scrollDelta - notConsumedScrollDelta;
        } else {
            scrollDelta2 = scrollDelta;
        }
        offsetBy(firstItemOffsets3, lazyStaggeredGridMeasureContext.getBeforeContentPadding());
        int laneToCheckForGaps2 = laneToCheckForGaps == -1 ? ArraysKt.indexOf(firstItemIndices3, i) : laneToCheckForGaps;
        if (laneToCheckForGaps2 != -1) {
            int lane2 = laneToCheckForGaps2;
            if (measure$lambda$0$misalignedStart(firstItemIndices3, lazyStaggeredGridMeasureContext, firstItemOffsets3, lane2) && canRestartMeasure) {
                lazyStaggeredGridMeasureContext.getLaneInfo().reset();
                int length3 = firstItemIndices3.length;
                int[] iArr = new int[length3];
                for (int i6 = 0; i6 < length3; i6++) {
                    iArr[i6] = -1;
                }
                int length4 = firstItemOffsets3.length;
                int[] iArr2 = new int[length4];
                for (int i7 = 0; i7 < length4; i7++) {
                    iArr2[i7] = firstItemOffsets3[lane2];
                }
                return measure(lazyStaggeredGridMeasureContext, scrollDelta2, iArr, iArr2, false);
            }
        }
        int[] iArrCopyOf3 = Arrays.copyOf(firstItemIndices3, firstItemIndices3.length);
        Intrinsics.checkNotNullExpressionValue(iArrCopyOf3, "copyOf(...)");
        int[] currentItemIndices = iArrCopyOf3;
        int length5 = firstItemOffsets3.length;
        int[] currentItemOffsets = new int[length5];
        for (int i8 = 0; i8 < length5; i8++) {
            currentItemOffsets[i8] = -firstItemOffsets3[i8];
        }
        int minVisibleOffset = minOffset + lazyStaggeredGridMeasureContext.getMainAxisSpacing();
        int maxOffset2 = RangesKt.coerceAtLeast(lazyStaggeredGridMeasureContext.getMainAxisAvailableSize() + lazyStaggeredGridMeasureContext.getAfterContentPadding(), 0);
        int initialItemsMeasured = 0;
        boolean remeasureNeeded4 = remeasureNeeded;
        int initialLaneToMeasure3 = indexOfMinValue$default(currentItemIndices, 0, 1, null);
        while (initialLaneToMeasure3 != -1 && initialItemsMeasured < lazyStaggeredGridMeasureContext.getLaneCount()) {
            int itemIndex2 = currentItemIndices[initialLaneToMeasure3];
            int laneIndex3 = initialLaneToMeasure3;
            initialLaneToMeasure3 = indexOfMinValue(currentItemIndices, itemIndex2);
            initialItemsMeasured++;
            if (itemIndex2 >= 0) {
                int[] currentItemIndices2 = currentItemIndices;
                int laneIndex4 = laneToCheckForGaps2;
                long spanRange2 = lazyStaggeredGridMeasureContext.m1038getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext.getItemProvider(), itemIndex2, laneIndex3);
                LazyStaggeredGridMeasuredItem measuredItem2 = lazyStaggeredGridMeasureContext.getMeasuredItemProvider().m1047getAndMeasurejy6DScQ(itemIndex2, spanRange2);
                int[] firstItemIndices4 = firstItemIndices3;
                int[] firstItemOffsets4 = firstItemOffsets3;
                lazyStaggeredGridMeasureContext.getLaneInfo().setLane(itemIndex2, ((int) (spanRange2 & 4294967295L)) - ((int) (spanRange2 >> 32)) != 1 ? -2 : (int) (spanRange2 >> 32));
                int offset3 = m1043maxInRangejy6DScQ(currentItemOffsets, spanRange2);
                int i$iv4 = (int) (spanRange2 >> 32);
                int i9 = (int) (spanRange2 & 4294967295L);
                int i$iv5 = i$iv4;
                while (i$iv5 < i9) {
                    int lane3 = i$iv5;
                    currentItemOffsets[lane3] = offset3 + measuredItem2.getMainAxisSizeWithSpacings();
                    currentItemIndices2[lane3] = itemIndex2;
                    measuredItems2[lane3].addLast(measuredItem2);
                    i$iv5++;
                    itemIndex2 = itemIndex2;
                }
                if (offset3 < minVisibleOffset && currentItemOffsets[(int) (spanRange2 >> 32)] <= minVisibleOffset) {
                    measuredItem2.setVisible(false);
                    remeasureNeeded4 = true;
                }
                if (((int) (spanRange2 & 4294967295L)) - ((int) (spanRange2 >> 32)) != 1) {
                    initialItemsMeasured = lazyStaggeredGridMeasureContext.getLaneCount();
                    laneToCheckForGaps2 = laneIndex4;
                    initialLaneToMeasure3 = initialLaneToMeasure3;
                    currentItemIndices = currentItemIndices2;
                    firstItemIndices3 = firstItemIndices4;
                    firstItemOffsets3 = firstItemOffsets4;
                } else {
                    laneToCheckForGaps2 = laneIndex4;
                    initialLaneToMeasure3 = initialLaneToMeasure3;
                    initialItemsMeasured = initialItemsMeasured;
                    currentItemIndices = currentItemIndices2;
                    firstItemIndices3 = firstItemIndices4;
                    firstItemOffsets3 = firstItemOffsets4;
                }
            }
        }
        int[] currentItemIndices3 = currentItemIndices;
        int[] firstItemIndices5 = firstItemIndices3;
        int[] firstItemOffsets5 = firstItemOffsets3;
        while (true) {
            int length6 = currentItemOffsets.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length6) {
                    initialLaneToMeasure = initialLaneToMeasure3;
                    initialLaneToMeasure2 = 0;
                    break;
                }
                int element$iv = currentItemOffsets[i10];
                initialLaneToMeasure = initialLaneToMeasure3;
                int it = (element$iv < maxOffset2 || element$iv <= 0) ? 1 : 0;
                if (it != 0) {
                    initialLaneToMeasure2 = 1;
                    break;
                }
                i10++;
                initialLaneToMeasure3 = initialLaneToMeasure;
            }
            if (initialLaneToMeasure2 == 0) {
                ArrayDeque[] arrayDequeArr = measuredItems2;
                int length7 = arrayDequeArr.length;
                int i11 = 0;
                while (true) {
                    if (i11 >= length7) {
                        z8 = true;
                        break;
                    }
                    if (!arrayDequeArr[i11].isEmpty()) {
                        z8 = false;
                        break;
                    }
                    i11++;
                }
                if (!z8) {
                    break;
                }
                int currentLaneIndex = indexOfMinValue$default(currentItemOffsets, 0, 1, null);
                int itemIndex3 = ArraysKt.maxOrThrow(currentItemIndices3) + 1;
                if (itemIndex3 >= offset) {
                    break;
                }
                int maxOffset3 = maxOffset2;
                ArrayDeque[] measuredItems3 = measuredItems2;
                int initialItemsMeasured2 = initialItemsMeasured;
                int itemCount5 = offset;
                int initialLaneToMeasure4 = initialLaneToMeasure;
                int[] firstItemIndices6 = firstItemIndices5;
                int[] firstItemOffsets6 = firstItemOffsets5;
                long spanRange3 = lazyStaggeredGridMeasureContext.m1038getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext.getItemProvider(), itemIndex3, currentLaneIndex);
                lazyStaggeredGridMeasureContext.getLaneInfo().setLane(itemIndex3, ((int) (spanRange3 & 4294967295L)) - ((int) (spanRange3 >> 32)) != 1 ? -2 : (int) (spanRange3 >> 32));
                LazyStaggeredGridMeasuredItem measuredItem3 = $this$measure.getMeasuredItemProvider().m1047getAndMeasurejy6DScQ(itemIndex3, spanRange3);
                int offset4 = m1043maxInRangejy6DScQ(currentItemOffsets, spanRange3);
                String str2 = str;
                if (((int) (spanRange3 & 4294967295L)) - ((int) (spanRange3 >> 32)) != 1) {
                    gaps = $this$measure.getLaneInfo().getGaps(itemIndex3);
                    if (gaps == null) {
                        gaps = new int[$this$measure.getLaneCount()];
                    }
                } else {
                    gaps = null;
                }
                int minVisibleOffset2 = minVisibleOffset;
                int i12 = (int) (spanRange3 & 4294967295L);
                for (int i$iv6 = (int) (spanRange3 >> 32); i$iv6 < i12; i$iv6++) {
                    int lane4 = i$iv6;
                    if (gaps != null) {
                        gaps[lane4] = offset4 - currentItemOffsets[lane4];
                    }
                    currentItemIndices3[lane4] = itemIndex3;
                    currentItemOffsets[lane4] = measuredItem3.getMainAxisSizeWithSpacings() + offset4;
                    measuredItems3[lane4].addLast(measuredItem3);
                }
                $this$measure.getLaneInfo().setGaps(itemIndex3, gaps);
                if (offset4 >= minVisibleOffset2 || currentItemOffsets[(int) (spanRange3 >> 32)] > minVisibleOffset2) {
                    lazyStaggeredGridMeasureContext = $this$measure;
                    minVisibleOffset = minVisibleOffset2;
                    firstItemIndices5 = firstItemIndices6;
                    firstItemOffsets5 = firstItemOffsets6;
                    str = str2;
                    maxOffset2 = maxOffset3;
                    initialItemsMeasured = initialItemsMeasured2;
                    initialLaneToMeasure3 = initialLaneToMeasure4;
                    measuredItems2 = measuredItems3;
                    offset = itemCount5;
                } else {
                    measuredItem3.setVisible(false);
                    lazyStaggeredGridMeasureContext = $this$measure;
                    minVisibleOffset = minVisibleOffset2;
                    firstItemIndices5 = firstItemIndices6;
                    firstItemOffsets5 = firstItemOffsets6;
                    str = str2;
                    maxOffset2 = maxOffset3;
                    initialItemsMeasured = initialItemsMeasured2;
                    initialLaneToMeasure3 = initialLaneToMeasure4;
                    measuredItems2 = measuredItems3;
                    offset = itemCount5;
                }
            }
        }
        int length8 = measuredItems2.length;
        for (int laneIndex5 = 0; laneIndex5 < length8; laneIndex5++) {
            ArrayDeque laneItems = measuredItems2[laneIndex5];
            while (laneItems.size() > 1 && !((LazyStaggeredGridMeasuredItem) laneItems.first()).getIsVisible()) {
                LazyStaggeredGridMeasuredItem item = (LazyStaggeredGridMeasuredItem) laneItems.removeFirst();
                int[] gaps3 = item.getSpan() != 1 ? lazyStaggeredGridMeasureContext.getLaneInfo().getGaps(item.getIndex()) : null;
                firstItemOffsets5[laneIndex5] = firstItemOffsets5[laneIndex5] - (item.getMainAxisSizeWithSpacings() + (gaps3 == null ? 0 : gaps3[laneIndex5]));
            }
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem = (LazyStaggeredGridMeasuredItem) laneItems.firstOrNull();
            firstItemIndices5[laneIndex5] = lazyStaggeredGridMeasuredItem != null ? lazyStaggeredGridMeasuredItem.getIndex() : -1;
        }
        int[] $this$any$iv = currentItemIndices3;
        int length9 = $this$any$iv.length;
        int i13 = 0;
        while (true) {
            if (i13 >= length9) {
                z = false;
                break;
            }
            int element$iv2 = $this$any$iv[i13];
            int[] $this$any$iv2 = $this$any$iv;
            if (element$iv2 == offset + (-1)) {
                z = true;
                break;
            }
            i13++;
            $this$any$iv = $this$any$iv2;
        }
        if (z) {
            offsetBy(currentItemOffsets, -lazyStaggeredGridMeasureContext.getMainAxisSpacing());
        }
        int preScrollBackScrollDelta2 = scrollDelta2;
        int[] $this$all$iv = currentItemOffsets;
        int length10 = $this$all$iv.length;
        int i14 = 0;
        while (true) {
            if (i14 >= length10) {
                maxOffset = maxOffset2;
                z2 = true;
                break;
            }
            int element$iv3 = $this$all$iv[i14];
            int[] $this$all$iv2 = $this$all$iv;
            maxOffset = maxOffset2;
            if (!(element$iv3 < lazyStaggeredGridMeasureContext.getMainAxisAvailableSize())) {
                z2 = false;
                break;
            }
            i14++;
            $this$all$iv = $this$all$iv2;
            maxOffset2 = maxOffset;
        }
        if (z2) {
            int maxOffsetLane = indexOfMaxValue(currentItemOffsets);
            int toScrollBack2 = lazyStaggeredGridMeasureContext.getMainAxisAvailableSize() - currentItemOffsets[maxOffsetLane];
            firstItemOffsets = firstItemOffsets5;
            offsetBy(firstItemOffsets, -toScrollBack2);
            offsetBy(currentItemOffsets, toScrollBack2);
            boolean gapDetected2 = false;
            while (true) {
                int maxOffsetLane2 = maxOffsetLane;
                int maxOffsetLane3 = firstItemOffsets.length;
                toScrollBack = toScrollBack2;
                int toScrollBack3 = 0;
                while (true) {
                    if (toScrollBack3 >= maxOffsetLane3) {
                        z7 = false;
                        break;
                    }
                    int element$iv4 = firstItemOffsets[toScrollBack3];
                    int i15 = maxOffsetLane3;
                    int i16 = toScrollBack3;
                    if (element$iv4 < lazyStaggeredGridMeasureContext.getBeforeContentPadding()) {
                        z7 = true;
                        break;
                    }
                    toScrollBack3 = i16 + 1;
                    maxOffsetLane3 = i15;
                }
                if (!z7) {
                    itemCount = offset;
                    firstItemIndices = firstItemIndices5;
                    break;
                }
                int laneIndex6 = indexOfMinValue$default(firstItemOffsets, 0, 1, null);
                int nextLaneIndex = indexOfMaxValue(firstItemIndices5);
                if (laneIndex6 != nextLaneIndex) {
                    if (firstItemOffsets[laneIndex6] == firstItemOffsets[nextLaneIndex]) {
                        laneIndex6 = nextLaneIndex;
                    } else {
                        gapDetected2 = true;
                    }
                }
                int currentIndex = firstItemIndices5[laneIndex6] == -1 ? offset : firstItemIndices5[laneIndex6];
                int previousIndex = findPreviousItemIndex(lazyStaggeredGridMeasureContext, currentIndex, laneIndex6);
                if (previousIndex < 0) {
                    if (gapDetected2) {
                        firstItemIndices = firstItemIndices5;
                    } else {
                        firstItemIndices = firstItemIndices5;
                        if (!measure$lambda$0$misalignedStart(firstItemIndices, lazyStaggeredGridMeasureContext, firstItemOffsets, laneIndex6)) {
                            gapDetected = gapDetected2;
                        }
                        itemCount = offset;
                        gapDetected2 = gapDetected;
                    }
                    if (canRestartMeasure) {
                        lazyStaggeredGridMeasureContext.getLaneInfo().reset();
                        int length11 = firstItemIndices.length;
                        int[] iArr3 = new int[length11];
                        for (int currentIndex2 = 0; currentIndex2 < length11; currentIndex2++) {
                            iArr3[currentIndex2] = -1;
                        }
                        int length12 = firstItemOffsets.length;
                        int[] iArr4 = new int[length12];
                        for (int i17 = 0; i17 < length12; i17++) {
                            iArr4[i17] = firstItemOffsets[laneIndex6];
                        }
                        return measure(lazyStaggeredGridMeasureContext, scrollDelta2, iArr3, iArr4, false);
                    }
                    gapDetected = gapDetected2;
                    itemCount = offset;
                    gapDetected2 = gapDetected;
                } else {
                    boolean gapDetected3 = gapDetected2;
                    int initialItemsMeasured3 = initialItemsMeasured;
                    int[] firstItemIndices7 = firstItemIndices5;
                    long spanRange4 = lazyStaggeredGridMeasureContext.m1038getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext.getItemProvider(), previousIndex, laneIndex6);
                    int itemCount6 = offset;
                    lazyStaggeredGridMeasureContext.getLaneInfo().setLane(previousIndex, ((int) (spanRange4 & 4294967295L)) - ((int) (spanRange4 >> 32)) != 1 ? -2 : (int) (spanRange4 >> 32));
                    LazyStaggeredGridMeasuredItem measuredItem4 = lazyStaggeredGridMeasureContext.getMeasuredItemProvider().m1047getAndMeasurejy6DScQ(previousIndex, spanRange4);
                    int offset5 = m1043maxInRangejy6DScQ(firstItemOffsets, spanRange4);
                    int[] gaps4 = ((int) (spanRange4 & 4294967295L)) - ((int) (spanRange4 >> 32)) != 1 ? lazyStaggeredGridMeasureContext.getLaneInfo().getGaps(previousIndex) : null;
                    int[] gaps5 = gaps4;
                    int i$iv7 = (int) (spanRange4 >> 32);
                    int i18 = (int) (spanRange4 & 4294967295L);
                    int i$iv8 = i$iv7;
                    while (i$iv8 < i18) {
                        int lane5 = i$iv8;
                        int i19 = i18;
                        if (firstItemOffsets[lane5] != offset5) {
                            gapDetected3 = true;
                        }
                        measuredItems2[lane5].addFirst(measuredItem4);
                        firstItemIndices7[lane5] = previousIndex;
                        int gap2 = gaps5 == null ? 0 : gaps5[lane5];
                        firstItemOffsets[lane5] = offset5 + measuredItem4.getMainAxisSizeWithSpacings() + gap2;
                        i$iv8++;
                        i18 = i19;
                    }
                    firstItemIndices5 = firstItemIndices7;
                    maxOffsetLane = maxOffsetLane2;
                    toScrollBack2 = toScrollBack;
                    gapDetected2 = gapDetected3;
                    initialItemsMeasured = initialItemsMeasured3;
                    offset = itemCount6;
                }
            }
            if (gapDetected2 && canRestartMeasure) {
                lazyStaggeredGridMeasureContext.getLaneInfo().reset();
                return measure(lazyStaggeredGridMeasureContext, scrollDelta2, firstItemIndices, firstItemOffsets, false);
            }
            scrollDelta2 += toScrollBack;
            int minOffsetLane = indexOfMinValue$default(firstItemOffsets, 0, 1, null);
            if (firstItemOffsets[minOffsetLane] < 0) {
                int offsetValue = firstItemOffsets[minOffsetLane];
                scrollDelta2 += offsetValue;
                offsetBy(currentItemOffsets, offsetValue);
                offsetBy(firstItemOffsets, -offsetValue);
            }
        } else {
            itemCount = offset;
            firstItemIndices = firstItemIndices5;
            firstItemOffsets = firstItemOffsets5;
        }
        float scrollToBeConsumed2 = lazyStaggeredGridMeasureContext.getState().scrollToBeConsumed$foundation(scope$iv.isLookingAhead());
        float consumedScroll = (MathKt.getSign(Math.round(scrollToBeConsumed2)) != MathKt.getSign(scrollDelta2) || Math.abs(Math.round(scrollToBeConsumed2)) < Math.abs(scrollDelta2)) ? scrollToBeConsumed2 : scrollDelta2;
        float unconsumedScroll = scrollToBeConsumed2 - consumedScroll;
        float scrollBackAmount = (!scope$iv.isLookingAhead() || scrollDelta2 <= preScrollBackScrollDelta2 || unconsumedScroll > 0.0f) ? 0.0f : (scrollDelta2 - preScrollBackScrollDelta2) + unconsumedScroll;
        int[] iArrCopyOf4 = Arrays.copyOf(firstItemOffsets, firstItemOffsets.length);
        Intrinsics.checkNotNullExpressionValue(iArrCopyOf4, str);
        int[] itemScrollOffsets2 = iArrCopyOf4;
        int length13 = itemScrollOffsets2.length;
        for (int i$iv9 = 0; i$iv9 < length13; i$iv9++) {
            int it2 = itemScrollOffsets2[i$iv9];
            itemScrollOffsets2[i$iv9] = -it2;
        }
        int $i$f$debugLog2 = lazyStaggeredGridMeasureContext.getBeforeContentPadding();
        if ($i$f$debugLog2 > lazyStaggeredGridMeasureContext.getMainAxisSpacing()) {
            int laneIndex7 = 0;
            int length14 = measuredItems2.length;
            while (laneIndex7 < length14) {
                ArrayDeque laneItems2 = measuredItems2[laneIndex7];
                int i20 = 0;
                int size = laneItems2.size();
                while (true) {
                    if (i20 >= size) {
                        laneIndex = laneIndex7;
                        break;
                    }
                    LazyStaggeredGridMeasuredItem item2 = (LazyStaggeredGridMeasuredItem) laneItems2.get(i20);
                    int i21 = size;
                    LazyStaggeredGridLaneInfo laneInfo = $this$measure.getLaneInfo();
                    laneIndex = laneIndex7;
                    int laneIndex8 = item2.getIndex();
                    int[] gaps6 = laneInfo.getGaps(laneIndex8);
                    int size2 = item2.getMainAxisSizeWithSpacings() + (gaps6 == null ? 0 : gaps6[laneIndex]);
                    if (i20 == CollectionsKt.getLastIndex(laneItems2) || firstItemOffsets[laneIndex] == 0 || firstItemOffsets[laneIndex] < size2) {
                        break;
                    }
                    firstItemOffsets[laneIndex] = firstItemOffsets[laneIndex] - size2;
                    firstItemIndices[laneIndex] = ((LazyStaggeredGridMeasuredItem) laneItems2.get(i20 + 1)).getIndex();
                    i20++;
                    size = i21;
                    laneIndex7 = laneIndex;
                }
                laneIndex7 = laneIndex + 1;
            }
        }
        int $i$f$debugLog3 = $this$measure.getBeforeContentPadding();
        int contentPadding2 = $i$f$debugLog3 + $this$measure.getAfterContentPadding();
        int layoutWidth5 = $this$measure.getIsVertical() ? Constraints.m7458getMaxWidthimpl($this$measure.getConstraints()) : ConstraintsKt.m7475constrainWidthK40F9xA($this$measure.getConstraints(), ArraysKt.maxOrThrow(currentItemOffsets) + contentPadding2);
        int layoutHeight4 = $this$measure.getIsVertical() ? ConstraintsKt.m7474constrainHeightK40F9xA($this$measure.getConstraints(), ArraysKt.maxOrThrow(currentItemOffsets) + contentPadding2) : Constraints.m7457getMaxHeightimpl($this$measure.getConstraints());
        int it3 = Math.min($this$measure.getIsVertical() ? layoutHeight4 : layoutWidth5, $this$measure.getMainAxisAvailableSize());
        int mainAxisLayoutSize = (it3 - $this$measure.getBeforeContentPadding()) + $this$measure.getAfterContentPadding();
        int index$iv = itemScrollOffsets2[0];
        boolean beforeVisibleBounds$iv = true;
        LazyStaggeredGridMeasureContext $this$calculateExtraItems$iv3 = $this$measure;
        List listEmptyList3 = null;
        List<Integer> pinnedItems = $this$calculateExtraItems$iv3.getPinnedItems();
        int size3 = pinnedItems.size() - 1;
        if (size3 >= 0) {
            while (true) {
                int index$iv$iv$iv2 = size3;
                size3--;
                int extraItemOffset4 = index$iv;
                List<Integer> list4 = pinnedItems;
                boolean beforeVisibleBounds$iv2 = beforeVisibleBounds$iv;
                int index$iv2 = ((Number) list4.get(index$iv$iv$iv2)).intValue();
                itemScrollOffsets = itemScrollOffsets2;
                int lane6 = $this$measure.getLaneInfo().getLane(index$iv2);
                switch (lane6) {
                    case -2:
                    case -1:
                        measuredItems = measuredItems2;
                        int length15 = measuredItems.length;
                        int i22 = 0;
                        while (true) {
                            if (i22 >= length15) {
                                firstIndex = 1;
                            } else {
                                LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem2 = (LazyStaggeredGridMeasuredItem) measuredItems[i22].firstOrNull();
                                int firstIndex2 = lazyStaggeredGridMeasuredItem2 != null ? lazyStaggeredGridMeasuredItem2.getIndex() : -1;
                                int i23 = i22;
                                int firstIndex3 = firstIndex2 > index$iv2 ? 1 : 0;
                                if (firstIndex3 == 0) {
                                    firstIndex = 0;
                                } else {
                                    i22 = i23 + 1;
                                }
                            }
                            break;
                        }
                        break;
                    default:
                        measuredItems = measuredItems2;
                        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem3 = (LazyStaggeredGridMeasuredItem) measuredItems[lane6].firstOrNull();
                        int firstIndex4 = lazyStaggeredGridMeasuredItem3 != null ? lazyStaggeredGridMeasuredItem3.getIndex() : -1;
                        firstIndex = firstIndex4 > index$iv2 ? 1 : 0;
                        break;
                }
                if (firstIndex != 0) {
                    scrollDelta3 = scrollDelta2;
                    long spanRange$iv = $this$calculateExtraItems$iv3.m1038getSpanRangelOCCd4c($this$calculateExtraItems$iv3.getItemProvider(), index$iv2, 0);
                    if (listEmptyList3 == null) {
                        Object result$iv = new ArrayList();
                        list3 = (List) result$iv;
                    } else {
                        list3 = listEmptyList3;
                    }
                    LazyStaggeredGridMeasuredItem measuredItem$iv = $this$calculateExtraItems$iv3.getMeasuredItemProvider().m1047getAndMeasurejy6DScQ(index$iv2, spanRange$iv);
                    index$iv = extraItemOffset4 - measuredItem$iv.getMainAxisSizeWithSpacings();
                    $this$calculateExtraItems$iv2 = $this$calculateExtraItems$iv3;
                    measuredItem$iv.position(index$iv, 0, mainAxisLayoutSize);
                    list3.add(measuredItem$iv);
                    listEmptyList3 = list3;
                } else {
                    $this$calculateExtraItems$iv2 = $this$calculateExtraItems$iv3;
                    scrollDelta3 = scrollDelta2;
                    index$iv = extraItemOffset4;
                }
                if (size3 >= 0) {
                    beforeVisibleBounds$iv = beforeVisibleBounds$iv2;
                    pinnedItems = list4;
                    measuredItems2 = measuredItems;
                    itemScrollOffsets2 = itemScrollOffsets;
                    scrollDelta2 = scrollDelta3;
                    $this$calculateExtraItems$iv3 = $this$calculateExtraItems$iv2;
                }
            }
        } else {
            itemScrollOffsets = itemScrollOffsets2;
            measuredItems = measuredItems2;
        }
        if (listEmptyList3 == null) {
            listEmptyList3 = CollectionsKt.emptyList();
        }
        List extraItemsBefore = listEmptyList3;
        ArrayDeque[] measuredItems4 = measuredItems;
        int[] itemScrollOffsets3 = itemScrollOffsets;
        List<LazyStaggeredGridMeasuredItem> listCalculateVisibleItems = calculateVisibleItems($this$measure, measuredItems4, itemScrollOffsets3, mainAxisLayoutSize, minOffset, maxOffset);
        ArrayDeque[] measuredItems5 = measuredItems4;
        int extraItemOffset5 = itemScrollOffsets3[0];
        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem4 = (LazyStaggeredGridMeasuredItem) CollectionsKt.lastOrNull((List) listCalculateVisibleItems);
        int lastVisibleItemIndex$iv3 = lazyStaggeredGridMeasuredItem4 != null ? lazyStaggeredGridMeasuredItem4.getIndex() : -1;
        boolean isLookingAhead$iv2 = scope$iv.isLookingAhead();
        LazyStaggeredGridMeasureContext $this$itemsRetainedForLookahead$iv2 = $this$measure;
        int itemsCount$iv = itemCount;
        List list$iv = null;
        if (!isLookingAhead$iv2 || $this$itemsRetainedForLookahead$iv2.getApproachLayoutInfo() == null || $this$itemsRetainedForLookahead$iv2.getApproachLayoutInfo().getVisibleItemsInfo().isEmpty()) {
            extraItemOffset = extraItemOffset5;
            firstItemIndices2 = firstItemIndices;
            contentPadding = contentPadding2;
        } else {
            extraItemOffset = extraItemOffset5;
            List<LazyStaggeredGridItemInfo> visibleItemsInfo = $this$itemsRetainedForLookahead$iv2.getApproachLayoutInfo().getVisibleItemsInfo();
            LazyStaggeredGridItemInfo found$iv = null;
            int i$iv10 = visibleItemsInfo.size() - 1;
            while (true) {
                ArrayDeque[] measuredItems6 = measuredItems5;
                if (-1 < i$iv10) {
                    if (visibleItemsInfo.get(i$iv10).getIndex() <= lastVisibleItemIndex$iv3 || (i$iv10 != 0 && visibleItemsInfo.get(i$iv10 - 1).getIndex() > lastVisibleItemIndex$iv3)) {
                        i$iv10--;
                        measuredItems5 = measuredItems6;
                    }
                }
            }
            LazyStaggeredGridItemInfo lastVisibleItem$iv = (LazyStaggeredGridItemInfo) CollectionsKt.last((List) $this$itemsRetainedForLookahead$iv2.getApproachLayoutInfo().getVisibleItemsInfo());
            if (found$iv == null || (i$iv = found$iv.getIndex()) > (iMin = Math.min(lastVisibleItem$iv.getIndex(), itemsCount$iv - 1))) {
                firstItemIndices2 = firstItemIndices;
                contentPadding = contentPadding2;
            } else {
                int i$iv11 = i$iv;
                int extraItemOffset6 = extraItemOffset;
                while (true) {
                    if (list$iv != null) {
                        List $this$fastAny$iv$iv = list$iv;
                        List $this$fastForEach$iv$iv$iv = $this$fastAny$iv$iv;
                        lastVisibleItemIndex$iv = lastVisibleItemIndex$iv3;
                        int lastVisibleItemIndex$iv4 = $this$fastForEach$iv$iv$iv.size();
                        isLookingAhead$iv = isLookingAhead$iv2;
                        int index$iv$iv$iv3 = 0;
                        while (true) {
                            if (index$iv$iv$iv3 < lastVisibleItemIndex$iv4) {
                                int i24 = lastVisibleItemIndex$iv4;
                                List $this$fastForEach$iv$iv$iv2 = $this$fastForEach$iv$iv$iv;
                                if (((LazyStaggeredGridMeasuredItem) $this$fastForEach$iv$iv$iv2.get(index$iv$iv$iv3)).getIndex() == i$iv11) {
                                    z6 = true;
                                } else {
                                    index$iv$iv$iv3++;
                                    lastVisibleItemIndex$iv4 = i24;
                                    $this$fastForEach$iv$iv$iv = $this$fastForEach$iv$iv$iv2;
                                }
                            } else {
                                z6 = false;
                            }
                        }
                        lastVisibleItemIndex$iv2 = z6 ? 1 : 0;
                        if (lastVisibleItemIndex$iv2 != 0) {
                            if (list$iv == null) {
                                list$iv = new ArrayList();
                            }
                            List list$iv2 = list$iv;
                            List<LazyStaggeredGridItemInfo> visibleItemsInfo2 = $this$itemsRetainedForLookahead$iv2.getApproachLayoutInfo().getVisibleItemsInfo();
                            int size4 = visibleItemsInfo2.size();
                            firstItemIndices2 = firstItemIndices;
                            int index$iv$iv$iv4 = 0;
                            while (true) {
                                if (index$iv$iv$iv4 < size4) {
                                    int i25 = size4;
                                    List<LazyStaggeredGridItemInfo> list5 = visibleItemsInfo2;
                                    Object item$iv$iv$iv = list5.get(index$iv$iv$iv4);
                                    if (((LazyStaggeredGridItemInfo) item$iv$iv$iv).getIndex() == i$iv11) {
                                        obj = item$iv$iv$iv;
                                    } else {
                                        index$iv$iv$iv4++;
                                        size4 = i25;
                                        visibleItemsInfo2 = list5;
                                    }
                                } else {
                                    obj = null;
                                }
                            }
                            LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo = (LazyStaggeredGridItemInfo) obj;
                            int lane$iv = lazyStaggeredGridItemInfo != null ? lazyStaggeredGridItemInfo.getLane() : 0;
                            preScrollBackScrollDelta = preScrollBackScrollDelta2;
                            contentPadding = contentPadding2;
                            scrollToBeConsumed = scrollToBeConsumed2;
                            $this$itemsRetainedForLookahead$iv = $this$itemsRetainedForLookahead$iv2;
                            long spanRange$iv2 = $this$itemsRetainedForLookahead$iv.m1038getSpanRangelOCCd4c($this$itemsRetainedForLookahead$iv2.getItemProvider(), i$iv11, lane$iv);
                            LazyStaggeredGridMeasuredItem item$iv = $this$itemsRetainedForLookahead$iv.getMeasuredItemProvider().m1047getAndMeasurejy6DScQ(i$iv11, spanRange$iv2);
                            list$iv2.add(item$iv);
                            list$iv = list$iv2;
                            int[] it$iv = $this$itemsRetainedForLookahead$iv.getResolvedSlots().getPositions();
                            int crossAxisOffset$iv = it$iv.length > lane$iv ? it$iv[lane$iv] : 0;
                            int crossAxis = crossAxisOffset$iv;
                            item$iv.position(extraItemOffset6, crossAxis, mainAxisLayoutSize);
                            extraItemOffset6 += item$iv.getMainAxisSizeWithSpacings();
                        } else {
                            firstItemIndices2 = firstItemIndices;
                            preScrollBackScrollDelta = preScrollBackScrollDelta2;
                            contentPadding = contentPadding2;
                            scrollToBeConsumed = scrollToBeConsumed2;
                            $this$itemsRetainedForLookahead$iv = $this$itemsRetainedForLookahead$iv2;
                        }
                        if (i$iv11 != iMin) {
                            extraItemOffset2 = extraItemOffset6;
                            itemsRetainedForLookahead = list$iv;
                            LazyStaggeredGridMeasureContext $this$calculateExtraItems$iv4 = $this$measure;
                            boolean beforeVisibleBounds$iv3 = false;
                            int $i$f$calculateExtraItems2 = 0;
                            List<Integer> pinnedItems2 = $this$calculateExtraItems$iv4.getPinnedItems();
                            List<Integer> list6 = pinnedItems2;
                            int extraItemOffset7 = extraItemOffset2;
                            extraItemOffset3 = list6.size();
                            index$iv$iv$iv = 0;
                            listEmptyList = null;
                            int extraItemOffset8 = extraItemOffset7;
                            while (index$iv$iv$iv < extraItemOffset3) {
                                int i26 = extraItemOffset3;
                                List<Integer> list7 = list6;
                                int index$iv3 = ((Number) list7.get(index$iv$iv$iv)).intValue();
                                boolean beforeVisibleBounds$iv4 = beforeVisibleBounds$iv3;
                                int index$iv$iv$iv5 = index$iv$iv$iv;
                                int index$iv$iv$iv6 = itemCount;
                                if (index$iv3 >= index$iv$iv$iv6) {
                                    itemCount = index$iv$iv$iv6;
                                    $i$f$calculateExtraItems = $i$f$calculateExtraItems2;
                                    itemCount3 = 0;
                                } else {
                                    if (itemsRetainedForLookahead != null) {
                                        List $this$fastForEach$iv$iv = itemsRetainedForLookahead;
                                        itemCount = index$iv$iv$iv6;
                                        int itemCount7 = $this$fastForEach$iv$iv.size();
                                        $i$f$calculateExtraItems = $i$f$calculateExtraItems2;
                                        int $i$f$calculateExtraItems3 = 0;
                                        while (true) {
                                            if ($i$f$calculateExtraItems3 < itemCount7) {
                                                int i27 = itemCount7;
                                                List $this$fastForEach$iv$iv2 = $this$fastForEach$iv$iv;
                                                Object item$iv$iv = $this$fastForEach$iv$iv2.get($i$f$calculateExtraItems3);
                                                LazyStaggeredGridMeasuredItem it4 = (LazyStaggeredGridMeasuredItem) item$iv$iv;
                                                if (it4.getIndex() == index$iv3) {
                                                    z5 = true;
                                                } else {
                                                    $i$f$calculateExtraItems3++;
                                                    itemCount7 = i27;
                                                    $this$fastForEach$iv$iv = $this$fastForEach$iv$iv2;
                                                }
                                            } else {
                                                z5 = false;
                                            }
                                        }
                                        itemCount2 = z5 ? 1 : 0;
                                        if (itemCount2 != 0) {
                                            int lane7 = $this$measure.getLaneInfo().getLane(index$iv3);
                                            switch (lane7) {
                                                case -2:
                                                case -1:
                                                    int lane8 = currentItemIndices3.length;
                                                    int i28 = 0;
                                                    while (true) {
                                                        if (i28 >= lane8) {
                                                            itemCount3 = 1;
                                                        } else {
                                                            int element$iv5 = currentItemIndices3[i28];
                                                            int i29 = lane8;
                                                            int it5 = element$iv5 < index$iv3 ? 1 : 0;
                                                            if (it5 == 0) {
                                                                itemCount3 = 0;
                                                            } else {
                                                                i28++;
                                                                lane8 = i29;
                                                            }
                                                        }
                                                        break;
                                                    }
                                                    break;
                                                default:
                                                    itemCount3 = currentItemIndices3[lane7] < index$iv3 ? 1 : 0;
                                                    break;
                                            }
                                        } else {
                                            itemCount3 = 0;
                                        }
                                    } else {
                                        itemCount = index$iv$iv$iv6;
                                        $i$f$calculateExtraItems = $i$f$calculateExtraItems2;
                                    }
                                    if (itemCount2 != 0) {
                                    }
                                }
                                if (itemCount3 != 0) {
                                    list = pinnedItems2;
                                    firstItemOffsets2 = firstItemOffsets;
                                    long spanRange$iv3 = $this$calculateExtraItems$iv4.m1038getSpanRangelOCCd4c($this$calculateExtraItems$iv4.getItemProvider(), index$iv3, 0);
                                    if (listEmptyList == null) {
                                        Object result$iv2 = new ArrayList();
                                        list2 = (List) result$iv2;
                                    } else {
                                        list2 = listEmptyList;
                                    }
                                    LazyStaggeredGridMeasuredItem measuredItem$iv2 = $this$calculateExtraItems$iv4.getMeasuredItemProvider().m1047getAndMeasurejy6DScQ(index$iv3, spanRange$iv3);
                                    $this$calculateExtraItems$iv = $this$calculateExtraItems$iv4;
                                    measuredItem$iv2.position(extraItemOffset8, 0, mainAxisLayoutSize);
                                    extraItemOffset8 += measuredItem$iv2.getMainAxisSizeWithSpacings();
                                    list2.add(measuredItem$iv2);
                                    listEmptyList = list2;
                                } else {
                                    $this$calculateExtraItems$iv = $this$calculateExtraItems$iv4;
                                    list = pinnedItems2;
                                    firstItemOffsets2 = firstItemOffsets;
                                }
                                index$iv$iv$iv = index$iv$iv$iv5 + 1;
                                pinnedItems2 = list;
                                extraItemOffset3 = i26;
                                list6 = list7;
                                beforeVisibleBounds$iv3 = beforeVisibleBounds$iv4;
                                firstItemOffsets = firstItemOffsets2;
                                $this$calculateExtraItems$iv4 = $this$calculateExtraItems$iv;
                                $i$f$calculateExtraItems2 = $i$f$calculateExtraItems;
                            }
                            int[] firstItemOffsets7 = firstItemOffsets;
                            if (listEmptyList == null) {
                                listEmptyList = CollectionsKt.emptyList();
                            }
                            List extraItemsAfter = listEmptyList;
                            final List positionedItems = new ArrayList();
                            positionedItems.addAll(extraItemsBefore);
                            positionedItems.addAll(listCalculateVisibleItems);
                            if (itemsRetainedForLookahead != null) {
                                positionedItems.addAll(itemsRetainedForLookahead);
                            }
                            positionedItems.addAll(extraItemsAfter);
                            $this$measure.getState().getItemAnimator$foundation().onMeasured((int) consumedScroll, layoutWidth5, layoutHeight4, positionedItems, $this$measure.getMeasuredItemProvider().getKeyIndexMap(), $this$measure.getMeasuredItemProvider(), $this$measure.getIsVertical(), scope$iv.isLookingAhead(), $this$measure.getLaneCount(), $this$measure.getIsInLookaheadScope(), ArraysKt.minOrThrow(firstItemOffsets7), ArraysKt.maxOrThrow(currentItemOffsets) + contentPadding, $this$measure.getCoroutineScope(), $this$measure.getGraphicsContext());
                            int layoutHeight5 = layoutHeight4;
                            if (scope$iv.isLookingAhead()) {
                                long disappearingItemsSize2 = $this$measure.getState().getItemAnimator$foundation().m987getMinSizeToFitDisappearingItemsYbymL2g();
                                if (!IntSize.m7674equalsimpl0(disappearingItemsSize2, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                                    int oldMainAxisSize = $this$measure.getIsVertical() ? layoutHeight5 : layoutWidth5;
                                    int layoutWidth6 = ConstraintsKt.m7475constrainWidthK40F9xA($this$measure.getConstraints(), Math.max(layoutWidth5, (int) (disappearingItemsSize2 >> 32)));
                                    int layoutHeight6 = ConstraintsKt.m7474constrainHeightK40F9xA($this$measure.getConstraints(), Math.max(layoutHeight5, (int) (disappearingItemsSize2 & 4294967295L)));
                                    int newMainAxisSize = $this$measure.getIsVertical() ? layoutHeight6 : layoutWidth6;
                                    if (newMainAxisSize != oldMainAxisSize) {
                                        int size5 = positionedItems.size();
                                        for (int index$iv4 = 0; index$iv4 < size5; index$iv4++) {
                                            LazyStaggeredGridMeasuredItem it6 = (LazyStaggeredGridMeasuredItem) positionedItems.get(index$iv4);
                                            it6.updateMainAxisLayoutSize(newMainAxisSize);
                                        }
                                    }
                                    layoutWidth2 = layoutWidth6;
                                    layoutHeight2 = layoutHeight6;
                                    length = currentItemOffsets.length;
                                    i2 = 0;
                                    while (true) {
                                        if (i2 < length) {
                                            int element$iv6 = currentItemOffsets[i2];
                                            int it7 = element$iv6 > $this$measure.getMainAxisAvailableSize() ? 1 : 0;
                                            if (it7 != 0) {
                                                z3 = true;
                                            } else {
                                                i2++;
                                            }
                                        } else {
                                            z3 = false;
                                        }
                                    }
                                    if (!z3) {
                                        int length16 = currentItemIndices3.length;
                                        int i30 = 0;
                                        while (true) {
                                            if (i30 < length16) {
                                                int element$iv7 = currentItemIndices3[i30];
                                                int it8 = element$iv7 < itemCount + (-1) ? 1 : 0;
                                                if (it8 == 0) {
                                                    z4 = false;
                                                } else {
                                                    i30++;
                                                }
                                            } else {
                                                z4 = true;
                                            }
                                        }
                                        canScrollForward = z4;
                                    }
                                    MeasureResult measureResultLayout$default2 = MeasureScope.layout$default(scope$iv, layoutWidth2, layoutHeight2, null, new Function1() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj2) {
                                            return LazyStaggeredGridMeasureKt.measure$lambda$0$37($this$measure, positionedItems, scope$iv, (Placeable.PlacementScope) obj2);
                                        }
                                    }, 4, null);
                                    int height$iv2 = layoutHeight2;
                                    int width$iv2 = layoutWidth2;
                                    return new LazyStaggeredGridMeasureResult(firstItemIndices2, firstItemOffsets7, consumedScroll, measureResultLayout$default2, scrollBackAmount, canScrollForward, $this$measure.getIsVertical(), remeasureNeeded4, $this$measure.getResolvedSlots(), $this$measure.getItemProvider().getSpanProvider(), scope$iv, itemCount, listCalculateVisibleItems, IntSize.m7671constructorimpl((((long) height$iv2) & 4294967295L) | (((long) width$iv2) << 32)), minOffset, maxOffset, $this$measure.getBeforeContentPadding(), $this$measure.getAfterContentPadding(), $this$measure.getMainAxisSpacing(), $this$measure.getCoroutineScope(), null);
                                }
                            }
                            layoutWidth2 = layoutWidth5;
                            layoutHeight2 = layoutHeight5;
                            length = currentItemOffsets.length;
                            i2 = 0;
                            while (true) {
                                if (i2 < length) {
                                }
                                i2++;
                            }
                            if (!z3) {
                            }
                            MeasureResult measureResultLayout$default22 = MeasureScope.layout$default(scope$iv, layoutWidth2, layoutHeight2, null, new Function1() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    return LazyStaggeredGridMeasureKt.measure$lambda$0$37($this$measure, positionedItems, scope$iv, (Placeable.PlacementScope) obj2);
                                }
                            }, 4, null);
                            int height$iv22 = layoutHeight2;
                            int width$iv22 = layoutWidth2;
                            return new LazyStaggeredGridMeasureResult(firstItemIndices2, firstItemOffsets7, consumedScroll, measureResultLayout$default22, scrollBackAmount, canScrollForward, $this$measure.getIsVertical(), remeasureNeeded4, $this$measure.getResolvedSlots(), $this$measure.getItemProvider().getSpanProvider(), scope$iv, itemCount, listCalculateVisibleItems, IntSize.m7671constructorimpl((((long) height$iv22) & 4294967295L) | (((long) width$iv22) << 32)), minOffset, maxOffset, $this$measure.getBeforeContentPadding(), $this$measure.getAfterContentPadding(), $this$measure.getMainAxisSpacing(), $this$measure.getCoroutineScope(), null);
                        }
                        i$iv11++;
                        $this$itemsRetainedForLookahead$iv2 = $this$itemsRetainedForLookahead$iv;
                        firstItemIndices = firstItemIndices2;
                        isLookingAhead$iv2 = isLookingAhead$iv;
                        lastVisibleItemIndex$iv3 = lastVisibleItemIndex$iv;
                        preScrollBackScrollDelta2 = preScrollBackScrollDelta;
                        scrollToBeConsumed2 = scrollToBeConsumed;
                        contentPadding2 = contentPadding;
                    } else {
                        lastVisibleItemIndex$iv = lastVisibleItemIndex$iv3;
                        isLookingAhead$iv = isLookingAhead$iv2;
                    }
                    if (lastVisibleItemIndex$iv2 != 0) {
                    }
                    if (i$iv11 != iMin) {
                    }
                }
            }
        }
        extraItemOffset2 = extraItemOffset;
        itemsRetainedForLookahead = list$iv;
        LazyStaggeredGridMeasureContext $this$calculateExtraItems$iv42 = $this$measure;
        boolean beforeVisibleBounds$iv32 = false;
        int $i$f$calculateExtraItems22 = 0;
        List<Integer> pinnedItems22 = $this$calculateExtraItems$iv42.getPinnedItems();
        List<Integer> list62 = pinnedItems22;
        int extraItemOffset72 = extraItemOffset2;
        extraItemOffset3 = list62.size();
        index$iv$iv$iv = 0;
        listEmptyList = null;
        int extraItemOffset82 = extraItemOffset72;
        while (index$iv$iv$iv < extraItemOffset3) {
        }
        int[] firstItemOffsets72 = firstItemOffsets;
        if (listEmptyList == null) {
        }
        List extraItemsAfter2 = listEmptyList;
        final List positionedItems2 = new ArrayList();
        positionedItems2.addAll(extraItemsBefore);
        positionedItems2.addAll(listCalculateVisibleItems);
        if (itemsRetainedForLookahead != null) {
        }
        positionedItems2.addAll(extraItemsAfter2);
        $this$measure.getState().getItemAnimator$foundation().onMeasured((int) consumedScroll, layoutWidth5, layoutHeight4, positionedItems2, $this$measure.getMeasuredItemProvider().getKeyIndexMap(), $this$measure.getMeasuredItemProvider(), $this$measure.getIsVertical(), scope$iv.isLookingAhead(), $this$measure.getLaneCount(), $this$measure.getIsInLookaheadScope(), ArraysKt.minOrThrow(firstItemOffsets72), ArraysKt.maxOrThrow(currentItemOffsets) + contentPadding, $this$measure.getCoroutineScope(), $this$measure.getGraphicsContext());
        int layoutHeight52 = layoutHeight4;
        if (scope$iv.isLookingAhead()) {
        }
        layoutWidth2 = layoutWidth5;
        layoutHeight2 = layoutHeight52;
        length = currentItemOffsets.length;
        i2 = 0;
        while (true) {
            if (i2 < length) {
            }
            i2++;
        }
        if (!z3) {
        }
        MeasureResult measureResultLayout$default222 = MeasureScope.layout$default(scope$iv, layoutWidth2, layoutHeight2, null, new Function1() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return LazyStaggeredGridMeasureKt.measure$lambda$0$37($this$measure, positionedItems2, scope$iv, (Placeable.PlacementScope) obj2);
            }
        }, 4, null);
        int height$iv222 = layoutHeight2;
        int width$iv222 = layoutWidth2;
        return new LazyStaggeredGridMeasureResult(firstItemIndices2, firstItemOffsets72, consumedScroll, measureResultLayout$default222, scrollBackAmount, canScrollForward, $this$measure.getIsVertical(), remeasureNeeded4, $this$measure.getResolvedSlots(), $this$measure.getItemProvider().getSpanProvider(), scope$iv, itemCount, listCalculateVisibleItems, IntSize.m7671constructorimpl((((long) height$iv222) & 4294967295L) | (((long) width$iv222) << 32)), minOffset, maxOffset, $this$measure.getBeforeContentPadding(), $this$measure.getAfterContentPadding(), $this$measure.getMainAxisSpacing(), $this$measure.getCoroutineScope(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit measure$lambda$0$0(Placeable.PlacementScope $this$layout) {
        return Unit.INSTANCE;
    }

    private static final boolean measure$lambda$0$hasSpaceBeforeFirst(int[] firstItemIndices, int[] firstItemOffsets, LazyStaggeredGridMeasureContext $this_measure) {
        int length = firstItemIndices.length;
        for (int lane = 0; lane < length; lane++) {
            int itemIndex = firstItemIndices[lane];
            int itemOffset = firstItemOffsets[lane];
            if (itemOffset < Math.max(-$this_measure.getMainAxisSpacing(), 0) && itemIndex > 0) {
                return true;
            }
        }
        return false;
    }

    private static final boolean measure$lambda$0$misalignedStart(int[] firstItemIndices, LazyStaggeredGridMeasureContext $this_measure, int[] firstItemOffsets, int referenceLane) {
        int lane = 0;
        int length = firstItemIndices.length;
        while (true) {
            boolean misalignedOffsets = false;
            if (lane < length) {
                if (findPreviousItemIndex($this_measure, firstItemIndices[lane], lane) == -1 && firstItemOffsets[lane] != firstItemOffsets[referenceLane]) {
                    misalignedOffsets = true;
                }
                if (misalignedOffsets) {
                    return true;
                }
                lane++;
            } else {
                int length2 = firstItemIndices.length;
                for (int lane2 = 0; lane2 < length2; lane2++) {
                    boolean moreItemsInOtherLanes = findPreviousItemIndex($this_measure, firstItemIndices[lane2], lane2) != -1 && firstItemOffsets[lane2] >= firstItemOffsets[referenceLane];
                    if (moreItemsInOtherLanes) {
                        return true;
                    }
                }
                int firstItemLane = $this_measure.getLaneInfo().getLane(0);
                return (firstItemLane == 0 || firstItemLane == -1 || firstItemLane == -2) ? false : true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit measure$lambda$0$37(final LazyStaggeredGridMeasureContext $this_measure, final List $positionedItems, final LazyLayoutMeasureScope $this_withDebugLogging, Placeable.PlacementScope $this$layout) {
        $this$layout.withMotionFrameOfReferencePlacement(new Function1() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LazyStaggeredGridMeasureKt.measure$lambda$0$37$0($positionedItems, $this_measure, $this_withDebugLogging, (Placeable.PlacementScope) obj);
            }
        });
        ObservableScopeInvalidator.m1005attachToScopeimpl($this_measure.getState().m1051getPlacementScopeInvalidatorzYiylxw$foundation());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit measure$lambda$0$37$0(List $positionedItems, LazyStaggeredGridMeasureContext $this_measure, LazyLayoutMeasureScope $this_withDebugLogging, Placeable.PlacementScope $this$withMotionFrameOfReferencePlacement) {
        int size = $positionedItems.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = $positionedItems.get(index$iv);
            LazyStaggeredGridMeasuredItem item = (LazyStaggeredGridMeasuredItem) item$iv;
            item.place($this$withMotionFrameOfReferencePlacement, $this_measure, $this_withDebugLogging.isLookingAhead());
        }
        return Unit.INSTANCE;
    }

    private static final List<LazyStaggeredGridMeasuredItem> calculateVisibleItems(LazyStaggeredGridMeasureContext $this$calculateVisibleItems, ArrayDeque<LazyStaggeredGridMeasuredItem>[] arrayDequeArr, int[] itemScrollOffsets, int mainAxisLayoutSize, int minOffset, int maxOffset) {
        boolean z;
        ArrayDeque<LazyStaggeredGridMeasuredItem>[] arrayDequeArr2 = arrayDequeArr;
        int[] iArr = itemScrollOffsets;
        int size = 0;
        for (ArrayDeque<LazyStaggeredGridMeasuredItem> arrayDeque : arrayDequeArr2) {
            size += arrayDeque.size();
        }
        ArrayList positionedItems = new ArrayList(size);
        while (true) {
            int length = arrayDequeArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                }
                if (!arrayDequeArr[i].isEmpty()) {
                    z = true;
                    break;
                }
                i++;
            }
            if (!z) {
                return positionedItems;
            }
            int result$iv = -1;
            int min$iv = Integer.MAX_VALUE;
            int length2 = arrayDequeArr.length;
            for (int i$iv = 0; i$iv < length2; i$iv++) {
                LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemFirstOrNull = arrayDequeArr[i$iv].firstOrNull();
                int value$iv = lazyStaggeredGridMeasuredItemFirstOrNull != null ? lazyStaggeredGridMeasuredItemFirstOrNull.getIndex() : Integer.MAX_VALUE;
                if (min$iv > value$iv) {
                    min$iv = value$iv;
                    result$iv = i$iv;
                }
            }
            LazyStaggeredGridMeasuredItem item = arrayDequeArr2[result$iv].removeFirst();
            if (item.getLane() == result$iv) {
                long spanRange = SpanRange.m1053constructorimpl(item.getLane(), item.getSpan());
                int mainAxisOffset = m1043maxInRangejy6DScQ(iArr, spanRange);
                int crossAxisOffset = $this$calculateVisibleItems.getResolvedSlots().getPositions()[result$iv];
                int maxEdge = item.getMainAxisSize() + mainAxisOffset;
                if (maxEdge >= minOffset && mainAxisOffset <= maxOffset) {
                    item.position(mainAxisOffset, crossAxisOffset, mainAxisLayoutSize);
                    positionedItems.add(item);
                }
                int i2 = (int) (spanRange & 4294967295L);
                for (int i$iv2 = (int) (spanRange >> 32); i$iv2 < i2; i$iv2++) {
                    int lane = i$iv2;
                    itemScrollOffsets[lane] = mainAxisOffset + item.getMainAxisSizeWithSpacings();
                }
                arrayDequeArr2 = arrayDequeArr;
                iArr = itemScrollOffsets;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final List<LazyStaggeredGridMeasuredItem> itemsRetainedForLookahead(LazyStaggeredGridMeasureContext $this$itemsRetainedForLookahead, int lastVisibleItemIndex, int itemsCount, boolean isLookingAhead, Function2<? super LazyStaggeredGridMeasuredItem, ? super Integer, Unit> function2) {
        int i;
        int iMin;
        Object it$iv;
        boolean z;
        List list = null;
        if (isLookingAhead && $this$itemsRetainedForLookahead.getApproachLayoutInfo() != null && !$this$itemsRetainedForLookahead.getApproachLayoutInfo().getVisibleItemsInfo().isEmpty()) {
            List<LazyStaggeredGridItemInfo> visibleItemsInfo = $this$itemsRetainedForLookahead.getApproachLayoutInfo().getVisibleItemsInfo();
            LazyStaggeredGridItemInfo found = null;
            boolean z2 = true;
            for (int i2 = visibleItemsInfo.size() - 1; -1 < i2; i2--) {
                if (visibleItemsInfo.get(i2).getIndex() > lastVisibleItemIndex && (i2 == 0 || visibleItemsInfo.get(i2 - 1).getIndex() <= lastVisibleItemIndex)) {
                    LazyStaggeredGridItemInfo found2 = visibleItemsInfo.get(i2);
                    found = found2;
                    break;
                }
            }
            LazyStaggeredGridItemInfo lastVisibleItem = (LazyStaggeredGridItemInfo) CollectionsKt.last((List) $this$itemsRetainedForLookahead.getApproachLayoutInfo().getVisibleItemsInfo());
            if (found != null && (i = found.getIndex()) <= (iMin = Math.min(lastVisibleItem.getIndex(), itemsCount - 1))) {
                while (true) {
                    if (list != null) {
                        List $this$fastAny$iv = list;
                        int index$iv$iv = 0;
                        int size = $this$fastAny$iv.size();
                        while (true) {
                            if (index$iv$iv >= size) {
                                z = false;
                                break;
                            }
                            Object item$iv$iv = $this$fastAny$iv.get(index$iv$iv);
                            if (((LazyStaggeredGridMeasuredItem) item$iv$iv).getIndex() == i ? z2 : false) {
                                z = z2;
                                break;
                            }
                            index$iv$iv++;
                        }
                        boolean z3 = z == z2 ? z2 : false;
                        if (!z3) {
                            if (list == null) {
                                list = new ArrayList();
                            }
                            List<LazyStaggeredGridItemInfo> visibleItemsInfo2 = $this$itemsRetainedForLookahead.getApproachLayoutInfo().getVisibleItemsInfo();
                            int index$iv$iv2 = 0;
                            int size2 = visibleItemsInfo2.size();
                            while (true) {
                                if (index$iv$iv2 >= size2) {
                                    it$iv = null;
                                    break;
                                }
                                Object item$iv$iv2 = visibleItemsInfo2.get(index$iv$iv2);
                                it$iv = item$iv$iv2;
                                if (((LazyStaggeredGridItemInfo) it$iv).getIndex() == i) {
                                    break;
                                }
                                index$iv$iv2++;
                            }
                            LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo = (LazyStaggeredGridItemInfo) it$iv;
                            int lane = lazyStaggeredGridItemInfo != null ? lazyStaggeredGridItemInfo.getLane() : 0;
                            long spanRange = $this$itemsRetainedForLookahead.m1038getSpanRangelOCCd4c($this$itemsRetainedForLookahead.getItemProvider(), i, lane);
                            LazyStaggeredGridMeasuredItem item = $this$itemsRetainedForLookahead.getMeasuredItemProvider().m1047getAndMeasurejy6DScQ(i, spanRange);
                            list.add(item);
                            int[] it = $this$itemsRetainedForLookahead.getResolvedSlots().getPositions();
                            int crossAxisOffset = it.length > lane ? it[lane] : 0;
                            function2.invoke(item, Integer.valueOf(crossAxisOffset));
                        }
                        if (i == iMin) {
                            break;
                        }
                        i++;
                        z2 = true;
                    }
                }
            }
        }
        return list;
    }

    private static final List<LazyStaggeredGridMeasuredItem> calculateExtraItems(LazyStaggeredGridMeasureContext $this$calculateExtraItems, Function1<? super LazyStaggeredGridMeasuredItem, Unit> function1, Function1<? super Integer, Boolean> function12, boolean beforeVisibleBounds) {
        List<Integer> list;
        int $i$f$calculateExtraItems;
        List<Integer> list2;
        Function1<? super Integer, Boolean> function13 = function12;
        int $i$f$calculateExtraItems2 = 0;
        ArrayList arrayList = null;
        List<Integer> pinnedItems = $this$calculateExtraItems.getPinnedItems();
        if (beforeVisibleBounds) {
            int size = pinnedItems.size() - 1;
            if (size >= 0) {
                while (true) {
                    int index$iv$iv = size;
                    size--;
                    Object item$iv$iv = pinnedItems.get(index$iv$iv);
                    int index = ((Number) item$iv$iv).intValue();
                    if (function13.invoke(Integer.valueOf(index)).booleanValue()) {
                        $i$f$calculateExtraItems = $i$f$calculateExtraItems2;
                        ArrayList arrayList2 = arrayList;
                        list2 = pinnedItems;
                        long spanRange = $this$calculateExtraItems.m1038getSpanRangelOCCd4c($this$calculateExtraItems.getItemProvider(), index, 0);
                        ArrayList arrayList3 = arrayList2 == null ? new ArrayList() : arrayList2;
                        LazyStaggeredGridMeasuredItem measuredItem = $this$calculateExtraItems.getMeasuredItemProvider().m1047getAndMeasurejy6DScQ(index, spanRange);
                        function1.invoke(measuredItem);
                        arrayList3.add(measuredItem);
                        arrayList = arrayList3;
                    } else {
                        $i$f$calculateExtraItems = $i$f$calculateExtraItems2;
                        list2 = pinnedItems;
                    }
                    if (size < 0) {
                        break;
                    }
                    $i$f$calculateExtraItems2 = $i$f$calculateExtraItems;
                    pinnedItems = list2;
                }
            }
        } else {
            List<Integer> list3 = pinnedItems;
            int index$iv$iv2 = 0;
            int size2 = list3.size();
            while (index$iv$iv2 < size2) {
                Object item$iv$iv2 = list3.get(index$iv$iv2);
                int index2 = ((Number) item$iv$iv2).intValue();
                if (function13.invoke(Integer.valueOf(index2)).booleanValue()) {
                    list = list3;
                    long spanRange2 = $this$calculateExtraItems.m1038getSpanRangelOCCd4c($this$calculateExtraItems.getItemProvider(), index2, 0);
                    if (arrayList == null) {
                        Object result = new ArrayList();
                        arrayList = (List) result;
                    }
                    LazyStaggeredGridMeasuredItem measuredItem2 = $this$calculateExtraItems.getMeasuredItemProvider().m1047getAndMeasurejy6DScQ(index2, spanRange2);
                    function1.invoke(measuredItem2);
                    arrayList.add(measuredItem2);
                } else {
                    list = list3;
                }
                index$iv$iv2++;
                function13 = function12;
                list3 = list;
            }
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    static /* synthetic */ void fastForEach$default(List $this$fastForEach_u24default, boolean reverse, Function1 action, int i, Object obj) {
        if ((i & 1) != 0) {
            reverse = false;
        }
        if (reverse) {
            int size = $this$fastForEach_u24default.size() - 1;
            if (size < 0) {
                return;
            }
            do {
                int index$iv = size;
                size--;
                Object item$iv = $this$fastForEach_u24default.get(index$iv);
                action.invoke(item$iv);
            } while (size >= 0);
            return;
        }
        int size2 = $this$fastForEach_u24default.size();
        for (int index$iv2 = 0; index$iv2 < size2; index$iv2++) {
            Object item$iv2 = $this$fastForEach_u24default.get(index$iv2);
            action.invoke(item$iv2);
        }
    }

    private static final <T> void fastForEach(List<? extends T> list, boolean reverse, Function1<? super T, Unit> function1) {
        if (reverse) {
            int size = list.size() - 1;
            if (size < 0) {
                return;
            }
            do {
                int index$iv = size;
                size--;
                Object item$iv = list.get(index$iv);
                function1.invoke(item$iv);
            } while (size >= 0);
            return;
        }
        int size2 = list.size();
        for (int index$iv2 = 0; index$iv2 < size2; index$iv2++) {
            Object item$iv2 = list.get(index$iv2);
            function1.invoke(item$iv2);
        }
    }

    /* JADX INFO: renamed from: forEach-nIS5qE8, reason: not valid java name */
    private static final void m1042forEachnIS5qE8(long j, Function1<? super Integer, Unit> function1) {
        int i = (int) (4294967295L & j);
        for (int i2 = (int) (j >> 32); i2 < i; i2++) {
            function1.invoke(Integer.valueOf(i2));
        }
    }

    private static final void offsetBy(int[] $this$offsetBy, int delta) {
        int length = $this$offsetBy.length;
        for (int i = 0; i < length; i++) {
            $this$offsetBy[i] = $this$offsetBy[i] + delta;
        }
    }

    /* JADX INFO: renamed from: maxInRange-jy6DScQ, reason: not valid java name */
    private static final int m1043maxInRangejy6DScQ(int[] $this$maxInRange_u2djy6DScQ, long j) {
        int max = Integer.MIN_VALUE;
        int i = (int) (4294967295L & j);
        for (int i$iv = (int) (j >> 32); i$iv < i; i$iv++) {
            int it = i$iv;
            max = Math.max(max, $this$maxInRange_u2djy6DScQ[it]);
        }
        return max;
    }

    public static /* synthetic */ int indexOfMinValue$default(int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = Integer.MIN_VALUE;
        }
        return indexOfMinValue(iArr, i);
    }

    public static final int indexOfMinValue(int[] $this$indexOfMinValue, int minBound) {
        int result = -1;
        int min = Integer.MAX_VALUE;
        int length = $this$indexOfMinValue.length;
        for (int i = 0; i < length; i++) {
            int i2 = minBound + 1;
            int i3 = $this$indexOfMinValue[i];
            boolean z = false;
            if (i2 <= i3 && i3 < min) {
                z = true;
            }
            if (z) {
                min = $this$indexOfMinValue[i];
                result = i;
            }
        }
        return result;
    }

    private static final <T> int indexOfMinBy(T[] tArr, Function1<? super T, Integer> function1) {
        int result = -1;
        int min = Integer.MAX_VALUE;
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            int value = function1.invoke(tArr[i]).intValue();
            if (min > value) {
                min = value;
                result = i;
            }
        }
        return result;
    }

    private static final int indexOfMaxValue(int[] $this$indexOfMaxValue) {
        int result = -1;
        int max = Integer.MIN_VALUE;
        int length = $this$indexOfMaxValue.length;
        for (int i = 0; i < length; i++) {
            if (max < $this$indexOfMaxValue[i]) {
                max = $this$indexOfMaxValue[i];
                result = i;
            }
        }
        return result;
    }

    private static final int[] transform(int[] $this$transform, Function1<? super Integer, Integer> function1) {
        int length = $this$transform.length;
        for (int i = 0; i < length; i++) {
            $this$transform[i] = function1.invoke(Integer.valueOf($this$transform[i])).intValue();
        }
        return $this$transform;
    }

    private static final void ensureIndicesInRange(LazyStaggeredGridMeasureContext $this$ensureIndicesInRange, int[] indices, int itemCount) {
        int index$iv;
        int length = indices.length - 1;
        if (length >= 0) {
            do {
                int i = length;
                length--;
                while (true) {
                    if (indices[i] < itemCount && $this$ensureIndicesInRange.getLaneInfo().assignedToLane(indices[i], i)) {
                        break;
                    } else {
                        indices[i] = findPreviousItemIndex($this$ensureIndicesInRange, indices[i], i);
                    }
                }
                if (indices[i] >= 0) {
                    int itemIndex = indices[i];
                    if (!$this$ensureIndicesInRange.isFullSpan($this$ensureIndicesInRange.getItemProvider(), itemIndex)) {
                        if ($this$ensureIndicesInRange.getLaneInfo().getLane(itemIndex) != -2) {
                            index$iv = i;
                        } else {
                            index$iv = 0;
                            int length2 = indices.length;
                            while (true) {
                                if (index$iv < length2) {
                                    int it = indices[index$iv];
                                    if (it == itemIndex) {
                                        break;
                                    } else {
                                        index$iv++;
                                    }
                                } else {
                                    index$iv = -1;
                                    break;
                                }
                            }
                            int lane = index$iv + 1;
                            if (lane <= i) {
                                while (true) {
                                    if (indices[lane] == itemIndex) {
                                        indices[lane] = findPreviousItemIndex($this$ensureIndicesInRange, itemIndex, lane);
                                    }
                                    if (lane == i) {
                                        break;
                                    } else {
                                        lane++;
                                    }
                                }
                            }
                        }
                        $this$ensureIndicesInRange.getLaneInfo().setLane(itemIndex, index$iv);
                    }
                }
            } while (length >= 0);
        }
    }

    private static final int findPreviousItemIndex(LazyStaggeredGridMeasureContext $this$findPreviousItemIndex, int item, int lane) {
        return $this$findPreviousItemIndex.getLaneInfo().findPreviousItemIndex(item, lane);
    }
}
