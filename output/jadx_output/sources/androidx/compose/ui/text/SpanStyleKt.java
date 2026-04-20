package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.ShadowKt;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.FontWeightKt;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.BaselineShiftKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDrawStyleKt;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextGeometricTransformKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SpanStyle.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a'\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\rH\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a+\u0010\u0010\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112\u0006\u0010\n\u001a\u0002H\u00112\u0006\u0010\u000b\u001a\u0002H\u00112\u0006\u0010\u0012\u001a\u00020\rH\u0000¢\u0006\u0002\u0010\u0013\u001a\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\r\u001a&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u00192\b\u0010\u0017\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0012\u001a\u00020\rH\u0002\u001a\u0010\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0015H\u0000\u001a½\u0001\u0010\u001c\u001a\u00020\u0015*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00052\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\u00012\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010'2\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010,\u001a\u00020\u00012\b\u0010-\u001a\u0004\u0018\u00010.2\b\u0010/\u001a\u0004\u0018\u0001002\b\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u00020\u00052\b\u00104\u001a\u0004\u0018\u0001052\b\u00106\u001a\u0004\u0018\u0001072\b\u00108\u001a\u0004\u0018\u00010\u00192\b\u00109\u001a\u0004\u0018\u00010:H\u0000¢\u0006\u0004\b;\u0010<\u001a\u0018\u0010=\u001a\u0004\u0018\u00010\u0019*\u00020\u00152\b\u0010>\u001a\u0004\u0018\u00010\u0019H\u0002\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006?"}, d2 = {"DefaultFontSize", "Landroidx/compose/ui/unit/TextUnit;", "J", "DefaultLetterSpacing", "DefaultBackgroundColor", "Landroidx/compose/ui/graphics/Color;", "DefaultColor", "DefaultColorForegroundStyle", "Landroidx/compose/ui/text/style/TextForegroundStyle;", "lerpTextUnitInheritable", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "t", "", "lerpTextUnitInheritable-C3pnCVY", "(JJF)J", "lerpDiscrete", ExifInterface.GPS_DIRECTION_TRUE, "fraction", "(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;", "lerp", "Landroidx/compose/ui/text/SpanStyle;", TtmlNode.START, "stop", "lerpPlatformStyle", "Landroidx/compose/ui/text/PlatformSpanStyle;", "resolveSpanStyleDefaults", "style", "fastMerge", TtmlNode.ATTR_TTS_COLOR, "brush", "Landroidx/compose/ui/graphics/Brush;", "alpha", TtmlNode.ATTR_TTS_FONT_SIZE, TtmlNode.ATTR_TTS_FONT_WEIGHT, "Landroidx/compose/ui/text/font/FontWeight;", TtmlNode.ATTR_TTS_FONT_STYLE, "Landroidx/compose/ui/text/font/FontStyle;", "fontSynthesis", "Landroidx/compose/ui/text/font/FontSynthesis;", TtmlNode.ATTR_TTS_FONT_FAMILY, "Landroidx/compose/ui/text/font/FontFamily;", "fontFeatureSettings", "", "letterSpacing", "baselineShift", "Landroidx/compose/ui/text/style/BaselineShift;", "textGeometricTransform", "Landroidx/compose/ui/text/style/TextGeometricTransform;", "localeList", "Landroidx/compose/ui/text/intl/LocaleList;", "background", TtmlNode.ATTR_TTS_TEXT_DECORATION, "Landroidx/compose/ui/text/style/TextDecoration;", "shadow", "Landroidx/compose/ui/graphics/Shadow;", "platformStyle", "drawStyle", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "fastMerge-dSHsh3o", "(Landroidx/compose/ui/text/SpanStyle;JLandroidx/compose/ui/graphics/Brush;FJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/text/SpanStyle;", "mergePlatformStyle", "other", "ui-text"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SpanStyleKt {
    private static final long DefaultFontSize = TextUnitKt.getSp(14);
    private static final long DefaultLetterSpacing = TextUnitKt.getSp(0);
    private static final long DefaultBackgroundColor = Color.INSTANCE.m4732getTransparent0d7_KjU();
    private static final long DefaultColor = Color.INSTANCE.m4723getBlack0d7_KjU();
    private static final TextForegroundStyle DefaultColorForegroundStyle = TextForegroundStyle.INSTANCE.m7385from8_81llA(DefaultColor);

    /* JADX INFO: renamed from: lerpTextUnitInheritable-C3pnCVY, reason: not valid java name */
    public static final long m6875lerpTextUnitInheritableC3pnCVY(long j, long j2, float t) {
        if (!(TextUnit.m7697getRawTypeimpl(j) == 0)) {
            if (!(TextUnit.m7697getRawTypeimpl(j2) == 0)) {
                return TextUnitKt.m7719lerpC3pnCVY(j, j2, t);
            }
        }
        return ((TextUnit) lerpDiscrete(TextUnit.m7689boximpl(j), TextUnit.m7689boximpl(j2), t)).getPackedValue();
    }

    public static final <T> T lerpDiscrete(T t, T t2, float fraction) {
        return ((double) fraction) < 0.5d ? t : t2;
    }

    public static final SpanStyle lerp(SpanStyle start, SpanStyle stop, float fraction) {
        TextForegroundStyle textForegroundStyleLerp = TextDrawStyleKt.lerp(start.getTextForegroundStyle(), stop.getTextForegroundStyle(), fraction);
        FontFamily fontFamily = (FontFamily) lerpDiscrete(start.getFontFamily(), stop.getFontFamily(), fraction);
        long jM6875lerpTextUnitInheritableC3pnCVY = m6875lerpTextUnitInheritableC3pnCVY(start.getFontSize(), stop.getFontSize(), fraction);
        FontWeight fontWeight = start.getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.INSTANCE.getNormal();
        }
        FontWeight fontWeight2 = stop.getFontWeight();
        if (fontWeight2 == null) {
            fontWeight2 = FontWeight.INSTANCE.getNormal();
        }
        FontWeight fontWeightLerp = FontWeightKt.lerp(fontWeight, fontWeight2, fraction);
        FontStyle fontStyle = (FontStyle) lerpDiscrete(start.getFontStyle(), stop.getFontStyle(), fraction);
        FontSynthesis fontSynthesis = (FontSynthesis) lerpDiscrete(start.getFontSynthesis(), stop.getFontSynthesis(), fraction);
        String str = (String) lerpDiscrete(start.getFontFeatureSettings(), stop.getFontFeatureSettings(), fraction);
        long jM6875lerpTextUnitInheritableC3pnCVY2 = m6875lerpTextUnitInheritableC3pnCVY(start.getLetterSpacing(), stop.getLetterSpacing(), fraction);
        BaselineShift baselineShift = start.getBaselineShift();
        float fM7226unboximpl = baselineShift != null ? baselineShift.m7226unboximpl() : BaselineShift.m7221constructorimpl(0.0f);
        BaselineShift baselineShift2 = stop.getBaselineShift();
        float fM7236lerpjWV1Mfo = BaselineShiftKt.m7236lerpjWV1Mfo(fM7226unboximpl, baselineShift2 != null ? baselineShift2.m7226unboximpl() : BaselineShift.m7221constructorimpl(0.0f), fraction);
        TextGeometricTransform textGeometricTransform = start.getTextGeometricTransform();
        if (textGeometricTransform == null) {
            textGeometricTransform = TextGeometricTransform.INSTANCE.getNone$ui_text();
        }
        TextGeometricTransform textGeometricTransform2 = stop.getTextGeometricTransform();
        if (textGeometricTransform2 == null) {
            textGeometricTransform2 = TextGeometricTransform.INSTANCE.getNone$ui_text();
        }
        TextGeometricTransform textGeometricTransformLerp = TextGeometricTransformKt.lerp(textGeometricTransform, textGeometricTransform2, fraction);
        LocaleList localeList = (LocaleList) lerpDiscrete(start.getLocaleList(), stop.getLocaleList(), fraction);
        long jM4748lerpjxsXWHM = ColorKt.m4748lerpjxsXWHM(start.getBackground(), stop.getBackground(), fraction);
        TextDecoration textDecoration = (TextDecoration) lerpDiscrete(start.getTextDecoration(), stop.getTextDecoration(), fraction);
        Shadow shadow = start.getShadow();
        if (shadow == null) {
            shadow = new Shadow(0L, 0L, 0.0f, 7, null);
        }
        Shadow shadow2 = stop.getShadow();
        if (shadow2 == null) {
            shadow2 = new Shadow(0L, 0L, 0.0f, 7, null);
        }
        return new SpanStyle(textForegroundStyleLerp, jM6875lerpTextUnitInheritableC3pnCVY, fontWeightLerp, fontStyle, fontSynthesis, fontFamily, str, jM6875lerpTextUnitInheritableC3pnCVY2, BaselineShift.m7220boximpl(fM7236lerpjWV1Mfo), textGeometricTransformLerp, localeList, jM4748lerpjxsXWHM, textDecoration, ShadowKt.lerp(shadow, shadow2, fraction), lerpPlatformStyle(start.getPlatformStyle(), stop.getPlatformStyle(), fraction), (DrawStyle) lerpDiscrete(start.getDrawStyle(), stop.getDrawStyle(), fraction), (DefaultConstructorMarker) null);
    }

    private static final PlatformSpanStyle lerpPlatformStyle(PlatformSpanStyle start, PlatformSpanStyle stop, float fraction) {
        if (start == null && stop == null) {
            return null;
        }
        PlatformSpanStyle startNonNull = start == null ? PlatformSpanStyle.INSTANCE.getDefault() : start;
        PlatformSpanStyle stopNonNull = stop == null ? PlatformSpanStyle.INSTANCE.getDefault() : stop;
        return AndroidTextStyle_androidKt.lerp(startNonNull, stopNonNull, fraction);
    }

    public static final SpanStyle resolveSpanStyleDefaults(SpanStyle style) {
        long letterSpacing;
        TextForegroundStyle textForegroundStyleTakeOrElse = style.getTextForegroundStyle().takeOrElse(new Function0() { // from class: androidx.compose.ui.text.SpanStyleKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SpanStyleKt.DefaultColorForegroundStyle;
            }
        });
        long fontSize = (TextUnit.m7697getRawTypeimpl(style.getFontSize()) > 0L ? 1 : (TextUnit.m7697getRawTypeimpl(style.getFontSize()) == 0L ? 0 : -1)) == 0 ? DefaultFontSize : style.getFontSize();
        FontWeight fontWeight = style.getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.INSTANCE.getNormal();
        }
        FontStyle fontStyle = style.getFontStyle();
        FontStyle fontStyleM7037boximpl = FontStyle.m7037boximpl(fontStyle != null ? fontStyle.m7043unboximpl() : FontStyle.INSTANCE.m7047getNormal_LCdwA());
        FontSynthesis fontSynthesis = style.getFontSynthesis();
        FontSynthesis fontSynthesisM7048boximpl = FontSynthesis.m7048boximpl(fontSynthesis != null ? fontSynthesis.m7056unboximpl() : FontSynthesis.INSTANCE.m7057getAllGVVA2EU());
        SystemFontFamily fontFamily = style.getFontFamily();
        if (fontFamily == null) {
            fontFamily = FontFamily.INSTANCE.getDefault();
        }
        String fontFeatureSettings = style.getFontFeatureSettings();
        if (fontFeatureSettings == null) {
            fontFeatureSettings = "";
        }
        if (TextUnit.m7697getRawTypeimpl(style.getLetterSpacing()) == 0) {
            letterSpacing = DefaultLetterSpacing;
        } else {
            letterSpacing = style.getLetterSpacing();
        }
        BaselineShift baselineShift = style.getBaselineShift();
        float fM7226unboximpl = baselineShift != null ? baselineShift.m7226unboximpl() : BaselineShift.INSTANCE.m7231getNoney9eOQZs();
        if (Float.isNaN(fM7226unboximpl)) {
            fM7226unboximpl = BaselineShift.INSTANCE.m7231getNoney9eOQZs();
        }
        BaselineShift baselineShiftM7220boximpl = BaselineShift.m7220boximpl(fM7226unboximpl);
        TextGeometricTransform textGeometricTransform = style.getTextGeometricTransform();
        if (textGeometricTransform == null) {
            textGeometricTransform = TextGeometricTransform.INSTANCE.getNone$ui_text();
        }
        TextGeometricTransform textGeometricTransform2 = textGeometricTransform;
        LocaleList localeList = style.getLocaleList();
        if (localeList == null) {
            localeList = LocaleList.INSTANCE.getCurrent();
        }
        LocaleList localeList2 = localeList;
        long background = style.getBackground();
        if (!(background != 16)) {
            background = DefaultBackgroundColor;
        }
        TextDecoration textDecoration = style.getTextDecoration();
        if (textDecoration == null) {
            textDecoration = TextDecoration.INSTANCE.getNone();
        }
        TextDecoration textDecoration2 = textDecoration;
        Shadow shadow = style.getShadow();
        if (shadow == null) {
            shadow = Shadow.INSTANCE.getNone();
        }
        Shadow shadow2 = shadow;
        PlatformSpanStyle platformStyle = style.getPlatformStyle();
        Fill drawStyle = style.getDrawStyle();
        if (drawStyle == null) {
            drawStyle = Fill.INSTANCE;
        }
        return new SpanStyle(textForegroundStyleTakeOrElse, fontSize, fontWeight, fontStyleM7037boximpl, fontSynthesisM7048boximpl, fontFamily, fontFeatureSettings, letterSpacing, baselineShiftM7220boximpl, textGeometricTransform2, localeList2, background, textDecoration2, shadow2, platformStyle, drawStyle, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x020b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0130  */
    /* JADX INFO: renamed from: fastMerge-dSHsh3o, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final SpanStyle m6874fastMergedSHsh3o(SpanStyle $this$fastMerge_u2ddSHsh3o, long j, Brush brush, float alpha, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String fontFeatureSettings, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformStyle, DrawStyle drawStyle) {
        long j5;
        TextGeometricTransform textGeometricTransform2;
        Shadow shadow2;
        PlatformSpanStyle platformSpanStyle;
        boolean requiresAlloc;
        if (!(TextUnit.m7697getRawTypeimpl(j2) == 0)) {
            j5 = j2;
            if (!TextUnit.m7696equalsimpl0(j5, $this$fastMerge_u2ddSHsh3o.getFontSize())) {
                textGeometricTransform2 = textGeometricTransform;
                shadow2 = shadow;
                platformSpanStyle = platformStyle;
            }
            requiresAlloc = true;
            if (requiresAlloc) {
                return $this$fastMerge_u2ddSHsh3o;
            }
            TextForegroundStyle otherTextForegroundStyle = brush != null ? TextForegroundStyle.INSTANCE.from(brush, alpha) : TextForegroundStyle.INSTANCE.m7385from8_81llA(j);
            return new SpanStyle($this$fastMerge_u2ddSHsh3o.getTextForegroundStyle().merge(otherTextForegroundStyle), !((TextUnit.m7697getRawTypeimpl(j2) > 0L ? 1 : (TextUnit.m7697getRawTypeimpl(j2) == 0L ? 0 : -1)) == 0) ? j5 : $this$fastMerge_u2ddSHsh3o.getFontSize(), fontWeight == null ? $this$fastMerge_u2ddSHsh3o.getFontWeight() : fontWeight, fontStyle == null ? $this$fastMerge_u2ddSHsh3o.getFontStyle() : fontStyle, fontSynthesis == null ? $this$fastMerge_u2ddSHsh3o.getFontSynthesis() : fontSynthesis, fontFamily == null ? $this$fastMerge_u2ddSHsh3o.getFontFamily() : fontFamily, fontFeatureSettings == null ? $this$fastMerge_u2ddSHsh3o.getFontFeatureSettings() : fontFeatureSettings, !((TextUnit.m7697getRawTypeimpl(j3) > 0L ? 1 : (TextUnit.m7697getRawTypeimpl(j3) == 0L ? 0 : -1)) == 0) ? j3 : $this$fastMerge_u2ddSHsh3o.getLetterSpacing(), baselineShift == null ? $this$fastMerge_u2ddSHsh3o.getBaselineShift() : baselineShift, textGeometricTransform2 == null ? $this$fastMerge_u2ddSHsh3o.getTextGeometricTransform() : textGeometricTransform2, localeList == null ? $this$fastMerge_u2ddSHsh3o.getLocaleList() : localeList, j4 != 16 ? j4 : $this$fastMerge_u2ddSHsh3o.getBackground(), textDecoration == null ? $this$fastMerge_u2ddSHsh3o.getTextDecoration() : textDecoration, shadow2 == null ? $this$fastMerge_u2ddSHsh3o.getShadow() : shadow2, mergePlatformStyle($this$fastMerge_u2ddSHsh3o, platformSpanStyle), drawStyle == null ? $this$fastMerge_u2ddSHsh3o.getDrawStyle() : drawStyle, (DefaultConstructorMarker) null);
        }
        j5 = j2;
        if (brush != null) {
            if (fontStyle != null && !Intrinsics.areEqual(fontStyle, $this$fastMerge_u2ddSHsh3o.getFontStyle())) {
                textGeometricTransform2 = textGeometricTransform;
                shadow2 = shadow;
                platformSpanStyle = platformStyle;
            } else if (fontWeight != null && !Intrinsics.areEqual(fontWeight, $this$fastMerge_u2ddSHsh3o.getFontWeight())) {
                textGeometricTransform2 = textGeometricTransform;
                shadow2 = shadow;
                platformSpanStyle = platformStyle;
            } else if (fontFamily == null || fontFamily == $this$fastMerge_u2ddSHsh3o.getFontFamily()) {
                if (!(TextUnit.m7697getRawTypeimpl(j3) == 0) && !TextUnit.m7696equalsimpl0(j3, $this$fastMerge_u2ddSHsh3o.getLetterSpacing())) {
                    textGeometricTransform2 = textGeometricTransform;
                    shadow2 = shadow;
                    platformSpanStyle = platformStyle;
                } else if ((textDecoration != null && !Intrinsics.areEqual(textDecoration, $this$fastMerge_u2ddSHsh3o.getTextDecoration())) || !Intrinsics.areEqual(brush, $this$fastMerge_u2ddSHsh3o.getTextForegroundStyle().getBrush())) {
                    textGeometricTransform2 = textGeometricTransform;
                    shadow2 = shadow;
                    platformSpanStyle = platformStyle;
                } else if (brush != null) {
                    if (!(alpha == $this$fastMerge_u2ddSHsh3o.getTextForegroundStyle().getAlpha())) {
                        textGeometricTransform2 = textGeometricTransform;
                        shadow2 = shadow;
                        platformSpanStyle = platformStyle;
                    }
                } else if (fontSynthesis != null && !Intrinsics.areEqual(fontSynthesis, $this$fastMerge_u2ddSHsh3o.getFontSynthesis())) {
                    textGeometricTransform2 = textGeometricTransform;
                    shadow2 = shadow;
                    platformSpanStyle = platformStyle;
                } else if (fontFeatureSettings != null && !Intrinsics.areEqual(fontFeatureSettings, $this$fastMerge_u2ddSHsh3o.getFontFeatureSettings())) {
                    textGeometricTransform2 = textGeometricTransform;
                    shadow2 = shadow;
                    platformSpanStyle = platformStyle;
                } else if (baselineShift == null || Intrinsics.areEqual(baselineShift, $this$fastMerge_u2ddSHsh3o.getBaselineShift())) {
                    if (textGeometricTransform != null) {
                        textGeometricTransform2 = textGeometricTransform;
                        if (!Intrinsics.areEqual(textGeometricTransform2, $this$fastMerge_u2ddSHsh3o.getTextGeometricTransform())) {
                            shadow2 = shadow;
                            platformSpanStyle = platformStyle;
                        }
                    } else {
                        textGeometricTransform2 = textGeometricTransform;
                    }
                    if (localeList == null || Intrinsics.areEqual(localeList, $this$fastMerge_u2ddSHsh3o.getLocaleList())) {
                        if ((j4 != 16 ? 1 : 0) == 0 || Color.m4698equalsimpl0(j4, $this$fastMerge_u2ddSHsh3o.getBackground())) {
                            if (shadow != null) {
                                shadow2 = shadow;
                                if (!Intrinsics.areEqual(shadow2, $this$fastMerge_u2ddSHsh3o.getShadow())) {
                                    platformSpanStyle = platformStyle;
                                }
                            } else {
                                shadow2 = shadow;
                            }
                            if (platformStyle != null) {
                                platformSpanStyle = platformStyle;
                                if (Intrinsics.areEqual(platformSpanStyle, $this$fastMerge_u2ddSHsh3o.getPlatformStyle())) {
                                }
                            } else {
                                platformSpanStyle = platformStyle;
                            }
                            if (drawStyle == null || Intrinsics.areEqual(drawStyle, $this$fastMerge_u2ddSHsh3o.getDrawStyle())) {
                                requiresAlloc = false;
                            }
                        } else {
                            shadow2 = shadow;
                            platformSpanStyle = platformStyle;
                        }
                    } else {
                        shadow2 = shadow;
                        platformSpanStyle = platformStyle;
                    }
                } else {
                    textGeometricTransform2 = textGeometricTransform;
                    shadow2 = shadow;
                    platformSpanStyle = platformStyle;
                }
            } else {
                textGeometricTransform2 = textGeometricTransform;
                shadow2 = shadow;
                platformSpanStyle = platformStyle;
            }
            requiresAlloc = true;
        } else {
            if ((j != 16) && !Color.m4698equalsimpl0(j, $this$fastMerge_u2ddSHsh3o.getTextForegroundStyle().mo7238getColor0d7_KjU())) {
                textGeometricTransform2 = textGeometricTransform;
                shadow2 = shadow;
                platformSpanStyle = platformStyle;
            }
            requiresAlloc = true;
        }
        if (requiresAlloc) {
        }
    }

    private static final PlatformSpanStyle mergePlatformStyle(SpanStyle $this$mergePlatformStyle, PlatformSpanStyle other) {
        return $this$mergePlatformStyle.getPlatformStyle() == null ? other : other == null ? $this$mergePlatformStyle.getPlatformStyle() : $this$mergePlatformStyle.getPlatformStyle().merge(other);
    }
}
