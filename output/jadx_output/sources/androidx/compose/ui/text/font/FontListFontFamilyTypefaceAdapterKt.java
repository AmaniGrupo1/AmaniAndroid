package androidx.compose.ui.text.font;

import androidx.compose.ui.text.font.AsyncTypefaceCache;
import androidx.compose.ui.text.platform.SynchronizedObject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: FontListFontFamilyTypefaceAdapter.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001aR\u0010\u0000\u001a\u0016\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00040\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\fH\u0002¨\u0006\r"}, d2 = {"firstImmediatelyAvailable", "Lkotlin/Pair;", "", "Landroidx/compose/ui/text/font/Font;", "", "typefaceRequest", "Landroidx/compose/ui/text/font/TypefaceRequest;", "asyncTypefaceCache", "Landroidx/compose/ui/text/font/AsyncTypefaceCache;", "platformFontLoader", "Landroidx/compose/ui/text/font/PlatformFontLoader;", "createDefaultTypeface", "Lkotlin/Function1;", "ui-text"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class FontListFontFamilyTypefaceAdapterKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Pair<List<Font>, Object> firstImmediatelyAvailable(List<? extends Font> list, TypefaceRequest typefaceRequest, AsyncTypefaceCache asyncTypefaceCache, PlatformFontLoader platformFontLoader, Function1<? super TypefaceRequest, ? extends Object> function1) {
        Object it$iv;
        Object result;
        Object objM8542constructorimpl;
        Object it$iv2;
        int size = list.size();
        List asyncFontsToLoad = null;
        for (int idx = 0; idx < size; idx++) {
            Font font = list.get(idx);
            int loadingStrategy = font.getLoadingStrategy();
            if (FontLoadingStrategy.m7027equalsimpl0(loadingStrategy, FontLoadingStrategy.INSTANCE.m7032getBlockingPKNRLFQ())) {
                SynchronizedObject lock$iv$iv = asyncTypefaceCache.cacheLock;
                synchronized (lock$iv$iv) {
                    AsyncTypefaceCache.Key key$iv = new AsyncTypefaceCache.Key(font, platformFontLoader.getCacheKey());
                    AsyncTypefaceCache.AsyncTypefaceResult priorResult$iv = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.resultCache.get(key$iv);
                    if (priorResult$iv == null) {
                        priorResult$iv = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.permanentCache.get(key$iv);
                    }
                    if (priorResult$iv != null) {
                        result = priorResult$iv.m7002unboximpl();
                    } else {
                        Unit unit = Unit.INSTANCE;
                        try {
                            it$iv = platformFontLoader.loadBlocking(font);
                        } catch (Exception e) {
                            it$iv = function1.invoke(typefaceRequest);
                        }
                        AsyncTypefaceCache.put$default(asyncTypefaceCache, font, platformFontLoader, it$iv, false, 8, null);
                        result = it$iv;
                    }
                }
                if (result == null) {
                    result = function1.invoke(typefaceRequest);
                }
                return TuplesKt.to(asyncFontsToLoad, FontSynthesis_androidKt.m7062synthesizeTypefaceFxwP2eA(typefaceRequest.m7087getFontSynthesisGVVA2EU(), result, font, typefaceRequest.getFontWeight(), typefaceRequest.m7086getFontStyle_LCdwA()));
            }
            if (FontLoadingStrategy.m7027equalsimpl0(loadingStrategy, FontLoadingStrategy.INSTANCE.m7033getOptionalLocalPKNRLFQ())) {
                SynchronizedObject lock$iv$iv2 = asyncTypefaceCache.cacheLock;
                synchronized (lock$iv$iv2) {
                    AsyncTypefaceCache.Key key$iv2 = new AsyncTypefaceCache.Key(font, platformFontLoader.getCacheKey());
                    AsyncTypefaceCache.AsyncTypefaceResult priorResult$iv2 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.resultCache.get(key$iv2);
                    if (priorResult$iv2 == null) {
                        priorResult$iv2 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.permanentCache.get(key$iv2);
                    }
                    if (priorResult$iv2 != null) {
                        it$iv2 = priorResult$iv2.m7002unboximpl();
                    } else {
                        Unit unit2 = Unit.INSTANCE;
                        try {
                            Result.Companion companion = Result.INSTANCE;
                            objM8542constructorimpl = Result.m8542constructorimpl(platformFontLoader.loadBlocking(font));
                        } catch (Throwable th) {
                            Result.Companion companion2 = Result.INSTANCE;
                            objM8542constructorimpl = Result.m8542constructorimpl(ResultKt.createFailure(th));
                        }
                        if (Result.m8548isFailureimpl(objM8542constructorimpl)) {
                            objM8542constructorimpl = null;
                        }
                        it$iv2 = objM8542constructorimpl;
                        AsyncTypefaceCache.put$default(asyncTypefaceCache, font, platformFontLoader, it$iv2, false, 8, null);
                    }
                }
                Object result2 = it$iv2;
                if (result2 != null) {
                    return TuplesKt.to(asyncFontsToLoad, FontSynthesis_androidKt.m7062synthesizeTypefaceFxwP2eA(typefaceRequest.m7087getFontSynthesisGVVA2EU(), result2, font, typefaceRequest.getFontWeight(), typefaceRequest.m7086getFontStyle_LCdwA()));
                }
            } else {
                if (!FontLoadingStrategy.m7027equalsimpl0(loadingStrategy, FontLoadingStrategy.INSTANCE.m7031getAsyncPKNRLFQ())) {
                    throw new IllegalStateException("Unknown font type " + font);
                }
                AsyncTypefaceCache.AsyncTypefaceResult cacheResult = asyncTypefaceCache.m6994get1ASDuI8(font, platformFontLoader);
                if (cacheResult != null) {
                    if (!AsyncTypefaceCache.AsyncTypefaceResult.m7000isPermanentFailureimpl(cacheResult.m7002unboximpl()) && cacheResult.m7002unboximpl() != null) {
                        return TuplesKt.to(asyncFontsToLoad, FontSynthesis_androidKt.m7062synthesizeTypefaceFxwP2eA(typefaceRequest.m7087getFontSynthesisGVVA2EU(), cacheResult.m7002unboximpl(), font, typefaceRequest.getFontWeight(), typefaceRequest.m7086getFontStyle_LCdwA()));
                    }
                } else if (asyncFontsToLoad == null) {
                    asyncFontsToLoad = CollectionsKt.mutableListOf(font);
                } else {
                    asyncFontsToLoad.add(font);
                }
            }
        }
        Object fallbackTypeface = function1.invoke(typefaceRequest);
        return TuplesKt.to(asyncFontsToLoad, fallbackTypeface);
    }
}
