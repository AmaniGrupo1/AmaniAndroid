package androidx.compose.foundation.text.selection;

import kotlin.Metadata;

/* JADX INFO: compiled from: SelectionRegistrarImpl.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a/\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"inARow", "", "boxATopLeft", "Landroidx/compose/ui/geometry/Offset;", "boxABottomRight", "boxBTopLeft", "boxBBottomRight", "inARow-zwwh4xc", "(JJJJ)Z", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SelectionRegistrarImplKt {
    /* JADX INFO: renamed from: inARow-zwwh4xc, reason: not valid java name */
    public static final boolean m1645inARowzwwh4xc(long j, long j2, long j3, long j4) {
        int bits$iv$iv$iv = (int) (j2 & 4294967295L);
        int bits$iv$iv$iv2 = (int) (j & 4294967295L);
        float heightA = Float.intBitsToFloat(bits$iv$iv$iv) - Float.intBitsToFloat(bits$iv$iv$iv2);
        int bits$iv$iv$iv3 = (int) (j2 >> 32);
        int bits$iv$iv$iv4 = (int) (j >> 32);
        float widthA = Float.intBitsToFloat(bits$iv$iv$iv3) - Float.intBitsToFloat(bits$iv$iv$iv4);
        int bits$iv$iv$iv5 = (int) (j4 & 4294967295L);
        int bits$iv$iv$iv6 = (int) (j3 & 4294967295L);
        float heightB = Float.intBitsToFloat(bits$iv$iv$iv5) - Float.intBitsToFloat(bits$iv$iv$iv6);
        int bits$iv$iv$iv7 = (int) (j4 >> 32);
        int bits$iv$iv$iv8 = (int) (j3 >> 32);
        float widthB = Float.intBitsToFloat(bits$iv$iv$iv7) - Float.intBitsToFloat(bits$iv$iv$iv8);
        int bits$iv$iv$iv9 = (int) (j & 4294967295L);
        int bits$iv$iv$iv10 = (int) (j3 & 4294967295L);
        float vertInterTop = Math.max(Float.intBitsToFloat(bits$iv$iv$iv9), Float.intBitsToFloat(bits$iv$iv$iv10));
        int bits$iv$iv$iv11 = (int) (j2 & 4294967295L);
        int bits$iv$iv$iv12 = (int) (4294967295L & j4);
        float vertInterBottom = Math.min(Float.intBitsToFloat(bits$iv$iv$iv11), Float.intBitsToFloat(bits$iv$iv$iv12));
        float vertIntersection = Math.max(0.0f, vertInterBottom - vertInterTop);
        int bits$iv$iv$iv13 = (int) (j >> 32);
        int bits$iv$iv$iv14 = (int) (j3 >> 32);
        float horzInterLeft = Math.max(Float.intBitsToFloat(bits$iv$iv$iv13), Float.intBitsToFloat(bits$iv$iv$iv14));
        int bits$iv$iv$iv15 = (int) (j2 >> 32);
        int bits$iv$iv$iv16 = (int) (j4 >> 32);
        float horzInterRight = Math.min(Float.intBitsToFloat(bits$iv$iv$iv15), Float.intBitsToFloat(bits$iv$iv$iv16));
        float horzIntersection = Math.max(0.0f, horzInterRight - horzInterLeft);
        boolean isVerticallyAligned = vertIntersection >= heightA * 0.5f || vertIntersection >= heightB * 0.5f;
        boolean isHorizontallyDistinct = horzIntersection < widthA * 0.5f && horzIntersection < 0.5f * widthB;
        return isVerticallyAligned && isHorizontallyDistinct;
    }
}
