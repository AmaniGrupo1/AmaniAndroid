package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: TextLayoutResultProxy.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u000f\b\u0001\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bJ\u0018\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u00122\b\b\u0002\u0010\u001e\u001a\u00020\u0016J\u0015\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u0014¢\u0006\u0004\b!\u0010\"J\u0017\u0010#\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u0014H\u0000¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u0014H\u0000¢\u0006\u0004\b'\u0010%J\u0013\u0010(\u001a\u00020\u0014*\u00020\u0014H\u0002¢\u0006\u0004\b)\u0010%R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000e¨\u0006*"}, d2 = {"Landroidx/compose/foundation/text/TextLayoutResultProxy;", "", Values.VECTOR_MAP_VECTORS_KEY, "Landroidx/compose/ui/text/TextLayoutResult;", "innerTextFieldCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "decorationBoxCoordinates", "<init>", "(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;)V", "getValue", "()Landroidx/compose/ui/text/TextLayoutResult;", "getInnerTextFieldCoordinates", "()Landroidx/compose/ui/layout/LayoutCoordinates;", "setInnerTextFieldCoordinates", "(Landroidx/compose/ui/layout/LayoutCoordinates;)V", "getDecorationBoxCoordinates", "setDecorationBoxCoordinates", "getOffsetForPosition", "", "position", "Landroidx/compose/ui/geometry/Offset;", "coerceInVisibleBounds", "", "getOffsetForPosition-3MmeM6k", "(JZ)I", "getLineForVerticalPosition", "vertical", "", "getLineEnd", "lineIndex", "visibleEnd", "isPositionOnText", "offset", "isPositionOnText-k-4lQ0M", "(J)Z", "translateDecorationToInnerCoordinates", "translateDecorationToInnerCoordinates-MK-Hz9U$foundation", "(J)J", "translateInnerToDecorationCoordinates", "translateInnerToDecorationCoordinates-MK-Hz9U$foundation", "coercedInVisibleBoundsOfInputText", "coercedInVisibleBoundsOfInputText-MK-Hz9U", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TextLayoutResultProxy {
    public static final int $stable = 8;
    private LayoutCoordinates decorationBoxCoordinates;
    private LayoutCoordinates innerTextFieldCoordinates;
    private final TextLayoutResult value;

    public TextLayoutResultProxy(TextLayoutResult value, LayoutCoordinates innerTextFieldCoordinates, LayoutCoordinates decorationBoxCoordinates) {
        this.value = value;
        this.innerTextFieldCoordinates = innerTextFieldCoordinates;
        this.decorationBoxCoordinates = decorationBoxCoordinates;
    }

    public /* synthetic */ TextLayoutResultProxy(TextLayoutResult textLayoutResult, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(textLayoutResult, (i & 2) != 0 ? null : layoutCoordinates, (i & 4) != 0 ? null : layoutCoordinates2);
    }

    public final TextLayoutResult getValue() {
        return this.value;
    }

    public final LayoutCoordinates getInnerTextFieldCoordinates() {
        return this.innerTextFieldCoordinates;
    }

    public final void setInnerTextFieldCoordinates(LayoutCoordinates layoutCoordinates) {
        this.innerTextFieldCoordinates = layoutCoordinates;
    }

    public final LayoutCoordinates getDecorationBoxCoordinates() {
        return this.decorationBoxCoordinates;
    }

    public final void setDecorationBoxCoordinates(LayoutCoordinates layoutCoordinates) {
        this.decorationBoxCoordinates = layoutCoordinates;
    }

    /* JADX INFO: renamed from: getOffsetForPosition-3MmeM6k$default, reason: not valid java name */
    public static /* synthetic */ int m1290getOffsetForPosition3MmeM6k$default(TextLayoutResultProxy textLayoutResultProxy, long j, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return textLayoutResultProxy.m1291getOffsetForPosition3MmeM6k(j, z);
    }

    /* JADX INFO: renamed from: getOffsetForPosition-3MmeM6k, reason: not valid java name */
    public final int m1291getOffsetForPosition3MmeM6k(long position, boolean coerceInVisibleBounds) {
        long coercedPosition = coerceInVisibleBounds ? m1289coercedInVisibleBoundsOfInputTextMKHz9U(position) : position;
        long relativePosition = m1293translateDecorationToInnerCoordinatesMKHz9U$foundation(coercedPosition);
        return this.value.m6898getOffsetForPositionk4lQ0M(relativePosition);
    }

    public final int getLineForVerticalPosition(float vertical) {
        long v1$iv$iv = Float.floatToRawIntBits(0.0f);
        long v2$iv$iv = Float.floatToRawIntBits(vertical);
        long coercedPosition = m1289coercedInVisibleBoundsOfInputTextMKHz9U(Offset.m4444constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L)));
        int bits$iv$iv$iv = (int) (m1293translateDecorationToInnerCoordinatesMKHz9U$foundation(coercedPosition) & 4294967295L);
        float relativeVertical = Float.intBitsToFloat(bits$iv$iv$iv);
        return this.value.getLineForVerticalPosition(relativeVertical);
    }

    public static /* synthetic */ int getLineEnd$default(TextLayoutResultProxy textLayoutResultProxy, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return textLayoutResultProxy.getLineEnd(i, z);
    }

    public final int getLineEnd(int lineIndex, boolean visibleEnd) {
        return this.value.getLineEnd(lineIndex, visibleEnd);
    }

    /* JADX INFO: renamed from: isPositionOnText-k-4lQ0M, reason: not valid java name */
    public final boolean m1292isPositionOnTextk4lQ0M(long offset) {
        long visibleOffset = m1289coercedInVisibleBoundsOfInputTextMKHz9U(offset);
        long relativeOffset = m1293translateDecorationToInnerCoordinatesMKHz9U$foundation(visibleOffset);
        int bits$iv$iv$iv = (int) (4294967295L & relativeOffset);
        int line = this.value.getLineForVerticalPosition(Float.intBitsToFloat(bits$iv$iv$iv));
        int bits$iv$iv$iv2 = (int) (relativeOffset >> 32);
        if (Float.intBitsToFloat(bits$iv$iv$iv2) >= this.value.getLineLeft(line)) {
            int bits$iv$iv$iv3 = (int) (relativeOffset >> 32);
            if (Float.intBitsToFloat(bits$iv$iv$iv3) <= this.value.getLineRight(line)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: translateDecorationToInnerCoordinates-MK-Hz9U$foundation, reason: not valid java name */
    public final long m1293translateDecorationToInnerCoordinatesMKHz9U$foundation(long offset) {
        LayoutCoordinates it;
        LayoutCoordinates innerCoords = this.innerTextFieldCoordinates;
        if (innerCoords != null) {
            if (!innerCoords.isAttached()) {
                innerCoords = null;
            }
            if (innerCoords != null && (it = this.decorationBoxCoordinates) != null) {
                LayoutCoordinates decorationCoords = it.isAttached() ? it : null;
                if (decorationCoords != null) {
                    return innerCoords.mo6150localPositionOfR5De75A(decorationCoords, offset);
                }
            }
            return offset;
        }
        return offset;
    }

    /* JADX INFO: renamed from: translateInnerToDecorationCoordinates-MK-Hz9U$foundation, reason: not valid java name */
    public final long m1294translateInnerToDecorationCoordinatesMKHz9U$foundation(long offset) {
        LayoutCoordinates it;
        LayoutCoordinates innerCoords = this.innerTextFieldCoordinates;
        if (innerCoords != null) {
            if (!innerCoords.isAttached()) {
                innerCoords = null;
            }
            if (innerCoords != null && (it = this.decorationBoxCoordinates) != null) {
                LayoutCoordinates decorationCoords = it.isAttached() ? it : null;
                if (decorationCoords != null) {
                    return decorationCoords.mo6150localPositionOfR5De75A(innerCoords, offset);
                }
            }
            return offset;
        }
        return offset;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0020  */
    /* JADX INFO: renamed from: coercedInVisibleBoundsOfInputText-MK-Hz9U, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final long m1289coercedInVisibleBoundsOfInputTextMKHz9U(long j) {
        Rect visibleInnerTextFieldRect;
        LayoutCoordinates innerTextFieldCoordinates = this.innerTextFieldCoordinates;
        if (innerTextFieldCoordinates != null) {
            if (innerTextFieldCoordinates.isAttached()) {
                LayoutCoordinates layoutCoordinates = this.decorationBoxCoordinates;
                visibleInnerTextFieldRect = null;
                if (layoutCoordinates != null) {
                    visibleInnerTextFieldRect = LayoutCoordinates.localBoundingBoxOf$default(layoutCoordinates, innerTextFieldCoordinates, false, 2, null);
                }
            } else {
                visibleInnerTextFieldRect = Rect.INSTANCE.getZero();
            }
            if (visibleInnerTextFieldRect == null) {
            }
        } else {
            visibleInnerTextFieldRect = Rect.INSTANCE.getZero();
        }
        return TextLayoutResultProxyKt.m1296coerceIn3MmeM6k(j, visibleInnerTextFieldRect);
    }
}
