package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Brush.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BC\b\u0000\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u001c\u001a\u00060\u001dj\u0002`\u001e2\u0006\u0010\u001f\u001a\u00020\u001aH\u0016¢\u0006\u0004\b \u0010!J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\b\u0010&\u001a\u00020'H\u0016J\b\u0010(\u001a\u00020)H\u0016J\u001c\u0010*\u001a\u0004\u0018\u00010%2\b\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010+\u001a\u00020\u0007H\u0016R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0016\u0010\b\u001a\u00020\tX\u0080\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\n\u001a\u00020\tX\u0080\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0015\u0010\u0013R\u0016\u0010\u000b\u001a\u00020\fX\u0080\u0004¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0013¨\u0006,"}, d2 = {"Landroidx/compose/ui/graphics/LinearGradient;", "Landroidx/compose/ui/graphics/ShaderBrush;", "Landroidx/compose/ui/graphics/Interpolatable;", "colors", "", "Landroidx/compose/ui/graphics/Color;", "stops", "", TtmlNode.START, "Landroidx/compose/ui/geometry/Offset;", TtmlNode.END, "tileMode", "Landroidx/compose/ui/graphics/TileMode;", "<init>", "(Ljava/util/List;Ljava/util/List;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V", "getColors$ui_graphics", "()Ljava/util/List;", "getStops$ui_graphics", "getStart-F1C5BW0$ui_graphics", "()J", "J", "getEnd-F1C5BW0$ui_graphics", "getTileMode-3opZhB0$ui_graphics", "()I", "I", "intrinsicSize", "Landroidx/compose/ui/geometry/Size;", "getIntrinsicSize-NH-jbRc", "createShader", "Landroid/graphics/Shader;", "Landroidx/compose/ui/graphics/Shader;", "size", "createShader-uvyYCjk", "(J)Landroid/graphics/Shader;", "equals", "", "other", "", "hashCode", "", "toString", "", "lerp", "t", "ui-graphics"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LinearGradient extends ShaderBrush implements Interpolatable {
    public static final int $stable = 0;
    private final List<Color> colors;
    private final long end;
    private final long start;
    private final List<Float> stops;
    private final int tileMode;

    public /* synthetic */ LinearGradient(List list, List list2, long j, long j2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, j, j2, i);
    }

    private LinearGradient(List<Color> list, List<Float> list2, long start, long end, int tileMode) {
        this.colors = list;
        this.stops = list2;
        this.start = start;
        this.end = end;
        this.tileMode = tileMode;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ LinearGradient(List list, List list2, long j, long j2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        List list3;
        int iM5092getClamp3opZhB0;
        if ((i2 & 2) == 0) {
            list3 = list2;
        } else {
            list3 = null;
        }
        if ((i2 & 16) == 0) {
            iM5092getClamp3opZhB0 = i;
        } else {
            iM5092getClamp3opZhB0 = TileMode.INSTANCE.m5092getClamp3opZhB0();
        }
        this(list, list3, j, j2, iM5092getClamp3opZhB0, null);
    }

    public final List<Color> getColors$ui_graphics() {
        return this.colors;
    }

    public final List<Float> getStops$ui_graphics() {
        return this.stops;
    }

    /* JADX INFO: renamed from: getStart-F1C5BW0$ui_graphics, reason: not valid java name and from getter */
    public final long getStart() {
        return this.start;
    }

    /* JADX INFO: renamed from: getEnd-F1C5BW0$ui_graphics, reason: not valid java name and from getter */
    public final long getEnd() {
        return this.end;
    }

    /* JADX INFO: renamed from: getTileMode-3opZhB0$ui_graphics, reason: not valid java name and from getter */
    public final int getTileMode() {
        return this.tileMode;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006a  */
    @Override // androidx.compose.ui.graphics.Brush
    /* JADX INFO: renamed from: getIntrinsicSize-NH-jbRc */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long getIntrinsicSize() {
        float width$iv;
        int bits$iv$iv$iv = (int) (this.start >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv);
        float height$iv = Float.NaN;
        if ((Float.isInfinite(fIntBitsToFloat) || Float.isNaN(fIntBitsToFloat)) ? false : true) {
            int bits$iv$iv$iv2 = (int) (this.end >> 32);
            float fIntBitsToFloat2 = Float.intBitsToFloat(bits$iv$iv$iv2);
            if ((Float.isInfinite(fIntBitsToFloat2) || Float.isNaN(fIntBitsToFloat2)) ? false : true) {
                int bits$iv$iv$iv3 = (int) (this.start >> 32);
                float fIntBitsToFloat3 = Float.intBitsToFloat(bits$iv$iv$iv3);
                int bits$iv$iv$iv4 = (int) (this.end >> 32);
                width$iv = Math.abs(fIntBitsToFloat3 - Float.intBitsToFloat(bits$iv$iv$iv4));
            } else {
                width$iv = Float.NaN;
            }
        }
        int bits$iv$iv$iv5 = (int) (this.start & 4294967295L);
        float fIntBitsToFloat4 = Float.intBitsToFloat(bits$iv$iv$iv5);
        if ((Float.isInfinite(fIntBitsToFloat4) || Float.isNaN(fIntBitsToFloat4)) ? false : true) {
            int bits$iv$iv$iv6 = (int) (this.end & 4294967295L);
            float fIntBitsToFloat5 = Float.intBitsToFloat(bits$iv$iv$iv6);
            if ((Float.isInfinite(fIntBitsToFloat5) || Float.isNaN(fIntBitsToFloat5)) ? false : true) {
                int bits$iv$iv$iv7 = (int) (this.start & 4294967295L);
                float fIntBitsToFloat6 = Float.intBitsToFloat(bits$iv$iv$iv7);
                int bits$iv$iv$iv8 = (int) (this.end & 4294967295L);
                height$iv = Math.abs(fIntBitsToFloat6 - Float.intBitsToFloat(bits$iv$iv$iv8));
            }
        }
        float val2$iv$iv = height$iv;
        float val1$iv$iv = width$iv;
        long v1$iv$iv = Float.floatToRawIntBits(val1$iv$iv);
        long v2$iv$iv = Float.floatToRawIntBits(val2$iv$iv);
        return Size.m4512constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv));
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    /* JADX INFO: renamed from: createShader-uvyYCjk */
    public Shader mo4666createShaderuvyYCjk(long size) {
        float startX;
        float startY;
        float endX;
        char c;
        float endY;
        int bits$iv$iv$iv = (int) (this.start >> 32);
        if (Float.intBitsToFloat(bits$iv$iv$iv) == Float.POSITIVE_INFINITY) {
            int bits$iv$iv$iv2 = (int) (size >> 32);
            startX = Float.intBitsToFloat(bits$iv$iv$iv2);
        } else {
            int bits$iv$iv$iv3 = (int) (this.start >> 32);
            startX = Float.intBitsToFloat(bits$iv$iv$iv3);
        }
        int bits$iv$iv$iv4 = (int) (this.start & 4294967295L);
        if (Float.intBitsToFloat(bits$iv$iv$iv4) == Float.POSITIVE_INFINITY) {
            int bits$iv$iv$iv5 = (int) (size & 4294967295L);
            startY = Float.intBitsToFloat(bits$iv$iv$iv5);
        } else {
            int bits$iv$iv$iv6 = (int) (this.start & 4294967295L);
            startY = Float.intBitsToFloat(bits$iv$iv$iv6);
        }
        int bits$iv$iv$iv7 = (int) (this.end >> 32);
        if (Float.intBitsToFloat(bits$iv$iv$iv7) == Float.POSITIVE_INFINITY) {
            int bits$iv$iv$iv8 = (int) (size >> 32);
            endX = Float.intBitsToFloat(bits$iv$iv$iv8);
        } else {
            int bits$iv$iv$iv9 = (int) (this.end >> 32);
            endX = Float.intBitsToFloat(bits$iv$iv$iv9);
        }
        int bits$iv$iv$iv10 = (int) (this.end & 4294967295L);
        if (Float.intBitsToFloat(bits$iv$iv$iv10) == Float.POSITIVE_INFINITY) {
            c = ' ';
            int bits$iv$iv$iv11 = (int) (size & 4294967295L);
            endY = Float.intBitsToFloat(bits$iv$iv$iv11);
        } else {
            c = ' ';
            int bits$iv$iv$iv12 = (int) (this.end & 4294967295L);
            endY = Float.intBitsToFloat(bits$iv$iv$iv12);
        }
        List<Color> list = this.colors;
        List<Float> list2 = this.stops;
        float y$iv = startY;
        float x$iv = startX;
        char c2 = c;
        long v1$iv$iv = Float.floatToRawIntBits(x$iv);
        long v2$iv$iv = Float.floatToRawIntBits(y$iv);
        long v2$iv$iv2 = Offset.m4444constructorimpl((v1$iv$iv << c2) | (v2$iv$iv & 4294967295L));
        float y$iv2 = endY;
        float x$iv2 = endX;
        long v1$iv$iv2 = Float.floatToRawIntBits(x$iv2);
        long v2$iv$iv3 = Float.floatToRawIntBits(y$iv2);
        return ShaderKt.m5031LinearGradientShaderVjE6UOU(v2$iv$iv2, Offset.m4444constructorimpl((v1$iv$iv2 << c2) | (v2$iv$iv3 & 4294967295L)), list, list2, this.tileMode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof LinearGradient) && Intrinsics.areEqual(this.colors, ((LinearGradient) other).colors) && Intrinsics.areEqual(this.stops, ((LinearGradient) other).stops) && Offset.m4449equalsimpl0(this.start, ((LinearGradient) other).start) && Offset.m4449equalsimpl0(this.end, ((LinearGradient) other).end) && TileMode.m5088equalsimpl0(this.tileMode, ((LinearGradient) other).tileMode);
    }

    public int hashCode() {
        int result = this.colors.hashCode();
        int i = result * 31;
        List<Float> list = this.stops;
        int result2 = i + (list != null ? list.hashCode() : 0);
        return (((((result2 * 31) + Offset.m4454hashCodeimpl(this.start)) * 31) + Offset.m4454hashCodeimpl(this.end)) * 31) + TileMode.m5089hashCodeimpl(this.tileMode);
    }

    public String toString() {
        long v$iv = (this.start & androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase) ^ androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase;
        String startValue = (((v$iv - androidx.compose.ui.geometry.InlineClassHelperKt.Uint64Low32) & (-9223372034707292160L)) > 0L ? 1 : (((v$iv - androidx.compose.ui.geometry.InlineClassHelperKt.Uint64Low32) & (-9223372034707292160L)) == 0L ? 0 : -1)) == 0 ? "start=" + ((Object) Offset.m4460toStringimpl(this.start)) + ", " : "";
        long v$iv2 = (this.end & androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase) ^ androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase;
        String endValue = ((v$iv2 - androidx.compose.ui.geometry.InlineClassHelperKt.Uint64Low32) & (-9223372034707292160L)) == 0 ? "end=" + ((Object) Offset.m4460toStringimpl(this.end)) + ", " : "";
        return "LinearGradient(colors=" + this.colors + ", stops=" + this.stops + ", " + startValue + endValue + "tileMode=" + ((Object) TileMode.m5090toStringimpl(this.tileMode)) + ')';
    }

    @Override // androidx.compose.ui.graphics.Interpolatable
    public Object lerp(Object other, float t) {
        Object other2;
        DefaultConstructorMarker defaultConstructorMarker = null;
        if (other != null) {
            other2 = other;
        } else {
            other2 = new SolidColor(Color.INSTANCE.m4732getTransparent0d7_KjU(), defaultConstructorMarker);
        }
        if (other2 instanceof SolidColor) {
            List<Color> list = this.colors;
            ArrayList target$iv = new ArrayList(list.size());
            int size = list.size();
            for (int index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
                Object item$iv$iv = list.get(index$iv$iv);
                ((Color) item$iv$iv).m4707unboximpl();
                long it = ((SolidColor) other2).getValue();
                target$iv.add(Color.m4687boximpl(it));
            }
            other2 = new LinearGradient(target$iv, this.stops, this.start, this.end, this.tileMode, null);
        }
        if (!(other2 instanceof LinearGradient)) {
            return null;
        }
        return new LinearGradient(BrushKt.lerpColorList(this.colors, ((LinearGradient) other2).colors, t), BrushKt.lerpNullableFloatList(this.stops, ((LinearGradient) other2).stops, t), BrushKt.m4665lerpSafeWko1d7g(this.start, ((LinearGradient) other2).start, t), BrushKt.m4665lerpSafeWko1d7g(this.end, ((LinearGradient) other2).end, t), t < 0.5f ? this.tileMode : ((LinearGradient) other2).tileMode, null);
    }
}
