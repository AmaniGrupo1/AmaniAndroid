package coil.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import coil.compose.AsyncImagePainter;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: SingletonAsyncImagePainter.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a£\u0001\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0015H\u0007¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0099\u0001\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0013H\u0007¢\u0006\u0004\b\u0018\u0010\u0019\u001ae\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0014\b\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\t2\u0016\b\u0002\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0015H\u0007¢\u0006\u0004\b\u001d\u0010\u001e\u001a[\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0014\b\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\t2\u0016\b\u0002\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0013H\u0007¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"rememberAsyncImagePainter", "Lcoil/compose/AsyncImagePainter;", "model", "", "placeholder", "Landroidx/compose/ui/graphics/painter/Painter;", "error", "fallback", "onLoading", "Lkotlin/Function1;", "Lcoil/compose/AsyncImagePainter$State$Loading;", "", "onSuccess", "Lcoil/compose/AsyncImagePainter$State$Success;", "onError", "Lcoil/compose/AsyncImagePainter$State$Error;", "contentScale", "Landroidx/compose/ui/layout/ContentScale;", "filterQuality", "Landroidx/compose/ui/graphics/FilterQuality;", "modelEqualityDelegate", "Lcoil/compose/EqualityDelegate;", "rememberAsyncImagePainter-HtA5bXE", "(Ljava/lang/Object;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;", "rememberAsyncImagePainter-MqR-F_0", "(Ljava/lang/Object;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;", "transform", "Lcoil/compose/AsyncImagePainter$State;", "onState", "rememberAsyncImagePainter-EHKIwbg", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;", "rememberAsyncImagePainter-19ie5dc", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;", "coil-compose-singleton_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SingletonAsyncImagePainterKt {
    /* JADX INFO: renamed from: rememberAsyncImagePainter-HtA5bXE, reason: not valid java name */
    public static final AsyncImagePainter m8245rememberAsyncImagePainterHtA5bXE(Object model, Painter placeholder, Painter error, Painter fallback, Function1<? super AsyncImagePainter.State.Loading, Unit> function1, Function1<? super AsyncImagePainter.State.Success, Unit> function12, Function1<? super AsyncImagePainter.State.Error, Unit> function13, ContentScale contentScale, int filterQuality, EqualityDelegate modelEqualityDelegate, Composer $composer, int $changed, int i) throws Throwable {
        $composer.startReplaceableGroup(1445305568);
        Painter placeholder2 = (i & 2) != 0 ? null : placeholder;
        Painter error2 = (i & 4) != 0 ? null : error;
        AsyncImagePainter asyncImagePainterM8218rememberAsyncImagePainter10Xjiaw = AsyncImagePainterKt.m8218rememberAsyncImagePainter10Xjiaw(model, ImageLoaderProvidableCompositionLocal.getCurrent(LocalImageLoaderKt.getLocalImageLoader(), $composer, 6), placeholder2, error2, (i & 8) != 0 ? error2 : fallback, (i & 16) != 0 ? null : function1, (i & 32) != 0 ? null : function12, (i & 64) != 0 ? null : function13, (i & 128) != 0 ? ContentScale.INSTANCE.getFit() : contentScale, (i & 256) != 0 ? DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I() : filterQuality, (i & 512) != 0 ? EqualityDelegateKt.getDefaultModelEqualityDelegate() : modelEqualityDelegate, $composer, (1879048192 & ($changed << 3)) | (($changed << 3) & 458752) | 37448 | (($changed << 3) & 3670016) | (($changed << 3) & 29360128) | (($changed << 3) & 234881024), ($changed >> 27) & 14, 0);
        $composer.endReplaceableGroup();
        return asyncImagePainterM8218rememberAsyncImagePainter10Xjiaw;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    /* JADX INFO: renamed from: rememberAsyncImagePainter-MqR-F_0, reason: not valid java name */
    public static final /* synthetic */ AsyncImagePainter m8246rememberAsyncImagePainterMqRF_0(Object model, Painter placeholder, Painter error, Painter fallback, Function1 onLoading, Function1 onSuccess, Function1 onError, ContentScale contentScale, int filterQuality, Composer $composer, int $changed, int i) throws Throwable {
        $composer.startReplaceableGroup(533921043);
        Painter placeholder2 = (i & 2) != 0 ? null : placeholder;
        Painter error2 = (i & 4) != 0 ? null : error;
        AsyncImagePainter asyncImagePainterM8218rememberAsyncImagePainter10Xjiaw = AsyncImagePainterKt.m8218rememberAsyncImagePainter10Xjiaw(model, ImageLoaderProvidableCompositionLocal.getCurrent(LocalImageLoaderKt.getLocalImageLoader(), $composer, 6), placeholder2, error2, (i & 8) != 0 ? error2 : fallback, (i & 16) != 0 ? null : onLoading, (i & 32) != 0 ? null : onSuccess, (i & 64) != 0 ? null : onError, (i & 128) != 0 ? ContentScale.INSTANCE.getFit() : contentScale, (i & 256) != 0 ? DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I() : filterQuality, null, $composer, (($changed << 3) & 458752) | 37448 | (($changed << 3) & 3670016) | (($changed << 3) & 29360128) | (($changed << 3) & 234881024) | (1879048192 & ($changed << 3)), 0, 1024);
        $composer.endReplaceableGroup();
        return asyncImagePainterM8218rememberAsyncImagePainter10Xjiaw;
    }

    /* JADX INFO: renamed from: rememberAsyncImagePainter-EHKIwbg, reason: not valid java name */
    public static final AsyncImagePainter m8244rememberAsyncImagePainterEHKIwbg(Object model, Function1<? super AsyncImagePainter.State, ? extends AsyncImagePainter.State> function1, Function1<? super AsyncImagePainter.State, Unit> function12, ContentScale contentScale, int filterQuality, EqualityDelegate modelEqualityDelegate, Composer $composer, int $changed, int i) throws Throwable {
        ContentScale contentScale2;
        int filterQuality2;
        EqualityDelegate modelEqualityDelegate2;
        $composer.startReplaceableGroup(236159766);
        Function1<? super AsyncImagePainter.State, ? extends AsyncImagePainter.State> defaultTransform = (i & 2) != 0 ? AsyncImagePainter.INSTANCE.getDefaultTransform() : function1;
        Function1<? super AsyncImagePainter.State, Unit> function13 = (i & 4) != 0 ? null : function12;
        if ((i & 8) != 0) {
            ContentScale contentScale3 = ContentScale.INSTANCE.getFit();
            contentScale2 = contentScale3;
        } else {
            contentScale2 = contentScale;
        }
        if ((i & 16) != 0) {
            int filterQuality3 = DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I();
            filterQuality2 = filterQuality3;
        } else {
            filterQuality2 = filterQuality;
        }
        if ((i & 32) != 0) {
            EqualityDelegate modelEqualityDelegate3 = EqualityDelegateKt.getDefaultModelEqualityDelegate();
            modelEqualityDelegate2 = modelEqualityDelegate3;
        } else {
            modelEqualityDelegate2 = modelEqualityDelegate;
        }
        AsyncImagePainter asyncImagePainterM8217rememberAsyncImagePainter0YpotYA = AsyncImagePainterKt.m8217rememberAsyncImagePainter0YpotYA(model, ImageLoaderProvidableCompositionLocal.getCurrent(LocalImageLoaderKt.getLocalImageLoader(), $composer, 6), defaultTransform, function13, contentScale2, filterQuality2, modelEqualityDelegate2, $composer, (($changed << 3) & 896) | 72 | (($changed << 3) & 7168) | (($changed << 3) & 57344) | (($changed << 3) & 458752) | (3670016 & ($changed << 3)), 0);
        $composer.endReplaceableGroup();
        return asyncImagePainterM8217rememberAsyncImagePainter0YpotYA;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    /* JADX INFO: renamed from: rememberAsyncImagePainter-19ie5dc, reason: not valid java name */
    public static final /* synthetic */ AsyncImagePainter m8243rememberAsyncImagePainter19ie5dc(Object model, Function1 transform, Function1 onState, ContentScale contentScale, int filterQuality, Composer $composer, int $changed, int i) throws Throwable {
        ContentScale contentScale2;
        int filterQuality2;
        $composer.startReplaceableGroup(-1494234083);
        Function1 transform2 = (i & 2) != 0 ? AsyncImagePainter.INSTANCE.getDefaultTransform() : transform;
        Function1 onState2 = (i & 4) != 0 ? null : onState;
        if ((i & 8) != 0) {
            ContentScale contentScale3 = ContentScale.INSTANCE.getFit();
            contentScale2 = contentScale3;
        } else {
            contentScale2 = contentScale;
        }
        if ((i & 16) != 0) {
            int filterQuality3 = DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I();
            filterQuality2 = filterQuality3;
        } else {
            filterQuality2 = filterQuality;
        }
        AsyncImagePainter asyncImagePainterM8217rememberAsyncImagePainter0YpotYA = AsyncImagePainterKt.m8217rememberAsyncImagePainter0YpotYA(model, ImageLoaderProvidableCompositionLocal.getCurrent(LocalImageLoaderKt.getLocalImageLoader(), $composer, 6), transform2, onState2, contentScale2, filterQuality2, null, $composer, (($changed << 3) & 896) | 72 | (($changed << 3) & 7168) | (($changed << 3) & 57344) | (458752 & ($changed << 3)), 64);
        $composer.endReplaceableGroup();
        return asyncImagePainterM8217rememberAsyncImagePainter0YpotYA;
    }
}
