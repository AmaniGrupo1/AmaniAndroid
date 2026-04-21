package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import kotlin.Metadata;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TextPaintExtensions.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000`\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\u001aP\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012&\u0010\u0004\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00052\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0000\u001a3\u0010\u000f\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0016\u0010\u0018\u001a\u00020\u0019*\u00020\u00022\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0000\u001a\f\u0010\u001c\u001a\u00020\u000e*\u00020\u0001H\u0000\u001a\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0000¨\u0006 "}, d2 = {"applySpanStyle", "Landroidx/compose/ui/text/SpanStyle;", "Landroidx/compose/ui/text/platform/AndroidTextPaint;", "style", "resolveTypeface", "Lkotlin/Function4;", "Landroidx/compose/ui/text/font/FontFamily;", "Landroidx/compose/ui/text/font/FontWeight;", "Landroidx/compose/ui/text/font/FontStyle;", "Landroidx/compose/ui/text/font/FontSynthesis;", "Landroid/graphics/Typeface;", "density", "Landroidx/compose/ui/unit/Density;", "requiresLetterSpacing", "", "generateFallbackSpanStyle", "letterSpacing", "Landroidx/compose/ui/unit/TextUnit;", "background", "Landroidx/compose/ui/graphics/Color;", "baselineShift", "Landroidx/compose/ui/text/style/BaselineShift;", "generateFallbackSpanStyle-62GTOB8", "(JZJLandroidx/compose/ui/text/style/BaselineShift;)Landroidx/compose/ui/text/SpanStyle;", "setTextMotion", "", "textMotion", "Landroidx/compose/ui/text/style/TextMotion;", "hasFontAttributes", "correctBlurRadius", "", "blurRadius", "ui-text"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class TextPaintExtensions_androidKt {
    public static /* synthetic */ SpanStyle applySpanStyle$default(AndroidTextPaint androidTextPaint, SpanStyle spanStyle, Function4 function4, Density density, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        return applySpanStyle(androidTextPaint, spanStyle, function4, density, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x016f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final SpanStyle applySpanStyle(AndroidTextPaint $this$applySpanStyle, SpanStyle style, Function4<? super FontFamily, ? super FontWeight, ? super FontStyle, ? super FontSynthesis, ? extends Typeface> function4, Density density, boolean requiresLetterSpacing) {
        long jM7698getTypeUIouoOA = TextUnit.m7698getTypeUIouoOA(style.getFontSize());
        if (TextUnitType.m7727equalsimpl0(jM7698getTypeUIouoOA, TextUnitType.INSTANCE.m7732getSpUIouoOA())) {
            $this$applySpanStyle.setTextSize(density.mo404toPxR2X_6o(style.getFontSize()));
        } else if (TextUnitType.m7727equalsimpl0(jM7698getTypeUIouoOA, TextUnitType.INSTANCE.m7731getEmUIouoOA())) {
            $this$applySpanStyle.setTextSize($this$applySpanStyle.getTextSize() * TextUnit.m7699getValueimpl(style.getFontSize()));
        }
        if (hasFontAttributes(style)) {
            FontFamily fontFamily = style.getFontFamily();
            FontWeight fontWeight = style.getFontWeight();
            if (fontWeight == null) {
                fontWeight = FontWeight.INSTANCE.getNormal();
            }
            FontStyle fontStyle = style.getFontStyle();
            FontStyle fontStyleM7037boximpl = FontStyle.m7037boximpl(fontStyle != null ? fontStyle.m7043unboximpl() : FontStyle.INSTANCE.m7047getNormal_LCdwA());
            FontSynthesis fontSynthesis = style.getFontSynthesis();
            $this$applySpanStyle.setTypeface(function4.invoke(fontFamily, fontWeight, fontStyleM7037boximpl, FontSynthesis.m7048boximpl(fontSynthesis != null ? fontSynthesis.m7056unboximpl() : FontSynthesis.INSTANCE.m7057getAllGVVA2EU())));
        }
        if (style.getLocaleList() != null && !Intrinsics.areEqual(style.getLocaleList(), LocaleList.INSTANCE.getCurrent())) {
            LocaleListHelperMethods.INSTANCE.setTextLocales($this$applySpanStyle, style.getLocaleList());
        }
        if (style.getFontFeatureSettings() != null && !Intrinsics.areEqual(style.getFontFeatureSettings(), "")) {
            $this$applySpanStyle.setFontFeatureSettings(style.getFontFeatureSettings());
        }
        if (style.getTextGeometricTransform() != null && !Intrinsics.areEqual(style.getTextGeometricTransform(), TextGeometricTransform.INSTANCE.getNone$ui_text())) {
            $this$applySpanStyle.setTextScaleX($this$applySpanStyle.getTextScaleX() * style.getTextGeometricTransform().getScaleX());
            $this$applySpanStyle.setTextSkewX($this$applySpanStyle.getTextSkewX() + style.getTextGeometricTransform().getSkewX());
        }
        $this$applySpanStyle.m7197setColor8_81llA(style.m6869getColor0d7_KjU());
        $this$applySpanStyle.m7195setBrush12SF9DM(style.getBrush(), Size.INSTANCE.m4529getUnspecifiedNHjbRc(), style.getAlpha());
        $this$applySpanStyle.setShadow(style.getShadow());
        $this$applySpanStyle.setTextDecoration(style.getTextDecoration());
        $this$applySpanStyle.setDrawStyle(style.getDrawStyle());
        if (TextUnitType.m7727equalsimpl0(TextUnit.m7698getTypeUIouoOA(style.getLetterSpacing()), TextUnitType.INSTANCE.m7732getSpUIouoOA())) {
            if (!(TextUnit.m7699getValueimpl(style.getLetterSpacing()) == 0.0f)) {
                float emWidth = $this$applySpanStyle.getTextSize() * $this$applySpanStyle.getTextScaleX();
                float letterSpacingPx = density.mo404toPxR2X_6o(style.getLetterSpacing());
                if (!(emWidth == 0.0f)) {
                    $this$applySpanStyle.setLetterSpacing(letterSpacingPx / emWidth);
                }
            } else if (TextUnitType.m7727equalsimpl0(TextUnit.m7698getTypeUIouoOA(style.getLetterSpacing()), TextUnitType.INSTANCE.m7731getEmUIouoOA())) {
                $this$applySpanStyle.setLetterSpacing(TextUnit.m7699getValueimpl(style.getLetterSpacing()));
            }
        }
        return m7212generateFallbackSpanStyle62GTOB8(style.getLetterSpacing(), requiresLetterSpacing, style.getBackground(), style.getBaselineShift());
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0056  */
    /* JADX INFO: renamed from: generateFallbackSpanStyle-62GTOB8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final SpanStyle m7212generateFallbackSpanStyle62GTOB8(long j, boolean requiresLetterSpacing, long j2, BaselineShift baselineShift) {
        boolean hasLetterSpacing;
        boolean hasBaselineShift;
        long jM7710getUnspecifiedXSAIIZE;
        long jM4733getUnspecified0d7_KjU;
        BaselineShift baselineShift2;
        if (requiresLetterSpacing && TextUnitType.m7727equalsimpl0(TextUnit.m7698getTypeUIouoOA(j), TextUnitType.INSTANCE.m7732getSpUIouoOA())) {
            if (!(TextUnit.m7699getValueimpl(j) == 0.0f)) {
                hasLetterSpacing = true;
            }
        } else {
            hasLetterSpacing = false;
        }
        boolean hasBackgroundColor = (Color.m4698equalsimpl0(j2, Color.INSTANCE.m4733getUnspecified0d7_KjU()) || Color.m4698equalsimpl0(j2, Color.INSTANCE.m4732getTransparent0d7_KjU())) ? false : true;
        if (baselineShift != null) {
            hasBaselineShift = BaselineShift.m7223equalsimpl0(baselineShift.m7226unboximpl(), BaselineShift.INSTANCE.m7231getNoney9eOQZs()) ? false : true;
        }
        if (!hasLetterSpacing && !hasBackgroundColor && !hasBaselineShift) {
            return null;
        }
        if (hasLetterSpacing) {
            jM7710getUnspecifiedXSAIIZE = j;
        } else {
            jM7710getUnspecifiedXSAIIZE = TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE();
        }
        if (hasBackgroundColor) {
            jM4733getUnspecified0d7_KjU = j2;
        } else {
            jM4733getUnspecified0d7_KjU = Color.INSTANCE.m4733getUnspecified0d7_KjU();
        }
        if (hasBaselineShift) {
            baselineShift2 = baselineShift;
        } else {
            baselineShift2 = null;
        }
        return new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, jM7710getUnspecifiedXSAIIZE, baselineShift2, (TextGeometricTransform) null, (LocaleList) null, jM4733getUnspecified0d7_KjU, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 63103, (DefaultConstructorMarker) null);
    }

    public static final void setTextMotion(AndroidTextPaint $this$setTextMotion, TextMotion textMotion) {
        int flags;
        TextMotion finalTextMotion = textMotion == null ? TextMotion.INSTANCE.getStatic() : textMotion;
        if (finalTextMotion.getSubpixelTextPositioning()) {
            flags = $this$setTextMotion.getFlags() | 128;
        } else {
            flags = $this$setTextMotion.getFlags() & (-129);
        }
        $this$setTextMotion.setFlags(flags);
        int linearity = finalTextMotion.getLinearity();
        if (TextMotion.Linearity.m7396equalsimpl0(linearity, TextMotion.Linearity.INSTANCE.m7401getLinear4e0Vf04())) {
            $this$setTextMotion.setFlags($this$setTextMotion.getFlags() | 64);
            $this$setTextMotion.setHinting(0);
        } else if (TextMotion.Linearity.m7396equalsimpl0(linearity, TextMotion.Linearity.INSTANCE.m7400getFontHinting4e0Vf04())) {
            $this$setTextMotion.getFlags();
            $this$setTextMotion.setHinting(1);
        } else if (TextMotion.Linearity.m7396equalsimpl0(linearity, TextMotion.Linearity.INSTANCE.m7402getNone4e0Vf04())) {
            $this$setTextMotion.getFlags();
            $this$setTextMotion.setHinting(0);
        } else {
            $this$setTextMotion.getFlags();
        }
    }

    public static final boolean hasFontAttributes(SpanStyle $this$hasFontAttributes) {
        return ($this$hasFontAttributes.getFontFamily() == null && $this$hasFontAttributes.getFontStyle() == null && $this$hasFontAttributes.getFontWeight() == null) ? false : true;
    }

    public static final float correctBlurRadius(float blurRadius) {
        if (blurRadius == 0.0f) {
            return Float.MIN_VALUE;
        }
        return blurRadius;
    }
}
