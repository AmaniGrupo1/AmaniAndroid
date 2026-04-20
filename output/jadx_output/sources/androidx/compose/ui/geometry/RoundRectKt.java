package androidx.compose.ui.geometry;

import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;

/* JADX INFO: compiled from: RoundRect.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0013\u001a6\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0003\u001a5\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\f\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0003\u001a\u001d\u0010\u0000\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010\u001a=\u0010\u0000\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\n2\b\b\u0002\u0010\u0012\u001a\u00020\n2\b\b\u0002\u0010\u0013\u001a\u00020\n2\b\b\u0002\u0010\u0014\u001a\u00020\n¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0019\u0010\u0017\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0019¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u001e\u00101\u001a\u00020\u00012\u0006\u00102\u001a\u00020\u00012\u0006\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0003\"\u0015\u0010\u001c\u001a\u00020\u000e*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e\"\u0015\u0010\u001f\u001a\u00020\u000e*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b \u0010\u001e\"\u0015\u0010!\u001a\u00020\"*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b!\u0010#\"\u0015\u0010$\u001a\u00020\"*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b$\u0010#\"\u0015\u0010%\u001a\u00020\"*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b%\u0010#\"\u0015\u0010&\u001a\u00020\"*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b&\u0010#\"\u0015\u0010'\u001a\u00020\"*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b'\u0010#\"\u0015\u0010(\u001a\u00020\u0003*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b)\u0010*\"\u0015\u0010+\u001a\u00020\u0003*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b,\u0010*\"\u0015\u0010-\u001a\u00020\u0019*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b.\u0010/\"\u0015\u00100\u001a\u00020\"*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b0\u0010#¨\u00065"}, d2 = {"RoundRect", "Landroidx/compose/ui/geometry/RoundRect;", TtmlNode.LEFT, "", "top", TtmlNode.RIGHT, "bottom", "radiusX", "radiusY", "cornerRadius", "Landroidx/compose/ui/geometry/CornerRadius;", "RoundRect-gG7oq9Y", "(FFFFJ)Landroidx/compose/ui/geometry/RoundRect;", "rect", "Landroidx/compose/ui/geometry/Rect;", "RoundRect-sniSvfs", "(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/RoundRect;", "topLeft", "topRight", "bottomRight", "bottomLeft", "RoundRect-ZAM2FJo", "(Landroidx/compose/ui/geometry/Rect;JJJJ)Landroidx/compose/ui/geometry/RoundRect;", "translate", "offset", "Landroidx/compose/ui/geometry/Offset;", "translate-Uv8p0NA", "(Landroidx/compose/ui/geometry/RoundRect;J)Landroidx/compose/ui/geometry/RoundRect;", "boundingRect", "getBoundingRect", "(Landroidx/compose/ui/geometry/RoundRect;)Landroidx/compose/ui/geometry/Rect;", "safeInnerRect", "getSafeInnerRect", "isEmpty", "", "(Landroidx/compose/ui/geometry/RoundRect;)Z", "isFinite", "isRect", "isEllipse", "isCircle", "minDimension", "getMinDimension", "(Landroidx/compose/ui/geometry/RoundRect;)F", "maxDimension", "getMaxDimension", TtmlNode.CENTER, "getCenter", "(Landroidx/compose/ui/geometry/RoundRect;)J", "isSimple", "lerp", TtmlNode.START, "stop", "fraction", "ui-geometry"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class RoundRectKt {
    public static final RoundRect RoundRect(float left, float top, float right, float bottom, float radiusX, float radiusY) {
        long v1$iv$iv = Float.floatToRawIntBits(radiusX);
        long v2$iv$iv = Float.floatToRawIntBits(radiusY);
        long jM4406constructorimpl = CornerRadius.m4406constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv));
        return new RoundRect(left, top, right, bottom, jM4406constructorimpl, jM4406constructorimpl, jM4406constructorimpl, jM4406constructorimpl, null);
    }

    /* JADX INFO: renamed from: RoundRect-gG7oq9Y, reason: not valid java name */
    public static final RoundRect m4506RoundRectgG7oq9Y(float left, float top, float right, float bottom, long j) {
        int bits$iv$iv$iv = (int) (j >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv);
        int bits$iv$iv$iv2 = (int) (4294967295L & j);
        return RoundRect(left, top, right, bottom, fIntBitsToFloat, Float.intBitsToFloat(bits$iv$iv$iv2));
    }

    public static final RoundRect RoundRect(Rect rect, float radiusX, float radiusY) {
        return RoundRect(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), radiusX, radiusY);
    }

    /* JADX INFO: renamed from: RoundRect-sniSvfs, reason: not valid java name */
    public static final RoundRect m4507RoundRectsniSvfs(Rect rect, long j) {
        int bits$iv$iv$iv = (int) (j >> 32);
        int bits$iv$iv$iv2 = (int) (4294967295L & j);
        return RoundRect(rect, Float.intBitsToFloat(bits$iv$iv$iv), Float.intBitsToFloat(bits$iv$iv$iv2));
    }

    /* JADX INFO: renamed from: RoundRect-ZAM2FJo, reason: not valid java name */
    public static final RoundRect m4504RoundRectZAM2FJo(Rect rect, long j, long j2, long j3, long j4) {
        return new RoundRect(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom(), j, j2, j3, j4, null);
    }

    /* JADX INFO: renamed from: translate-Uv8p0NA, reason: not valid java name */
    public static final RoundRect m4508translateUv8p0NA(RoundRect $this$translate_u2dUv8p0NA, long j) {
        int bits$iv$iv$iv = (int) (j >> 32);
        int bits$iv$iv$iv2 = (int) (j & 4294967295L);
        int bits$iv$iv$iv3 = (int) (j >> 32);
        int bits$iv$iv$iv4 = (int) (4294967295L & j);
        return new RoundRect($this$translate_u2dUv8p0NA.getLeft() + Float.intBitsToFloat(bits$iv$iv$iv), $this$translate_u2dUv8p0NA.getTop() + Float.intBitsToFloat(bits$iv$iv$iv2), $this$translate_u2dUv8p0NA.getRight() + Float.intBitsToFloat(bits$iv$iv$iv3), $this$translate_u2dUv8p0NA.getBottom() + Float.intBitsToFloat(bits$iv$iv$iv4), $this$translate_u2dUv8p0NA.m4502getTopLeftCornerRadiuskKHJgLs(), $this$translate_u2dUv8p0NA.m4503getTopRightCornerRadiuskKHJgLs(), $this$translate_u2dUv8p0NA.m4501getBottomRightCornerRadiuskKHJgLs(), $this$translate_u2dUv8p0NA.m4500getBottomLeftCornerRadiuskKHJgLs(), null);
    }

    public static final Rect getBoundingRect(RoundRect $this$boundingRect) {
        return new Rect($this$boundingRect.getLeft(), $this$boundingRect.getTop(), $this$boundingRect.getRight(), $this$boundingRect.getBottom());
    }

    public static final Rect getSafeInnerRect(RoundRect $this$safeInnerRect) {
        int bits$iv$iv$iv = (int) ($this$safeInnerRect.m4500getBottomLeftCornerRadiuskKHJgLs() >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv);
        int bits$iv$iv$iv2 = (int) ($this$safeInnerRect.m4502getTopLeftCornerRadiuskKHJgLs() >> 32);
        float leftRadius = Math.max(fIntBitsToFloat, Float.intBitsToFloat(bits$iv$iv$iv2));
        int bits$iv$iv$iv3 = (int) ($this$safeInnerRect.m4502getTopLeftCornerRadiuskKHJgLs() & 4294967295L);
        float fIntBitsToFloat2 = Float.intBitsToFloat(bits$iv$iv$iv3);
        int bits$iv$iv$iv4 = (int) ($this$safeInnerRect.m4503getTopRightCornerRadiuskKHJgLs() & 4294967295L);
        float topRadius = Math.max(fIntBitsToFloat2, Float.intBitsToFloat(bits$iv$iv$iv4));
        int bits$iv$iv$iv5 = (int) ($this$safeInnerRect.m4503getTopRightCornerRadiuskKHJgLs() >> 32);
        float fIntBitsToFloat3 = Float.intBitsToFloat(bits$iv$iv$iv5);
        int bits$iv$iv$iv6 = (int) ($this$safeInnerRect.m4501getBottomRightCornerRadiuskKHJgLs() >> 32);
        float rightRadius = Math.max(fIntBitsToFloat3, Float.intBitsToFloat(bits$iv$iv$iv6));
        int bits$iv$iv$iv7 = (int) ($this$safeInnerRect.m4501getBottomRightCornerRadiuskKHJgLs() & 4294967295L);
        float fIntBitsToFloat4 = Float.intBitsToFloat(bits$iv$iv$iv7);
        int bits$iv$iv$iv8 = (int) (4294967295L & $this$safeInnerRect.m4500getBottomLeftCornerRadiuskKHJgLs());
        float bottomRadius = Math.max(fIntBitsToFloat4, Float.intBitsToFloat(bits$iv$iv$iv8));
        return new Rect($this$safeInnerRect.getLeft() + (leftRadius * 0.29289323f), $this$safeInnerRect.getTop() + (topRadius * 0.29289323f), $this$safeInnerRect.getRight() - (rightRadius * 0.29289323f), $this$safeInnerRect.getBottom() - (bottomRadius * 0.29289323f));
    }

    public static final boolean isEmpty(RoundRect $this$isEmpty) {
        return $this$isEmpty.getLeft() >= $this$isEmpty.getRight() || $this$isEmpty.getTop() >= $this$isEmpty.getBottom();
    }

    public static final boolean isFinite(RoundRect $this$isFinite) {
        float $this$fastIsFinite$iv = $this$isFinite.getLeft();
        if ((Float.floatToRawIntBits($this$fastIsFinite$iv) & Integer.MAX_VALUE) < 2139095040) {
            float $this$fastIsFinite$iv2 = $this$isFinite.getTop();
            if ((Float.floatToRawIntBits($this$fastIsFinite$iv2) & Integer.MAX_VALUE) < 2139095040) {
                float $this$fastIsFinite$iv3 = $this$isFinite.getRight();
                if ((Float.floatToRawIntBits($this$fastIsFinite$iv3) & Integer.MAX_VALUE) < 2139095040) {
                    float $this$fastIsFinite$iv4 = $this$isFinite.getBottom();
                    if ((Float.floatToRawIntBits($this$fastIsFinite$iv4) & Integer.MAX_VALUE) < 2139095040) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final boolean isRect(RoundRect $this$isRect) {
        long v$iv = $this$isRect.m4502getTopLeftCornerRadiuskKHJgLs() & 9223372034707292159L;
        if ((((v$iv - InlineClassHelperKt.Uint64Low32) & (~v$iv)) & (-9223372034707292160L)) != 0) {
            long v$iv2 = $this$isRect.m4503getTopRightCornerRadiuskKHJgLs() & 9223372034707292159L;
            if ((((v$iv2 - InlineClassHelperKt.Uint64Low32) & (~v$iv2)) & (-9223372034707292160L)) != 0) {
                long v$iv3 = $this$isRect.m4500getBottomLeftCornerRadiuskKHJgLs() & 9223372034707292159L;
                if ((((v$iv3 - InlineClassHelperKt.Uint64Low32) & (~v$iv3)) & (-9223372034707292160L)) != 0) {
                    long v$iv4 = $this$isRect.m4501getBottomRightCornerRadiuskKHJgLs() & 9223372034707292159L;
                    if ((((v$iv4 - InlineClassHelperKt.Uint64Low32) & (~v$iv4)) & (-9223372034707292160L)) != 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final boolean isEllipse(RoundRect $this$isEllipse) {
        if ($this$isEllipse.m4502getTopLeftCornerRadiuskKHJgLs() == $this$isEllipse.m4503getTopRightCornerRadiuskKHJgLs() && $this$isEllipse.m4503getTopRightCornerRadiuskKHJgLs() == $this$isEllipse.m4501getBottomRightCornerRadiuskKHJgLs() && $this$isEllipse.m4501getBottomRightCornerRadiuskKHJgLs() == $this$isEllipse.m4500getBottomLeftCornerRadiuskKHJgLs()) {
            double width = $this$isEllipse.getWidth();
            int bits$iv$iv$iv = (int) ($this$isEllipse.m4502getTopLeftCornerRadiuskKHJgLs() >> 32);
            if (width <= ((double) Float.intBitsToFloat(bits$iv$iv$iv)) * 2.0d) {
                double height = $this$isEllipse.getHeight();
                int bits$iv$iv$iv2 = (int) (4294967295L & $this$isEllipse.m4502getTopLeftCornerRadiuskKHJgLs());
                if (height <= ((double) Float.intBitsToFloat(bits$iv$iv$iv2)) * 2.0d) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean isCircle(RoundRect $this$isCircle) {
        return (($this$isCircle.getWidth() > $this$isCircle.getHeight() ? 1 : ($this$isCircle.getWidth() == $this$isCircle.getHeight() ? 0 : -1)) == 0) && isEllipse($this$isCircle);
    }

    public static final float getMinDimension(RoundRect $this$minDimension) {
        return Math.min(Math.abs($this$minDimension.getWidth()), Math.abs($this$minDimension.getHeight()));
    }

    public static final float getMaxDimension(RoundRect $this$maxDimension) {
        return Math.max(Math.abs($this$maxDimension.getWidth()), Math.abs($this$maxDimension.getHeight()));
    }

    public static final long getCenter(RoundRect $this$center) {
        float x$iv = $this$center.getLeft() + ($this$center.getWidth() / 2.0f);
        float y$iv = $this$center.getTop() + ($this$center.getHeight() / 2.0f);
        long v1$iv$iv = Float.floatToRawIntBits(x$iv);
        long v2$iv$iv = Float.floatToRawIntBits(y$iv);
        return Offset.m4444constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv));
    }

    public static final boolean isSimple(RoundRect $this$isSimple) {
        long jM4502getTopLeftCornerRadiuskKHJgLs = $this$isSimple.m4502getTopLeftCornerRadiuskKHJgLs();
        return (((jM4502getTopLeftCornerRadiuskKHJgLs >>> 32) > (4294967295L & jM4502getTopLeftCornerRadiuskKHJgLs) ? 1 : ((jM4502getTopLeftCornerRadiuskKHJgLs >>> 32) == (4294967295L & jM4502getTopLeftCornerRadiuskKHJgLs) ? 0 : -1)) == 0) && $this$isSimple.m4502getTopLeftCornerRadiuskKHJgLs() == $this$isSimple.m4503getTopRightCornerRadiuskKHJgLs() && $this$isSimple.m4502getTopLeftCornerRadiuskKHJgLs() == $this$isSimple.m4501getBottomRightCornerRadiuskKHJgLs() && $this$isSimple.m4502getTopLeftCornerRadiuskKHJgLs() == $this$isSimple.m4500getBottomLeftCornerRadiuskKHJgLs();
    }

    public static final RoundRect lerp(RoundRect start, RoundRect stop, float fraction) {
        return new RoundRect(MathHelpersKt.lerp(start.getLeft(), stop.getLeft(), fraction), MathHelpersKt.lerp(start.getTop(), stop.getTop(), fraction), MathHelpersKt.lerp(start.getRight(), stop.getRight(), fraction), MathHelpersKt.lerp(start.getBottom(), stop.getBottom(), fraction), CornerRadiusKt.m4425lerp3Ry4LBc(start.m4502getTopLeftCornerRadiuskKHJgLs(), stop.m4502getTopLeftCornerRadiuskKHJgLs(), fraction), CornerRadiusKt.m4425lerp3Ry4LBc(start.m4503getTopRightCornerRadiuskKHJgLs(), stop.m4503getTopRightCornerRadiuskKHJgLs(), fraction), CornerRadiusKt.m4425lerp3Ry4LBc(start.m4501getBottomRightCornerRadiuskKHJgLs(), stop.m4501getBottomRightCornerRadiuskKHJgLs(), fraction), CornerRadiusKt.m4425lerp3Ry4LBc(start.m4500getBottomLeftCornerRadiuskKHJgLs(), stop.m4500getBottomLeftCornerRadiuskKHJgLs(), fraction), null);
    }
}
