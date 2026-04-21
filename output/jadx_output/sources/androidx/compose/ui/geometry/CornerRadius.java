package androidx.compose.ui.geometry;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: CornerRadius.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087@\u0018\u0000 32\u00020\u0001:\u00013B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\tH\u0087\n¢\u0006\u0004\b\u0012\u0010\rJ\u0010\u0010\u0013\u001a\u00020\tH\u0087\n¢\u0006\u0004\b\u0014\u0010\rJ!\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0019H\u0087\b¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0019H\u0087\b¢\u0006\u0004\b\u001d\u0010\u001bJ\u0010\u0010\u001e\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u001f\u0010\u0005J\u0018\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0000H\u0087\u0002¢\u0006\u0004\b\"\u0010#J\u0018\u0010$\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0000H\u0087\u0002¢\u0006\u0004\b%\u0010#J\u0018\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\tH\u0087\u0002¢\u0006\u0004\b(\u0010)J\u0018\u0010*\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\tH\u0087\u0002¢\u0006\u0004\b+\u0010)J\u000f\u0010,\u001a\u00020-H\u0016¢\u0006\u0004\b.\u0010/J\u0013\u00100\u001a\u00020\u00192\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00101\u001a\u000202HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\b\u001a\u00020\t8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001b\u0010\u000e\u001a\u00020\t8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u000f\u0010\u000b\u001a\u0004\b\u0010\u0010\r\u0088\u0001\u0002¨\u00064"}, d2 = {"Landroidx/compose/ui/geometry/CornerRadius;", "", "packedValue", "", "constructor-impl", "(J)J", "getPackedValue", "()J", "x", "", "getX$annotations", "()V", "getX-impl", "(J)F", "y", "getY$annotations", "getY-impl", "component1", "component1-impl", "component2", "component2-impl", "copy", "copy-OHQCggk", "(JFF)J", "isZero", "", "isZero-impl", "(J)Z", "isCircular", "isCircular-impl", "unaryMinus", "unaryMinus-kKHJgLs", "minus", "other", "minus-vF7b-mM", "(JJ)J", "plus", "plus-vF7b-mM", "times", "operand", "times-Bz7bX_o", "(JF)J", TtmlNode.TAG_DIV, "div-Bz7bX_o", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "equals", "hashCode", "", "Companion", "ui-geometry"}, k = 1, mv = {2, 0, 0}, xi = 48)
@JvmInline
public final class CornerRadius {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long Zero = m4406constructorimpl(0);
    private final long packedValue;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CornerRadius m4403boximpl(long j) {
        return new CornerRadius(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m4406constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m4410equalsimpl(long j, Object obj) {
        return (obj instanceof CornerRadius) && j == ((CornerRadius) obj).m4422unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m4411equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getX$annotations() {
    }

    public static /* synthetic */ void getY$annotations() {
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m4414hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    public boolean equals(Object other) {
        return m4410equalsimpl(this.packedValue, other);
    }

    public int hashCode() {
        return m4414hashCodeimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m4422unboximpl() {
        return this.packedValue;
    }

    private /* synthetic */ CornerRadius(long packedValue) {
        this.packedValue = packedValue;
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    /* JADX INFO: renamed from: getX-impl, reason: not valid java name */
    public static final float m4412getXimpl(long j) {
        int bits$iv$iv = (int) (j >> 32);
        return Float.intBitsToFloat(bits$iv$iv);
    }

    /* JADX INFO: renamed from: getY-impl, reason: not valid java name */
    public static final float m4413getYimpl(long j) {
        int bits$iv$iv = (int) (4294967295L & j);
        return Float.intBitsToFloat(bits$iv$iv);
    }

    /* JADX INFO: renamed from: component1-impl, reason: not valid java name */
    public static final float m4404component1impl(long j) {
        int bits$iv$iv$iv = (int) (j >> 32);
        return Float.intBitsToFloat(bits$iv$iv$iv);
    }

    /* JADX INFO: renamed from: component2-impl, reason: not valid java name */
    public static final float m4405component2impl(long j) {
        int bits$iv$iv$iv = (int) (4294967295L & j);
        return Float.intBitsToFloat(bits$iv$iv$iv);
    }

    /* JADX INFO: renamed from: copy-OHQCggk$default, reason: not valid java name */
    public static /* synthetic */ long m4408copyOHQCggk$default(long value$iv, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            int bits$iv$iv = (int) (value$iv >> 32);
            f = Float.intBitsToFloat(bits$iv$iv);
        }
        if ((i & 2) != 0) {
            int bits$iv$iv2 = (int) (4294967295L & value$iv);
            f2 = Float.intBitsToFloat(bits$iv$iv2);
        }
        return m4407copyOHQCggk(value$iv, f, f2);
    }

    /* JADX INFO: renamed from: copy-OHQCggk, reason: not valid java name */
    public static final long m4407copyOHQCggk(long j, float x, float y) {
        long v1$iv = Float.floatToRawIntBits(x);
        long v2$iv = Float.floatToRawIntBits(y);
        return m4406constructorimpl((v1$iv << 32) | (4294967295L & v2$iv));
    }

    /* JADX INFO: compiled from: CornerRadius.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\t\u0012\u0004\b\u0006\u0010\u0003\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/ui/geometry/CornerRadius$Companion;", "", "<init>", "()V", "Zero", "Landroidx/compose/ui/geometry/CornerRadius;", "getZero-kKHJgLs$annotations", "getZero-kKHJgLs", "()J", "J", "ui-geometry"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: renamed from: getZero-kKHJgLs$annotations, reason: not valid java name */
        public static /* synthetic */ void m4423getZerokKHJgLs$annotations() {
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getZero-kKHJgLs, reason: not valid java name */
        public final long m4424getZerokKHJgLs() {
            return CornerRadius.Zero;
        }
    }

    /* JADX INFO: renamed from: isZero-impl, reason: not valid java name */
    public static final boolean m4416isZeroimpl(long j) {
        long v = 9223372034707292159L & j;
        return (((v - InlineClassHelperKt.Uint64Low32) & (~v)) & (-9223372034707292160L)) != 0;
    }

    /* JADX INFO: renamed from: isCircular-impl, reason: not valid java name */
    public static final boolean m4415isCircularimpl(long j) {
        return (j >>> 32) == (4294967295L & j);
    }

    /* JADX INFO: renamed from: unaryMinus-kKHJgLs, reason: not valid java name */
    public static final long m4421unaryMinuskKHJgLs(long j) {
        return m4406constructorimpl((-9223372034707292160L) ^ j);
    }

    /* JADX INFO: renamed from: minus-vF7b-mM, reason: not valid java name */
    public static final long m4417minusvF7bmM(long j, long j2) {
        int bits$iv$iv = (int) (j >> 32);
        int bits$iv$iv2 = (int) (j2 >> 32);
        float val1$iv = Float.intBitsToFloat(bits$iv$iv) - Float.intBitsToFloat(bits$iv$iv2);
        int bits$iv$iv3 = (int) (j & 4294967295L);
        int bits$iv$iv4 = (int) (j2 & 4294967295L);
        float val2$iv = Float.intBitsToFloat(bits$iv$iv3) - Float.intBitsToFloat(bits$iv$iv4);
        long v1$iv = Float.floatToRawIntBits(val1$iv);
        long v2$iv = Float.floatToRawIntBits(val2$iv);
        return m4406constructorimpl((v1$iv << 32) | (4294967295L & v2$iv));
    }

    /* JADX INFO: renamed from: plus-vF7b-mM, reason: not valid java name */
    public static final long m4418plusvF7bmM(long j, long j2) {
        int bits$iv$iv = (int) (j >> 32);
        int bits$iv$iv2 = (int) (j2 >> 32);
        float val1$iv = Float.intBitsToFloat(bits$iv$iv) + Float.intBitsToFloat(bits$iv$iv2);
        int bits$iv$iv3 = (int) (j & 4294967295L);
        int bits$iv$iv4 = (int) (j2 & 4294967295L);
        float val2$iv = Float.intBitsToFloat(bits$iv$iv3) + Float.intBitsToFloat(bits$iv$iv4);
        long v1$iv = Float.floatToRawIntBits(val1$iv);
        long v2$iv = Float.floatToRawIntBits(val2$iv);
        return m4406constructorimpl((v1$iv << 32) | (4294967295L & v2$iv));
    }

    /* JADX INFO: renamed from: times-Bz7bX_o, reason: not valid java name */
    public static final long m4419timesBz7bX_o(long j, float operand) {
        int bits$iv$iv = (int) (j >> 32);
        float val1$iv = Float.intBitsToFloat(bits$iv$iv) * operand;
        int bits$iv$iv2 = (int) (j & 4294967295L);
        float val2$iv = Float.intBitsToFloat(bits$iv$iv2) * operand;
        long v1$iv = Float.floatToRawIntBits(val1$iv);
        long v2$iv = Float.floatToRawIntBits(val2$iv);
        return m4406constructorimpl((v1$iv << 32) | (4294967295L & v2$iv));
    }

    /* JADX INFO: renamed from: div-Bz7bX_o, reason: not valid java name */
    public static final long m4409divBz7bX_o(long j, float operand) {
        int bits$iv$iv = (int) (j >> 32);
        float val1$iv = Float.intBitsToFloat(bits$iv$iv) / operand;
        int bits$iv$iv2 = (int) (j & 4294967295L);
        float val2$iv = Float.intBitsToFloat(bits$iv$iv2) / operand;
        long v1$iv = Float.floatToRawIntBits(val1$iv);
        long v2$iv = Float.floatToRawIntBits(val2$iv);
        return m4406constructorimpl((v1$iv << 32) | (4294967295L & v2$iv));
    }

    public String toString() {
        return m4420toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m4420toStringimpl(long j) {
        int bits$iv$iv$iv = (int) (j >> 32);
        int bits$iv$iv$iv2 = (int) (j & 4294967295L);
        if (Float.intBitsToFloat(bits$iv$iv$iv) == Float.intBitsToFloat(bits$iv$iv$iv2)) {
            int bits$iv$iv$iv3 = (int) (j >> 32);
            return "CornerRadius.circular(" + GeometryUtilsKt.toStringAsFixed(Float.intBitsToFloat(bits$iv$iv$iv3), 1) + ')';
        }
        int bits$iv$iv$iv4 = (int) (j >> 32);
        int bits$iv$iv$iv5 = (int) (4294967295L & j);
        return "CornerRadius.elliptical(" + GeometryUtilsKt.toStringAsFixed(Float.intBitsToFloat(bits$iv$iv$iv4), 1) + ", " + GeometryUtilsKt.toStringAsFixed(Float.intBitsToFloat(bits$iv$iv$iv5), 1) + ')';
    }
}
