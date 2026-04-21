package androidx.compose.material;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: Menu.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u001a\b\u0002\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\u0010\nJ2\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0016H\u0016ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u0016\u0010\u001c\u001a\u00020\u0003HÆ\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\fJ\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\u001b\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007HÆ\u0003JC\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u001a\b\u0002\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007HÆ\u0001ø\u0001\u0000¢\u0006\u0004\b!\u0010\"J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&HÖ\u0003J\t\u0010'\u001a\u00020(HÖ\u0001J\t\u0010)\u001a\u00020*HÖ\u0001R\u0019\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR#\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006+"}, d2 = {"Landroidx/compose/material/DropdownMenuPositionProvider;", "Landroidx/compose/ui/window/PopupPositionProvider;", "contentOffset", "Landroidx/compose/ui/unit/DpOffset;", "density", "Landroidx/compose/ui/unit/Density;", "onPositionCalculated", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/IntRect;", "", "(JLandroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getContentOffset-RKDOV3M", "()J", "J", "getDensity", "()Landroidx/compose/ui/unit/Density;", "getOnPositionCalculated", "()Lkotlin/jvm/functions/Function2;", "calculatePosition", "Landroidx/compose/ui/unit/IntOffset;", "anchorBounds", "windowSize", "Landroidx/compose/ui/unit/IntSize;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "popupContentSize", "calculatePosition-llwVHH4", "(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J", "component1", "component1-RKDOV3M", "component2", "component3", "copy", "copy-rOJDEFc", "(JLandroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function2;)Landroidx/compose/material/DropdownMenuPositionProvider;", "equals", "", "other", "", "hashCode", "", "toString", "", "material_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class DropdownMenuPositionProvider implements PopupPositionProvider {
    public static final int $stable = 0;
    private final long contentOffset;
    private final Density density;
    private final Function2<IntRect, IntRect, Unit> onPositionCalculated;

    public /* synthetic */ DropdownMenuPositionProvider(long j, Density density, Function2 function2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, density, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-rOJDEFc$default, reason: not valid java name */
    public static /* synthetic */ DropdownMenuPositionProvider m1820copyrOJDEFc$default(DropdownMenuPositionProvider dropdownMenuPositionProvider, long j, Density density, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = dropdownMenuPositionProvider.contentOffset;
        }
        if ((i & 2) != 0) {
            density = dropdownMenuPositionProvider.density;
        }
        if ((i & 4) != 0) {
            function2 = dropdownMenuPositionProvider.onPositionCalculated;
        }
        return dropdownMenuPositionProvider.m1822copyrOJDEFc(j, density, function2);
    }

    /* JADX INFO: renamed from: component1-RKDOV3M, reason: not valid java name and from getter */
    public final long getContentOffset() {
        return this.contentOffset;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Density getDensity() {
        return this.density;
    }

    public final Function2<IntRect, IntRect, Unit> component3() {
        return this.onPositionCalculated;
    }

    /* JADX INFO: renamed from: copy-rOJDEFc, reason: not valid java name */
    public final DropdownMenuPositionProvider m1822copyrOJDEFc(long contentOffset, Density density, Function2<? super IntRect, ? super IntRect, Unit> onPositionCalculated) {
        return new DropdownMenuPositionProvider(contentOffset, density, onPositionCalculated, null);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DropdownMenuPositionProvider)) {
            return false;
        }
        DropdownMenuPositionProvider dropdownMenuPositionProvider = (DropdownMenuPositionProvider) other;
        return DpOffset.m7565equalsimpl0(this.contentOffset, dropdownMenuPositionProvider.contentOffset) && Intrinsics.areEqual(this.density, dropdownMenuPositionProvider.density) && Intrinsics.areEqual(this.onPositionCalculated, dropdownMenuPositionProvider.onPositionCalculated);
    }

    public int hashCode() {
        return (((DpOffset.m7570hashCodeimpl(this.contentOffset) * 31) + this.density.hashCode()) * 31) + this.onPositionCalculated.hashCode();
    }

    public String toString() {
        return "DropdownMenuPositionProvider(contentOffset=" + ((Object) DpOffset.m7573toStringimpl(this.contentOffset)) + ", density=" + this.density + ", onPositionCalculated=" + this.onPositionCalculated + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DropdownMenuPositionProvider(long contentOffset, Density density, Function2<? super IntRect, ? super IntRect, Unit> function2) {
        this.contentOffset = contentOffset;
        this.density = density;
        this.onPositionCalculated = function2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ DropdownMenuPositionProvider(long j, Density density, Function2 function2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        Function2 function22;
        if ((i & 4) == 0) {
            function22 = function2;
        } else {
            function22 = new Function2<IntRect, IntRect, Unit>() { // from class: androidx.compose.material.DropdownMenuPositionProvider.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(IntRect intRect, IntRect intRect2) {
                    invoke2(intRect, intRect2);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(IntRect intRect, IntRect intRect2) {
                }
            };
        }
        this(j, density, function22, null);
    }

    /* JADX INFO: renamed from: getContentOffset-RKDOV3M, reason: not valid java name */
    public final long m1823getContentOffsetRKDOV3M() {
        return this.contentOffset;
    }

    public final Density getDensity() {
        return this.density;
    }

    public final Function2<IntRect, IntRect, Unit> getOnPositionCalculated() {
        return this.onPositionCalculated;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x014e A[LOOP:1: B:35:0x0119->B:47:0x014e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0158 A[EDGE_INSN: B:61:0x0158->B:49:0x0158 BREAK  A[LOOP:1: B:35:0x0119->B:47:0x014e], SYNTHETIC] */
    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* JADX INFO: renamed from: calculatePosition-llwVHH4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long mo373calculatePositionllwVHH4(IntRect anchorBounds, long windowSize, LayoutDirection layoutDirection, long popupContentSize) {
        Sequence $this$firstOrNull$iv;
        Object element$iv;
        Object element$iv2;
        int verticalMargin;
        int it;
        Density $this$calculatePosition_llwVHH4_u24lambda_u240 = this.density;
        int verticalMargin2 = $this$calculatePosition_llwVHH4_u24lambda_u240.mo399roundToPx0680j_4(MenuKt.getMenuVerticalMargin());
        Density $this$calculatePosition_llwVHH4_u24lambda_u241 = this.density;
        int contentOffsetX = $this$calculatePosition_llwVHH4_u24lambda_u241.mo399roundToPx0680j_4(DpOffset.m7566getXD9Ej5fM(this.contentOffset)) * (layoutDirection == LayoutDirection.Ltr ? 1 : -1);
        Density $this$calculatePosition_llwVHH4_u24lambda_u242 = this.density;
        int contentOffsetY = $this$calculatePosition_llwVHH4_u24lambda_u242.mo399roundToPx0680j_4(DpOffset.m7568getYD9Ej5fM(this.contentOffset));
        int leftToAnchorLeft = anchorBounds.getLeft() + contentOffsetX;
        int rightToAnchorRight = (anchorBounds.getRight() - IntSize.m7676getWidthimpl(popupContentSize)) + contentOffsetX;
        int rightToWindowRight = IntSize.m7676getWidthimpl(windowSize) - IntSize.m7676getWidthimpl(popupContentSize);
        if (layoutDirection == LayoutDirection.Ltr) {
            $this$firstOrNull$iv = SequencesKt.sequenceOf((Object[]) new Integer[]{Integer.valueOf(leftToAnchorLeft), Integer.valueOf(rightToAnchorRight), Integer.valueOf(anchorBounds.getLeft() >= 0 ? rightToWindowRight : 0)});
        } else {
            $this$firstOrNull$iv = SequencesKt.sequenceOf((Object[]) new Integer[]{Integer.valueOf(rightToAnchorRight), Integer.valueOf(leftToAnchorLeft), Integer.valueOf(anchorBounds.getRight() <= IntSize.m7676getWidthimpl(windowSize) ? 0 : rightToWindowRight)});
        }
        Iterator it2 = $this$firstOrNull$iv.iterator();
        while (true) {
            if (!it2.hasNext()) {
                element$iv = null;
                break;
            }
            element$iv = it2.next();
            int it3 = ((Number) element$iv).intValue();
            if (it3 >= 0 && it3 + IntSize.m7676getWidthimpl(popupContentSize) <= IntSize.m7676getWidthimpl(windowSize)) {
                break;
            }
        }
        Integer num = (Integer) element$iv;
        int x = num != null ? num.intValue() : rightToAnchorRight;
        int topToAnchorBottom = Math.max(anchorBounds.getBottom() + contentOffsetY, verticalMargin2);
        int bottomToAnchorTop = (anchorBounds.getTop() - IntSize.m7675getHeightimpl(popupContentSize)) + contentOffsetY;
        int centerToAnchorTop = (anchorBounds.getTop() - (IntSize.m7675getHeightimpl(popupContentSize) / 2)) + contentOffsetY;
        int bottomToWindowBottom = (IntSize.m7675getHeightimpl(windowSize) - IntSize.m7675getHeightimpl(popupContentSize)) - verticalMargin2;
        Sequence $this$firstOrNull$iv2 = SequencesKt.sequenceOf((Object[]) new Integer[]{Integer.valueOf(topToAnchorBottom), Integer.valueOf(bottomToAnchorTop), Integer.valueOf(centerToAnchorTop), Integer.valueOf(bottomToWindowBottom)});
        Iterator it4 = $this$firstOrNull$iv2.iterator();
        while (true) {
            if (!it4.hasNext()) {
                element$iv2 = null;
                break;
            }
            element$iv2 = it4.next();
            Sequence $this$firstOrNull$iv3 = $this$firstOrNull$iv2;
            int it5 = ((Number) element$iv2).intValue();
            if (it5 >= verticalMargin2) {
                verticalMargin = verticalMargin2;
                it = it5 + IntSize.m7675getHeightimpl(popupContentSize) <= IntSize.m7675getHeightimpl(windowSize) - verticalMargin ? 1 : 0;
                if (it == 0) {
                    break;
                }
                $this$firstOrNull$iv2 = $this$firstOrNull$iv3;
                verticalMargin2 = verticalMargin;
            } else {
                verticalMargin = verticalMargin2;
            }
            if (it == 0) {
            }
        }
        Integer num2 = (Integer) element$iv2;
        int y = num2 != null ? num2.intValue() : bottomToAnchorTop;
        this.onPositionCalculated.invoke(anchorBounds, new IntRect(x, y, IntSize.m7676getWidthimpl(popupContentSize) + x, IntSize.m7675getHeightimpl(popupContentSize) + y));
        return IntOffsetKt.IntOffset(x, y);
    }
}
