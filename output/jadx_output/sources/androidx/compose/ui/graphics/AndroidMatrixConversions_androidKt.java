package androidx.compose.ui.graphics;

import kotlin.Metadata;

/* JADX INFO: compiled from: AndroidMatrixConversions.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"setFrom", "", "Landroidx/compose/ui/graphics/Matrix;", "matrix", "Landroid/graphics/Matrix;", "setFrom-tU-YjHk", "([FLandroid/graphics/Matrix;)V", "setFrom-EL8BTi8", "(Landroid/graphics/Matrix;[F)V", "ui-graphics"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class AndroidMatrixConversions_androidKt {
    /* JADX INFO: renamed from: setFrom-tU-YjHk, reason: not valid java name */
    public static final void m4565setFromtUYjHk(float[] fArr, android.graphics.Matrix matrix) {
        matrix.getValues(fArr);
        float scaleX = fArr[0];
        float skewX = fArr[1];
        float translateX = fArr[2];
        float skewY = fArr[3];
        float scaleY = fArr[4];
        float translateY = fArr[5];
        float persp0 = fArr[6];
        float persp1 = fArr[7];
        float persp2 = fArr[8];
        fArr[0] = scaleX;
        fArr[1] = skewY;
        fArr[2] = 0.0f;
        fArr[3] = persp0;
        fArr[4] = skewX;
        fArr[5] = scaleY;
        fArr[6] = 0.0f;
        fArr[7] = persp1;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = translateX;
        fArr[13] = translateY;
        fArr[14] = 0.0f;
        fArr[15] = persp2;
    }

    /* JADX INFO: renamed from: setFrom-EL8BTi8, reason: not valid java name */
    public static final void m4564setFromEL8BTi8(android.graphics.Matrix $this$setFrom_u2dEL8BTi8, float[] fArr) {
        float scaleX = fArr[0];
        float skewY = fArr[1];
        float v2 = fArr[2];
        float persp0 = fArr[3];
        float skewX = fArr[4];
        float scaleY = fArr[5];
        float v6 = fArr[6];
        float persp1 = fArr[7];
        float v8 = fArr[8];
        float translateX = fArr[12];
        float translateY = fArr[13];
        float persp2 = fArr[15];
        fArr[0] = scaleX;
        fArr[1] = skewX;
        fArr[2] = translateX;
        fArr[3] = skewY;
        fArr[4] = scaleY;
        fArr[5] = translateY;
        fArr[6] = persp0;
        fArr[7] = persp1;
        fArr[8] = persp2;
        $this$setFrom_u2dEL8BTi8.setValues(fArr);
        fArr[0] = scaleX;
        fArr[1] = skewY;
        fArr[2] = v2;
        fArr[3] = persp0;
        fArr[4] = skewX;
        fArr[5] = scaleY;
        fArr[6] = v6;
        fArr[7] = persp1;
        fArr[8] = v8;
    }
}
