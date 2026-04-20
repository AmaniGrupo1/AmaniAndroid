package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider;
import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.lazy.layout.StickyItemsPlacement;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import java.util.ArrayList;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LazyGrid.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class LazyGridKt$rememberLazyGridMeasurePolicy$1$1 implements LazyLayoutMeasurePolicy {
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ CoroutineScope $coroutineScope;
    final /* synthetic */ GraphicsContext $graphicsContext;
    final /* synthetic */ Arrangement.Horizontal $horizontalArrangement;
    final /* synthetic */ boolean $isVertical;
    final /* synthetic */ Function0<LazyGridItemProvider> $itemProviderLambda;
    final /* synthetic */ boolean $reverseLayout;
    final /* synthetic */ LazyGridSlotsProvider $slots;
    final /* synthetic */ LazyGridState $state;
    final /* synthetic */ StickyItemsPlacement $stickyItemsScrollBehavior;
    final /* synthetic */ Arrangement.Vertical $verticalArrangement;

    /* JADX WARN: Multi-variable type inference failed */
    LazyGridKt$rememberLazyGridMeasurePolicy$1$1(LazyGridState lazyGridState, boolean z, PaddingValues paddingValues, boolean z2, Function0<? extends LazyGridItemProvider> function0, LazyGridSlotsProvider lazyGridSlotsProvider, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, CoroutineScope coroutineScope, GraphicsContext graphicsContext, StickyItemsPlacement stickyItemsPlacement) {
        this.$state = lazyGridState;
        this.$isVertical = z;
        this.$contentPadding = paddingValues;
        this.$reverseLayout = z2;
        this.$itemProviderLambda = function0;
        this.$slots = lazyGridSlotsProvider;
        this.$verticalArrangement = vertical;
        this.$horizontalArrangement = horizontal;
        this.$coroutineScope = coroutineScope;
        this.$graphicsContext = graphicsContext;
        this.$stickyItemsScrollBehavior = stickyItemsPlacement;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0230 A[Catch: all -> 0x037f, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x037f, blocks: (B:75:0x01fb, B:84:0x0230), top: B:119:0x01fb }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0260 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x032a  */
    /* JADX WARN: Type inference failed for: r23v2, types: [androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1] */
    /* JADX WARN: Type inference failed for: r28v0, types: [androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1] */
    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
    /* JADX INFO: renamed from: measure-0kLqBqw */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MeasureResult mo920measure0kLqBqw(final LazyLayoutMeasureScope $this$LazyLayoutMeasurePolicy, final long j) throws Throwable {
        int i;
        int i2;
        int beforeContentPadding;
        float spacing;
        int iM7458getMaxWidthimpl;
        int totalHorizontalPadding;
        long visualItemOffset;
        final ?? r28;
        final int beforeContentPadding2;
        final int totalHorizontalPadding2;
        final ?? r23;
        Function1 prefetchInfoRetriever;
        Function1 lineIndexProvider;
        Snapshot.Companion this_$iv;
        LazyGridState lazyGridState;
        Snapshot previousSnapshot$iv;
        Function1<Object, Unit> readObserver;
        Snapshot newSnapshot$iv;
        Function1<Object, Unit> function1;
        int index;
        int firstVisibleLineIndex;
        int afterContentPadding;
        int afterContentPadding2;
        float scrollToBeConsumed;
        CacheWindowLogic cacheWindowLogic;
        ObservableScopeInvalidator.m1005attachToScopeimpl(this.$state.m963getMeasurementScopeInvalidatorzYiylxw$foundation());
        boolean isInLookaheadScope = this.$state.getHasLookaheadOccurred() || $this$LazyLayoutMeasurePolicy.isLookingAhead();
        CheckScrollableContainerConstraintsKt.m291checkScrollableContainerConstraintsK40F9xA(j, this.$isVertical ? Orientation.Vertical : Orientation.Horizontal);
        boolean z = this.$isVertical;
        PaddingValues paddingValues = this.$contentPadding;
        if (z) {
            i = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(paddingValues.mo768calculateLeftPaddingu2uoSUM($this$LazyLayoutMeasurePolicy.getLayoutDirection()));
        } else {
            i = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(PaddingKt.calculateStartPadding(paddingValues, $this$LazyLayoutMeasurePolicy.getLayoutDirection()));
        }
        int startPadding = i;
        boolean z2 = this.$isVertical;
        PaddingValues paddingValues2 = this.$contentPadding;
        if (z2) {
            i2 = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(paddingValues2.mo769calculateRightPaddingu2uoSUM($this$LazyLayoutMeasurePolicy.getLayoutDirection()));
        } else {
            i2 = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(PaddingKt.calculateEndPadding(paddingValues2, $this$LazyLayoutMeasurePolicy.getLayoutDirection()));
        }
        int endPadding = i2;
        int topPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(this.$contentPadding.getTop());
        int bottomPadding = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(this.$contentPadding.getBottom());
        final int totalVerticalPadding = topPadding + bottomPadding;
        int totalHorizontalPadding3 = startPadding + endPadding;
        int totalMainAxisPadding = this.$isVertical ? totalVerticalPadding : totalHorizontalPadding3;
        if (this.$isVertical && !this.$reverseLayout) {
            beforeContentPadding = topPadding;
        } else if (this.$isVertical && this.$reverseLayout) {
            beforeContentPadding = bottomPadding;
        } else {
            beforeContentPadding = (this.$isVertical || this.$reverseLayout) ? endPadding : startPadding;
        }
        final int afterContentPadding3 = totalMainAxisPadding - beforeContentPadding;
        long contentConstraints = ConstraintsKt.m7477offsetNN6EwU(j, -totalHorizontalPadding3, -totalVerticalPadding);
        final LazyGridItemProvider itemProvider = this.$itemProviderLambda.invoke();
        final LazyGridSpanLayoutProvider spanLayoutProvider = itemProvider.getSpanLayoutProvider();
        final LazyGridSlots resolvedSlots = this.$slots.mo946invoke0kLqBqw($this$LazyLayoutMeasurePolicy, contentConstraints);
        int slotsPerLine = resolvedSlots.getSizes().length;
        spanLayoutProvider.setSlotsPerLine(slotsPerLine);
        if (this.$isVertical) {
            Arrangement.Vertical vertical = this.$verticalArrangement;
            if (vertical != null) {
                spacing = vertical.getSpacing();
            } else {
                InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("null verticalArrangement when isVertical == true");
                throw new KotlinNothingValueException();
            }
        } else {
            Arrangement.Horizontal horizontal = this.$horizontalArrangement;
            if (horizontal != null) {
                spacing = horizontal.getSpacing();
            } else {
                InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("null horizontalArrangement when isVertical == false");
                throw new KotlinNothingValueException();
            }
        }
        float spaceBetweenLinesDp = spacing;
        final int spaceBetweenLines = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(spaceBetweenLinesDp);
        final int itemsCount = itemProvider.getItemCount();
        if (this.$isVertical) {
            iM7458getMaxWidthimpl = Constraints.m7457getMaxHeightimpl(j) - totalVerticalPadding;
        } else {
            iM7458getMaxWidthimpl = Constraints.m7458getMaxWidthimpl(j) - totalHorizontalPadding3;
        }
        int mainAxisAvailableSize = iM7458getMaxWidthimpl;
        if (this.$reverseLayout && mainAxisAvailableSize <= 0) {
            int x$iv = this.$isVertical ? startPadding : startPadding + mainAxisAvailableSize;
            int y$iv = this.$isVertical ? topPadding + mainAxisAvailableSize : topPadding;
            int val2$iv$iv = y$iv;
            totalHorizontalPadding = totalHorizontalPadding3;
            visualItemOffset = IntOffset.m7627constructorimpl((((long) x$iv) << 32) | (((long) val2$iv$iv) & 4294967295L));
            beforeContentPadding2 = beforeContentPadding;
            final LazyGridState lazyGridState2 = this.$state;
            final boolean z3 = this.$isVertical;
            final long visualItemOffset2 = visualItemOffset;
            final boolean z4 = this.$reverseLayout;
            totalHorizontalPadding2 = totalHorizontalPadding;
            r28 = new LazyGridMeasuredItemProvider(itemProvider, $this$LazyLayoutMeasurePolicy, spaceBetweenLines, lazyGridState2, z3, z4, beforeContentPadding2, afterContentPadding3, visualItemOffset2) { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1
                final /* synthetic */ int $afterContentPadding;
                final /* synthetic */ int $beforeContentPadding;
                final /* synthetic */ boolean $isVertical;
                final /* synthetic */ boolean $reverseLayout;
                final /* synthetic */ LazyGridState $state;
                final /* synthetic */ LazyLayoutMeasureScope $this_LazyLayoutMeasurePolicy;
                final /* synthetic */ long $visualItemOffset;

                {
                    this.$this_LazyLayoutMeasurePolicy = $this$LazyLayoutMeasurePolicy;
                    this.$state = lazyGridState2;
                    this.$isVertical = z3;
                    this.$reverseLayout = z4;
                    this.$beforeContentPadding = beforeContentPadding2;
                    this.$afterContentPadding = afterContentPadding3;
                    this.$visualItemOffset = visualItemOffset2;
                }

                @Override // androidx.compose.foundation.lazy.grid.LazyGridMeasuredItemProvider
                /* JADX INFO: renamed from: createItem-O3s9Psw, reason: not valid java name */
                public LazyGridMeasuredItem mo955createItemO3s9Psw(int index2, Object key, Object contentType, int crossAxisSize, int mainAxisSpacing, List<? extends Placeable> placeables, long constraints, int lane, int span) {
                    return new LazyGridMeasuredItem(index2, key, this.$isVertical, crossAxisSize, mainAxisSpacing, this.$reverseLayout, this.$this_LazyLayoutMeasurePolicy.getLayoutDirection(), this.$beforeContentPadding, this.$afterContentPadding, placeables, this.$visualItemOffset, contentType, this.$state.getItemAnimator$foundation(), constraints, lane, span, null);
                }
            };
            final boolean z5 = this.$isVertical;
            r23 = new LazyGridMeasuredLineProvider(z5, resolvedSlots, itemsCount, spaceBetweenLines, r28, spanLayoutProvider) { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1
                final /* synthetic */ boolean $isVertical;
                final /* synthetic */ LazyGridSlots $resolvedSlots;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(z5, resolvedSlots, itemsCount, spaceBetweenLines, r28, spanLayoutProvider);
                    this.$isVertical = z5;
                    this.$resolvedSlots = resolvedSlots;
                }

                @Override // androidx.compose.foundation.lazy.grid.LazyGridMeasuredLineProvider
                public LazyGridMeasuredLine createLine(int index2, LazyGridMeasuredItem[] items, List<GridItemSpan> spans, int mainAxisSpacing) {
                    return new LazyGridMeasuredLine(index2, items, this.$resolvedSlots, spans, this.$isVertical, mainAxisSpacing);
                }
            };
            prefetchInfoRetriever = new Function1() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LazyGridKt$rememberLazyGridMeasurePolicy$1$1.measure_0kLqBqw$lambda$2(spanLayoutProvider, r23, ((Integer) obj).intValue());
                }
            };
            lineIndexProvider = new Function1() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Integer.valueOf(spanLayoutProvider.getLineIndexOfItem(((Integer) obj).intValue()));
                }
            };
            this_$iv = Snapshot.INSTANCE;
            lazyGridState = this.$state;
            previousSnapshot$iv = this_$iv.getCurrentThreadSnapshot();
            readObserver = previousSnapshot$iv == null ? previousSnapshot$iv.getReadObserver() : null;
            newSnapshot$iv = this_$iv.makeCurrentNonObservable(previousSnapshot$iv);
            int firstVisibleLineIndex2 = lazyGridState.getFirstVisibleItemIndex();
            index = lazyGridState.updateScrollPositionIfTheFirstItemWasMoved$foundation(itemProvider, firstVisibleLineIndex2);
            if (index >= itemsCount) {
                firstVisibleLineIndex = spanLayoutProvider.getLineIndexOfItem(index);
                int firstVisibleLineScrollOffset = lazyGridState.getFirstVisibleItemScrollOffset();
                afterContentPadding = afterContentPadding3;
                afterContentPadding2 = firstVisibleLineScrollOffset;
                Unit unit = Unit.INSTANCE;
                this_$iv.restoreNonObservable(previousSnapshot$iv, newSnapshot$iv, readObserver);
                List<Integer> listCalculateLazyLayoutPinnedIndices = LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(itemProvider, this.$state.getPinnedItems(), this.$state.getBeyondBoundsInfo());
                if ($this$LazyLayoutMeasurePolicy.isLookingAhead()) {
                }
                float scrollToBeConsumed2 = scrollToBeConsumed;
                int beforeContentPadding3 = firstVisibleLineIndex;
                LazyGridMeasureResult measureResult = LazyGridMeasureKt.m958measureLazyGridt1x4au0(itemsCount, (LazyGridMeasuredLineProvider) r23, (LazyGridMeasuredItemProvider) r28, mainAxisAvailableSize, beforeContentPadding2, afterContentPadding, spaceBetweenLines, beforeContentPadding3, afterContentPadding2, scrollToBeConsumed2, contentConstraints, this.$isVertical, this.$verticalArrangement, this.$horizontalArrangement, this.$reverseLayout, $this$LazyLayoutMeasurePolicy, this.$state.getItemAnimator$foundation(), slotsPerLine, listCalculateLazyLayoutPinnedIndices, isInLookaheadScope, $this$LazyLayoutMeasurePolicy.isLookingAhead(), this.$state.getApproachLayoutInfo(), this.$coroutineScope, this.$state.m964getPlacementScopeInvalidatorzYiylxw$foundation(), this.$graphicsContext, prefetchInfoRetriever, lineIndexProvider, this.$stickyItemsScrollBehavior, new Function3() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        LazyLayoutMeasureScope lazyLayoutMeasureScope = $this$LazyLayoutMeasurePolicy;
                        long j2 = j;
                        return lazyLayoutMeasureScope.layout(ConstraintsKt.m7475constrainWidthK40F9xA(j2, ((Integer) obj).intValue() + totalHorizontalPadding2), ConstraintsKt.m7474constrainHeightK40F9xA(j2, ((Integer) obj2).intValue() + totalVerticalPadding), MapsKt.emptyMap(), (Function1) obj3);
                    }
                });
                LazyGridState.applyMeasureResult$foundation$default(this.$state, measureResult, $this$LazyLayoutMeasurePolicy.isLookingAhead(), false, 4, null);
                Object prefetchStrategy = this.$state.getPrefetchStrategy();
                cacheWindowLogic = prefetchStrategy instanceof CacheWindowLogic ? (CacheWindowLogic) prefetchStrategy : null;
                if (cacheWindowLogic != null) {
                }
                return measureResult;
            }
            this_$iv.restoreNonObservable(previousSnapshot$iv, newSnapshot$iv, function1);
            throw th;
        }
        totalHorizontalPadding = totalHorizontalPadding3;
        char c = ' ';
        visualItemOffset = IntOffset.m7627constructorimpl((((long) startPadding) << c) | (((long) topPadding) & 4294967295L));
        beforeContentPadding2 = beforeContentPadding;
        final LazyGridState lazyGridState22 = this.$state;
        final boolean z32 = this.$isVertical;
        final long visualItemOffset22 = visualItemOffset;
        final boolean z42 = this.$reverseLayout;
        totalHorizontalPadding2 = totalHorizontalPadding;
        r28 = new LazyGridMeasuredItemProvider(itemProvider, $this$LazyLayoutMeasurePolicy, spaceBetweenLines, lazyGridState22, z32, z42, beforeContentPadding2, afterContentPadding3, visualItemOffset22) { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1
            final /* synthetic */ int $afterContentPadding;
            final /* synthetic */ int $beforeContentPadding;
            final /* synthetic */ boolean $isVertical;
            final /* synthetic */ boolean $reverseLayout;
            final /* synthetic */ LazyGridState $state;
            final /* synthetic */ LazyLayoutMeasureScope $this_LazyLayoutMeasurePolicy;
            final /* synthetic */ long $visualItemOffset;

            {
                this.$this_LazyLayoutMeasurePolicy = $this$LazyLayoutMeasurePolicy;
                this.$state = lazyGridState22;
                this.$isVertical = z32;
                this.$reverseLayout = z42;
                this.$beforeContentPadding = beforeContentPadding2;
                this.$afterContentPadding = afterContentPadding3;
                this.$visualItemOffset = visualItemOffset22;
            }

            @Override // androidx.compose.foundation.lazy.grid.LazyGridMeasuredItemProvider
            /* JADX INFO: renamed from: createItem-O3s9Psw, reason: not valid java name */
            public LazyGridMeasuredItem mo955createItemO3s9Psw(int index2, Object key, Object contentType, int crossAxisSize, int mainAxisSpacing, List<? extends Placeable> placeables, long constraints, int lane, int span) {
                return new LazyGridMeasuredItem(index2, key, this.$isVertical, crossAxisSize, mainAxisSpacing, this.$reverseLayout, this.$this_LazyLayoutMeasurePolicy.getLayoutDirection(), this.$beforeContentPadding, this.$afterContentPadding, placeables, this.$visualItemOffset, contentType, this.$state.getItemAnimator$foundation(), constraints, lane, span, null);
            }
        };
        final boolean z52 = this.$isVertical;
        r23 = new LazyGridMeasuredLineProvider(z52, resolvedSlots, itemsCount, spaceBetweenLines, r28, spanLayoutProvider) { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1
            final /* synthetic */ boolean $isVertical;
            final /* synthetic */ LazyGridSlots $resolvedSlots;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(z52, resolvedSlots, itemsCount, spaceBetweenLines, r28, spanLayoutProvider);
                this.$isVertical = z52;
                this.$resolvedSlots = resolvedSlots;
            }

            @Override // androidx.compose.foundation.lazy.grid.LazyGridMeasuredLineProvider
            public LazyGridMeasuredLine createLine(int index2, LazyGridMeasuredItem[] items, List<GridItemSpan> spans, int mainAxisSpacing) {
                return new LazyGridMeasuredLine(index2, items, this.$resolvedSlots, spans, this.$isVertical, mainAxisSpacing);
            }
        };
        prefetchInfoRetriever = new Function1() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LazyGridKt$rememberLazyGridMeasurePolicy$1$1.measure_0kLqBqw$lambda$2(spanLayoutProvider, r23, ((Integer) obj).intValue());
            }
        };
        lineIndexProvider = new Function1() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(spanLayoutProvider.getLineIndexOfItem(((Integer) obj).intValue()));
            }
        };
        this_$iv = Snapshot.INSTANCE;
        lazyGridState = this.$state;
        previousSnapshot$iv = this_$iv.getCurrentThreadSnapshot();
        readObserver = previousSnapshot$iv == null ? previousSnapshot$iv.getReadObserver() : null;
        newSnapshot$iv = this_$iv.makeCurrentNonObservable(previousSnapshot$iv);
        try {
            int firstVisibleLineIndex22 = lazyGridState.getFirstVisibleItemIndex();
            index = lazyGridState.updateScrollPositionIfTheFirstItemWasMoved$foundation(itemProvider, firstVisibleLineIndex22);
            if (index >= itemsCount || itemsCount <= 0) {
                firstVisibleLineIndex = spanLayoutProvider.getLineIndexOfItem(index);
                try {
                    int firstVisibleLineScrollOffset2 = lazyGridState.getFirstVisibleItemScrollOffset();
                    afterContentPadding = afterContentPadding3;
                    afterContentPadding2 = firstVisibleLineScrollOffset2;
                    try {
                        Unit unit2 = Unit.INSTANCE;
                        this_$iv.restoreNonObservable(previousSnapshot$iv, newSnapshot$iv, readObserver);
                        List<Integer> listCalculateLazyLayoutPinnedIndices2 = LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(itemProvider, this.$state.getPinnedItems(), this.$state.getBeyondBoundsInfo());
                        if ($this$LazyLayoutMeasurePolicy.isLookingAhead() || !isInLookaheadScope) {
                            scrollToBeConsumed = this.$state.getScrollToBeConsumed();
                        } else {
                            scrollToBeConsumed = this.$state.getScrollDeltaBetweenPasses$foundation();
                        }
                        float scrollToBeConsumed22 = scrollToBeConsumed;
                        int beforeContentPadding32 = firstVisibleLineIndex;
                        LazyGridMeasureResult measureResult2 = LazyGridMeasureKt.m958measureLazyGridt1x4au0(itemsCount, (LazyGridMeasuredLineProvider) r23, (LazyGridMeasuredItemProvider) r28, mainAxisAvailableSize, beforeContentPadding2, afterContentPadding, spaceBetweenLines, beforeContentPadding32, afterContentPadding2, scrollToBeConsumed22, contentConstraints, this.$isVertical, this.$verticalArrangement, this.$horizontalArrangement, this.$reverseLayout, $this$LazyLayoutMeasurePolicy, this.$state.getItemAnimator$foundation(), slotsPerLine, listCalculateLazyLayoutPinnedIndices2, isInLookaheadScope, $this$LazyLayoutMeasurePolicy.isLookingAhead(), this.$state.getApproachLayoutInfo(), this.$coroutineScope, this.$state.m964getPlacementScopeInvalidatorzYiylxw$foundation(), this.$graphicsContext, prefetchInfoRetriever, lineIndexProvider, this.$stickyItemsScrollBehavior, new Function3() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj, Object obj2, Object obj3) {
                                LazyLayoutMeasureScope lazyLayoutMeasureScope = $this$LazyLayoutMeasurePolicy;
                                long j2 = j;
                                return lazyLayoutMeasureScope.layout(ConstraintsKt.m7475constrainWidthK40F9xA(j2, ((Integer) obj).intValue() + totalHorizontalPadding2), ConstraintsKt.m7474constrainHeightK40F9xA(j2, ((Integer) obj2).intValue() + totalVerticalPadding), MapsKt.emptyMap(), (Function1) obj3);
                            }
                        });
                        LazyGridState.applyMeasureResult$foundation$default(this.$state, measureResult2, $this$LazyLayoutMeasurePolicy.isLookingAhead(), false, 4, null);
                        Object prefetchStrategy2 = this.$state.getPrefetchStrategy();
                        cacheWindowLogic = prefetchStrategy2 instanceof CacheWindowLogic ? (CacheWindowLogic) prefetchStrategy2 : null;
                        if (cacheWindowLogic != null) {
                            LazyGridKt.keepAroundItems(cacheWindowLogic, measureResult2.getOrientation(), measureResult2.getVisibleItemsInfo(), (LazyGridMeasuredLineProvider) r23);
                        }
                        return measureResult2;
                    } catch (Throwable th) {
                        th = th;
                        function1 = readObserver;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    function1 = readObserver;
                }
            } else {
                try {
                    int firstVisibleLineIndex3 = spanLayoutProvider.getLineIndexOfItem(itemsCount - 1);
                    firstVisibleLineIndex = firstVisibleLineIndex3;
                    afterContentPadding = afterContentPadding3;
                    afterContentPadding2 = 0;
                    Unit unit22 = Unit.INSTANCE;
                    this_$iv.restoreNonObservable(previousSnapshot$iv, newSnapshot$iv, readObserver);
                    List<Integer> listCalculateLazyLayoutPinnedIndices22 = LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(itemProvider, this.$state.getPinnedItems(), this.$state.getBeyondBoundsInfo());
                    if ($this$LazyLayoutMeasurePolicy.isLookingAhead()) {
                        scrollToBeConsumed = this.$state.getScrollToBeConsumed();
                    }
                    float scrollToBeConsumed222 = scrollToBeConsumed;
                    int beforeContentPadding322 = firstVisibleLineIndex;
                    LazyGridMeasureResult measureResult22 = LazyGridMeasureKt.m958measureLazyGridt1x4au0(itemsCount, (LazyGridMeasuredLineProvider) r23, (LazyGridMeasuredItemProvider) r28, mainAxisAvailableSize, beforeContentPadding2, afterContentPadding, spaceBetweenLines, beforeContentPadding322, afterContentPadding2, scrollToBeConsumed222, contentConstraints, this.$isVertical, this.$verticalArrangement, this.$horizontalArrangement, this.$reverseLayout, $this$LazyLayoutMeasurePolicy, this.$state.getItemAnimator$foundation(), slotsPerLine, listCalculateLazyLayoutPinnedIndices22, isInLookaheadScope, $this$LazyLayoutMeasurePolicy.isLookingAhead(), this.$state.getApproachLayoutInfo(), this.$coroutineScope, this.$state.m964getPlacementScopeInvalidatorzYiylxw$foundation(), this.$graphicsContext, prefetchInfoRetriever, lineIndexProvider, this.$stickyItemsScrollBehavior, new Function3() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj, Object obj2, Object obj3) {
                            LazyLayoutMeasureScope lazyLayoutMeasureScope = $this$LazyLayoutMeasurePolicy;
                            long j2 = j;
                            return lazyLayoutMeasureScope.layout(ConstraintsKt.m7475constrainWidthK40F9xA(j2, ((Integer) obj).intValue() + totalHorizontalPadding2), ConstraintsKt.m7474constrainHeightK40F9xA(j2, ((Integer) obj2).intValue() + totalVerticalPadding), MapsKt.emptyMap(), (Function1) obj3);
                        }
                    });
                    LazyGridState.applyMeasureResult$foundation$default(this.$state, measureResult22, $this$LazyLayoutMeasurePolicy.isLookingAhead(), false, 4, null);
                    Object prefetchStrategy22 = this.$state.getPrefetchStrategy();
                    cacheWindowLogic = prefetchStrategy22 instanceof CacheWindowLogic ? (CacheWindowLogic) prefetchStrategy22 : null;
                    if (cacheWindowLogic != null) {
                    }
                    return measureResult22;
                } catch (Throwable th3) {
                    th = th3;
                    function1 = readObserver;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            function1 = readObserver;
        }
        this_$iv.restoreNonObservable(previousSnapshot$iv, newSnapshot$iv, function1);
        throw th;
    }

    static final ArrayList measure_0kLqBqw$lambda$2(LazyGridSpanLayoutProvider $spanLayoutProvider, LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 $measuredLineProvider, int line) {
        LazyGridSpanLayoutProvider.LineConfiguration lineConfiguration = $spanLayoutProvider.getLineConfiguration(line);
        int index = lineConfiguration.getFirstItemIndex();
        int slot = 0;
        ArrayList result = new ArrayList(lineConfiguration.getSpans().size());
        List<GridItemSpan> spans = lineConfiguration.getSpans();
        int size = spans.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = spans.get(index$iv);
            long it = ((GridItemSpan) item$iv).getPackedValue();
            int span = GridItemSpan.m942getCurrentLineSpanimpl(it);
            result.add(TuplesKt.to(Integer.valueOf(index), Constraints.m7445boximpl($measuredLineProvider.m962childConstraintsJhjzzOo$foundation(slot, span))));
            index++;
            slot += span;
        }
        return result;
    }
}
