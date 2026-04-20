package androidx.compose.ui.graphics;

import android.graphics.PorterDuff;
import android.os.Build;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: compiled from: AndroidBlendMode.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0011\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0013\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\u0013\u0010\t\u001a\u00020\n*\u00020\u0002H\u0001¢\u0006\u0004\b\u000b\u0010\f\u001a\u0011\u0010\r\u001a\u00020\u0002*\u00020\nH\u0001¢\u0006\u0002\u0010\u000e¨\u0006\u000f"}, d2 = {"isSupported", "", "Landroidx/compose/ui/graphics/BlendMode;", "isSupported-s9anfk8", "(I)Z", "toPorterDuffMode", "Landroid/graphics/PorterDuff$Mode;", "toPorterDuffMode-s9anfk8", "(I)Landroid/graphics/PorterDuff$Mode;", "toAndroidBlendMode", "Landroid/graphics/BlendMode;", "toAndroidBlendMode-s9anfk8", "(I)Landroid/graphics/BlendMode;", "toComposeBlendMode", "(Landroid/graphics/BlendMode;)I", "ui-graphics"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class AndroidBlendMode_androidKt {

    /* JADX INFO: compiled from: AndroidBlendMode.android.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[android.graphics.BlendMode.values().length];
            try {
                iArr[android.graphics.BlendMode.CLEAR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[android.graphics.BlendMode.SRC.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[android.graphics.BlendMode.DST.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[android.graphics.BlendMode.SRC_OVER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[android.graphics.BlendMode.DST_OVER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[android.graphics.BlendMode.SRC_IN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[android.graphics.BlendMode.DST_IN.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[android.graphics.BlendMode.SRC_OUT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[android.graphics.BlendMode.DST_OUT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[android.graphics.BlendMode.SRC_ATOP.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr[android.graphics.BlendMode.DST_ATOP.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr[android.graphics.BlendMode.XOR.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                iArr[android.graphics.BlendMode.PLUS.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                iArr[android.graphics.BlendMode.MODULATE.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                iArr[android.graphics.BlendMode.SCREEN.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                iArr[android.graphics.BlendMode.OVERLAY.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                iArr[android.graphics.BlendMode.DARKEN.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                iArr[android.graphics.BlendMode.LIGHTEN.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                iArr[android.graphics.BlendMode.COLOR_DODGE.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                iArr[android.graphics.BlendMode.COLOR_BURN.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                iArr[android.graphics.BlendMode.HARD_LIGHT.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
            try {
                iArr[android.graphics.BlendMode.SOFT_LIGHT.ordinal()] = 22;
            } catch (NoSuchFieldError e22) {
            }
            try {
                iArr[android.graphics.BlendMode.DIFFERENCE.ordinal()] = 23;
            } catch (NoSuchFieldError e23) {
            }
            try {
                iArr[android.graphics.BlendMode.EXCLUSION.ordinal()] = 24;
            } catch (NoSuchFieldError e24) {
            }
            try {
                iArr[android.graphics.BlendMode.MULTIPLY.ordinal()] = 25;
            } catch (NoSuchFieldError e25) {
            }
            try {
                iArr[android.graphics.BlendMode.HUE.ordinal()] = 26;
            } catch (NoSuchFieldError e26) {
            }
            try {
                iArr[android.graphics.BlendMode.SATURATION.ordinal()] = 27;
            } catch (NoSuchFieldError e27) {
            }
            try {
                iArr[android.graphics.BlendMode.COLOR.ordinal()] = 28;
            } catch (NoSuchFieldError e28) {
            }
            try {
                iArr[android.graphics.BlendMode.LUMINOSITY.ordinal()] = 29;
            } catch (NoSuchFieldError e29) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: isSupported-s9anfk8, reason: not valid java name */
    public static final boolean m4543isSupporteds9anfk8(int i) {
        return Build.VERSION.SDK_INT >= 29 || BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4637getSrcOver0nO6VwU()) || m4545toPorterDuffModes9anfk8(i) != PorterDuff.Mode.SRC_OVER;
    }

    /* JADX INFO: renamed from: toPorterDuffMode-s9anfk8, reason: not valid java name */
    public static final PorterDuff.Mode m4545toPorterDuffModes9anfk8(int i) {
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4610getClear0nO6VwU())) {
            return PorterDuff.Mode.CLEAR;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4633getSrc0nO6VwU())) {
            return PorterDuff.Mode.SRC;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4616getDst0nO6VwU())) {
            return PorterDuff.Mode.DST;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4637getSrcOver0nO6VwU())) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4620getDstOver0nO6VwU())) {
            return PorterDuff.Mode.DST_OVER;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4635getSrcIn0nO6VwU())) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4618getDstIn0nO6VwU())) {
            return PorterDuff.Mode.DST_IN;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4636getSrcOut0nO6VwU())) {
            return PorterDuff.Mode.SRC_OUT;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4619getDstOut0nO6VwU())) {
            return PorterDuff.Mode.DST_OUT;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4634getSrcAtop0nO6VwU())) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4617getDstAtop0nO6VwU())) {
            return PorterDuff.Mode.DST_ATOP;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4638getXor0nO6VwU())) {
            return PorterDuff.Mode.XOR;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4629getPlus0nO6VwU())) {
            return PorterDuff.Mode.ADD;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4631getScreen0nO6VwU())) {
            return PorterDuff.Mode.SCREEN;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4628getOverlay0nO6VwU())) {
            return PorterDuff.Mode.OVERLAY;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4614getDarken0nO6VwU())) {
            return PorterDuff.Mode.DARKEN;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4624getLighten0nO6VwU())) {
            return PorterDuff.Mode.LIGHTEN;
        }
        if (BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4626getModulate0nO6VwU())) {
            return PorterDuff.Mode.MULTIPLY;
        }
        return PorterDuff.Mode.SRC_OVER;
    }

    /* JADX INFO: renamed from: toAndroidBlendMode-s9anfk8, reason: not valid java name */
    public static final android.graphics.BlendMode m4544toAndroidBlendModes9anfk8(int i) {
        return BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4610getClear0nO6VwU()) ? android.graphics.BlendMode.CLEAR : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4633getSrc0nO6VwU()) ? android.graphics.BlendMode.SRC : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4616getDst0nO6VwU()) ? android.graphics.BlendMode.DST : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4637getSrcOver0nO6VwU()) ? android.graphics.BlendMode.SRC_OVER : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4620getDstOver0nO6VwU()) ? android.graphics.BlendMode.DST_OVER : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4635getSrcIn0nO6VwU()) ? android.graphics.BlendMode.SRC_IN : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4618getDstIn0nO6VwU()) ? android.graphics.BlendMode.DST_IN : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4636getSrcOut0nO6VwU()) ? android.graphics.BlendMode.SRC_OUT : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4619getDstOut0nO6VwU()) ? android.graphics.BlendMode.DST_OUT : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4634getSrcAtop0nO6VwU()) ? android.graphics.BlendMode.SRC_ATOP : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4617getDstAtop0nO6VwU()) ? android.graphics.BlendMode.DST_ATOP : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4638getXor0nO6VwU()) ? android.graphics.BlendMode.XOR : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4629getPlus0nO6VwU()) ? android.graphics.BlendMode.PLUS : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4626getModulate0nO6VwU()) ? android.graphics.BlendMode.MODULATE : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4631getScreen0nO6VwU()) ? android.graphics.BlendMode.SCREEN : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4628getOverlay0nO6VwU()) ? android.graphics.BlendMode.OVERLAY : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4614getDarken0nO6VwU()) ? android.graphics.BlendMode.DARKEN : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4624getLighten0nO6VwU()) ? android.graphics.BlendMode.LIGHTEN : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4613getColorDodge0nO6VwU()) ? android.graphics.BlendMode.COLOR_DODGE : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4612getColorBurn0nO6VwU()) ? android.graphics.BlendMode.COLOR_BURN : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4622getHardlight0nO6VwU()) ? android.graphics.BlendMode.HARD_LIGHT : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4632getSoftlight0nO6VwU()) ? android.graphics.BlendMode.SOFT_LIGHT : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4615getDifference0nO6VwU()) ? android.graphics.BlendMode.DIFFERENCE : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4621getExclusion0nO6VwU()) ? android.graphics.BlendMode.EXCLUSION : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4627getMultiply0nO6VwU()) ? android.graphics.BlendMode.MULTIPLY : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4623getHue0nO6VwU()) ? android.graphics.BlendMode.HUE : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4630getSaturation0nO6VwU()) ? android.graphics.BlendMode.SATURATION : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4611getColor0nO6VwU()) ? android.graphics.BlendMode.COLOR : BlendMode.m4606equalsimpl0(i, BlendMode.INSTANCE.m4625getLuminosity0nO6VwU()) ? android.graphics.BlendMode.LUMINOSITY : android.graphics.BlendMode.SRC_OVER;
    }

    public static final int toComposeBlendMode(android.graphics.BlendMode $this$toComposeBlendMode) {
        switch (WhenMappings.$EnumSwitchMapping$0[$this$toComposeBlendMode.ordinal()]) {
            case 1:
                return BlendMode.INSTANCE.m4610getClear0nO6VwU();
            case 2:
                return BlendMode.INSTANCE.m4633getSrc0nO6VwU();
            case 3:
                return BlendMode.INSTANCE.m4616getDst0nO6VwU();
            case 4:
                return BlendMode.INSTANCE.m4637getSrcOver0nO6VwU();
            case 5:
                return BlendMode.INSTANCE.m4620getDstOver0nO6VwU();
            case 6:
                return BlendMode.INSTANCE.m4635getSrcIn0nO6VwU();
            case 7:
                return BlendMode.INSTANCE.m4618getDstIn0nO6VwU();
            case 8:
                return BlendMode.INSTANCE.m4636getSrcOut0nO6VwU();
            case 9:
                return BlendMode.INSTANCE.m4619getDstOut0nO6VwU();
            case 10:
                return BlendMode.INSTANCE.m4634getSrcAtop0nO6VwU();
            case 11:
                return BlendMode.INSTANCE.m4617getDstAtop0nO6VwU();
            case 12:
                return BlendMode.INSTANCE.m4638getXor0nO6VwU();
            case 13:
                return BlendMode.INSTANCE.m4629getPlus0nO6VwU();
            case 14:
                return BlendMode.INSTANCE.m4626getModulate0nO6VwU();
            case 15:
                return BlendMode.INSTANCE.m4631getScreen0nO6VwU();
            case 16:
                return BlendMode.INSTANCE.m4628getOverlay0nO6VwU();
            case 17:
                return BlendMode.INSTANCE.m4614getDarken0nO6VwU();
            case 18:
                return BlendMode.INSTANCE.m4624getLighten0nO6VwU();
            case 19:
                return BlendMode.INSTANCE.m4613getColorDodge0nO6VwU();
            case 20:
                return BlendMode.INSTANCE.m4612getColorBurn0nO6VwU();
            case 21:
                return BlendMode.INSTANCE.m4622getHardlight0nO6VwU();
            case 22:
                return BlendMode.INSTANCE.m4632getSoftlight0nO6VwU();
            case 23:
                return BlendMode.INSTANCE.m4615getDifference0nO6VwU();
            case 24:
                return BlendMode.INSTANCE.m4621getExclusion0nO6VwU();
            case 25:
                return BlendMode.INSTANCE.m4627getMultiply0nO6VwU();
            case 26:
                return BlendMode.INSTANCE.m4623getHue0nO6VwU();
            case 27:
                return BlendMode.INSTANCE.m4630getSaturation0nO6VwU();
            case 28:
                return BlendMode.INSTANCE.m4611getColor0nO6VwU();
            case 29:
                return BlendMode.INSTANCE.m4625getLuminosity0nO6VwU();
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
