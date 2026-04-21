package androidx.compose.ui.geometry;

import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;

/* JADX INFO: compiled from: Rect.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0007\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\n\u0010\u0007\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u001a \u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\rH\u0007¨\u0006\u0014"}, d2 = {"Rect", "Landroidx/compose/ui/geometry/Rect;", "offset", "Landroidx/compose/ui/geometry/Offset;", "size", "Landroidx/compose/ui/geometry/Size;", "Rect-tz77jQw", "(JJ)Landroidx/compose/ui/geometry/Rect;", "topLeft", "bottomRight", "Rect-0a9Yr6o", TtmlNode.CENTER, "radius", "", "Rect-3MmeM6k", "(JF)Landroidx/compose/ui/geometry/Rect;", "lerp", TtmlNode.START, "stop", "fraction", "ui-geometry"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class RectKt {
    /* JADX INFO: renamed from: Rect-tz77jQw, reason: not valid java name */
    public static final Rect m4492Recttz77jQw(long j, long j2) {
        int bits$iv$iv$iv = (int) (j >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv);
        int bits$iv$iv$iv2 = (int) (j & 4294967295L);
        float fIntBitsToFloat2 = Float.intBitsToFloat(bits$iv$iv$iv2);
        int bits$iv$iv$iv3 = (int) (j >> 32);
        int bits$iv$iv$iv4 = (int) (j2 >> 32);
        float fIntBitsToFloat3 = Float.intBitsToFloat(bits$iv$iv$iv3) + Float.intBitsToFloat(bits$iv$iv$iv4);
        int bits$iv$iv$iv5 = (int) (j & 4294967295L);
        int bits$iv$iv$iv6 = (int) (4294967295L & j2);
        return new Rect(fIntBitsToFloat, fIntBitsToFloat2, fIntBitsToFloat3, Float.intBitsToFloat(bits$iv$iv$iv5) + Float.intBitsToFloat(bits$iv$iv$iv6));
    }

    /* JADX INFO: renamed from: Rect-0a9Yr6o, reason: not valid java name */
    public static final Rect m4490Rect0a9Yr6o(long j, long j2) {
        int bits$iv$iv$iv = (int) (j >> 32);
        int bits$iv$iv$iv2 = (int) (j & 4294967295L);
        int bits$iv$iv$iv3 = (int) (j2 >> 32);
        int bits$iv$iv$iv4 = (int) (4294967295L & j2);
        return new Rect(Float.intBitsToFloat(bits$iv$iv$iv), Float.intBitsToFloat(bits$iv$iv$iv2), Float.intBitsToFloat(bits$iv$iv$iv3), Float.intBitsToFloat(bits$iv$iv$iv4));
    }

    /* JADX INFO: renamed from: Rect-3MmeM6k, reason: not valid java name */
    public static final Rect m4491Rect3MmeM6k(long j, float radius) {
        int bits$iv$iv$iv = (int) (j >> 32);
        int bits$iv$iv$iv2 = (int) (j & 4294967295L);
        int bits$iv$iv$iv3 = (int) (j >> 32);
        int bits$iv$iv$iv4 = (int) (4294967295L & j);
        return new Rect(Float.intBitsToFloat(bits$iv$iv$iv) - radius, Float.intBitsToFloat(bits$iv$iv$iv2) - radius, Float.intBitsToFloat(bits$iv$iv$iv3) + radius, Float.intBitsToFloat(bits$iv$iv$iv4) + radius);
    }

    public static final Rect lerp(Rect start, Rect stop, float fraction) {
        return new Rect(MathHelpersKt.lerp(start.getLeft(), stop.getLeft(), fraction), MathHelpersKt.lerp(start.getTop(), stop.getTop(), fraction), MathHelpersKt.lerp(start.getRight(), stop.getRight(), fraction), MathHelpersKt.lerp(start.getBottom(), stop.getBottom(), fraction));
    }
}
