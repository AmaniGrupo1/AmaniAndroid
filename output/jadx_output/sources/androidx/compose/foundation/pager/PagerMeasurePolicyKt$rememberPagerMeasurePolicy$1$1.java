package androidx.compose.foundation.pager;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PagerMeasurePolicy.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 implements LazyLayoutMeasurePolicy {

    /* JADX INFO: renamed from: $$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0, reason: not valid java name */
    final /* synthetic */ float f53$$v$c$androidxcomposeuiunitDp$pageSpacing$0;
    final /* synthetic */ int $beyondViewportPageCount;
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ CoroutineScope $coroutineScope;
    final /* synthetic */ Alignment.Horizontal $horizontalAlignment;
    final /* synthetic */ Function0<PagerLazyLayoutItemProvider> $itemProviderLambda;
    final /* synthetic */ Orientation $orientation;
    final /* synthetic */ Function0<Integer> $pageCount;
    final /* synthetic */ PageSize $pageSize;
    final /* synthetic */ boolean $reverseLayout;
    final /* synthetic */ SnapPosition $snapPosition;
    final /* synthetic */ PagerState $state;
    final /* synthetic */ Alignment.Vertical $verticalAlignment;

    PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1(PagerState pagerState, Orientation orientation, PaddingValues paddingValues, boolean z, float f, PageSize pageSize, Function0<PagerLazyLayoutItemProvider> function0, Function0<Integer> function02, Alignment.Vertical vertical, Alignment.Horizontal horizontal, int i, SnapPosition snapPosition, CoroutineScope coroutineScope) {
        this.$state = pagerState;
        this.$orientation = orientation;
        this.$contentPadding = paddingValues;
        this.$reverseLayout = z;
        this.f53$$v$c$androidxcomposeuiunitDp$pageSpacing$0 = f;
        this.$pageSize = pageSize;
        this.$itemProviderLambda = function0;
        this.$pageCount = function02;
        this.$verticalAlignment = vertical;
        this.$horizontalAlignment = horizontal;
        this.$beyondViewportPageCount = i;
        this.$snapPosition = snapPosition;
        this.$coroutineScope = coroutineScope;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x019c  */
    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
    /* JADX INFO: renamed from: measure-0kLqBqw */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MeasureResult mo920measure0kLqBqw(final LazyLayoutMeasureScope $this$LazyLayoutMeasurePolicy, final long containerConstraints) throws Throwable {
        int i;
        int i2;
        int i3;
        int iM7458getMaxWidthimpl;
        int totalVerticalPadding;
        int y$iv;
        int $i$f$IntOffset;
        long jM7627constructorimpl;
        int pageAvailableSize;
        int iM7458getMaxWidthimpl2;
        int iM7457getMaxHeightimpl;
        Snapshot.Companion this_$iv;
        Snapshot previousSnapshot$iv;
        Function1<Object, Unit> readObserver;
        Snapshot newSnapshot$iv;
        Snapshot previousSnapshot$iv2;
        Snapshot newSnapshot$iv2;
        Function1<Object, Unit> function1;
        Function1<Object, Unit> function12;
        ObservableScopeInvalidator.m1005attachToScopeimpl(this.$state.m1081getMeasurementScopeInvalidatorzYiylxw$foundation());
        boolean isVertical = this.$orientation == Orientation.Vertical;
        CheckScrollableContainerConstraintsKt.m291checkScrollableContainerConstraintsK40F9xA(containerConstraints, isVertical ? Orientation.Vertical : Orientation.Horizontal);
        PaddingValues paddingValues = this.$contentPadding;
        if (isVertical) {
            i = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(paddingValues.mo768calculateLeftPaddingu2uoSUM($this$LazyLayoutMeasurePolicy.getLayoutDirection()));
        } else {
            i = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(PaddingKt.calculateStartPadding(paddingValues, $this$LazyLayoutMeasurePolicy.getLayoutDirection()));
        }
        int startPadding = i;
        PaddingValues paddingValues2 = this.$contentPadding;
        if (isVertical) {
            i2 = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(paddingValues2.mo769calculateRightPaddingu2uoSUM($this$LazyLayoutMeasurePolicy.getLayoutDirection()));
        } else {
            i2 = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(PaddingKt.calculateEndPadding(paddingValues2, $this$LazyLayoutMeasurePolicy.getLayoutDirection()));
        }
        int endPadding = i2;
        int topPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(this.$contentPadding.getTop());
        int bottomPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(this.$contentPadding.getBottom());
        int totalVerticalPadding2 = topPadding + bottomPadding;
        int totalHorizontalPadding = startPadding + endPadding;
        int totalMainAxisPadding = isVertical ? totalVerticalPadding2 : totalHorizontalPadding;
        if (isVertical && !this.$reverseLayout) {
            i3 = topPadding;
        } else if (isVertical && this.$reverseLayout) {
            i3 = bottomPadding;
        } else {
            i3 = (isVertical || this.$reverseLayout) ? endPadding : startPadding;
        }
        int beforeContentPadding = i3;
        int afterContentPadding = totalMainAxisPadding - beforeContentPadding;
        long contentConstraints = ConstraintsKt.m7477offsetNN6EwU(containerConstraints, -totalHorizontalPadding, -totalVerticalPadding2);
        this.$state.setDensity$foundation($this$LazyLayoutMeasurePolicy);
        int spaceBetweenPages = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(this.f53$$v$c$androidxcomposeuiunitDp$pageSpacing$0);
        if (isVertical) {
            iM7458getMaxWidthimpl = Constraints.m7457getMaxHeightimpl(containerConstraints) - totalVerticalPadding2;
        } else {
            iM7458getMaxWidthimpl = Constraints.m7458getMaxWidthimpl(containerConstraints) - totalHorizontalPadding;
        }
        int mainAxisAvailableSize = iM7458getMaxWidthimpl;
        if (this.$reverseLayout && mainAxisAvailableSize <= 0) {
            int x$iv = isVertical ? startPadding : startPadding + mainAxisAvailableSize;
            int y$iv2 = isVertical ? topPadding + mainAxisAvailableSize : topPadding;
            int val2$iv$iv = y$iv2;
            int val1$iv$iv = x$iv;
            totalVerticalPadding = totalVerticalPadding2;
            jM7627constructorimpl = IntOffset.m7627constructorimpl((((long) val2$iv$iv) & 4294967295L) | (((long) val1$iv$iv) << 32));
            y$iv = totalHorizontalPadding;
            $i$f$IntOffset = beforeContentPadding;
            long visualItemOffset = jM7627constructorimpl;
            PageSize $this$measure_0kLqBqw_u24lambda_u240 = this.$pageSize;
            pageAvailableSize = RangesKt.coerceAtLeast($this$measure_0kLqBqw_u24lambda_u240.calculateMainAxisPageSize($this$LazyLayoutMeasurePolicy, mainAxisAvailableSize, spaceBetweenPages), 0);
            PagerState pagerState = this.$state;
            if (this.$orientation != Orientation.Vertical) {
            }
            if (this.$orientation == Orientation.Vertical) {
            }
            pagerState.m1085setPremeasureConstraintsBRTryo0$foundation(ConstraintsKt.Constraints$default(0, iM7458getMaxWidthimpl2, 0, iM7457getMaxHeightimpl, 5, null));
            PagerLazyLayoutItemProvider itemProvider = this.$itemProviderLambda.invoke();
            int layoutSize = mainAxisAvailableSize + $i$f$IntOffset + afterContentPadding;
            this_$iv = Snapshot.INSTANCE;
            PagerState pagerState2 = this.$state;
            SnapPosition snapPosition = this.$snapPosition;
            previousSnapshot$iv = this_$iv.getCurrentThreadSnapshot();
            if (previousSnapshot$iv == null) {
            }
            newSnapshot$iv = this_$iv.makeCurrentNonObservable(previousSnapshot$iv);
            int currentPage = pagerState2.getCurrentPage();
            int currentPage2 = pagerState2.matchScrollPositionWithKey$foundation(itemProvider, currentPage);
            function12 = readObserver;
            newSnapshot$iv2 = newSnapshot$iv;
            function1 = function12;
            previousSnapshot$iv2 = previousSnapshot$iv;
            int layoutSize2 = $i$f$IntOffset;
            int currentPageOffset = PagerKt.currentPageOffset(snapPosition, layoutSize, pageAvailableSize, spaceBetweenPages, layoutSize2, afterContentPadding, pagerState2.getCurrentPage(), pagerState2.getCurrentPageOffsetFraction(), pagerState2.getPageCount());
            Unit unit = Unit.INSTANCE;
            this_$iv.restoreNonObservable(previousSnapshot$iv2, newSnapshot$iv2, function1);
            List<Integer> listCalculateLazyLayoutPinnedIndices = LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(itemProvider, this.$state.getPinnedPages(), this.$state.getBeyondBoundsInfo());
            MutableIntObjectMap placeablesCache = IntObjectMapKt.mutableIntObjectMapOf();
            int currentPage3 = this.$pageCount.invoke().intValue();
            final int totalVerticalPadding3 = totalVerticalPadding;
            final int totalHorizontalPadding2 = y$iv;
            PagerMeasureResult measureResult = PagerMeasureKt.m1078measurePager7L1iB3k($this$LazyLayoutMeasurePolicy, currentPage3, itemProvider, mainAxisAvailableSize, layoutSize2, afterContentPadding, spaceBetweenPages, currentPage2, currentPageOffset, contentConstraints, this.$orientation, this.$verticalAlignment, this.$horizontalAlignment, this.$reverseLayout, visualItemOffset, pageAvailableSize, this.$beyondViewportPageCount, listCalculateLazyLayoutPinnedIndices, this.$snapPosition, this.$state.m1082getPlacementScopeInvalidatorzYiylxw$foundation(), this.$coroutineScope, $this$LazyLayoutMeasurePolicy, new Function3() { // from class: androidx.compose.foundation.pager.PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    LazyLayoutMeasureScope lazyLayoutMeasureScope = $this$LazyLayoutMeasurePolicy;
                    long j = containerConstraints;
                    return lazyLayoutMeasureScope.layout(ConstraintsKt.m7475constrainWidthK40F9xA(j, ((Integer) obj).intValue() + totalHorizontalPadding2), ConstraintsKt.m7474constrainHeightK40F9xA(j, ((Integer) obj2).intValue() + totalVerticalPadding3), MapsKt.emptyMap(), (Function1) obj3);
                }
            }, placeablesCache);
            PagerState.applyMeasureResult$foundation$default(this.$state, measureResult, $this$LazyLayoutMeasurePolicy.isLookingAhead(), false, 4, null);
            PagerMeasurePolicyKt.keepAroundItems($this$LazyLayoutMeasurePolicy, this.$state.getCacheWindowLogic(), measureResult.getVisiblePagesInfo());
            return measureResult;
        }
        totalVerticalPadding = totalVerticalPadding2;
        char c = ' ';
        long j = 4294967295L;
        $i$f$IntOffset = beforeContentPadding;
        y$iv = totalHorizontalPadding;
        jM7627constructorimpl = IntOffset.m7627constructorimpl((((long) topPadding) & j) | (((long) startPadding) << c));
        long visualItemOffset2 = jM7627constructorimpl;
        PageSize $this$measure_0kLqBqw_u24lambda_u2402 = this.$pageSize;
        pageAvailableSize = RangesKt.coerceAtLeast($this$measure_0kLqBqw_u24lambda_u2402.calculateMainAxisPageSize($this$LazyLayoutMeasurePolicy, mainAxisAvailableSize, spaceBetweenPages), 0);
        PagerState pagerState3 = this.$state;
        if (this.$orientation != Orientation.Vertical) {
            iM7458getMaxWidthimpl2 = Constraints.m7458getMaxWidthimpl(contentConstraints);
        } else {
            iM7458getMaxWidthimpl2 = pageAvailableSize;
        }
        if (this.$orientation == Orientation.Vertical) {
            iM7457getMaxHeightimpl = Constraints.m7457getMaxHeightimpl(contentConstraints);
        } else {
            iM7457getMaxHeightimpl = pageAvailableSize;
        }
        pagerState3.m1085setPremeasureConstraintsBRTryo0$foundation(ConstraintsKt.Constraints$default(0, iM7458getMaxWidthimpl2, 0, iM7457getMaxHeightimpl, 5, null));
        PagerLazyLayoutItemProvider itemProvider2 = this.$itemProviderLambda.invoke();
        int layoutSize3 = mainAxisAvailableSize + $i$f$IntOffset + afterContentPadding;
        this_$iv = Snapshot.INSTANCE;
        PagerState pagerState22 = this.$state;
        SnapPosition snapPosition2 = this.$snapPosition;
        previousSnapshot$iv = this_$iv.getCurrentThreadSnapshot();
        readObserver = previousSnapshot$iv == null ? previousSnapshot$iv.getReadObserver() : null;
        newSnapshot$iv = this_$iv.makeCurrentNonObservable(previousSnapshot$iv);
        try {
            int currentPage4 = pagerState22.getCurrentPage();
            int currentPage22 = pagerState22.matchScrollPositionWithKey$foundation(itemProvider2, currentPage4);
            function12 = readObserver;
            try {
                try {
                    newSnapshot$iv2 = newSnapshot$iv;
                    function1 = function12;
                    previousSnapshot$iv2 = previousSnapshot$iv;
                    int layoutSize22 = $i$f$IntOffset;
                    try {
                        int currentPageOffset2 = PagerKt.currentPageOffset(snapPosition2, layoutSize3, pageAvailableSize, spaceBetweenPages, layoutSize22, afterContentPadding, pagerState22.getCurrentPage(), pagerState22.getCurrentPageOffsetFraction(), pagerState22.getPageCount());
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    newSnapshot$iv2 = newSnapshot$iv;
                    function1 = function12;
                    previousSnapshot$iv2 = previousSnapshot$iv;
                }
            } catch (Throwable th3) {
                th = th3;
                newSnapshot$iv2 = newSnapshot$iv;
                function1 = function12;
                previousSnapshot$iv2 = previousSnapshot$iv;
            }
            try {
                Unit unit2 = Unit.INSTANCE;
                this_$iv.restoreNonObservable(previousSnapshot$iv2, newSnapshot$iv2, function1);
                List<Integer> listCalculateLazyLayoutPinnedIndices2 = LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(itemProvider2, this.$state.getPinnedPages(), this.$state.getBeyondBoundsInfo());
                MutableIntObjectMap placeablesCache2 = IntObjectMapKt.mutableIntObjectMapOf();
                int currentPage32 = this.$pageCount.invoke().intValue();
                final int totalVerticalPadding32 = totalVerticalPadding;
                final int totalHorizontalPadding22 = y$iv;
                PagerMeasureResult measureResult2 = PagerMeasureKt.m1078measurePager7L1iB3k($this$LazyLayoutMeasurePolicy, currentPage32, itemProvider2, mainAxisAvailableSize, layoutSize22, afterContentPadding, spaceBetweenPages, currentPage22, currentPageOffset2, contentConstraints, this.$orientation, this.$verticalAlignment, this.$horizontalAlignment, this.$reverseLayout, visualItemOffset2, pageAvailableSize, this.$beyondViewportPageCount, listCalculateLazyLayoutPinnedIndices2, this.$snapPosition, this.$state.m1082getPlacementScopeInvalidatorzYiylxw$foundation(), this.$coroutineScope, $this$LazyLayoutMeasurePolicy, new Function3() { // from class: androidx.compose.foundation.pager.PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        LazyLayoutMeasureScope lazyLayoutMeasureScope = $this$LazyLayoutMeasurePolicy;
                        long j2 = containerConstraints;
                        return lazyLayoutMeasureScope.layout(ConstraintsKt.m7475constrainWidthK40F9xA(j2, ((Integer) obj).intValue() + totalHorizontalPadding22), ConstraintsKt.m7474constrainHeightK40F9xA(j2, ((Integer) obj2).intValue() + totalVerticalPadding32), MapsKt.emptyMap(), (Function1) obj3);
                    }
                }, placeablesCache2);
                PagerState.applyMeasureResult$foundation$default(this.$state, measureResult2, $this$LazyLayoutMeasurePolicy.isLookingAhead(), false, 4, null);
                PagerMeasurePolicyKt.keepAroundItems($this$LazyLayoutMeasurePolicy, this.$state.getCacheWindowLogic(), measureResult2.getVisiblePagesInfo());
                return measureResult2;
            } catch (Throwable th4) {
                th = th4;
                this_$iv.restoreNonObservable(previousSnapshot$iv2, newSnapshot$iv2, function1);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            previousSnapshot$iv2 = previousSnapshot$iv;
            newSnapshot$iv2 = newSnapshot$iv;
            function1 = readObserver;
        }
    }
}
