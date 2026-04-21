package androidx.compose.foundation.lazy;

import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.lazy.layout.StickyItemsPlacement;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LazyList.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class LazyListKt$rememberLazyListMeasurePolicy$1$1 implements LazyLayoutMeasurePolicy {
    final /* synthetic */ int $beyondBoundsItemCount;
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ CoroutineScope $coroutineScope;
    final /* synthetic */ GraphicsContext $graphicsContext;
    final /* synthetic */ Alignment.Horizontal $horizontalAlignment;
    final /* synthetic */ Arrangement.Horizontal $horizontalArrangement;
    final /* synthetic */ boolean $isVertical;
    final /* synthetic */ Function0<LazyListItemProvider> $itemProviderLambda;
    final /* synthetic */ boolean $reverseLayout;
    final /* synthetic */ LazyListState $state;
    final /* synthetic */ StickyItemsPlacement $stickyItemsPlacement;
    final /* synthetic */ Alignment.Vertical $verticalAlignment;
    final /* synthetic */ Arrangement.Vertical $verticalArrangement;

    /* JADX WARN: Multi-variable type inference failed */
    LazyListKt$rememberLazyListMeasurePolicy$1$1(LazyListState lazyListState, boolean z, PaddingValues paddingValues, boolean z2, Function0<? extends LazyListItemProvider> function0, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, int i, CoroutineScope coroutineScope, GraphicsContext graphicsContext, StickyItemsPlacement stickyItemsPlacement, Alignment.Horizontal horizontal2, Alignment.Vertical vertical2) {
        this.$state = lazyListState;
        this.$isVertical = z;
        this.$contentPadding = paddingValues;
        this.$reverseLayout = z2;
        this.$itemProviderLambda = function0;
        this.$verticalArrangement = vertical;
        this.$horizontalArrangement = horizontal;
        this.$beyondBoundsItemCount = i;
        this.$coroutineScope = coroutineScope;
        this.$graphicsContext = graphicsContext;
        this.$stickyItemsPlacement = stickyItemsPlacement;
        this.$horizontalAlignment = horizontal2;
        this.$verticalAlignment = vertical2;
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02ca  */
    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
    /* JADX INFO: renamed from: measure-0kLqBqw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MeasureResult mo920measure0kLqBqw(final LazyLayoutMeasureScope $this$LazyLayoutMeasurePolicy, final long j) throws Throwable {
        int i;
        int i2;
        final int beforeContentPadding;
        float spacing;
        int iM7458getMaxWidthimpl;
        int totalVerticalPadding;
        final long visualItemOffset;
        LazyListMeasuredItemProvider lazyListMeasuredItemProvider;
        Snapshot.Companion this_$iv;
        Snapshot previousSnapshot$iv;
        Function1<Object, Unit> readObserver;
        Snapshot newSnapshot$iv;
        float scrollToBeConsumed;
        CacheWindowLogic cacheWindowLogic;
        ObservableScopeInvalidator.m1005attachToScopeimpl(this.$state.m936getMeasurementScopeInvalidatorzYiylxw$foundation());
        boolean hasLookaheadOccurred = this.$state.getHasLookaheadOccurred() || $this$LazyLayoutMeasurePolicy.isLookingAhead();
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
        int totalVerticalPadding2 = topPadding + bottomPadding;
        final int totalHorizontalPadding = startPadding + endPadding;
        int totalMainAxisPadding = this.$isVertical ? totalVerticalPadding2 : totalHorizontalPadding;
        if (this.$isVertical && !this.$reverseLayout) {
            beforeContentPadding = topPadding;
        } else if (this.$isVertical && this.$reverseLayout) {
            beforeContentPadding = bottomPadding;
        } else {
            beforeContentPadding = (this.$isVertical || this.$reverseLayout) ? endPadding : startPadding;
        }
        final int afterContentPadding = totalMainAxisPadding - beforeContentPadding;
        final long contentConstraints = ConstraintsKt.m7477offsetNN6EwU(j, -totalHorizontalPadding, -totalVerticalPadding2);
        final LazyListItemProvider itemProvider = this.$itemProviderLambda.invoke();
        itemProvider.getItemScope().setMaxSize(Constraints.m7458getMaxWidthimpl(contentConstraints), Constraints.m7457getMaxHeightimpl(contentConstraints));
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
                InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("null horizontalAlignment when isVertical == false");
                throw new KotlinNothingValueException();
            }
        }
        float spaceBetweenItemsDp = spacing;
        final int spaceBetweenItems = $this$LazyLayoutMeasurePolicy.mo399roundToPx0680j_4(spaceBetweenItemsDp);
        final int itemsCount = itemProvider.getItemCount();
        if (this.$isVertical) {
            iM7458getMaxWidthimpl = Constraints.m7457getMaxHeightimpl(j) - totalVerticalPadding2;
        } else {
            iM7458getMaxWidthimpl = Constraints.m7458getMaxWidthimpl(j) - totalHorizontalPadding;
        }
        int mainAxisAvailableSize = iM7458getMaxWidthimpl;
        if (this.$reverseLayout && mainAxisAvailableSize <= 0) {
            int x$iv = this.$isVertical ? startPadding : startPadding + mainAxisAvailableSize;
            int y$iv = this.$isVertical ? topPadding + mainAxisAvailableSize : topPadding;
            int val2$iv$iv = y$iv;
            totalVerticalPadding = totalVerticalPadding2;
            visualItemOffset = IntOffset.m7627constructorimpl((((long) x$iv) << 32) | (((long) val2$iv$iv) & 4294967295L));
            final boolean z3 = this.$isVertical;
            final Alignment.Horizontal horizontal2 = this.$horizontalAlignment;
            final Alignment.Vertical vertical2 = this.$verticalAlignment;
            final boolean z4 = this.$reverseLayout;
            final LazyListState lazyListState = this.$state;
            lazyListMeasuredItemProvider = new LazyListMeasuredItemProvider(contentConstraints, z3, itemProvider, $this$LazyLayoutMeasurePolicy, itemsCount, spaceBetweenItems, horizontal2, vertical2, z4, beforeContentPadding, afterContentPadding, visualItemOffset, lazyListState) { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1
                final /* synthetic */ int $afterContentPadding;
                final /* synthetic */ int $beforeContentPadding;
                final /* synthetic */ Alignment.Horizontal $horizontalAlignment;
                final /* synthetic */ boolean $isVertical;
                final /* synthetic */ int $itemsCount;
                final /* synthetic */ boolean $reverseLayout;
                final /* synthetic */ int $spaceBetweenItems;
                final /* synthetic */ LazyListState $state;
                final /* synthetic */ LazyLayoutMeasureScope $this_LazyLayoutMeasurePolicy;
                final /* synthetic */ Alignment.Vertical $verticalAlignment;
                final /* synthetic */ long $visualItemOffset;

                {
                    this.$isVertical = z3;
                    this.$this_LazyLayoutMeasurePolicy = $this$LazyLayoutMeasurePolicy;
                    this.$itemsCount = itemsCount;
                    this.$spaceBetweenItems = spaceBetweenItems;
                    this.$horizontalAlignment = horizontal2;
                    this.$verticalAlignment = vertical2;
                    this.$reverseLayout = z4;
                    this.$beforeContentPadding = beforeContentPadding;
                    this.$afterContentPadding = afterContentPadding;
                    this.$visualItemOffset = visualItemOffset;
                    this.$state = lazyListState;
                }

                @Override // androidx.compose.foundation.lazy.LazyListMeasuredItemProvider
                /* JADX INFO: renamed from: createItem-X9ElhV4, reason: not valid java name */
                public LazyListMeasuredItem mo921createItemX9ElhV4(int index, Object key, Object contentType, List<? extends Placeable> placeables, long constraints) {
                    int spacing2 = index == this.$itemsCount + (-1) ? 0 : this.$spaceBetweenItems;
                    return new LazyListMeasuredItem(index, placeables, this.$isVertical, this.$horizontalAlignment, this.$verticalAlignment, this.$this_LazyLayoutMeasurePolicy.getLayoutDirection(), this.$reverseLayout, this.$beforeContentPadding, this.$afterContentPadding, spacing2, this.$visualItemOffset, key, contentType, this.$state.getItemAnimator$foundation(), constraints, null);
                }
            };
            this_$iv = Snapshot.INSTANCE;
            LazyListState lazyListState2 = this.$state;
            previousSnapshot$iv = this_$iv.getCurrentThreadSnapshot();
            if (previousSnapshot$iv == null) {
            }
            newSnapshot$iv = this_$iv.makeCurrentNonObservable(previousSnapshot$iv);
            int firstVisibleItemIndex = lazyListState2.getFirstVisibleItemIndex();
            int firstVisibleItemIndex2 = lazyListState2.updateScrollPositionIfTheFirstItemWasMoved$foundation(itemProvider, firstVisibleItemIndex);
            int firstVisibleScrollOffset = lazyListState2.getFirstVisibleItemScrollOffset();
            Unit unit = Unit.INSTANCE;
            this_$iv.restoreNonObservable(previousSnapshot$iv, newSnapshot$iv, readObserver);
            List<Integer> listCalculateLazyLayoutPinnedIndices = LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(itemProvider, this.$state.getPinnedItems(), this.$state.getBeyondBoundsInfo());
            if (!$this$LazyLayoutMeasurePolicy.isLookingAhead()) {
                scrollToBeConsumed = this.$state.getScrollToBeConsumed();
            }
            float scrollToBeConsumed2 = scrollToBeConsumed;
            final int totalVerticalPadding3 = totalVerticalPadding;
            LazyListMeasureResult measureResult = LazyListMeasureKt.m926measureLazyList_s_dbAc(itemsCount, lazyListMeasuredItemProvider, mainAxisAvailableSize, beforeContentPadding, afterContentPadding, spaceBetweenItems, firstVisibleItemIndex2, firstVisibleScrollOffset, scrollToBeConsumed2, contentConstraints, this.$isVertical, this.$verticalArrangement, this.$horizontalArrangement, this.$reverseLayout, $this$LazyLayoutMeasurePolicy, this.$state.getItemAnimator$foundation(), this.$beyondBoundsItemCount, listCalculateLazyLayoutPinnedIndices, hasLookaheadOccurred, $this$LazyLayoutMeasurePolicy.isLookingAhead(), this.$coroutineScope, this.$state.m937getPlacementScopeInvalidatorzYiylxw$foundation(), this.$graphicsContext, this.$stickyItemsPlacement, new Function3() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    LazyLayoutMeasureScope lazyLayoutMeasureScope = $this$LazyLayoutMeasurePolicy;
                    long j2 = j;
                    return lazyLayoutMeasureScope.layout(ConstraintsKt.m7475constrainWidthK40F9xA(j2, ((Integer) obj).intValue() + totalHorizontalPadding), ConstraintsKt.m7474constrainHeightK40F9xA(j2, ((Integer) obj2).intValue() + totalVerticalPadding3), MapsKt.emptyMap(), (Function1) obj3);
                }
            });
            LazyListState.applyMeasureResult$foundation$default(this.$state, measureResult, $this$LazyLayoutMeasurePolicy.isLookingAhead(), false, 4, null);
            Object prefetchStrategy = this.$state.getPrefetchStrategy();
            cacheWindowLogic = prefetchStrategy instanceof CacheWindowLogic ? (CacheWindowLogic) prefetchStrategy : null;
            if (cacheWindowLogic != null) {
            }
            return measureResult;
        }
        totalVerticalPadding = totalVerticalPadding2;
        long j2 = 4294967295L;
        visualItemOffset = IntOffset.m7627constructorimpl((((long) startPadding) << 32) | (((long) topPadding) & j2));
        final boolean z32 = this.$isVertical;
        final Alignment.Horizontal horizontal22 = this.$horizontalAlignment;
        final Alignment.Vertical vertical22 = this.$verticalAlignment;
        final boolean z42 = this.$reverseLayout;
        final LazyListState lazyListState3 = this.$state;
        lazyListMeasuredItemProvider = new LazyListMeasuredItemProvider(contentConstraints, z32, itemProvider, $this$LazyLayoutMeasurePolicy, itemsCount, spaceBetweenItems, horizontal22, vertical22, z42, beforeContentPadding, afterContentPadding, visualItemOffset, lazyListState3) { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1
            final /* synthetic */ int $afterContentPadding;
            final /* synthetic */ int $beforeContentPadding;
            final /* synthetic */ Alignment.Horizontal $horizontalAlignment;
            final /* synthetic */ boolean $isVertical;
            final /* synthetic */ int $itemsCount;
            final /* synthetic */ boolean $reverseLayout;
            final /* synthetic */ int $spaceBetweenItems;
            final /* synthetic */ LazyListState $state;
            final /* synthetic */ LazyLayoutMeasureScope $this_LazyLayoutMeasurePolicy;
            final /* synthetic */ Alignment.Vertical $verticalAlignment;
            final /* synthetic */ long $visualItemOffset;

            {
                this.$isVertical = z32;
                this.$this_LazyLayoutMeasurePolicy = $this$LazyLayoutMeasurePolicy;
                this.$itemsCount = itemsCount;
                this.$spaceBetweenItems = spaceBetweenItems;
                this.$horizontalAlignment = horizontal22;
                this.$verticalAlignment = vertical22;
                this.$reverseLayout = z42;
                this.$beforeContentPadding = beforeContentPadding;
                this.$afterContentPadding = afterContentPadding;
                this.$visualItemOffset = visualItemOffset;
                this.$state = lazyListState3;
            }

            @Override // androidx.compose.foundation.lazy.LazyListMeasuredItemProvider
            /* JADX INFO: renamed from: createItem-X9ElhV4, reason: not valid java name */
            public LazyListMeasuredItem mo921createItemX9ElhV4(int index, Object key, Object contentType, List<? extends Placeable> placeables, long constraints) {
                int spacing2 = index == this.$itemsCount + (-1) ? 0 : this.$spaceBetweenItems;
                return new LazyListMeasuredItem(index, placeables, this.$isVertical, this.$horizontalAlignment, this.$verticalAlignment, this.$this_LazyLayoutMeasurePolicy.getLayoutDirection(), this.$reverseLayout, this.$beforeContentPadding, this.$afterContentPadding, spacing2, this.$visualItemOffset, key, contentType, this.$state.getItemAnimator$foundation(), constraints, null);
            }
        };
        this_$iv = Snapshot.INSTANCE;
        LazyListState lazyListState22 = this.$state;
        previousSnapshot$iv = this_$iv.getCurrentThreadSnapshot();
        readObserver = previousSnapshot$iv == null ? previousSnapshot$iv.getReadObserver() : null;
        newSnapshot$iv = this_$iv.makeCurrentNonObservable(previousSnapshot$iv);
        try {
            int firstVisibleItemIndex3 = lazyListState22.getFirstVisibleItemIndex();
            int firstVisibleItemIndex22 = lazyListState22.updateScrollPositionIfTheFirstItemWasMoved$foundation(itemProvider, firstVisibleItemIndex3);
            try {
                int firstVisibleScrollOffset2 = lazyListState22.getFirstVisibleItemScrollOffset();
                try {
                    Unit unit2 = Unit.INSTANCE;
                    this_$iv.restoreNonObservable(previousSnapshot$iv, newSnapshot$iv, readObserver);
                    List<Integer> listCalculateLazyLayoutPinnedIndices2 = LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(itemProvider, this.$state.getPinnedItems(), this.$state.getBeyondBoundsInfo());
                    if (!$this$LazyLayoutMeasurePolicy.isLookingAhead() || !hasLookaheadOccurred) {
                        scrollToBeConsumed = this.$state.getScrollToBeConsumed();
                    } else {
                        scrollToBeConsumed = this.$state.getScrollDeltaBetweenPasses$foundation();
                    }
                    float scrollToBeConsumed22 = scrollToBeConsumed;
                    final int totalVerticalPadding32 = totalVerticalPadding;
                    LazyListMeasureResult measureResult2 = LazyListMeasureKt.m926measureLazyList_s_dbAc(itemsCount, lazyListMeasuredItemProvider, mainAxisAvailableSize, beforeContentPadding, afterContentPadding, spaceBetweenItems, firstVisibleItemIndex22, firstVisibleScrollOffset2, scrollToBeConsumed22, contentConstraints, this.$isVertical, this.$verticalArrangement, this.$horizontalArrangement, this.$reverseLayout, $this$LazyLayoutMeasurePolicy, this.$state.getItemAnimator$foundation(), this.$beyondBoundsItemCount, listCalculateLazyLayoutPinnedIndices2, hasLookaheadOccurred, $this$LazyLayoutMeasurePolicy.isLookingAhead(), this.$coroutineScope, this.$state.m937getPlacementScopeInvalidatorzYiylxw$foundation(), this.$graphicsContext, this.$stickyItemsPlacement, new Function3() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj, Object obj2, Object obj3) {
                            LazyLayoutMeasureScope lazyLayoutMeasureScope = $this$LazyLayoutMeasurePolicy;
                            long j22 = j;
                            return lazyLayoutMeasureScope.layout(ConstraintsKt.m7475constrainWidthK40F9xA(j22, ((Integer) obj).intValue() + totalHorizontalPadding), ConstraintsKt.m7474constrainHeightK40F9xA(j22, ((Integer) obj2).intValue() + totalVerticalPadding32), MapsKt.emptyMap(), (Function1) obj3);
                        }
                    });
                    LazyListState.applyMeasureResult$foundation$default(this.$state, measureResult2, $this$LazyLayoutMeasurePolicy.isLookingAhead(), false, 4, null);
                    Object prefetchStrategy2 = this.$state.getPrefetchStrategy();
                    cacheWindowLogic = prefetchStrategy2 instanceof CacheWindowLogic ? (CacheWindowLogic) prefetchStrategy2 : null;
                    if (cacheWindowLogic != null) {
                        LazyListKt.keepAroundItems(cacheWindowLogic, measureResult2.getVisibleItemsInfo(), lazyListMeasuredItemProvider);
                    }
                    return measureResult2;
                } catch (Throwable th) {
                    th = th;
                    this_$iv.restoreNonObservable(previousSnapshot$iv, newSnapshot$iv, readObserver);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
