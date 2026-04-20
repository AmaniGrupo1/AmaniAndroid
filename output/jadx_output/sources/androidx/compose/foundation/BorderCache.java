package androidx.compose.foundation;

import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Border.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ=\u0010\f\u001a\u00020\u0003*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0017\u0010\u0012\u001a\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013¢\u0006\u0002\b\u0016H\u0086\b¢\u0006\u0004\b\u0017\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\tJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÂ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÂ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0007HÂ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\tHÂ\u0003J9\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020%HÖ\u0001R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Landroidx/compose/foundation/BorderCache;", "", "imageBitmap", "Landroidx/compose/ui/graphics/ImageBitmap;", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "canvasDrawScope", "Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;", "borderPath", "Landroidx/compose/ui/graphics/Path;", "<init>", "(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;)V", "drawBorderCache", "Landroidx/compose/ui/draw/CacheDrawScope;", "borderSize", "Landroidx/compose/ui/unit/IntSize;", "config", "Landroidx/compose/ui/graphics/ImageBitmapConfig;", "block", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "", "Lkotlin/ExtensionFunctionType;", "drawBorderCache-EMwLDEs", "(Landroidx/compose/ui/draw/CacheDrawScope;JILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/graphics/ImageBitmap;", "obtainPath", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
final /* data */ class BorderCache {
    private Path borderPath;
    private Canvas canvas;
    private CanvasDrawScope canvasDrawScope;
    private ImageBitmap imageBitmap;

    public BorderCache() {
        this(null, null, null, null, 15, null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    private final ImageBitmap getImageBitmap() {
        return this.imageBitmap;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    private final Canvas getCanvas() {
        return this.canvas;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    private final CanvasDrawScope getCanvasDrawScope() {
        return this.canvasDrawScope;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    private final Path getBorderPath() {
        return this.borderPath;
    }

    public static /* synthetic */ BorderCache copy$default(BorderCache borderCache, ImageBitmap imageBitmap, Canvas canvas, CanvasDrawScope canvasDrawScope, Path path, int i, Object obj) {
        if ((i & 1) != 0) {
            imageBitmap = borderCache.imageBitmap;
        }
        if ((i & 2) != 0) {
            canvas = borderCache.canvas;
        }
        if ((i & 4) != 0) {
            canvasDrawScope = borderCache.canvasDrawScope;
        }
        if ((i & 8) != 0) {
            path = borderCache.borderPath;
        }
        return borderCache.copy(imageBitmap, canvas, canvasDrawScope, path);
    }

    public final BorderCache copy(ImageBitmap imageBitmap, Canvas canvas, CanvasDrawScope canvasDrawScope, Path borderPath) {
        return new BorderCache(imageBitmap, canvas, canvasDrawScope, borderPath);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BorderCache)) {
            return false;
        }
        BorderCache borderCache = (BorderCache) other;
        return Intrinsics.areEqual(this.imageBitmap, borderCache.imageBitmap) && Intrinsics.areEqual(this.canvas, borderCache.canvas) && Intrinsics.areEqual(this.canvasDrawScope, borderCache.canvasDrawScope) && Intrinsics.areEqual(this.borderPath, borderCache.borderPath);
    }

    public int hashCode() {
        return ((((((this.imageBitmap == null ? 0 : this.imageBitmap.hashCode()) * 31) + (this.canvas == null ? 0 : this.canvas.hashCode())) * 31) + (this.canvasDrawScope == null ? 0 : this.canvasDrawScope.hashCode())) * 31) + (this.borderPath != null ? this.borderPath.hashCode() : 0);
    }

    public String toString() {
        return "BorderCache(imageBitmap=" + this.imageBitmap + ", canvas=" + this.canvas + ", canvasDrawScope=" + this.canvasDrawScope + ", borderPath=" + this.borderPath + ')';
    }

    public BorderCache(ImageBitmap imageBitmap, Canvas canvas, CanvasDrawScope canvasDrawScope, Path borderPath) {
        this.imageBitmap = imageBitmap;
        this.canvas = canvas;
        this.canvasDrawScope = canvasDrawScope;
        this.borderPath = borderPath;
    }

    public /* synthetic */ BorderCache(ImageBitmap imageBitmap, Canvas canvas, CanvasDrawScope canvasDrawScope, Path path, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : imageBitmap, (i & 2) != 0 ? null : canvas, (i & 4) != 0 ? null : canvasDrawScope, (i & 8) != 0 ? null : path);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c5  */
    /* JADX INFO: renamed from: drawBorderCache-EMwLDEs, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ImageBitmap m272drawBorderCacheEMwLDEs(CacheDrawScope $this$drawBorderCache_u2dEMwLDEs, long j, int i, Function1<? super DrawScope, Unit> function1) {
        int i2;
        long j2;
        CanvasDrawScope it;
        ImageBitmap targetImageBitmap = this.imageBitmap;
        Canvas targetCanvas = this.canvas;
        ImageBitmapConfig imageBitmapConfigM4920boximpl = targetImageBitmap != null ? ImageBitmapConfig.m4920boximpl(targetImageBitmap.mo4561getConfig_sVssgQ()) : null;
        boolean compatibleConfig = false;
        if (!(imageBitmapConfigM4920boximpl == null ? false : ImageBitmapConfig.m4923equalsimpl0(imageBitmapConfigM4920boximpl.m4926unboximpl(), ImageBitmapConfig.INSTANCE.m4928getArgb8888_sVssgQ()))) {
            i2 = i;
            if (ImageBitmapConfig.m4922equalsimpl(i2, targetImageBitmap != null ? ImageBitmapConfig.m4920boximpl(targetImageBitmap.mo4561getConfig_sVssgQ()) : null)) {
            }
            if (targetImageBitmap == null && targetCanvas != null) {
                j2 = 4294967295L;
                int bits$iv$iv$iv = (int) ($this$drawBorderCache_u2dEMwLDEs.m4232getSizeNHjbRc() >> 32);
                if (Float.intBitsToFloat(bits$iv$iv$iv) <= targetImageBitmap.getWidth()) {
                    int bits$iv$iv$iv2 = (int) ($this$drawBorderCache_u2dEMwLDEs.m4232getSizeNHjbRc() & 4294967295L);
                    if (Float.intBitsToFloat(bits$iv$iv$iv2) > targetImageBitmap.getHeight() || !compatibleConfig) {
                    }
                }
                it = this.canvasDrawScope;
                if (it == null) {
                    it = new CanvasDrawScope();
                    this.canvasDrawScope = it;
                }
                long drawSize = IntSizeKt.m7688toSizeozmzZPI(j);
                CacheDrawScope density$iv = $this$drawBorderCache_u2dEMwLDEs;
                LayoutDirection layoutDirection$iv = $this$drawBorderCache_u2dEMwLDEs.getLayoutDirection();
                CanvasDrawScope this_$iv = it;
                Canvas canvas$iv = targetCanvas;
                CanvasDrawScope.DrawParams drawParams = this_$iv.getDrawParams();
                Density prevDensity$iv = drawParams.getDensity();
                LayoutDirection prevLayoutDirection$iv = drawParams.getLayoutDirection();
                Canvas prevCanvas$iv = drawParams.getCanvas();
                long prevSize$iv = drawParams.getSize();
                CanvasDrawScope.DrawParams $this$draw_yzxVdVo_u24lambda_u240$iv = this_$iv.getDrawParams();
                $this$draw_yzxVdVo_u24lambda_u240$iv.setDensity(density$iv);
                $this$draw_yzxVdVo_u24lambda_u240$iv.setLayoutDirection(layoutDirection$iv);
                $this$draw_yzxVdVo_u24lambda_u240$iv.setCanvas(canvas$iv);
                $this$draw_yzxVdVo_u24lambda_u240$iv.m5191setSizeuvyYCjk(drawSize);
                canvas$iv.save();
                CanvasDrawScope $this$drawBorderCache_EMwLDEs_u24lambda_u243 = this_$iv;
                ImageBitmap targetImageBitmap2 = targetImageBitmap;
                DrawScope.m5265drawRectnJ9OG0$default($this$drawBorderCache_EMwLDEs_u24lambda_u243, Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, drawSize, 0.0f, null, null, BlendMode.INSTANCE.m4610getClear0nO6VwU(), 58, null);
                function1.invoke($this$drawBorderCache_EMwLDEs_u24lambda_u243);
                canvas$iv.restore();
                CanvasDrawScope.DrawParams $this$draw_yzxVdVo_u24lambda_u241$iv = this_$iv.getDrawParams();
                $this$draw_yzxVdVo_u24lambda_u241$iv.setDensity(prevDensity$iv);
                $this$draw_yzxVdVo_u24lambda_u241$iv.setLayoutDirection(prevLayoutDirection$iv);
                $this$draw_yzxVdVo_u24lambda_u241$iv.setCanvas(prevCanvas$iv);
                $this$draw_yzxVdVo_u24lambda_u241$iv.m5191setSizeuvyYCjk(prevSize$iv);
                targetImageBitmap2.prepareToDraw();
                return targetImageBitmap2;
            }
            int $i$f$unpackInt2 = (int) (j & j2);
            ImageBitmap it2 = ImageBitmapKt.m4933ImageBitmapx__hDU$default((int) (j >> 32), $i$f$unpackInt2, i2, false, null, 24, null);
            this.imageBitmap = it2;
            targetImageBitmap = it2;
            Canvas it3 = androidx.compose.ui.graphics.CanvasKt.Canvas(targetImageBitmap);
            this.canvas = it3;
            targetCanvas = it3;
            it = this.canvasDrawScope;
            if (it == null) {
            }
            long drawSize2 = IntSizeKt.m7688toSizeozmzZPI(j);
            CacheDrawScope density$iv2 = $this$drawBorderCache_u2dEMwLDEs;
            LayoutDirection layoutDirection$iv2 = $this$drawBorderCache_u2dEMwLDEs.getLayoutDirection();
            CanvasDrawScope this_$iv2 = it;
            Canvas canvas$iv2 = targetCanvas;
            CanvasDrawScope.DrawParams drawParams2 = this_$iv2.getDrawParams();
            Density prevDensity$iv2 = drawParams2.getDensity();
            LayoutDirection prevLayoutDirection$iv2 = drawParams2.getLayoutDirection();
            Canvas prevCanvas$iv2 = drawParams2.getCanvas();
            long prevSize$iv2 = drawParams2.getSize();
            CanvasDrawScope.DrawParams $this$draw_yzxVdVo_u24lambda_u240$iv2 = this_$iv2.getDrawParams();
            $this$draw_yzxVdVo_u24lambda_u240$iv2.setDensity(density$iv2);
            $this$draw_yzxVdVo_u24lambda_u240$iv2.setLayoutDirection(layoutDirection$iv2);
            $this$draw_yzxVdVo_u24lambda_u240$iv2.setCanvas(canvas$iv2);
            $this$draw_yzxVdVo_u24lambda_u240$iv2.m5191setSizeuvyYCjk(drawSize2);
            canvas$iv2.save();
            CanvasDrawScope $this$drawBorderCache_EMwLDEs_u24lambda_u2432 = this_$iv2;
            ImageBitmap targetImageBitmap22 = targetImageBitmap;
            DrawScope.m5265drawRectnJ9OG0$default($this$drawBorderCache_EMwLDEs_u24lambda_u2432, Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, drawSize2, 0.0f, null, null, BlendMode.INSTANCE.m4610getClear0nO6VwU(), 58, null);
            function1.invoke($this$drawBorderCache_EMwLDEs_u24lambda_u2432);
            canvas$iv2.restore();
            CanvasDrawScope.DrawParams $this$draw_yzxVdVo_u24lambda_u241$iv2 = this_$iv2.getDrawParams();
            $this$draw_yzxVdVo_u24lambda_u241$iv2.setDensity(prevDensity$iv2);
            $this$draw_yzxVdVo_u24lambda_u241$iv2.setLayoutDirection(prevLayoutDirection$iv2);
            $this$draw_yzxVdVo_u24lambda_u241$iv2.setCanvas(prevCanvas$iv2);
            $this$draw_yzxVdVo_u24lambda_u241$iv2.m5191setSizeuvyYCjk(prevSize$iv2);
            targetImageBitmap22.prepareToDraw();
            return targetImageBitmap22;
        }
        i2 = i;
        compatibleConfig = true;
        j2 = targetImageBitmap == null ? 4294967295L : 4294967295L;
        int $i$f$unpackInt22 = (int) (j & j2);
        ImageBitmap it22 = ImageBitmapKt.m4933ImageBitmapx__hDU$default((int) (j >> 32), $i$f$unpackInt22, i2, false, null, 24, null);
        this.imageBitmap = it22;
        targetImageBitmap = it22;
        Canvas it32 = androidx.compose.ui.graphics.CanvasKt.Canvas(targetImageBitmap);
        this.canvas = it32;
        targetCanvas = it32;
        it = this.canvasDrawScope;
        if (it == null) {
        }
        long drawSize22 = IntSizeKt.m7688toSizeozmzZPI(j);
        CacheDrawScope density$iv22 = $this$drawBorderCache_u2dEMwLDEs;
        LayoutDirection layoutDirection$iv22 = $this$drawBorderCache_u2dEMwLDEs.getLayoutDirection();
        CanvasDrawScope this_$iv22 = it;
        Canvas canvas$iv22 = targetCanvas;
        CanvasDrawScope.DrawParams drawParams22 = this_$iv22.getDrawParams();
        Density prevDensity$iv22 = drawParams22.getDensity();
        LayoutDirection prevLayoutDirection$iv22 = drawParams22.getLayoutDirection();
        Canvas prevCanvas$iv22 = drawParams22.getCanvas();
        long prevSize$iv22 = drawParams22.getSize();
        CanvasDrawScope.DrawParams $this$draw_yzxVdVo_u24lambda_u240$iv22 = this_$iv22.getDrawParams();
        $this$draw_yzxVdVo_u24lambda_u240$iv22.setDensity(density$iv22);
        $this$draw_yzxVdVo_u24lambda_u240$iv22.setLayoutDirection(layoutDirection$iv22);
        $this$draw_yzxVdVo_u24lambda_u240$iv22.setCanvas(canvas$iv22);
        $this$draw_yzxVdVo_u24lambda_u240$iv22.m5191setSizeuvyYCjk(drawSize22);
        canvas$iv22.save();
        CanvasDrawScope $this$drawBorderCache_EMwLDEs_u24lambda_u24322 = this_$iv22;
        ImageBitmap targetImageBitmap222 = targetImageBitmap;
        DrawScope.m5265drawRectnJ9OG0$default($this$drawBorderCache_EMwLDEs_u24lambda_u24322, Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, drawSize22, 0.0f, null, null, BlendMode.INSTANCE.m4610getClear0nO6VwU(), 58, null);
        function1.invoke($this$drawBorderCache_EMwLDEs_u24lambda_u24322);
        canvas$iv22.restore();
        CanvasDrawScope.DrawParams $this$draw_yzxVdVo_u24lambda_u241$iv22 = this_$iv22.getDrawParams();
        $this$draw_yzxVdVo_u24lambda_u241$iv22.setDensity(prevDensity$iv22);
        $this$draw_yzxVdVo_u24lambda_u241$iv22.setLayoutDirection(prevLayoutDirection$iv22);
        $this$draw_yzxVdVo_u24lambda_u241$iv22.setCanvas(prevCanvas$iv22);
        $this$draw_yzxVdVo_u24lambda_u241$iv22.m5191setSizeuvyYCjk(prevSize$iv22);
        targetImageBitmap222.prepareToDraw();
        return targetImageBitmap222;
    }

    public final Path obtainPath() {
        Path path = this.borderPath;
        if (path != null) {
            return path;
        }
        Path it = AndroidPath_androidKt.Path();
        this.borderPath = it;
        return it;
    }
}
