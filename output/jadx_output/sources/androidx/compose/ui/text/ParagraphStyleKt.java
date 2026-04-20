package androidx.compose.ui.text;

import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextIndentKt;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ParagraphStyle.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007\u001a&\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\n2\b\u0010\u0006\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0000\u001ac\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00012\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\n2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0000¢\u0006\u0004\b \u0010!\u001a\u0018\u0010\"\u001a\u0004\u0018\u00010\n*\u00020\u00042\b\u0010#\u001a\u0004\u0018\u00010\nH\u0002\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002¨\u0006$"}, d2 = {"DefaultLineHeight", "Landroidx/compose/ui/unit/TextUnit;", "J", "lerp", "Landroidx/compose/ui/text/ParagraphStyle;", TtmlNode.START, "stop", "fraction", "", "lerpPlatformStyle", "Landroidx/compose/ui/text/PlatformParagraphStyle;", "resolveParagraphStyleDefaults", "style", "direction", "Landroidx/compose/ui/unit/LayoutDirection;", "fastMerge", TtmlNode.ATTR_TTS_TEXT_ALIGN, "Landroidx/compose/ui/text/style/TextAlign;", "textDirection", "Landroidx/compose/ui/text/style/TextDirection;", "lineHeight", "textIndent", "Landroidx/compose/ui/text/style/TextIndent;", "platformStyle", "lineHeightStyle", "Landroidx/compose/ui/text/style/LineHeightStyle;", "lineBreak", "Landroidx/compose/ui/text/style/LineBreak;", "hyphens", "Landroidx/compose/ui/text/style/Hyphens;", "textMotion", "Landroidx/compose/ui/text/style/TextMotion;", "fastMerge-j5T8yCg", "(Landroidx/compose/ui/text/ParagraphStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)Landroidx/compose/ui/text/ParagraphStyle;", "mergePlatformStyle", "other", "ui-text"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ParagraphStyleKt {
    private static final long DefaultLineHeight = TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE();

    public static final ParagraphStyle lerp(ParagraphStyle start, ParagraphStyle stop, float fraction) {
        int iM7357unboximpl = ((TextAlign) SpanStyleKt.lerpDiscrete(TextAlign.m7351boximpl(start.getTextAlign()), TextAlign.m7351boximpl(stop.getTextAlign()), fraction)).m7357unboximpl();
        int iM7374unboximpl = ((TextDirection) SpanStyleKt.lerpDiscrete(TextDirection.m7368boximpl(start.getTextDirection()), TextDirection.m7368boximpl(stop.getTextDirection()), fraction)).m7374unboximpl();
        long jM6875lerpTextUnitInheritableC3pnCVY = SpanStyleKt.m6875lerpTextUnitInheritableC3pnCVY(start.getLineHeight(), stop.getLineHeight(), fraction);
        TextIndent textIndent = start.getTextIndent();
        if (textIndent == null) {
            textIndent = TextIndent.INSTANCE.getNone();
        }
        TextIndent textIndent2 = stop.getTextIndent();
        if (textIndent2 == null) {
            textIndent2 = TextIndent.INSTANCE.getNone();
        }
        return new ParagraphStyle(iM7357unboximpl, iM7374unboximpl, jM6875lerpTextUnitInheritableC3pnCVY, TextIndentKt.lerp(textIndent, textIndent2, fraction), lerpPlatformStyle(start.getPlatformStyle(), stop.getPlatformStyle(), fraction), (LineHeightStyle) SpanStyleKt.lerpDiscrete(start.getLineHeightStyle(), stop.getLineHeightStyle(), fraction), ((LineBreak) SpanStyleKt.lerpDiscrete(LineBreak.m7256boximpl(start.getLineBreak()), LineBreak.m7256boximpl(stop.getLineBreak()), fraction)).getMask(), ((Hyphens) SpanStyleKt.lerpDiscrete(Hyphens.m7243boximpl(start.getHyphens()), Hyphens.m7243boximpl(stop.getHyphens()), fraction)).m7249unboximpl(), (TextMotion) SpanStyleKt.lerpDiscrete(start.getTextMotion(), stop.getTextMotion(), fraction), (DefaultConstructorMarker) null);
    }

    private static final PlatformParagraphStyle lerpPlatformStyle(PlatformParagraphStyle start, PlatformParagraphStyle stop, float fraction) {
        if (start == null && stop == null) {
            return null;
        }
        PlatformParagraphStyle startNonNull = start == null ? PlatformParagraphStyle.INSTANCE.getDefault() : start;
        PlatformParagraphStyle stopNonNull = stop == null ? PlatformParagraphStyle.INSTANCE.getDefault() : stop;
        return AndroidTextStyle_androidKt.lerp(startNonNull, stopNonNull, fraction);
    }

    public static final ParagraphStyle resolveParagraphStyleDefaults(ParagraphStyle style, LayoutDirection direction) {
        int iM7363getStarte0LSkKk = TextAlign.m7354equalsimpl0(style.getTextAlign(), TextAlign.INSTANCE.m7364getUnspecifiede0LSkKk()) ? TextAlign.INSTANCE.m7363getStarte0LSkKk() : style.getTextAlign();
        int iM6974resolveTextDirectionIhaHGbI = TextStyleKt.m6974resolveTextDirectionIhaHGbI(direction, style.getTextDirection());
        long lineHeight = (TextUnit.m7697getRawTypeimpl(style.getLineHeight()) > 0L ? 1 : (TextUnit.m7697getRawTypeimpl(style.getLineHeight()) == 0L ? 0 : -1)) == 0 ? DefaultLineHeight : style.getLineHeight();
        TextIndent textIndent = style.getTextIndent();
        if (textIndent == null) {
            textIndent = TextIndent.INSTANCE.getNone();
        }
        PlatformParagraphStyle platformStyle = style.getPlatformStyle();
        LineHeightStyle lineHeightStyle = style.getLineHeightStyle();
        int iM7275getSimplerAG3T2k = LineBreak.m7262equalsimpl0(style.getLineBreak(), LineBreak.INSTANCE.m7276getUnspecifiedrAG3T2k()) ? LineBreak.INSTANCE.m7275getSimplerAG3T2k() : style.getLineBreak();
        int iM7251getNonevmbZdU8 = Hyphens.m7246equalsimpl0(style.getHyphens(), Hyphens.INSTANCE.m7252getUnspecifiedvmbZdU8()) ? Hyphens.INSTANCE.m7251getNonevmbZdU8() : style.getHyphens();
        TextMotion textMotion = style.getTextMotion();
        if (textMotion == null) {
            textMotion = TextMotion.INSTANCE.getStatic();
        }
        return new ParagraphStyle(iM7363getStarte0LSkKk, iM6974resolveTextDirectionIhaHGbI, lineHeight, textIndent, platformStyle, lineHeightStyle, iM7275getSimplerAG3T2k, iM7251getNonevmbZdU8, textMotion, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00d5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d6  */
    /* JADX INFO: renamed from: fastMerge-j5T8yCg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final ParagraphStyle m6836fastMergej5T8yCg(ParagraphStyle $this$fastMerge_u2dj5T8yCg, int i, int i2, long j, TextIndent textIndent, PlatformParagraphStyle platformStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion) {
        long j2;
        long j3;
        boolean requiresAlloc;
        if (TextAlign.m7354equalsimpl0(i, TextAlign.INSTANCE.m7364getUnspecifiede0LSkKk()) || TextAlign.m7354equalsimpl0(i, $this$fastMerge_u2dj5T8yCg.getTextAlign())) {
            if (!(TextUnit.m7697getRawTypeimpl(j) == 0)) {
                j2 = 0;
                j3 = j;
                if (TextUnit.m7696equalsimpl0(j3, $this$fastMerge_u2dj5T8yCg.getLineHeight())) {
                }
                if (!requiresAlloc) {
                    return $this$fastMerge_u2dj5T8yCg;
                }
                return new ParagraphStyle(!TextAlign.m7354equalsimpl0(i, TextAlign.INSTANCE.m7364getUnspecifiede0LSkKk()) ? i : $this$fastMerge_u2dj5T8yCg.getTextAlign(), !TextDirection.m7371equalsimpl0(i2, TextDirection.INSTANCE.m7380getUnspecifieds_7Xco()) ? i2 : $this$fastMerge_u2dj5T8yCg.getTextDirection(), TextUnit.m7697getRawTypeimpl(j) == j2 ? $this$fastMerge_u2dj5T8yCg.getLineHeight() : j3, textIndent == null ? $this$fastMerge_u2dj5T8yCg.getTextIndent() : textIndent, mergePlatformStyle($this$fastMerge_u2dj5T8yCg, platformStyle), lineHeightStyle == null ? $this$fastMerge_u2dj5T8yCg.getLineHeightStyle() : lineHeightStyle, !LineBreak.m7262equalsimpl0(i3, LineBreak.INSTANCE.m7276getUnspecifiedrAG3T2k()) ? i3 : $this$fastMerge_u2dj5T8yCg.getLineBreak(), !Hyphens.m7246equalsimpl0(i4, Hyphens.INSTANCE.m7252getUnspecifiedvmbZdU8()) ? i4 : $this$fastMerge_u2dj5T8yCg.getHyphens(), textMotion == null ? $this$fastMerge_u2dj5T8yCg.getTextMotion() : textMotion, (DefaultConstructorMarker) null);
            }
            j2 = 0;
            j3 = j;
            if ((textIndent == null || Intrinsics.areEqual(textIndent, $this$fastMerge_u2dj5T8yCg.getTextIndent())) && ((TextDirection.m7371equalsimpl0(i2, TextDirection.INSTANCE.m7380getUnspecifieds_7Xco()) || TextDirection.m7371equalsimpl0(i2, $this$fastMerge_u2dj5T8yCg.getTextDirection())) && ((platformStyle == null || Intrinsics.areEqual(platformStyle, $this$fastMerge_u2dj5T8yCg.getPlatformStyle())) && ((lineHeightStyle == null || Intrinsics.areEqual(lineHeightStyle, $this$fastMerge_u2dj5T8yCg.getLineHeightStyle())) && ((LineBreak.m7262equalsimpl0(i3, LineBreak.INSTANCE.m7276getUnspecifiedrAG3T2k()) || LineBreak.m7262equalsimpl0(i3, $this$fastMerge_u2dj5T8yCg.getLineBreak())) && ((Hyphens.m7246equalsimpl0(i4, Hyphens.INSTANCE.m7252getUnspecifiedvmbZdU8()) || Hyphens.m7246equalsimpl0(i4, $this$fastMerge_u2dj5T8yCg.getHyphens())) && (textMotion == null || Intrinsics.areEqual(textMotion, $this$fastMerge_u2dj5T8yCg.getTextMotion())))))))) {
                requiresAlloc = false;
            }
            if (!requiresAlloc) {
            }
        } else {
            j2 = 0;
            j3 = j;
        }
        requiresAlloc = true;
        if (!requiresAlloc) {
        }
    }

    private static final PlatformParagraphStyle mergePlatformStyle(ParagraphStyle $this$mergePlatformStyle, PlatformParagraphStyle other) {
        return $this$mergePlatformStyle.getPlatformStyle() == null ? other : other == null ? $this$mergePlatformStyle.getPlatformStyle() : $this$mergePlatformStyle.getPlatformStyle().merge(other);
    }
}
