package androidx.compose.foundation;

import androidx.compose.ui.draw.CacheDrawModifierNode;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawTransform;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: Border.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ,\u0010%\u001a\u00020&*\u00020'2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\f2\u0006\u0010+\u001a\u00020,H\u0002JC\u0010-\u001a\u00020&*\u00020'2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010(\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u0010*\u001a\u00020\f2\u0006\u0010+\u001a\u00020,H\u0002¢\u0006\u0004\b3\u00104J\f\u00105\u001a\u000206*\u000207H\u0016R\u0014\u0010\u000b\u001a\u00020\fX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\fX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Landroidx/compose/foundation/BorderModifierNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "widthParameter", "Landroidx/compose/ui/unit/Dp;", "brushParameter", "Landroidx/compose/ui/graphics/Brush;", "shapeParameter", "Landroidx/compose/ui/graphics/Shape;", "<init>", "(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "shouldAutoInvalidate", "", "getShouldAutoInvalidate", "()Z", "isImportantForBounds", "borderCache", "Landroidx/compose/foundation/BorderCache;", Values.VECTOR_MAP_VECTORS_KEY, "width", "getWidth-D9Ej5fM", "()F", "setWidth-0680j_4", "(F)V", "F", "brush", "getBrush", "()Landroidx/compose/ui/graphics/Brush;", "setBrush", "(Landroidx/compose/ui/graphics/Brush;)V", "shape", "getShape", "()Landroidx/compose/ui/graphics/Shape;", "setShape", "(Landroidx/compose/ui/graphics/Shape;)V", "drawWithCacheModifierNode", "Landroidx/compose/ui/draw/CacheDrawModifierNode;", "drawGenericBorder", "Landroidx/compose/ui/draw/DrawResult;", "Landroidx/compose/ui/draw/CacheDrawScope;", "outline", "Landroidx/compose/ui/graphics/Outline$Generic;", "fillArea", "strokeWidth", "", "drawRoundRectBorder", "Landroidx/compose/ui/graphics/Outline$Rounded;", "topLeft", "Landroidx/compose/ui/geometry/Offset;", "borderSize", "Landroidx/compose/ui/geometry/Size;", "drawRoundRectBorder-JqoCqck", "(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;", "applySemantics", "", "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BorderModifierNode extends DelegatingNode implements SemanticsModifierNode {
    public static final int $stable = 8;
    private BorderCache borderCache;
    private Brush brush;
    private final CacheDrawModifierNode drawWithCacheModifierNode;
    private final boolean isImportantForBounds;
    private Shape shape;
    private final boolean shouldAutoInvalidate;
    private float width;

    public /* synthetic */ BorderModifierNode(float f, Brush brush, Shape shape, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, brush, shape);
    }

    private BorderModifierNode(float widthParameter, Brush brushParameter, Shape shapeParameter) {
        this.width = widthParameter;
        this.brush = brushParameter;
        this.shape = shapeParameter;
        this.drawWithCacheModifierNode = (CacheDrawModifierNode) delegate(DrawModifierKt.CacheDrawModifierNode(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BorderModifierNode.drawWithCacheModifierNode$lambda$0(this.f$0, (CacheDrawScope) obj);
            }
        }));
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    /* JADX INFO: renamed from: isImportantForBounds, reason: from getter */
    public boolean getIsImportantForBounds() {
        return this.isImportantForBounds;
    }

    /* JADX INFO: renamed from: getWidth-D9Ej5fM, reason: not valid java name and from getter */
    public final float getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: setWidth-0680j_4, reason: not valid java name */
    public final void m282setWidth0680j_4(float f) {
        if (!Dp.m7510equalsimpl0(this.width, f)) {
            this.width = f;
            this.drawWithCacheModifierNode.invalidateDrawCache();
        }
    }

    public final Brush getBrush() {
        return this.brush;
    }

    public final void setBrush(Brush value) {
        if (!Intrinsics.areEqual(this.brush, value)) {
            this.brush = value;
            this.drawWithCacheModifierNode.invalidateDrawCache();
        }
    }

    public final Shape getShape() {
        return this.shape;
    }

    public final void setShape(Shape value) {
        if (!Intrinsics.areEqual(this.shape, value)) {
            this.shape = value;
            this.drawWithCacheModifierNode.invalidateDrawCache();
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
    }

    static final DrawResult drawWithCacheModifierNode$lambda$0(BorderModifierNode this$0, CacheDrawScope $this$CacheDrawModifierNode) {
        boolean hasValidBorderParams = $this$CacheDrawModifierNode.mo405toPx0680j_4(this$0.width) >= 0.0f && Size.m4520getMinDimensionimpl($this$CacheDrawModifierNode.m4232getSizeNHjbRc()) > 0.0f;
        if (!hasValidBorderParams) {
            return BorderKt.drawContentWithoutBorder($this$CacheDrawModifierNode);
        }
        float f = 2;
        float strokeWidthPx = Math.min(Dp.m7510equalsimpl0(this$0.width, Dp.INSTANCE.m7523getHairlineD9Ej5fM()) ? 1.0f : (float) Math.ceil($this$CacheDrawModifierNode.mo405toPx0680j_4(this$0.width)), (float) Math.ceil(Size.m4520getMinDimensionimpl($this$CacheDrawModifierNode.m4232getSizeNHjbRc()) / f));
        float halfStroke = strokeWidthPx / f;
        long v1$iv$iv = Float.floatToRawIntBits(halfStroke);
        long v2$iv$iv = Float.floatToRawIntBits(halfStroke);
        long jM4444constructorimpl = Offset.m4444constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L));
        int bits$iv$iv$iv = (int) ($this$CacheDrawModifierNode.m4232getSizeNHjbRc() >> 32);
        float width$iv = Float.intBitsToFloat(bits$iv$iv$iv) - strokeWidthPx;
        int bits$iv$iv$iv2 = (int) ($this$CacheDrawModifierNode.m4232getSizeNHjbRc() & 4294967295L);
        float height$iv = Float.intBitsToFloat(bits$iv$iv$iv2) - strokeWidthPx;
        long v1$iv$iv2 = Float.floatToRawIntBits(width$iv);
        long v2$iv$iv2 = Float.floatToRawIntBits(height$iv);
        long jM4512constructorimpl = Size.m4512constructorimpl((v1$iv$iv2 << 32) | (v2$iv$iv2 & 4294967295L));
        boolean fillArea = strokeWidthPx * f > Size.m4520getMinDimensionimpl($this$CacheDrawModifierNode.m4232getSizeNHjbRc());
        Outline outline = this$0.shape.mo320createOutlinePq9zytI($this$CacheDrawModifierNode.m4232getSizeNHjbRc(), $this$CacheDrawModifierNode.getLayoutDirection(), $this$CacheDrawModifierNode);
        if (outline instanceof Outline.Generic) {
            return this$0.drawGenericBorder($this$CacheDrawModifierNode, this$0.brush, (Outline.Generic) outline, fillArea, strokeWidthPx);
        }
        if (outline instanceof Outline.Rounded) {
            return this$0.m280drawRoundRectBorderJqoCqck($this$CacheDrawModifierNode, this$0.brush, (Outline.Rounded) outline, jM4444constructorimpl, jM4512constructorimpl, fillArea, strokeWidthPx);
        }
        if (outline instanceof Outline.Rectangle) {
            return BorderKt.m278drawRectBorderNsqcLGU($this$CacheDrawModifierNode, this$0.brush, jM4444constructorimpl, jM4512constructorimpl, fillArea, strokeWidthPx);
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:(4:(5:(1:38)(2:30|(23:32|(0)(1:36)|41|(1:43)|44|81|45|46|87|47|85|48|49|75|50|51|77|52|53|79|54|55|56)(1:37))|79|54|55|56)|77|52|53)|85|48|49|75|50|51) */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x03d2, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x03d3, code lost:
    
        r5 = r0;
        r14 = r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01c2  */
    /* JADX WARN: Type inference failed for: r38v0, types: [T, androidx.compose.ui.graphics.ImageBitmap] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final DrawResult drawGenericBorder(CacheDrawScope $this$drawGenericBorder, final Brush brush, final Outline.Generic outline, boolean fillArea, float strokeWidth) throws Throwable {
        int config;
        ColorFilter colorFilter;
        ImageBitmap targetImageBitmap$iv;
        Canvas targetCanvas$iv;
        CanvasDrawScope it$iv;
        CanvasDrawScope $this$drawBorderCache_EMwLDEs_u24lambda_u243$iv;
        float left$iv;
        float top$iv;
        float top$iv2;
        float left$iv2;
        DrawContext $this$withTransform_u24lambda_u240$iv$iv;
        long previousSize$iv$iv;
        DrawContext $this$withTransform_u24lambda_u240$iv$iv2;
        long previousSize$iv$iv2;
        if (fillArea) {
            return $this$drawGenericBorder.onDrawWithContent(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BorderModifierNode.drawGenericBorder$lambda$0(outline, brush, (ContentDrawScope) obj);
                }
            });
        }
        if (brush instanceof SolidColor) {
            int config2 = ImageBitmapConfig.INSTANCE.m4927getAlpha8_sVssgQ();
            ColorFilter.Companion companion = ColorFilter.INSTANCE;
            long value = ((SolidColor) brush).getValue();
            ColorFilter colorFilter2 = ColorFilter.Companion.m4738tintxETnrds$default(companion, Color.m4695copywmQWz5c(value, (14 & 1) != 0 ? Color.m4699getAlphaimpl(value) : 1.0f, (14 & 2) != 0 ? Color.m4703getRedimpl(value) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(value) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(value) : 0.0f), 0, 2, null);
            config = config2;
            colorFilter = colorFilter2;
        } else {
            int config3 = ImageBitmapConfig.INSTANCE.m4928getArgb8888_sVssgQ();
            config = config3;
            colorFilter = null;
        }
        final Rect pathBounds = outline.getPath().getBounds();
        if (this.borderCache == null) {
            this.borderCache = new BorderCache(null, null, null, null, 15, null);
        }
        BorderCache borderCache = this.borderCache;
        Intrinsics.checkNotNull(borderCache);
        Path $this$drawGenericBorder_u24lambda_u241 = borderCache.obtainPath();
        $this$drawGenericBorder_u24lambda_u241.reset();
        Path.addRect$default($this$drawGenericBorder_u24lambda_u241, pathBounds, null, 2, null);
        $this$drawGenericBorder_u24lambda_u241.mo4586opN5in7k0($this$drawGenericBorder_u24lambda_u241, outline.getPath(), PathOperation.INSTANCE.m5003getDifferenceb3I0S0c());
        final Ref.ObjectRef cacheImageBitmap = new Ref.ObjectRef();
        int width$iv = (int) Math.ceil(pathBounds.getRight() - pathBounds.getLeft());
        int height$iv = (int) Math.ceil(pathBounds.getBottom() - pathBounds.getTop());
        final long pathBoundsSize = IntSize.m7671constructorimpl((((long) height$iv) & 4294967295L) | (((long) width$iv) << 32));
        BorderCache $this$drawGenericBorder_u24lambda_u242 = this.borderCache;
        Intrinsics.checkNotNull($this$drawGenericBorder_u24lambda_u242);
        int i = config;
        ImageBitmap targetImageBitmap$iv2 = $this$drawGenericBorder_u24lambda_u242.imageBitmap;
        Canvas targetCanvas$iv2 = $this$drawGenericBorder_u24lambda_u242.canvas;
        ImageBitmapConfig imageBitmapConfigM4920boximpl = targetImageBitmap$iv2 != null ? ImageBitmapConfig.m4920boximpl(targetImageBitmap$iv2.mo4561getConfig_sVssgQ()) : null;
        boolean z = false;
        if (imageBitmapConfigM4920boximpl == null ? false : ImageBitmapConfig.m4923equalsimpl0(imageBitmapConfigM4920boximpl.m4926unboximpl(), ImageBitmapConfig.INSTANCE.m4928getArgb8888_sVssgQ())) {
            z = true;
        } else {
            if (ImageBitmapConfig.m4922equalsimpl(i, targetImageBitmap$iv2 != null ? ImageBitmapConfig.m4920boximpl(targetImageBitmap$iv2.mo4561getConfig_sVssgQ()) : null)) {
            }
        }
        boolean compatibleConfig$iv = z;
        try {
            try {
                try {
                    try {
                        try {
                            if (targetImageBitmap$iv2 != null && targetCanvas$iv2 != null) {
                                int bits$iv$iv$iv$iv = (int) ($this$drawGenericBorder.m4232getSizeNHjbRc() >> 32);
                                if (Float.intBitsToFloat(bits$iv$iv$iv$iv) <= targetImageBitmap$iv2.getWidth()) {
                                    int bits$iv$iv$iv$iv2 = (int) ($this$drawGenericBorder.m4232getSizeNHjbRc() & 4294967295L);
                                    if (Float.intBitsToFloat(bits$iv$iv$iv$iv2) <= targetImageBitmap$iv2.getHeight() && compatibleConfig$iv) {
                                        targetImageBitmap$iv = targetImageBitmap$iv2;
                                        targetCanvas$iv = targetCanvas$iv2;
                                    }
                                    it$iv = $this$drawGenericBorder_u24lambda_u242.canvasDrawScope;
                                    if (it$iv == null) {
                                        it$iv = new CanvasDrawScope();
                                        $this$drawGenericBorder_u24lambda_u242.canvasDrawScope = it$iv;
                                    }
                                    CanvasDrawScope targetDrawScope$iv = it$iv;
                                    long drawSize$iv = IntSizeKt.m7688toSizeozmzZPI(pathBoundsSize);
                                    CacheDrawScope density$iv$iv = $this$drawGenericBorder;
                                    LayoutDirection layoutDirection$iv$iv = $this$drawGenericBorder.getLayoutDirection();
                                    Canvas canvas$iv$iv = targetCanvas$iv;
                                    CanvasDrawScope.DrawParams drawParams = targetDrawScope$iv.getDrawParams();
                                    Density prevDensity$iv$iv = drawParams.getDensity();
                                    LayoutDirection prevLayoutDirection$iv$iv = drawParams.getLayoutDirection();
                                    Canvas prevCanvas$iv$iv = drawParams.getCanvas();
                                    long prevSize$iv$iv = drawParams.getSize();
                                    CanvasDrawScope.DrawParams $this$draw_yzxVdVo_u24lambda_u240$iv$iv = targetDrawScope$iv.getDrawParams();
                                    $this$draw_yzxVdVo_u24lambda_u240$iv$iv.setDensity(density$iv$iv);
                                    $this$draw_yzxVdVo_u24lambda_u240$iv$iv.setLayoutDirection(layoutDirection$iv$iv);
                                    $this$draw_yzxVdVo_u24lambda_u240$iv$iv.setCanvas(canvas$iv$iv);
                                    $this$draw_yzxVdVo_u24lambda_u240$iv$iv.m5191setSizeuvyYCjk(drawSize$iv);
                                    canvas$iv$iv.save();
                                    $this$drawBorderCache_EMwLDEs_u24lambda_u243$iv = targetDrawScope$iv;
                                    DrawScope.m5265drawRectnJ9OG0$default($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv, Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, drawSize$iv, 0.0f, null, null, BlendMode.INSTANCE.m4610getClear0nO6VwU(), 58, null);
                                    left$iv = -pathBounds.getLeft();
                                    top$iv = -pathBounds.getTop();
                                    $this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.getDrawContext().getTransform().translate(left$iv, top$iv);
                                    ?? r38 = targetImageBitmap$iv;
                                    left$iv2 = left$iv;
                                    top$iv2 = top$iv;
                                    final ColorFilter colorFilter3 = colorFilter;
                                    DrawScope.m5260drawPathGBMwjPU$default($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv, outline.getPath(), brush, 0.0f, new Stroke(strokeWidth * 2, 0.0f, 0, 0, null, 30, null), null, 0, 52, null);
                                    int bits$iv$iv$iv = (int) ($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.mo5271getSizeNHjbRc() >> 32);
                                    float f = 1;
                                    float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv) + f;
                                    int bits$iv$iv$iv2 = (int) ($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.mo5271getSizeNHjbRc() >> 32);
                                    float scaleX$iv = fIntBitsToFloat / Float.intBitsToFloat(bits$iv$iv$iv2);
                                    int bits$iv$iv$iv3 = (int) ($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.mo5271getSizeNHjbRc() & 4294967295L);
                                    float fIntBitsToFloat2 = Float.intBitsToFloat(bits$iv$iv$iv3) + f;
                                    int bits$iv$iv$iv4 = (int) ($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.mo5271getSizeNHjbRc() & 4294967295L);
                                    float scaleY$iv = fIntBitsToFloat2 / Float.intBitsToFloat(bits$iv$iv$iv4);
                                    long jMo5270getCenterF1C5BW0 = $this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.mo5270getCenterF1C5BW0();
                                    $this$withTransform_u24lambda_u240$iv$iv = $this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.getDrawContext();
                                    previousSize$iv$iv = $this$withTransform_u24lambda_u240$iv$iv.mo5192getSizeNHjbRc();
                                    $this$withTransform_u24lambda_u240$iv$iv.getCanvas().save();
                                    DrawTransform $this$scale_Fgt4K4Q_u24lambda_u240$iv = $this$withTransform_u24lambda_u240$iv$iv.getTransform();
                                    $this$scale_Fgt4K4Q_u24lambda_u240$iv.mo5199scale0AR0LA0(scaleX$iv, scaleY$iv, jMo5270getCenterF1C5BW0);
                                    previousSize$iv$iv2 = previousSize$iv$iv;
                                    DrawScope.m5260drawPathGBMwjPU$default($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv, $this$drawGenericBorder_u24lambda_u241, brush, 0.0f, null, null, BlendMode.INSTANCE.m4610getClear0nO6VwU(), 28, null);
                                    $this$withTransform_u24lambda_u240$iv$iv.getCanvas().restore();
                                    $this$withTransform_u24lambda_u240$iv$iv.mo5193setSizeuvyYCjk(previousSize$iv$iv2);
                                    $this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.getDrawContext().getTransform().translate(-left$iv2, -top$iv2);
                                    canvas$iv$iv.restore();
                                    CanvasDrawScope.DrawParams $this$draw_yzxVdVo_u24lambda_u241$iv$iv = targetDrawScope$iv.getDrawParams();
                                    $this$draw_yzxVdVo_u24lambda_u241$iv$iv.setDensity(prevDensity$iv$iv);
                                    $this$draw_yzxVdVo_u24lambda_u241$iv$iv.setLayoutDirection(prevLayoutDirection$iv$iv);
                                    $this$draw_yzxVdVo_u24lambda_u241$iv$iv.setCanvas(prevCanvas$iv$iv);
                                    $this$draw_yzxVdVo_u24lambda_u241$iv$iv.m5191setSizeuvyYCjk(prevSize$iv$iv);
                                    r38.prepareToDraw();
                                    cacheImageBitmap.element = r38;
                                    return $this$drawGenericBorder.onDrawWithContent(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$$ExternalSyntheticLambda3
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj) {
                                            return BorderModifierNode.drawGenericBorder$lambda$3(pathBounds, cacheImageBitmap, pathBoundsSize, colorFilter3, (ContentDrawScope) obj);
                                        }
                                    });
                                }
                            }
                            $this$withTransform_u24lambda_u240$iv$iv.getCanvas().restore();
                            $this$withTransform_u24lambda_u240$iv$iv.mo5193setSizeuvyYCjk(previousSize$iv$iv2);
                            $this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.getDrawContext().getTransform().translate(-left$iv2, -top$iv2);
                            canvas$iv$iv.restore();
                            CanvasDrawScope.DrawParams $this$draw_yzxVdVo_u24lambda_u241$iv$iv2 = targetDrawScope$iv.getDrawParams();
                            $this$draw_yzxVdVo_u24lambda_u241$iv$iv2.setDensity(prevDensity$iv$iv);
                            $this$draw_yzxVdVo_u24lambda_u241$iv$iv2.setLayoutDirection(prevLayoutDirection$iv$iv);
                            $this$draw_yzxVdVo_u24lambda_u241$iv$iv2.setCanvas(prevCanvas$iv$iv);
                            $this$draw_yzxVdVo_u24lambda_u241$iv$iv2.m5191setSizeuvyYCjk(prevSize$iv$iv);
                            r38.prepareToDraw();
                            cacheImageBitmap.element = r38;
                            return $this$drawGenericBorder.onDrawWithContent(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return BorderModifierNode.drawGenericBorder$lambda$3(pathBounds, cacheImageBitmap, pathBoundsSize, colorFilter3, (ContentDrawScope) obj);
                                }
                            });
                        } catch (Throwable th) {
                            th = th;
                            $this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.getDrawContext().getTransform().translate(-left$iv2, -top$iv2);
                            throw th;
                        }
                        DrawScope.m5260drawPathGBMwjPU$default($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv, $this$drawGenericBorder_u24lambda_u241, brush, 0.0f, null, null, BlendMode.INSTANCE.m4610getClear0nO6VwU(), 28, null);
                    } catch (Throwable th2) {
                        th = th2;
                        $this$withTransform_u24lambda_u240$iv$iv2 = $this$withTransform_u24lambda_u240$iv$iv;
                        try {
                            $this$withTransform_u24lambda_u240$iv$iv2.getCanvas().restore();
                            $this$withTransform_u24lambda_u240$iv$iv2.mo5193setSizeuvyYCjk(previousSize$iv$iv2);
                            throw th;
                        } catch (Throwable th3) {
                            th = th3;
                            $this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.getDrawContext().getTransform().translate(-left$iv2, -top$iv2);
                            throw th;
                        }
                    }
                    DrawTransform $this$scale_Fgt4K4Q_u24lambda_u240$iv2 = $this$withTransform_u24lambda_u240$iv$iv.getTransform();
                    $this$scale_Fgt4K4Q_u24lambda_u240$iv2.mo5199scale0AR0LA0(scaleX$iv, scaleY$iv, jMo5270getCenterF1C5BW0);
                    previousSize$iv$iv2 = previousSize$iv$iv;
                } catch (Throwable th4) {
                    th = th4;
                    $this$withTransform_u24lambda_u240$iv$iv2 = $this$withTransform_u24lambda_u240$iv$iv;
                    previousSize$iv$iv2 = previousSize$iv$iv;
                }
                DrawScope.m5260drawPathGBMwjPU$default($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv, outline.getPath(), brush, 0.0f, new Stroke(strokeWidth * 2, 0.0f, 0, 0, null, 30, null), null, 0, 52, null);
                int bits$iv$iv$iv5 = (int) ($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.mo5271getSizeNHjbRc() >> 32);
                float f2 = 1;
                float fIntBitsToFloat3 = Float.intBitsToFloat(bits$iv$iv$iv5) + f2;
                int bits$iv$iv$iv22 = (int) ($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.mo5271getSizeNHjbRc() >> 32);
                float scaleX$iv2 = fIntBitsToFloat3 / Float.intBitsToFloat(bits$iv$iv$iv22);
                int bits$iv$iv$iv32 = (int) ($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.mo5271getSizeNHjbRc() & 4294967295L);
                float fIntBitsToFloat22 = Float.intBitsToFloat(bits$iv$iv$iv32) + f2;
                int bits$iv$iv$iv42 = (int) ($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.mo5271getSizeNHjbRc() & 4294967295L);
                float scaleY$iv2 = fIntBitsToFloat22 / Float.intBitsToFloat(bits$iv$iv$iv42);
                long jMo5270getCenterF1C5BW02 = $this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.mo5270getCenterF1C5BW0();
                $this$withTransform_u24lambda_u240$iv$iv = $this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.getDrawContext();
                previousSize$iv$iv = $this$withTransform_u24lambda_u240$iv$iv.mo5192getSizeNHjbRc();
                $this$withTransform_u24lambda_u240$iv$iv.getCanvas().save();
            } catch (Throwable th5) {
                th = th5;
            }
            ?? r382 = targetImageBitmap$iv;
            left$iv2 = left$iv;
            top$iv2 = top$iv;
            final ColorFilter colorFilter32 = colorFilter;
        } catch (Throwable th6) {
            th = th6;
            top$iv2 = top$iv;
            left$iv2 = left$iv;
        }
        ImageBitmap targetImageBitmap$iv3 = ImageBitmapKt.m4933ImageBitmapx__hDU$default((int) (pathBoundsSize >> 32), (int) (pathBoundsSize & 4294967295L), i, false, null, 24, null);
        $this$drawGenericBorder_u24lambda_u242.imageBitmap = targetImageBitmap$iv3;
        Canvas it$iv2 = androidx.compose.ui.graphics.CanvasKt.Canvas(targetImageBitmap$iv3);
        $this$drawGenericBorder_u24lambda_u242.canvas = it$iv2;
        targetImageBitmap$iv = targetImageBitmap$iv3;
        targetCanvas$iv = it$iv2;
        it$iv = $this$drawGenericBorder_u24lambda_u242.canvasDrawScope;
        if (it$iv == null) {
        }
        CanvasDrawScope targetDrawScope$iv2 = it$iv;
        long drawSize$iv2 = IntSizeKt.m7688toSizeozmzZPI(pathBoundsSize);
        CacheDrawScope density$iv$iv2 = $this$drawGenericBorder;
        LayoutDirection layoutDirection$iv$iv2 = $this$drawGenericBorder.getLayoutDirection();
        Canvas canvas$iv$iv2 = targetCanvas$iv;
        CanvasDrawScope.DrawParams drawParams2 = targetDrawScope$iv2.getDrawParams();
        Density prevDensity$iv$iv2 = drawParams2.getDensity();
        LayoutDirection prevLayoutDirection$iv$iv2 = drawParams2.getLayoutDirection();
        Canvas prevCanvas$iv$iv2 = drawParams2.getCanvas();
        long prevSize$iv$iv2 = drawParams2.getSize();
        CanvasDrawScope.DrawParams $this$draw_yzxVdVo_u24lambda_u240$iv$iv2 = targetDrawScope$iv2.getDrawParams();
        $this$draw_yzxVdVo_u24lambda_u240$iv$iv2.setDensity(density$iv$iv2);
        $this$draw_yzxVdVo_u24lambda_u240$iv$iv2.setLayoutDirection(layoutDirection$iv$iv2);
        $this$draw_yzxVdVo_u24lambda_u240$iv$iv2.setCanvas(canvas$iv$iv2);
        $this$draw_yzxVdVo_u24lambda_u240$iv$iv2.m5191setSizeuvyYCjk(drawSize$iv2);
        canvas$iv$iv2.save();
        $this$drawBorderCache_EMwLDEs_u24lambda_u243$iv = targetDrawScope$iv2;
        DrawScope.m5265drawRectnJ9OG0$default($this$drawBorderCache_EMwLDEs_u24lambda_u243$iv, Color.INSTANCE.m4723getBlack0d7_KjU(), 0L, drawSize$iv2, 0.0f, null, null, BlendMode.INSTANCE.m4610getClear0nO6VwU(), 58, null);
        left$iv = -pathBounds.getLeft();
        top$iv = -pathBounds.getTop();
        $this$drawBorderCache_EMwLDEs_u24lambda_u243$iv.getDrawContext().getTransform().translate(left$iv, top$iv);
    }

    static final Unit drawGenericBorder$lambda$0(Outline.Generic $outline, Brush $brush, ContentDrawScope $this$onDrawWithContent) {
        $this$onDrawWithContent.drawContent();
        DrawScope.m5260drawPathGBMwjPU$default($this$onDrawWithContent, $outline.getPath(), $brush, 0.0f, null, null, 0, 60, null);
        return Unit.INSTANCE;
    }

    static final Unit drawGenericBorder$lambda$3(Rect $pathBounds, Ref.ObjectRef $cacheImageBitmap, long $pathBoundsSize, ColorFilter $colorFilter, ContentDrawScope $this$onDrawWithContent) {
        $this$onDrawWithContent.drawContent();
        ContentDrawScope $this$translate$iv = $this$onDrawWithContent;
        float left$iv = $pathBounds.getLeft();
        float top$iv = $pathBounds.getTop();
        $this$translate$iv.getDrawContext().getTransform().translate(left$iv, top$iv);
        try {
            DrawScope.m5254drawImageAZ2fEMs$default($this$translate$iv, (ImageBitmap) $cacheImageBitmap.element, 0L, $pathBoundsSize, 0L, 0L, 0.0f, null, $colorFilter, 0, 0, 890, null);
            $this$translate$iv.getDrawContext().getTransform().translate(-left$iv, -top$iv);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            $this$translate$iv.getDrawContext().getTransform().translate(-left$iv, -top$iv);
            throw th;
        }
    }

    /* JADX INFO: renamed from: drawRoundRectBorder-JqoCqck, reason: not valid java name */
    private final DrawResult m280drawRoundRectBorderJqoCqck(CacheDrawScope $this$drawRoundRectBorder_u2dJqoCqck, final Brush brush, Outline.Rounded outline, final long j, final long j2, final boolean fillArea, final float strokeWidth) {
        if (!RoundRectKt.isSimple(outline.getRoundRect())) {
            if (this.borderCache == null) {
                this.borderCache = new BorderCache(null, null, null, null, 15, null);
            }
            BorderCache borderCache = this.borderCache;
            Intrinsics.checkNotNull(borderCache);
            Path path = borderCache.obtainPath();
            final Path roundedRectPath = BorderKt.createRoundRectPath(path, outline.getRoundRect(), strokeWidth, fillArea);
            return $this$drawRoundRectBorder_u2dJqoCqck.onDrawWithContent(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BorderModifierNode.drawRoundRectBorder_JqoCqck$lambda$1(roundedRectPath, brush, (ContentDrawScope) obj);
                }
            });
        }
        final long cornerRadius = outline.getRoundRect().m4502getTopLeftCornerRadiuskKHJgLs();
        final float halfStroke = strokeWidth / 2;
        final Stroke borderStroke = new Stroke(strokeWidth, 0.0f, 0, 0, null, 30, null);
        return $this$drawRoundRectBorder_u2dJqoCqck.onDrawWithContent(new Function1() { // from class: androidx.compose.foundation.BorderModifierNode$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BorderModifierNode.drawRoundRectBorder_JqoCqck$lambda$0(fillArea, brush, cornerRadius, halfStroke, strokeWidth, j, j2, borderStroke, (ContentDrawScope) obj);
            }
        });
    }

    static final Unit drawRoundRectBorder_JqoCqck$lambda$0(boolean $fillArea, Brush $brush, long $cornerRadius, float $halfStroke, float $strokeWidth, long j, long j2, Stroke $borderStroke, ContentDrawScope $this$onDrawWithContent) throws Throwable {
        $this$onDrawWithContent.drawContent();
        if ($fillArea) {
            DrawScope.m5266drawRoundRectZuiqVtQ$default($this$onDrawWithContent, $brush, 0L, 0L, $cornerRadius, 0.0f, null, null, 0, 246, null);
        } else {
            int bits$iv$iv$iv = (int) ($cornerRadius >> 32);
            if (Float.intBitsToFloat(bits$iv$iv$iv) < $halfStroke) {
                ContentDrawScope $this$clipRect_u2drOu3jXo$iv = $this$onDrawWithContent;
                int bits$iv$iv$iv2 = (int) ($this$onDrawWithContent.mo5271getSizeNHjbRc() >> 32);
                float right$iv = Float.intBitsToFloat(bits$iv$iv$iv2) - $strokeWidth;
                int bits$iv$iv$iv3 = (int) (4294967295L & $this$onDrawWithContent.mo5271getSizeNHjbRc());
                float bottom$iv = Float.intBitsToFloat(bits$iv$iv$iv3) - $strokeWidth;
                int iM4685getDifferencertfAjoo = ClipOp.INSTANCE.m4685getDifferencertfAjoo();
                DrawContext $this$withTransform_u24lambda_u240$iv$iv = $this$clipRect_u2drOu3jXo$iv.getDrawContext();
                long previousSize$iv$iv = $this$withTransform_u24lambda_u240$iv$iv.mo5192getSizeNHjbRc();
                $this$withTransform_u24lambda_u240$iv$iv.getCanvas().save();
                try {
                    DrawTransform $this$clipRect_rOu3jXo_u24lambda_u240$iv = $this$withTransform_u24lambda_u240$iv$iv.getTransform();
                    $this$clipRect_rOu3jXo_u24lambda_u240$iv.mo5195clipRectN_I0leg($strokeWidth, $strokeWidth, right$iv, bottom$iv, iM4685getDifferencertfAjoo);
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    DrawScope.m5266drawRoundRectZuiqVtQ$default($this$clipRect_u2drOu3jXo$iv, $brush, 0L, 0L, $cornerRadius, 0.0f, null, null, 0, 246, null);
                    $this$withTransform_u24lambda_u240$iv$iv.getCanvas().restore();
                    $this$withTransform_u24lambda_u240$iv$iv.mo5193setSizeuvyYCjk(previousSize$iv$iv);
                } catch (Throwable th2) {
                    th = th2;
                    $this$withTransform_u24lambda_u240$iv$iv.getCanvas().restore();
                    $this$withTransform_u24lambda_u240$iv$iv.mo5193setSizeuvyYCjk(previousSize$iv$iv);
                    throw th;
                }
            } else {
                DrawScope.m5266drawRoundRectZuiqVtQ$default($this$onDrawWithContent, $brush, j, j2, BorderKt.m279shrinkKibmq7A($cornerRadius, $halfStroke), 0.0f, $borderStroke, null, 0, 208, null);
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit drawRoundRectBorder_JqoCqck$lambda$1(Path $roundedRectPath, Brush $brush, ContentDrawScope $this$onDrawWithContent) {
        $this$onDrawWithContent.drawContent();
        DrawScope.m5260drawPathGBMwjPU$default($this$onDrawWithContent, $roundedRectPath, $brush, 0.0f, null, null, 0, 60, null);
        return Unit.INSTANCE;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver $this$applySemantics) {
        SemanticsPropertiesKt.setShape($this$applySemantics, this.shape);
    }
}
