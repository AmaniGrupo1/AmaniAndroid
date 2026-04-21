package androidx.compose.foundation.lazy.grid;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutStickyItemsKt;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.lazy.layout.StickyItemsPlacement;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LazyGridMeasure.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000¸\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\u0002\u001aü\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u00032\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00030 2\u0006\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u00132\b\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*23\u0010+\u001a/\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b-\u0012\b\b.\u0012\u0004\b\b(/\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0011000 0,2!\u00101\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b-\u0012\b\b.\u0012\u0004\b\b(2\u0012\u0004\u0012\u00020\u00030,2\b\u00103\u001a\u0004\u0018\u0001042/\u00105\u001a+\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u0002080,¢\u0006\u0002\b9\u0012\u0004\u0012\u00020:06H\u0000¢\u0006\u0004\b;\u0010<\u001aA\u0010=\u001a\b\u0012\u0004\u0012\u00020\u001d0 2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00030 2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00130,H\u0082\b\u001aF\u0010?\u001a\b\u0012\u0004\u0012\u00020@0 2\u0006\u0010A\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u00132\f\u0010B\u001a\b\u0012\u0004\u0012\u00020@0 2\b\u0010C\u001a\u0004\u0018\u00010$H\u0002\u001a\u008c\u0001\u0010D\u001a\b\u0012\u0004\u0012\u00020\u001d0E2\f\u0010F\u001a\b\u0012\u0004\u0012\u00020@0 2\f\u0010G\u001a\b\u0012\u0004\u0012\u00020\u001d0 2\f\u0010H\u001a\b\u0012\u0004\u0012\u00020\u001d0 2\u0006\u0010I\u001a\u00020\u00032\u0006\u0010J\u001a\u00020\u00032\u0006\u0010K\u001a\u00020\u00032\u0006\u0010L\u001a\u00020\u00032\u0006\u0010M\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a+\u0010N\u001a\u000208\"\u0004\b\u0000\u0010O*\b\u0012\u0004\u0012\u0002HO0E2\f\u0010P\u001a\b\u0012\u0004\u0012\u0002HO0QH\u0002¢\u0006\u0002\u0010R¨\u0006S"}, d2 = {"measureLazyGrid", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;", "itemsCount", "", "measuredLineProvider", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;", "measuredItemProvider", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;", "mainAxisAvailableSize", "beforeContentPadding", "afterContentPadding", "spaceBetweenLines", "firstVisibleLineIndex", "firstVisibleLineScrollOffset", "scrollToBeConsumed", "", "constraints", "Landroidx/compose/ui/unit/Constraints;", "isVertical", "", "verticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "reverseLayout", "density", "Landroidx/compose/ui/unit/Density;", "itemAnimator", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;", "slotsPerLine", "pinnedItems", "", "isInLookaheadScope", "isLookingAhead", "approachLayoutInfo", "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "placementScopeInvalidator", "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;", "graphicsContext", "Landroidx/compose/ui/graphics/GraphicsContext;", "prefetchInfoRetriever", "Lkotlin/Function1;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "line", "Lkotlin/Pair;", "lineIndexProvider", "itemIndex", "stickyItemsScrollBehavior", "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;", "layout", "Lkotlin/Function3;", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "", "Lkotlin/ExtensionFunctionType;", "Landroidx/compose/ui/layout/MeasureResult;", "measureLazyGrid-t1x4au0", "(ILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;", "calculateExtraItems", "filter", "linesRetainedForLookahead", "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;", "lastVisibleItemIndex", "visibleLines", "lastApproachLayoutInfo", "calculateItemsOffsets", "", "lines", "itemsBefore", "itemsAfter", "layoutWidth", "layoutHeight", "finalMainAxisOffset", "maxOffset", "firstLineScrollOffset", "addAllFromArray", ExifInterface.GPS_DIRECTION_TRUE, "arr", "", "(Ljava/util/List;[Ljava/lang/Object;)V", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class LazyGridMeasureKt {
    /* JADX WARN: Removed duplicated region for block: B:129:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0684  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0687  */
    /* JADX INFO: renamed from: measureLazyGrid-t1x4au0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final LazyGridMeasureResult m958measureLazyGridt1x4au0(int itemsCount, final LazyGridMeasuredLineProvider measuredLineProvider, final LazyGridMeasuredItemProvider measuredItemProvider, int mainAxisAvailableSize, int beforeContentPadding, int afterContentPadding, int spaceBetweenLines, int firstVisibleLineIndex, int firstVisibleLineScrollOffset, float scrollToBeConsumed, long j, boolean isVertical, Arrangement.Vertical verticalArrangement, Arrangement.Horizontal horizontalArrangement, boolean reverseLayout, Density density, LazyLayoutItemAnimator<LazyGridMeasuredItem> lazyLayoutItemAnimator, int slotsPerLine, List<Integer> list, boolean isInLookaheadScope, final boolean isLookingAhead, LazyGridLayoutInfo approachLayoutInfo, CoroutineScope coroutineScope, final MutableState<Unit> mutableState, GraphicsContext graphicsContext, Function1<? super Integer, ? extends List<Pair<Integer, Constraints>>> function1, Function1<? super Integer, Integer> function12, StickyItemsPlacement stickyItemsScrollBehavior, Function3<? super Integer, ? super Integer, ? super Function1<? super Placeable.PlacementScope, Unit>, ? extends MeasureResult> function3) {
        int currentFirstLineIndex;
        int currentFirstLineIndex2;
        int currentFirstLineScrollOffset;
        int scrollDelta;
        int currentMainAxisOffset;
        int currentFirstLineScrollOffset2;
        int currentFirstLineScrollOffset3;
        LazyGridMeasuredLine firstLine;
        int layoutWidth;
        int layoutHeight;
        LazyGridMeasuredLine firstLine2;
        float consumedScroll;
        List<LazyGridMeasuredItem> list2;
        int layoutWidth2;
        int layoutWidth3;
        int newMainAxisSize;
        boolean z;
        List list3;
        boolean z2;
        boolean z3;
        int index$iv$iv;
        int indexInVisibleLines;
        int indexInVisibleLines2;
        int it;
        LazyGridMeasuredLineProvider measuredLineProvider$iv;
        List list4;
        LazyGridMeasuredItem[] items;
        LazyGridMeasuredItem lazyGridMeasuredItem;
        LazyGridMeasuredItem[] items2;
        LazyGridMeasuredItem lazyGridMeasuredItem2;
        int currentFirstLineScrollOffset4;
        int i = itemsCount;
        boolean z4 = true;
        boolean value$iv = beforeContentPadding >= 0;
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalArgumentException("negative beforeContentPadding");
        }
        boolean value$iv2 = afterContentPadding >= 0;
        if (!value$iv2) {
            InlineClassHelperKt.throwIllegalArgumentException("negative afterContentPadding");
        }
        char c = ' ';
        if (i <= 0) {
            int layoutWidth4 = Constraints.m7460getMinWidthimpl(j);
            int layoutHeight2 = Constraints.m7459getMinHeightimpl(j);
            lazyLayoutItemAnimator.onMeasured(0, layoutWidth4, layoutHeight2, new ArrayList(), measuredItemProvider.getKeyIndexMap(), measuredItemProvider, isVertical, isLookingAhead, slotsPerLine, isInLookaheadScope, 0, 0, coroutineScope, graphicsContext);
            if (!isLookingAhead) {
                long disappearingItemsSize = lazyLayoutItemAnimator.m987getMinSizeToFitDisappearingItemsYbymL2g();
                if (!IntSize.m7674equalsimpl0(disappearingItemsSize, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                    int $i$f$unpackInt1 = (int) (disappearingItemsSize >> 32);
                    layoutWidth4 = ConstraintsKt.m7475constrainWidthK40F9xA(j, $i$f$unpackInt1);
                    layoutHeight2 = ConstraintsKt.m7474constrainHeightK40F9xA(j, (int) (disappearingItemsSize & 4294967295L));
                }
            }
            return new LazyGridMeasureResult(null, 0, false, 0.0f, function3.invoke(Integer.valueOf(layoutWidth4), Integer.valueOf(layoutHeight2), new Function1() { // from class: androidx.compose.foundation.lazy.grid.LazyGridMeasureKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Unit.INSTANCE;
                }
            }), 0.0f, false, coroutineScope, density, slotsPerLine, function1, function12, CollectionsKt.emptyList(), -beforeContentPadding, mainAxisAvailableSize + afterContentPadding, 0, reverseLayout, isVertical ? Orientation.Vertical : Orientation.Horizontal, afterContentPadding, spaceBetweenLines);
        }
        int currentFirstLineIndex3 = firstVisibleLineIndex;
        int scrollDelta2 = Math.round(scrollToBeConsumed);
        int currentFirstLineScrollOffset5 = firstVisibleLineScrollOffset - scrollDelta2;
        if (currentFirstLineIndex3 == 0 && currentFirstLineScrollOffset5 < 0) {
            scrollDelta2 += currentFirstLineScrollOffset5;
            currentFirstLineScrollOffset5 = 0;
        }
        ArrayDeque visibleLines = new ArrayDeque();
        int minOffset = (spaceBetweenLines < 0 ? spaceBetweenLines : 0) + (-beforeContentPadding);
        int currentFirstLineScrollOffset6 = currentFirstLineScrollOffset5 + minOffset;
        while (currentFirstLineScrollOffset6 < 0 && currentFirstLineIndex3 > 0) {
            int previous = currentFirstLineIndex3 - 1;
            char c2 = c;
            LazyGridMeasuredLine measuredLine = measuredLineProvider.getAndMeasure(previous);
            visibleLines.add(0, measuredLine);
            currentFirstLineScrollOffset6 += measuredLine.getMainAxisSizeWithSpacings();
            currentFirstLineIndex3 = previous;
            c = c2;
        }
        char c3 = c;
        if (currentFirstLineScrollOffset6 < minOffset) {
            int notConsumedScrollDelta = minOffset - currentFirstLineScrollOffset6;
            currentFirstLineScrollOffset6 = minOffset;
            scrollDelta2 -= notConsumedScrollDelta;
        }
        int currentFirstLineScrollOffset7 = currentFirstLineScrollOffset6 - minOffset;
        int index = currentFirstLineIndex3;
        int maxMainAxis = RangesKt.coerceAtLeast(mainAxisAvailableSize + afterContentPadding, 0);
        int currentMainAxisOffset2 = -currentFirstLineScrollOffset7;
        boolean remeasureNeeded = false;
        int indexInVisibleLines3 = 0;
        while (true) {
            currentFirstLineIndex = currentFirstLineIndex3;
            if (indexInVisibleLines3 >= visibleLines.size()) {
                break;
            }
            if (currentMainAxisOffset2 >= maxMainAxis) {
                visibleLines.remove(indexInVisibleLines3);
                Unit unit = Unit.INSTANCE;
                remeasureNeeded = true;
            } else {
                index++;
                currentMainAxisOffset2 += ((LazyGridMeasuredLine) visibleLines.get(indexInVisibleLines3)).getMainAxisSizeWithSpacings();
                Integer.valueOf(indexInVisibleLines3);
                indexInVisibleLines3++;
            }
            currentFirstLineIndex3 = currentFirstLineIndex;
        }
        int i2 = currentMainAxisOffset2;
        int currentMainAxisOffset3 = index;
        int currentMainAxisOffset4 = i2;
        boolean remeasureNeeded2 = remeasureNeeded;
        int currentFirstLineIndex4 = currentFirstLineIndex;
        while (true) {
            if (currentMainAxisOffset3 >= i) {
                currentFirstLineIndex2 = currentFirstLineIndex4;
                currentFirstLineScrollOffset = currentFirstLineScrollOffset7;
                break;
            }
            if (currentMainAxisOffset4 >= maxMainAxis && currentMainAxisOffset4 > 0 && !visibleLines.isEmpty()) {
                currentFirstLineIndex2 = currentFirstLineIndex4;
                currentFirstLineScrollOffset = currentFirstLineScrollOffset7;
                break;
            }
            currentFirstLineIndex2 = currentFirstLineIndex4;
            LazyGridMeasuredLine measuredLine2 = measuredLineProvider.getAndMeasure(currentMainAxisOffset3);
            if (measuredLine2.isEmpty()) {
                currentFirstLineScrollOffset = currentFirstLineScrollOffset7;
                break;
            }
            currentMainAxisOffset4 += measuredLine2.getMainAxisSizeWithSpacings();
            if (currentMainAxisOffset4 > minOffset) {
                currentFirstLineScrollOffset4 = currentFirstLineScrollOffset7;
            } else {
                currentFirstLineScrollOffset4 = currentFirstLineScrollOffset7;
                if (((LazyGridMeasuredItem) ArraysKt.last(measuredLine2.getItems())).getIndex() != itemsCount - 1) {
                    currentFirstLineScrollOffset7 = currentFirstLineScrollOffset4 - measuredLine2.getMainAxisSizeWithSpacings();
                    Unit unit2 = Unit.INSTANCE;
                    remeasureNeeded2 = true;
                    currentFirstLineIndex2 = currentMainAxisOffset3 + 1;
                }
                currentMainAxisOffset3++;
                i = itemsCount;
                currentFirstLineIndex4 = currentFirstLineIndex2;
            }
            Boolean.valueOf(visibleLines.add(measuredLine2));
            currentFirstLineScrollOffset7 = currentFirstLineScrollOffset4;
            currentMainAxisOffset3++;
            i = itemsCount;
            currentFirstLineIndex4 = currentFirstLineIndex2;
        }
        int currentFirstLineIndex5 = scrollDelta2;
        if (currentMainAxisOffset4 >= mainAxisAvailableSize) {
            scrollDelta = scrollDelta2;
            currentMainAxisOffset = currentMainAxisOffset4;
            currentFirstLineScrollOffset2 = currentFirstLineScrollOffset;
        } else {
            int currentFirstLineScrollOffset8 = mainAxisAvailableSize - currentMainAxisOffset4;
            int currentFirstLineScrollOffset9 = currentFirstLineScrollOffset - currentFirstLineScrollOffset8;
            int currentMainAxisOffset5 = currentMainAxisOffset4 + currentFirstLineScrollOffset8;
            while (currentFirstLineScrollOffset9 < beforeContentPadding && currentFirstLineIndex2 > 0) {
                int toScrollBack = currentFirstLineScrollOffset8;
                int toScrollBack2 = currentFirstLineIndex2 - 1;
                int currentFirstLineScrollOffset10 = currentFirstLineScrollOffset9;
                LazyGridMeasuredLine measuredLine3 = measuredLineProvider.getAndMeasure(toScrollBack2);
                visibleLines.add(0, measuredLine3);
                currentFirstLineIndex2 = toScrollBack2;
                currentFirstLineScrollOffset9 = currentFirstLineScrollOffset10 + measuredLine3.getMainAxisSizeWithSpacings();
                currentFirstLineScrollOffset8 = toScrollBack;
            }
            int toScrollBack3 = currentFirstLineScrollOffset8;
            int currentFirstLineScrollOffset11 = currentFirstLineScrollOffset9;
            int scrollDelta3 = scrollDelta2 + toScrollBack3;
            if (currentFirstLineScrollOffset11 >= 0) {
                scrollDelta = scrollDelta3;
                currentMainAxisOffset = currentMainAxisOffset5;
                currentFirstLineScrollOffset2 = currentFirstLineScrollOffset11;
            } else {
                currentFirstLineScrollOffset2 = 0;
                scrollDelta = scrollDelta3 + currentFirstLineScrollOffset11;
                currentMainAxisOffset = currentMainAxisOffset5 + currentFirstLineScrollOffset11;
            }
        }
        float consumedScroll2 = (MathKt.getSign(Math.round(scrollToBeConsumed)) == MathKt.getSign(scrollDelta) && Math.abs(Math.round(scrollToBeConsumed)) >= Math.abs(scrollDelta)) ? scrollDelta : scrollToBeConsumed;
        float unconsumedScroll = scrollToBeConsumed - consumedScroll2;
        float f = 0.0f;
        if (isLookingAhead && scrollDelta > currentFirstLineIndex5 && unconsumedScroll <= 0.0f) {
            f = (scrollDelta - currentFirstLineIndex5) + unconsumedScroll;
        }
        float scrollBackAmount = f;
        boolean value$iv3 = currentFirstLineScrollOffset2 >= 0;
        if (!value$iv3) {
            InlineClassHelperKt.throwIllegalArgumentException("negative initial offset");
        }
        int visibleLinesScrollOffset = -currentFirstLineScrollOffset2;
        LazyGridMeasuredLine firstLine3 = (LazyGridMeasuredLine) visibleLines.firstOrNull();
        int firstItemIndex = (firstLine3 == null || (items2 = firstLine3.getItems()) == null || (lazyGridMeasuredItem2 = (LazyGridMeasuredItem) ArraysKt.firstOrNull(items2)) == null) ? 0 : lazyGridMeasuredItem2.getIndex();
        LazyGridMeasuredLine lazyGridMeasuredLine = (LazyGridMeasuredLine) visibleLines.lastOrNull();
        int lastItemIndex = (lazyGridMeasuredLine == null || (items = lazyGridMeasuredLine.getItems()) == null || (lazyGridMeasuredItem = (LazyGridMeasuredItem) ArraysKt.lastOrNull(items)) == null) ? 0 : lazyGridMeasuredItem.getIndex();
        LazyGridMeasuredLineProvider measuredLineProvider$iv2 = measuredLineProvider;
        List<Integer> list5 = list;
        int preScrollBackScrollDelta = list5.size();
        int currentFirstLineScrollOffset12 = currentFirstLineScrollOffset2;
        List extraItemsBefore = null;
        int currentFirstLineScrollOffset13 = 0;
        while (currentFirstLineScrollOffset13 < preScrollBackScrollDelta) {
            int i3 = preScrollBackScrollDelta;
            List<Integer> list6 = list5;
            Object item$iv$iv = list6.get(currentFirstLineScrollOffset13);
            int index$iv = ((Number) item$iv$iv).intValue();
            if (index$iv >= 0) {
                index$iv$iv = currentFirstLineScrollOffset13;
                indexInVisibleLines = indexInVisibleLines3;
                indexInVisibleLines2 = firstItemIndex;
                it = index$iv < indexInVisibleLines2 ? 1 : 0;
                if (it == 0) {
                    measuredLineProvider$iv = measuredLineProvider$iv2;
                    int span$iv = measuredLineProvider$iv.spanOf(index$iv);
                    long constraints$iv = measuredLineProvider$iv.m962childConstraintsJhjzzOo$foundation(0, span$iv);
                    LazyGridMeasuredItem measuredItem$iv = measuredItemProvider.mo933getAndMeasurehBUhpc(index$iv, 0, span$iv, constraints$iv);
                    if (extraItemsBefore != null) {
                        list4 = extraItemsBefore;
                    } else {
                        Object items$iv = new ArrayList();
                        list4 = (List) items$iv;
                    }
                    list4.add(measuredItem$iv);
                    extraItemsBefore = list4;
                } else {
                    measuredLineProvider$iv = measuredLineProvider$iv2;
                }
                measuredLineProvider$iv2 = measuredLineProvider$iv;
                firstItemIndex = indexInVisibleLines2;
                list5 = list6;
                indexInVisibleLines3 = indexInVisibleLines;
                currentFirstLineScrollOffset13 = index$iv$iv + 1;
                preScrollBackScrollDelta = i3;
            } else {
                index$iv$iv = currentFirstLineScrollOffset13;
                indexInVisibleLines = indexInVisibleLines3;
                indexInVisibleLines2 = firstItemIndex;
            }
            if (it == 0) {
            }
            measuredLineProvider$iv2 = measuredLineProvider$iv;
            firstItemIndex = indexInVisibleLines2;
            list5 = list6;
            indexInVisibleLines3 = indexInVisibleLines;
            currentFirstLineScrollOffset13 = index$iv$iv + 1;
            preScrollBackScrollDelta = i3;
        }
        int indexInVisibleLines4 = firstItemIndex;
        if (extraItemsBefore == null) {
            extraItemsBefore = CollectionsKt.emptyList();
        }
        float consumedScroll3 = consumedScroll2;
        int i4 = itemsCount;
        int index2 = currentMainAxisOffset;
        int lastItemIndex2 = lastItemIndex;
        List<LazyGridMeasuredLine> listLinesRetainedForLookahead = linesRetainedForLookahead(lastItemIndex2, i4, measuredLineProvider, isLookingAhead, visibleLines, approachLayoutInfo);
        int $i$f$calculateExtraItems = 0;
        List<Integer> list7 = list;
        int lastItemIndex3 = list7.size();
        List extraItemsAfter = null;
        int index$iv$iv2 = 0;
        while (index$iv$iv2 < lastItemIndex3) {
            int i5 = lastItemIndex3;
            List<Integer> list8 = list7;
            Object item$iv$iv2 = list8.get(index$iv$iv2);
            int index$iv2 = ((Number) item$iv$iv2).intValue();
            int index$iv$iv3 = index$iv$iv2;
            int index$iv$iv4 = lastItemIndex2 + 1;
            int $i$f$calculateExtraItems2 = $i$f$calculateExtraItems;
            if (index$iv$iv4 <= index$iv2 && index$iv2 < i4) {
                if (isLookingAhead) {
                    List<LazyGridMeasuredLine> list9 = listLinesRetainedForLookahead;
                    int size = list9.size();
                    int index$iv$iv5 = 0;
                    while (true) {
                        if (index$iv$iv5 < size) {
                            int i6 = size;
                            List<LazyGridMeasuredLine> list10 = list9;
                            Object item$iv$iv3 = list10.get(index$iv$iv5);
                            LazyGridMeasuredLine line = (LazyGridMeasuredLine) item$iv$iv3;
                            LazyGridMeasuredItem[] items3 = line.getItems();
                            int index$iv$iv6 = index$iv$iv5;
                            int index$iv$iv7 = items3.length;
                            int i7 = 0;
                            while (true) {
                                if (i7 < index$iv$iv7) {
                                    int i8 = i7;
                                    if (items3[i7].getIndex() == index$iv2) {
                                        z3 = true;
                                        break;
                                    }
                                    i7 = i8 + 1;
                                } else {
                                    z3 = false;
                                    break;
                                }
                            }
                            if (z3) {
                                z2 = true;
                                break;
                            }
                            index$iv$iv5 = index$iv$iv6 + 1;
                            size = i6;
                            list9 = list10;
                        } else {
                            z2 = false;
                            break;
                        }
                    }
                    if (!z2) {
                    }
                }
                z = true;
            } else {
                z = false;
            }
            if (z) {
                int span$iv2 = measuredLineProvider.spanOf(index$iv2);
                long constraints$iv2 = measuredLineProvider.m962childConstraintsJhjzzOo$foundation(0, span$iv2);
                LazyGridMeasuredItem measuredItem$iv2 = measuredItemProvider.mo933getAndMeasurehBUhpc(index$iv2, 0, span$iv2, constraints$iv2);
                if (extraItemsAfter != null) {
                    list3 = extraItemsAfter;
                } else {
                    Object items$iv2 = new ArrayList();
                    list3 = (List) items$iv2;
                }
                list3.add(measuredItem$iv2);
                extraItemsAfter = list3;
            }
            index$iv$iv2 = index$iv$iv3 + 1;
            lastItemIndex3 = i5;
            list7 = list8;
            $i$f$calculateExtraItems = $i$f$calculateExtraItems2;
            i4 = itemsCount;
        }
        if (extraItemsAfter == null) {
            extraItemsAfter = CollectionsKt.emptyList();
        }
        if (beforeContentPadding > 0 || spaceBetweenLines < 0) {
            int size2 = visibleLines.size();
            int currentFirstLineScrollOffset14 = currentFirstLineScrollOffset12;
            for (int i9 = 0; i9 < size2; i9++) {
                int size3 = ((LazyGridMeasuredLine) visibleLines.get(i9)).getMainAxisSizeWithSpacings();
                if (currentFirstLineScrollOffset14 == 0 || size3 > currentFirstLineScrollOffset14 || i9 == CollectionsKt.getLastIndex(visibleLines)) {
                    break;
                }
                currentFirstLineScrollOffset14 -= size3;
                firstLine3 = (LazyGridMeasuredLine) visibleLines.get(i9 + 1);
            }
            currentFirstLineScrollOffset3 = currentFirstLineScrollOffset14;
            firstLine = firstLine3;
        } else {
            currentFirstLineScrollOffset3 = currentFirstLineScrollOffset12;
            firstLine = firstLine3;
        }
        if (isVertical) {
            layoutWidth = Constraints.m7458getMaxWidthimpl(j);
        } else {
            layoutWidth = ConstraintsKt.m7475constrainWidthK40F9xA(j, index2);
        }
        if (isVertical) {
            layoutHeight = ConstraintsKt.m7474constrainHeightK40F9xA(j, index2);
        } else {
            layoutHeight = Constraints.m7457getMaxHeightimpl(j);
        }
        List extraItemsBefore2 = extraItemsBefore;
        List extraItemsBefore3 = extraItemsAfter;
        List<LazyGridMeasuredItem> listCalculateItemsOffsets = calculateItemsOffsets(listLinesRetainedForLookahead.isEmpty() ? visibleLines : CollectionsKt.plus((Collection) visibleLines, (Iterable) listLinesRetainedForLookahead), extraItemsBefore2, extraItemsBefore3, layoutWidth, layoutHeight, index2, mainAxisAvailableSize, visibleLinesScrollOffset, isVertical, verticalArrangement, horizontalArrangement, reverseLayout, density);
        int currentFirstLineScrollOffset15 = currentFirstLineScrollOffset3;
        int layoutWidth5 = layoutWidth;
        int layoutHeight3 = layoutHeight;
        lazyLayoutItemAnimator.onMeasured((int) consumedScroll3, layoutWidth5, layoutHeight3, listCalculateItemsOffsets, measuredItemProvider.getKeyIndexMap(), measuredItemProvider, isVertical, isLookingAhead, slotsPerLine, isInLookaheadScope, currentFirstLineScrollOffset15, index2, coroutineScope, graphicsContext);
        if (isLookingAhead) {
            firstLine2 = firstLine;
            consumedScroll = consumedScroll3;
            list2 = listCalculateItemsOffsets;
        } else {
            long disappearingItemsSize2 = lazyLayoutItemAnimator.m987getMinSizeToFitDisappearingItemsYbymL2g();
            consumedScroll = consumedScroll3;
            list2 = listCalculateItemsOffsets;
            if (IntSize.m7674equalsimpl0(disappearingItemsSize2, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                firstLine2 = firstLine;
            } else {
                int oldMainAxisSize = isVertical ? layoutHeight3 : layoutWidth5;
                int layoutWidth6 = ConstraintsKt.m7475constrainWidthK40F9xA(j, Math.max(layoutWidth5, (int) (disappearingItemsSize2 >> c3)));
                int layoutHeight4 = ConstraintsKt.m7474constrainHeightK40F9xA(j, Math.max(layoutHeight3, (int) (disappearingItemsSize2 & 4294967295L)));
                if (isVertical) {
                    newMainAxisSize = layoutHeight4;
                } else {
                    newMainAxisSize = layoutWidth6;
                }
                if (newMainAxisSize == oldMainAxisSize) {
                    firstLine2 = firstLine;
                } else {
                    int index$iv3 = 0;
                    firstLine2 = firstLine;
                    int size4 = list2.size();
                    while (index$iv3 < size4) {
                        Object item$iv = list2.get(index$iv3);
                        int i10 = size4;
                        LazyGridMeasuredItem it2 = (LazyGridMeasuredItem) item$iv;
                        it2.updateMainAxisLayoutSize(newMainAxisSize);
                        index$iv3++;
                        size4 = i10;
                    }
                }
                layoutWidth2 = layoutWidth6;
                layoutWidth3 = layoutHeight4;
                final List<LazyGridMeasuredItem> list11 = list2;
                final List stickingItems = LazyLayoutStickyItemsKt.applyStickyItems(stickyItemsScrollBehavior, indexInVisibleLines4, lastItemIndex2, list11, measuredItemProvider.getHeaderIndices(), beforeContentPadding, afterContentPadding, layoutWidth2, layoutWidth3, new Function1() { // from class: androidx.compose.foundation.lazy.grid.LazyGridMeasureKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return LazyGridMeasureKt.measureLazyGrid_t1x4au0$lambda$7(measuredLineProvider, measuredItemProvider, ((Integer) obj).intValue());
                    }
                });
                int layoutWidth7 = layoutWidth2;
                int layoutHeight5 = layoutWidth3;
                if (lastItemIndex2 == itemsCount - 1 && index2 <= mainAxisAvailableSize) {
                    z4 = false;
                }
                return new LazyGridMeasureResult(firstLine2, currentFirstLineScrollOffset15, z4, consumedScroll, function3.invoke(Integer.valueOf(layoutWidth7), Integer.valueOf(layoutHeight5), new Function1() { // from class: androidx.compose.foundation.lazy.grid.LazyGridMeasureKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return LazyGridMeasureKt.measureLazyGrid_t1x4au0$lambda$8(mutableState, list11, stickingItems, isLookingAhead, (Placeable.PlacementScope) obj);
                    }
                }), scrollBackAmount, remeasureNeeded2, coroutineScope, density, slotsPerLine, function1, function12, LazyLayoutMeasuredItemKt.updatedVisibleItems(indexInVisibleLines4, lastItemIndex2, list11, stickingItems), -beforeContentPadding, mainAxisAvailableSize + afterContentPadding, itemsCount, reverseLayout, !isVertical ? Orientation.Vertical : Orientation.Horizontal, afterContentPadding, spaceBetweenLines);
            }
        }
        layoutWidth2 = layoutWidth5;
        layoutWidth3 = layoutHeight3;
        final List list112 = list2;
        final List stickingItems2 = LazyLayoutStickyItemsKt.applyStickyItems(stickyItemsScrollBehavior, indexInVisibleLines4, lastItemIndex2, list112, measuredItemProvider.getHeaderIndices(), beforeContentPadding, afterContentPadding, layoutWidth2, layoutWidth3, new Function1() { // from class: androidx.compose.foundation.lazy.grid.LazyGridMeasureKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LazyGridMeasureKt.measureLazyGrid_t1x4au0$lambda$7(measuredLineProvider, measuredItemProvider, ((Integer) obj).intValue());
            }
        });
        int layoutWidth72 = layoutWidth2;
        int layoutHeight52 = layoutWidth3;
        if (lastItemIndex2 == itemsCount - 1) {
            z4 = false;
        }
        return new LazyGridMeasureResult(firstLine2, currentFirstLineScrollOffset15, z4, consumedScroll, function3.invoke(Integer.valueOf(layoutWidth72), Integer.valueOf(layoutHeight52), new Function1() { // from class: androidx.compose.foundation.lazy.grid.LazyGridMeasureKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LazyGridMeasureKt.measureLazyGrid_t1x4au0$lambda$8(mutableState, list112, stickingItems2, isLookingAhead, (Placeable.PlacementScope) obj);
            }
        }), scrollBackAmount, remeasureNeeded2, coroutineScope, density, slotsPerLine, function1, function12, LazyLayoutMeasuredItemKt.updatedVisibleItems(indexInVisibleLines4, lastItemIndex2, list112, stickingItems2), -beforeContentPadding, mainAxisAvailableSize + afterContentPadding, itemsCount, reverseLayout, !isVertical ? Orientation.Vertical : Orientation.Horizontal, afterContentPadding, spaceBetweenLines);
    }

    static final LazyGridMeasuredItem measureLazyGrid_t1x4au0$lambda$7(LazyGridMeasuredLineProvider $measuredLineProvider, LazyGridMeasuredItemProvider $measuredItemProvider, int it) {
        int span = $measuredLineProvider.spanOf(it);
        long childConstraints = $measuredLineProvider.m962childConstraintsJhjzzOo$foundation(0, span);
        return $measuredItemProvider.mo933getAndMeasurehBUhpc(it, 0, span, childConstraints);
    }

    static final Unit measureLazyGrid_t1x4au0$lambda$8(MutableState mutableState, final List $positionedItems, final List $stickingItems, final boolean $isLookingAhead, Placeable.PlacementScope $this$layout) {
        $this$layout.withMotionFrameOfReferencePlacement(new Function1() { // from class: androidx.compose.foundation.lazy.grid.LazyGridMeasureKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LazyGridMeasureKt.measureLazyGrid_t1x4au0$lambda$8$0($positionedItems, $stickingItems, $isLookingAhead, (Placeable.PlacementScope) obj);
            }
        });
        ObservableScopeInvalidator.m1005attachToScopeimpl(mutableState);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit measureLazyGrid_t1x4au0$lambda$8$0(List $positionedItems, List $stickingItems, boolean $isLookingAhead, Placeable.PlacementScope $this$withMotionFrameOfReferencePlacement) {
        int size = $positionedItems.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = $positionedItems.get(index$iv);
            LazyGridMeasuredItem it = (LazyGridMeasuredItem) item$iv;
            it.place($this$withMotionFrameOfReferencePlacement, $isLookingAhead);
        }
        int size2 = $stickingItems.size();
        for (int index$iv2 = 0; index$iv2 < size2; index$iv2++) {
            Object item$iv2 = $stickingItems.get(index$iv2);
            LazyGridMeasuredItem it2 = (LazyGridMeasuredItem) item$iv2;
            it2.place($this$withMotionFrameOfReferencePlacement, $isLookingAhead);
        }
        return Unit.INSTANCE;
    }

    private static final List<LazyGridMeasuredItem> calculateExtraItems(List<Integer> list, LazyGridMeasuredItemProvider measuredItemProvider, LazyGridMeasuredLineProvider measuredLineProvider, Function1<? super Integer, Boolean> function1) {
        ArrayList arrayList = null;
        int size = list.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = list.get(index$iv);
            int index = ((Number) item$iv).intValue();
            if (function1.invoke(Integer.valueOf(index)).booleanValue()) {
                int span = measuredLineProvider.spanOf(index);
                long constraints = measuredLineProvider.m962childConstraintsJhjzzOo$foundation(0, span);
                LazyGridMeasuredItem measuredItem = measuredItemProvider.mo933getAndMeasurehBUhpc(index, 0, span, constraints);
                if (arrayList == null) {
                    Object items = new ArrayList();
                    arrayList = (List) items;
                }
                arrayList.add(measuredItem);
            }
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ec A[LOOP:1: B:24:0x007a->B:53:0x00ec, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00fd A[EDGE_INSN: B:67:0x00fd->B:58:0x00fd BREAK  A[LOOP:1: B:24:0x007a->B:53:0x00ec], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final List<LazyGridMeasuredLine> linesRetainedForLookahead(int lastVisibleItemIndex, int itemsCount, LazyGridMeasuredLineProvider measuredLineProvider, boolean isLookingAhead, List<LazyGridMeasuredLine> list, LazyGridLayoutInfo lastApproachLayoutInfo) {
        int i;
        int iMin;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        List list2 = null;
        if (isLookingAhead && lastApproachLayoutInfo != null && !lastApproachLayoutInfo.getVisibleItemsInfo().isEmpty()) {
            List<LazyGridItemInfo> visibleItemsInfo = lastApproachLayoutInfo.getVisibleItemsInfo();
            LazyGridItemInfo found = null;
            boolean z5 = true;
            for (int i2 = visibleItemsInfo.size() - 1; -1 < i2; i2--) {
                if (visibleItemsInfo.get(i2).getIndex() > lastVisibleItemIndex && (i2 == 0 || visibleItemsInfo.get(i2 - 1).getIndex() <= lastVisibleItemIndex)) {
                    LazyGridItemInfo found2 = visibleItemsInfo.get(i2);
                    found = found2;
                    break;
                }
            }
            LazyGridItemInfo lastVisibleItem = (LazyGridItemInfo) CollectionsKt.last((List) lastApproachLayoutInfo.getVisibleItemsInfo());
            LazyGridMeasuredLine it = (LazyGridMeasuredLine) CollectionsKt.lastOrNull((List) list);
            int lineIndex = it != null ? it.getIndex() + 1 : 0;
            if (found != null && (i = found.getIndex()) <= (iMin = Math.min(lastVisibleItem.getIndex(), itemsCount - 1))) {
                while (true) {
                    if (list2 != null) {
                        List $this$fastAny$iv = list2;
                        int index$iv$iv = 0;
                        int size = $this$fastAny$iv.size();
                        while (true) {
                            if (index$iv$iv >= size) {
                                z3 = false;
                                break;
                            }
                            Object item$iv$iv = $this$fastAny$iv.get(index$iv$iv);
                            LazyGridMeasuredItem[] items = ((LazyGridMeasuredLine) item$iv$iv).getItems();
                            int length = items.length;
                            int i3 = 0;
                            while (true) {
                                if (i3 >= length) {
                                    z4 = false;
                                    break;
                                }
                                int i4 = i3;
                                if (items[i3].getIndex() == i) {
                                    z4 = true;
                                    break;
                                }
                                i3 = i4 + 1;
                            }
                            if (z4) {
                                z3 = true;
                                break;
                            }
                            index$iv$iv++;
                        }
                        z = true;
                        z2 = z3;
                        if (!z2) {
                            if (list2 == null) {
                                list2 = new ArrayList();
                            }
                            LazyGridMeasuredLine measuredLine = measuredLineProvider.getAndMeasure(lineIndex);
                            lineIndex++;
                            list2.add(measuredLine);
                        }
                        if (i != iMin) {
                            break;
                        }
                        i++;
                        z5 = z;
                    } else {
                        z = z5;
                    }
                    if (!z2) {
                    }
                    if (i != iMin) {
                    }
                }
            }
        }
        return list2 == null ? CollectionsKt.emptyList() : list2;
    }

    private static final List<LazyGridMeasuredItem> calculateItemsOffsets(List<LazyGridMeasuredLine> list, List<LazyGridMeasuredItem> list2, List<LazyGridMeasuredItem> list3, int layoutWidth, int layoutHeight, int finalMainAxisOffset, int maxOffset, int firstLineScrollOffset, boolean isVertical, Arrangement.Vertical verticalArrangement, Arrangement.Horizontal horizontalArrangement, boolean reverseLayout, Density density) {
        List<LazyGridMeasuredLine> list4 = list;
        boolean z = reverseLayout;
        int mainAxisLayoutSize = isVertical ? layoutHeight : layoutWidth;
        boolean hasSpareSpace = finalMainAxisOffset < Math.min(mainAxisLayoutSize, maxOffset);
        if (hasSpareSpace) {
            boolean value$iv = firstLineScrollOffset == 0;
            if (!value$iv) {
                InlineClassHelperKt.throwIllegalStateException("non-zero firstLineScrollOffset");
            }
        }
        int sum$iv = 0;
        int size = list.size();
        for (int index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
            Object item$iv$iv = list.get(index$iv$iv);
            sum$iv += ((LazyGridMeasuredLine) item$iv$iv).getItems().length;
        }
        ArrayList positionedItems = new ArrayList(sum$iv);
        if (hasSpareSpace) {
            boolean value$iv2 = list2.isEmpty() && list3.isEmpty();
            if (!value$iv2) {
                InlineClassHelperKt.throwIllegalArgumentException("no items");
            }
            int linesCount = list4.size();
            int[] sizes = new int[linesCount];
            for (int i = 0; i < linesCount; i++) {
                sizes[i] = list4.get(calculateItemsOffsets$reverseAware(i, z, linesCount)).getMainAxisSize();
            }
            int[] offsets = new int[linesCount];
            if (isVertical) {
                if (verticalArrangement == null) {
                    InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("null verticalArrangement");
                    throw new KotlinNothingValueException();
                }
                verticalArrangement.arrange(density, mainAxisLayoutSize, sizes, offsets);
            } else {
                if (horizontalArrangement == null) {
                    InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("null horizontalArrangement");
                    throw new KotlinNothingValueException();
                }
                horizontalArrangement.arrange(density, mainAxisLayoutSize, sizes, LayoutDirection.Ltr, offsets);
            }
            IntRange reverseAwareOffsetIndices = ArraysKt.getIndices(offsets);
            if (z) {
                reverseAwareOffsetIndices = RangesKt.reversed(reverseAwareOffsetIndices);
            }
            int index = reverseAwareOffsetIndices.getFirst();
            int last = reverseAwareOffsetIndices.getLast();
            int step = reverseAwareOffsetIndices.getStep();
            if ((step > 0 && index <= last) || (step < 0 && last <= index)) {
                while (true) {
                    int absoluteOffset = offsets[index];
                    LazyGridMeasuredLine line = list4.get(calculateItemsOffsets$reverseAware(index, z, linesCount));
                    int relativeOffset = z ? (mainAxisLayoutSize - absoluteOffset) - line.getMainAxisSize() : absoluteOffset;
                    IntProgression reverseAwareOffsetIndices2 = reverseAwareOffsetIndices;
                    addAllFromArray(positionedItems, line.position(relativeOffset, layoutWidth, layoutHeight));
                    if (index == last) {
                        break;
                    }
                    index += step;
                    list4 = list;
                    z = reverseLayout;
                    reverseAwareOffsetIndices = reverseAwareOffsetIndices2;
                }
            }
        } else {
            int currentMainAxis = firstLineScrollOffset;
            int size2 = list2.size() - 1;
            if (size2 >= 0) {
                do {
                    int index$iv = size2;
                    size2--;
                    Object item$iv = list2.get(index$iv);
                    LazyGridMeasuredItem it = (LazyGridMeasuredItem) item$iv;
                    currentMainAxis -= it.getMainAxisSizeWithSpacings();
                    it.position(currentMainAxis, 0, layoutWidth, layoutHeight);
                    positionedItems.add(it);
                } while (size2 >= 0);
            }
            int currentMainAxis2 = firstLineScrollOffset;
            int size3 = list.size();
            for (int index$iv2 = 0; index$iv2 < size3; index$iv2++) {
                Object item$iv2 = list.get(index$iv2);
                LazyGridMeasuredLine it2 = (LazyGridMeasuredLine) item$iv2;
                addAllFromArray(positionedItems, it2.position(currentMainAxis2, layoutWidth, layoutHeight));
                currentMainAxis2 += it2.getMainAxisSizeWithSpacings();
            }
            int size4 = list3.size();
            for (int index$iv3 = 0; index$iv3 < size4; index$iv3++) {
                Object item$iv3 = list3.get(index$iv3);
                LazyGridMeasuredItem it3 = (LazyGridMeasuredItem) item$iv3;
                it3.position(currentMainAxis2, 0, layoutWidth, layoutHeight);
                positionedItems.add(it3);
                currentMainAxis2 += it3.getMainAxisSizeWithSpacings();
            }
        }
        return positionedItems;
    }

    private static final int calculateItemsOffsets$reverseAware(int $this$calculateItemsOffsets_u24reverseAware, boolean $reverseLayout, int linesCount) {
        return !$reverseLayout ? $this$calculateItemsOffsets_u24reverseAware : (linesCount - $this$calculateItemsOffsets_u24reverseAware) - 1;
    }

    private static final <T> void addAllFromArray(List<T> list, T[] tArr) {
        for (T t : tArr) {
            list.add(t);
        }
    }
}
