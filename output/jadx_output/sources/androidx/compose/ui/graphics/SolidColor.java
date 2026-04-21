package androidx.compose.ui.graphics;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: Brush.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001d\u001a\u00020\u0011H\u0016R\u0013\u0010\u0003\u001a\u00020\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\b¨\u0006\u001e"}, d2 = {"Landroidx/compose/ui/graphics/SolidColor;", "Landroidx/compose/ui/graphics/Brush;", "Landroidx/compose/ui/graphics/Interpolatable;", Values.VECTOR_MAP_VECTORS_KEY, "Landroidx/compose/ui/graphics/Color;", "<init>", "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getValue-0d7_KjU", "()J", "J", "applyTo", "", "size", "Landroidx/compose/ui/geometry/Size;", TtmlNode.TAG_P, "Landroidx/compose/ui/graphics/Paint;", "alpha", "", "applyTo-Pq9zytI", "(JLandroidx/compose/ui/graphics/Paint;F)V", "equals", "", "other", "", "hashCode", "", "toString", "", "lerp", "t", "ui-graphics"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SolidColor extends Brush implements Interpolatable {
    public static final int $stable = 0;
    private final long value;

    public /* synthetic */ SolidColor(long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(j);
    }

    private SolidColor(long value) {
        super(null);
        this.value = value;
    }

    /* JADX INFO: renamed from: getValue-0d7_KjU, reason: not valid java name and from getter */
    public final long getValue() {
        return this.value;
    }

    @Override // androidx.compose.ui.graphics.Brush
    /* JADX INFO: renamed from: applyTo-Pq9zytI */
    public void mo4642applyToPq9zytI(long size, Paint p, float alpha) {
        p.setAlpha(1.0f);
        boolean z = alpha == 1.0f;
        long jM4695copywmQWz5c = this.value;
        if (!z) {
            jM4695copywmQWz5c = Color.m4695copywmQWz5c(jM4695copywmQWz5c, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jM4695copywmQWz5c) : Color.m4699getAlphaimpl(this.value) * alpha, (14 & 2) != 0 ? Color.m4703getRedimpl(jM4695copywmQWz5c) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jM4695copywmQWz5c) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jM4695copywmQWz5c) : 0.0f);
        }
        p.mo4573setColor8_81llA(jM4695copywmQWz5c);
        if (p.getShader() != null) {
            p.setShader(null);
        }
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SolidColor) && Color.m4698equalsimpl0(this.value, ((SolidColor) other).value);
    }

    public int hashCode() {
        return Color.m4704hashCodeimpl(this.value);
    }

    public String toString() {
        return "SolidColor(value=" + ((Object) Color.m4705toStringimpl(this.value)) + ')';
    }

    @Override // androidx.compose.ui.graphics.Interpolatable
    public Object lerp(Object other, float t) {
        Object other2 = other;
        DefaultConstructorMarker defaultConstructorMarker = null;
        if (other2 == null) {
            other2 = new SolidColor(Color.INSTANCE.m4732getTransparent0d7_KjU(), defaultConstructorMarker);
        }
        if (!(other2 instanceof SolidColor)) {
            return null;
        }
        return new SolidColor(ColorKt.m4748lerpjxsXWHM(this.value, ((SolidColor) other2).value, t), defaultConstructorMarker);
    }
}
