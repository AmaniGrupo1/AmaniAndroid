package androidx.compose.ui.text;

import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.DrawTransform;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDrawStyleKt;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: TextPainter.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a}\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0018¢\u0006\u0004\b\u0019\u0010\u001a\u001ag\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u001b2\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0018¢\u0006\u0004\b\u001c\u0010\u001d\u001ae\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\"\u001a\u00020#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)2\b\b\u0002\u0010\u0017\u001a\u00020\u0018¢\u0006\u0004\b*\u0010+\u001ac\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020-2\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\"\u001a\u00020#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)2\b\b\u0002\u0010\u0017\u001a\u00020\u0018¢\u0006\u0004\b.\u0010/\u001a\u0014\u00100\u001a\u00020\u0001*\u0002012\u0006\u0010\u001e\u001a\u00020\u001fH\u0002\u001a#\u00102\u001a\u000203*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\bH\u0002¢\u0006\u0004\b4\u00105¨\u00066"}, d2 = {"drawText", "", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "textMeasurer", "Landroidx/compose/ui/text/TextMeasurer;", "text", "Landroidx/compose/ui/text/AnnotatedString;", "topLeft", "Landroidx/compose/ui/geometry/Offset;", "style", "Landroidx/compose/ui/text/TextStyle;", "overflow", "Landroidx/compose/ui/text/style/TextOverflow;", "softWrap", "", "maxLines", "", "placeholders", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "size", "Landroidx/compose/ui/geometry/Size;", "blendMode", "Landroidx/compose/ui/graphics/BlendMode;", "drawText-JFhB2K4", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextMeasurer;Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextStyle;IZILjava/util/List;JI)V", "", "drawText-TPWCCtM", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextMeasurer;Ljava/lang/String;JLandroidx/compose/ui/text/TextStyle;IZIJI)V", "textLayoutResult", "Landroidx/compose/ui/text/TextLayoutResult;", TtmlNode.ATTR_TTS_COLOR, "Landroidx/compose/ui/graphics/Color;", "alpha", "", "shadow", "Landroidx/compose/ui/graphics/Shadow;", TtmlNode.ATTR_TTS_TEXT_DECORATION, "Landroidx/compose/ui/text/style/TextDecoration;", "drawStyle", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "drawText-d8-rzKo", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextLayoutResult;JJFLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V", "brush", "Landroidx/compose/ui/graphics/Brush;", "drawText-LVfH_YU", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/graphics/Brush;JFLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V", "clip", "Landroidx/compose/ui/graphics/drawscope/DrawTransform;", "textLayoutConstraints", "Landroidx/compose/ui/unit/Constraints;", "textLayoutConstraints-v_w8tDc", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJ)J", "ui-text"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class TextPainterKt {
    /* JADX INFO: renamed from: drawText-JFhB2K4, reason: not valid java name */
    public static final void m6907drawTextJFhB2K4(DrawScope $this$drawText_u2dJFhB2K4, TextMeasurer textMeasurer, AnnotatedString text, long j, TextStyle style, int i, boolean softWrap, int maxLines, List<AnnotatedString.Range<Placeholder>> list, long j2, int i2) {
        TextLayoutResult textLayoutResult = TextMeasurer.m6902measurexDpz5zY$default(textMeasurer, text, style, i, softWrap, maxLines, list, m6915textLayoutConstraintsv_w8tDc($this$drawText_u2dJFhB2K4, j2, j), $this$drawText_u2dJFhB2K4.getLayoutDirection(), $this$drawText_u2dJFhB2K4, null, false, 1536, null);
        DrawContext $this$withTransform_u24lambda_u240$iv = $this$drawText_u2dJFhB2K4.getDrawContext();
        long previousSize$iv = $this$withTransform_u24lambda_u240$iv.mo5192getSizeNHjbRc();
        $this$withTransform_u24lambda_u240$iv.getCanvas().save();
        try {
            DrawTransform $this$drawText_JFhB2K4_u24lambda_u240 = $this$withTransform_u24lambda_u240$iv.getTransform();
            int bits$iv$iv$iv = (int) (j >> 32);
            float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv);
            int bits$iv$iv$iv2 = (int) (j & 4294967295L);
            $this$drawText_JFhB2K4_u24lambda_u240.translate(fIntBitsToFloat, Float.intBitsToFloat(bits$iv$iv$iv2));
            clip($this$drawText_JFhB2K4_u24lambda_u240, textLayoutResult);
            textLayoutResult.getMultiParagraph().m6792paintLG529CI($this$drawText_u2dJFhB2K4.getDrawContext().getCanvas(), (32 & 2) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : 0L, (32 & 4) != 0 ? null : null, (32 & 8) != 0 ? null : null, (32 & 16) == 0 ? null : null, (32 & 32) != 0 ? DrawScope.INSTANCE.m5273getDefaultBlendMode0nO6VwU() : i2);
        } finally {
            $this$withTransform_u24lambda_u240$iv.getCanvas().restore();
            $this$withTransform_u24lambda_u240$iv.mo5193setSizeuvyYCjk(previousSize$iv);
        }
    }

    /* JADX INFO: renamed from: drawText-TPWCCtM, reason: not valid java name */
    public static final void m6911drawTextTPWCCtM(DrawScope $this$drawText_u2dTPWCCtM, TextMeasurer textMeasurer, String text, long j, TextStyle style, int i, boolean softWrap, int maxLines, long j2, int i2) throws Throwable {
        TextLayoutResult textLayoutResult = TextMeasurer.m6902measurexDpz5zY$default(textMeasurer, new AnnotatedString(text, null, 2, null), style, i, softWrap, maxLines, null, m6915textLayoutConstraintsv_w8tDc($this$drawText_u2dTPWCCtM, j2, j), $this$drawText_u2dTPWCCtM.getLayoutDirection(), $this$drawText_u2dTPWCCtM, null, false, 1568, null);
        DrawContext $this$withTransform_u24lambda_u240$iv = $this$drawText_u2dTPWCCtM.getDrawContext();
        long previousSize$iv = $this$withTransform_u24lambda_u240$iv.mo5192getSizeNHjbRc();
        $this$withTransform_u24lambda_u240$iv.getCanvas().save();
        try {
            DrawTransform $this$drawText_TPWCCtM_u24lambda_u240 = $this$withTransform_u24lambda_u240$iv.getTransform();
            int bits$iv$iv$iv = (int) (j >> 32);
            try {
                int bits$iv$iv$iv2 = (int) (4294967295L & j);
                $this$drawText_TPWCCtM_u24lambda_u240.translate(Float.intBitsToFloat(bits$iv$iv$iv), Float.intBitsToFloat(bits$iv$iv$iv2));
                clip($this$drawText_TPWCCtM_u24lambda_u240, textLayoutResult);
                textLayoutResult.getMultiParagraph().m6792paintLG529CI($this$drawText_u2dTPWCCtM.getDrawContext().getCanvas(), (32 & 2) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : 0L, (32 & 4) != 0 ? null : null, (32 & 8) != 0 ? null : null, (32 & 16) == 0 ? null : null, (32 & 32) != 0 ? DrawScope.INSTANCE.m5273getDefaultBlendMode0nO6VwU() : i2);
                $this$withTransform_u24lambda_u240$iv.getCanvas().restore();
                $this$withTransform_u24lambda_u240$iv.mo5193setSizeuvyYCjk(previousSize$iv);
            } catch (Throwable th) {
                th = th;
                $this$withTransform_u24lambda_u240$iv.getCanvas().restore();
                $this$withTransform_u24lambda_u240$iv.mo5193setSizeuvyYCjk(previousSize$iv);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00d5 A[Catch: all -> 0x0129, TryCatch #0 {all -> 0x0129, blocks: (B:15:0x0081, B:22:0x00a7, B:26:0x00c9, B:25:0x00bd, B:27:0x00d5, B:33:0x0104, B:32:0x00f5), top: B:42:0x0081 }] */
    /* JADX INFO: renamed from: drawText-d8-rzKo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m6913drawTextd8rzKo(DrawScope $this$drawText_u2dd8_u2drzKo, TextLayoutResult textLayoutResult, long j, long j2, float alpha, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int i) throws Throwable {
        Shadow newShadow = shadow == null ? textLayoutResult.getLayoutInput().getStyle().getShadow() : shadow;
        TextDecoration newTextDecoration = textDecoration == null ? textLayoutResult.getLayoutInput().getStyle().getTextDecoration() : textDecoration;
        DrawStyle newDrawStyle = drawStyle == null ? textLayoutResult.getLayoutInput().getStyle().getDrawStyle() : drawStyle;
        DrawContext $this$withTransform_u24lambda_u240$iv = $this$drawText_u2dd8_u2drzKo.getDrawContext();
        long previousSize$iv = $this$withTransform_u24lambda_u240$iv.mo5192getSizeNHjbRc();
        $this$withTransform_u24lambda_u240$iv.getCanvas().save();
        try {
            DrawTransform $this$drawText_d8_rzKo_u24lambda_u240 = $this$withTransform_u24lambda_u240$iv.getTransform();
            int bits$iv$iv$iv = (int) (j2 >> 32);
            float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv);
            int bits$iv$iv$iv2 = (int) (j2 & 4294967295L);
            $this$drawText_d8_rzKo_u24lambda_u240.translate(fIntBitsToFloat, Float.intBitsToFloat(bits$iv$iv$iv2));
            try {
                clip($this$drawText_d8_rzKo_u24lambda_u240, textLayoutResult);
                Brush brush = textLayoutResult.getLayoutInput().getStyle().getBrush();
                if (brush != null) {
                    if ((j == 16 ? 1 : 0) != 0) {
                        textLayoutResult.getMultiParagraph().m6794painthn5TExg($this$drawText_u2dd8_u2drzKo.getDrawContext().getCanvas(), brush, !Float.isNaN(alpha) ? alpha : textLayoutResult.getLayoutInput().getStyle().getAlpha(), newShadow, newTextDecoration, newDrawStyle, i);
                    }
                } else {
                    textLayoutResult.getMultiParagraph().m6792paintLG529CI($this$drawText_u2dd8_u2drzKo.getDrawContext().getCanvas(), TextDrawStyleKt.m7384modulateDxMtmZc(j != 16 ? j : textLayoutResult.getLayoutInput().getStyle().m6958getColor0d7_KjU(), alpha), newShadow, newTextDecoration, newDrawStyle, i);
                }
                $this$withTransform_u24lambda_u240$iv.getCanvas().restore();
                $this$withTransform_u24lambda_u240$iv.mo5193setSizeuvyYCjk(previousSize$iv);
            } catch (Throwable th) {
                th = th;
                $this$withTransform_u24lambda_u240$iv.getCanvas().restore();
                $this$withTransform_u24lambda_u240$iv.mo5193setSizeuvyYCjk(previousSize$iv);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: renamed from: drawText-LVfH_YU, reason: not valid java name */
    public static final void m6909drawTextLVfH_YU(DrawScope $this$drawText_u2dLVfH_YU, TextLayoutResult textLayoutResult, Brush brush, long j, float alpha, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int i) throws Throwable {
        Shadow newShadow = shadow == null ? textLayoutResult.getLayoutInput().getStyle().getShadow() : shadow;
        TextDecoration newTextDecoration = textDecoration == null ? textLayoutResult.getLayoutInput().getStyle().getTextDecoration() : textDecoration;
        DrawStyle newDrawStyle = drawStyle == null ? textLayoutResult.getLayoutInput().getStyle().getDrawStyle() : drawStyle;
        DrawContext $this$withTransform_u24lambda_u240$iv = $this$drawText_u2dLVfH_YU.getDrawContext();
        long previousSize$iv = $this$withTransform_u24lambda_u240$iv.mo5192getSizeNHjbRc();
        $this$withTransform_u24lambda_u240$iv.getCanvas().save();
        try {
            DrawTransform $this$drawText_LVfH_YU_u24lambda_u240 = $this$withTransform_u24lambda_u240$iv.getTransform();
            int bits$iv$iv$iv = (int) (j >> 32);
            float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv);
            int bits$iv$iv$iv2 = (int) (j & 4294967295L);
            $this$drawText_LVfH_YU_u24lambda_u240.translate(fIntBitsToFloat, Float.intBitsToFloat(bits$iv$iv$iv2));
            try {
                clip($this$drawText_LVfH_YU_u24lambda_u240, textLayoutResult);
                textLayoutResult.getMultiParagraph().m6794painthn5TExg($this$drawText_u2dLVfH_YU.getDrawContext().getCanvas(), brush, !Float.isNaN(alpha) ? alpha : textLayoutResult.getLayoutInput().getStyle().getAlpha(), newShadow, newTextDecoration, newDrawStyle, i);
                $this$withTransform_u24lambda_u240$iv.getCanvas().restore();
                $this$withTransform_u24lambda_u240$iv.mo5193setSizeuvyYCjk(previousSize$iv);
            } catch (Throwable th) {
                th = th;
                $this$withTransform_u24lambda_u240$iv.getCanvas().restore();
                $this$withTransform_u24lambda_u240$iv.mo5193setSizeuvyYCjk(previousSize$iv);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static final void clip(DrawTransform $this$clip, TextLayoutResult textLayoutResult) {
        if (textLayoutResult.getHasVisualOverflow() && !TextOverflow.m7406equalsimpl0(textLayoutResult.getLayoutInput().getOverflow(), TextOverflow.INSTANCE.m7419getVisiblegIe3tQ8())) {
            DrawTransform.m5328clipRectN_I0leg$default($this$clip, 0.0f, 0.0f, (int) (textLayoutResult.getSize() >> 32), (int) (4294967295L & textLayoutResult.getSize()), 0, 16, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /* JADX INFO: renamed from: textLayoutConstraints-v_w8tDc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final long m6915textLayoutConstraintsv_w8tDc(DrawScope $this$textLayoutConstraints_u2dv_w8tDc, long j, long j2) {
        boolean isWidthNaN;
        long j3;
        int minWidth;
        int maxWidth;
        long j4;
        int minHeight;
        int maxHeight;
        boolean isHeightNaN = true;
        if (!(j == InlineClassHelperKt.UnspecifiedPackedFloats)) {
            int bits$iv$iv$iv = (int) (j >> 32);
            isWidthNaN = Float.isNaN(Float.intBitsToFloat(bits$iv$iv$iv));
        }
        if (isWidthNaN) {
            minWidth = 0;
            int bits$iv$iv$iv2 = (int) ($this$textLayoutConstraints_u2dv_w8tDc.mo5271getSizeNHjbRc() >> 32);
            j3 = 9205357640488583168L;
            int bits$iv$iv$iv3 = (int) (j2 >> 32);
            float $this$fastRoundToInt$iv = (float) Math.ceil(Float.intBitsToFloat(bits$iv$iv$iv2) - Float.intBitsToFloat(bits$iv$iv$iv3));
            maxWidth = RangesKt.coerceAtLeast(Math.round($this$fastRoundToInt$iv), 0);
        } else {
            j3 = 9205357640488583168L;
            int bits$iv$iv$iv4 = (int) (j >> 32);
            float $this$fastRoundToInt$iv2 = (float) Math.ceil(Float.intBitsToFloat(bits$iv$iv$iv4));
            int fixedWidth = Math.round($this$fastRoundToInt$iv2);
            minWidth = fixedWidth;
            maxWidth = fixedWidth;
        }
        if (j == j3) {
            j4 = 4294967295L;
        } else {
            j4 = 4294967295L;
            int bits$iv$iv$iv5 = (int) (j & 4294967295L);
            if (!Float.isNaN(Float.intBitsToFloat(bits$iv$iv$iv5))) {
                isHeightNaN = false;
            }
        }
        if (isHeightNaN) {
            minHeight = 0;
            int bits$iv$iv$iv6 = (int) ($this$textLayoutConstraints_u2dv_w8tDc.mo5271getSizeNHjbRc() & j4);
            int bits$iv$iv$iv7 = (int) (j2 & j4);
            float $this$fastRoundToInt$iv3 = (float) Math.ceil(Float.intBitsToFloat(bits$iv$iv$iv6) - Float.intBitsToFloat(bits$iv$iv$iv7));
            maxHeight = RangesKt.coerceAtLeast(Math.round($this$fastRoundToInt$iv3), 0);
        } else {
            int bits$iv$iv$iv8 = (int) (j & j4);
            float $this$fastRoundToInt$iv4 = (float) Math.ceil(Float.intBitsToFloat(bits$iv$iv$iv8));
            int fixedHeight = Math.round($this$fastRoundToInt$iv4);
            minHeight = fixedHeight;
            maxHeight = fixedHeight;
        }
        return ConstraintsKt.Constraints(minWidth, maxWidth, minHeight, maxHeight);
    }
}
