package androidx.compose.ui.graphics;

import androidx.autofill.HintConstants;
import androidx.core.text.util.LocalePreferences;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ColorMatrix.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0086\n¢\u0006\u0004\b\r\u0010\u000eJ(\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\tH\u0086\n¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0010H\u0086\b¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0000¢\u0006\u0004\b\u0018\u0010\u0019JP\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\t26\u0010\u001c\u001a2\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0013\u0012\u00110\t¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(!\u0012\u0004\u0012\u00020\u00100\u001dH\u0082\b¢\u0006\u0004\b\"\u0010#J\u0018\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b&\u0010\u0019J\u0015\u0010'\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\t¢\u0006\u0004\b)\u0010*J-\u0010+\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t¢\u0006\u0004\b0\u00101J\u0015\u00102\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\t¢\u0006\u0004\b3\u0010*J\u0015\u00104\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\t¢\u0006\u0004\b5\u0010*J\u0015\u00106\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\t¢\u0006\u0004\b7\u0010*J\r\u00108\u001a\u00020\u0010¢\u0006\u0004\b9\u0010\u0016J\r\u0010:\u001a\u00020\u0010¢\u0006\u0004\b;\u0010\u0016J\u0013\u0010<\u001a\u00020=2\b\u0010>\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010?\u001a\u00020\u000bHÖ\u0001J\t\u0010@\u001a\u00020AHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002¨\u0006B"}, d2 = {"Landroidx/compose/ui/graphics/ColorMatrix;", "", "values", "", "constructor-impl", "([F)[F", "getValues", "()[F", "get", "", "row", "", "column", "get-impl", "([FII)F", "set", "", "v", "set-impl", "([FIIF)V", "reset", "reset-impl", "([F)V", "src", "set-jHG-Opc", "([F[F)V", "rotateInternal", "degrees", "block", "Lkotlin/Function2;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "cosine", "sine", "rotateInternal-impl", "([FFLkotlin/jvm/functions/Function2;)V", "timesAssign", "colorMatrix", "timesAssign-jHG-Opc", "setToSaturation", LocalePreferences.FirstDayOfWeek.SATURDAY, "setToSaturation-impl", "([FF)V", "setToScale", "redScale", "greenScale", "blueScale", "alphaScale", "setToScale-impl", "([FFFFF)V", "setToRotateRed", "setToRotateRed-impl", "setToRotateGreen", "setToRotateGreen-impl", "setToRotateBlue", "setToRotateBlue-impl", "convertRgbToYuv", "convertRgbToYuv-impl", "convertYuvToRgb", "convertYuvToRgb-impl", "equals", "", "other", "hashCode", "toString", "", "ui-graphics"}, k = 1, mv = {2, 0, 0}, xi = 48)
@JvmInline
public final class ColorMatrix {
    private final float[] values;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ColorMatrix m4752boximpl(float[] fArr) {
        return new ColorMatrix(fArr);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static float[] m4753constructorimpl(float[] fArr) {
        return fArr;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m4757equalsimpl(float[] fArr, Object obj) {
        return (obj instanceof ColorMatrix) && Intrinsics.areEqual(fArr, ((ColorMatrix) obj).m4772unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4758equalsimpl0(float[] fArr, float[] fArr2) {
        return Intrinsics.areEqual(fArr, fArr2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m4760hashCodeimpl(float[] fArr) {
        return Arrays.hashCode(fArr);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m4771toStringimpl(float[] fArr) {
        return "ColorMatrix(values=" + Arrays.toString(fArr) + ')';
    }

    public boolean equals(Object other) {
        return m4757equalsimpl(this.values, other);
    }

    public int hashCode() {
        return m4760hashCodeimpl(this.values);
    }

    public String toString() {
        return m4771toStringimpl(this.values);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ float[] m4772unboximpl() {
        return this.values;
    }

    private /* synthetic */ ColorMatrix(float[] values) {
        this.values = values;
    }

    /* JADX INFO: renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ float[] m4754constructorimpl$default(float[] fArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            fArr = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f};
        }
        return m4753constructorimpl(fArr);
    }

    public final float[] getValues() {
        return this.values;
    }

    /* JADX INFO: renamed from: get-impl, reason: not valid java name */
    public static final float m4759getimpl(float[] fArr, int row, int column) {
        return fArr[(row * 5) + column];
    }

    /* JADX INFO: renamed from: set-impl, reason: not valid java name */
    public static final void m4763setimpl(float[] fArr, int row, int column, float v) {
        fArr[(row * 5) + column] = v;
    }

    /* JADX INFO: renamed from: reset-impl, reason: not valid java name */
    public static final void m4761resetimpl(float[] fArr) {
        fArr[(0 * 5) + 0] = 1.0f;
        fArr[(0 * 5) + 1] = 0.0f;
        fArr[(0 * 5) + 2] = 0.0f;
        fArr[(0 * 5) + 3] = 0.0f;
        fArr[(0 * 5) + 4] = 0.0f;
        fArr[(1 * 5) + 0] = 0.0f;
        fArr[(1 * 5) + 1] = 1.0f;
        fArr[(1 * 5) + 2] = 0.0f;
        fArr[(1 * 5) + 3] = 0.0f;
        fArr[(1 * 5) + 4] = 0.0f;
        fArr[(2 * 5) + 0] = 0.0f;
        fArr[(2 * 5) + 1] = 0.0f;
        fArr[(2 * 5) + 2] = 1.0f;
        fArr[(2 * 5) + 3] = 0.0f;
        fArr[(2 * 5) + 4] = 0.0f;
        fArr[(3 * 5) + 0] = 0.0f;
        fArr[(3 * 5) + 1] = 0.0f;
        fArr[(3 * 5) + 2] = 0.0f;
        fArr[(3 * 5) + 3] = 1.0f;
        fArr[(3 * 5) + 4] = 0.0f;
    }

    /* JADX INFO: renamed from: set-jHG-Opc, reason: not valid java name */
    public static final void m4764setjHGOpc(float[] fArr, float[] fArr2) {
        if (fArr.length >= 20 && fArr2.length >= 20) {
            fArr[0] = fArr2[0];
            fArr[1] = fArr2[1];
            fArr[2] = fArr2[2];
            fArr[3] = fArr2[3];
            fArr[4] = fArr2[4];
            fArr[5] = fArr2[5];
            fArr[6] = fArr2[6];
            fArr[7] = fArr2[7];
            fArr[8] = fArr2[8];
            fArr[9] = fArr2[9];
            fArr[10] = fArr2[10];
            fArr[11] = fArr2[11];
            fArr[12] = fArr2[12];
            fArr[13] = fArr2[13];
            fArr[14] = fArr2[14];
            fArr[15] = fArr2[15];
            fArr[16] = fArr2[16];
            fArr[17] = fArr2[17];
            fArr[18] = fArr2[18];
            fArr[19] = fArr2[19];
        }
    }

    /* JADX INFO: renamed from: rotateInternal-impl, reason: not valid java name */
    private static final void m4762rotateInternalimpl(float[] fArr, float degrees, Function2<? super Float, ? super Float, Unit> function2) {
        fArr[(0 * 5) + 0] = 1.0f;
        fArr[(0 * 5) + 1] = 0.0f;
        fArr[(0 * 5) + 2] = 0.0f;
        fArr[(0 * 5) + 3] = 0.0f;
        fArr[(0 * 5) + 4] = 0.0f;
        fArr[(1 * 5) + 0] = 0.0f;
        fArr[(1 * 5) + 1] = 1.0f;
        fArr[(1 * 5) + 2] = 0.0f;
        fArr[(1 * 5) + 3] = 0.0f;
        fArr[(1 * 5) + 4] = 0.0f;
        fArr[(2 * 5) + 0] = 0.0f;
        fArr[(2 * 5) + 1] = 0.0f;
        fArr[(2 * 5) + 2] = 1.0f;
        fArr[(2 * 5) + 3] = 0.0f;
        fArr[(2 * 5) + 4] = 0.0f;
        fArr[(3 * 5) + 0] = 0.0f;
        fArr[(3 * 5) + 1] = 0.0f;
        fArr[(3 * 5) + 2] = 0.0f;
        fArr[(3 * 5) + 3] = 1.0f;
        fArr[(3 * 5) + 4] = 0.0f;
        float normalizedAngle = 0.0027777778f * degrees;
        float normalizedDegrees$iv$iv = 0.25f + normalizedAngle;
        float degrees$iv$iv = normalizedDegrees$iv$iv - ((float) Math.floor(normalizedDegrees$iv$iv + 0.5f));
        float x$iv$iv = Math.abs(degrees$iv$iv) * 2.0f;
        float a$iv$iv = 1.0f - x$iv$iv;
        float cosine = ((degrees$iv$iv * 8.0f) * a$iv$iv) / (1.25f - (x$iv$iv * a$iv$iv));
        float degrees$iv = normalizedAngle - ((float) Math.floor(0.5f + normalizedAngle));
        float x$iv = Math.abs(degrees$iv) * 2.0f;
        float a$iv = 1.0f - x$iv;
        float sine = ((8.0f * degrees$iv) * a$iv) / (1.25f - (x$iv * a$iv));
        function2.invoke(Float.valueOf(cosine), Float.valueOf(sine));
    }

    /* JADX INFO: renamed from: timesAssign-jHG-Opc, reason: not valid java name */
    public static final void m4770timesAssignjHGOpc(float[] fArr, float[] fArr2) {
        if (fArr.length < 20) {
            return;
        }
        float v00 = (fArr[(0 * 5) + 0] * fArr2[(0 * 5) + 0]) + (fArr[(0 * 5) + 1] * fArr2[(1 * 5) + 0]) + (fArr[(0 * 5) + 2] * fArr2[(2 * 5) + 0]) + (fArr[(0 * 5) + 3] * fArr2[(3 * 5) + 0]);
        float v01 = (fArr[(0 * 5) + 0] * fArr2[(0 * 5) + 1]) + (fArr[(0 * 5) + 1] * fArr2[(1 * 5) + 1]) + (fArr[(0 * 5) + 2] * fArr2[(2 * 5) + 1]) + (fArr[(0 * 5) + 3] * fArr2[(3 * 5) + 1]);
        float v02 = (fArr[(0 * 5) + 0] * fArr2[(0 * 5) + 2]) + (fArr[(0 * 5) + 1] * fArr2[(1 * 5) + 2]) + (fArr[(0 * 5) + 2] * fArr2[(2 * 5) + 2]) + (fArr[(0 * 5) + 3] * fArr2[(3 * 5) + 2]);
        float v03 = (fArr[(0 * 5) + 0] * fArr2[(0 * 5) + 3]) + (fArr[(0 * 5) + 1] * fArr2[(1 * 5) + 3]) + (fArr[(0 * 5) + 2] * fArr2[(2 * 5) + 3]) + (fArr[(0 * 5) + 3] * fArr2[(3 * 5) + 3]);
        float v04 = (fArr[(0 * 5) + 0] * fArr2[(0 * 5) + 4]) + (fArr[(0 * 5) + 1] * fArr2[(1 * 5) + 4]) + (fArr[(0 * 5) + 2] * fArr2[(2 * 5) + 4]) + (fArr[(0 * 5) + 3] * fArr2[(3 * 5) + 4]) + fArr[(0 * 5) + 4];
        float v10 = (fArr[(1 * 5) + 0] * fArr2[(0 * 5) + 0]) + (fArr[(1 * 5) + 1] * fArr2[(1 * 5) + 0]) + (fArr[(1 * 5) + 2] * fArr2[(2 * 5) + 0]) + (fArr[(1 * 5) + 3] * fArr2[(3 * 5) + 0]);
        float v11 = (fArr[(1 * 5) + 0] * fArr2[(0 * 5) + 1]) + (fArr[(1 * 5) + 1] * fArr2[(1 * 5) + 1]) + (fArr[(1 * 5) + 2] * fArr2[(2 * 5) + 1]) + (fArr[(1 * 5) + 3] * fArr2[(3 * 5) + 1]);
        float v12 = (fArr[(1 * 5) + 0] * fArr2[(0 * 5) + 2]) + (fArr[(1 * 5) + 1] * fArr2[(1 * 5) + 2]) + (fArr[(1 * 5) + 2] * fArr2[(2 * 5) + 2]) + (fArr[(1 * 5) + 3] * fArr2[(3 * 5) + 2]);
        float v13 = (fArr[(1 * 5) + 0] * fArr2[(0 * 5) + 3]) + (fArr[(1 * 5) + 1] * fArr2[(1 * 5) + 3]) + (fArr[(1 * 5) + 2] * fArr2[(2 * 5) + 3]) + (fArr[(1 * 5) + 3] * fArr2[(3 * 5) + 3]);
        float v14 = (fArr[(1 * 5) + 0] * fArr2[(0 * 5) + 4]) + (fArr[(1 * 5) + 1] * fArr2[(1 * 5) + 4]) + (fArr[(1 * 5) + 2] * fArr2[(2 * 5) + 4]) + (fArr[(1 * 5) + 3] * fArr2[(3 * 5) + 4]) + fArr[(1 * 5) + 4];
        float v20 = (fArr[(2 * 5) + 0] * fArr2[(0 * 5) + 0]) + (fArr[(2 * 5) + 1] * fArr2[(1 * 5) + 0]) + (fArr[(2 * 5) + 2] * fArr2[(2 * 5) + 0]) + (fArr[(2 * 5) + 3] * fArr2[(3 * 5) + 0]);
        float v21 = (fArr[(2 * 5) + 0] * fArr2[(0 * 5) + 1]) + (fArr[(2 * 5) + 1] * fArr2[(1 * 5) + 1]) + (fArr[(2 * 5) + 2] * fArr2[(2 * 5) + 1]) + (fArr[(2 * 5) + 3] * fArr2[(3 * 5) + 1]);
        float v22 = (fArr[(2 * 5) + 0] * fArr2[(0 * 5) + 2]) + (fArr[(2 * 5) + 1] * fArr2[(1 * 5) + 2]) + (fArr[(2 * 5) + 2] * fArr2[(2 * 5) + 2]) + (fArr[(2 * 5) + 3] * fArr2[(3 * 5) + 2]);
        float v23 = (fArr[(2 * 5) + 0] * fArr2[(0 * 5) + 3]) + (fArr[(2 * 5) + 1] * fArr2[(1 * 5) + 3]) + (fArr[(2 * 5) + 2] * fArr2[(2 * 5) + 3]) + (fArr[(2 * 5) + 3] * fArr2[(3 * 5) + 3]);
        float v24 = (fArr[(2 * 5) + 0] * fArr2[(0 * 5) + 4]) + (fArr[(2 * 5) + 1] * fArr2[(1 * 5) + 4]) + (fArr[(2 * 5) + 2] * fArr2[(2 * 5) + 4]) + (fArr[(2 * 5) + 3] * fArr2[(3 * 5) + 4]) + fArr[(2 * 5) + 4];
        float v30 = (fArr[(3 * 5) + 0] * fArr2[(0 * 5) + 0]) + (fArr[(3 * 5) + 1] * fArr2[(1 * 5) + 0]) + (fArr[(3 * 5) + 2] * fArr2[(2 * 5) + 0]) + (fArr[(3 * 5) + 3] * fArr2[(3 * 5) + 0]);
        float v31 = (fArr[(3 * 5) + 0] * fArr2[(0 * 5) + 1]) + (fArr[(3 * 5) + 1] * fArr2[(1 * 5) + 1]) + (fArr[(3 * 5) + 2] * fArr2[(2 * 5) + 1]) + (fArr[(3 * 5) + 3] * fArr2[(3 * 5) + 1]);
        float v32 = (fArr[(3 * 5) + 0] * fArr2[(0 * 5) + 2]) + (fArr[(3 * 5) + 1] * fArr2[(1 * 5) + 2]) + (fArr[(3 * 5) + 2] * fArr2[(2 * 5) + 2]) + (fArr[(3 * 5) + 3] * fArr2[(3 * 5) + 2]);
        float v33 = (fArr[(3 * 5) + 0] * fArr2[(0 * 5) + 3]) + (fArr[(3 * 5) + 1] * fArr2[(1 * 5) + 3]) + (fArr[(3 * 5) + 2] * fArr2[(2 * 5) + 3]) + (fArr[(3 * 5) + 3] * fArr2[(3 * 5) + 3]);
        float v34 = (fArr[(3 * 5) + 0] * fArr2[(0 * 5) + 4]) + (fArr[(3 * 5) + 1] * fArr2[(1 * 5) + 4]) + (fArr[(3 * 5) + 2] * fArr2[(2 * 5) + 4]) + (fArr[(3 * 5) + 3] * fArr2[(3 * 5) + 4]) + fArr[(3 * 5) + 4];
        fArr[(0 * 5) + 0] = v00;
        fArr[(0 * 5) + 1] = v01;
        fArr[(0 * 5) + 2] = v02;
        fArr[(0 * 5) + 3] = v03;
        fArr[(0 * 5) + 4] = v04;
        fArr[(1 * 5) + 0] = v10;
        fArr[(1 * 5) + 1] = v11;
        fArr[(1 * 5) + 2] = v12;
        fArr[(1 * 5) + 3] = v13;
        fArr[(1 * 5) + 4] = v14;
        fArr[(2 * 5) + 0] = v20;
        fArr[(2 * 5) + 1] = v21;
        fArr[(2 * 5) + 2] = v22;
        fArr[(2 * 5) + 3] = v23;
        fArr[(2 * 5) + 4] = v24;
        fArr[(3 * 5) + 0] = v30;
        fArr[(3 * 5) + 1] = v31;
        fArr[(3 * 5) + 2] = v32;
        fArr[(3 * 5) + 3] = v33;
        fArr[(3 * 5) + 4] = v34;
    }

    /* JADX INFO: renamed from: setToSaturation-impl, reason: not valid java name */
    public static final void m4768setToSaturationimpl(float[] fArr, float sat) {
        if (fArr.length < 20) {
            return;
        }
        fArr[(0 * 5) + 0] = 1.0f;
        fArr[(0 * 5) + 1] = 0.0f;
        fArr[(0 * 5) + 2] = 0.0f;
        fArr[(0 * 5) + 3] = 0.0f;
        fArr[(0 * 5) + 4] = 0.0f;
        fArr[(1 * 5) + 0] = 0.0f;
        fArr[(1 * 5) + 1] = 1.0f;
        fArr[(1 * 5) + 2] = 0.0f;
        fArr[(1 * 5) + 3] = 0.0f;
        fArr[(1 * 5) + 4] = 0.0f;
        fArr[(2 * 5) + 0] = 0.0f;
        fArr[(2 * 5) + 1] = 0.0f;
        fArr[(2 * 5) + 2] = 1.0f;
        fArr[(2 * 5) + 3] = 0.0f;
        fArr[(2 * 5) + 4] = 0.0f;
        fArr[(3 * 5) + 0] = 0.0f;
        fArr[(3 * 5) + 1] = 0.0f;
        fArr[(3 * 5) + 2] = 0.0f;
        fArr[(3 * 5) + 3] = 1.0f;
        fArr[(3 * 5) + 4] = 0.0f;
        float invSat = 1 - sat;
        float r = 0.213f * invSat;
        float g = 0.715f * invSat;
        float b = 0.072f * invSat;
        float v$iv = r + sat;
        fArr[(0 * 5) + 0] = v$iv;
        fArr[(0 * 5) + 1] = g;
        fArr[(0 * 5) + 2] = b;
        fArr[(1 * 5) + 0] = r;
        float v$iv2 = g + sat;
        fArr[(1 * 5) + 1] = v$iv2;
        fArr[(1 * 5) + 2] = b;
        fArr[(2 * 5) + 0] = r;
        fArr[(2 * 5) + 1] = g;
        float v$iv3 = b + sat;
        fArr[(2 * 5) + 2] = v$iv3;
    }

    /* JADX INFO: renamed from: setToScale-impl, reason: not valid java name */
    public static final void m4769setToScaleimpl(float[] fArr, float redScale, float greenScale, float blueScale, float alphaScale) {
        if (fArr.length < 20) {
            return;
        }
        fArr[(0 * 5) + 0] = 1.0f;
        fArr[(0 * 5) + 1] = 0.0f;
        fArr[(0 * 5) + 2] = 0.0f;
        fArr[(0 * 5) + 3] = 0.0f;
        fArr[(0 * 5) + 4] = 0.0f;
        fArr[(1 * 5) + 0] = 0.0f;
        fArr[(1 * 5) + 1] = 1.0f;
        fArr[(1 * 5) + 2] = 0.0f;
        fArr[(1 * 5) + 3] = 0.0f;
        fArr[(1 * 5) + 4] = 0.0f;
        fArr[(2 * 5) + 0] = 0.0f;
        fArr[(2 * 5) + 1] = 0.0f;
        fArr[(2 * 5) + 2] = 1.0f;
        fArr[(2 * 5) + 3] = 0.0f;
        fArr[(2 * 5) + 4] = 0.0f;
        fArr[(3 * 5) + 0] = 0.0f;
        fArr[(3 * 5) + 1] = 0.0f;
        fArr[(3 * 5) + 2] = 0.0f;
        fArr[(3 * 5) + 3] = 1.0f;
        fArr[(3 * 5) + 4] = 0.0f;
        fArr[(0 * 5) + 0] = redScale;
        fArr[(1 * 5) + 1] = greenScale;
        fArr[(2 * 5) + 2] = blueScale;
        fArr[(3 * 5) + 3] = alphaScale;
    }

    /* JADX INFO: renamed from: setToRotateRed-impl, reason: not valid java name */
    public static final void m4767setToRotateRedimpl(float[] fArr, float degrees) {
        if (fArr.length < 20) {
            return;
        }
        fArr[(0 * 5) + 0] = 1.0f;
        fArr[(0 * 5) + 1] = 0.0f;
        fArr[(0 * 5) + 2] = 0.0f;
        fArr[(0 * 5) + 3] = 0.0f;
        fArr[(0 * 5) + 4] = 0.0f;
        fArr[(1 * 5) + 0] = 0.0f;
        fArr[(1 * 5) + 1] = 1.0f;
        fArr[(1 * 5) + 2] = 0.0f;
        fArr[(1 * 5) + 3] = 0.0f;
        fArr[(1 * 5) + 4] = 0.0f;
        fArr[(2 * 5) + 0] = 0.0f;
        fArr[(2 * 5) + 1] = 0.0f;
        fArr[(2 * 5) + 2] = 1.0f;
        fArr[(2 * 5) + 3] = 0.0f;
        fArr[(2 * 5) + 4] = 0.0f;
        fArr[(3 * 5) + 0] = 0.0f;
        fArr[(3 * 5) + 1] = 0.0f;
        fArr[(3 * 5) + 2] = 0.0f;
        fArr[(3 * 5) + 3] = 1.0f;
        fArr[(3 * 5) + 4] = 0.0f;
        float normalizedAngle$iv = 0.0027777778f * degrees;
        float normalizedDegrees$iv$iv$iv = 0.25f + normalizedAngle$iv;
        float degrees$iv$iv$iv = normalizedDegrees$iv$iv$iv - ((float) Math.floor(normalizedDegrees$iv$iv$iv + 0.5f));
        float x$iv$iv$iv = Math.abs(degrees$iv$iv$iv) * 2.0f;
        float a$iv$iv$iv = 1.0f - x$iv$iv$iv;
        float cosine$iv = ((degrees$iv$iv$iv * 8.0f) * a$iv$iv$iv) / (1.25f - (x$iv$iv$iv * a$iv$iv$iv));
        float degrees$iv$iv = normalizedAngle$iv - ((float) Math.floor(0.5f + normalizedAngle$iv));
        float x$iv$iv = Math.abs(degrees$iv$iv) * 2.0f;
        float a$iv$iv = 1.0f - x$iv$iv;
        float sine$iv = ((8.0f * degrees$iv$iv) * a$iv$iv) / (1.25f - (x$iv$iv * a$iv$iv));
        fArr[(1 * 5) + 1] = cosine$iv;
        fArr[(1 * 5) + 2] = sine$iv;
        float v$iv = -sine$iv;
        fArr[(2 * 5) + 1] = v$iv;
        fArr[(2 * 5) + 2] = cosine$iv;
    }

    /* JADX INFO: renamed from: setToRotateGreen-impl, reason: not valid java name */
    public static final void m4766setToRotateGreenimpl(float[] fArr, float degrees) {
        if (fArr.length < 20) {
            return;
        }
        fArr[(0 * 5) + 0] = 1.0f;
        fArr[(0 * 5) + 1] = 0.0f;
        fArr[(0 * 5) + 2] = 0.0f;
        fArr[(0 * 5) + 3] = 0.0f;
        fArr[(0 * 5) + 4] = 0.0f;
        fArr[(1 * 5) + 0] = 0.0f;
        fArr[(1 * 5) + 1] = 1.0f;
        fArr[(1 * 5) + 2] = 0.0f;
        fArr[(1 * 5) + 3] = 0.0f;
        fArr[(1 * 5) + 4] = 0.0f;
        fArr[(2 * 5) + 0] = 0.0f;
        fArr[(2 * 5) + 1] = 0.0f;
        fArr[(2 * 5) + 2] = 1.0f;
        fArr[(2 * 5) + 3] = 0.0f;
        fArr[(2 * 5) + 4] = 0.0f;
        fArr[(3 * 5) + 0] = 0.0f;
        fArr[(3 * 5) + 1] = 0.0f;
        fArr[(3 * 5) + 2] = 0.0f;
        fArr[(3 * 5) + 3] = 1.0f;
        fArr[(3 * 5) + 4] = 0.0f;
        float normalizedAngle$iv = 0.0027777778f * degrees;
        float normalizedDegrees$iv$iv$iv = 0.25f + normalizedAngle$iv;
        float degrees$iv$iv$iv = normalizedDegrees$iv$iv$iv - ((float) Math.floor(normalizedDegrees$iv$iv$iv + 0.5f));
        float x$iv$iv$iv = Math.abs(degrees$iv$iv$iv) * 2.0f;
        float a$iv$iv$iv = 1.0f - x$iv$iv$iv;
        float cosine$iv = ((degrees$iv$iv$iv * 8.0f) * a$iv$iv$iv) / (1.25f - (x$iv$iv$iv * a$iv$iv$iv));
        float degrees$iv$iv = normalizedAngle$iv - ((float) Math.floor(0.5f + normalizedAngle$iv));
        float x$iv$iv = Math.abs(degrees$iv$iv) * 2.0f;
        float a$iv$iv = 1.0f - x$iv$iv;
        float sine$iv = ((8.0f * degrees$iv$iv) * a$iv$iv) / (1.25f - (x$iv$iv * a$iv$iv));
        fArr[(0 * 5) + 0] = cosine$iv;
        float v$iv = -sine$iv;
        fArr[(0 * 5) + 2] = v$iv;
        fArr[(2 * 5) + 0] = sine$iv;
        fArr[(2 * 5) + 2] = cosine$iv;
    }

    /* JADX INFO: renamed from: setToRotateBlue-impl, reason: not valid java name */
    public static final void m4765setToRotateBlueimpl(float[] fArr, float degrees) {
        if (fArr.length < 20) {
            return;
        }
        fArr[(0 * 5) + 0] = 1.0f;
        fArr[(0 * 5) + 1] = 0.0f;
        fArr[(0 * 5) + 2] = 0.0f;
        fArr[(0 * 5) + 3] = 0.0f;
        fArr[(0 * 5) + 4] = 0.0f;
        fArr[(1 * 5) + 0] = 0.0f;
        fArr[(1 * 5) + 1] = 1.0f;
        fArr[(1 * 5) + 2] = 0.0f;
        fArr[(1 * 5) + 3] = 0.0f;
        fArr[(1 * 5) + 4] = 0.0f;
        fArr[(2 * 5) + 0] = 0.0f;
        fArr[(2 * 5) + 1] = 0.0f;
        fArr[(2 * 5) + 2] = 1.0f;
        fArr[(2 * 5) + 3] = 0.0f;
        fArr[(2 * 5) + 4] = 0.0f;
        fArr[(3 * 5) + 0] = 0.0f;
        fArr[(3 * 5) + 1] = 0.0f;
        fArr[(3 * 5) + 2] = 0.0f;
        fArr[(3 * 5) + 3] = 1.0f;
        fArr[(3 * 5) + 4] = 0.0f;
        float normalizedAngle$iv = 0.0027777778f * degrees;
        float normalizedDegrees$iv$iv$iv = 0.25f + normalizedAngle$iv;
        float degrees$iv$iv$iv = normalizedDegrees$iv$iv$iv - ((float) Math.floor(normalizedDegrees$iv$iv$iv + 0.5f));
        float x$iv$iv$iv = Math.abs(degrees$iv$iv$iv) * 2.0f;
        float a$iv$iv$iv = 1.0f - x$iv$iv$iv;
        float cosine$iv = ((degrees$iv$iv$iv * 8.0f) * a$iv$iv$iv) / (1.25f - (x$iv$iv$iv * a$iv$iv$iv));
        float degrees$iv$iv = normalizedAngle$iv - ((float) Math.floor(0.5f + normalizedAngle$iv));
        float x$iv$iv = Math.abs(degrees$iv$iv) * 2.0f;
        float a$iv$iv = 1.0f - x$iv$iv;
        float sine$iv = ((8.0f * degrees$iv$iv) * a$iv$iv) / (1.25f - (x$iv$iv * a$iv$iv));
        fArr[(0 * 5) + 0] = cosine$iv;
        fArr[(0 * 5) + 1] = sine$iv;
        float v$iv = -sine$iv;
        fArr[(1 * 5) + 0] = v$iv;
        fArr[(1 * 5) + 1] = cosine$iv;
    }

    /* JADX INFO: renamed from: convertRgbToYuv-impl, reason: not valid java name */
    public static final void m4755convertRgbToYuvimpl(float[] fArr) {
        if (fArr.length < 20) {
            return;
        }
        fArr[(0 * 5) + 0] = 1.0f;
        fArr[(0 * 5) + 1] = 0.0f;
        fArr[(0 * 5) + 2] = 0.0f;
        fArr[(0 * 5) + 3] = 0.0f;
        fArr[(0 * 5) + 4] = 0.0f;
        fArr[(1 * 5) + 0] = 0.0f;
        fArr[(1 * 5) + 1] = 1.0f;
        fArr[(1 * 5) + 2] = 0.0f;
        fArr[(1 * 5) + 3] = 0.0f;
        fArr[(1 * 5) + 4] = 0.0f;
        fArr[(2 * 5) + 0] = 0.0f;
        fArr[(2 * 5) + 1] = 0.0f;
        fArr[(2 * 5) + 2] = 1.0f;
        fArr[(2 * 5) + 3] = 0.0f;
        fArr[(2 * 5) + 4] = 0.0f;
        fArr[(3 * 5) + 0] = 0.0f;
        fArr[(3 * 5) + 1] = 0.0f;
        fArr[(3 * 5) + 2] = 0.0f;
        fArr[(3 * 5) + 3] = 1.0f;
        fArr[(3 * 5) + 4] = 0.0f;
        fArr[(0 * 5) + 0] = 0.299f;
        fArr[(0 * 5) + 1] = 0.587f;
        fArr[(0 * 5) + 2] = 0.114f;
        fArr[(1 * 5) + 0] = -0.16874f;
        fArr[(1 * 5) + 1] = -0.33126f;
        fArr[(1 * 5) + 2] = 0.5f;
        fArr[(2 * 5) + 0] = 0.5f;
        fArr[(2 * 5) + 1] = -0.41869f;
        fArr[(2 * 5) + 2] = -0.08131f;
    }

    /* JADX INFO: renamed from: convertYuvToRgb-impl, reason: not valid java name */
    public static final void m4756convertYuvToRgbimpl(float[] fArr) {
        if (fArr.length < 20) {
            return;
        }
        fArr[(0 * 5) + 0] = 1.0f;
        fArr[(0 * 5) + 1] = 0.0f;
        fArr[(0 * 5) + 2] = 0.0f;
        fArr[(0 * 5) + 3] = 0.0f;
        fArr[(0 * 5) + 4] = 0.0f;
        fArr[(1 * 5) + 0] = 0.0f;
        fArr[(1 * 5) + 1] = 1.0f;
        fArr[(1 * 5) + 2] = 0.0f;
        fArr[(1 * 5) + 3] = 0.0f;
        fArr[(1 * 5) + 4] = 0.0f;
        fArr[(2 * 5) + 0] = 0.0f;
        fArr[(2 * 5) + 1] = 0.0f;
        fArr[(2 * 5) + 2] = 1.0f;
        fArr[(2 * 5) + 3] = 0.0f;
        fArr[(2 * 5) + 4] = 0.0f;
        fArr[(3 * 5) + 0] = 0.0f;
        fArr[(3 * 5) + 1] = 0.0f;
        fArr[(3 * 5) + 2] = 0.0f;
        fArr[(3 * 5) + 3] = 1.0f;
        fArr[(3 * 5) + 4] = 0.0f;
        fArr[(0 * 5) + 2] = 1.402f;
        fArr[(1 * 5) + 0] = 1.0f;
        fArr[(1 * 5) + 1] = -0.34414f;
        fArr[(1 * 5) + 2] = -0.71414f;
        fArr[(2 * 5) + 0] = 1.0f;
        fArr[(2 * 5) + 1] = 1.772f;
        fArr[(2 * 5) + 2] = 0.0f;
    }
}
