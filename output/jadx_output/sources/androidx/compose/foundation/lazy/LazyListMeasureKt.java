package androidx.compose.foundation.lazy;

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
import java.util.ArrayList;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LazyListMeasure.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\f\u001a\u0092\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u001c\u001a\u00020\u00032\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u001e2\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2/\u0010)\u001a+\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020-0+¢\u0006\u0002\b.\u0012\u0004\u0012\u00020/0*H\u0000¢\u0006\u0004\b0\u00101\u001aB\u00102\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001e2\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u001b042\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00032\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u001eH\u0002\u001a4\u00105\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001e2\u0006\u00106\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00032\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u001eH\u0002\u001a\u008c\u0001\u00107\u001a\b\u0012\u0004\u0012\u00020\u001b042\f\u00108\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001e2\f\u00109\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001e2\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001e2\u0006\u0010;\u001a\u00020\u00032\u0006\u0010<\u001a\u00020\u00032\u0006\u0010=\u001a\u00020\u00032\u0006\u0010>\u001a\u00020\u00032\u0006\u0010?\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018H\u0002¨\u0006@"}, d2 = {"measureLazyList", "Landroidx/compose/foundation/lazy/LazyListMeasureResult;", "itemsCount", "", "measuredItemProvider", "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;", "mainAxisAvailableSize", "beforeContentPadding", "afterContentPadding", "spaceBetweenItems", "firstVisibleItemIndex", "firstVisibleItemScrollOffset", "scrollToBeConsumed", "", "constraints", "Landroidx/compose/ui/unit/Constraints;", "isVertical", "", "verticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "reverseLayout", "density", "Landroidx/compose/ui/unit/Density;", "itemAnimator", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;", "beyondBoundsItemCount", "pinnedItems", "", "hasLookaheadOccurred", "isLookingAhead", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "placementScopeInvalidator", "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;", "graphicsContext", "Landroidx/compose/ui/graphics/GraphicsContext;", "stickyItemsPlacement", "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;", "layout", "Lkotlin/Function3;", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "", "Lkotlin/ExtensionFunctionType;", "Landroidx/compose/ui/layout/MeasureResult;", "measureLazyList-_s_dbAc", "(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;", "createItemsAfterList", "visibleItems", "", "createItemsBeforeList", "currentFirstItemIndex", "calculateItemsOffsets", "items", "extraItemsBefore", "extraItemsAfter", "layoutWidth", "layoutHeight", "finalMainAxisOffset", "maxOffset", "itemsScrollOffset", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class LazyListMeasureKt {
    /* JADX WARN: Removed duplicated region for block: B:168:0x050c  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0511  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x051a  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x051f  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x055e  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0575  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x05a3  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x05bf  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x05c4  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x05c8  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x05cd  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x05de  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x05e1  */
    /* JADX INFO: renamed from: measureLazyList-_s_dbAc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final LazyListMeasureResult m926measureLazyList_s_dbAc(int itemsCount, LazyListMeasuredItemProvider measuredItemProvider, int mainAxisAvailableSize, int beforeContentPadding, int afterContentPadding, int spaceBetweenItems, int firstVisibleItemIndex, int firstVisibleItemScrollOffset, float scrollToBeConsumed, long j, boolean isVertical, Arrangement.Vertical verticalArrangement, Arrangement.Horizontal horizontalArrangement, boolean reverseLayout, Density density, LazyLayoutItemAnimator<LazyListMeasuredItem> lazyLayoutItemAnimator, int beyondBoundsItemCount, List<Integer> list, boolean hasLookaheadOccurred, final boolean isLookingAhead, CoroutineScope coroutineScope, final MutableState<Unit> mutableState, GraphicsContext graphicsContext, StickyItemsPlacement stickyItemsPlacement, Function3<? super Integer, ? super Integer, ? super Function1<? super Placeable.PlacementScope, Unit>, ? extends MeasureResult> function3) {
        int scrollDelta;
        int currentFirstItemScrollOffset;
        int scrollDelta2;
        int index;
        int minOffset;
        int maxOffset;
        int indexInVisibleItems;
        int minOffset2;
        int scrollDelta3;
        int maxOffset2;
        boolean z;
        int maxOffset3;
        final LazyListMeasuredItemProvider lazyListMeasuredItemProvider;
        int currentMainAxisOffset;
        int currentMainAxisOffset2;
        int currentFirstItemIndex;
        int scrollDelta4;
        float consumedScroll;
        int currentFirstItemScrollOffset2;
        int currentFirstItemScrollOffset3;
        LazyListMeasuredItem firstItem;
        LazyListMeasuredItem firstItem2;
        float consumedScroll2;
        int maxCrossAxis;
        ArrayDeque visibleItems;
        int layoutHeight;
        int layoutHeight2;
        Integer numValueOf;
        int layoutHeight3;
        boolean value$iv = beforeContentPadding >= 0;
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalArgumentException("invalid beforeContentPadding");
        }
        boolean value$iv2 = afterContentPadding >= 0;
        if (!value$iv2) {
            InlineClassHelperKt.throwIllegalArgumentException("invalid afterContentPadding");
        }
        if (itemsCount <= 0) {
            int layoutWidth = Constraints.m7460getMinWidthimpl(j);
            int layoutHeight4 = Constraints.m7459getMinHeightimpl(j);
            lazyLayoutItemAnimator.onMeasured(0, layoutWidth, layoutHeight4, new ArrayList(), measuredItemProvider.getKeyIndexMap(), measuredItemProvider, isVertical, isLookingAhead, 1, hasLookaheadOccurred, 0, 0, coroutineScope, graphicsContext);
            if (!isLookingAhead) {
                long disappearingItemsSize = lazyLayoutItemAnimator.m987getMinSizeToFitDisappearingItemsYbymL2g();
                if (!IntSize.m7674equalsimpl0(disappearingItemsSize, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                    int $i$f$unpackInt1 = (int) (disappearingItemsSize >> 32);
                    layoutWidth = ConstraintsKt.m7475constrainWidthK40F9xA(j, $i$f$unpackInt1);
                    layoutHeight4 = ConstraintsKt.m7474constrainHeightK40F9xA(j, (int) (disappearingItemsSize & 4294967295L));
                }
            }
            return new LazyListMeasureResult(null, 0, false, 0.0f, function3.invoke(Integer.valueOf(layoutWidth), Integer.valueOf(layoutHeight4), new Function1() { // from class: androidx.compose.foundation.lazy.LazyListMeasureKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Unit.INSTANCE;
                }
            }), 0.0f, false, coroutineScope, density, measuredItemProvider.getChildConstraints(), CollectionsKt.emptyList(), -beforeContentPadding, mainAxisAvailableSize + afterContentPadding, 0, reverseLayout, isVertical ? Orientation.Vertical : Orientation.Horizontal, afterContentPadding, spaceBetweenItems, null);
        }
        int currentFirstItemIndex2 = firstVisibleItemIndex;
        int currentFirstItemScrollOffset4 = firstVisibleItemScrollOffset;
        if (currentFirstItemIndex2 >= itemsCount) {
            currentFirstItemIndex2 = itemsCount - 1;
            currentFirstItemScrollOffset4 = 0;
        }
        int scrollDelta5 = Math.round(scrollToBeConsumed);
        int currentFirstItemScrollOffset5 = currentFirstItemScrollOffset4 - scrollDelta5;
        if (currentFirstItemIndex2 == 0 && currentFirstItemScrollOffset5 < 0) {
            int scrollDelta6 = scrollDelta5 + currentFirstItemScrollOffset5;
            currentFirstItemScrollOffset5 = 0;
            scrollDelta = scrollDelta6;
        } else {
            scrollDelta = scrollDelta5;
        }
        ArrayDeque visibleItems2 = new ArrayDeque();
        int minOffset3 = (-beforeContentPadding) + (spaceBetweenItems < 0 ? spaceBetweenItems : 0);
        int previous = currentFirstItemScrollOffset5 + minOffset3;
        int maxCrossAxis2 = 0;
        boolean remeasureNeeded = false;
        int currentFirstItemIndex3 = currentFirstItemIndex2;
        while (previous < 0 && currentFirstItemIndex3 > 0) {
            int currentFirstItemScrollOffset6 = previous;
            int currentFirstItemScrollOffset7 = currentFirstItemIndex3 - 1;
            int minOffset4 = minOffset3;
            LazyListMeasuredItem measuredItem = LazyListMeasuredItemProvider.m932getAndMeasure0kLqBqw$default(measuredItemProvider, currentFirstItemScrollOffset7, 0L, 2, null);
            visibleItems2.add(0, measuredItem);
            maxCrossAxis2 = Math.max(maxCrossAxis2, measuredItem.getCrossAxisSize());
            currentFirstItemIndex3 = currentFirstItemScrollOffset7;
            previous = measuredItem.getMainAxisSizeWithSpacings() + currentFirstItemScrollOffset6;
            minOffset3 = minOffset4;
        }
        int currentFirstItemScrollOffset8 = previous;
        int indexInVisibleItems2 = minOffset3;
        if (currentFirstItemScrollOffset8 >= indexInVisibleItems2) {
            currentFirstItemScrollOffset = currentFirstItemScrollOffset8;
        } else {
            int notConsumedScrollDelta = indexInVisibleItems2 - currentFirstItemScrollOffset8;
            currentFirstItemScrollOffset = indexInVisibleItems2;
            scrollDelta -= notConsumedScrollDelta;
        }
        int currentFirstItemScrollOffset9 = currentFirstItemScrollOffset - indexInVisibleItems2;
        int index2 = currentFirstItemIndex3;
        int maxOffset4 = mainAxisAvailableSize;
        int maxMainAxis = RangesKt.coerceAtLeast(maxOffset4 + afterContentPadding, 0);
        int currentMainAxisOffset3 = -currentFirstItemScrollOffset9;
        int indexInVisibleItems3 = 0;
        while (true) {
            scrollDelta2 = indexInVisibleItems2;
            if (indexInVisibleItems3 >= visibleItems2.size()) {
                break;
            }
            if (currentMainAxisOffset3 >= maxMainAxis) {
                visibleItems2.remove(indexInVisibleItems3);
                Unit unit = Unit.INSTANCE;
                remeasureNeeded = true;
            } else {
                index2++;
                currentMainAxisOffset3 += ((LazyListMeasuredItem) visibleItems2.get(indexInVisibleItems3)).getMainAxisSizeWithSpacings();
                Integer.valueOf(indexInVisibleItems3);
                indexInVisibleItems3++;
            }
            indexInVisibleItems2 = scrollDelta2;
        }
        int currentMainAxisOffset4 = currentMainAxisOffset3;
        boolean remeasureNeeded2 = remeasureNeeded;
        int currentFirstItemScrollOffset10 = currentFirstItemScrollOffset9;
        int maxCrossAxis3 = index2;
        while (true) {
            if (maxCrossAxis3 >= itemsCount) {
                index = maxCrossAxis3;
                minOffset = scrollDelta2;
                maxOffset = maxOffset4;
                indexInVisibleItems = currentMainAxisOffset4;
                minOffset2 = scrollDelta;
                scrollDelta3 = maxCrossAxis2;
                break;
            }
            if (currentMainAxisOffset4 >= maxMainAxis && currentMainAxisOffset4 > 0 && !visibleItems2.isEmpty()) {
                index = maxCrossAxis3;
                minOffset = scrollDelta2;
                maxOffset = maxOffset4;
                indexInVisibleItems = currentMainAxisOffset4;
                minOffset2 = scrollDelta;
                scrollDelta3 = maxCrossAxis2;
                break;
            }
            int maxMainAxis2 = maxMainAxis;
            int maxCrossAxis4 = maxCrossAxis2;
            int indexInVisibleItems4 = indexInVisibleItems3;
            int minOffset5 = scrollDelta2;
            int maxOffset5 = maxOffset4;
            int minOffset6 = scrollDelta;
            LazyListMeasuredItem measuredItem2 = LazyListMeasuredItemProvider.m932getAndMeasure0kLqBqw$default(measuredItemProvider, maxCrossAxis3, 0L, 2, null);
            int index3 = maxCrossAxis3;
            currentMainAxisOffset4 = measuredItem2.getMainAxisSizeWithSpacings() + currentMainAxisOffset4;
            if (currentMainAxisOffset4 <= minOffset5 && index3 != itemsCount - 1) {
                currentFirstItemScrollOffset10 -= measuredItem2.getMainAxisSizeWithSpacings();
                Unit unit2 = Unit.INSTANCE;
                currentFirstItemIndex3 = index3 + 1;
                remeasureNeeded2 = true;
                maxCrossAxis2 = maxCrossAxis4;
            } else {
                int maxCrossAxis5 = Math.max(maxCrossAxis4, measuredItem2.getCrossAxisSize());
                Boolean.valueOf(visibleItems2.add(measuredItem2));
                maxCrossAxis2 = maxCrossAxis5;
            }
            maxCrossAxis3 = index3 + 1;
            maxOffset4 = maxOffset5;
            scrollDelta = minOffset6;
            indexInVisibleItems3 = indexInVisibleItems4;
            maxMainAxis = maxMainAxis2;
            scrollDelta2 = minOffset5;
        }
        int preScrollBackScrollDelta = minOffset2;
        if (indexInVisibleItems >= maxOffset) {
            maxOffset2 = maxOffset;
            z = false;
            maxOffset3 = preScrollBackScrollDelta;
            lazyListMeasuredItemProvider = measuredItemProvider;
            currentMainAxisOffset = indexInVisibleItems;
            currentMainAxisOffset2 = currentFirstItemScrollOffset10;
            currentFirstItemIndex = currentFirstItemIndex3;
            scrollDelta4 = minOffset2;
        } else {
            int toScrollBack = maxOffset - indexInVisibleItems;
            int currentMainAxisOffset5 = indexInVisibleItems + toScrollBack;
            int previousIndex = currentFirstItemScrollOffset10 - toScrollBack;
            while (previousIndex < beforeContentPadding && currentFirstItemIndex3 > 0) {
                int currentFirstItemScrollOffset11 = previousIndex;
                int currentFirstItemScrollOffset12 = currentFirstItemIndex3 - 1;
                LazyListMeasuredItem measuredItem3 = LazyListMeasuredItemProvider.m932getAndMeasure0kLqBqw$default(measuredItemProvider, currentFirstItemScrollOffset12, 0L, 2, null);
                visibleItems2.add(0, measuredItem3);
                scrollDelta3 = Math.max(scrollDelta3, measuredItem3.getCrossAxisSize());
                currentFirstItemIndex3 = currentFirstItemScrollOffset12;
                previousIndex = currentFirstItemScrollOffset11 + measuredItem3.getMainAxisSizeWithSpacings();
                preScrollBackScrollDelta = preScrollBackScrollDelta;
                maxOffset = maxOffset;
            }
            int currentFirstItemScrollOffset13 = previousIndex;
            maxOffset2 = maxOffset;
            z = false;
            maxOffset3 = preScrollBackScrollDelta;
            lazyListMeasuredItemProvider = measuredItemProvider;
            scrollDelta4 = minOffset2 + toScrollBack;
            if (currentFirstItemScrollOffset13 >= 0) {
                currentMainAxisOffset = currentMainAxisOffset5;
                currentMainAxisOffset2 = currentFirstItemScrollOffset13;
                currentFirstItemIndex = currentFirstItemIndex3;
            } else {
                scrollDelta4 += currentFirstItemScrollOffset13;
                currentMainAxisOffset = currentMainAxisOffset5 + currentFirstItemScrollOffset13;
                currentMainAxisOffset2 = 0;
                currentFirstItemIndex = currentFirstItemIndex3;
            }
        }
        if (MathKt.getSign(Math.round(scrollToBeConsumed)) == MathKt.getSign(scrollDelta4) && Math.abs(Math.round(scrollToBeConsumed)) >= Math.abs(scrollDelta4)) {
            consumedScroll = scrollDelta4;
        } else {
            consumedScroll = scrollToBeConsumed;
        }
        float unconsumedScroll = scrollToBeConsumed - consumedScroll;
        float f = 0.0f;
        if (isLookingAhead && scrollDelta4 > maxOffset3 && unconsumedScroll <= 0.0f) {
            f = (scrollDelta4 - maxOffset3) + unconsumedScroll;
        }
        float scrollBackAmount = f;
        boolean value$iv3 = currentMainAxisOffset2 >= 0 ? true : z;
        if (!value$iv3) {
            InlineClassHelperKt.throwIllegalArgumentException("negative currentFirstItemScrollOffset");
        }
        int visibleItemsScrollOffset = -currentMainAxisOffset2;
        LazyListMeasuredItem firstItem3 = (LazyListMeasuredItem) visibleItems2.first();
        if (beforeContentPadding > 0 || spaceBetweenItems < 0) {
            int size = visibleItems2.size();
            int scrollDelta7 = 0;
            while (true) {
                if (scrollDelta7 >= size) {
                    currentFirstItemScrollOffset2 = currentMainAxisOffset2;
                    break;
                }
                int i = size;
                int size2 = ((LazyListMeasuredItem) visibleItems2.get(scrollDelta7)).getMainAxisSizeWithSpacings();
                if (currentMainAxisOffset2 == 0) {
                    currentFirstItemScrollOffset2 = currentMainAxisOffset2;
                    break;
                }
                if (size2 > currentMainAxisOffset2) {
                    currentFirstItemScrollOffset2 = currentMainAxisOffset2;
                    break;
                }
                currentFirstItemScrollOffset2 = currentMainAxisOffset2;
                int currentFirstItemScrollOffset14 = CollectionsKt.getLastIndex(visibleItems2);
                if (scrollDelta7 == currentFirstItemScrollOffset14) {
                    break;
                }
                currentMainAxisOffset2 = currentFirstItemScrollOffset2 - size2;
                int i2 = scrollDelta7;
                firstItem3 = (LazyListMeasuredItem) visibleItems2.get(i2 + 1);
                scrollDelta7 = i2 + 1;
                size = i;
            }
            currentFirstItemScrollOffset3 = currentFirstItemScrollOffset2;
            firstItem = firstItem3;
        } else {
            currentFirstItemScrollOffset3 = currentMainAxisOffset2;
            firstItem = firstItem3;
        }
        List<LazyListMeasuredItem> listCreateItemsBeforeList = createItemsBeforeList(currentFirstItemIndex, lazyListMeasuredItemProvider, beyondBoundsItemCount, list);
        List<LazyListMeasuredItem> list2 = listCreateItemsBeforeList;
        int $i$f$fastForEach = list2.size();
        int currentFirstItemIndex4 = 0;
        while (currentFirstItemIndex4 < $i$f$fastForEach) {
            Object item$iv = list2.get(currentFirstItemIndex4);
            LazyListMeasuredItem it = (LazyListMeasuredItem) item$iv;
            scrollDelta3 = Math.max(scrollDelta3, it.getCrossAxisSize());
            currentFirstItemIndex4++;
            list2 = list2;
        }
        List<LazyListMeasuredItem> listCreateItemsAfterList = createItemsAfterList(visibleItems2, lazyListMeasuredItemProvider, itemsCount, beyondBoundsItemCount, list);
        List<LazyListMeasuredItem> list3 = listCreateItemsAfterList;
        int index$iv = 0;
        int $i$f$fastForEach2 = list3.size();
        while (index$iv < $i$f$fastForEach2) {
            Object item$iv2 = list3.get(index$iv);
            LazyListMeasuredItem it2 = (LazyListMeasuredItem) item$iv2;
            scrollDelta3 = Math.max(scrollDelta3, it2.getCrossAxisSize());
            index$iv++;
            list3 = list3;
        }
        boolean noExtraItems = Intrinsics.areEqual(firstItem, visibleItems2.first()) && listCreateItemsBeforeList.isEmpty() && listCreateItemsAfterList.isEmpty();
        int layoutWidth2 = ConstraintsKt.m7475constrainWidthK40F9xA(j, isVertical ? scrollDelta3 : currentMainAxisOffset);
        int layoutHeight5 = ConstraintsKt.m7474constrainHeightK40F9xA(j, isVertical ? currentMainAxisOffset : scrollDelta3);
        int maxOffset6 = maxOffset2;
        final List<LazyListMeasuredItem> listCalculateItemsOffsets = calculateItemsOffsets(visibleItems2, listCreateItemsBeforeList, listCreateItemsAfterList, layoutWidth2, layoutHeight5, currentMainAxisOffset, maxOffset6, visibleItemsScrollOffset, isVertical, verticalArrangement, horizontalArrangement, reverseLayout, density);
        int currentMainAxisOffset6 = currentMainAxisOffset;
        lazyLayoutItemAnimator.onMeasured((int) consumedScroll, layoutWidth2, layoutHeight5, listCalculateItemsOffsets, lazyListMeasuredItemProvider.getKeyIndexMap(), lazyListMeasuredItemProvider, isVertical, isLookingAhead, 1, hasLookaheadOccurred, currentFirstItemScrollOffset3, currentMainAxisOffset6, coroutineScope, graphicsContext);
        if (isLookingAhead) {
            firstItem2 = firstItem;
            consumedScroll2 = consumedScroll;
            maxCrossAxis = scrollDelta3;
            visibleItems = visibleItems2;
        } else {
            consumedScroll2 = consumedScroll;
            long disappearingItemsSize2 = lazyLayoutItemAnimator.m987getMinSizeToFitDisappearingItemsYbymL2g();
            maxCrossAxis = scrollDelta3;
            visibleItems = visibleItems2;
            if (IntSize.m7674equalsimpl0(disappearingItemsSize2, IntSize.INSTANCE.m7681getZeroYbymL2g())) {
                firstItem2 = firstItem;
            } else {
                int oldMainAxisSize = isVertical ? layoutHeight5 : layoutWidth2;
                int layoutWidth3 = ConstraintsKt.m7475constrainWidthK40F9xA(j, Math.max(layoutWidth2, (int) (disappearingItemsSize2 >> 32)));
                firstItem2 = firstItem;
                int layoutHeight6 = ConstraintsKt.m7474constrainHeightK40F9xA(j, Math.max(layoutHeight5, (int) (disappearingItemsSize2 & 4294967295L)));
                int newMainAxisSize = isVertical ? layoutHeight6 : layoutWidth3;
                if (newMainAxisSize == oldMainAxisSize) {
                    layoutHeight3 = layoutHeight6;
                } else {
                    int index$iv2 = 0;
                    int size3 = listCalculateItemsOffsets.size();
                    while (index$iv2 < size3) {
                        Object item$iv3 = listCalculateItemsOffsets.get(index$iv2);
                        int layoutHeight7 = layoutHeight6;
                        LazyListMeasuredItem it3 = (LazyListMeasuredItem) item$iv3;
                        it3.updateMainAxisLayoutSize(newMainAxisSize);
                        index$iv2++;
                        layoutHeight6 = layoutHeight7;
                    }
                    layoutHeight3 = layoutHeight6;
                }
                layoutHeight2 = layoutWidth3;
                layoutHeight = layoutHeight3;
                LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) visibleItems.firstOrNull();
                int index4 = lazyListMeasuredItem == null ? lazyListMeasuredItem.getIndex() : 0;
                LazyListMeasuredItem lazyListMeasuredItem2 = (LazyListMeasuredItem) visibleItems.lastOrNull();
                ArrayDeque visibleItems3 = visibleItems;
                final List stickingItems = LazyLayoutStickyItemsKt.applyStickyItems(stickyItemsPlacement, index4, lazyListMeasuredItem2 == null ? lazyListMeasuredItem2.getIndex() : 0, listCalculateItemsOffsets, lazyListMeasuredItemProvider.getHeaderIndexes(), beforeContentPadding, afterContentPadding, layoutHeight2, layoutHeight, new Function1() { // from class: androidx.compose.foundation.lazy.LazyListMeasureKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return LazyListMeasuredItemProvider.m932getAndMeasure0kLqBqw$default(lazyListMeasuredItemProvider, ((Integer) obj).intValue(), 0L, 2, null);
                    }
                });
                int layoutWidth4 = layoutHeight2;
                int layoutHeight8 = layoutHeight;
                Integer numValueOf2 = null;
                if (!noExtraItems) {
                    LazyListMeasuredItem lazyListMeasuredItem3 = (LazyListMeasuredItem) CollectionsKt.firstOrNull((List) listCalculateItemsOffsets);
                    numValueOf = lazyListMeasuredItem3 != null ? Integer.valueOf(lazyListMeasuredItem3.getIndex()) : null;
                } else {
                    LazyListMeasuredItem lazyListMeasuredItem4 = (LazyListMeasuredItem) visibleItems3.firstOrNull();
                    numValueOf = lazyListMeasuredItem4 != null ? Integer.valueOf(lazyListMeasuredItem4.getIndex()) : null;
                }
                Integer firstVisibleIndex = numValueOf;
                if (!noExtraItems) {
                    LazyListMeasuredItem lazyListMeasuredItem5 = (LazyListMeasuredItem) CollectionsKt.lastOrNull((List) listCalculateItemsOffsets);
                    if (lazyListMeasuredItem5 != null) {
                        numValueOf2 = Integer.valueOf(lazyListMeasuredItem5.getIndex());
                    }
                } else {
                    LazyListMeasuredItem lazyListMeasuredItem6 = (LazyListMeasuredItem) visibleItems3.lastOrNull();
                    if (lazyListMeasuredItem6 != null) {
                        numValueOf2 = Integer.valueOf(lazyListMeasuredItem6.getIndex());
                    }
                }
                Integer lastVisibleIndex = numValueOf2;
                return new LazyListMeasureResult(firstItem2, currentFirstItemScrollOffset3, index >= itemsCount || currentMainAxisOffset6 > maxOffset6, consumedScroll2, function3.invoke(Integer.valueOf(layoutWidth4), Integer.valueOf(layoutHeight8), new Function1() { // from class: androidx.compose.foundation.lazy.LazyListMeasureKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return LazyListMeasureKt.measureLazyList__s_dbAc$lambda$8(mutableState, listCalculateItemsOffsets, stickingItems, isLookingAhead, (Placeable.PlacementScope) obj);
                    }
                }), scrollBackAmount, remeasureNeeded2, coroutineScope, density, measuredItemProvider.getChildConstraints(), LazyLayoutMeasuredItemKt.updatedVisibleItems(firstVisibleIndex == null ? firstVisibleIndex.intValue() : 0, lastVisibleIndex == null ? lastVisibleIndex.intValue() : 0, listCalculateItemsOffsets, stickingItems), -beforeContentPadding, maxOffset6 + afterContentPadding, itemsCount, reverseLayout, !isVertical ? Orientation.Vertical : Orientation.Horizontal, afterContentPadding, spaceBetweenItems, null);
            }
        }
        layoutHeight = layoutHeight5;
        layoutHeight2 = layoutWidth2;
        LazyListMeasuredItem lazyListMeasuredItem7 = (LazyListMeasuredItem) visibleItems.firstOrNull();
        if (lazyListMeasuredItem7 == null) {
        }
        LazyListMeasuredItem lazyListMeasuredItem22 = (LazyListMeasuredItem) visibleItems.lastOrNull();
        ArrayDeque visibleItems32 = visibleItems;
        final List stickingItems2 = LazyLayoutStickyItemsKt.applyStickyItems(stickyItemsPlacement, index4, lazyListMeasuredItem22 == null ? lazyListMeasuredItem22.getIndex() : 0, listCalculateItemsOffsets, lazyListMeasuredItemProvider.getHeaderIndexes(), beforeContentPadding, afterContentPadding, layoutHeight2, layoutHeight, new Function1() { // from class: androidx.compose.foundation.lazy.LazyListMeasureKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LazyListMeasuredItemProvider.m932getAndMeasure0kLqBqw$default(lazyListMeasuredItemProvider, ((Integer) obj).intValue(), 0L, 2, null);
            }
        });
        int layoutWidth42 = layoutHeight2;
        int layoutHeight82 = layoutHeight;
        Integer numValueOf22 = null;
        if (!noExtraItems) {
        }
        Integer firstVisibleIndex2 = numValueOf;
        if (!noExtraItems) {
        }
        Integer lastVisibleIndex2 = numValueOf22;
        if (index >= itemsCount) {
        }
        return new LazyListMeasureResult(firstItem2, currentFirstItemScrollOffset3, index >= itemsCount || currentMainAxisOffset6 > maxOffset6, consumedScroll2, function3.invoke(Integer.valueOf(layoutWidth42), Integer.valueOf(layoutHeight82), new Function1() { // from class: androidx.compose.foundation.lazy.LazyListMeasureKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LazyListMeasureKt.measureLazyList__s_dbAc$lambda$8(mutableState, listCalculateItemsOffsets, stickingItems2, isLookingAhead, (Placeable.PlacementScope) obj);
            }
        }), scrollBackAmount, remeasureNeeded2, coroutineScope, density, measuredItemProvider.getChildConstraints(), LazyLayoutMeasuredItemKt.updatedVisibleItems(firstVisibleIndex2 == null ? firstVisibleIndex2.intValue() : 0, lastVisibleIndex2 == null ? lastVisibleIndex2.intValue() : 0, listCalculateItemsOffsets, stickingItems2), -beforeContentPadding, maxOffset6 + afterContentPadding, itemsCount, reverseLayout, !isVertical ? Orientation.Vertical : Orientation.Horizontal, afterContentPadding, spaceBetweenItems, null);
    }

    static final Unit measureLazyList__s_dbAc$lambda$8(MutableState mutableState, final List $positionedItems, final List $stickingItems, final boolean $isLookingAhead, Placeable.PlacementScope $this$layout) {
        $this$layout.withMotionFrameOfReferencePlacement(new Function1() { // from class: androidx.compose.foundation.lazy.LazyListMeasureKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LazyListMeasureKt.measureLazyList__s_dbAc$lambda$8$0($positionedItems, $stickingItems, $isLookingAhead, (Placeable.PlacementScope) obj);
            }
        });
        ObservableScopeInvalidator.m1005attachToScopeimpl(mutableState);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit measureLazyList__s_dbAc$lambda$8$0(List $positionedItems, List $stickingItems, boolean $isLookingAhead, Placeable.PlacementScope $this$withMotionFrameOfReferencePlacement) {
        int size = $positionedItems.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = $positionedItems.get(index$iv);
            LazyListMeasuredItem it = (LazyListMeasuredItem) item$iv;
            it.place($this$withMotionFrameOfReferencePlacement, $isLookingAhead);
        }
        int size2 = $stickingItems.size();
        for (int index$iv2 = 0; index$iv2 < size2; index$iv2++) {
            Object item$iv2 = $stickingItems.get(index$iv2);
            LazyListMeasuredItem it2 = (LazyListMeasuredItem) item$iv2;
            it2.place($this$withMotionFrameOfReferencePlacement, $isLookingAhead);
        }
        return Unit.INSTANCE;
    }

    private static final List<LazyListMeasuredItem> createItemsAfterList(List<LazyListMeasuredItem> list, LazyListMeasuredItemProvider measuredItemProvider, int itemsCount, int beyondBoundsItemCount, List<Integer> list2) {
        List list3 = null;
        int end = Math.min(((LazyListMeasuredItem) CollectionsKt.last((List) list)).getIndex() + beyondBoundsItemCount, itemsCount - 1);
        int i = ((LazyListMeasuredItem) CollectionsKt.last((List) list)).getIndex() + 1;
        if (i <= end) {
            int i2 = i;
            while (true) {
                if (list3 == null) {
                    Object list4 = new ArrayList();
                    list3 = (List) list4;
                }
                list3.add(LazyListMeasuredItemProvider.m932getAndMeasure0kLqBqw$default(measuredItemProvider, i2, 0L, 2, null));
                if (i2 == end) {
                    break;
                }
                i2++;
            }
        }
        if (list3 != null) {
            List it = list3;
            if (((LazyListMeasuredItem) CollectionsKt.last(it)).getIndex() > end) {
                end = ((LazyListMeasuredItem) CollectionsKt.last(it)).getIndex();
            }
        }
        int size = list2.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = list2.get(index$iv);
            int index = ((Number) item$iv).intValue();
            if (index > end) {
                if (list3 == null) {
                    List list5 = new ArrayList();
                    list3 = list5;
                }
                list3.add(LazyListMeasuredItemProvider.m932getAndMeasure0kLqBqw$default(measuredItemProvider, index, 0L, 2, null));
            }
        }
        return list3 == null ? CollectionsKt.emptyList() : list3;
    }

    private static final List<LazyListMeasuredItem> createItemsBeforeList(int currentFirstItemIndex, LazyListMeasuredItemProvider measuredItemProvider, int beyondBoundsItemCount, List<Integer> list) {
        ArrayList arrayList = null;
        int start = Math.max(0, currentFirstItemIndex - beyondBoundsItemCount);
        int i = currentFirstItemIndex - 1;
        if (start <= i) {
            int i2 = i;
            while (true) {
                if (arrayList == null) {
                    Object list2 = new ArrayList();
                    arrayList = (List) list2;
                }
                arrayList.add(LazyListMeasuredItemProvider.m932getAndMeasure0kLqBqw$default(measuredItemProvider, i2, 0L, 2, null));
                if (i2 == start) {
                    break;
                }
                i2--;
            }
        }
        int size = list.size() - 1;
        if (size >= 0) {
            do {
                int index$iv = size;
                size--;
                Object item$iv = list.get(index$iv);
                int index = ((Number) item$iv).intValue();
                if (index < start) {
                    if (arrayList == null) {
                        Object list3 = new ArrayList();
                        arrayList = (List) list3;
                    }
                    arrayList.add(LazyListMeasuredItemProvider.m932getAndMeasure0kLqBqw$default(measuredItemProvider, index, 0L, 2, null));
                }
            } while (size >= 0);
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    private static final List<LazyListMeasuredItem> calculateItemsOffsets(List<LazyListMeasuredItem> list, List<LazyListMeasuredItem> list2, List<LazyListMeasuredItem> list3, int layoutWidth, int layoutHeight, int finalMainAxisOffset, int maxOffset, int itemsScrollOffset, boolean isVertical, Arrangement.Vertical verticalArrangement, Arrangement.Horizontal horizontalArrangement, boolean reverseLayout, Density density) {
        int size;
        List<LazyListMeasuredItem> list4 = list;
        int mainAxisLayoutSize = isVertical ? layoutHeight : layoutWidth;
        boolean hasSpareSpace = finalMainAxisOffset < Math.min(mainAxisLayoutSize, maxOffset);
        if (hasSpareSpace) {
            boolean value$iv = itemsScrollOffset == 0;
            if (!value$iv) {
                InlineClassHelperKt.throwIllegalStateException("non-zero itemsScrollOffset");
            }
        }
        ArrayList positionedItems = new ArrayList(list4.size() + list2.size() + list3.size());
        if (hasSpareSpace) {
            boolean value$iv2 = list2.isEmpty() && list3.isEmpty();
            if (!value$iv2) {
                InlineClassHelperKt.throwIllegalArgumentException("no extra items");
            }
            int itemsCount = list4.size();
            int[] sizes = new int[itemsCount];
            for (int i = 0; i < itemsCount; i++) {
                sizes[i] = list4.get(calculateItemsOffsets$reverseAware(i, reverseLayout, itemsCount)).getSize();
            }
            int[] offsets = new int[itemsCount];
            if (isVertical) {
                if (verticalArrangement != null) {
                    verticalArrangement.arrange(density, mainAxisLayoutSize, sizes, offsets);
                } else {
                    InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("null verticalArrangement when isVertical == true");
                    throw new KotlinNothingValueException();
                }
            } else if (horizontalArrangement != null) {
                horizontalArrangement.arrange(density, mainAxisLayoutSize, sizes, LayoutDirection.Ltr, offsets);
            } else {
                InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("null horizontalArrangement when isVertical == false");
                throw new KotlinNothingValueException();
            }
            IntRange reverseAwareOffsetIndices = ArraysKt.getIndices(offsets);
            if (reverseLayout) {
                reverseAwareOffsetIndices = RangesKt.reversed(reverseAwareOffsetIndices);
            }
            int index = reverseAwareOffsetIndices.getFirst();
            int last = reverseAwareOffsetIndices.getLast();
            int step = reverseAwareOffsetIndices.getStep();
            if ((step > 0 && index <= last) || (step < 0 && last <= index)) {
                while (true) {
                    int absoluteOffset = offsets[index];
                    LazyListMeasuredItem item = list4.get(calculateItemsOffsets$reverseAware(index, reverseLayout, itemsCount));
                    if (reverseLayout) {
                        size = (mainAxisLayoutSize - absoluteOffset) - item.getSize();
                    } else {
                        size = absoluteOffset;
                    }
                    int relativeOffset = size;
                    item.position(relativeOffset, layoutWidth, layoutHeight);
                    positionedItems.add(item);
                    if (index == last) {
                        break;
                    }
                    index += step;
                    list4 = list;
                }
            }
        } else {
            int currentMainAxis = itemsScrollOffset;
            int size2 = list2.size();
            for (int index$iv = 0; index$iv < size2; index$iv++) {
                Object item$iv = list2.get(index$iv);
                LazyListMeasuredItem it = (LazyListMeasuredItem) item$iv;
                currentMainAxis -= it.getMainAxisSizeWithSpacings();
                it.position(currentMainAxis, layoutWidth, layoutHeight);
                positionedItems.add(it);
            }
            int currentMainAxis2 = itemsScrollOffset;
            int size3 = list.size();
            for (int index$iv2 = 0; index$iv2 < size3; index$iv2++) {
                Object item$iv2 = list.get(index$iv2);
                LazyListMeasuredItem it2 = (LazyListMeasuredItem) item$iv2;
                it2.position(currentMainAxis2, layoutWidth, layoutHeight);
                positionedItems.add(it2);
                currentMainAxis2 += it2.getMainAxisSizeWithSpacings();
            }
            int size4 = list3.size();
            for (int index$iv3 = 0; index$iv3 < size4; index$iv3++) {
                Object item$iv3 = list3.get(index$iv3);
                LazyListMeasuredItem it3 = (LazyListMeasuredItem) item$iv3;
                it3.position(currentMainAxis2, layoutWidth, layoutHeight);
                positionedItems.add(it3);
                currentMainAxis2 += it3.getMainAxisSizeWithSpacings();
            }
        }
        return positionedItems;
    }

    private static final int calculateItemsOffsets$reverseAware(int $this$calculateItemsOffsets_u24reverseAware, boolean $reverseLayout, int itemsCount) {
        return !$reverseLayout ? $this$calculateItemsOffsets_u24reverseAware : (itemsCount - $this$calculateItemsOffsets_u24reverseAware) - 1;
    }
}
