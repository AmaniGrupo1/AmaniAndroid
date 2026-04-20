package androidx.compose.material;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.InlineTextContent;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.TextUnit;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.profileinstaller.ProfileVerifier;
import com.google.firebase.firestore.model.Values;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: Text.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u001a(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0011\u0010\b\u001a\r\u0012\u0004\u0012\u00020\u00060\t¢\u0006\u0002\b\nH\u0007¢\u0006\u0002\u0010\u000b\u001aæ\u0001\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00142\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010 \u001a\u00020\u00142\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\b\b\u0002\u0010'\u001a\u00020&2\u0014\b\u0002\u0010(\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+0)2\u0014\b\u0002\u0010,\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u00060-2\b\b\u0002\u0010/\u001a\u00020\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b0\u00101\u001aÜ\u0001\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00142\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010 \u001a\u00020\u00142\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\u0014\b\u0002\u0010(\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+0)2\u0014\b\u0002\u0010,\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u00060-2\b\b\u0002\u0010/\u001a\u00020\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b2\u00103\u001aÆ\u0001\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020*2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00142\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010 \u001a\u00020\u00142\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\u0014\b\u0002\u0010,\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u00060-2\b\b\u0002\u0010/\u001a\u00020\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b4\u00105\u001aÒ\u0001\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020*2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00142\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010 \u001a\u00020\u00142\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\b\b\u0002\u0010'\u001a\u00020&2\u0016\b\u0002\u0010,\u001a\u0010\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u0006\u0018\u00010-2\b\b\u0002\u0010/\u001a\u00020\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b2\u00106\"\u0017\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0004\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u00067"}, d2 = {"LocalTextStyle", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Landroidx/compose/ui/text/TextStyle;", "getLocalTextStyle", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "ProvideTextStyle", "", Values.VECTOR_MAP_VECTORS_KEY, "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "Text", "text", "Landroidx/compose/ui/text/AnnotatedString;", "modifier", "Landroidx/compose/ui/Modifier;", TtmlNode.ATTR_TTS_COLOR, "Landroidx/compose/ui/graphics/Color;", TtmlNode.ATTR_TTS_FONT_SIZE, "Landroidx/compose/ui/unit/TextUnit;", TtmlNode.ATTR_TTS_FONT_STYLE, "Landroidx/compose/ui/text/font/FontStyle;", TtmlNode.ATTR_TTS_FONT_WEIGHT, "Landroidx/compose/ui/text/font/FontWeight;", TtmlNode.ATTR_TTS_FONT_FAMILY, "Landroidx/compose/ui/text/font/FontFamily;", "letterSpacing", TtmlNode.ATTR_TTS_TEXT_DECORATION, "Landroidx/compose/ui/text/style/TextDecoration;", TtmlNode.ATTR_TTS_TEXT_ALIGN, "Landroidx/compose/ui/text/style/TextAlign;", "lineHeight", "overflow", "Landroidx/compose/ui/text/style/TextOverflow;", "softWrap", "", "maxLines", "", "minLines", "inlineContent", "", "", "Landroidx/compose/foundation/text/InlineTextContent;", "onTextLayout", "Lkotlin/Function1;", "Landroidx/compose/ui/text/TextLayoutResult;", "style", "Text-IbK3jfQ", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V", "Text--4IGK_g", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V", "Text-fLXpl1I", "(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V", "(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V", "material_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class TextKt {
    private static final ProvidableCompositionLocal<TextStyle> LocalTextStyle = CompositionLocalKt.compositionLocalOf(SnapshotStateKt.structuralEqualityPolicy(), new Function0<TextStyle>() { // from class: androidx.compose.material.TextKt$LocalTextStyle$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final TextStyle invoke() {
            return TypographyKt.getDefaultTextStyle();
        }
    });

    /* JADX WARN: Removed duplicated region for block: B:283:0x054b  */
    /* JADX INFO: renamed from: Text--4IGK_g, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2002Text4IGK_g(final String text, Modifier modifier, long color, long fontSize, FontStyle fontStyle, FontWeight fontWeight, FontFamily fontFamily, long letterSpacing, TextDecoration textDecoration, TextAlign textAlign, long lineHeight, int overflow, boolean softWrap, int maxLines, int minLines, Function1<? super TextLayoutResult, Unit> function1, TextStyle style, Composer $composer, final int $changed, final int $changed1, final int i) {
        String str;
        Modifier.Companion modifier2;
        int i2;
        long color2;
        long fontSize2;
        final FontStyle fontStyle2;
        FontWeight fontWeight2;
        FontFamily fontFamily2;
        int $dirty;
        int $dirty1;
        int i3;
        int i4;
        int i5;
        int $dirty12;
        int $dirty13;
        TextDecoration textDecoration2;
        int $dirty14;
        TextAlign textAlign2;
        long lineHeight2;
        long lineHeight3;
        long fontSize3;
        Function1<? super TextLayoutResult, Unit> function12;
        int minLines2;
        FontStyle fontStyle3;
        int maxLines2;
        boolean softWrap2;
        FontWeight fontWeight3;
        FontFamily fontFamily3;
        int $dirty15;
        TextStyle style2;
        TextAlign textAlign3;
        final long overrideColorOrUnspecified;
        Composer $composer2;
        Composer $composer3;
        final Modifier modifier3;
        final long letterSpacing2;
        final TextDecoration textDecoration3;
        final long lineHeight4;
        final int minLines3;
        final long fontSize4;
        final int overflow2;
        final Function1<? super TextLayoutResult, Unit> function13;
        final boolean softWrap3;
        final TextAlign textAlign4;
        final int maxLines3;
        final long color3;
        final FontWeight fontWeight4;
        final FontFamily fontFamily4;
        final TextStyle style3;
        Composer $composer4 = $composer.startRestartGroup(1028090691);
        ComposerKt.sourceInformation($composer4, "C(Text)P(14,9,0:c#ui.graphics.Color,2:c#ui.unit.TextUnit,3:c#ui.text.font.FontStyle,4!1,5:c#ui.unit.TextUnit,16,15:c#ui.text.style.TextAlign,6:c#ui.unit.TextUnit,11:c#ui.text.style.TextOverflow,12)109@5711L7,128@6923L7,129@6977L7,156@7800L30,138@7204L632:Text.kt#jmzs0o");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
            str = text;
        } else if (($changed & 6) == 0) {
            str = text;
            $dirty2 |= $composer4.changed(str) ? 4 : 2;
        } else {
            str = text;
        }
        int i6 = i & 2;
        if (i6 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer4.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i7 = i & 4;
        if (i7 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i2 = i6;
            color2 = color;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 = i6;
            color2 = color;
            $dirty2 |= $composer4.changed(color2) ? 256 : 128;
        } else {
            i2 = i6;
            color2 = color;
        }
        int i8 = i & 8;
        if (i8 != 0) {
            $dirty2 |= 3072;
            fontSize2 = fontSize;
        } else if (($changed & 3072) == 0) {
            fontSize2 = fontSize;
            $dirty2 |= $composer4.changed(fontSize2) ? 2048 : 1024;
        } else {
            fontSize2 = fontSize;
        }
        int i9 = i & 16;
        if (i9 != 0) {
            $dirty2 |= 24576;
            fontStyle2 = fontStyle;
        } else if (($changed & 24576) == 0) {
            fontStyle2 = fontStyle;
            $dirty2 |= $composer4.changed(fontStyle2) ? 16384 : 8192;
        } else {
            fontStyle2 = fontStyle;
        }
        int i10 = i & 32;
        if (i10 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            fontWeight2 = fontWeight;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            fontWeight2 = fontWeight;
            $dirty2 |= $composer4.changed(fontWeight2) ? 131072 : 65536;
        } else {
            fontWeight2 = fontWeight;
        }
        int i11 = i & 64;
        if (i11 != 0) {
            $dirty2 |= 1572864;
            fontFamily2 = fontFamily;
        } else if (($changed & 1572864) == 0) {
            fontFamily2 = fontFamily;
            $dirty2 |= $composer4.changed(fontFamily2) ? 1048576 : 524288;
        } else {
            fontFamily2 = fontFamily;
        }
        int $dirty3 = i & 128;
        if ($dirty3 != 0) {
            $dirty = $dirty2 | 12582912;
            $dirty1 = $changed1;
        } else if (($changed & 12582912) == 0) {
            $dirty1 = $changed1;
            $dirty = $dirty2 | ($composer4.changed(letterSpacing) ? 8388608 : 4194304);
        } else {
            $dirty = $dirty2;
            $dirty1 = $changed1;
        }
        int i12 = i & 256;
        if (i12 != 0) {
            $dirty |= 100663296;
            i3 = i12;
        } else if (($changed & 100663296) == 0) {
            i3 = i12;
            $dirty |= $composer4.changed(textDecoration) ? 67108864 : 33554432;
        } else {
            i3 = i12;
        }
        int i13 = i & 512;
        if (i13 != 0) {
            $dirty |= 805306368;
            i4 = i13;
        } else if (($changed & 805306368) == 0) {
            i4 = i13;
            $dirty |= $composer4.changed(textAlign) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i4 = i13;
        }
        int $dirty4 = $dirty;
        int i14 = i & 1024;
        if (i14 != 0) {
            i5 = i14;
            $dirty1 |= 6;
        } else {
            int $dirty16 = $changed1 & 6;
            if ($dirty16 == 0) {
                i5 = i14;
                $dirty1 |= $composer4.changed(lineHeight) ? 4 : 2;
            } else {
                i5 = i14;
            }
        }
        int $dirty17 = i & 2048;
        if ($dirty17 != 0) {
            $dirty1 |= 48;
        } else if (($changed1 & 48) == 0) {
            $dirty1 |= $composer4.changed(overflow) ? 32 : 16;
        }
        int $dirty18 = $dirty1;
        int i15 = i & 4096;
        if (i15 != 0) {
            $dirty12 = $dirty18 | RendererCapabilities.DECODER_SUPPORT_MASK;
        } else {
            int $dirty19 = $dirty18;
            int $dirty110 = $changed1 & RendererCapabilities.DECODER_SUPPORT_MASK;
            if ($dirty110 == 0) {
                $dirty19 |= $composer4.changed(softWrap) ? 256 : 128;
            }
            $dirty12 = $dirty19;
        }
        int i16 = i & 8192;
        if (i16 != 0) {
            $dirty13 = $dirty12 | 3072;
        } else {
            int $dirty111 = $dirty12;
            int $dirty112 = $changed1 & 3072;
            if ($dirty112 == 0) {
                $dirty13 = $dirty111 | ($composer4.changed(maxLines) ? 2048 : 1024);
            } else {
                $dirty13 = $dirty111;
            }
        }
        int i17 = i & 16384;
        if (i17 != 0) {
            $dirty13 |= 24576;
        } else if (($changed1 & 24576) == 0) {
            $dirty13 |= $composer4.changed(minLines) ? 16384 : 8192;
        }
        int i18 = i & 32768;
        if (i18 != 0) {
            $dirty13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty13 |= $composer4.changedInstance(function1) ? 131072 : 65536;
        }
        if (($changed1 & 1572864) == 0) {
            $dirty13 |= ((i & 65536) == 0 && $composer4.changed(style)) ? 1048576 : 524288;
        }
        if (($dirty4 & 306783379) == 306783378 && (599187 & $dirty13) == 599186 && $composer4.getSkipping()) {
            $composer4.skipToGroupEnd();
            textAlign4 = textAlign;
            overflow2 = overflow;
            softWrap3 = softWrap;
            maxLines3 = maxLines;
            minLines3 = minLines;
            function13 = function1;
            style3 = style;
            $composer3 = $composer4;
            color3 = color2;
            fontSize4 = fontSize2;
            modifier3 = modifier2;
            fontWeight4 = fontWeight2;
            fontFamily4 = fontFamily2;
            letterSpacing2 = letterSpacing;
            textDecoration3 = textDecoration;
            lineHeight4 = lineHeight;
        } else {
            $composer4.startDefaults();
            if (($changed & 1) == 0 || $composer4.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i7 != 0) {
                    color2 = Color.INSTANCE.m4733getUnspecified0d7_KjU();
                }
                if (i8 != 0) {
                    fontSize2 = TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE();
                }
                if (i9 != 0) {
                    fontStyle2 = null;
                }
                FontWeight fontWeight5 = i10 != 0 ? null : fontWeight2;
                FontFamily fontFamily5 = i11 != 0 ? null : fontFamily2;
                long letterSpacing3 = $dirty3 != 0 ? TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE() : letterSpacing;
                TextDecoration textDecoration4 = i3 != 0 ? null : textDecoration;
                TextAlign textAlign5 = i4 != 0 ? null : textAlign;
                long lineHeight5 = i5 != 0 ? TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE() : lineHeight;
                int overflow3 = $dirty17 != 0 ? TextOverflow.INSTANCE.m7415getClipgIe3tQ8() : overflow;
                boolean softWrap4 = i15 != 0 ? true : softWrap;
                int maxLines4 = i16 != 0 ? Integer.MAX_VALUE : maxLines;
                int minLines4 = i17 != 0 ? 1 : minLines;
                Function1<? super TextLayoutResult, Unit> function14 = i18 != 0 ? null : function1;
                if ((i & 65536) != 0) {
                    ProvidableCompositionLocal<TextStyle> providableCompositionLocal = LocalTextStyle;
                    int $dirty113 = $dirty13;
                    ComposerKt.sourceInformationMarkerStart($composer4, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                    Object objConsume = $composer4.consume(providableCompositionLocal);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    textDecoration2 = textDecoration4;
                    lineHeight2 = lineHeight5;
                    lineHeight3 = letterSpacing3;
                    fontSize3 = fontSize2;
                    function12 = function14;
                    minLines2 = minLines4;
                    fontStyle3 = fontStyle2;
                    maxLines2 = maxLines4;
                    softWrap2 = softWrap4;
                    fontWeight3 = fontWeight5;
                    fontFamily3 = fontFamily5;
                    style2 = (TextStyle) objConsume;
                    $dirty15 = $dirty113 & (-3670017);
                    $dirty14 = overflow3;
                    textAlign2 = textAlign5;
                } else {
                    int $dirty114 = $dirty13;
                    textDecoration2 = textDecoration4;
                    $dirty14 = overflow3;
                    textAlign2 = textAlign5;
                    lineHeight2 = lineHeight5;
                    lineHeight3 = letterSpacing3;
                    fontSize3 = fontSize2;
                    function12 = function14;
                    minLines2 = minLines4;
                    fontStyle3 = fontStyle2;
                    maxLines2 = maxLines4;
                    softWrap2 = softWrap4;
                    fontWeight3 = fontWeight5;
                    fontFamily3 = fontFamily5;
                    $dirty15 = $dirty114;
                    style2 = style;
                }
            } else {
                $composer4.skipToGroupEnd();
                if ((i & 65536) != 0) {
                    $dirty13 &= -3670017;
                }
                lineHeight3 = letterSpacing;
                textDecoration2 = textDecoration;
                textAlign2 = textAlign;
                lineHeight2 = lineHeight;
                softWrap2 = softWrap;
                style2 = style;
                fontStyle3 = fontStyle2;
                fontSize3 = fontSize2;
                fontWeight3 = fontWeight2;
                fontFamily3 = fontFamily2;
                maxLines2 = maxLines;
                minLines2 = minLines;
                function12 = function1;
                $dirty15 = $dirty13;
                $dirty14 = overflow;
            }
            $composer4.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                textAlign3 = textAlign2;
                ComposerKt.traceEventStart(1028090691, $dirty4, $dirty15, "androidx.compose.material.Text (Text.kt:110)");
            } else {
                textAlign3 = textAlign2;
            }
            ProvidableCompositionLocal<Color> localContentColor = ContentColorKt.getLocalContentColor();
            ComposerKt.sourceInformationMarkerStart($composer4, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume2 = $composer4.consume(localContentColor);
            ComposerKt.sourceInformationMarkerEnd($composer4);
            long localContentColor2 = ((Color) objConsume2).m4707unboximpl();
            ProvidableCompositionLocal<Float> localContentAlpha = ContentAlphaKt.getLocalContentAlpha();
            ComposerKt.sourceInformationMarkerStart($composer4, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume3 = $composer4.consume(localContentAlpha);
            ComposerKt.sourceInformationMarkerEnd($composer4);
            float localContentAlpha2 = ((Number) objConsume3).floatValue();
            long $this$isSpecified$iv = color2;
            if ($this$isSpecified$iv != 16) {
                overrideColorOrUnspecified = color2;
            } else {
                long $this$isSpecified$iv2 = style2.m6958getColor0d7_KjU();
                overrideColorOrUnspecified = $this$isSpecified$iv2 != 16 ? style2.m6958getColor0d7_KjU() : Color.m4695copywmQWz5c(localContentColor2, (14 & 1) != 0 ? Color.m4699getAlphaimpl(localContentColor2) : localContentAlpha2, (14 & 2) != 0 ? Color.m4703getRedimpl(localContentColor2) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(localContentColor2) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(localContentColor2) : 0.0f);
            }
            int $dirty115 = $dirty15;
            TextStyle textStyleM6948mergedA7vx0o$default = TextStyle.m6948mergedA7vx0o$default(style2, 0L, fontSize3, fontWeight3, fontStyle3, null, fontFamily3, null, lineHeight3, null, null, null, 0L, textDecoration2, null, null, textAlign3 != null ? textAlign3.m7357unboximpl() : TextAlign.INSTANCE.m7364getUnspecifiede0LSkKk(), 0, lineHeight2, null, null, 0, 0, null, null, 16609105, null);
            ComposerKt.sourceInformationMarkerStart($composer4, 1041441905, "CC(remember):Text.kt#9igjgp");
            boolean invalid$iv = $composer4.changed(overrideColorOrUnspecified);
            ColorProducer value$iv = $composer4.rememberedValue();
            if (invalid$iv) {
                $composer2 = $composer4;
            } else {
                $composer2 = $composer4;
                if (value$iv == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Composer $composer5 = $composer2;
                int overflow4 = $dirty14;
                boolean softWrap5 = softWrap2;
                int maxLines5 = maxLines2;
                int minLines5 = minLines2;
                Function1<? super TextLayoutResult, Unit> function15 = function12;
                BasicTextKt.m1157BasicTextVhcvRP8(str, modifier2, textStyleM6948mergedA7vx0o$default, function15, overflow4, softWrap5, maxLines5, minLines5, (ColorProducer) value$iv, $composer5, ($dirty4 & 14) | ($dirty4 & 112) | (($dirty115 >> 6) & 7168) | (($dirty115 << 9) & 57344) | (($dirty115 << 9) & 458752) | (($dirty115 << 9) & 3670016) | (($dirty115 << 9) & 29360128), 0);
                $composer3 = $composer5;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier2;
                fontStyle2 = fontStyle3;
                letterSpacing2 = lineHeight3;
                textDecoration3 = textDecoration2;
                lineHeight4 = lineHeight2;
                minLines3 = minLines5;
                fontSize4 = fontSize3;
                overflow2 = overflow4;
                function13 = function15;
                softWrap3 = softWrap5;
                TextStyle textStyle = style2;
                textAlign4 = textAlign3;
                FontWeight fontWeight6 = fontWeight3;
                maxLines3 = maxLines5;
                color3 = color2;
                fontWeight4 = fontWeight6;
                fontFamily4 = fontFamily3;
                style3 = textStyle;
            }
            value$iv = new ColorProducer() { // from class: androidx.compose.material.TextKt$Text$1$1
                @Override // androidx.compose.ui.graphics.ColorProducer
                /* JADX INFO: renamed from: invoke-0d7_KjU */
                public final long mo1802invoke0d7_KjU() {
                    return overrideColorOrUnspecified;
                }
            };
            $composer4.updateRememberedValue(value$iv);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Composer $composer52 = $composer2;
            int overflow42 = $dirty14;
            boolean softWrap52 = softWrap2;
            int maxLines52 = maxLines2;
            int minLines52 = minLines2;
            Function1<? super TextLayoutResult, Unit> function152 = function12;
            BasicTextKt.m1157BasicTextVhcvRP8(str, modifier2, textStyleM6948mergedA7vx0o$default, function152, overflow42, softWrap52, maxLines52, minLines52, (ColorProducer) value$iv, $composer52, ($dirty4 & 14) | ($dirty4 & 112) | (($dirty115 >> 6) & 7168) | (($dirty115 << 9) & 57344) | (($dirty115 << 9) & 458752) | (($dirty115 << 9) & 3670016) | (($dirty115 << 9) & 29360128), 0);
            $composer3 = $composer52;
            if (ComposerKt.isTraceInProgress()) {
            }
            modifier3 = modifier2;
            fontStyle2 = fontStyle3;
            letterSpacing2 = lineHeight3;
            textDecoration3 = textDecoration2;
            lineHeight4 = lineHeight2;
            minLines3 = minLines52;
            fontSize4 = fontSize3;
            overflow2 = overflow42;
            function13 = function152;
            softWrap3 = softWrap52;
            TextStyle textStyle2 = style2;
            textAlign4 = textAlign3;
            FontWeight fontWeight62 = fontWeight3;
            maxLines3 = maxLines52;
            color3 = color2;
            fontWeight4 = fontWeight62;
            fontFamily4 = fontFamily3;
            style3 = textStyle2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextKt$Text$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i19) {
                    TextKt.m2002Text4IGK_g(text, modifier3, color3, fontSize4, fontStyle2, fontWeight4, fontFamily4, letterSpacing2, textDecoration3, textAlign4, lineHeight4, overflow2, softWrap3, maxLines3, minLines3, function13, style3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility. Use version with minLines instead")
    /* JADX INFO: renamed from: Text-fLXpl1I, reason: not valid java name */
    public static final /* synthetic */ void m2004TextfLXpl1I(final String text, Modifier modifier, long color, long fontSize, FontStyle fontStyle, FontWeight fontWeight, FontFamily fontFamily, long letterSpacing, TextDecoration textDecoration, TextAlign textAlign, long lineHeight, int overflow, boolean softWrap, int maxLines, Function1 onTextLayout, TextStyle style, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        int i2;
        long color2;
        long fontSize2;
        FontStyle fontStyle2;
        FontWeight fontWeight2;
        int $dirty;
        int $dirty1;
        int i3;
        int i4;
        int $dirty12;
        int i5;
        boolean softWrap2;
        int $dirty13;
        TextStyle style2;
        int maxLines2;
        int overflow2;
        boolean softWrap3;
        long color3;
        TextAlign textAlign2;
        FontStyle fontStyle3;
        long fontSize3;
        FontWeight fontWeight3;
        FontFamily fontFamily2;
        TextDecoration textDecoration2;
        Function1 onTextLayout2;
        Modifier modifier3;
        long letterSpacing2;
        long letterSpacing3;
        Composer $composer2;
        final Modifier modifier4;
        final long color4;
        final long fontSize4;
        final FontStyle fontStyle4;
        final FontWeight fontWeight4;
        final FontFamily fontFamily3;
        final long letterSpacing4;
        final TextDecoration textDecoration3;
        final TextAlign textAlign3;
        final long lineHeight2;
        final int overflow3;
        final boolean softWrap4;
        final int maxLines3;
        final Function1 onTextLayout3;
        final TextStyle style3;
        Composer $composer3 = $composer.startRestartGroup(-366126944);
        ComposerKt.sourceInformation($composer3, "C(Text)P(13,8,0:c#ui.graphics.Color,2:c#ui.unit.TextUnit,3:c#ui.text.font.FontStyle,4!1,5:c#ui.unit.TextUnit,15,14:c#ui.text.style.TextAlign,6:c#ui.unit.TextUnit,10:c#ui.text.style.TextOverflow,11)181@8616L7,183@8632L322:Text.kt#jmzs0o");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(text) ? 4 : 2;
        }
        int i6 = i & 2;
        if (i6 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i7 = i & 4;
        if (i7 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i2 = i6;
            color2 = color;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 = i6;
            color2 = color;
            $dirty2 |= $composer3.changed(color2) ? 256 : 128;
        } else {
            i2 = i6;
            color2 = color;
        }
        int i8 = i & 8;
        if (i8 != 0) {
            $dirty2 |= 3072;
            fontSize2 = fontSize;
        } else if (($changed & 3072) == 0) {
            fontSize2 = fontSize;
            $dirty2 |= $composer3.changed(fontSize2) ? 2048 : 1024;
        } else {
            fontSize2 = fontSize;
        }
        int i9 = i & 16;
        if (i9 != 0) {
            $dirty2 |= 24576;
            fontStyle2 = fontStyle;
        } else if (($changed & 24576) == 0) {
            fontStyle2 = fontStyle;
            $dirty2 |= $composer3.changed(fontStyle2) ? 16384 : 8192;
        } else {
            fontStyle2 = fontStyle;
        }
        int i10 = i & 32;
        if (i10 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            fontWeight2 = fontWeight;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            fontWeight2 = fontWeight;
            $dirty2 |= $composer3.changed(fontWeight2) ? 131072 : 65536;
        } else {
            fontWeight2 = fontWeight;
        }
        int i11 = i & 64;
        if (i11 != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changed(fontFamily) ? 1048576 : 524288;
        }
        int $dirty3 = i & 128;
        if ($dirty3 != 0) {
            $dirty = $dirty2 | 12582912;
            $dirty1 = $changed1;
        } else if (($changed & 12582912) == 0) {
            $dirty1 = $changed1;
            $dirty = $dirty2 | ($composer3.changed(letterSpacing) ? 8388608 : 4194304);
        } else {
            $dirty = $dirty2;
            $dirty1 = $changed1;
        }
        int i12 = i & 256;
        if (i12 != 0) {
            $dirty |= 100663296;
            i3 = i12;
        } else if (($changed & 100663296) == 0) {
            i3 = i12;
            $dirty |= $composer3.changed(textDecoration) ? 67108864 : 33554432;
        } else {
            i3 = i12;
        }
        int i13 = i & 512;
        if (i13 != 0) {
            $dirty |= 805306368;
            i4 = i13;
        } else if (($changed & 805306368) == 0) {
            i4 = i13;
            $dirty |= $composer3.changed(textAlign) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i4 = i13;
        }
        int $dirty4 = $dirty;
        int $dirty14 = i & 1024;
        if ($dirty14 != 0) {
            $dirty12 = $dirty1 | 6;
        } else if (($changed1 & 6) == 0) {
            $dirty12 = $dirty1 | ($composer3.changed(lineHeight) ? 4 : 2);
        } else {
            $dirty12 = $dirty1;
        }
        int i14 = i & 2048;
        if (i14 != 0) {
            $dirty12 |= 48;
            i5 = i14;
        } else if (($changed1 & 48) == 0) {
            i5 = i14;
            $dirty12 |= $composer3.changed(overflow) ? 32 : 16;
        } else {
            i5 = i14;
        }
        int $dirty15 = $dirty12;
        int i15 = i & 4096;
        if (i15 != 0) {
            $dirty15 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            softWrap2 = softWrap;
        } else if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            softWrap2 = softWrap;
            $dirty15 |= $composer3.changed(softWrap2) ? 256 : 128;
        } else {
            softWrap2 = softWrap;
        }
        int i16 = i & 8192;
        if (i16 != 0) {
            $dirty13 = $dirty15 | 3072;
        } else {
            int $dirty16 = $dirty15;
            int $dirty17 = $changed1 & 3072;
            if ($dirty17 == 0) {
                $dirty13 = $dirty16 | ($composer3.changed(maxLines) ? 2048 : 1024);
            } else {
                $dirty13 = $dirty16;
            }
        }
        int i17 = i & 16384;
        if (i17 != 0) {
            $dirty13 |= 24576;
        } else if (($changed1 & 24576) == 0) {
            $dirty13 |= $composer3.changedInstance(onTextLayout) ? 16384 : 8192;
        }
        if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty13 |= ((i & 32768) == 0 && $composer3.changed(style)) ? 131072 : 65536;
        }
        if (($dirty4 & 306783379) == 306783378 && (74899 & $dirty13) == 74898 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            overflow3 = overflow;
            maxLines3 = maxLines;
            onTextLayout3 = onTextLayout;
            style3 = style;
            $composer2 = $composer3;
            softWrap4 = softWrap2;
            fontStyle4 = fontStyle2;
            color4 = color2;
            fontSize4 = fontSize2;
            modifier4 = modifier2;
            fontWeight4 = fontWeight2;
            fontFamily3 = fontFamily;
            letterSpacing4 = letterSpacing;
            textDecoration3 = textDecoration;
            textAlign3 = textAlign;
            lineHeight2 = lineHeight;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i7 != 0) {
                    color2 = Color.INSTANCE.m4733getUnspecified0d7_KjU();
                }
                if (i8 != 0) {
                    fontSize2 = TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE();
                }
                if (i9 != 0) {
                    fontStyle2 = null;
                }
                if (i10 != 0) {
                    fontWeight2 = null;
                }
                FontFamily fontFamily4 = i11 != 0 ? null : fontFamily;
                long letterSpacing5 = $dirty3 != 0 ? TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE() : letterSpacing;
                TextDecoration textDecoration4 = i3 != 0 ? null : textDecoration;
                TextAlign textAlign4 = i4 != 0 ? null : textAlign;
                long lineHeight3 = $dirty14 != 0 ? TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE() : lineHeight;
                int overflow4 = i5 != 0 ? TextOverflow.INSTANCE.m7415getClipgIe3tQ8() : overflow;
                if (i15 != 0) {
                    softWrap2 = true;
                }
                int maxLines4 = i16 != 0 ? Integer.MAX_VALUE : maxLines;
                TextKt$Text$3 onTextLayout4 = i17 != 0 ? new Function1<TextLayoutResult, Unit>() { // from class: androidx.compose.material.TextKt$Text$3
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(TextLayoutResult textLayoutResult) {
                        invoke2(textLayoutResult);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(TextLayoutResult it) {
                    }
                } : onTextLayout;
                if ((i & 32768) != 0) {
                    FontFamily fontFamily5 = fontFamily4;
                    ProvidableCompositionLocal<TextStyle> providableCompositionLocal = LocalTextStyle;
                    TextDecoration textDecoration5 = textDecoration4;
                    ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                    Object objConsume = $composer3.consume(providableCompositionLocal);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    style2 = (TextStyle) objConsume;
                    $dirty13 &= -458753;
                    maxLines2 = maxLines4;
                    overflow2 = overflow4;
                    softWrap3 = softWrap2;
                    color3 = color2;
                    textAlign2 = textAlign4;
                    fontStyle3 = fontStyle2;
                    fontSize3 = fontSize2;
                    fontWeight3 = fontWeight2;
                    fontFamily2 = fontFamily5;
                    textDecoration2 = textDecoration5;
                    onTextLayout2 = onTextLayout4;
                    modifier3 = modifier2;
                    letterSpacing2 = letterSpacing5;
                    letterSpacing3 = lineHeight3;
                } else {
                    style2 = style;
                    maxLines2 = maxLines4;
                    overflow2 = overflow4;
                    softWrap3 = softWrap2;
                    color3 = color2;
                    textAlign2 = textAlign4;
                    fontStyle3 = fontStyle2;
                    fontSize3 = fontSize2;
                    fontWeight3 = fontWeight2;
                    fontFamily2 = fontFamily4;
                    textDecoration2 = textDecoration4;
                    onTextLayout2 = onTextLayout4;
                    modifier3 = modifier2;
                    letterSpacing2 = letterSpacing5;
                    letterSpacing3 = lineHeight3;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 32768) != 0) {
                    textAlign2 = textAlign;
                    letterSpacing3 = lineHeight;
                    overflow2 = overflow;
                    maxLines2 = maxLines;
                    onTextLayout2 = onTextLayout;
                    style2 = style;
                    $dirty13 = (-458753) & $dirty13;
                    softWrap3 = softWrap2;
                    color3 = color2;
                    modifier3 = modifier2;
                    letterSpacing2 = letterSpacing;
                    fontStyle3 = fontStyle2;
                    fontSize3 = fontSize2;
                    fontWeight3 = fontWeight2;
                    fontFamily2 = fontFamily;
                    textDecoration2 = textDecoration;
                } else {
                    textAlign2 = textAlign;
                    letterSpacing3 = lineHeight;
                    overflow2 = overflow;
                    maxLines2 = maxLines;
                    onTextLayout2 = onTextLayout;
                    style2 = style;
                    softWrap3 = softWrap2;
                    color3 = color2;
                    modifier3 = modifier2;
                    letterSpacing2 = letterSpacing;
                    fontStyle3 = fontStyle2;
                    fontSize3 = fontSize2;
                    fontWeight3 = fontWeight2;
                    fontFamily2 = fontFamily;
                    textDecoration2 = textDecoration;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-366126944, $dirty4, $dirty13, "androidx.compose.material.Text (Text.kt:182)");
            }
            $composer2 = $composer3;
            m2002Text4IGK_g(text, modifier3, color3, fontSize3, fontStyle3, fontWeight3, fontFamily2, letterSpacing2, textDecoration2, textAlign2, letterSpacing3, overflow2, softWrap3, maxLines2, 1, (Function1<? super TextLayoutResult, Unit>) onTextLayout2, style2, $composer2, ($dirty4 & 14) | ($dirty4 & 112) | ($dirty4 & 896) | ($dirty4 & 7168) | (57344 & $dirty4) | (458752 & $dirty4) | (3670016 & $dirty4) | (29360128 & $dirty4) | (234881024 & $dirty4) | (1879048192 & $dirty4), ($dirty13 & 14) | 24576 | ($dirty13 & 112) | ($dirty13 & 896) | ($dirty13 & 7168) | (($dirty13 << 3) & 458752) | (($dirty13 << 3) & 3670016), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            color4 = color3;
            fontSize4 = fontSize3;
            fontStyle4 = fontStyle3;
            fontWeight4 = fontWeight3;
            fontFamily3 = fontFamily2;
            letterSpacing4 = letterSpacing2;
            textDecoration3 = textDecoration2;
            textAlign3 = textAlign2;
            lineHeight2 = letterSpacing3;
            overflow3 = overflow2;
            softWrap4 = softWrap3;
            maxLines3 = maxLines2;
            onTextLayout3 = onTextLayout2;
            style3 = style2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextKt$Text$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i18) {
                    TextKt.m2004TextfLXpl1I(text, modifier4, color4, fontSize4, fontStyle4, fontWeight4, fontFamily3, letterSpacing4, textDecoration3, textAlign3, lineHeight2, overflow3, softWrap4, maxLines3, onTextLayout3, style3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:295:0x05b9  */
    /* JADX INFO: renamed from: Text-IbK3jfQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2003TextIbK3jfQ(final AnnotatedString text, Modifier modifier, long color, long fontSize, FontStyle fontStyle, FontWeight fontWeight, FontFamily fontFamily, long letterSpacing, TextDecoration textDecoration, TextAlign textAlign, long lineHeight, int overflow, boolean softWrap, int maxLines, int minLines, Map<String, InlineTextContent> map, Function1<? super TextLayoutResult, Unit> function1, TextStyle style, Composer $composer, final int $changed, final int $changed1, final int i) {
        AnnotatedString annotatedString;
        Modifier modifier2;
        int i2;
        long color2;
        long fontSize2;
        final FontStyle fontStyle2;
        FontWeight fontWeight2;
        FontFamily fontFamily2;
        int $dirty;
        int $dirty1;
        int i3;
        int i4;
        int i5;
        int $dirty12;
        int $dirty13;
        TextDecoration textDecoration2;
        TextAlign textAlign2;
        int overflow2;
        boolean softWrap2;
        long lineHeight2;
        long letterSpacing2;
        TextStyle style2;
        long fontSize3;
        Map<String, InlineTextContent> map2;
        Function1<? super TextLayoutResult, Unit> function12;
        FontStyle fontStyle3;
        FontFamily fontFamily3;
        int minLines2;
        int minLines3;
        FontWeight fontWeight3;
        int $dirty14;
        TextAlign textAlign3;
        int $dirty2;
        final long overrideColorOrUnspecified;
        Composer $composer2;
        final Modifier modifier3;
        final TextStyle style3;
        final long letterSpacing3;
        final TextDecoration textDecoration3;
        final long lineHeight3;
        final TextAlign textAlign4;
        final int minLines4;
        final Function1<? super TextLayoutResult, Unit> function13;
        final int overflow3;
        final boolean softWrap3;
        final Map<String, InlineTextContent> map3;
        final long fontSize4;
        final int maxLines2;
        final long color3;
        final FontWeight fontWeight4;
        final FontFamily fontFamily4;
        Composer $composer3 = $composer.startRestartGroup(744129681);
        ComposerKt.sourceInformation($composer3, "C(Text)P(15,10,0:c#ui.graphics.Color,2:c#ui.unit.TextUnit,3:c#ui.text.font.FontStyle,4!1,6:c#ui.unit.TextUnit,17,16:c#ui.text.style.TextAlign,7:c#ui.unit.TextUnit,12:c#ui.text.style.TextOverflow,13,8,9)280@13469L7,299@14681L7,300@14735L7,328@15590L30,309@14955L671:Text.kt#jmzs0o");
        int $dirty3 = $changed;
        if ((i & 1) != 0) {
            $dirty3 |= 6;
            annotatedString = text;
        } else if (($changed & 6) == 0) {
            annotatedString = text;
            $dirty3 |= $composer3.changed(annotatedString) ? 4 : 2;
        } else {
            annotatedString = text;
        }
        int i6 = i & 2;
        if (i6 != 0) {
            $dirty3 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty3 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i7 = i & 4;
        if (i7 != 0) {
            $dirty3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i2 = i6;
            color2 = color;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 = i6;
            color2 = color;
            $dirty3 |= $composer3.changed(color2) ? 256 : 128;
        } else {
            i2 = i6;
            color2 = color;
        }
        int i8 = i & 8;
        if (i8 != 0) {
            $dirty3 |= 3072;
            fontSize2 = fontSize;
        } else if (($changed & 3072) == 0) {
            fontSize2 = fontSize;
            $dirty3 |= $composer3.changed(fontSize2) ? 2048 : 1024;
        } else {
            fontSize2 = fontSize;
        }
        int i9 = i & 16;
        if (i9 != 0) {
            $dirty3 |= 24576;
            fontStyle2 = fontStyle;
        } else if (($changed & 24576) == 0) {
            fontStyle2 = fontStyle;
            $dirty3 |= $composer3.changed(fontStyle2) ? 16384 : 8192;
        } else {
            fontStyle2 = fontStyle;
        }
        int i10 = i & 32;
        if (i10 != 0) {
            $dirty3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            fontWeight2 = fontWeight;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            fontWeight2 = fontWeight;
            $dirty3 |= $composer3.changed(fontWeight2) ? 131072 : 65536;
        } else {
            fontWeight2 = fontWeight;
        }
        int i11 = i & 64;
        if (i11 != 0) {
            $dirty3 |= 1572864;
            fontFamily2 = fontFamily;
        } else if (($changed & 1572864) == 0) {
            fontFamily2 = fontFamily;
            $dirty3 |= $composer3.changed(fontFamily2) ? 1048576 : 524288;
        } else {
            fontFamily2 = fontFamily;
        }
        int $dirty4 = i & 128;
        if ($dirty4 != 0) {
            $dirty = $dirty3 | 12582912;
            $dirty1 = $changed1;
        } else if (($changed & 12582912) == 0) {
            $dirty1 = $changed1;
            $dirty = $dirty3 | ($composer3.changed(letterSpacing) ? 8388608 : 4194304);
        } else {
            $dirty = $dirty3;
            $dirty1 = $changed1;
        }
        int i12 = i & 256;
        if (i12 != 0) {
            $dirty |= 100663296;
            i3 = i12;
        } else if (($changed & 100663296) == 0) {
            i3 = i12;
            $dirty |= $composer3.changed(textDecoration) ? 67108864 : 33554432;
        } else {
            i3 = i12;
        }
        int i13 = i & 512;
        if (i13 != 0) {
            $dirty |= 805306368;
            i4 = i13;
        } else if (($changed & 805306368) == 0) {
            i4 = i13;
            $dirty |= $composer3.changed(textAlign) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i4 = i13;
        }
        int $dirty5 = $dirty;
        int i14 = i & 1024;
        if (i14 != 0) {
            i5 = i14;
            $dirty1 |= 6;
        } else {
            int $dirty15 = $changed1 & 6;
            if ($dirty15 == 0) {
                i5 = i14;
                $dirty1 |= $composer3.changed(lineHeight) ? 4 : 2;
            } else {
                i5 = i14;
            }
        }
        int $dirty16 = i & 2048;
        if ($dirty16 != 0) {
            $dirty1 |= 48;
        } else if (($changed1 & 48) == 0) {
            $dirty1 |= $composer3.changed(overflow) ? 32 : 16;
        }
        int $dirty17 = $dirty1;
        int i15 = i & 4096;
        if (i15 != 0) {
            $dirty12 = $dirty17 | RendererCapabilities.DECODER_SUPPORT_MASK;
        } else {
            int $dirty18 = $dirty17;
            int $dirty19 = $changed1 & RendererCapabilities.DECODER_SUPPORT_MASK;
            if ($dirty19 == 0) {
                $dirty18 |= $composer3.changed(softWrap) ? 256 : 128;
            }
            $dirty12 = $dirty18;
        }
        int i16 = i & 8192;
        if (i16 != 0) {
            $dirty13 = $dirty12 | 3072;
        } else {
            int $dirty110 = $dirty12;
            int $dirty111 = $changed1 & 3072;
            if ($dirty111 == 0) {
                $dirty13 = $dirty110 | ($composer3.changed(maxLines) ? 2048 : 1024);
            } else {
                $dirty13 = $dirty110;
            }
        }
        int i17 = i & 16384;
        if (i17 != 0) {
            $dirty13 |= 24576;
        } else if (($changed1 & 24576) == 0) {
            $dirty13 |= $composer3.changed(minLines) ? 16384 : 8192;
        }
        int i18 = i & 32768;
        if (i18 != 0) {
            $dirty13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty13 |= $composer3.changedInstance(map) ? 131072 : 65536;
        }
        int i19 = i & 65536;
        if (i19 != 0) {
            $dirty13 |= 1572864;
        } else if (($changed1 & 1572864) == 0) {
            $dirty13 |= $composer3.changedInstance(function1) ? 1048576 : 524288;
        }
        if (($changed1 & 12582912) == 0) {
            $dirty13 |= ((i & 131072) == 0 && $composer3.changed(style)) ? 8388608 : 4194304;
        }
        if (($dirty5 & 306783379) == 306783378 && (4793491 & $dirty13) == 4793490 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            textAlign4 = textAlign;
            overflow3 = overflow;
            softWrap3 = softWrap;
            maxLines2 = maxLines;
            minLines4 = minLines;
            map3 = map;
            function13 = function1;
            style3 = style;
            $dirty2 = $dirty5;
            $composer2 = $composer3;
            color3 = color2;
            fontSize4 = fontSize2;
            modifier3 = modifier2;
            fontWeight4 = fontWeight2;
            fontFamily4 = fontFamily2;
            letterSpacing3 = letterSpacing;
            textDecoration3 = textDecoration;
            lineHeight3 = lineHeight;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i7 != 0) {
                    color2 = Color.INSTANCE.m4733getUnspecified0d7_KjU();
                }
                if (i8 != 0) {
                    fontSize2 = TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE();
                }
                if (i9 != 0) {
                    fontStyle2 = null;
                }
                if (i10 != 0) {
                    fontWeight2 = null;
                }
                if (i11 != 0) {
                    fontFamily2 = null;
                }
                long letterSpacing4 = $dirty4 != 0 ? TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE() : letterSpacing;
                TextDecoration textDecoration4 = i3 != 0 ? null : textDecoration;
                TextAlign textAlign5 = i4 != 0 ? null : textAlign;
                long lineHeight4 = i5 != 0 ? TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE() : lineHeight;
                int overflow4 = $dirty16 != 0 ? TextOverflow.INSTANCE.m7415getClipgIe3tQ8() : overflow;
                boolean softWrap4 = i15 != 0 ? true : softWrap;
                int maxLines3 = i16 != 0 ? Integer.MAX_VALUE : maxLines;
                int minLines5 = i17 != 0 ? 1 : minLines;
                Map<String, InlineTextContent> mapEmptyMap = i18 != 0 ? MapsKt.emptyMap() : map;
                TextKt$Text$5 textKt$Text$5 = i19 != 0 ? new Function1<TextLayoutResult, Unit>() { // from class: androidx.compose.material.TextKt$Text$5
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(TextLayoutResult textLayoutResult) {
                        invoke2(textLayoutResult);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(TextLayoutResult it) {
                    }
                } : function1;
                if ((i & 131072) != 0) {
                    long letterSpacing5 = letterSpacing4;
                    ProvidableCompositionLocal<TextStyle> providableCompositionLocal = LocalTextStyle;
                    ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                    Object objConsume = $composer3.consume(providableCompositionLocal);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    TextStyle style4 = (TextStyle) objConsume;
                    int i20 = $dirty13 & (-29360129);
                    textDecoration2 = textDecoration4;
                    softWrap2 = softWrap4;
                    lineHeight2 = lineHeight4;
                    letterSpacing2 = letterSpacing5;
                    style2 = style4;
                    textAlign2 = textAlign5;
                    FontWeight fontWeight5 = fontWeight2;
                    $dirty14 = i20;
                    overflow2 = overflow4;
                    fontSize3 = fontSize2;
                    map2 = mapEmptyMap;
                    function12 = textKt$Text$5;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    minLines2 = minLines5;
                    minLines3 = maxLines3;
                    fontWeight3 = fontWeight5;
                } else {
                    long letterSpacing6 = letterSpacing4;
                    int $dirty112 = $dirty13;
                    textDecoration2 = textDecoration4;
                    textAlign2 = textAlign5;
                    overflow2 = overflow4;
                    softWrap2 = softWrap4;
                    lineHeight2 = lineHeight4;
                    letterSpacing2 = letterSpacing6;
                    style2 = style;
                    fontSize3 = fontSize2;
                    map2 = mapEmptyMap;
                    function12 = textKt$Text$5;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    minLines2 = minLines5;
                    minLines3 = maxLines3;
                    fontWeight3 = fontWeight2;
                    $dirty14 = $dirty112;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 131072) != 0) {
                    int i21 = (-29360129) & $dirty13;
                    letterSpacing2 = letterSpacing;
                    textDecoration2 = textDecoration;
                    lineHeight2 = lineHeight;
                    overflow2 = overflow;
                    softWrap2 = softWrap;
                    minLines3 = maxLines;
                    style2 = style;
                    fontStyle3 = fontStyle2;
                    fontSize3 = fontSize2;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    minLines2 = minLines;
                    map2 = map;
                    function12 = function1;
                    $dirty14 = i21;
                    textAlign2 = textAlign;
                } else {
                    letterSpacing2 = letterSpacing;
                    textDecoration2 = textDecoration;
                    textAlign2 = textAlign;
                    lineHeight2 = lineHeight;
                    overflow2 = overflow;
                    minLines3 = maxLines;
                    style2 = style;
                    fontStyle3 = fontStyle2;
                    fontSize3 = fontSize2;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    minLines2 = minLines;
                    map2 = map;
                    function12 = function1;
                    $dirty14 = $dirty13;
                    softWrap2 = softWrap;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                textAlign3 = textAlign2;
                ComposerKt.traceEventStart(744129681, $dirty5, $dirty14, "androidx.compose.material.Text (Text.kt:281)");
            } else {
                textAlign3 = textAlign2;
            }
            ProvidableCompositionLocal<Color> localContentColor = ContentColorKt.getLocalContentColor();
            $dirty2 = $dirty5;
            int overflow5 = overflow2;
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume2 = $composer3.consume(localContentColor);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            long localContentColor2 = ((Color) objConsume2).m4707unboximpl();
            ProvidableCompositionLocal<Float> localContentAlpha = ContentAlphaKt.getLocalContentAlpha();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume3 = $composer3.consume(localContentAlpha);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            float localContentAlpha2 = ((Number) objConsume3).floatValue();
            long $this$isSpecified$iv = color2;
            if ($this$isSpecified$iv != 16) {
                overrideColorOrUnspecified = color2;
            } else {
                long $this$isSpecified$iv2 = style2.m6958getColor0d7_KjU();
                overrideColorOrUnspecified = $this$isSpecified$iv2 != 16 ? style2.m6958getColor0d7_KjU() : Color.m4695copywmQWz5c(localContentColor2, (14 & 1) != 0 ? Color.m4699getAlphaimpl(localContentColor2) : localContentAlpha2, (14 & 2) != 0 ? Color.m4703getRedimpl(localContentColor2) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(localContentColor2) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(localContentColor2) : 0.0f);
            }
            int $dirty113 = $dirty14;
            TextStyle textStyleM6948mergedA7vx0o$default = TextStyle.m6948mergedA7vx0o$default(style2, 0L, fontSize3, fontWeight3, fontStyle3, null, fontFamily3, null, letterSpacing2, null, null, null, 0L, textDecoration2, null, null, textAlign3 != null ? textAlign3.m7357unboximpl() : TextAlign.INSTANCE.m7364getUnspecifiede0LSkKk(), 0, lineHeight2, null, null, 0, 0, null, null, 16609105, null);
            ComposerKt.sourceInformationMarkerStart($composer3, 1041691185, "CC(remember):Text.kt#9igjgp");
            boolean invalid$iv = $composer3.changed(overrideColorOrUnspecified);
            ColorProducer value$iv = $composer3.rememberedValue();
            if (invalid$iv) {
                $composer2 = $composer3;
            } else {
                $composer2 = $composer3;
                if (value$iv == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                boolean softWrap5 = softWrap2;
                int maxLines4 = minLines3;
                int minLines6 = minLines2;
                Map<String, InlineTextContent> map4 = map2;
                Function1<? super TextLayoutResult, Unit> function14 = function12;
                BasicTextKt.m1154BasicTextRWo7tUw(annotatedString, modifier2, textStyleM6948mergedA7vx0o$default, function14, overflow5, softWrap5, maxLines4, minLines6, map4, (ColorProducer) value$iv, $composer2, ($dirty2 & 14) | ($dirty2 & 112) | (($dirty113 >> 9) & 7168) | (($dirty113 << 9) & 57344) | (($dirty113 << 9) & 458752) | (($dirty113 << 9) & 3670016) | (($dirty113 << 9) & 29360128) | (($dirty113 << 9) & 234881024), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier2;
                style3 = style2;
                fontStyle2 = fontStyle3;
                letterSpacing3 = letterSpacing2;
                textDecoration3 = textDecoration2;
                lineHeight3 = lineHeight2;
                textAlign4 = textAlign3;
                minLines4 = minLines6;
                FontFamily fontFamily5 = fontFamily3;
                function13 = function14;
                long j = fontSize3;
                overflow3 = overflow5;
                softWrap3 = softWrap5;
                map3 = map4;
                fontSize4 = j;
                FontWeight fontWeight6 = fontWeight3;
                maxLines2 = maxLines4;
                color3 = color2;
                fontWeight4 = fontWeight6;
                fontFamily4 = fontFamily5;
            }
            value$iv = new ColorProducer() { // from class: androidx.compose.material.TextKt$Text$6$1
                @Override // androidx.compose.ui.graphics.ColorProducer
                /* JADX INFO: renamed from: invoke-0d7_KjU */
                public final long mo1802invoke0d7_KjU() {
                    return overrideColorOrUnspecified;
                }
            };
            $composer3.updateRememberedValue(value$iv);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            boolean softWrap52 = softWrap2;
            int maxLines42 = minLines3;
            int minLines62 = minLines2;
            Map<String, InlineTextContent> map42 = map2;
            Function1<? super TextLayoutResult, Unit> function142 = function12;
            BasicTextKt.m1154BasicTextRWo7tUw(annotatedString, modifier2, textStyleM6948mergedA7vx0o$default, function142, overflow5, softWrap52, maxLines42, minLines62, map42, (ColorProducer) value$iv, $composer2, ($dirty2 & 14) | ($dirty2 & 112) | (($dirty113 >> 9) & 7168) | (($dirty113 << 9) & 57344) | (($dirty113 << 9) & 458752) | (($dirty113 << 9) & 3670016) | (($dirty113 << 9) & 29360128) | (($dirty113 << 9) & 234881024), 0);
            if (ComposerKt.isTraceInProgress()) {
            }
            modifier3 = modifier2;
            style3 = style2;
            fontStyle2 = fontStyle3;
            letterSpacing3 = letterSpacing2;
            textDecoration3 = textDecoration2;
            lineHeight3 = lineHeight2;
            textAlign4 = textAlign3;
            minLines4 = minLines62;
            FontFamily fontFamily52 = fontFamily3;
            function13 = function142;
            long j2 = fontSize3;
            overflow3 = overflow5;
            softWrap3 = softWrap52;
            map3 = map42;
            fontSize4 = j2;
            FontWeight fontWeight62 = fontWeight3;
            maxLines2 = maxLines42;
            color3 = color2;
            fontWeight4 = fontWeight62;
            fontFamily4 = fontFamily52;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextKt$Text$7
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i22) {
                    TextKt.m2003TextIbK3jfQ(text, modifier3, color3, fontSize4, fontStyle2, fontWeight4, fontFamily4, letterSpacing3, textDecoration3, textAlign4, lineHeight3, overflow3, softWrap3, maxLines2, minLines4, map3, function13, style3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility. Use version with minLines instead")
    /* JADX INFO: renamed from: Text--4IGK_g, reason: not valid java name */
    public static final /* synthetic */ void m2001Text4IGK_g(final AnnotatedString text, Modifier modifier, long color, long fontSize, FontStyle fontStyle, FontWeight fontWeight, FontFamily fontFamily, long letterSpacing, TextDecoration textDecoration, TextAlign textAlign, long lineHeight, int overflow, boolean softWrap, int maxLines, Map inlineContent, Function1 onTextLayout, TextStyle style, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        int i2;
        long color2;
        long fontSize2;
        FontStyle fontStyle2;
        FontWeight fontWeight2;
        int $dirty;
        int $dirty1;
        int i3;
        int i4;
        int $dirty12;
        int i5;
        boolean softWrap2;
        int $dirty13;
        TextStyle style2;
        boolean softWrap3;
        long color3;
        Function1 onTextLayout2;
        int overflow2;
        Map inlineContent2;
        FontStyle fontStyle3;
        long fontSize3;
        Modifier modifier3;
        FontWeight fontWeight3;
        FontFamily fontFamily2;
        TextDecoration textDecoration2;
        TextAlign textAlign2;
        long letterSpacing2;
        long letterSpacing3;
        int maxLines2;
        Composer $composer2;
        final Modifier modifier4;
        final long color4;
        final long fontSize4;
        final FontStyle fontStyle4;
        final FontWeight fontWeight4;
        final FontFamily fontFamily3;
        final long letterSpacing4;
        final TextDecoration textDecoration3;
        final TextAlign textAlign3;
        final long lineHeight2;
        final int overflow3;
        final boolean softWrap4;
        final int maxLines3;
        final Map inlineContent3;
        final Function1 onTextLayout3;
        final TextStyle style3;
        Composer $composer3 = $composer.startRestartGroup(-422393234);
        ComposerKt.sourceInformation($composer3, "C(Text)P(14,9,0:c#ui.graphics.Color,2:c#ui.unit.TextUnit,3:c#ui.text.font.FontStyle,4!1,6:c#ui.unit.TextUnit,16,15:c#ui.text.style.TextAlign,7:c#ui.unit.TextUnit,11:c#ui.text.style.TextOverflow,12,8)354@16476L7,356@16492L345:Text.kt#jmzs0o");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(text) ? 4 : 2;
        }
        int i6 = i & 2;
        if (i6 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i7 = i & 4;
        if (i7 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i2 = i6;
            color2 = color;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 = i6;
            color2 = color;
            $dirty2 |= $composer3.changed(color2) ? 256 : 128;
        } else {
            i2 = i6;
            color2 = color;
        }
        int i8 = i & 8;
        if (i8 != 0) {
            $dirty2 |= 3072;
            fontSize2 = fontSize;
        } else if (($changed & 3072) == 0) {
            fontSize2 = fontSize;
            $dirty2 |= $composer3.changed(fontSize2) ? 2048 : 1024;
        } else {
            fontSize2 = fontSize;
        }
        int i9 = i & 16;
        if (i9 != 0) {
            $dirty2 |= 24576;
            fontStyle2 = fontStyle;
        } else if (($changed & 24576) == 0) {
            fontStyle2 = fontStyle;
            $dirty2 |= $composer3.changed(fontStyle2) ? 16384 : 8192;
        } else {
            fontStyle2 = fontStyle;
        }
        int i10 = i & 32;
        if (i10 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            fontWeight2 = fontWeight;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            fontWeight2 = fontWeight;
            $dirty2 |= $composer3.changed(fontWeight2) ? 131072 : 65536;
        } else {
            fontWeight2 = fontWeight;
        }
        int i11 = i & 64;
        if (i11 != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changed(fontFamily) ? 1048576 : 524288;
        }
        int $dirty3 = i & 128;
        if ($dirty3 != 0) {
            $dirty = $dirty2 | 12582912;
            $dirty1 = $changed1;
        } else if (($changed & 12582912) == 0) {
            $dirty1 = $changed1;
            $dirty = $dirty2 | ($composer3.changed(letterSpacing) ? 8388608 : 4194304);
        } else {
            $dirty = $dirty2;
            $dirty1 = $changed1;
        }
        int i12 = i & 256;
        if (i12 != 0) {
            $dirty |= 100663296;
            i3 = i12;
        } else if (($changed & 100663296) == 0) {
            i3 = i12;
            $dirty |= $composer3.changed(textDecoration) ? 67108864 : 33554432;
        } else {
            i3 = i12;
        }
        int i13 = i & 512;
        if (i13 != 0) {
            $dirty |= 805306368;
            i4 = i13;
        } else if (($changed & 805306368) == 0) {
            i4 = i13;
            $dirty |= $composer3.changed(textAlign) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i4 = i13;
        }
        int $dirty4 = $dirty;
        int $dirty14 = i & 1024;
        if ($dirty14 != 0) {
            $dirty12 = $dirty1 | 6;
        } else if (($changed1 & 6) == 0) {
            $dirty12 = $dirty1 | ($composer3.changed(lineHeight) ? 4 : 2);
        } else {
            $dirty12 = $dirty1;
        }
        int i14 = i & 2048;
        if (i14 != 0) {
            $dirty12 |= 48;
            i5 = i14;
        } else if (($changed1 & 48) == 0) {
            i5 = i14;
            $dirty12 |= $composer3.changed(overflow) ? 32 : 16;
        } else {
            i5 = i14;
        }
        int $dirty15 = $dirty12;
        int i15 = i & 4096;
        if (i15 != 0) {
            $dirty15 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            softWrap2 = softWrap;
        } else if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            softWrap2 = softWrap;
            $dirty15 |= $composer3.changed(softWrap2) ? 256 : 128;
        } else {
            softWrap2 = softWrap;
        }
        int i16 = i & 8192;
        if (i16 != 0) {
            $dirty13 = $dirty15 | 3072;
        } else {
            int $dirty16 = $dirty15;
            int $dirty17 = $changed1 & 3072;
            if ($dirty17 == 0) {
                $dirty13 = $dirty16 | ($composer3.changed(maxLines) ? 2048 : 1024);
            } else {
                $dirty13 = $dirty16;
            }
        }
        int i17 = i & 16384;
        if (i17 != 0) {
            $dirty13 |= 24576;
        } else if (($changed1 & 24576) == 0) {
            $dirty13 |= $composer3.changedInstance(inlineContent) ? 16384 : 8192;
        }
        int i18 = i & 32768;
        if (i18 != 0) {
            $dirty13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty13 |= $composer3.changedInstance(onTextLayout) ? 131072 : 65536;
        }
        if (($changed1 & 1572864) == 0) {
            $dirty13 |= ((i & 65536) == 0 && $composer3.changed(style)) ? 1048576 : 524288;
        }
        if (($dirty4 & 306783379) == 306783378 && (599187 & $dirty13) == 599186 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            overflow3 = overflow;
            maxLines3 = maxLines;
            inlineContent3 = inlineContent;
            onTextLayout3 = onTextLayout;
            style3 = style;
            $composer2 = $composer3;
            softWrap4 = softWrap2;
            fontStyle4 = fontStyle2;
            color4 = color2;
            fontSize4 = fontSize2;
            modifier4 = modifier2;
            fontWeight4 = fontWeight2;
            fontFamily3 = fontFamily;
            letterSpacing4 = letterSpacing;
            textDecoration3 = textDecoration;
            textAlign3 = textAlign;
            lineHeight2 = lineHeight;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i7 != 0) {
                    color2 = Color.INSTANCE.m4733getUnspecified0d7_KjU();
                }
                if (i8 != 0) {
                    fontSize2 = TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE();
                }
                if (i9 != 0) {
                    fontStyle2 = null;
                }
                if (i10 != 0) {
                    fontWeight2 = null;
                }
                FontFamily fontFamily4 = i11 != 0 ? null : fontFamily;
                long letterSpacing5 = $dirty3 != 0 ? TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE() : letterSpacing;
                TextDecoration textDecoration4 = i3 != 0 ? null : textDecoration;
                TextAlign textAlign4 = i4 != 0 ? null : textAlign;
                long lineHeight3 = $dirty14 != 0 ? TextUnit.INSTANCE.m7710getUnspecifiedXSAIIZE() : lineHeight;
                int overflow4 = i5 != 0 ? TextOverflow.INSTANCE.m7415getClipgIe3tQ8() : overflow;
                if (i15 != 0) {
                    softWrap2 = true;
                }
                int maxLines4 = i16 != 0 ? Integer.MAX_VALUE : maxLines;
                Map inlineContent4 = i17 != 0 ? MapsKt.emptyMap() : inlineContent;
                TextKt$Text$8 onTextLayout4 = i18 != 0 ? new Function1<TextLayoutResult, Unit>() { // from class: androidx.compose.material.TextKt$Text$8
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(TextLayoutResult textLayoutResult) {
                        invoke2(textLayoutResult);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(TextLayoutResult it) {
                    }
                } : onTextLayout;
                if ((i & 65536) != 0) {
                    FontFamily fontFamily5 = fontFamily4;
                    ProvidableCompositionLocal<TextStyle> providableCompositionLocal = LocalTextStyle;
                    TextDecoration textDecoration5 = textDecoration4;
                    ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                    Object objConsume = $composer3.consume(providableCompositionLocal);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    style2 = (TextStyle) objConsume;
                    $dirty13 &= -3670017;
                    softWrap3 = softWrap2;
                    color3 = color2;
                    onTextLayout2 = onTextLayout4;
                    overflow2 = overflow4;
                    inlineContent2 = inlineContent4;
                    fontStyle3 = fontStyle2;
                    fontSize3 = fontSize2;
                    modifier3 = modifier2;
                    fontWeight3 = fontWeight2;
                    fontFamily2 = fontFamily5;
                    textDecoration2 = textDecoration5;
                    int i19 = maxLines4;
                    textAlign2 = textAlign4;
                    letterSpacing2 = letterSpacing5;
                    letterSpacing3 = lineHeight3;
                    maxLines2 = i19;
                } else {
                    style2 = style;
                    softWrap3 = softWrap2;
                    color3 = color2;
                    onTextLayout2 = onTextLayout4;
                    overflow2 = overflow4;
                    inlineContent2 = inlineContent4;
                    fontStyle3 = fontStyle2;
                    fontSize3 = fontSize2;
                    modifier3 = modifier2;
                    fontWeight3 = fontWeight2;
                    fontFamily2 = fontFamily4;
                    textDecoration2 = textDecoration4;
                    int i20 = maxLines4;
                    textAlign2 = textAlign4;
                    letterSpacing2 = letterSpacing5;
                    letterSpacing3 = lineHeight3;
                    maxLines2 = i20;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 65536) != 0) {
                    textAlign2 = textAlign;
                    letterSpacing3 = lineHeight;
                    overflow2 = overflow;
                    maxLines2 = maxLines;
                    inlineContent2 = inlineContent;
                    onTextLayout2 = onTextLayout;
                    style2 = style;
                    $dirty13 = (-3670017) & $dirty13;
                    softWrap3 = softWrap2;
                    color3 = color2;
                    modifier3 = modifier2;
                    letterSpacing2 = letterSpacing;
                    fontStyle3 = fontStyle2;
                    fontSize3 = fontSize2;
                    fontWeight3 = fontWeight2;
                    fontFamily2 = fontFamily;
                    textDecoration2 = textDecoration;
                } else {
                    textAlign2 = textAlign;
                    letterSpacing3 = lineHeight;
                    overflow2 = overflow;
                    maxLines2 = maxLines;
                    inlineContent2 = inlineContent;
                    onTextLayout2 = onTextLayout;
                    style2 = style;
                    softWrap3 = softWrap2;
                    color3 = color2;
                    modifier3 = modifier2;
                    letterSpacing2 = letterSpacing;
                    fontStyle3 = fontStyle2;
                    fontSize3 = fontSize2;
                    fontWeight3 = fontWeight2;
                    fontFamily2 = fontFamily;
                    textDecoration2 = textDecoration;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-422393234, $dirty4, $dirty13, "androidx.compose.material.Text (Text.kt:355)");
            }
            $composer2 = $composer3;
            m2003TextIbK3jfQ(text, modifier3, color3, fontSize3, fontStyle3, fontWeight3, fontFamily2, letterSpacing2, textDecoration2, textAlign2, letterSpacing3, overflow2, softWrap3, maxLines2, 1, inlineContent2, onTextLayout2, style2, $composer2, ($dirty4 & 14) | ($dirty4 & 112) | ($dirty4 & 896) | ($dirty4 & 7168) | (57344 & $dirty4) | (458752 & $dirty4) | (3670016 & $dirty4) | (29360128 & $dirty4) | (234881024 & $dirty4) | (1879048192 & $dirty4), ($dirty13 & 14) | 24576 | ($dirty13 & 112) | ($dirty13 & 896) | ($dirty13 & 7168) | (($dirty13 << 3) & 458752) | (($dirty13 << 3) & 3670016) | (($dirty13 << 3) & 29360128), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            color4 = color3;
            fontSize4 = fontSize3;
            fontStyle4 = fontStyle3;
            fontWeight4 = fontWeight3;
            fontFamily3 = fontFamily2;
            letterSpacing4 = letterSpacing2;
            textDecoration3 = textDecoration2;
            textAlign3 = textAlign2;
            lineHeight2 = letterSpacing3;
            overflow3 = overflow2;
            softWrap4 = softWrap3;
            maxLines3 = maxLines2;
            inlineContent3 = inlineContent2;
            onTextLayout3 = onTextLayout2;
            style3 = style2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextKt$Text$9
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i21) {
                    TextKt.m2001Text4IGK_g(text, modifier4, color4, fontSize4, fontStyle4, fontWeight4, fontFamily3, letterSpacing4, textDecoration3, textAlign3, lineHeight2, overflow3, softWrap4, maxLines3, inlineContent3, onTextLayout3, style3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    public static final ProvidableCompositionLocal<TextStyle> getLocalTextStyle() {
        return LocalTextStyle;
    }

    public static final void ProvideTextStyle(final TextStyle value, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(1772272796);
        ComposerKt.sourceInformation($composer2, "C(ProvideTextStyle)P(1)397@17792L7,398@17817L80:Text.kt#jmzs0o");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(value) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 32 : 16;
        }
        if (($dirty & 19) != 18 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1772272796, $dirty, -1, "androidx.compose.material.ProvideTextStyle (Text.kt:396)");
            }
            ProvidableCompositionLocal<TextStyle> providableCompositionLocal = LocalTextStyle;
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(providableCompositionLocal);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            TextStyle mergedStyle = ((TextStyle) objConsume).merge(value);
            CompositionLocalKt.CompositionLocalProvider(LocalTextStyle.provides(mergedStyle), function2, $composer2, ProvidedValue.$stable | ($dirty & 112));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TextKt.ProvideTextStyle.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    TextKt.ProvideTextStyle(value, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }
}
