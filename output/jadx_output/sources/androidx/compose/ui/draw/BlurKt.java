package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlurEffect;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RenderEffectKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TileMode;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: Blur.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"blur", "Landroidx/compose/ui/Modifier;", "radiusX", "Landroidx/compose/ui/unit/Dp;", "radiusY", "edgeTreatment", "Landroidx/compose/ui/draw/BlurredEdgeTreatment;", "blur-1fqS-gw", "(Landroidx/compose/ui/Modifier;FFLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;", "radius", "blur-F8QBwvs", "(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class BlurKt {
    /* JADX INFO: renamed from: blur-1fqS-gw$default, reason: not valid java name */
    public static /* synthetic */ Modifier m4218blur1fqSgw$default(Modifier modifier, float f, float f2, BlurredEdgeTreatment blurredEdgeTreatment, int i, Object obj) {
        if ((i & 4) != 0) {
            blurredEdgeTreatment = BlurredEdgeTreatment.m4221boximpl(BlurredEdgeTreatment.INSTANCE.m4228getRectangleGoahg());
        }
        return m4217blur1fqSgw(modifier, f, f2, blurredEdgeTreatment.m4227unboximpl());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /* JADX INFO: renamed from: blur-1fqS-gw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Modifier m4217blur1fqSgw(Modifier $this$blur_u2d1fqS_u2dgw, final float f, final float f2, final Shape shape) {
        final boolean clip;
        final int tileMode;
        if (shape != null) {
            int tileMode2 = TileMode.INSTANCE.m5092getClamp3opZhB0();
            clip = true;
            tileMode = tileMode2;
        } else {
            int tileMode3 = TileMode.INSTANCE.m5093getDecal3opZhB0();
            clip = false;
            tileMode = tileMode3;
        }
        int $this$dp$iv = Dp.m7504compareTo0680j_4(f, Dp.m7505constructorimpl(0));
        if ($this$dp$iv > 0) {
            int $this$dp$iv2 = Dp.m7504compareTo0680j_4(f2, Dp.m7505constructorimpl(0));
            if ($this$dp$iv2 <= 0) {
                if (!clip) {
                    return $this$blur_u2d1fqS_u2dgw;
                }
            }
        }
        return GraphicsLayerModifierKt.graphicsLayer($this$blur_u2d1fqS_u2dgw, new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.ui.draw.BlurKt$blur$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                invoke2(graphicsLayerScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(GraphicsLayerScope $this$graphicsLayer) {
                BlurEffect blurEffectM5021BlurEffect3YTHUZs;
                float horizontalBlurPixels = $this$graphicsLayer.mo405toPx0680j_4(f);
                float verticalBlurPixels = $this$graphicsLayer.mo405toPx0680j_4(f2);
                if (horizontalBlurPixels > 0.0f && verticalBlurPixels > 0.0f) {
                    blurEffectM5021BlurEffect3YTHUZs = RenderEffectKt.m5021BlurEffect3YTHUZs(horizontalBlurPixels, verticalBlurPixels, tileMode);
                } else {
                    blurEffectM5021BlurEffect3YTHUZs = null;
                }
                $this$graphicsLayer.setRenderEffect(blurEffectM5021BlurEffect3YTHUZs);
                Shape rectangleShape = shape;
                if (rectangleShape == null) {
                    rectangleShape = RectangleShapeKt.getRectangleShape();
                }
                $this$graphicsLayer.setShape(rectangleShape);
                $this$graphicsLayer.setClip(clip);
            }
        });
    }

    /* JADX INFO: renamed from: blur-F8QBwvs$default, reason: not valid java name */
    public static /* synthetic */ Modifier m4220blurF8QBwvs$default(Modifier modifier, float f, BlurredEdgeTreatment blurredEdgeTreatment, int i, Object obj) {
        if ((i & 2) != 0) {
            blurredEdgeTreatment = BlurredEdgeTreatment.m4221boximpl(BlurredEdgeTreatment.INSTANCE.m4228getRectangleGoahg());
        }
        return m4219blurF8QBwvs(modifier, f, blurredEdgeTreatment.m4227unboximpl());
    }

    /* JADX INFO: renamed from: blur-F8QBwvs, reason: not valid java name */
    public static final Modifier m4219blurF8QBwvs(Modifier $this$blur_u2dF8QBwvs, float f, Shape shape) {
        return m4217blur1fqSgw($this$blur_u2dF8QBwvs, f, f, shape);
    }
}
