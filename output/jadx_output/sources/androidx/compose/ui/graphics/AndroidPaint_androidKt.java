package androidx.compose.ui.graphics;

import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.os.Build;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;

/* JADX INFO: compiled from: AndroidPaint.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000p\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0001\u001a\b\u0010\u0005\u001a\u00020\u0001H\u0000\u001a\u001f\u0010\u0006\u001a\u00020\u0007*\u00060\u0001j\u0002`\b2\u0006\u0010\t\u001a\u00020\nH\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u001a\u0010\r\u001a\u00020\u0007*\u00060\u0001j\u0002`\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0000\u001a\u0010\u0010\u0010\u001a\u00020\u0011*\u00060\u0001j\u0002`\bH\u0000\u001a\u0018\u0010\u0012\u001a\u00020\u0007*\u00060\u0001j\u0002`\b2\u0006\u0010\u000e\u001a\u00020\u0011H\u0000\u001a\u0010\u0010\u0013\u001a\u00020\u0014*\u00060\u0001j\u0002`\bH\u0000\u001a\u0018\u0010\u0015\u001a\u00020\u0007*\u00060\u0001j\u0002`\b2\u0006\u0010\u000e\u001a\u00020\u0014H\u0000\u001a\u0015\u0010\u0016\u001a\u00020\u0017*\u00060\u0001j\u0002`\bH\u0000¢\u0006\u0002\u0010\u0018\u001a\u001f\u0010\u0019\u001a\u00020\u0007*\u00060\u0001j\u0002`\b2\u0006\u0010\u000e\u001a\u00020\u0017H\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u001f\u0010\u001c\u001a\u00020\u0007*\u00060\u0001j\u0002`\b2\u0006\u0010\u000e\u001a\u00020\u001dH\u0000¢\u0006\u0004\b\u001e\u0010\f\u001a\u0015\u0010\u001f\u001a\u00020\u001d*\u00060\u0001j\u0002`\bH\u0000¢\u0006\u0002\u0010 \u001a\u0010\u0010!\u001a\u00020\u0011*\u00060\u0001j\u0002`\bH\u0000\u001a\u0018\u0010\"\u001a\u00020\u0007*\u00060\u0001j\u0002`\b2\u0006\u0010\u000e\u001a\u00020\u0011H\u0000\u001a\u0015\u0010#\u001a\u00020$*\u00060\u0001j\u0002`\bH\u0000¢\u0006\u0002\u0010 \u001a\u001f\u0010%\u001a\u00020\u0007*\u00060\u0001j\u0002`\b2\u0006\u0010\u000e\u001a\u00020$H\u0000¢\u0006\u0004\b&\u0010\f\u001a\u0015\u0010'\u001a\u00020(*\u00060\u0001j\u0002`\bH\u0000¢\u0006\u0002\u0010 \u001a\u001f\u0010)\u001a\u00020\u0007*\u00060\u0001j\u0002`\b2\u0006\u0010\u000e\u001a\u00020(H\u0000¢\u0006\u0004\b*\u0010\f\u001a\u0010\u0010+\u001a\u00020\u0011*\u00060\u0001j\u0002`\bH\u0000\u001a\u0018\u0010,\u001a\u00020\u0007*\u00060\u0001j\u0002`\b2\u0006\u0010\u000e\u001a\u00020\u0011H\u0000\u001a\u0015\u0010-\u001a\u00020.*\u00060\u0001j\u0002`\bH\u0000¢\u0006\u0002\u0010 \u001a\u001f\u0010/\u001a\u00020\u0007*\u00060\u0001j\u0002`\b2\u0006\u0010\u000e\u001a\u00020.H\u0000¢\u0006\u0004\b0\u0010\f\u001a \u00101\u001a\u00020\u0007*\u00060\u0001j\u0002`\b2\u000e\u0010\u000e\u001a\n\u0018\u000102j\u0004\u0018\u0001`3H\u0000\u001a\u001a\u00104\u001a\u00020\u0007*\u00060\u0001j\u0002`\b2\b\u0010\u000e\u001a\u0004\u0018\u000105H\u0000*\n\u0010\u0000\"\u00020\u00012\u00020\u0001¨\u00066"}, d2 = {"NativePaint", "Landroid/graphics/Paint;", "Paint", "Landroidx/compose/ui/graphics/Paint;", "asComposePaint", "makeNativePaint", "setNativeBlendMode", "", "Landroidx/compose/ui/graphics/NativePaint;", "mode", "Landroidx/compose/ui/graphics/BlendMode;", "setNativeBlendMode-GB0RdKg", "(Landroid/graphics/Paint;I)V", "setNativeColorFilter", Values.VECTOR_MAP_VECTORS_KEY, "Landroidx/compose/ui/graphics/ColorFilter;", "getNativeAlpha", "", "setNativeAlpha", "getNativeAntiAlias", "", "setNativeAntiAlias", "getNativeColor", "Landroidx/compose/ui/graphics/Color;", "(Landroid/graphics/Paint;)J", "setNativeColor", "setNativeColor-4WTKRHQ", "(Landroid/graphics/Paint;J)V", "setNativeStyle", "Landroidx/compose/ui/graphics/PaintingStyle;", "setNativeStyle--5YerkU", "getNativeStyle", "(Landroid/graphics/Paint;)I", "getNativeStrokeWidth", "setNativeStrokeWidth", "getNativeStrokeCap", "Landroidx/compose/ui/graphics/StrokeCap;", "setNativeStrokeCap", "setNativeStrokeCap-CSYIeUk", "getNativeStrokeJoin", "Landroidx/compose/ui/graphics/StrokeJoin;", "setNativeStrokeJoin", "setNativeStrokeJoin-kLtJ_vA", "getNativeStrokeMiterLimit", "setNativeStrokeMiterLimit", "getNativeFilterQuality", "Landroidx/compose/ui/graphics/FilterQuality;", "setNativeFilterQuality", "setNativeFilterQuality-50PEsBU", "setNativeShader", "Landroid/graphics/Shader;", "Landroidx/compose/ui/graphics/Shader;", "setNativePathEffect", "Landroidx/compose/ui/graphics/PathEffect;", "ui-graphics"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class AndroidPaint_androidKt {

    /* JADX INFO: compiled from: AndroidPaint.android.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[Paint.Style.values().length];
            try {
                iArr[Paint.Style.STROKE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Paint.Cap.values().length];
            try {
                iArr2[Paint.Cap.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr2[Paint.Cap.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr2[Paint.Cap.SQUARE.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[Paint.Join.values().length];
            try {
                iArr3[Paint.Join.MITER.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr3[Paint.Join.BEVEL.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr3[Paint.Join.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    public static final Paint Paint() {
        return new AndroidPaint();
    }

    public static final Paint asComposePaint(android.graphics.Paint $this$asComposePaint) {
        return new AndroidPaint($this$asComposePaint);
    }

    public static final android.graphics.Paint makeNativePaint() {
        return new android.graphics.Paint(7);
    }

    /* JADX INFO: renamed from: setNativeBlendMode-GB0RdKg, reason: not valid java name */
    public static final void m4578setNativeBlendModeGB0RdKg(android.graphics.Paint $this$setNativeBlendMode_u2dGB0RdKg, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            WrapperVerificationHelperMethods.INSTANCE.m5123setBlendModeGB0RdKg($this$setNativeBlendMode_u2dGB0RdKg, i);
        } else {
            $this$setNativeBlendMode_u2dGB0RdKg.setXfermode(new PorterDuffXfermode(AndroidBlendMode_androidKt.m4545toPorterDuffModes9anfk8(i)));
        }
    }

    public static final void setNativeColorFilter(android.graphics.Paint $this$setNativeColorFilter, ColorFilter value) {
        $this$setNativeColorFilter.setColorFilter(value != null ? AndroidColorFilter_androidKt.asAndroidColorFilter(value) : null);
    }

    public static final float getNativeAlpha(android.graphics.Paint $this$getNativeAlpha) {
        return $this$getNativeAlpha.getAlpha() / 255.0f;
    }

    public static final void setNativeAlpha(android.graphics.Paint $this$setNativeAlpha, float value) {
        $this$setNativeAlpha.setAlpha((int) Math.rint(255.0f * value));
    }

    public static final boolean getNativeAntiAlias(android.graphics.Paint $this$getNativeAntiAlias) {
        return $this$getNativeAntiAlias.isAntiAlias();
    }

    public static final void setNativeAntiAlias(android.graphics.Paint $this$setNativeAntiAlias, boolean value) {
        $this$setNativeAntiAlias.setAntiAlias(value);
    }

    public static final long getNativeColor(android.graphics.Paint $this$getNativeColor) {
        return ColorKt.Color($this$getNativeColor.getColor());
    }

    /* JADX INFO: renamed from: setNativeColor-4WTKRHQ, reason: not valid java name */
    public static final void m4579setNativeColor4WTKRHQ(android.graphics.Paint $this$setNativeColor_u2d4WTKRHQ, long j) {
        $this$setNativeColor_u2d4WTKRHQ.setColor(ColorKt.m4751toArgb8_81llA(j));
    }

    /* JADX INFO: renamed from: setNativeStyle--5YerkU, reason: not valid java name */
    public static final void m4583setNativeStyle5YerkU(android.graphics.Paint $this$setNativeStyle_u2d_u2d5YerkU, int i) {
        $this$setNativeStyle_u2d_u2d5YerkU.setStyle(PaintingStyle.m4974equalsimpl0(i, PaintingStyle.INSTANCE.m4979getStrokeTiuSbCo()) ? Paint.Style.STROKE : Paint.Style.FILL);
    }

    public static final int getNativeStyle(android.graphics.Paint $this$getNativeStyle) {
        Paint.Style style = $this$getNativeStyle.getStyle();
        return (style == null ? -1 : WhenMappings.$EnumSwitchMapping$0[style.ordinal()]) == 1 ? PaintingStyle.INSTANCE.m4979getStrokeTiuSbCo() : PaintingStyle.INSTANCE.m4978getFillTiuSbCo();
    }

    public static final float getNativeStrokeWidth(android.graphics.Paint $this$getNativeStrokeWidth) {
        return $this$getNativeStrokeWidth.getStrokeWidth();
    }

    public static final void setNativeStrokeWidth(android.graphics.Paint $this$setNativeStrokeWidth, float value) {
        $this$setNativeStrokeWidth.setStrokeWidth(value);
    }

    public static final int getNativeStrokeCap(android.graphics.Paint $this$getNativeStrokeCap) {
        Paint.Cap strokeCap = $this$getNativeStrokeCap.getStrokeCap();
        switch (strokeCap == null ? -1 : WhenMappings.$EnumSwitchMapping$1[strokeCap.ordinal()]) {
        }
        return StrokeCap.INSTANCE.m5071getButtKaPHkGw();
    }

    /* JADX INFO: renamed from: setNativeStrokeCap-CSYIeUk, reason: not valid java name */
    public static final void m4581setNativeStrokeCapCSYIeUk(android.graphics.Paint $this$setNativeStrokeCap_u2dCSYIeUk, int i) {
        Paint.Cap cap;
        if (StrokeCap.m5067equalsimpl0(i, StrokeCap.INSTANCE.m5073getSquareKaPHkGw())) {
            cap = Paint.Cap.SQUARE;
        } else if (StrokeCap.m5067equalsimpl0(i, StrokeCap.INSTANCE.m5072getRoundKaPHkGw())) {
            cap = Paint.Cap.ROUND;
        } else {
            cap = StrokeCap.m5067equalsimpl0(i, StrokeCap.INSTANCE.m5071getButtKaPHkGw()) ? Paint.Cap.BUTT : Paint.Cap.BUTT;
        }
        $this$setNativeStrokeCap_u2dCSYIeUk.setStrokeCap(cap);
    }

    public static final int getNativeStrokeJoin(android.graphics.Paint $this$getNativeStrokeJoin) {
        Paint.Join strokeJoin = $this$getNativeStrokeJoin.getStrokeJoin();
        switch (strokeJoin == null ? -1 : WhenMappings.$EnumSwitchMapping$2[strokeJoin.ordinal()]) {
        }
        return StrokeJoin.INSTANCE.m5082getMiterLxFBmk8();
    }

    /* JADX INFO: renamed from: setNativeStrokeJoin-kLtJ_vA, reason: not valid java name */
    public static final void m4582setNativeStrokeJoinkLtJ_vA(android.graphics.Paint $this$setNativeStrokeJoin_u2dkLtJ_vA, int i) {
        Paint.Join join;
        if (StrokeJoin.m5077equalsimpl0(i, StrokeJoin.INSTANCE.m5082getMiterLxFBmk8())) {
            join = Paint.Join.MITER;
        } else if (StrokeJoin.m5077equalsimpl0(i, StrokeJoin.INSTANCE.m5081getBevelLxFBmk8())) {
            join = Paint.Join.BEVEL;
        } else {
            join = StrokeJoin.m5077equalsimpl0(i, StrokeJoin.INSTANCE.m5083getRoundLxFBmk8()) ? Paint.Join.ROUND : Paint.Join.MITER;
        }
        $this$setNativeStrokeJoin_u2dkLtJ_vA.setStrokeJoin(join);
    }

    public static final float getNativeStrokeMiterLimit(android.graphics.Paint $this$getNativeStrokeMiterLimit) {
        return $this$getNativeStrokeMiterLimit.getStrokeMiter();
    }

    public static final void setNativeStrokeMiterLimit(android.graphics.Paint $this$setNativeStrokeMiterLimit, float value) {
        $this$setNativeStrokeMiterLimit.setStrokeMiter(value);
    }

    public static final int getNativeFilterQuality(android.graphics.Paint $this$getNativeFilterQuality) {
        if (!$this$getNativeFilterQuality.isFilterBitmap()) {
            return FilterQuality.INSTANCE.m4799getNonefv9h1I();
        }
        return FilterQuality.INSTANCE.m4797getLowfv9h1I();
    }

    /* JADX INFO: renamed from: setNativeFilterQuality-50PEsBU, reason: not valid java name */
    public static final void m4580setNativeFilterQuality50PEsBU(android.graphics.Paint $this$setNativeFilterQuality_u2d50PEsBU, int i) {
        $this$setNativeFilterQuality_u2d50PEsBU.setFilterBitmap(!FilterQuality.m4792equalsimpl0(i, FilterQuality.INSTANCE.m4799getNonefv9h1I()));
    }

    public static final void setNativeShader(android.graphics.Paint $this$setNativeShader, Shader value) {
        $this$setNativeShader.setShader(value);
    }

    public static final void setNativePathEffect(android.graphics.Paint $this$setNativePathEffect, PathEffect value) {
        AndroidPathEffect androidPathEffect = (AndroidPathEffect) value;
        $this$setNativePathEffect.setPathEffect(androidPathEffect != null ? androidPathEffect.getNativePathEffect() : null);
    }
}
