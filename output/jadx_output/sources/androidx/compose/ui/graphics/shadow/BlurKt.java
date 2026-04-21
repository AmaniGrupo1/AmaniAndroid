package androidx.compose.ui.graphics.shadow;

import android.graphics.BlurMaskFilter;
import androidx.compose.ui.graphics.Paint;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;

/* JADX INFO: compiled from: Blur.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aC\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\b2\b\b\u0002\u0010\t\u001a\u00020\nH\u0000¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"configureShadow", "Landroidx/compose/ui/graphics/Paint;", TtmlNode.ATTR_TTS_COLOR, "Landroidx/compose/ui/graphics/Color;", "blendMode", "Landroidx/compose/ui/graphics/BlendMode;", "blurFilter", "Landroid/graphics/BlurMaskFilter;", "Landroidx/compose/ui/graphics/shadow/BlurFilter;", "style", "Landroidx/compose/ui/graphics/PaintingStyle;", "configureShadow-FoewPVk", "(Landroidx/compose/ui/graphics/Paint;JILandroid/graphics/BlurMaskFilter;I)Landroidx/compose/ui/graphics/Paint;", "ui-graphics"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class BlurKt {
    /* JADX INFO: renamed from: configureShadow-FoewPVk, reason: not valid java name */
    public static final Paint m5405configureShadowFoewPVk(Paint $this$configureShadow_u2dFoewPVk, long j, int i, BlurMaskFilter blurFilter, int i2) {
        $this$configureShadow_u2dFoewPVk.mo4573setColor8_81llA(j);
        $this$configureShadow_u2dFoewPVk.mo4572setBlendModes9anfk8(i);
        $this$configureShadow_u2dFoewPVk.mo4577setStylek9PVt8s(i2);
        Blur_androidKt.setBlurFilter($this$configureShadow_u2dFoewPVk, blurFilter);
        return $this$configureShadow_u2dFoewPVk;
    }
}
