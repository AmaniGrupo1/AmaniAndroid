package androidx.compose.ui.graphics;

import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: BlendMode.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/graphics/BlendMode;", "", Values.VECTOR_MAP_VECTORS_KEY, "", "constructor-impl", "(I)I", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "equals", "", "other", "hashCode", "Companion", "ui-graphics"}, k = 1, mv = {2, 0, 0}, xi = 48)
@JvmInline
public final class BlendMode {
    private final int value;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int Clear = m4604constructorimpl(0);
    private static final int Src = m4604constructorimpl(1);
    private static final int Dst = m4604constructorimpl(2);
    private static final int SrcOver = m4604constructorimpl(3);
    private static final int DstOver = m4604constructorimpl(4);
    private static final int SrcIn = m4604constructorimpl(5);
    private static final int DstIn = m4604constructorimpl(6);
    private static final int SrcOut = m4604constructorimpl(7);
    private static final int DstOut = m4604constructorimpl(8);
    private static final int SrcAtop = m4604constructorimpl(9);
    private static final int DstAtop = m4604constructorimpl(10);
    private static final int Xor = m4604constructorimpl(11);
    private static final int Plus = m4604constructorimpl(12);
    private static final int Modulate = m4604constructorimpl(13);
    private static final int Screen = m4604constructorimpl(14);
    private static final int Overlay = m4604constructorimpl(15);
    private static final int Darken = m4604constructorimpl(16);
    private static final int Lighten = m4604constructorimpl(17);
    private static final int ColorDodge = m4604constructorimpl(18);
    private static final int ColorBurn = m4604constructorimpl(19);
    private static final int Hardlight = m4604constructorimpl(20);
    private static final int Softlight = m4604constructorimpl(21);
    private static final int Difference = m4604constructorimpl(22);
    private static final int Exclusion = m4604constructorimpl(23);
    private static final int Multiply = m4604constructorimpl(24);
    private static final int Hue = m4604constructorimpl(25);
    private static final int Saturation = m4604constructorimpl(26);
    private static final int Color = m4604constructorimpl(27);
    private static final int Luminosity = m4604constructorimpl(28);

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ BlendMode m4603boximpl(int i) {
        return new BlendMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m4604constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m4605equalsimpl(int i, Object obj) {
        return (obj instanceof BlendMode) && i == ((BlendMode) obj).getValue();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4606equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m4607hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object other) {
        return m4605equalsimpl(this.value, other);
    }

    public int hashCode() {
        return m4607hashCodeimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    private /* synthetic */ BlendMode(int value) {
        this.value = value;
    }

    /* JADX INFO: compiled from: BlendMode.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b<\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\n\u0010\u0007R\u0013\u0010\u000b\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\f\u0010\u0007R\u0013\u0010\r\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u000e\u0010\u0007R\u0013\u0010\u000f\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0010\u0010\u0007R\u0013\u0010\u0011\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0012\u0010\u0007R\u0013\u0010\u0013\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0014\u0010\u0007R\u0013\u0010\u0015\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0016\u0010\u0007R\u0013\u0010\u0017\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0018\u0010\u0007R\u0013\u0010\u0019\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u001a\u0010\u0007R\u0013\u0010\u001b\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u001c\u0010\u0007R\u0013\u0010\u001d\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u001e\u0010\u0007R\u0013\u0010\u001f\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b \u0010\u0007R\u0013\u0010!\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\"\u0010\u0007R\u0013\u0010#\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b$\u0010\u0007R\u0013\u0010%\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b&\u0010\u0007R\u0013\u0010'\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b(\u0010\u0007R\u0013\u0010)\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b*\u0010\u0007R\u0013\u0010+\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b,\u0010\u0007R\u0013\u0010-\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b.\u0010\u0007R\u0013\u0010/\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b0\u0010\u0007R\u0013\u00101\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b2\u0010\u0007R\u0013\u00103\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b4\u0010\u0007R\u0013\u00105\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b6\u0010\u0007R\u0013\u00107\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b8\u0010\u0007R\u0013\u00109\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b:\u0010\u0007R\u0013\u0010;\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b<\u0010\u0007R\u0013\u0010=\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b>\u0010\u0007R\u0013\u0010?\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b@\u0010\u0007¨\u0006A"}, d2 = {"Landroidx/compose/ui/graphics/BlendMode$Companion;", "", "<init>", "()V", "Clear", "Landroidx/compose/ui/graphics/BlendMode;", "getClear-0nO6VwU", "()I", "I", "Src", "getSrc-0nO6VwU", "Dst", "getDst-0nO6VwU", "SrcOver", "getSrcOver-0nO6VwU", "DstOver", "getDstOver-0nO6VwU", "SrcIn", "getSrcIn-0nO6VwU", "DstIn", "getDstIn-0nO6VwU", "SrcOut", "getSrcOut-0nO6VwU", "DstOut", "getDstOut-0nO6VwU", "SrcAtop", "getSrcAtop-0nO6VwU", "DstAtop", "getDstAtop-0nO6VwU", "Xor", "getXor-0nO6VwU", "Plus", "getPlus-0nO6VwU", "Modulate", "getModulate-0nO6VwU", "Screen", "getScreen-0nO6VwU", "Overlay", "getOverlay-0nO6VwU", "Darken", "getDarken-0nO6VwU", "Lighten", "getLighten-0nO6VwU", "ColorDodge", "getColorDodge-0nO6VwU", "ColorBurn", "getColorBurn-0nO6VwU", "Hardlight", "getHardlight-0nO6VwU", "Softlight", "getSoftlight-0nO6VwU", "Difference", "getDifference-0nO6VwU", "Exclusion", "getExclusion-0nO6VwU", "Multiply", "getMultiply-0nO6VwU", "Hue", "getHue-0nO6VwU", ExifInterface.TAG_SATURATION, "getSaturation-0nO6VwU", "Color", "getColor-0nO6VwU", "Luminosity", "getLuminosity-0nO6VwU", "ui-graphics"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getClear-0nO6VwU, reason: not valid java name */
        public final int m4610getClear0nO6VwU() {
            return BlendMode.Clear;
        }

        /* JADX INFO: renamed from: getSrc-0nO6VwU, reason: not valid java name */
        public final int m4633getSrc0nO6VwU() {
            return BlendMode.Src;
        }

        /* JADX INFO: renamed from: getDst-0nO6VwU, reason: not valid java name */
        public final int m4616getDst0nO6VwU() {
            return BlendMode.Dst;
        }

        /* JADX INFO: renamed from: getSrcOver-0nO6VwU, reason: not valid java name */
        public final int m4637getSrcOver0nO6VwU() {
            return BlendMode.SrcOver;
        }

        /* JADX INFO: renamed from: getDstOver-0nO6VwU, reason: not valid java name */
        public final int m4620getDstOver0nO6VwU() {
            return BlendMode.DstOver;
        }

        /* JADX INFO: renamed from: getSrcIn-0nO6VwU, reason: not valid java name */
        public final int m4635getSrcIn0nO6VwU() {
            return BlendMode.SrcIn;
        }

        /* JADX INFO: renamed from: getDstIn-0nO6VwU, reason: not valid java name */
        public final int m4618getDstIn0nO6VwU() {
            return BlendMode.DstIn;
        }

        /* JADX INFO: renamed from: getSrcOut-0nO6VwU, reason: not valid java name */
        public final int m4636getSrcOut0nO6VwU() {
            return BlendMode.SrcOut;
        }

        /* JADX INFO: renamed from: getDstOut-0nO6VwU, reason: not valid java name */
        public final int m4619getDstOut0nO6VwU() {
            return BlendMode.DstOut;
        }

        /* JADX INFO: renamed from: getSrcAtop-0nO6VwU, reason: not valid java name */
        public final int m4634getSrcAtop0nO6VwU() {
            return BlendMode.SrcAtop;
        }

        /* JADX INFO: renamed from: getDstAtop-0nO6VwU, reason: not valid java name */
        public final int m4617getDstAtop0nO6VwU() {
            return BlendMode.DstAtop;
        }

        /* JADX INFO: renamed from: getXor-0nO6VwU, reason: not valid java name */
        public final int m4638getXor0nO6VwU() {
            return BlendMode.Xor;
        }

        /* JADX INFO: renamed from: getPlus-0nO6VwU, reason: not valid java name */
        public final int m4629getPlus0nO6VwU() {
            return BlendMode.Plus;
        }

        /* JADX INFO: renamed from: getModulate-0nO6VwU, reason: not valid java name */
        public final int m4626getModulate0nO6VwU() {
            return BlendMode.Modulate;
        }

        /* JADX INFO: renamed from: getScreen-0nO6VwU, reason: not valid java name */
        public final int m4631getScreen0nO6VwU() {
            return BlendMode.Screen;
        }

        /* JADX INFO: renamed from: getOverlay-0nO6VwU, reason: not valid java name */
        public final int m4628getOverlay0nO6VwU() {
            return BlendMode.Overlay;
        }

        /* JADX INFO: renamed from: getDarken-0nO6VwU, reason: not valid java name */
        public final int m4614getDarken0nO6VwU() {
            return BlendMode.Darken;
        }

        /* JADX INFO: renamed from: getLighten-0nO6VwU, reason: not valid java name */
        public final int m4624getLighten0nO6VwU() {
            return BlendMode.Lighten;
        }

        /* JADX INFO: renamed from: getColorDodge-0nO6VwU, reason: not valid java name */
        public final int m4613getColorDodge0nO6VwU() {
            return BlendMode.ColorDodge;
        }

        /* JADX INFO: renamed from: getColorBurn-0nO6VwU, reason: not valid java name */
        public final int m4612getColorBurn0nO6VwU() {
            return BlendMode.ColorBurn;
        }

        /* JADX INFO: renamed from: getHardlight-0nO6VwU, reason: not valid java name */
        public final int m4622getHardlight0nO6VwU() {
            return BlendMode.Hardlight;
        }

        /* JADX INFO: renamed from: getSoftlight-0nO6VwU, reason: not valid java name */
        public final int m4632getSoftlight0nO6VwU() {
            return BlendMode.Softlight;
        }

        /* JADX INFO: renamed from: getDifference-0nO6VwU, reason: not valid java name */
        public final int m4615getDifference0nO6VwU() {
            return BlendMode.Difference;
        }

        /* JADX INFO: renamed from: getExclusion-0nO6VwU, reason: not valid java name */
        public final int m4621getExclusion0nO6VwU() {
            return BlendMode.Exclusion;
        }

        /* JADX INFO: renamed from: getMultiply-0nO6VwU, reason: not valid java name */
        public final int m4627getMultiply0nO6VwU() {
            return BlendMode.Multiply;
        }

        /* JADX INFO: renamed from: getHue-0nO6VwU, reason: not valid java name */
        public final int m4623getHue0nO6VwU() {
            return BlendMode.Hue;
        }

        /* JADX INFO: renamed from: getSaturation-0nO6VwU, reason: not valid java name */
        public final int m4630getSaturation0nO6VwU() {
            return BlendMode.Saturation;
        }

        /* JADX INFO: renamed from: getColor-0nO6VwU, reason: not valid java name */
        public final int m4611getColor0nO6VwU() {
            return BlendMode.Color;
        }

        /* JADX INFO: renamed from: getLuminosity-0nO6VwU, reason: not valid java name */
        public final int m4625getLuminosity0nO6VwU() {
            return BlendMode.Luminosity;
        }
    }

    public String toString() {
        return m4608toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m4608toStringimpl(int i) {
        return m4606equalsimpl0(i, Clear) ? "Clear" : m4606equalsimpl0(i, Src) ? "Src" : m4606equalsimpl0(i, Dst) ? "Dst" : m4606equalsimpl0(i, SrcOver) ? "SrcOver" : m4606equalsimpl0(i, DstOver) ? "DstOver" : m4606equalsimpl0(i, SrcIn) ? "SrcIn" : m4606equalsimpl0(i, DstIn) ? "DstIn" : m4606equalsimpl0(i, SrcOut) ? "SrcOut" : m4606equalsimpl0(i, DstOut) ? "DstOut" : m4606equalsimpl0(i, SrcAtop) ? "SrcAtop" : m4606equalsimpl0(i, DstAtop) ? "DstAtop" : m4606equalsimpl0(i, Xor) ? "Xor" : m4606equalsimpl0(i, Plus) ? "Plus" : m4606equalsimpl0(i, Modulate) ? "Modulate" : m4606equalsimpl0(i, Screen) ? "Screen" : m4606equalsimpl0(i, Overlay) ? "Overlay" : m4606equalsimpl0(i, Darken) ? "Darken" : m4606equalsimpl0(i, Lighten) ? "Lighten" : m4606equalsimpl0(i, ColorDodge) ? "ColorDodge" : m4606equalsimpl0(i, ColorBurn) ? "ColorBurn" : m4606equalsimpl0(i, Hardlight) ? "HardLight" : m4606equalsimpl0(i, Softlight) ? "Softlight" : m4606equalsimpl0(i, Difference) ? "Difference" : m4606equalsimpl0(i, Exclusion) ? "Exclusion" : m4606equalsimpl0(i, Multiply) ? "Multiply" : m4606equalsimpl0(i, Hue) ? "Hue" : m4606equalsimpl0(i, Saturation) ? ExifInterface.TAG_SATURATION : m4606equalsimpl0(i, Color) ? "Color" : m4606equalsimpl0(i, Luminosity) ? "Luminosity" : "Unknown";
    }
}
