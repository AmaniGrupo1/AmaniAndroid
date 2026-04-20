package androidx.compose.ui.text.platform;

import android.content.Context;
import android.graphics.Typeface;
import androidx.collection.MutableScatterSet;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontListFontFamily;
import androidx.compose.ui.text.font.FontLoadingStrategy;
import androidx.compose.ui.text.font.FontMatcher;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis_androidKt;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidFontListTypeface.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Deprecated(message = "This is not supported after downloadable fonts.")
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000  2\u00020\u0001:\u0001 B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u001c\b\u0002\u0010\u0006\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0013\u0010\u000b\u001a\u00020\f¢\u0006\n\n\u0002\b\u0011\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006!"}, d2 = {"Landroidx/compose/ui/text/platform/AndroidFontListTypeface;", "Landroidx/compose/ui/text/platform/AndroidTypeface;", TtmlNode.ATTR_TTS_FONT_FAMILY, "Landroidx/compose/ui/text/font/FontListFontFamily;", "context", "Landroid/content/Context;", "necessaryStyles", "", "Lkotlin/Pair;", "Landroidx/compose/ui/text/font/FontWeight;", "Landroidx/compose/ui/text/font/FontStyle;", "fontMatcher", "Landroidx/compose/ui/text/font/FontMatcher;", "<init>", "(Landroidx/compose/ui/text/font/FontListFontFamily;Landroid/content/Context;Ljava/util/List;Landroidx/compose/ui/text/font/FontMatcher;)V", "getFontMatcher", "()Landroidx/compose/ui/text/font/FontMatcher;", "fontMatcher$1", "loadedTypefaces", "", "Landroidx/compose/ui/text/font/Font;", "Landroid/graphics/Typeface;", "Landroidx/compose/ui/text/font/FontFamily;", "getFontFamily", "()Landroidx/compose/ui/text/font/FontFamily;", "getNativeTypeface", TtmlNode.ATTR_TTS_FONT_WEIGHT, TtmlNode.ATTR_TTS_FONT_STYLE, "synthesis", "Landroidx/compose/ui/text/font/FontSynthesis;", "getNativeTypeface-PYhJU0U", "(Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;", "Companion", "ui-text"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AndroidFontListTypeface implements AndroidTypeface {
    private final FontFamily fontFamily;

    /* JADX INFO: renamed from: fontMatcher$1, reason: from kotlin metadata */
    private final FontMatcher fontMatcher;
    private final Map<Font, Typeface> loadedTypefaces;
    private static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final FontMatcher fontMatcher = new FontMatcher();

    /* JADX WARN: Removed duplicated region for block: B:22:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AndroidFontListTypeface(FontListFontFamily fontFamily, Context context, List<Pair<FontWeight, FontStyle>> list, FontMatcher fontMatcher2) {
        ArrayList $this$fastDistinctBy$iv;
        this.fontMatcher = fontMatcher2;
        List<Font> fonts = fontFamily.getFonts();
        List target$iv = new ArrayList(fonts.size());
        int size = fonts.size();
        for (int index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
            Font it = fonts.get(index$iv$iv);
            if (FontLoadingStrategy.m7027equalsimpl0(it.getLoadingStrategy(), FontLoadingStrategy.INSTANCE.m7032getBlockingPKNRLFQ())) {
                target$iv.add(it);
            }
        }
        List blockingFonts = target$iv;
        if (list != null) {
            List<Pair<FontWeight, FontStyle>> list2 = list;
            ArrayList target$iv2 = new ArrayList(list2.size());
            int index$iv$iv2 = 0;
            int size2 = list2.size();
            while (index$iv$iv2 < size2) {
                Pair<FontWeight, FontStyle> pair = (Pair) list2.get(index$iv$iv2);
                List<Pair<FontWeight, FontStyle>> list3 = list2;
                FontWeight weight = pair.component1();
                int style = pair.component2().m7043unboximpl();
                target$iv2.add((Font) CollectionsKt.firstOrNull((List) this.fontMatcher.m7036matchFontRetOiIg((List<? extends Font>) blockingFonts, weight, style)));
                index$iv$iv2++;
                list2 = list3;
            }
            List $this$fastDistinctBy$iv2 = ListUtilsKt.fastFilterNotNull(target$iv2);
            if ($this$fastDistinctBy$iv2 != null) {
                MutableScatterSet set$iv = new MutableScatterSet($this$fastDistinctBy$iv2.size());
                ArrayList target$iv3 = new ArrayList($this$fastDistinctBy$iv2.size());
                int size3 = $this$fastDistinctBy$iv2.size();
                for (int index$iv$iv3 = 0; index$iv$iv3 < size3; index$iv$iv3++) {
                    Object item$iv$iv = $this$fastDistinctBy$iv2.get(index$iv$iv3);
                    if (set$iv.add((Font) item$iv$iv)) {
                        target$iv3.add(item$iv$iv);
                    }
                }
                $this$fastDistinctBy$iv = target$iv3;
            } else {
                $this$fastDistinctBy$iv = null;
            }
        }
        List matchedFonts = $this$fastDistinctBy$iv;
        List targetFonts = matchedFonts == null ? blockingFonts : matchedFonts;
        boolean value$iv = !targetFonts.isEmpty();
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalStateException("Could not match font");
        }
        Map typefaces = new LinkedHashMap();
        int size4 = targetFonts.size();
        for (int index$iv = 0; index$iv < size4; index$iv++) {
            Object item$iv = targetFonts.get(index$iv);
            Font it2 = (Font) item$iv;
            try {
                typefaces.put(it2, AndroidTypefaceCache.INSTANCE.getOrCreate(context, it2));
            } catch (Exception e) {
                InlineClassHelperKt.throwIllegalStateException("Cannot create Typeface from " + it2);
            }
        }
        this.loadedTypefaces = typefaces;
        this.fontFamily = fontFamily;
    }

    public /* synthetic */ AndroidFontListTypeface(FontListFontFamily fontListFontFamily, Context context, List list, FontMatcher fontMatcher2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(fontListFontFamily, context, (i & 4) != 0 ? null : list, (i & 8) != 0 ? fontMatcher : fontMatcher2);
    }

    public final FontMatcher getFontMatcher() {
        return this.fontMatcher;
    }

    /* JADX INFO: compiled from: AndroidFontListTypeface.android.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/text/platform/AndroidFontListTypeface$Companion;", "", "<init>", "()V", "fontMatcher", "Landroidx/compose/ui/text/font/FontMatcher;", "getFontMatcher", "()Landroidx/compose/ui/text/font/FontMatcher;", "ui-text"}, k = 1, mv = {2, 0, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FontMatcher getFontMatcher() {
            return AndroidFontListTypeface.fontMatcher;
        }
    }

    @Override // androidx.compose.ui.text.font.Typeface
    public FontFamily getFontFamily() {
        return this.fontFamily;
    }

    @Override // androidx.compose.ui.text.platform.AndroidTypeface
    /* JADX INFO: renamed from: getNativeTypeface-PYhJU0U */
    public Typeface mo7181getNativeTypefacePYhJU0U(FontWeight fontWeight, int fontStyle, int synthesis) {
        Font font = (Font) CollectionsKt.firstOrNull((List) this.fontMatcher.m7036matchFontRetOiIg(new ArrayList(this.loadedTypefaces.keySet()), fontWeight, fontStyle));
        if (font != null) {
            Typeface typeface = this.loadedTypefaces.get(font);
            if (typeface != null) {
                Object value$iv = FontSynthesis_androidKt.m7062synthesizeTypefaceFxwP2eA(synthesis, typeface, font, fontWeight, fontStyle);
                Intrinsics.checkNotNull(value$iv, "null cannot be cast to non-null type android.graphics.Typeface");
                return (Typeface) value$iv;
            }
            InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Could not load typeface");
            throw new KotlinNothingValueException();
        }
        InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Could not load font");
        throw new KotlinNothingValueException();
    }
}
