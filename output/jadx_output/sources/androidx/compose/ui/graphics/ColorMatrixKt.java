package androidx.compose.ui.graphics;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;

/* JADX INFO: compiled from: ColorMatrix.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0082\b¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {TtmlNode.TEXT_EMPHASIS_MARK_DOT, "", "m1", "Landroidx/compose/ui/graphics/ColorMatrix;", "row", "", "m2", "column", "dot-Me4OoYI", "([FI[FI)F", "ui-graphics"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ColorMatrixKt {
    /* JADX INFO: renamed from: dot-Me4OoYI, reason: not valid java name */
    private static final float m4777dotMe4OoYI(float[] fArr, int row, float[] fArr2, int column) {
        return (fArr[(row * 5) + 0] * fArr2[(0 * 5) + column]) + (fArr[(row * 5) + 1] * fArr2[(1 * 5) + column]) + (fArr[(row * 5) + 2] * fArr2[(2 * 5) + column]) + (fArr[(row * 5) + 3] * fArr2[(3 * 5) + column]);
    }
}
