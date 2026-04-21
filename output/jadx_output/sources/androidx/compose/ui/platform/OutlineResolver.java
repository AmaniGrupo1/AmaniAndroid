package androidx.compose.ui.platform;

import android.graphics.Outline;
import android.os.Build;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OutlineResolver.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010'\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010(\u001a\u00020\u00162\u0006\u0010)\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020#¢\u0006\u0004\b,\u0010-J\u0015\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020 ¢\u0006\u0004\b0\u00101J\u000e\u0010)\u001a\u0002022\u0006\u00103\u001a\u000204J\b\u00105\u001a\u000202H\u0002J\u0010\u00106\u001a\u0002022\u0006\u00107\u001a\u000208H\u0002J\u0010\u00109\u001a\u0002022\u0006\u0010:\u001a\u00020\u0014H\u0002J\u0010\u0010;\u001a\u0002022\u0006\u0010<\u001a\u00020\u000bH\u0002J-\u0010=\u001a\u00020\u0005*\u0004\u0018\u00010\u00142\u0006\u0010>\u001a\u00020 2\u0006\u0010+\u001a\u00020#2\u0006\u0010?\u001a\u00020\u0016H\u0002¢\u0006\u0004\b@\u0010AR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0010R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0010\u0010\u001f\u001a\u00020 X\u0082\u000e¢\u0006\u0004\n\u0002\u0010!R\u0010\u0010\"\u001a\u00020#X\u0082\u000e¢\u0006\u0004\n\u0002\u0010!R\u000e\u0010$\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006B"}, d2 = {"Landroidx/compose/ui/platform/OutlineResolver;", "", "<init>", "()V", "isSupportedOutline", "", "cachedOutline", "Landroid/graphics/Outline;", "outline", "Landroidx/compose/ui/graphics/Outline;", "cachedRrectPath", "Landroidx/compose/ui/graphics/Path;", "outlinePath", Values.VECTOR_MAP_VECTORS_KEY, "cacheIsDirty", "getCacheIsDirty$ui", "()Z", "usePathForClip", "tmpPath", "tmpRoundRect", "Landroidx/compose/ui/geometry/RoundRect;", "roundedCornerRadius", "", "androidOutline", "getAndroidOutline", "()Landroid/graphics/Outline;", "outlineClipSupported", "getOutlineClipSupported", "clipPath", "getClipPath", "()Landroidx/compose/ui/graphics/Path;", "rectTopLeft", "Landroidx/compose/ui/geometry/Offset;", "J", "rectSize", "Landroidx/compose/ui/geometry/Size;", "outlineNeeded", "tmpTouchPointPath", "tmpOpPath", "update", "alpha", "clipToOutline", "elevation", "size", "update-S_szKao", "(Landroidx/compose/ui/graphics/Outline;FZFJ)Z", "isInOutline", "position", "isInOutline-k-4lQ0M", "(J)Z", "", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "updateCache", "updateCacheWithRect", "rect", "Landroidx/compose/ui/geometry/Rect;", "updateCacheWithRoundRect", "roundRect", "updateCacheWithPath", "composePath", "isSameBounds", "offset", "radius", "isSameBounds-4L21HEs", "(Landroidx/compose/ui/geometry/RoundRect;JJF)Z", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OutlineResolver {
    public static final int $stable = 8;
    private boolean cacheIsDirty;
    private final Outline cachedOutline;
    private Path cachedRrectPath;
    private boolean isSupportedOutline = true;
    private androidx.compose.ui.graphics.Outline outline;
    private boolean outlineNeeded;
    private Path outlinePath;
    private long rectSize;
    private long rectTopLeft;
    private float roundedCornerRadius;
    private Path tmpOpPath;
    private Path tmpPath;
    private RoundRect tmpRoundRect;
    private Path tmpTouchPointPath;
    private boolean usePathForClip;

    public OutlineResolver() {
        Outline $this$cachedOutline_u24lambda_u240 = new Outline();
        $this$cachedOutline_u24lambda_u240.setAlpha(1.0f);
        this.cachedOutline = $this$cachedOutline_u24lambda_u240;
        this.rectTopLeft = Offset.INSTANCE.m4468getZeroF1C5BW0();
        this.rectSize = Size.INSTANCE.m4530getZeroNHjbRc();
    }

    /* JADX INFO: renamed from: getCacheIsDirty$ui, reason: from getter */
    public final boolean getCacheIsDirty() {
        return this.cacheIsDirty;
    }

    public final Outline getAndroidOutline() {
        updateCache();
        if (this.outlineNeeded && this.isSupportedOutline) {
            return this.cachedOutline;
        }
        return null;
    }

    public final boolean getOutlineClipSupported() {
        return !this.usePathForClip;
    }

    public final Path getClipPath() {
        updateCache();
        return this.outlinePath;
    }

    /* JADX INFO: renamed from: update-S_szKao, reason: not valid java name */
    public final boolean m6672updateS_szKao(androidx.compose.ui.graphics.Outline outline, float alpha, boolean clipToOutline, float elevation, long size) {
        this.cachedOutline.setAlpha(alpha);
        boolean outlineChanged = !Intrinsics.areEqual(this.outline, outline);
        if (outlineChanged) {
            this.outline = outline;
            this.cacheIsDirty = true;
        }
        this.rectSize = size;
        boolean outlineNeeded = outline != null && (clipToOutline || elevation > 0.0f);
        if (this.outlineNeeded != outlineNeeded) {
            this.outlineNeeded = outlineNeeded;
            this.cacheIsDirty = true;
        }
        return outlineChanged;
    }

    /* JADX INFO: renamed from: isInOutline-k-4lQ0M, reason: not valid java name */
    public final boolean m6671isInOutlinek4lQ0M(long position) {
        androidx.compose.ui.graphics.Outline outline;
        if (!this.outlineNeeded || (outline = this.outline) == null) {
            return true;
        }
        int bits$iv$iv$iv = (int) (position >> 32);
        int bits$iv$iv$iv2 = (int) (4294967295L & position);
        return ShapeContainingUtilKt.isInOutline(outline, Float.intBitsToFloat(bits$iv$iv$iv), Float.intBitsToFloat(bits$iv$iv$iv2), this.tmpTouchPointPath, this.tmpOpPath);
    }

    public final void clipToOutline(Canvas canvas) {
        int i;
        Path targetPath = getClipPath();
        if (targetPath != null) {
            Canvas.m4668clipPathmtrdDE$default(canvas, targetPath, 0, 2, null);
            return;
        }
        if (this.roundedCornerRadius <= 0.0f) {
            int bits$iv$iv$iv = (int) (this.rectTopLeft >> 32);
            float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv);
            int bits$iv$iv$iv2 = (int) (this.rectTopLeft & 4294967295L);
            float fIntBitsToFloat2 = Float.intBitsToFloat(bits$iv$iv$iv2);
            int bits$iv$iv$iv3 = (int) (this.rectTopLeft >> 32);
            float fIntBitsToFloat3 = Float.intBitsToFloat(bits$iv$iv$iv3);
            int bits$iv$iv$iv4 = (int) (this.rectSize >> 32);
            float fIntBitsToFloat4 = fIntBitsToFloat3 + Float.intBitsToFloat(bits$iv$iv$iv4);
            int bits$iv$iv$iv5 = (int) (this.rectTopLeft & 4294967295L);
            float fIntBitsToFloat5 = Float.intBitsToFloat(bits$iv$iv$iv5);
            int bits$iv$iv$iv6 = (int) (this.rectSize & 4294967295L);
            Canvas.m4669clipRectN_I0leg$default(canvas, fIntBitsToFloat, fIntBitsToFloat2, fIntBitsToFloat4, fIntBitsToFloat5 + Float.intBitsToFloat(bits$iv$iv$iv6), 0, 16, null);
            return;
        }
        Path roundRectClipPath = this.tmpPath;
        RoundRect roundRect = this.tmpRoundRect;
        if (roundRectClipPath == null || !m6670isSameBounds4L21HEs(roundRect, this.rectTopLeft, this.rectSize, this.roundedCornerRadius)) {
            int bits$iv$iv$iv7 = (int) (this.rectTopLeft >> 32);
            float fIntBitsToFloat6 = Float.intBitsToFloat(bits$iv$iv$iv7);
            int bits$iv$iv$iv8 = (int) (this.rectTopLeft & 4294967295L);
            float fIntBitsToFloat7 = Float.intBitsToFloat(bits$iv$iv$iv8);
            int bits$iv$iv$iv9 = (int) (this.rectTopLeft >> 32);
            float fIntBitsToFloat8 = Float.intBitsToFloat(bits$iv$iv$iv9);
            int bits$iv$iv$iv10 = (int) (this.rectSize >> 32);
            float fIntBitsToFloat9 = fIntBitsToFloat8 + Float.intBitsToFloat(bits$iv$iv$iv10);
            int bits$iv$iv$iv11 = (int) (this.rectTopLeft & 4294967295L);
            float fIntBitsToFloat10 = Float.intBitsToFloat(bits$iv$iv$iv11);
            int bits$iv$iv$iv12 = (int) (this.rectSize & 4294967295L);
            float fIntBitsToFloat11 = fIntBitsToFloat10 + Float.intBitsToFloat(bits$iv$iv$iv12);
            float x$iv = this.roundedCornerRadius;
            long v1$iv$iv = Float.floatToRawIntBits(x$iv);
            long v2$iv$iv = Float.floatToRawIntBits(x$iv);
            RoundRect roundRect2 = RoundRectKt.m4506RoundRectgG7oq9Y(fIntBitsToFloat6, fIntBitsToFloat7, fIntBitsToFloat9, fIntBitsToFloat11, CornerRadius.m4406constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L)));
            if (roundRectClipPath == null) {
                roundRectClipPath = AndroidPath_androidKt.Path();
            } else {
                roundRectClipPath.reset();
                roundRectClipPath = roundRectClipPath;
            }
            i = 2;
            Path.addRoundRect$default(roundRectClipPath, roundRect2, null, 2, null);
            this.tmpRoundRect = roundRect2;
            this.tmpPath = roundRectClipPath;
        } else {
            i = 2;
        }
        Canvas.m4668clipPathmtrdDE$default(canvas, roundRectClipPath, 0, i, null);
    }

    private final void updateCache() {
        if (this.cacheIsDirty) {
            this.rectTopLeft = Offset.INSTANCE.m4468getZeroF1C5BW0();
            this.roundedCornerRadius = 0.0f;
            this.outlinePath = null;
            this.cacheIsDirty = false;
            this.usePathForClip = false;
            androidx.compose.ui.graphics.Outline outline = this.outline;
            if (outline != null && this.outlineNeeded) {
                int bits$iv$iv$iv = (int) (this.rectSize >> 32);
                if (Float.intBitsToFloat(bits$iv$iv$iv) > 0.0f) {
                    int bits$iv$iv$iv2 = (int) (4294967295L & this.rectSize);
                    if (Float.intBitsToFloat(bits$iv$iv$iv2) > 0.0f) {
                        this.isSupportedOutline = true;
                        if (!(outline instanceof Outline.Rectangle)) {
                            if (!(outline instanceof Outline.Rounded)) {
                                if (!(outline instanceof Outline.Generic)) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                updateCacheWithPath(((Outline.Generic) outline).getPath());
                                return;
                            }
                            updateCacheWithRoundRect(((Outline.Rounded) outline).getRoundRect());
                            return;
                        }
                        updateCacheWithRect(((Outline.Rectangle) outline).getRect());
                        return;
                    }
                }
            }
            this.cachedOutline.setEmpty();
        }
    }

    private final void updateCacheWithRect(Rect rect) {
        float x$iv = rect.getLeft();
        float y$iv = rect.getTop();
        long v1$iv$iv = Float.floatToRawIntBits(x$iv);
        long v2$iv$iv = Float.floatToRawIntBits(y$iv);
        this.rectTopLeft = Offset.m4444constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L));
        float width$iv = rect.getRight() - rect.getLeft();
        float height$iv = rect.getBottom() - rect.getTop();
        long v1$iv$iv2 = Float.floatToRawIntBits(width$iv);
        long v2$iv$iv2 = Float.floatToRawIntBits(height$iv);
        this.rectSize = Size.m4512constructorimpl((v1$iv$iv2 << 32) | (v2$iv$iv2 & 4294967295L));
        android.graphics.Outline outline = this.cachedOutline;
        float $this$fastRoundToInt$iv = rect.getLeft();
        int iRound = Math.round($this$fastRoundToInt$iv);
        float $this$fastRoundToInt$iv2 = rect.getTop();
        int iRound2 = Math.round($this$fastRoundToInt$iv2);
        float $this$fastRoundToInt$iv3 = rect.getRight();
        int iRound3 = Math.round($this$fastRoundToInt$iv3);
        float $this$fastRoundToInt$iv4 = rect.getBottom();
        outline.setRect(iRound, iRound2, iRound3, Math.round($this$fastRoundToInt$iv4));
    }

    private final void updateCacheWithRoundRect(RoundRect roundRect) {
        int bits$iv$iv$iv = (int) (roundRect.m4502getTopLeftCornerRadiuskKHJgLs() >> 32);
        float radius = Float.intBitsToFloat(bits$iv$iv$iv);
        float x$iv = roundRect.getLeft();
        float y$iv = roundRect.getTop();
        long v1$iv$iv = Float.floatToRawIntBits(x$iv);
        long v2$iv$iv = Float.floatToRawIntBits(y$iv);
        this.rectTopLeft = Offset.m4444constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L));
        float width$iv = roundRect.getWidth();
        float height$iv = roundRect.getHeight();
        long v1$iv$iv2 = Float.floatToRawIntBits(width$iv);
        long v2$iv$iv2 = Float.floatToRawIntBits(height$iv);
        this.rectSize = Size.m4512constructorimpl((v1$iv$iv2 << 32) | (4294967295L & v2$iv$iv2));
        if (RoundRectKt.isSimple(roundRect)) {
            android.graphics.Outline outline = this.cachedOutline;
            float $this$fastRoundToInt$iv = roundRect.getLeft();
            int iRound = Math.round($this$fastRoundToInt$iv);
            float $this$fastRoundToInt$iv2 = roundRect.getTop();
            int iRound2 = Math.round($this$fastRoundToInt$iv2);
            float $this$fastRoundToInt$iv3 = roundRect.getRight();
            int iRound3 = Math.round($this$fastRoundToInt$iv3);
            float $this$fastRoundToInt$iv4 = roundRect.getBottom();
            outline.setRoundRect(iRound, iRound2, iRound3, Math.round($this$fastRoundToInt$iv4), radius);
            this.roundedCornerRadius = radius;
            return;
        }
        Path it = this.cachedRrectPath;
        if (it == null) {
            it = AndroidPath_androidKt.Path();
            this.cachedRrectPath = it;
        }
        it.reset();
        Path.addRoundRect$default(it, roundRect, null, 2, null);
        updateCacheWithPath(it);
    }

    private final void updateCacheWithPath(Path composePath) {
        if (Build.VERSION.SDK_INT > 28 || composePath.isConvex()) {
            if (Build.VERSION.SDK_INT >= 30) {
                OutlineVerificationHelper.INSTANCE.setPath(this.cachedOutline, composePath);
            } else {
                android.graphics.Outline outline = this.cachedOutline;
                if (composePath instanceof AndroidPath) {
                    outline.setConvexPath(((AndroidPath) composePath).getInternalPath());
                } else {
                    throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
                }
            }
            this.usePathForClip = !this.cachedOutline.canClip();
        } else {
            this.isSupportedOutline = false;
            this.cachedOutline.setEmpty();
            this.usePathForClip = true;
        }
        this.outlinePath = composePath;
    }

    /* JADX INFO: renamed from: isSameBounds-4L21HEs, reason: not valid java name */
    private final boolean m6670isSameBounds4L21HEs(RoundRect $this$isSameBounds_u2d4L21HEs, long j, long j2, float radius) {
        if ($this$isSameBounds_u2d4L21HEs == null || !RoundRectKt.isSimple($this$isSameBounds_u2d4L21HEs)) {
            return false;
        }
        int bits$iv$iv$iv = (int) (j >> 32);
        if (!($this$isSameBounds_u2d4L21HEs.getLeft() == Float.intBitsToFloat(bits$iv$iv$iv))) {
            return false;
        }
        int bits$iv$iv$iv2 = (int) (j & 4294967295L);
        if (!($this$isSameBounds_u2d4L21HEs.getTop() == Float.intBitsToFloat(bits$iv$iv$iv2))) {
            return false;
        }
        int bits$iv$iv$iv3 = (int) (j >> 32);
        int bits$iv$iv$iv4 = (int) (j2 >> 32);
        if (!($this$isSameBounds_u2d4L21HEs.getRight() == Float.intBitsToFloat(bits$iv$iv$iv3) + Float.intBitsToFloat(bits$iv$iv$iv4))) {
            return false;
        }
        int bits$iv$iv$iv5 = (int) (j & 4294967295L);
        int bits$iv$iv$iv6 = (int) (4294967295L & j2);
        if (!($this$isSameBounds_u2d4L21HEs.getBottom() == Float.intBitsToFloat(bits$iv$iv$iv5) + Float.intBitsToFloat(bits$iv$iv$iv6))) {
            return false;
        }
        int bits$iv$iv$iv7 = (int) ($this$isSameBounds_u2d4L21HEs.m4502getTopLeftCornerRadiuskKHJgLs() >> 32);
        return (Float.intBitsToFloat(bits$iv$iv$iv7) > radius ? 1 : (Float.intBitsToFloat(bits$iv$iv$iv7) == radius ? 0 : -1)) == 0;
    }
}
