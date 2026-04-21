.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
.super Ljava/lang/Object;
.source "LazyStaggeredGridState.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridState.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,670:1\n85#2:671\n117#2,2:672\n85#2:674\n117#2,2:675\n85#2:677\n51#3,4:678\n97#3,4:684\n1863#4,2:682\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridState.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState\n*L\n180#1:671\n180#1:672,2\n183#1:674\n183#1:675,2\n261#1:677\n295#1:678,4\n629#1:684,4\n566#1:682,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\"\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001&\u0008\u0007\u0018\u0000 \u00b2\u00012\u00020\u0001:\u0002\u00b2\u0001B#\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u001d\u0008\u0016\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0007\u0010\u000cJ\u0008\u0010(\u001a\u00020\nH\u0002J\u0015\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008[JK\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0008\u0010\u0083\u0001\u001a\u00030\u0084\u00012.\u0010\u0085\u0001\u001a)\u0008\u0001\u0012\u0005\u0012\u00030\u0087\u0001\u0012\u000c\u0012\n\u0012\u0005\u0012\u00030\u0082\u00010\u0088\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u0089\u00010\u0086\u0001\u00a2\u0006\u0003\u0008\u008a\u0001H\u0096@\u00a2\u0006\u0003\u0010\u008b\u0001J\u0012\u0010\u008d\u0001\u001a\u00020Y2\u0007\u0010\u008e\u0001\u001a\u00020YH\u0002J%\u0010\u008f\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0090\u0001\u001a\u00020\n2\t\u0008\u0002\u0010\u0091\u0001\u001a\u00020\nH\u0086@\u00a2\u0006\u0003\u0010\u0092\u0001J%\u0010\u0093\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0090\u0001\u001a\u00020\n2\t\u0008\u0002\u0010\u0091\u0001\u001a\u00020\nH\u0086@\u00a2\u0006\u0003\u0010\u0092\u0001J\u001e\u0010\u0096\u0001\u001a\u00030\u0082\u00012\t\u0008\u0001\u0010\u0090\u0001\u001a\u00020\n2\t\u0008\u0002\u0010\u0091\u0001\u001a\u00020\nJ+\u0010\u0097\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0090\u0001\u001a\u00020\n2\u0007\u0010\u0091\u0001\u001a\u00020\n2\u0007\u0010\u0098\u0001\u001a\u00020\u000eH\u0000\u00a2\u0006\u0003\u0008\u0099\u0001J\"\u0010\u009a\u0001\u001a\u00020\u00032\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u00012\u0007\u0010\u009d\u0001\u001a\u00020\u0003H\u0000\u00a2\u0006\u0003\u0008\u009e\u0001J\u0012\u0010\u009f\u0001\u001a\u00020Y2\u0007\u0010\u00a0\u0001\u001a\u00020YH\u0016J\u001e\u0010\u00a1\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u00a0\u0001\u001a\u00020Y2\t\u0008\u0002\u0010\u00a2\u0001\u001a\u00020\u0012H\u0002J\u001a\u0010\u00a3\u0001\u001a\u00030\u0082\u00012\u000e\u0010\u00a4\u0001\u001a\t\u0012\u0004\u0012\u00020\n0\u00a5\u0001H\u0002J\u0013\u0010\u00a6\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u00a2\u0001\u001a\u00020 H\u0002J,\u0010\u00a7\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u00a8\u0001\u001a\u00020\u00122\u0006\u0010Z\u001a\u00020\u000e2\t\u0008\u0002\u0010\u00a9\u0001\u001a\u00020\u000eH\u0000\u00a2\u0006\u0003\u0008\u00aa\u0001J\u001a\u0010\u00b0\u0001\u001a\u00020\u00032\u0007\u0010\u00b1\u0001\u001a\u00020\n2\u0006\u0010d\u001a\u00020\nH\u0002R\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\r\u001a\u0004\u0018\u00010\u0012@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u001cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020 8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00120$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\'R\u0014\u0010)\u001a\u00020*X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R+\u0010.\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u000e8V@RX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u0008/\u0010\u0011\"\u0004\u00080\u00101R+\u00104\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u000e8V@RX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00087\u00103\u001a\u0004\u00085\u0010\u0011\"\u0004\u00086\u00101R\u0014\u00108\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010\u0011R\u0014\u0010:\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010\u0011R\u0016\u0010<\u001a\u0004\u0018\u00010=8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?R\"\u0010A\u001a\u0004\u0018\u00010@2\u0008\u0010\r\u001a\u0004\u0018\u00010@@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010CR\u0014\u0010D\u001a\u00020EX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR\u0014\u0010H\u001a\u00020IX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010KR\u0014\u0010L\u001a\u00020MX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010OR\u001a\u0010P\u001a\u00020\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010\u0011\"\u0004\u0008R\u00101R\u0014\u0010S\u001a\u00020TX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010VR\u000e\u0010W\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020YX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\\\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010\u0018\"\u0004\u0008^\u0010_R\u000e\u0010`\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010a\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020c0bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010d\u001a\u00020\n8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010\u0018R\u0011\u0010f\u001a\u00020g8F\u00a2\u0006\u0006\u001a\u0004\u0008h\u0010iR\u0014\u0010j\u001a\u00020kX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008l\u0010mR\u0014\u0010n\u001a\u00020oX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008p\u0010qR\u001a\u0010r\u001a\u0008\u0012\u0004\u0012\u00020t0sX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008u\u0010vR\u001b\u0010w\u001a\u00020x8@X\u0080\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008{\u0010|*\u0004\u0008y\u0010zR\u0017\u0010}\u001a\u00020~X\u0080\u0004\u00a2\u0006\u000b\n\u0002\u00103\u001a\u0005\u0008\u007f\u0010\u0080\u0001R\u0016\u0010\u008c\u0001\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u008c\u0001\u0010\u0011R\u0019\u0010\u0094\u0001\u001a\u00020~X\u0080\u0004\u00a2\u0006\u000c\n\u0002\u00103\u001a\u0006\u0008\u0095\u0001\u0010\u0080\u0001R\u0017\u0010\u00ab\u0001\u001a\u00020Y8@X\u0080\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R\u0010\u0010\u00ae\u0001\u001a\u00030\u00af\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00b3\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "initialFirstVisibleItems",
        "",
        "initialFirstVisibleOffsets",
        "prefetchScheduler",
        "Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;",
        "<init>",
        "([I[ILandroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V",
        "initialFirstVisibleItemIndex",
        "",
        "initialFirstVisibleItemOffset",
        "(II)V",
        "value",
        "",
        "hasLookaheadOccurred",
        "getHasLookaheadOccurred$foundation",
        "()Z",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;",
        "approachLayoutInfo",
        "getApproachLayoutInfo$foundation",
        "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;",
        "firstVisibleItemIndex",
        "getFirstVisibleItemIndex",
        "()I",
        "firstVisibleItemScrollOffset",
        "getFirstVisibleItemScrollOffset",
        "scrollPosition",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;",
        "getScrollPosition$foundation",
        "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;",
        "layoutInfo",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;",
        "getLayoutInfo",
        "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;",
        "layoutInfoState",
        "Landroidx/compose/runtime/MutableState;",
        "_scrollIndicatorState",
        "androidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$_scrollIndicatorState$1",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$_scrollIndicatorState$1;",
        "calculateScrollOffset",
        "laneInfo",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;",
        "getLaneInfo$foundation",
        "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;",
        "<set-?>",
        "canScrollForward",
        "getCanScrollForward",
        "setCanScrollForward",
        "(Z)V",
        "canScrollForward$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "canScrollBackward",
        "getCanScrollBackward",
        "setCanScrollBackward",
        "canScrollBackward$delegate",
        "lastScrolledForward",
        "getLastScrolledForward",
        "lastScrolledBackward",
        "getLastScrolledBackward",
        "scrollIndicatorState",
        "Landroidx/compose/foundation/ScrollIndicatorState;",
        "getScrollIndicatorState",
        "()Landroidx/compose/foundation/ScrollIndicatorState;",
        "Landroidx/compose/ui/layout/Remeasurement;",
        "remeasurement",
        "getRemeasurement$foundation",
        "()Landroidx/compose/ui/layout/Remeasurement;",
        "remeasurementModifier",
        "Landroidx/compose/ui/layout/RemeasurementModifier;",
        "getRemeasurementModifier$foundation",
        "()Landroidx/compose/ui/layout/RemeasurementModifier;",
        "awaitLayoutModifier",
        "Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;",
        "getAwaitLayoutModifier$foundation",
        "()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;",
        "beyondBoundsInfo",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;",
        "getBeyondBoundsInfo$foundation",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;",
        "prefetchingEnabled",
        "getPrefetchingEnabled$foundation",
        "setPrefetchingEnabled$foundation",
        "prefetchState",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "getPrefetchState$foundation",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "scrollableState",
        "scrollToBeConsumed",
        "",
        "isLookingAhead",
        "scrollToBeConsumed$foundation",
        "measurePassCount",
        "getMeasurePassCount$foundation",
        "setMeasurePassCount$foundation",
        "(I)V",
        "prefetchBaseIndex",
        "currentItemPrefetchHandles",
        "",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
        "laneCount",
        "getLaneCount$foundation",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "getInteractionSource",
        "()Landroidx/compose/foundation/interaction/InteractionSource;",
        "mutableInteractionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "getMutableInteractionSource$foundation",
        "()Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "pinnedItems",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;",
        "getPinnedItems$foundation",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;",
        "itemAnimator",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
        "getItemAnimator$foundation",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;",
        "nearestRange",
        "Lkotlin/ranges/IntRange;",
        "getNearestRange$foundation$delegate",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)Ljava/lang/Object;",
        "getNearestRange$foundation",
        "()Lkotlin/ranges/IntRange;",
        "placementScopeInvalidator",
        "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;",
        "getPlacementScopeInvalidator-zYiylxw$foundation",
        "()Landroidx/compose/runtime/MutableState;",
        "scroll",
        "",
        "scrollPriority",
        "Landroidx/compose/foundation/MutatePriority;",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isScrollInProgress",
        "onScroll",
        "distance",
        "scrollToItem",
        "index",
        "scrollOffset",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "animateScrollToItem",
        "measurementScopeInvalidator",
        "getMeasurementScopeInvalidator-zYiylxw$foundation",
        "requestScrollToItem",
        "snapToItemInternal",
        "forceRemeasure",
        "snapToItemInternal$foundation",
        "updateScrollPositionIfTheFirstItemWasMoved",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
        "firstItemIndex",
        "updateScrollPositionIfTheFirstItemWasMoved$foundation",
        "dispatchRawDelta",
        "delta",
        "notifyPrefetch",
        "info",
        "clearLeftoverPrefetchHandles",
        "prefetchHandlesUsed",
        "",
        "cancelPrefetchIfVisibleItemsChanged",
        "applyMeasureResult",
        "result",
        "visibleItemsStayedTheSame",
        "applyMeasureResult$foundation",
        "scrollDeltaBetweenPasses",
        "getScrollDeltaBetweenPasses$foundation",
        "()F",
        "_lazyLayoutScrollDeltaBetweenPasses",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;",
        "fillNearestIndices",
        "itemIndex",
        "Companion",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;

.field private static final Saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _lazyLayoutScrollDeltaBetweenPasses:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

.field private final _scrollIndicatorState:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$_scrollIndicatorState$1;

.field private approachLayoutInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

.field private final awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

.field private final beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

.field private final canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

.field private final canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

.field private final currentItemPrefetchHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
            ">;"
        }
    .end annotation
.end field

.field private hasLookaheadOccurred:Z

.field private final itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final laneInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

.field private final layoutInfoState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;",
            ">;"
        }
    .end annotation
.end field

.field private measurePassCount:I

.field private final measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final mutableInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

.field private final placementScopeInvalidator:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private prefetchBaseIndex:I

.field private final prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field private prefetchingEnabled:Z

.field private remeasurement:Landroidx/compose/ui/layout/Remeasurement;

.field private final remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

.field private final scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

.field private scrollToBeConsumed:F

.field private final scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->Companion:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;

    .line 662
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "initialFirstVisibleItemIndex"    # I
    .param p2, "initialFirstVisibleItemOffset"    # I

    .line 104
    nop

    .line 105
    filled-new-array {p1}, [I

    move-result-object v0

    .line 106
    filled-new-array {p2}, [I

    move-result-object v1

    .line 107
    nop

    .line 104
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;-><init>([I[ILandroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V

    .line 108
    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 101
    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 102
    move p1, v0

    .line 101
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 103
    move p2, v0

    .line 101
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;-><init>(II)V

    .line 108
    return-void
.end method

.method public constructor <init>([I[ILandroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V
    .locals 4
    .param p1, "initialFirstVisibleItems"    # [I
    .param p2, "initialFirstVisibleOffsets"    # [I
    .param p3, "prefetchScheduler"    # Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    .line 139
    nop

    .line 140
    nop

    .line 141
    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollPosition$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollPosition$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 138
    invoke-direct {v0, p1, p2, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;-><init>([I[ILkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    .line 156
    invoke-static {}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResultKt;->getEmptyLazyStaggeredGridLayoutInfo()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 159
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$_scrollIndicatorState$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$_scrollIndicatorState$1;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->_scrollIndicatorState:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$_scrollIndicatorState$1;

    .line 178
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    .line 180
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

    .line 183
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

    .line 201
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$remeasurementModifier$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V

    check-cast v0, Landroidx/compose/ui/layout/RemeasurementModifier;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    .line 211
    new-instance v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 213
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchingEnabled:Z

    .line 220
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-direct {v3, p3, v1, v2, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>(Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 223
    new-instance v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V

    invoke-static {v2}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->ScrollableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 239
    const/4 v2, -0x1

    iput v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchBaseIndex:I

    .line 240
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    iput-object v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->currentItemPrefetchHandles:Ljava/util/Map;

    .line 254
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->mutableInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 257
    new-instance v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    invoke-direct {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;-><init>()V

    iput-object v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 259
    new-instance v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-direct {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;-><init>()V

    iput-object v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 261
    iget-object v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 263
    invoke-static {v1, v0, v1}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->constructor-impl$default(Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 396
    invoke-static {v1, v0, v1}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->constructor-impl$default(Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 611
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->_lazyLayoutScrollDeltaBetweenPasses:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    .line 92
    return-void
.end method

.method static final Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)Ljava/util/List;
    .locals 2
    .param p0, "$this$listSaver"    # Landroidx/compose/runtime/saveable/SaverScope;
    .param p1, "state"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 664
    iget-object v0, p1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getIndices()[I

    move-result-object v0

    iget-object v1, p1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getScrollOffsets()[I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static final Saver$lambda$1(Ljava/util/List;)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .locals 4
    .param p0, "it"    # Ljava/util/List;

    .line 666
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;-><init>([I[ILandroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V

    return-object v0
.end method

.method public static final synthetic access$calculateScrollOffset(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 89
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->calculateScrollOffset()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$fillNearestIndices(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;II)[I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .param p1, "itemIndex"    # I
    .param p2, "laneCount"    # I

    .line 89
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->fillNearestIndices(II)[I

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSaver$cp()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 89
    sget-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final synthetic access$setRemeasurement$p(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/ui/layout/Remeasurement;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .param p1, "<set-?>"    # Landroidx/compose/ui/layout/Remeasurement;

    .line 89
    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    return-void
.end method

.method public static synthetic animateScrollToItem$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 383
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 386
    const/4 p2, 0x0

    .line 383
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->animateScrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic applyMeasureResult$foundation$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;ZZILjava/lang/Object;)V
    .locals 0

    .line 573
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 576
    const/4 p3, 0x0

    .line 573
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;ZZ)V

    return-void
.end method

.method private final calculateScrollOffset()I
    .locals 3

    .line 171
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;

    move-result-object v0

    .line 172
    .local v0, "info":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;->getTotalItemsCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 173
    :cond_0
    invoke-static {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResultKt;->visibleItemsAverageSize(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getFirstVisibleItemIndex()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getLaneCount$foundation()I

    move-result v2

    div-int/2addr v1, v2

    .line 174
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getFirstVisibleItemScrollOffset()I

    move-result v2

    .line 173
    add-int/2addr v1, v2

    return v1
.end method

.method private final cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;)V
    .locals 7
    .param p1, "info"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;

    .line 562
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    .line 563
    .local v0, "items":Ljava/util/List;
    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchBaseIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 564
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result v3

    iget v4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchBaseIndex:I

    const/4 v5, 0x0

    if-gt v1, v4, :cond_0

    if-gt v4, v3, :cond_0

    const/4 v5, 0x1

    :cond_0
    if-nez v5, :cond_2

    .line 565
    iput v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchBaseIndex:I

    .line 566
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->currentItemPrefetchHandles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 682
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .local v5, "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    const/4 v6, 0x0

    .line 566
    .local v6, "$i$a$-forEach-LazyStaggeredGridState$cancelPrefetchIfVisibleItemsChanged$1":I
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 682
    .end local v5    # "it":Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    .end local v6    # "$i$a$-forEach-LazyStaggeredGridState$cancelPrefetchIfVisibleItemsChanged$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 683
    :cond_1
    nop

    .line 567
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->currentItemPrefetchHandles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 570
    :cond_2
    return-void
.end method

.method private final clearLeftoverPrefetchHandles(Ljava/util/Set;)V
    .locals 3
    .param p1, "prefetchHandlesUsed"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->currentItemPrefetchHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 552
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 554
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 555
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 556
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 559
    :cond_1
    return-void
.end method

.method private final fillNearestIndices(II)[I
    .locals 8
    .param p1, "itemIndex"    # I
    .param p2, "laneCount"    # I

    .line 614
    new-array v0, p2, [I

    .line 615
    .local v0, "indices":[I
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getSpanProvider()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;->isFullSpan(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    .end local p1    # "itemIndex":I
    .local v1, "itemIndex":I
    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    .line 617
    .end local v1    # "itemIndex":I
    .restart local p1    # "itemIndex":I
    return-object v0

    .line 621
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->ensureValidIndex(I)V

    .line 623
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    invoke-virtual {v1, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->getLane(I)I

    move-result v1

    .local v1, "previousLane":I
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 629
    if-ltz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 626
    :pswitch_0
    goto :goto_1

    .line 629
    .local v2, "value$iv":Z
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 684
    .local v3, "$i$f$requirePrecondition":I
    if-nez v2, :cond_2

    .line 685
    const/4 v4, 0x0

    .line 630
    .local v4, "$i$a$-requirePrecondition-LazyStaggeredGridState$fillNearestIndices$targetLaneIndex$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected positive lane number, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " instead."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 685
    .end local v4    # "$i$a$-requirePrecondition-LazyStaggeredGridState$fillNearestIndices$targetLaneIndex$1":I
    invoke-static {v4}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 687
    :cond_2
    nop

    .line 632
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$requirePrecondition":I
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 623
    .end local v1    # "previousLane":I
    :goto_1
    nop

    .line 622
    move v6, v2

    .line 637
    .local v6, "targetLaneIndex":I
    move v1, p1

    .line 638
    .local v1, "currentItemIndex":I
    add-int/lit8 v2, v6, -0x1

    move v7, v1

    move v3, v2

    .end local v1    # "currentItemIndex":I
    .local v3, "lane":I
    .local v7, "currentItemIndex":I
    :goto_2
    const/4 v1, -0x1

    if-ge v1, v3, :cond_4

    .line 639
    iget-object v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    invoke-virtual {v2, v7, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->findPreviousItemIndex(II)I

    move-result v2

    aput v2, v0, v3

    .line 640
    aget v2, v0, v3

    if-ne v2, v1, :cond_3

    .line 641
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    .line 642
    goto :goto_3

    .line 644
    :cond_3
    aget v7, v0, v3

    .line 638
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 647
    .end local v3    # "lane":I
    :cond_4
    :goto_3
    aput p1, v0, v6

    .line 650
    move v1, p1

    .line 651
    .end local v7    # "currentItemIndex":I
    .restart local v1    # "currentItemIndex":I
    add-int/lit8 v2, v6, 0x1

    .local v2, "lane":I
    :goto_4
    if-ge v2, p2, :cond_5

    .line 652
    iget-object v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    invoke-virtual {v3, v1, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->findNextItemIndex(II)I

    move-result v3

    aput v3, v0, v2

    .line 653
    aget v1, v0, v2

    .line 651
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 656
    .end local v2    # "lane":I
    :cond_5
    return-object v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getNearestRange$foundation$delegate(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)Ljava/lang/Object;
    .locals 1
    .param p0, "<this>"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 261
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    move-result-object v0

    return-object v0
.end method

.method private final notifyPrefetch(FLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;)V
    .locals 21
    .param p1, "delta"    # F
    .param p2, "info"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 475
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchingEnabled:Z

    if-eqz v1, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 476
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 479
    .local v1, "scrollingForward":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getIndex()I

    move-result v4

    goto :goto_1

    .line 482
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getIndex()I

    move-result v4

    .line 479
    :goto_1
    nop

    .line 478
    nop

    .line 485
    .local v4, "prefetchIndex":I
    iget v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchBaseIndex:I

    if-ne v4, v5, :cond_2

    .line 487
    return-void

    .line 489
    :cond_2
    iput v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchBaseIndex:I

    .line 491
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v5, Ljava/util/Set;

    .line 492
    .local v5, "prefetchHandlesUsed":Ljava/util/Set;
    move v6, v4

    .line 493
    .local v6, "targetIndex":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getSlots()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    move-result-object v7

    .line 494
    .local v7, "slots":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->getSizes()[I

    move-result-object v8

    array-length v8, v8

    .line 495
    .local v8, "laneCount":I
    const/4 v9, 0x0

    .local v9, "lane":I
    :goto_2
    if-ge v9, v8, :cond_c

    .line 496
    move v10, v6

    .line 500
    .local v10, "previousIndex":I
    nop

    .line 503
    iget-object v11, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    .line 500
    if-eqz v1, :cond_3

    .line 501
    invoke-virtual {v11, v10, v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->findNextItemIndex(II)I

    move-result v11

    goto :goto_3

    .line 503
    :cond_3
    invoke-virtual {v11, v10, v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->findPreviousItemIndex(II)I

    move-result v11

    .line 499
    :goto_3
    move v13, v11

    .line 505
    .end local v6    # "targetIndex":I
    .local v13, "targetIndex":I
    nop

    .line 506
    if-ltz v13, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getTotalItemsCount()I

    move-result v6

    if-ge v13, v6, :cond_4

    move v6, v3

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_b

    .line 507
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_a

    .line 512
    :cond_5
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->currentItemPrefetchHandles:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 514
    goto/16 :goto_9

    .line 517
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getSpanProvider()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;->isFullSpan(I)Z

    move-result v6

    .line 518
    .local v6, "isFullSpan":Z
    if-eqz v6, :cond_7

    const/4 v11, 0x0

    goto :goto_5

    :cond_7
    move v11, v9

    .line 519
    .local v11, "slot":I
    :goto_5
    if-eqz v6, :cond_8

    move v12, v8

    goto :goto_6

    :cond_8
    move v12, v3

    .line 522
    .local v12, "span":I
    :goto_6
    nop

    .line 523
    if-ne v12, v3, :cond_9

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->getSizes()[I

    move-result-object v14

    aget v14, v14, v11

    goto :goto_7

    .line 525
    :cond_9
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->getPositions()[I

    move-result-object v14

    aget v14, v14, v11

    .line 526
    .local v14, "start":I
    add-int v15, v11, v12

    sub-int/2addr v15, v3

    .line 527
    .local v15, "endSlot":I
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->getPositions()[I

    move-result-object v16

    aget v16, v16, v15

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->getSizes()[I

    move-result-object v17

    aget v17, v17, v15

    add-int v16, v16, v17

    .line 528
    .local v16, "end":I
    sub-int v17, v16, v14

    move/from16 v14, v17

    .line 522
    .end local v14    # "start":I
    .end local v15    # "endSlot":I
    .end local v16    # "end":I
    :goto_7
    nop

    .line 521
    nop

    .line 533
    .local v14, "crossAxisSize":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v15

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v15, v2, :cond_a

    .line 534
    sget-object v2, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v2, v14}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedWidth-OenEA2s(I)J

    move-result-wide v15

    goto :goto_8

    .line 536
    :cond_a
    sget-object v2, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v2, v14}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedHeight-OenEA2s(I)J

    move-result-wide v15

    .line 533
    :goto_8
    nop

    .line 532
    nop

    .line 539
    .local v15, "constraints":J
    iget-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->currentItemPrefetchHandles:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 540
    move/from16 v17, v12

    .end local v12    # "span":I
    .local v17, "span":I
    iget-object v12, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 541
    nop

    .line 542
    nop

    .line 540
    move/from16 v18, v17

    .end local v17    # "span":I
    .local v18, "span":I
    const/16 v17, 0x4

    move/from16 v19, v18

    .end local v18    # "span":I
    .local v19, "span":I
    const/16 v18, 0x0

    move/from16 v20, v14

    move-wide v14, v15

    .end local v15    # "constraints":J
    .local v14, "constraints":J
    .local v20, "crossAxisSize":I
    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrecompositionAndPremeasure-VKLhPVY$default(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;IJLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object v12

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .end local v6    # "isFullSpan":Z
    .end local v10    # "previousIndex":I
    .end local v11    # "slot":I
    .end local v14    # "constraints":J
    .end local v19    # "span":I
    .end local v20    # "crossAxisSize":I
    :goto_9
    add-int/lit8 v9, v9, 0x1

    move v6, v13

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 509
    .restart local v10    # "previousIndex":I
    :cond_b
    :goto_a
    move v6, v13

    .line 546
    .end local v9    # "lane":I
    .end local v10    # "previousIndex":I
    .end local v13    # "targetIndex":I
    .local v6, "targetIndex":I
    :cond_c
    invoke-direct {v0, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->clearLeftoverPrefetchHandles(Ljava/util/Set;)V

    .line 548
    .end local v1    # "scrollingForward":Z
    .end local v4    # "prefetchIndex":I
    .end local v5    # "prefetchHandlesUsed":Ljava/util/Set;
    .end local v6    # "targetIndex":I
    .end local v7    # "slots":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;
    .end local v8    # "laneCount":I
    :cond_d
    return-void
.end method

.method static synthetic notifyPrefetch$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;FLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;ILjava/lang/Object;)V
    .locals 0

    .line 471
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 473
    iget-object p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {p2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 471
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->notifyPrefetch(FLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;)V

    return-void
.end method

.method private final onScroll(F)F
    .locals 8
    .param p1, "distance"    # F

    .line 292
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getCanScrollForward()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getCanScrollBackward()Z

    move-result v1

    if-nez v1, :cond_2

    .line 293
    :cond_1
    return v0

    .line 295
    :cond_2
    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    const/4 v3, 0x1

    if-gtz v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .local v1, "value$iv":Z
    :goto_0
    const/4 v4, 0x0

    .line 678
    .local v4, "$i$f$checkPrecondition":I
    if-nez v1, :cond_4

    .line 679
    const/4 v5, 0x0

    .line 296
    .local v5, "$i$a$-checkPrecondition-LazyStaggeredGridState$onScroll$1":I
    nop

    .line 679
    .end local v5    # "$i$a$-checkPrecondition-LazyStaggeredGridState$onScroll$1":I
    const-string/jumbo v5, "entered drag with non-zero pending scroll"

    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 681
    :cond_4
    nop

    .line 298
    .end local v1    # "value$iv":Z
    .end local v4    # "$i$f$checkPrecondition":I
    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    add-float/2addr v1, p1

    iput v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 303
    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    .line 304
    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 305
    .local v1, "preScrollToBeConsumed":F
    iget v4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    .line 307
    .local v4, "intDelta":I
    iget-object v5, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 308
    nop

    .line 309
    iget-boolean v6, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->hasLookaheadOccurred:Z

    .line 307
    xor-int/2addr v6, v3

    invoke-virtual {v5, v4, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v5

    .line 306
    nop

    .line 311
    .local v5, "scrolledLayoutInfo":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-object v7, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    if-eqz v7, :cond_7

    .line 315
    iget-object v7, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    if-eqz v7, :cond_5

    .line 316
    nop

    .line 317
    nop

    .line 315
    invoke-virtual {v7, v4, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v7

    goto :goto_1

    :cond_5
    move-object v7, v6

    .line 314
    :goto_1
    nop

    .line 319
    .local v7, "scrolledApproachLayoutInfo":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
    if-eqz v7, :cond_6

    .line 321
    iput-object v7, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    goto :goto_2

    .line 324
    :cond_6
    const/4 v5, 0x0

    .line 327
    .end local v7    # "scrolledApproachLayoutInfo":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    .line 328
    nop

    .line 329
    nop

    .line 330
    iget-boolean v6, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->hasLookaheadOccurred:Z

    .line 331
    nop

    .line 328
    invoke-virtual {p0, v5, v6, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;ZZ)V

    .line 334
    iget-object v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->invalidateScope-impl(Landroidx/compose/runtime/MutableState;)V

    .line 336
    iget v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    sub-float v3, v1, v3

    invoke-direct {p0, v3, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->notifyPrefetch(FLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;)V

    goto :goto_3

    .line 338
    :cond_8
    iget-object v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    .line 340
    :cond_9
    iget v3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    sub-float v3, v1, v3

    const/4 v7, 0x2

    invoke-static {p0, v3, v6, v7, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->notifyPrefetch$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;FLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;ILjava/lang/Object;)V

    .line 345
    .end local v1    # "preScrollToBeConsumed":F
    .end local v4    # "intDelta":I
    .end local v5    # "scrolledLayoutInfo":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
    :cond_a
    :goto_3
    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b

    .line 348
    return p1

    .line 350
    :cond_b
    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    sub-float v1, p1, v1

    .line 353
    .local v1, "scrollConsumed":F
    iput v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 354
    return v1
.end method

.method public static synthetic requestScrollToItem$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;IIILjava/lang/Object;)V
    .locals 0

    .line 413
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->requestScrollToItem(II)V

    return-void
.end method

.method public static synthetic scrollToItem$default(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 367
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 370
    const/4 p2, 0x0

    .line 367
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static final scrollableState$lambda$0(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;F)F
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .param p1, "it"    # F

    .line 223
    neg-float v0, p1

    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->onScroll(F)F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method private setCanScrollBackward(Z)V
    .locals 5
    .param p1, "<set-?>"    # Z

    .line 183
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 675
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 676
    nop

    .line 183
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private setCanScrollForward(Z)V
    .locals 5
    .param p1, "<set-?>"    # Z

    .line 180
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 672
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 673
    nop

    .line 180
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method


# virtual methods
.method public final animateScrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p1, "index"    # I
    .param p2, "scrollOffset"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 389
    .local v5, "layoutInfo":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getSlots()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->getSizes()[I

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v4, v0, 0x64

    .line 390
    .local v4, "numOfItemsToTeleport":I
    move-object v7, p0

    check-cast v7, Landroidx/compose/foundation/gestures/ScrollableState;

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$animateScrollToItem$2;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$animateScrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;IIILandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;Lkotlin/coroutines/Continuation;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, v7

    const/4 v7, 0x0

    move-object v9, p3

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll$default(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 394
    return-object v0
.end method

.method public final applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;ZZ)V
    .locals 5
    .param p1, "result"    # Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
    .param p2, "isLookingAhead"    # Z
    .param p3, "visibleItemsStayedTheSame"    # Z

    .line 578
    if-nez p2, :cond_0

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->hasLookaheadOccurred:Z

    if-eqz v0, :cond_0

    .line 580
    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    goto :goto_1

    .line 582
    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 583
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->hasLookaheadOccurred:Z

    .line 585
    :cond_1
    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getConsumedScroll()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 586
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 588
    nop

    .line 591
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    .line 588
    if-eqz p3, :cond_2

    .line 589
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getFirstVisibleItemScrollOffsets()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->updateScrollOffset([I)V

    goto :goto_0

    .line 591
    :cond_2
    invoke-virtual {v1, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->updateFromMeasureResult(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;)V

    .line 592
    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;

    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;)V

    .line 594
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getCanScrollBackward()Z

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->setCanScrollBackward(Z)V

    .line 595
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getCanScrollForward()Z

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->setCanScrollForward(Z)V

    .line 597
    if-eqz p2, :cond_3

    .line 598
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->_lazyLayoutScrollDeltaBetweenPasses:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    .line 599
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getScrollBackAmount()F

    move-result v2

    .line 600
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    .line 601
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 598
    invoke-virtual {v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->updateScrollDeltaForApproach$foundation(FLandroidx/compose/ui/unit/Density;Lkotlinx/coroutines/CoroutineScope;)V

    .line 604
    :cond_3
    iget v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->measurePassCount:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->measurePassCount:I

    .line 606
    :goto_1
    return-void
.end method

.method public dispatchRawDelta(F)F
    .locals 1
    .param p1, "delta"    # F

    .line 468
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v0, p1}, Landroidx/compose/foundation/gestures/ScrollableState;->dispatchRawDelta(F)F

    move-result v0

    return v0
.end method

.method public final getApproachLayoutInfo$foundation()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    return-object v0
.end method

.method public final getAwaitLayoutModifier$foundation()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    return-object v0
.end method

.method public final getBeyondBoundsInfo$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;
    .locals 1

    .line 213
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    return-object v0
.end method

.method public getCanScrollBackward()Z
    .locals 4

    .line 183
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 674
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 183
    return v0
.end method

.method public getCanScrollForward()Z
    .locals 4

    .line 180
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 671
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 180
    return v0
.end method

.method public final getFirstVisibleItemIndex()I
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getIndex()I

    move-result v0

    return v0
.end method

.method public final getFirstVisibleItemScrollOffset()I
    .locals 1

    .line 134
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getScrollOffset()I

    move-result v0

    return v0
.end method

.method public final getHasLookaheadOccurred$foundation()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->hasLookaheadOccurred:Z

    return v0
.end method

.method public final getInteractionSource()Landroidx/compose/foundation/interaction/InteractionSource;
    .locals 1

    .line 251
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->mutableInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    check-cast v0, Landroidx/compose/foundation/interaction/InteractionSource;

    return-object v0
.end method

.method public final getItemAnimator$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    return-object v0
.end method

.method public final getLaneCount$foundation()I
    .locals 1

    .line 243
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getSlots()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;->getSizes()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getLaneInfo$foundation()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->laneInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    return-object v0
.end method

.method public getLastScrolledBackward()Z
    .locals 1

    .line 192
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->getLastScrolledBackward()Z

    move-result v0

    return v0
.end method

.method public getLastScrolledForward()Z
    .locals 1

    .line 188
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->getLastScrolledForward()Z

    move-result v0

    return v0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;

    return-object v0
.end method

.method public final getMeasurePassCount$foundation()I
    .locals 1

    .line 236
    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->measurePassCount:I

    return v0
.end method

.method public final getMeasurementScopeInvalidator-zYiylxw$foundation()Landroidx/compose/runtime/MutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    return-object v0
.end method

.method public final getMutableInteractionSource$foundation()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 1

    .line 254
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->mutableInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object v0
.end method

.method public final getNearestRange$foundation()Lkotlin/ranges/IntRange;
    .locals 4

    .line 261
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 677
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lkotlin/ranges/IntRange;

    .line 261
    return-object v0
.end method

.method public final getPinnedItems$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;
    .locals 1

    .line 257
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    return-object v0
.end method

.method public final getPlacementScopeInvalidator-zYiylxw$foundation()Landroidx/compose/runtime/MutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    return-object v0
.end method

.method public final getPrefetchState$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .locals 1

    .line 220
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    return-object v0
.end method

.method public final getPrefetchingEnabled$foundation()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchingEnabled:Z

    return v0
.end method

.method public final getRemeasurement$foundation()Landroidx/compose/ui/layout/Remeasurement;
    .locals 1

    .line 197
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    return-object v0
.end method

.method public final getRemeasurementModifier$foundation()Landroidx/compose/ui/layout/RemeasurementModifier;
    .locals 1

    .line 200
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    return-object v0
.end method

.method public final getScrollDeltaBetweenPasses$foundation()F
    .locals 1

    .line 609
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->_lazyLayoutScrollDeltaBetweenPasses:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->getScrollDeltaBetweenPasses$foundation()F

    move-result v0

    return v0
.end method

.method public getScrollIndicatorState()Landroidx/compose/foundation/ScrollIndicatorState;
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->_scrollIndicatorState:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$_scrollIndicatorState$1;

    check-cast v0, Landroidx/compose/foundation/ScrollIndicatorState;

    return-object v0
.end method

.method public final getScrollPosition$foundation()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;
    .locals 1

    .line 137
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    return-object v0
.end method

.method public isScrollInProgress()Z
    .locals 1

    .line 288
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->isScrollInProgress()Z

    move-result v0

    return v0
.end method

.method public final requestScrollToItem(II)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "scrollOffset"    # I

    .line 415
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->isScrollInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$requestScrollToItem$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$requestScrollToItem$1;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 419
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->snapToItemInternal$foundation(IIZ)V

    .line 420
    return-void
.end method

.method public scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;

    iget v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 273
    iget v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    move-object p1, p0

    .local p1, "this":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    iget-object p2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function2;

    .local p2, "block":Lkotlin/jvm/functions/Function2;
    iget-object v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/MutatePriority;

    .local v3, "scrollPriority":Landroidx/compose/foundation/MutatePriority;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "scrollPriority":Landroidx/compose/foundation/MutatePriority;
    .end local p1    # "this":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local p2    # "block":Lkotlin/jvm/functions/Function2;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 277
    .local v3, "this":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local p1, "scrollPriority":Landroidx/compose/foundation/MutatePriority;
    .restart local p2    # "block":Lkotlin/jvm/functions/Function2;
    iget-object v4, v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v4}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResultKt;->getEmptyLazyStaggeredGridLayoutInfo()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 278
    iget-object v4, v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    iput-object p1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;->label:I

    invoke-virtual {v4, v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->waitForFirstLayout(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 273
    .end local v3    # "this":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    return-object v2

    .line 278
    .restart local v3    # "this":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    :cond_1
    move-object v6, v3

    move-object v3, p1

    move-object p1, v6

    .line 280
    .local v3, "scrollPriority":Landroidx/compose/foundation/MutatePriority;
    .local p1, "this":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    :goto_1
    move-object v6, v3

    move-object v3, p1

    move-object p1, v6

    .local v3, "this":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .local p1, "scrollPriority":Landroidx/compose/foundation/MutatePriority;
    :cond_2
    iget-object v4, v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 v5, 0x0

    iput-object v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scroll$1;->label:I

    invoke-interface {v4, p1, p2, v0}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v3    # "this":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .end local p1    # "scrollPriority":Landroidx/compose/foundation/MutatePriority;
    .end local p2    # "block":Lkotlin/jvm/functions/Function2;
    if-ne p1, v2, :cond_3

    .line 273
    return-object v2

    .line 281
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final scrollToBeConsumed$foundation(Z)F
    .locals 1
    .param p1, "isLookingAhead"    # Z

    .line 229
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->hasLookaheadOccurred:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getScrollDeltaBetweenPasses$foundation()F

    move-result v0

    goto :goto_1

    .line 230
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 233
    :goto_1
    return v0
.end method

.method public final scrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .param p2, "scrollOffset"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 372
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableState;

    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollToItem$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$scrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;IILkotlin/coroutines/Continuation;)V

    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v3, p3

    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "$completion":Lkotlin/coroutines/Continuation;
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll$default(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_0

    return-object p3

    :cond_0
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 373
    return-object p3
.end method

.method public final setMeasurePassCount$foundation(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 236
    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->measurePassCount:I

    return-void
.end method

.method public final setPrefetchingEnabled$foundation(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 217
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->prefetchingEnabled:Z

    return-void
.end method

.method public final snapToItemInternal$foundation(IIZ)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "scrollOffset"    # I
    .param p3, "forceRemeasure"    # Z

    .line 424
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getIndex()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getScrollOffset()I

    move-result v0

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 423
    :goto_1
    nop

    .line 433
    .local v0, "positionChanged":Z
    if-eqz v0, :cond_2

    .line 434
    iget-object v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->reset()V

    .line 436
    :cond_2
    iget-object v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 437
    .local v2, "layoutInfo":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
    move-object v3, v2

    check-cast v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;

    invoke-static {v3, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResultKt;->findVisibleItem(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;I)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    move-result-object v3

    .line 438
    .local v3, "visibleItem":Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 440
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v4

    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v4, v5, :cond_3

    .line 441
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getOffset-nOcc-ac()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    goto :goto_2

    .line 443
    :cond_3
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getOffset-nOcc-ac()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    .line 440
    :goto_2
    nop

    .line 439
    nop

    .line 445
    .local v4, "currentOffset":I
    add-int v5, v4, p2

    .line 447
    .local v5, "delta":I
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getFirstVisibleItemScrollOffsets()[I

    move-result-object v6

    array-length v6, v6

    new-array v7, v6, [I

    :goto_3
    if-ge v1, v6, :cond_4

    .line 448
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getFirstVisibleItemScrollOffsets()[I

    move-result-object v8

    aget v8, v8, v1

    add-int/2addr v8, v5

    aput v8, v7, v1

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 446
    :cond_4
    nop

    .line 450
    .local v7, "offsets":[I
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    invoke-virtual {v1, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->updateScrollOffset([I)V

    .end local v4    # "currentOffset":I
    .end local v5    # "delta":I
    .end local v7    # "offsets":[I
    goto :goto_4

    .line 452
    :cond_5
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    invoke-virtual {v1, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->requestPositionAndForgetLastKnownKey(II)V

    .line 454
    :goto_4
    if-eqz p3, :cond_6

    .line 455
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    goto :goto_5

    .line 457
    :cond_6
    iget-object v1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->invalidateScope-impl(Landroidx/compose/runtime/MutableState;)V

    .line 459
    :cond_7
    :goto_5
    return-void
.end method

.method public final updateScrollPositionIfTheFirstItemWasMoved$foundation(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;[I)[I
    .locals 1
    .param p1, "itemProvider"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;
    .param p2, "firstItemIndex"    # [I

    .line 466
    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->updateScrollPositionIfTheFirstItemWasMoved(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;[I)[I

    move-result-object v0

    return-object v0
.end method
