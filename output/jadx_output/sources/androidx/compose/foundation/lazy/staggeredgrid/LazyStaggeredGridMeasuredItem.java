package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.firestore.model.Values;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: LazyStaggeredGridMeasure.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002Bu\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u0004\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00000\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\u0012\u0010(\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u0017\u0010<\u001a\u0002092\u0006\u0010\u0003\u001a\u00020\u0004H\u0016¢\u0006\u0004\b=\u0010>J\u001e\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020\u00042\u0006\u0010B\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u0004J(\u0010?\u001a\u00020@2\u0006\u0010C\u001a\u00020\u00042\u0006\u0010D\u001a\u00020\u00042\u0006\u0010E\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u0004H\u0016J\u001e\u0010H\u001a\u00020@2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020\u000bJ\u000e\u0010N\u001a\u00020@2\u0006\u0010/\u001a\u00020\u0004J\u0016\u0010O\u001a\u00020@2\u0006\u0010P\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020\u000bJ(\u0010U\u001a\u000209*\u0002092\u0012\u0010V\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040WH\u0082\b¢\u0006\u0004\bX\u0010YJ\b\u0010Z\u001a\u00020[H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u001cR\u0014\u0010\r\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0014\u0010\u000e\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0019R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001bR\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00000\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\u00020\u0015X\u0096\u0004¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b \u0010!R\u001a\u0010#\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001c\"\u0004\b$\u0010%R\u0014\u0010&\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010\u0019R\u0011\u0010)\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0019R\u0014\u0010+\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u0019R\u0011\u0010-\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u0019R\u000e\u0010/\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u00102\u001a\u00020\u000bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u001c\"\u0004\b4\u0010%R\u0016\u00105\u001a\u000206X\u0096\u0004¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b7\u0010!R \u0010:\u001a\u0002092\u0006\u00108\u001a\u000209@RX\u0096\u000e¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b;\u0010!R\u0011\u0010C\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bG\u0010\u0019R\u0018\u0010A\u001a\u00020\u0004*\u0002098BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bR\u0010SR\u0019\u0010)\u001a\u00020\u0004*\u00020\t8Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b*\u0010T¨\u0006\\"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;", "index", "", "key", "", "placeables", "", "Landroidx/compose/ui/layout/Placeable;", "isVertical", "", "spacing", "lane", TtmlNode.TAG_SPAN, "beforeContentPadding", "afterContentPadding", "contentType", "animator", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "<init>", "(ILjava/lang/Object;Ljava/util/List;ZIIIIILjava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getIndex", "()I", "getKey", "()Ljava/lang/Object;", "()Z", "getLane", "getSpan", "getContentType", "getConstraints-msEJaDk", "()J", "J", "isVisible", "setVisible", "(Z)V", "placeablesCount", "getPlaceablesCount", "getParentData", "mainAxisSize", "getMainAxisSize", "mainAxisSizeWithSpacings", "getMainAxisSizeWithSpacings", "crossAxisSize", "getCrossAxisSize", "mainAxisLayoutSize", "minMainAxisOffset", "maxMainAxisOffset", "nonScrollableItem", "getNonScrollableItem", "setNonScrollableItem", "size", "Landroidx/compose/ui/unit/IntSize;", "getSize-YbymL2g", Values.VECTOR_MAP_VECTORS_KEY, "Landroidx/compose/ui/unit/IntOffset;", "offset", "getOffset-nOcc-ac", "getOffset", "getOffset-Bjo55l4", "(I)J", "position", "", "mainAxis", "crossAxis", "mainAxisOffset", "crossAxisOffset", "layoutWidth", "layoutHeight", "getMainAxisOffset", "place", "scope", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "context", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;", "isLookingAhead", "updateMainAxisLayoutSize", "applyScrollDelta", "delta", "updateAnimations", "getMainAxis--gyyYBs", "(J)I", "(Landroidx/compose/ui/layout/Placeable;)I", "copy", "mainAxisMap", "Lkotlin/Function1;", "copy-4Tuh3kE", "(JLkotlin/jvm/functions/Function1;)J", "toString", "", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LazyStaggeredGridMeasuredItem implements LazyStaggeredGridItemInfo, LazyLayoutMeasuredItem {
    public static final int $stable = 8;
    private final int afterContentPadding;
    private final LazyLayoutItemAnimator<LazyStaggeredGridMeasuredItem> animator;
    private final int beforeContentPadding;
    private final long constraints;
    private final Object contentType;
    private final int crossAxisSize;
    private final int index;
    private final boolean isVertical;
    private boolean isVisible;
    private final Object key;
    private final int lane;
    private int mainAxisLayoutSize;
    private final int mainAxisSize;
    private final int mainAxisSizeWithSpacings;
    private int maxMainAxisOffset;
    private int minMainAxisOffset;
    private boolean nonScrollableItem;
    private long offset;
    private final List<Placeable> placeables;
    private final long size;
    private final int span;

    public /* synthetic */ LazyStaggeredGridMeasuredItem(int i, Object obj, List list, boolean z, int i2, int i3, int i4, int i5, int i6, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, obj, list, z, i2, i3, i4, i5, i6, obj2, lazyLayoutItemAnimator, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private LazyStaggeredGridMeasuredItem(int index, Object key, List<? extends Placeable> list, boolean isVertical, int spacing, int lane, int span, int beforeContentPadding, int afterContentPadding, Object contentType, LazyLayoutItemAnimator<LazyStaggeredGridMeasuredItem> lazyLayoutItemAnimator, long constraints) {
        long jM7671constructorimpl;
        this.index = index;
        this.key = key;
        this.placeables = list;
        this.isVertical = isVertical;
        this.lane = lane;
        this.span = span;
        this.beforeContentPadding = beforeContentPadding;
        this.afterContentPadding = afterContentPadding;
        this.contentType = contentType;
        this.animator = lazyLayoutItemAnimator;
        this.constraints = constraints;
        this.isVisible = true;
        List<Placeable> list2 = this.placeables;
        int defaultValue$iv = 0;
        if (!list2.isEmpty()) {
            Placeable placeable = list2.get(0);
            int maxValue$iv = getIsVertical() ? placeable.getHeight() : placeable.getWidth();
            int i$iv = 1;
            int lastIndex = CollectionsKt.getLastIndex(list2);
            if (1 <= lastIndex) {
                int maxValue$iv2 = maxValue$iv;
                while (true) {
                    Placeable placeable2 = list2.get(i$iv);
                    int v$iv = getIsVertical() ? placeable2.getHeight() : placeable2.getWidth();
                    maxValue$iv2 = v$iv > maxValue$iv2 ? v$iv : maxValue$iv2;
                    if (i$iv == lastIndex) {
                        break;
                    } else {
                        i$iv++;
                    }
                }
                maxValue$iv = maxValue$iv2;
            }
            defaultValue$iv = maxValue$iv;
        }
        this.mainAxisSize = defaultValue$iv;
        this.mainAxisSizeWithSpacings = RangesKt.coerceAtLeast(this.mainAxisSize + spacing, 0);
        List<Placeable> list3 = this.placeables;
        int defaultValue$iv2 = 0;
        if (!list3.isEmpty()) {
            Placeable it = list3.get(0);
            int maxValue$iv3 = getIsVertical() ? it.getWidth() : it.getHeight();
            int i$iv2 = 1;
            int lastIndex2 = CollectionsKt.getLastIndex(list3);
            if (1 <= lastIndex2) {
                while (true) {
                    Placeable it2 = list3.get(i$iv2);
                    int v$iv2 = getIsVertical() ? it2.getWidth() : it2.getHeight();
                    maxValue$iv3 = v$iv2 > maxValue$iv3 ? v$iv2 : maxValue$iv3;
                    if (i$iv2 == lastIndex2) {
                        break;
                    } else {
                        i$iv2++;
                    }
                }
            }
            defaultValue$iv2 = maxValue$iv3;
        }
        this.crossAxisSize = defaultValue$iv2;
        this.mainAxisLayoutSize = Integer.MIN_VALUE;
        if (getIsVertical()) {
            int width$iv = this.crossAxisSize;
            int height$iv = this.mainAxisSize;
            jM7671constructorimpl = IntSize.m7671constructorimpl((((long) height$iv) & 4294967295L) | (((long) width$iv) << 32));
        } else {
            int width$iv2 = this.mainAxisSize;
            int height$iv2 = this.crossAxisSize;
            jM7671constructorimpl = IntSize.m7671constructorimpl((((long) height$iv2) & 4294967295L) | (((long) width$iv2) << 32));
        }
        this.size = jM7671constructorimpl;
        this.offset = IntOffset.INSTANCE.m7644getZeronOccac();
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getIndex() {
        return this.index;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public Object getKey() {
        return this.key;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: isVertical, reason: from getter */
    public boolean getIsVertical() {
        return this.isVertical;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getLane() {
        return this.lane;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getSpan() {
        return this.span;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo
    public Object getContentType() {
        return this.contentType;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: getConstraints-msEJaDk, reason: from getter */
    public long getConstraints() {
        return this.constraints;
    }

    /* JADX INFO: renamed from: isVisible, reason: from getter */
    public final boolean getIsVisible() {
        return this.isVisible;
    }

    public final void setVisible(boolean z) {
        this.isVisible = z;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getPlaceablesCount() {
        return this.placeables.size();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public Object getParentData(int index) {
        return this.placeables.get(index).getParentData();
    }

    public final int getMainAxisSize() {
        return this.mainAxisSize;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getMainAxisSizeWithSpacings() {
        return this.mainAxisSizeWithSpacings;
    }

    public final int getCrossAxisSize() {
        return this.crossAxisSize;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public boolean getNonScrollableItem() {
        return this.nonScrollableItem;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public void setNonScrollableItem(boolean z) {
        this.nonScrollableItem = z;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo
    /* JADX INFO: renamed from: getSize-YbymL2g, reason: from getter */
    public long getSize() {
        return this.size;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo
    /* JADX INFO: renamed from: getOffset-nOcc-ac, reason: from getter */
    public long getOffset() {
        return this.offset;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: getOffset-Bjo55l4 */
    public long mo931getOffsetBjo55l4(int index) {
        return getOffset();
    }

    public final void position(int mainAxis, int crossAxis, int mainAxisLayoutSize) {
        long jM7627constructorimpl;
        this.mainAxisLayoutSize = mainAxisLayoutSize;
        this.minMainAxisOffset = -this.beforeContentPadding;
        this.maxMainAxisOffset = this.afterContentPadding + mainAxisLayoutSize;
        if (getIsVertical()) {
            jM7627constructorimpl = IntOffset.m7627constructorimpl((4294967295L & ((long) mainAxis)) | (((long) crossAxis) << 32));
        } else {
            jM7627constructorimpl = IntOffset.m7627constructorimpl((4294967295L & ((long) crossAxis)) | (((long) mainAxis) << 32));
        }
        this.offset = jM7627constructorimpl;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public void position(int mainAxisOffset, int crossAxisOffset, int layoutWidth, int layoutHeight) {
        position(mainAxisOffset, crossAxisOffset, getIsVertical() ? layoutHeight : layoutWidth);
    }

    public final int getMainAxisOffset() {
        return !getIsVertical() ? IntOffset.m7633getXimpl(getOffset()) : IntOffset.m7634getYimpl(getOffset());
    }

    public final void place(Placeable.PlacementScope scope, LazyStaggeredGridMeasureContext context, boolean isLookingAhead) {
        int i;
        int i2;
        List<Placeable> list;
        int $i$f$fastForEachIndexed;
        GraphicsLayer layer;
        GraphicsLayer layer2;
        int mainAxisOffset;
        int y$iv$iv;
        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem = this;
        LazyStaggeredGridMeasureContext $this$place_u24lambda_u240 = context;
        int i3 = 0;
        boolean value$iv = lazyStaggeredGridMeasuredItem.mainAxisLayoutSize != Integer.MIN_VALUE;
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalArgumentException("position() should be called first");
        }
        int i4 = 0;
        List<Placeable> list2 = lazyStaggeredGridMeasuredItem.placeables;
        int $i$f$fastForEachIndexed2 = 0;
        int size = list2.size();
        int index$iv = 0;
        while (index$iv < size) {
            Object item$iv = list2.get(index$iv);
            Placeable placeable = (Placeable) item$iv;
            int index = index$iv;
            int minOffset = lazyStaggeredGridMeasuredItem.minMainAxisOffset - (getIsVertical() ? placeable.getHeight() : placeable.getWidth());
            int maxOffset = lazyStaggeredGridMeasuredItem.maxMainAxisOffset;
            long offset = lazyStaggeredGridMeasuredItem.getOffset();
            LazyStaggeredGridMeasureContext $this$place_u24lambda_u2402 = $this$place_u24lambda_u240;
            LazyLayoutItemAnimation animation = lazyStaggeredGridMeasuredItem.animator.getAnimation(lazyStaggeredGridMeasuredItem.getKey(), index);
            if (animation != null) {
                if (isLookingAhead) {
                    animation.m984setLookaheadOffsetgyyYBs(offset);
                    i = i3;
                    i2 = i4;
                    list = list2;
                    $i$f$fastForEachIndexed = $i$f$fastForEachIndexed2;
                } else {
                    i = i3;
                    i2 = i4;
                    list = list2;
                    $i$f$fastForEachIndexed = $i$f$fastForEachIndexed2;
                    long targetOffset = !IntOffset.m7632equalsimpl0(animation.getLookaheadOffset(), LazyLayoutItemAnimation.INSTANCE.m986getNotInitializednOccac()) ? animation.getLookaheadOffset() : offset;
                    long animatedOffset = IntOffset.m7637plusqkQi6aY(targetOffset, animation.m981getPlacementDeltanOccac());
                    if ((lazyStaggeredGridMeasuredItem.m1049getMainAxisgyyYBs(offset) <= minOffset && lazyStaggeredGridMeasuredItem.m1049getMainAxisgyyYBs(animatedOffset) <= minOffset) || (lazyStaggeredGridMeasuredItem.m1049getMainAxisgyyYBs(offset) >= maxOffset && lazyStaggeredGridMeasuredItem.m1049getMainAxisgyyYBs(animatedOffset) >= maxOffset)) {
                        animation.cancelPlacementAnimation();
                    }
                    offset = animatedOffset;
                }
                layer = animation.getLayer();
            } else {
                i = i3;
                i2 = i4;
                list = list2;
                $i$f$fastForEachIndexed = $i$f$fastForEachIndexed2;
                layer = null;
            }
            if ($this$place_u24lambda_u2402.getReverseLayout()) {
                long j = offset;
                if (getIsVertical()) {
                    mainAxisOffset = IntOffset.m7633getXimpl(j);
                    layer2 = layer;
                } else {
                    int mainAxisOffset2 = IntOffset.m7633getXimpl(j);
                    layer2 = layer;
                    mainAxisOffset = (lazyStaggeredGridMeasuredItem.mainAxisLayoutSize - mainAxisOffset2) - (getIsVertical() ? placeable.getHeight() : placeable.getWidth());
                }
                if (getIsVertical()) {
                    int mainAxisOffset3 = IntOffset.m7634getYimpl(j);
                    int mainAxisOffset4 = lazyStaggeredGridMeasuredItem.mainAxisLayoutSize;
                    y$iv$iv = (mainAxisOffset4 - mainAxisOffset3) - (getIsVertical() ? placeable.getHeight() : placeable.getWidth());
                } else {
                    y$iv$iv = IntOffset.m7634getYimpl(j);
                }
                int val2$iv$iv$iv = y$iv$iv;
                int val1$iv$iv$iv = mainAxisOffset;
                offset = IntOffset.m7627constructorimpl((((long) val1$iv$iv$iv) << 32) | (((long) val2$iv$iv$iv) & 4294967295L));
            } else {
                layer2 = layer;
            }
            long offset2 = IntOffset.m7637plusqkQi6aY(offset, $this$place_u24lambda_u2402.getContentOffset());
            if (!isLookingAhead && animation != null) {
                animation.m983setFinalOffsetgyyYBs(offset2);
            }
            if (layer2 != null) {
                Placeable.PlacementScope.m6210placeRelativeWithLayeraW9wM$default(scope, placeable, offset2, layer2, 0.0f, 4, (Object) null);
            } else {
                Placeable.PlacementScope.m6209placeRelativeWithLayeraW9wM$default(scope, placeable, offset2, 0.0f, (Function1) null, 6, (Object) null);
            }
            index$iv++;
            lazyStaggeredGridMeasuredItem = this;
            $this$place_u24lambda_u240 = $this$place_u24lambda_u2402;
            i3 = i;
            i4 = i2;
            list2 = list;
            $i$f$fastForEachIndexed2 = $i$f$fastForEachIndexed;
        }
    }

    public final void updateMainAxisLayoutSize(int mainAxisLayoutSize) {
        this.mainAxisLayoutSize = mainAxisLayoutSize;
        this.maxMainAxisOffset = this.afterContentPadding + mainAxisLayoutSize;
    }

    public final void applyScrollDelta(int delta, boolean updateAnimations) {
        int it;
        int it2;
        int i;
        int x$iv$iv;
        int y$iv$iv;
        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem = this;
        if (lazyStaggeredGridMeasuredItem.getNonScrollableItem()) {
            return;
        }
        long offset = lazyStaggeredGridMeasuredItem.getOffset();
        if (getIsVertical()) {
            it = IntOffset.m7633getXimpl(offset);
        } else {
            int it3 = IntOffset.m7633getXimpl(offset);
            it = it3 + delta;
        }
        if (getIsVertical()) {
            int it4 = IntOffset.m7634getYimpl(offset);
            it2 = it4 + delta;
        } else {
            it2 = IntOffset.m7634getYimpl(offset);
        }
        int val2$iv$iv$iv = it2;
        int val1$iv$iv$iv = it;
        lazyStaggeredGridMeasuredItem.offset = IntOffset.m7627constructorimpl((((long) val1$iv$iv$iv) << 32) | (((long) val2$iv$iv$iv) & 4294967295L));
        if (updateAnimations) {
            int placeablesCount = lazyStaggeredGridMeasuredItem.getPlaceablesCount();
            int i2 = 0;
            while (i2 < placeablesCount) {
                int index = i2;
                LazyLayoutItemAnimation animation = lazyStaggeredGridMeasuredItem.animator.getAnimation(lazyStaggeredGridMeasuredItem.getKey(), index);
                if (animation != null) {
                    long rawOffset = animation.getRawOffset();
                    if (getIsVertical()) {
                        x$iv$iv = IntOffset.m7633getXimpl(rawOffset);
                    } else {
                        int mainAxis = IntOffset.m7633getXimpl(rawOffset);
                        x$iv$iv = Integer.valueOf(mainAxis + delta).intValue();
                    }
                    if (getIsVertical()) {
                        int mainAxis2 = IntOffset.m7634getYimpl(rawOffset);
                        y$iv$iv = Integer.valueOf(mainAxis2 + delta).intValue();
                    } else {
                        y$iv$iv = IntOffset.m7634getYimpl(rawOffset);
                    }
                    int val2$iv$iv$iv2 = y$iv$iv;
                    int val1$iv$iv$iv2 = x$iv$iv;
                    i = placeablesCount;
                    animation.m985setRawOffsetgyyYBs(IntOffset.m7627constructorimpl((((long) val1$iv$iv$iv2) << 32) | (((long) val2$iv$iv$iv2) & 4294967295L)));
                } else {
                    i = placeablesCount;
                }
                i2++;
                lazyStaggeredGridMeasuredItem = this;
                placeablesCount = i;
            }
        }
    }

    /* JADX INFO: renamed from: getMainAxis--gyyYBs, reason: not valid java name */
    private final int m1049getMainAxisgyyYBs(long j) {
        return getIsVertical() ? IntOffset.m7634getYimpl(j) : IntOffset.m7633getXimpl(j);
    }

    private final int getMainAxisSize(Placeable $this$mainAxisSize) {
        return getIsVertical() ? $this$mainAxisSize.getHeight() : $this$mainAxisSize.getWidth();
    }

    /* JADX INFO: renamed from: copy-4Tuh3kE, reason: not valid java name */
    private final long m1048copy4Tuh3kE(long j, Function1<? super Integer, Integer> function1) {
        int x$iv = getIsVertical() ? IntOffset.m7633getXimpl(j) : function1.invoke(Integer.valueOf(IntOffset.m7633getXimpl(j))).intValue();
        int y$iv = getIsVertical() ? function1.invoke(Integer.valueOf(IntOffset.m7634getYimpl(j))).intValue() : IntOffset.m7634getYimpl(j);
        int val2$iv$iv = y$iv;
        int val1$iv$iv = x$iv;
        return IntOffset.m7627constructorimpl((((long) val1$iv$iv) << 32) | (((long) val2$iv$iv) & 4294967295L));
    }

    public String toString() {
        return super.toString();
    }
}
