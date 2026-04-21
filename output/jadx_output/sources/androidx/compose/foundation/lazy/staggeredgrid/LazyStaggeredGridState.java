package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.ScrollIndicatorState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollDeltaBetweenPasses;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScopeKt;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.lazy.layout.PrefetchScheduler;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import com.google.firebase.firestore.model.Values;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LazyStaggeredGridState.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\"\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001&\b\u0007\u0018\u0000 ²\u00012\u00020\u0001:\u0002²\u0001B#\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bB\u001d\b\u0016\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0007\u0010\fJ\b\u0010(\u001a\u00020\nH\u0002J\u0015\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020\u000eH\u0000¢\u0006\u0002\b[JK\u0010\u0081\u0001\u001a\u00030\u0082\u00012\b\u0010\u0083\u0001\u001a\u00030\u0084\u00012.\u0010\u0085\u0001\u001a)\b\u0001\u0012\u0005\u0012\u00030\u0087\u0001\u0012\f\u0012\n\u0012\u0005\u0012\u00030\u0082\u00010\u0088\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u0089\u00010\u0086\u0001¢\u0006\u0003\b\u008a\u0001H\u0096@¢\u0006\u0003\u0010\u008b\u0001J\u0012\u0010\u008d\u0001\u001a\u00020Y2\u0007\u0010\u008e\u0001\u001a\u00020YH\u0002J%\u0010\u008f\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0090\u0001\u001a\u00020\n2\t\b\u0002\u0010\u0091\u0001\u001a\u00020\nH\u0086@¢\u0006\u0003\u0010\u0092\u0001J%\u0010\u0093\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0090\u0001\u001a\u00020\n2\t\b\u0002\u0010\u0091\u0001\u001a\u00020\nH\u0086@¢\u0006\u0003\u0010\u0092\u0001J\u001e\u0010\u0096\u0001\u001a\u00030\u0082\u00012\t\b\u0001\u0010\u0090\u0001\u001a\u00020\n2\t\b\u0002\u0010\u0091\u0001\u001a\u00020\nJ+\u0010\u0097\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0090\u0001\u001a\u00020\n2\u0007\u0010\u0091\u0001\u001a\u00020\n2\u0007\u0010\u0098\u0001\u001a\u00020\u000eH\u0000¢\u0006\u0003\b\u0099\u0001J\"\u0010\u009a\u0001\u001a\u00020\u00032\b\u0010\u009b\u0001\u001a\u00030\u009c\u00012\u0007\u0010\u009d\u0001\u001a\u00020\u0003H\u0000¢\u0006\u0003\b\u009e\u0001J\u0012\u0010\u009f\u0001\u001a\u00020Y2\u0007\u0010 \u0001\u001a\u00020YH\u0016J\u001e\u0010¡\u0001\u001a\u00030\u0082\u00012\u0007\u0010 \u0001\u001a\u00020Y2\t\b\u0002\u0010¢\u0001\u001a\u00020\u0012H\u0002J\u001a\u0010£\u0001\u001a\u00030\u0082\u00012\u000e\u0010¤\u0001\u001a\t\u0012\u0004\u0012\u00020\n0¥\u0001H\u0002J\u0013\u0010¦\u0001\u001a\u00030\u0082\u00012\u0007\u0010¢\u0001\u001a\u00020 H\u0002J,\u0010§\u0001\u001a\u00030\u0082\u00012\u0007\u0010¨\u0001\u001a\u00020\u00122\u0006\u0010Z\u001a\u00020\u000e2\t\b\u0002\u0010©\u0001\u001a\u00020\u000eH\u0000¢\u0006\u0003\bª\u0001J\u001a\u0010°\u0001\u001a\u00020\u00032\u0007\u0010±\u0001\u001a\u00020\n2\u0006\u0010d\u001a\u00020\nH\u0002R\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\"\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\r\u001a\u0004\u0018\u00010\u0012@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u001cX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020 8F¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00120$X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u00020&X\u0082\u0004¢\u0006\u0004\n\u0002\u0010'R\u0014\u0010)\u001a\u00020*X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R+\u0010.\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u000e8V@RX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b/\u0010\u0011\"\u0004\b0\u00101R+\u00104\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u000e8V@RX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b7\u00103\u001a\u0004\b5\u0010\u0011\"\u0004\b6\u00101R\u0014\u00108\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010\u0011R\u0014\u0010:\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b;\u0010\u0011R\u0016\u0010<\u001a\u0004\u0018\u00010=8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?R\"\u0010A\u001a\u0004\u0018\u00010@2\b\u0010\r\u001a\u0004\u0018\u00010@@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\bB\u0010CR\u0014\u0010D\u001a\u00020EX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bF\u0010GR\u0014\u0010H\u001a\u00020IX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010KR\u0014\u0010L\u001a\u00020MX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bN\u0010OR\u001a\u0010P\u001a\u00020\u000eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010\u0011\"\u0004\bR\u00101R\u0014\u0010S\u001a\u00020TX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bU\u0010VR\u000e\u0010W\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020YX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\\\u001a\u00020\nX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010\u0018\"\u0004\b^\u0010_R\u000e\u0010`\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010a\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020c0bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010d\u001a\u00020\n8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\be\u0010\u0018R\u0011\u0010f\u001a\u00020g8F¢\u0006\u0006\u001a\u0004\bh\u0010iR\u0014\u0010j\u001a\u00020kX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bl\u0010mR\u0014\u0010n\u001a\u00020oX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bp\u0010qR\u001a\u0010r\u001a\b\u0012\u0004\u0012\u00020t0sX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bu\u0010vR\u001b\u0010w\u001a\u00020x8@X\u0080\u0084\u0002¢\u0006\f\u001a\u0004\b{\u0010|*\u0004\by\u0010zR\u0017\u0010}\u001a\u00020~X\u0080\u0004¢\u0006\u000b\n\u0002\u00103\u001a\u0005\b\u007f\u0010\u0080\u0001R\u0016\u0010\u008c\u0001\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u008c\u0001\u0010\u0011R\u0019\u0010\u0094\u0001\u001a\u00020~X\u0080\u0004¢\u0006\f\n\u0002\u00103\u001a\u0006\b\u0095\u0001\u0010\u0080\u0001R\u0017\u0010«\u0001\u001a\u00020Y8@X\u0080\u0004¢\u0006\b\u001a\u0006\b¬\u0001\u0010\u00ad\u0001R\u0010\u0010®\u0001\u001a\u00030¯\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006³\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;", "Landroidx/compose/foundation/gestures/ScrollableState;", "initialFirstVisibleItems", "", "initialFirstVisibleOffsets", "prefetchScheduler", "Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;", "<init>", "([I[ILandroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V", "initialFirstVisibleItemIndex", "", "initialFirstVisibleItemOffset", "(II)V", Values.VECTOR_MAP_VECTORS_KEY, "", "hasLookaheadOccurred", "getHasLookaheadOccurred$foundation", "()Z", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;", "approachLayoutInfo", "getApproachLayoutInfo$foundation", "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;", "firstVisibleItemIndex", "getFirstVisibleItemIndex", "()I", "firstVisibleItemScrollOffset", "getFirstVisibleItemScrollOffset", "scrollPosition", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;", "getScrollPosition$foundation", "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;", "layoutInfo", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;", "getLayoutInfo", "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;", "layoutInfoState", "Landroidx/compose/runtime/MutableState;", "_scrollIndicatorState", "androidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$_scrollIndicatorState$1", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$_scrollIndicatorState$1;", "calculateScrollOffset", "laneInfo", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;", "getLaneInfo$foundation", "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;", "<set-?>", "canScrollForward", "getCanScrollForward", "setCanScrollForward", "(Z)V", "canScrollForward$delegate", "Landroidx/compose/runtime/MutableState;", "canScrollBackward", "getCanScrollBackward", "setCanScrollBackward", "canScrollBackward$delegate", "lastScrolledForward", "getLastScrolledForward", "lastScrolledBackward", "getLastScrolledBackward", "scrollIndicatorState", "Landroidx/compose/foundation/ScrollIndicatorState;", "getScrollIndicatorState", "()Landroidx/compose/foundation/ScrollIndicatorState;", "Landroidx/compose/ui/layout/Remeasurement;", "remeasurement", "getRemeasurement$foundation", "()Landroidx/compose/ui/layout/Remeasurement;", "remeasurementModifier", "Landroidx/compose/ui/layout/RemeasurementModifier;", "getRemeasurementModifier$foundation", "()Landroidx/compose/ui/layout/RemeasurementModifier;", "awaitLayoutModifier", "Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;", "getAwaitLayoutModifier$foundation", "()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;", "beyondBoundsInfo", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;", "getBeyondBoundsInfo$foundation", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;", "prefetchingEnabled", "getPrefetchingEnabled$foundation", "setPrefetchingEnabled$foundation", "prefetchState", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;", "getPrefetchState$foundation", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;", "scrollableState", "scrollToBeConsumed", "", "isLookingAhead", "scrollToBeConsumed$foundation", "measurePassCount", "getMeasurePassCount$foundation", "setMeasurePassCount$foundation", "(I)V", "prefetchBaseIndex", "currentItemPrefetchHandles", "", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;", "laneCount", "getLaneCount$foundation", "interactionSource", "Landroidx/compose/foundation/interaction/InteractionSource;", "getInteractionSource", "()Landroidx/compose/foundation/interaction/InteractionSource;", "mutableInteractionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "getMutableInteractionSource$foundation", "()Landroidx/compose/foundation/interaction/MutableInteractionSource;", "pinnedItems", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;", "getPinnedItems$foundation", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;", "itemAnimator", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;", "getItemAnimator$foundation", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "nearestRange", "Lkotlin/ranges/IntRange;", "getNearestRange$foundation$delegate", "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)Ljava/lang/Object;", "getNearestRange$foundation", "()Lkotlin/ranges/IntRange;", "placementScopeInvalidator", "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;", "getPlacementScopeInvalidator-zYiylxw$foundation", "()Landroidx/compose/runtime/MutableState;", "scroll", "", "scrollPriority", "Landroidx/compose/foundation/MutatePriority;", "block", "Lkotlin/Function2;", "Landroidx/compose/foundation/gestures/ScrollScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isScrollInProgress", "onScroll", "distance", "scrollToItem", "index", "scrollOffset", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "animateScrollToItem", "measurementScopeInvalidator", "getMeasurementScopeInvalidator-zYiylxw$foundation", "requestScrollToItem", "snapToItemInternal", "forceRemeasure", "snapToItemInternal$foundation", "updateScrollPositionIfTheFirstItemWasMoved", "itemProvider", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;", "firstItemIndex", "updateScrollPositionIfTheFirstItemWasMoved$foundation", "dispatchRawDelta", "delta", "notifyPrefetch", "info", "clearLeftoverPrefetchHandles", "prefetchHandlesUsed", "", "cancelPrefetchIfVisibleItemsChanged", "applyMeasureResult", "result", "visibleItemsStayedTheSame", "applyMeasureResult$foundation", "scrollDeltaBetweenPasses", "getScrollDeltaBetweenPasses$foundation", "()F", "_lazyLayoutScrollDeltaBetweenPasses", "Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;", "fillNearestIndices", "itemIndex", "Companion", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LazyStaggeredGridState implements ScrollableState {
    public static final int $stable = 0;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Saver<LazyStaggeredGridState, Object> Saver = ListSaverKt.listSaver(new Function2() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            LazyStaggeredGridState lazyStaggeredGridState = (LazyStaggeredGridState) obj2;
            return CollectionsKt.listOf((Object[]) new int[][]{lazyStaggeredGridState.scrollPosition.getIndices(), lazyStaggeredGridState.scrollPosition.getScrollOffsets()});
        }
    }, new Function1() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return LazyStaggeredGridState.Saver$lambda$1((List) obj);
        }
    });
    private final LazyLayoutScrollDeltaBetweenPasses _lazyLayoutScrollDeltaBetweenPasses;
    private final LazyStaggeredGridState$_scrollIndicatorState$1 _scrollIndicatorState;
    private LazyStaggeredGridMeasureResult approachLayoutInfo;
    private final AwaitFirstLayoutModifier awaitLayoutModifier;
    private final LazyLayoutBeyondBoundsInfo beyondBoundsInfo;

    /* JADX INFO: renamed from: canScrollBackward$delegate, reason: from kotlin metadata */
    private final MutableState canScrollBackward;

    /* JADX INFO: renamed from: canScrollForward$delegate, reason: from kotlin metadata */
    private final MutableState canScrollForward;
    private final Map<Integer, LazyLayoutPrefetchState.PrefetchHandle> currentItemPrefetchHandles;
    private boolean hasLookaheadOccurred;
    private final LazyLayoutItemAnimator<LazyStaggeredGridMeasuredItem> itemAnimator;
    private final LazyStaggeredGridLaneInfo laneInfo;
    private final MutableState<LazyStaggeredGridMeasureResult> layoutInfoState;
    private int measurePassCount;
    private final MutableState<Unit> measurementScopeInvalidator;
    private final MutableInteractionSource mutableInteractionSource;
    private final LazyLayoutPinnedItemList pinnedItems;
    private final MutableState<Unit> placementScopeInvalidator;
    private int prefetchBaseIndex;
    private final LazyLayoutPrefetchState prefetchState;
    private boolean prefetchingEnabled;
    private Remeasurement remeasurement;
    private final RemeasurementModifier remeasurementModifier;
    private final LazyStaggeredGridScrollPosition scrollPosition;
    private float scrollToBeConsumed;
    private final ScrollableState scrollableState;

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scroll$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LazyStaggeredGridState.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState", f = "LazyStaggeredGridState.kt", i = {0, 0}, l = {278, 280}, m = "scroll", n = {"scrollPriority", "block"}, s = {"L$0", "L$1"}, v = 1)
    static final class C03141 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C03141(Continuation<? super C03141> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LazyStaggeredGridState.this.scroll(null, null, this);
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$_scrollIndicatorState$1] */
    public LazyStaggeredGridState(int[] initialFirstVisibleItems, int[] initialFirstVisibleOffsets, PrefetchScheduler prefetchScheduler) {
        this.scrollPosition = new LazyStaggeredGridScrollPosition(initialFirstVisibleItems, initialFirstVisibleOffsets, new LazyStaggeredGridState$scrollPosition$1(this));
        this.layoutInfoState = SnapshotStateKt.mutableStateOf(LazyStaggeredGridMeasureResultKt.getEmptyLazyStaggeredGridLayoutInfo(), SnapshotStateKt.neverEqualPolicy());
        this._scrollIndicatorState = new ScrollIndicatorState() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$_scrollIndicatorState$1
            @Override // androidx.compose.foundation.ScrollIndicatorState
            public int getScrollOffset() {
                return this.this$0.calculateScrollOffset();
            }

            @Override // androidx.compose.foundation.ScrollIndicatorState
            public int getContentSize() {
                return LazyStaggeredGridMeasureResultKt.calculateContentSize(this.this$0.getLayoutInfo(), this.this$0.getLaneCount$foundation());
            }

            @Override // androidx.compose.foundation.ScrollIndicatorState
            public int getViewportSize() {
                return LazyStaggeredGridMeasureResultKt.getSingleAxisViewportSize(this.this$0.getLayoutInfo());
            }
        };
        this.laneInfo = new LazyStaggeredGridLaneInfo();
        this.canScrollForward = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this.canScrollBackward = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this.remeasurementModifier = new RemeasurementModifier() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$remeasurementModifier$1
            @Override // androidx.compose.ui.layout.RemeasurementModifier
            public void onRemeasurementAvailable(Remeasurement remeasurement) {
                this.this$0.remeasurement = remeasurement;
            }
        };
        this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
        this.beyondBoundsInfo = new LazyLayoutBeyondBoundsInfo();
        this.prefetchingEnabled = true;
        this.prefetchState = new LazyLayoutPrefetchState(prefetchScheduler, null, 2, null);
        this.scrollableState = ScrollableStateKt.ScrollableState(new Function1() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Float.valueOf(LazyStaggeredGridState.scrollableState$lambda$0(this.f$0, ((Float) obj).floatValue()));
            }
        });
        this.prefetchBaseIndex = -1;
        this.currentItemPrefetchHandles = new LinkedHashMap();
        this.mutableInteractionSource = InteractionSourceKt.MutableInteractionSource();
        this.pinnedItems = new LazyLayoutPinnedItemList();
        this.itemAnimator = new LazyLayoutItemAnimator<>();
        this.scrollPosition.getNearestRangeState();
        this.placementScopeInvalidator = ObservableScopeInvalidator.m1008constructorimpl$default(null, 1, null);
        this.measurementScopeInvalidator = ObservableScopeInvalidator.m1008constructorimpl$default(null, 1, null);
        this._lazyLayoutScrollDeltaBetweenPasses = new LazyLayoutScrollDeltaBetweenPasses();
    }

    public /* synthetic */ LazyStaggeredGridState(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2);
    }

    public LazyStaggeredGridState(int initialFirstVisibleItemIndex, int initialFirstVisibleItemOffset) {
        this(new int[]{initialFirstVisibleItemIndex}, new int[]{initialFirstVisibleItemOffset}, null);
    }

    /* JADX INFO: renamed from: getHasLookaheadOccurred$foundation, reason: from getter */
    public final boolean getHasLookaheadOccurred() {
        return this.hasLookaheadOccurred;
    }

    /* JADX INFO: renamed from: getApproachLayoutInfo$foundation, reason: from getter */
    public final LazyStaggeredGridMeasureResult getApproachLayoutInfo() {
        return this.approachLayoutInfo;
    }

    public final int getFirstVisibleItemIndex() {
        return this.scrollPosition.getIndex();
    }

    public final int getFirstVisibleItemScrollOffset() {
        return this.scrollPosition.getScrollOffset();
    }

    /* JADX INFO: renamed from: getScrollPosition$foundation, reason: from getter */
    public final LazyStaggeredGridScrollPosition getScrollPosition() {
        return this.scrollPosition;
    }

    public final LazyStaggeredGridLayoutInfo getLayoutInfo() {
        return this.layoutInfoState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int calculateScrollOffset() {
        LazyStaggeredGridLayoutInfo info = getLayoutInfo();
        if (info.getTotalItemsCount() == 0) {
            return 0;
        }
        return ((LazyStaggeredGridMeasureResultKt.visibleItemsAverageSize(info) * getFirstVisibleItemIndex()) / getLaneCount$foundation()) + getFirstVisibleItemScrollOffset();
    }

    /* JADX INFO: renamed from: getLaneInfo$foundation, reason: from getter */
    public final LazyStaggeredGridLaneInfo getLaneInfo() {
        return this.laneInfo;
    }

    private void setCanScrollForward(boolean z) {
        MutableState $this$setValue$iv = this.canScrollForward;
        $this$setValue$iv.setValue(Boolean.valueOf(z));
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getCanScrollForward() {
        State $this$getValue$iv = this.canScrollForward;
        return ((Boolean) $this$getValue$iv.getValue()).booleanValue();
    }

    private void setCanScrollBackward(boolean z) {
        MutableState $this$setValue$iv = this.canScrollBackward;
        $this$setValue$iv.setValue(Boolean.valueOf(z));
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getCanScrollBackward() {
        State $this$getValue$iv = this.canScrollBackward;
        return ((Boolean) $this$getValue$iv.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getLastScrolledForward() {
        return this.scrollableState.getLastScrolledForward();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getLastScrolledBackward() {
        return this.scrollableState.getLastScrolledBackward();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public ScrollIndicatorState getScrollIndicatorState() {
        return this._scrollIndicatorState;
    }

    /* JADX INFO: renamed from: getRemeasurement$foundation, reason: from getter */
    public final Remeasurement getRemeasurement() {
        return this.remeasurement;
    }

    /* JADX INFO: renamed from: getRemeasurementModifier$foundation, reason: from getter */
    public final RemeasurementModifier getRemeasurementModifier() {
        return this.remeasurementModifier;
    }

    /* JADX INFO: renamed from: getAwaitLayoutModifier$foundation, reason: from getter */
    public final AwaitFirstLayoutModifier getAwaitLayoutModifier() {
        return this.awaitLayoutModifier;
    }

    /* JADX INFO: renamed from: getBeyondBoundsInfo$foundation, reason: from getter */
    public final LazyLayoutBeyondBoundsInfo getBeyondBoundsInfo() {
        return this.beyondBoundsInfo;
    }

    /* JADX INFO: renamed from: getPrefetchingEnabled$foundation, reason: from getter */
    public final boolean getPrefetchingEnabled() {
        return this.prefetchingEnabled;
    }

    public final void setPrefetchingEnabled$foundation(boolean z) {
        this.prefetchingEnabled = z;
    }

    /* JADX INFO: renamed from: getPrefetchState$foundation, reason: from getter */
    public final LazyLayoutPrefetchState getPrefetchState() {
        return this.prefetchState;
    }

    static final float scrollableState$lambda$0(LazyStaggeredGridState this$0, float it) {
        return -this$0.onScroll(-it);
    }

    public final float scrollToBeConsumed$foundation(boolean isLookingAhead) {
        if (isLookingAhead || !this.hasLookaheadOccurred) {
            return this.scrollToBeConsumed;
        }
        return getScrollDeltaBetweenPasses$foundation();
    }

    /* JADX INFO: renamed from: getMeasurePassCount$foundation, reason: from getter */
    public final int getMeasurePassCount() {
        return this.measurePassCount;
    }

    public final void setMeasurePassCount$foundation(int i) {
        this.measurePassCount = i;
    }

    public final int getLaneCount$foundation() {
        return this.layoutInfoState.getValue().getSlots().getSizes().length;
    }

    public final InteractionSource getInteractionSource() {
        return this.mutableInteractionSource;
    }

    /* JADX INFO: renamed from: getMutableInteractionSource$foundation, reason: from getter */
    public final MutableInteractionSource getMutableInteractionSource() {
        return this.mutableInteractionSource;
    }

    /* JADX INFO: renamed from: getPinnedItems$foundation, reason: from getter */
    public final LazyLayoutPinnedItemList getPinnedItems() {
        return this.pinnedItems;
    }

    public final LazyLayoutItemAnimator<LazyStaggeredGridMeasuredItem> getItemAnimator$foundation() {
        return this.itemAnimator;
    }

    public final IntRange getNearestRange$foundation() {
        State $this$getValue$iv = this.scrollPosition.getNearestRangeState();
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: renamed from: getPlacementScopeInvalidator-zYiylxw$foundation, reason: not valid java name */
    public final MutableState<Unit> m1051getPlacementScopeInvalidatorzYiylxw$foundation() {
        return this.placementScopeInvalidator;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0074 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object scroll(MutatePriority scrollPriority, Function2<? super ScrollScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        C03141 c03141;
        LazyStaggeredGridState lazyStaggeredGridState;
        MutatePriority scrollPriority2;
        LazyStaggeredGridState lazyStaggeredGridState2;
        ScrollableState scrollableState;
        if (continuation instanceof C03141) {
            c03141 = (C03141) continuation;
            if ((c03141.label & Integer.MIN_VALUE) != 0) {
                c03141.label -= Integer.MIN_VALUE;
            } else {
                c03141 = new C03141(continuation);
            }
        }
        Object $result = c03141.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c03141.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                lazyStaggeredGridState = this;
                if (lazyStaggeredGridState.layoutInfoState.getValue() == LazyStaggeredGridMeasureResultKt.getEmptyLazyStaggeredGridLayoutInfo()) {
                    AwaitFirstLayoutModifier awaitFirstLayoutModifier = lazyStaggeredGridState.awaitLayoutModifier;
                    c03141.L$0 = scrollPriority;
                    c03141.L$1 = function2;
                    c03141.label = 1;
                    if (awaitFirstLayoutModifier.waitForFirstLayout(c03141) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    scrollPriority2 = scrollPriority;
                    lazyStaggeredGridState2 = lazyStaggeredGridState;
                    MutatePriority mutatePriority = scrollPriority2;
                    lazyStaggeredGridState = lazyStaggeredGridState2;
                    scrollPriority = mutatePriority;
                }
                scrollableState = lazyStaggeredGridState.scrollableState;
                c03141.L$0 = null;
                c03141.L$1 = null;
                c03141.label = 2;
                if (scrollableState.scroll(scrollPriority, function2, c03141) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 1:
                lazyStaggeredGridState2 = this;
                function2 = (Function2) c03141.L$1;
                scrollPriority2 = (MutatePriority) c03141.L$0;
                ResultKt.throwOnFailure($result);
                MutatePriority mutatePriority2 = scrollPriority2;
                lazyStaggeredGridState = lazyStaggeredGridState2;
                scrollPriority = mutatePriority2;
                scrollableState = lazyStaggeredGridState.scrollableState;
                c03141.L$0 = null;
                c03141.L$1 = null;
                c03141.label = 2;
                if (scrollableState.scroll(scrollPriority, function2, c03141) == coroutine_suspended) {
                }
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure($result);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    private final float onScroll(float distance) {
        LazyStaggeredGridMeasureResult scrolledApproachLayoutInfo;
        if ((distance < 0.0f && !getCanScrollForward()) || (distance > 0.0f && !getCanScrollBackward())) {
            return 0.0f;
        }
        boolean value$iv = Math.abs(this.scrollToBeConsumed) <= 0.5f;
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalStateException("entered drag with non-zero pending scroll");
        }
        this.scrollToBeConsumed += distance;
        if (Math.abs(this.scrollToBeConsumed) > 0.5f) {
            float preScrollToBeConsumed = this.scrollToBeConsumed;
            int intDelta = MathKt.roundToInt(this.scrollToBeConsumed);
            LazyStaggeredGridMeasureResult scrolledLayoutInfo = this.layoutInfoState.getValue().copyWithScrollDeltaWithoutRemeasure(intDelta, !this.hasLookaheadOccurred);
            if (scrolledLayoutInfo != null && this.approachLayoutInfo != null) {
                LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult = this.approachLayoutInfo;
                if (lazyStaggeredGridMeasureResult == null) {
                    scrolledApproachLayoutInfo = null;
                } else {
                    scrolledApproachLayoutInfo = lazyStaggeredGridMeasureResult.copyWithScrollDeltaWithoutRemeasure(intDelta, true);
                }
                if (scrolledApproachLayoutInfo != null) {
                    this.approachLayoutInfo = scrolledApproachLayoutInfo;
                } else {
                    scrolledLayoutInfo = null;
                }
            }
            if (scrolledLayoutInfo != null) {
                applyMeasureResult$foundation(scrolledLayoutInfo, this.hasLookaheadOccurred, true);
                ObservableScopeInvalidator.m1012invalidateScopeimpl(this.placementScopeInvalidator);
                notifyPrefetch(preScrollToBeConsumed - this.scrollToBeConsumed, scrolledLayoutInfo);
            } else {
                Remeasurement remeasurement = this.remeasurement;
                if (remeasurement != null) {
                    remeasurement.forceRemeasure();
                }
                notifyPrefetch$default(this, preScrollToBeConsumed - this.scrollToBeConsumed, null, 2, null);
            }
        }
        if (Math.abs(this.scrollToBeConsumed) <= 0.5f) {
            return distance;
        }
        float scrollConsumed = distance - this.scrollToBeConsumed;
        this.scrollToBeConsumed = 0.0f;
        return scrollConsumed;
    }

    public static /* synthetic */ Object scrollToItem$default(LazyStaggeredGridState lazyStaggeredGridState, int i, int i2, Continuation continuation, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return lazyStaggeredGridState.scrollToItem(i, i2, continuation);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scrollToItem$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LazyStaggeredGridState.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/ScrollScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scrollToItem$2", f = "LazyStaggeredGridState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class C03152 extends SuspendLambda implements Function2<ScrollScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $index;
        final /* synthetic */ int $scrollOffset;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03152(int i, int i2, Continuation<? super C03152> continuation) {
            super(2, continuation);
            this.$index = i;
            this.$scrollOffset = i2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LazyStaggeredGridState.this.new C03152(this.$index, this.$scrollOffset, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ScrollScope scrollScope, Continuation<? super Unit> continuation) {
            return ((C03152) create(scrollScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    LazyStaggeredGridState.this.snapToItemInternal$foundation(this.$index, this.$scrollOffset, true);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Object scrollToItem(int index, int scrollOffset, Continuation<? super Unit> continuation) {
        Object objScroll$default = ScrollableState.scroll$default(this, null, new C03152(index, scrollOffset, null), continuation, 1, null);
        return objScroll$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objScroll$default : Unit.INSTANCE;
    }

    public static /* synthetic */ Object animateScrollToItem$default(LazyStaggeredGridState lazyStaggeredGridState, int i, int i2, Continuation continuation, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return lazyStaggeredGridState.animateScrollToItem(i, i2, continuation);
    }

    public final Object animateScrollToItem(int index, int scrollOffset, Continuation<? super Unit> continuation) {
        LazyStaggeredGridMeasureResult layoutInfo = this.layoutInfoState.getValue();
        int numOfItemsToTeleport = layoutInfo.getSlots().getSizes().length * 100;
        Object objScroll$default = ScrollableState.scroll$default(this, null, new AnonymousClass2(index, scrollOffset, numOfItemsToTeleport, layoutInfo, null), continuation, 1, null);
        return objScroll$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objScroll$default : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$animateScrollToItem$2, reason: invalid class name */
    /* JADX INFO: compiled from: LazyStaggeredGridState.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/ScrollScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$animateScrollToItem$2", f = "LazyStaggeredGridState.kt", i = {}, l = {392}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass2 extends SuspendLambda implements Function2<ScrollScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $index;
        final /* synthetic */ LazyStaggeredGridMeasureResult $layoutInfo;
        final /* synthetic */ int $numOfItemsToTeleport;
        final /* synthetic */ int $scrollOffset;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(int i, int i2, int i3, LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$index = i;
            this.$scrollOffset = i2;
            this.$numOfItemsToTeleport = i3;
            this.$layoutInfo = lazyStaggeredGridMeasureResult;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = LazyStaggeredGridState.this.new AnonymousClass2(this.$index, this.$scrollOffset, this.$numOfItemsToTeleport, this.$layoutInfo, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ScrollScope scrollScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(scrollScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ScrollScope $this$scroll = (ScrollScope) this.L$0;
                    this.label = 1;
                    if (LazyLayoutScrollScopeKt.animateScrollToItem(LazyStaggeredGridScrollScopeKt.LazyLayoutScrollScope(LazyStaggeredGridState.this, $this$scroll), this.$index, this.$scrollOffset, this.$numOfItemsToTeleport, this.$layoutInfo.getDensity(), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: getMeasurementScopeInvalidator-zYiylxw$foundation, reason: not valid java name */
    public final MutableState<Unit> m1050getMeasurementScopeInvalidatorzYiylxw$foundation() {
        return this.measurementScopeInvalidator;
    }

    public static /* synthetic */ void requestScrollToItem$default(LazyStaggeredGridState lazyStaggeredGridState, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        lazyStaggeredGridState.requestScrollToItem(i, i2);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$requestScrollToItem$1, reason: invalid class name */
    /* JADX INFO: compiled from: LazyStaggeredGridState.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$requestScrollToItem$1", f = "LazyStaggeredGridState.kt", i = {}, l = {416}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LazyStaggeredGridState.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    if (ScrollExtensionsKt.stopScroll$default(LazyStaggeredGridState.this, (MutatePriority) null, this, 1, (Object) null) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final void requestScrollToItem(int index, int scrollOffset) {
        if (isScrollInProgress()) {
            BuildersKt__Builders_commonKt.launch$default(this.layoutInfoState.getValue().getCoroutineScope(), null, null, new AnonymousClass1(null), 3, null);
        }
        snapToItemInternal$foundation(index, scrollOffset, false);
    }

    public final void snapToItemInternal$foundation(int index, int scrollOffset, boolean forceRemeasure) {
        int currentOffset;
        boolean positionChanged = (this.scrollPosition.getIndex() == index && this.scrollPosition.getScrollOffset() == scrollOffset) ? false : true;
        if (positionChanged) {
            this.itemAnimator.reset();
        }
        LazyStaggeredGridMeasureResult layoutInfo = this.layoutInfoState.getValue();
        LazyStaggeredGridItemInfo visibleItem = LazyStaggeredGridMeasureResultKt.findVisibleItem(layoutInfo, index);
        if (visibleItem != null && positionChanged) {
            if (layoutInfo.getOrientation() == Orientation.Vertical) {
                currentOffset = IntOffset.m7634getYimpl(visibleItem.getOffset());
            } else {
                currentOffset = IntOffset.m7633getXimpl(visibleItem.getOffset());
            }
            int delta = currentOffset + scrollOffset;
            int length = layoutInfo.getFirstVisibleItemScrollOffsets().length;
            int[] offsets = new int[length];
            for (int i = 0; i < length; i++) {
                offsets[i] = layoutInfo.getFirstVisibleItemScrollOffsets()[i] + delta;
            }
            this.scrollPosition.updateScrollOffset(offsets);
        } else {
            this.scrollPosition.requestPositionAndForgetLastKnownKey(index, scrollOffset);
        }
        if (forceRemeasure) {
            Remeasurement remeasurement = this.remeasurement;
            if (remeasurement != null) {
                remeasurement.forceRemeasure();
                return;
            }
            return;
        }
        ObservableScopeInvalidator.m1012invalidateScopeimpl(this.measurementScopeInvalidator);
    }

    public final int[] updateScrollPositionIfTheFirstItemWasMoved$foundation(LazyLayoutItemProvider itemProvider, int[] firstItemIndex) {
        return this.scrollPosition.updateScrollPositionIfTheFirstItemWasMoved(itemProvider, firstItemIndex);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float dispatchRawDelta(float delta) {
        return this.scrollableState.dispatchRawDelta(delta);
    }

    static /* synthetic */ void notifyPrefetch$default(LazyStaggeredGridState lazyStaggeredGridState, float f, LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult, int i, Object obj) {
        if ((i & 2) != 0) {
            lazyStaggeredGridMeasureResult = lazyStaggeredGridState.layoutInfoState.getValue();
        }
        lazyStaggeredGridState.notifyPrefetch(f, lazyStaggeredGridMeasureResult);
    }

    private final void notifyPrefetch(float delta, LazyStaggeredGridMeasureResult info) {
        int prefetchIndex;
        int iFindPreviousItemIndex;
        int start;
        long constraints;
        if (this.prefetchingEnabled && !info.getVisibleItemsInfo().isEmpty()) {
            int i = 1;
            boolean scrollingForward = delta < 0.0f;
            if (scrollingForward) {
                prefetchIndex = ((LazyStaggeredGridMeasuredItem) CollectionsKt.last((List) info.getVisibleItemsInfo())).getIndex();
            } else {
                prefetchIndex = ((LazyStaggeredGridMeasuredItem) CollectionsKt.first((List) info.getVisibleItemsInfo())).getIndex();
            }
            if (prefetchIndex == this.prefetchBaseIndex) {
                return;
            }
            this.prefetchBaseIndex = prefetchIndex;
            Set prefetchHandlesUsed = new LinkedHashSet();
            int targetIndex = prefetchIndex;
            LazyStaggeredGridSlots slots = info.getSlots();
            int laneCount = slots.getSizes().length;
            int lane = 0;
            while (lane < laneCount) {
                int previousIndex = targetIndex;
                LazyStaggeredGridLaneInfo lazyStaggeredGridLaneInfo = this.laneInfo;
                if (scrollingForward) {
                    iFindPreviousItemIndex = lazyStaggeredGridLaneInfo.findNextItemIndex(previousIndex, lane);
                } else {
                    iFindPreviousItemIndex = lazyStaggeredGridLaneInfo.findPreviousItemIndex(previousIndex, lane);
                }
                int targetIndex2 = iFindPreviousItemIndex;
                if (((targetIndex2 < 0 || targetIndex2 >= info.getTotalItemsCount()) ? 0 : i) == 0 || prefetchHandlesUsed.contains(Integer.valueOf(targetIndex2))) {
                    break;
                }
                prefetchHandlesUsed.add(Integer.valueOf(targetIndex2));
                if (!this.currentItemPrefetchHandles.containsKey(Integer.valueOf(targetIndex2))) {
                    boolean isFullSpan = info.getSpanProvider().isFullSpan(targetIndex2);
                    int slot = isFullSpan ? 0 : lane;
                    int span = isFullSpan ? laneCount : i;
                    if (span == i) {
                        start = slots.getSizes()[slot];
                    } else {
                        int start2 = slots.getPositions()[slot];
                        int endSlot = (slot + span) - i;
                        int end = slots.getPositions()[endSlot] + slots.getSizes()[endSlot];
                        start = end - start2;
                    }
                    if (info.getOrientation() == Orientation.Vertical) {
                        constraints = Constraints.INSTANCE.m7470fixedWidthOenEA2s(start);
                    } else {
                        constraints = Constraints.INSTANCE.m7469fixedHeightOenEA2s(start);
                    }
                    this.currentItemPrefetchHandles.put(Integer.valueOf(targetIndex2), LazyLayoutPrefetchState.m998schedulePrecompositionAndPremeasureVKLhPVY$default(this.prefetchState, targetIndex2, constraints, null, 4, null));
                }
                lane++;
                targetIndex = targetIndex2;
                i = 1;
            }
            clearLeftoverPrefetchHandles(prefetchHandlesUsed);
        }
    }

    private final void clearLeftoverPrefetchHandles(Set<Integer> prefetchHandlesUsed) {
        Iterator<Map.Entry<Integer, LazyLayoutPrefetchState.PrefetchHandle>> it = this.currentItemPrefetchHandles.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, LazyLayoutPrefetchState.PrefetchHandle> next = it.next();
            if (!prefetchHandlesUsed.contains(next.getKey())) {
                next.getValue().cancel();
                it.remove();
            }
        }
    }

    private final void cancelPrefetchIfVisibleItemsChanged(LazyStaggeredGridLayoutInfo info) {
        List<LazyStaggeredGridItemInfo> visibleItemsInfo = info.getVisibleItemsInfo();
        if (this.prefetchBaseIndex != -1 && !visibleItemsInfo.isEmpty()) {
            int index = ((LazyStaggeredGridItemInfo) CollectionsKt.first((List) visibleItemsInfo)).getIndex();
            int index2 = ((LazyStaggeredGridItemInfo) CollectionsKt.last((List) visibleItemsInfo)).getIndex();
            int i = this.prefetchBaseIndex;
            boolean z = false;
            if (index <= i && i <= index2) {
                z = true;
            }
            if (!z) {
                this.prefetchBaseIndex = -1;
                Iterable $this$forEach$iv = this.currentItemPrefetchHandles.values();
                for (Object element$iv : $this$forEach$iv) {
                    LazyLayoutPrefetchState.PrefetchHandle it = (LazyLayoutPrefetchState.PrefetchHandle) element$iv;
                    it.cancel();
                }
                this.currentItemPrefetchHandles.clear();
            }
        }
    }

    public static /* synthetic */ void applyMeasureResult$foundation$default(LazyStaggeredGridState lazyStaggeredGridState, LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult, boolean z, boolean z2, int i, Object obj) {
        if ((i & 4) != 0) {
            z2 = false;
        }
        lazyStaggeredGridState.applyMeasureResult$foundation(lazyStaggeredGridMeasureResult, z, z2);
    }

    public final void applyMeasureResult$foundation(LazyStaggeredGridMeasureResult result, boolean isLookingAhead, boolean visibleItemsStayedTheSame) {
        if (!isLookingAhead && this.hasLookaheadOccurred) {
            this.approachLayoutInfo = result;
            return;
        }
        if (isLookingAhead) {
            this.hasLookaheadOccurred = true;
        }
        this.scrollToBeConsumed -= result.getConsumedScroll();
        this.layoutInfoState.setValue(result);
        LazyStaggeredGridScrollPosition lazyStaggeredGridScrollPosition = this.scrollPosition;
        if (visibleItemsStayedTheSame) {
            lazyStaggeredGridScrollPosition.updateScrollOffset(result.getFirstVisibleItemScrollOffsets());
        } else {
            lazyStaggeredGridScrollPosition.updateFromMeasureResult(result);
            cancelPrefetchIfVisibleItemsChanged(result);
        }
        setCanScrollBackward(result.getCanScrollBackward());
        setCanScrollForward(result.getCanScrollForward());
        if (isLookingAhead) {
            this._lazyLayoutScrollDeltaBetweenPasses.updateScrollDeltaForApproach$foundation(result.getScrollBackAmount(), result.getDensity(), result.getCoroutineScope());
        }
        this.measurePassCount++;
    }

    public final float getScrollDeltaBetweenPasses$foundation() {
        return this._lazyLayoutScrollDeltaBetweenPasses.getScrollDeltaBetweenPasses$foundation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int[] fillNearestIndices(int itemIndex, int laneCount) {
        int[] indices = new int[laneCount];
        if (this.layoutInfoState.getValue().getSpanProvider().isFullSpan(itemIndex)) {
            ArraysKt.fill$default(indices, itemIndex, 0, 0, 6, (Object) null);
            return indices;
        }
        this.laneInfo.ensureValidIndex(itemIndex + laneCount);
        int previousLane = this.laneInfo.getLane(itemIndex);
        switch (previousLane) {
            case -2:
            case -1:
                break;
            default:
                if ((previousLane >= 0 ? 1 : 0) == 0) {
                    InlineClassHelperKt.throwIllegalArgumentException("Expected positive lane number, got " + previousLane + " instead.");
                }
                iMin = Math.min(previousLane, laneCount);
                break;
        }
        int targetLaneIndex = iMin;
        int currentItemIndex = itemIndex;
        int lane = targetLaneIndex - 1;
        while (true) {
            if (-1 < lane) {
                indices[lane] = this.laneInfo.findPreviousItemIndex(currentItemIndex, lane);
                if (indices[lane] == -1) {
                    ArraysKt.fill$default(indices, -1, 0, lane, 2, (Object) null);
                } else {
                    currentItemIndex = indices[lane];
                    lane--;
                }
            }
        }
        indices[targetLaneIndex] = itemIndex;
        int currentItemIndex2 = itemIndex;
        for (int lane2 = targetLaneIndex + 1; lane2 < laneCount; lane2++) {
            indices[lane2] = this.laneInfo.findNextItemIndex(currentItemIndex2, lane2);
            currentItemIndex2 = indices[lane2];
        }
        return indices;
    }

    /* JADX INFO: compiled from: LazyStaggeredGridState.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;", "", "<init>", "()V", "Saver", "Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;", "getSaver", "()Landroidx/compose/runtime/saveable/Saver;", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Saver<LazyStaggeredGridState, Object> getSaver() {
            return LazyStaggeredGridState.Saver;
        }
    }

    static final LazyStaggeredGridState Saver$lambda$1(List it) {
        return new LazyStaggeredGridState((int[]) it.get(0), (int[]) it.get(1), null);
    }
}
