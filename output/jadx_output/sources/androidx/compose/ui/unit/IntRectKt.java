package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;

/* JADX INFO: compiled from: IntRect.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\n\u0010\u0007\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u001a \u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0014H\u0007\u001a\f\u0010\u0015\u001a\u00020\u0016*\u00020\u0001H\u0007\u001a\f\u0010\u0017\u001a\u00020\u0001*\u00020\u0016H\u0007¨\u0006\u0018"}, d2 = {"IntRect", "Landroidx/compose/ui/unit/IntRect;", "offset", "Landroidx/compose/ui/unit/IntOffset;", "size", "Landroidx/compose/ui/unit/IntSize;", "IntRect-VbeCjmY", "(JJ)Landroidx/compose/ui/unit/IntRect;", "topLeft", "bottomRight", "IntRect-E1MhUcY", TtmlNode.CENTER, "radius", "", "IntRect-ar5cAso", "(JI)Landroidx/compose/ui/unit/IntRect;", "lerp", TtmlNode.START, "stop", "fraction", "", "toRect", "Landroidx/compose/ui/geometry/Rect;", "roundToIntRect", "ui-unit"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class IntRectKt {
    /* JADX INFO: renamed from: IntRect-VbeCjmY, reason: not valid java name */
    public static final IntRect m7666IntRectVbeCjmY(long j, long j2) {
        return new IntRect(IntOffset.m7633getXimpl(j), IntOffset.m7634getYimpl(j), IntOffset.m7633getXimpl(j) + ((int) (j2 >> 32)), IntOffset.m7634getYimpl(j) + ((int) (4294967295L & j2)));
    }

    /* JADX INFO: renamed from: IntRect-E1MhUcY, reason: not valid java name */
    public static final IntRect m7665IntRectE1MhUcY(long j, long j2) {
        return new IntRect(IntOffset.m7633getXimpl(j), IntOffset.m7634getYimpl(j), IntOffset.m7633getXimpl(j2), IntOffset.m7634getYimpl(j2));
    }

    /* JADX INFO: renamed from: IntRect-ar5cAso, reason: not valid java name */
    public static final IntRect m7667IntRectar5cAso(long j, int radius) {
        return new IntRect(IntOffset.m7633getXimpl(j) - radius, IntOffset.m7634getYimpl(j) - radius, IntOffset.m7633getXimpl(j) + radius, IntOffset.m7634getYimpl(j) + radius);
    }

    public static final IntRect lerp(IntRect start, IntRect stop, float fraction) {
        return new IntRect(MathHelpersKt.lerp(start.getLeft(), stop.getLeft(), fraction), MathHelpersKt.lerp(start.getTop(), stop.getTop(), fraction), MathHelpersKt.lerp(start.getRight(), stop.getRight(), fraction), MathHelpersKt.lerp(start.getBottom(), stop.getBottom(), fraction));
    }

    public static final Rect toRect(IntRect $this$toRect) {
        return new Rect($this$toRect.getLeft(), $this$toRect.getTop(), $this$toRect.getRight(), $this$toRect.getBottom());
    }

    public static final IntRect roundToIntRect(Rect $this$roundToIntRect) {
        float $this$fastRoundToInt$iv = $this$roundToIntRect.getLeft();
        int iRound = Math.round($this$fastRoundToInt$iv);
        float $this$fastRoundToInt$iv2 = $this$roundToIntRect.getTop();
        int iRound2 = Math.round($this$fastRoundToInt$iv2);
        float $this$fastRoundToInt$iv3 = $this$roundToIntRect.getRight();
        int iRound3 = Math.round($this$fastRoundToInt$iv3);
        float $this$fastRoundToInt$iv4 = $this$roundToIntRect.getBottom();
        return new IntRect(iRound, iRound2, iRound3, Math.round($this$fastRoundToInt$iv4));
    }
}
