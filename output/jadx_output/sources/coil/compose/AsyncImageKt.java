package coil.compose;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.media3.common.C;
import coil.ImageLoader;
import coil.compose.AsyncImagePainter;
import coil.request.ImageRequest;
import coil.size.SizeResolver;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AsyncImage.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aé\u0001\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f2\u0016\b\u0002\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f2\u0016\b\u0002\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"H\u0007¢\u0006\u0004\b#\u0010$\u001aÕ\u0001\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f2\u0016\b\u0002\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f2\u0016\b\u0002\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001eH\u0007¢\u0006\u0004\b%\u0010&\u001a«\u0001\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u0014\b\u0002\u0010'\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020(0\u000f2\u0016\b\u0002\u0010)\u001a\u0010\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"H\u0007¢\u0006\u0004\b*\u0010+\u001a\u0097\u0001\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u0014\b\u0002\u0010'\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020(0\u000f2\u0016\b\u0002\u0010)\u001a\u0010\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001eH\u0007¢\u0006\u0004\b,\u0010-\u001a\u0085\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010.\u001a\u00020/2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\t2\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020(0\u000f2\u0014\u0010)\u001a\u0010\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0003¢\u0006\u0004\b0\u00101\u001aQ\u00102\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u00103\u001a\u0002042\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020 H\u0003¢\u0006\u0002\u00105¨\u00066"}, d2 = {"AsyncImage", "", "model", "", "contentDescription", "", "imageLoader", "Lcoil/ImageLoader;", "modifier", "Landroidx/compose/ui/Modifier;", "placeholder", "Landroidx/compose/ui/graphics/painter/Painter;", "error", "fallback", "onLoading", "Lkotlin/Function1;", "Lcoil/compose/AsyncImagePainter$State$Loading;", "onSuccess", "Lcoil/compose/AsyncImagePainter$State$Success;", "onError", "Lcoil/compose/AsyncImagePainter$State$Error;", "alignment", "Landroidx/compose/ui/Alignment;", "contentScale", "Landroidx/compose/ui/layout/ContentScale;", "alpha", "", "colorFilter", "Landroidx/compose/ui/graphics/ColorFilter;", "filterQuality", "Landroidx/compose/ui/graphics/FilterQuality;", "clipToBounds", "", "modelEqualityDelegate", "Lcoil/compose/EqualityDelegate;", "AsyncImage-J-FEaFM", "(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V", "AsyncImage-Q4Kwu38", "(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V", "transform", "Lcoil/compose/AsyncImagePainter$State;", "onState", "AsyncImage-QgsmV_s", "(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V", "AsyncImage-MvsnxeU", "(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V", "state", "Lcoil/compose/AsyncImageState;", "AsyncImage-76YX9Dk", "(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLandroidx/compose/runtime/Composer;II)V", "Content", "painter", "Lcoil/compose/AsyncImagePainter;", "(Landroidx/compose/ui/Modifier;Lcoil/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLandroidx/compose/runtime/Composer;I)V", "coil-compose-base_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class AsyncImageKt {
    static final Unit AsyncImage_76YX9Dk$lambda$0(AsyncImageState asyncImageState, String str, Modifier modifier, Function1 function1, Function1 function12, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i, boolean z, int i2, int i3, Composer composer, int i4) throws Throwable {
        m8209AsyncImage76YX9Dk(asyncImageState, str, modifier, function1, function12, alignment, contentScale, f, colorFilter, i, z, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3));
        return Unit.INSTANCE;
    }

    static final Unit Content$lambda$2(Modifier modifier, AsyncImagePainter asyncImagePainter, String str, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, boolean z, int i, Composer composer, int i2) {
        Content(modifier, asyncImagePainter, str, alignment, contentScale, f, colorFilter, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: AsyncImage-J-FEaFM, reason: not valid java name */
    public static final void m8210AsyncImageJFEaFM(Object model, String contentDescription, ImageLoader imageLoader, Modifier modifier, Painter placeholder, Painter error, Painter fallback, Function1<? super AsyncImagePainter.State.Loading, Unit> function1, Function1<? super AsyncImagePainter.State.Success, Unit> function12, Function1<? super AsyncImagePainter.State.Error, Unit> function13, Alignment alignment, ContentScale contentScale, float alpha, ColorFilter colorFilter, int filterQuality, boolean clipToBounds, EqualityDelegate modelEqualityDelegate, Composer $composer, int $changed, int $changed1, int i) throws Throwable {
        $composer.startReplaceableGroup(-1481548872);
        Modifier.Companion modifier2 = (i & 8) != 0 ? Modifier.INSTANCE : modifier;
        Painter placeholder2 = (i & 16) != 0 ? null : placeholder;
        Painter error2 = (i & 32) != 0 ? null : error;
        Painter fallback2 = (i & 64) != 0 ? error2 : fallback;
        Function1<? super AsyncImagePainter.State.Loading, Unit> function14 = (i & 128) != 0 ? null : function1;
        Function1<? super AsyncImagePainter.State.Success, Unit> function15 = (i & 256) != 0 ? null : function12;
        Function1<? super AsyncImagePainter.State.Error, Unit> function16 = (i & 512) != 0 ? null : function13;
        m8209AsyncImage76YX9Dk(new AsyncImageState(model, (i & 65536) != 0 ? EqualityDelegateKt.getDefaultModelEqualityDelegate() : modelEqualityDelegate, imageLoader), contentDescription, modifier2, UtilsKt.transformOf(placeholder2, error2, fallback2), UtilsKt.onStateOf(function14, function15, function16), (i & 1024) != 0 ? Alignment.INSTANCE.getCenter() : alignment, (i & 2048) != 0 ? ContentScale.INSTANCE.getFit() : contentScale, (i & 4096) != 0 ? 1.0f : alpha, (i & 8192) != 0 ? null : colorFilter, (i & 16384) != 0 ? DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I() : filterQuality, (32768 & i) != 0 ? true : clipToBounds, $composer, ($changed & 112) | (($changed >> 3) & 896) | (($changed1 << 15) & 458752) | (($changed1 << 15) & 3670016) | (($changed1 << 15) & 29360128) | (($changed1 << 15) & 234881024) | (($changed1 << 15) & C.ENCODING_PCM_DOUBLE), ($changed1 >> 15) & 14);
        $composer.endReplaceableGroup();
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    /* JADX INFO: renamed from: AsyncImage-Q4Kwu38, reason: not valid java name */
    public static final /* synthetic */ void m8212AsyncImageQ4Kwu38(Object model, String contentDescription, ImageLoader imageLoader, Modifier modifier, Painter placeholder, Painter error, Painter fallback, Function1 onLoading, Function1 onSuccess, Function1 onError, Alignment alignment, ContentScale contentScale, float alpha, ColorFilter colorFilter, int filterQuality, Composer $composer, int $changed, int $changed1, int i) throws Throwable {
        $composer.startReplaceableGroup(-245964807);
        Modifier modifier2 = (i & 8) != 0 ? Modifier.INSTANCE : modifier;
        Painter placeholder2 = (i & 16) != 0 ? null : placeholder;
        Painter error2 = (i & 32) != 0 ? null : error;
        Painter fallback2 = (i & 64) != 0 ? error2 : fallback;
        Function1 onLoading2 = (i & 128) != 0 ? null : onLoading;
        Function1 onSuccess2 = (i & 256) != 0 ? null : onSuccess;
        Function1 onError2 = (i & 512) != 0 ? null : onError;
        Alignment alignment2 = (i & 1024) != 0 ? Alignment.INSTANCE.getCenter() : alignment;
        ContentScale contentScale2 = (i & 2048) != 0 ? ContentScale.INSTANCE.getFit() : contentScale;
        float alpha2 = (i & 4096) != 0 ? 1.0f : alpha;
        m8209AsyncImage76YX9Dk(new AsyncImageState(model, EqualityDelegateKt.getDefaultModelEqualityDelegate(), imageLoader), contentDescription, modifier2, UtilsKt.transformOf(placeholder2, error2, fallback2), UtilsKt.onStateOf(onLoading2, onSuccess2, onError2), alignment2, contentScale2, alpha2, (i & 8192) != 0 ? null : colorFilter, (i & 16384) != 0 ? DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I() : filterQuality, true, $composer, ($changed & 112) | (($changed >> 3) & 896) | (($changed1 << 15) & 458752) | (($changed1 << 15) & 3670016) | (($changed1 << 15) & 29360128) | (($changed1 << 15) & 234881024) | (($changed1 << 15) & C.ENCODING_PCM_DOUBLE), 6);
        $composer.endReplaceableGroup();
    }

    /* JADX INFO: renamed from: AsyncImage-QgsmV_s, reason: not valid java name */
    public static final void m8213AsyncImageQgsmV_s(Object model, String contentDescription, ImageLoader imageLoader, Modifier modifier, Function1<? super AsyncImagePainter.State, ? extends AsyncImagePainter.State> function1, Function1<? super AsyncImagePainter.State, Unit> function12, Alignment alignment, ContentScale contentScale, float alpha, ColorFilter colorFilter, int filterQuality, boolean clipToBounds, EqualityDelegate modelEqualityDelegate, Composer $composer, int $changed, int $changed1, int i) throws Throwable {
        $composer.startReplaceableGroup(2032051394);
        m8209AsyncImage76YX9Dk(new AsyncImageState(model, (i & 4096) != 0 ? EqualityDelegateKt.getDefaultModelEqualityDelegate() : modelEqualityDelegate, imageLoader), contentDescription, (i & 8) != 0 ? Modifier.INSTANCE : modifier, (i & 16) != 0 ? AsyncImagePainter.INSTANCE.getDefaultTransform() : function1, (i & 32) != 0 ? null : function12, (i & 64) != 0 ? Alignment.INSTANCE.getCenter() : alignment, (i & 128) != 0 ? ContentScale.INSTANCE.getFit() : contentScale, (i & 256) != 0 ? 1.0f : alpha, (i & 512) != 0 ? null : colorFilter, (i & 1024) != 0 ? DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I() : filterQuality, (i & 2048) != 0 ? true : clipToBounds, $composer, ($changed & 112) | (($changed >> 3) & 896) | (($changed >> 3) & 7168) | (($changed >> 3) & 57344) | (($changed >> 3) & 458752) | (($changed >> 3) & 3670016) | (($changed >> 3) & 29360128) | (($changed >> 3) & 234881024) | (($changed1 << 27) & C.ENCODING_PCM_DOUBLE), ($changed1 >> 3) & 14);
        $composer.endReplaceableGroup();
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    /* JADX INFO: renamed from: AsyncImage-MvsnxeU, reason: not valid java name */
    public static final /* synthetic */ void m8211AsyncImageMvsnxeU(Object model, String contentDescription, ImageLoader imageLoader, Modifier modifier, Function1 transform, Function1 onState, Alignment alignment, ContentScale contentScale, float alpha, ColorFilter colorFilter, int filterQuality, Composer $composer, int $changed, int $changed1, int i) throws Throwable {
        $composer.startReplaceableGroup(-2030202961);
        m8209AsyncImage76YX9Dk(new AsyncImageState(model, EqualityDelegateKt.getDefaultModelEqualityDelegate(), imageLoader), contentDescription, (i & 8) != 0 ? Modifier.INSTANCE : modifier, (i & 16) != 0 ? AsyncImagePainter.INSTANCE.getDefaultTransform() : transform, (i & 32) != 0 ? null : onState, (i & 64) != 0 ? Alignment.INSTANCE.getCenter() : alignment, (i & 128) != 0 ? ContentScale.INSTANCE.getFit() : contentScale, (i & 256) != 0 ? 1.0f : alpha, (i & 512) != 0 ? null : colorFilter, (i & 1024) != 0 ? DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I() : filterQuality, true, $composer, ($changed & 112) | (($changed >> 3) & 896) | (($changed >> 3) & 7168) | (($changed >> 3) & 57344) | (($changed >> 3) & 458752) | (($changed >> 3) & 3670016) | (($changed >> 3) & 29360128) | (234881024 & ($changed >> 3)) | (($changed1 << 27) & C.ENCODING_PCM_DOUBLE), 6);
        $composer.endReplaceableGroup();
    }

    /* JADX INFO: renamed from: AsyncImage-76YX9Dk, reason: not valid java name */
    private static final void m8209AsyncImage76YX9Dk(AsyncImageState state, final String contentDescription, final Modifier modifier, final Function1<? super AsyncImagePainter.State, ? extends AsyncImagePainter.State> function1, final Function1<? super AsyncImagePainter.State, Unit> function12, final Alignment alignment, final ContentScale contentScale, final float alpha, final ColorFilter colorFilter, final int filterQuality, final boolean clipToBounds, Composer $composer, final int $changed, final int $changed1) throws Throwable {
        AsyncImageState asyncImageState;
        String str;
        Function1<? super AsyncImagePainter.State, ? extends AsyncImagePainter.State> function13;
        Function1<? super AsyncImagePainter.State, Unit> function14;
        boolean z;
        Modifier modifierThen;
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(-421592773);
        int $dirty = $changed;
        int $dirty1 = $changed1;
        if (($changed & 14) == 0) {
            asyncImageState = state;
            $dirty |= $composer3.changed(asyncImageState) ? 4 : 2;
        } else {
            asyncImageState = state;
        }
        if (($changed & 112) == 0) {
            str = contentDescription;
            $dirty |= $composer3.changed(str) ? 32 : 16;
        } else {
            str = contentDescription;
        }
        if (($changed & 896) == 0) {
            $dirty |= $composer3.changed(modifier) ? 256 : 128;
        }
        if (($changed & 7168) == 0) {
            function13 = function1;
            $dirty |= $composer3.changedInstance(function13) ? 2048 : 1024;
        } else {
            function13 = function1;
        }
        if (($changed & 57344) == 0) {
            function14 = function12;
            $dirty |= $composer3.changedInstance(function14) ? 16384 : 8192;
        } else {
            function14 = function12;
        }
        if (($changed & 458752) == 0) {
            $dirty |= $composer3.changed(alignment) ? 131072 : 65536;
        }
        if (($changed & 3670016) == 0) {
            $dirty |= $composer3.changed(contentScale) ? 1048576 : 524288;
        }
        if (($changed & 29360128) == 0) {
            $dirty |= $composer3.changed(alpha) ? 8388608 : 4194304;
        }
        if ((234881024 & $changed) == 0) {
            $dirty |= $composer3.changed(colorFilter) ? 67108864 : 33554432;
        }
        if ((1879048192 & $changed) == 0) {
            $dirty |= $composer3.changed(filterQuality) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        int $dirty2 = $dirty;
        if (($changed1 & 14) == 0) {
            z = clipToBounds;
            $dirty1 |= $composer3.changed(z) ? 4 : 2;
        } else {
            z = clipToBounds;
        }
        int $dirty12 = $dirty1;
        if (($dirty2 & 1533916891) != 306783378 || ($dirty12 & 11) != 2 || !$composer3.getSkipping()) {
            ImageRequest request = UtilsKt.requestOfWithSizeResolver(asyncImageState.getModel(), contentScale, $composer3, (($dirty2 >> 15) & 112) | 8);
            AsyncImagePainter painter = AsyncImagePainterKt.m8217rememberAsyncImagePainter0YpotYA(request, asyncImageState.getImageLoader(), function13, function14, contentScale, filterQuality, asyncImageState.getModelEqualityDelegate(), $composer3, (($dirty2 >> 3) & 7168) | (($dirty2 >> 3) & 896) | 72 | (($dirty2 >> 6) & 57344) | (($dirty2 >> 12) & 458752), 0);
            SizeResolver sizeResolver = request.getSizeResolver();
            if (sizeResolver instanceof ConstraintsSizeResolver) {
                modifierThen = modifier.then((Modifier) sizeResolver);
            } else {
                modifierThen = modifier;
            }
            Content(modifierThen, painter, str, alignment, contentScale, alpha, colorFilter, z, $composer3, (($dirty2 << 3) & 896) | (($dirty2 >> 6) & 7168) | (($dirty2 >> 6) & 57344) | (($dirty2 >> 6) & 458752) | (($dirty2 >> 6) & 3670016) | (($dirty12 << 21) & 29360128));
            $composer2 = $composer3;
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final AsyncImageState asyncImageState2 = asyncImageState;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: coil.compose.AsyncImageKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AsyncImageKt.AsyncImage_76YX9Dk$lambda$0(asyncImageState2, contentDescription, modifier, function1, function12, alignment, contentScale, alpha, colorFilter, filterQuality, clipToBounds, $changed, $changed1, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void Content(final Modifier modifier, final AsyncImagePainter painter, final String contentDescription, final Alignment alignment, final ContentScale contentScale, final float alpha, final ColorFilter colorFilter, final boolean clipToBounds, Composer $composer, final int $changed) {
        Alignment alignment2;
        ContentScale contentScale2;
        float f;
        ColorFilter colorFilter2;
        Composer $composer2 = $composer.startRestartGroup(777774312);
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer2.changed(modifier) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer2.changed(painter) ? 32 : 16;
        }
        if (($changed & 896) == 0) {
            $dirty |= $composer2.changed(contentDescription) ? 256 : 128;
        }
        if (($changed & 7168) == 0) {
            alignment2 = alignment;
            $dirty |= $composer2.changed(alignment2) ? 2048 : 1024;
        } else {
            alignment2 = alignment;
        }
        if ((57344 & $changed) == 0) {
            contentScale2 = contentScale;
            $dirty |= $composer2.changed(contentScale2) ? 16384 : 8192;
        } else {
            contentScale2 = contentScale;
        }
        if ((458752 & $changed) == 0) {
            f = alpha;
            $dirty |= $composer2.changed(f) ? 131072 : 65536;
        } else {
            f = alpha;
        }
        if ((3670016 & $changed) == 0) {
            colorFilter2 = colorFilter;
            $dirty |= $composer2.changed(colorFilter2) ? 1048576 : 524288;
        } else {
            colorFilter2 = colorFilter;
        }
        if ((29360128 & $changed) == 0) {
            $dirty |= $composer2.changed(clipToBounds) ? 8388608 : 4194304;
        }
        if (($dirty & 23967451) != 4793490 || !$composer2.getSkipping()) {
            Modifier $this$Content_u24lambda_u241 = UtilsKt.contentDescription(modifier, contentDescription);
            if (clipToBounds) {
                $this$Content_u24lambda_u241 = ClipKt.clipToBounds($this$Content_u24lambda_u241);
            }
            Modifier modifier$iv = $this$Content_u24lambda_u241.then(new ContentPainterElement(painter, alignment2, contentScale2, f, colorFilter2));
            MeasurePolicy measurePolicy$iv = AnonymousClass2.INSTANCE;
            $composer2.startReplaceableGroup(544976794);
            ComposerKt.sourceInformation($composer2, "CC(Layout)P(1)123@4784L23,126@4935L385:Layout.kt#80mrfh");
            int compositeKeyHash$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
            CompositionLocalMap localMap$iv = $composer2.getCurrentCompositionLocalMap();
            final Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            $composer2.startReplaceableGroup(1405779621);
            ComposerKt.sourceInformation($composer2, "CC(ReusableComposeNode):Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                $composer2.createNode(new Function0<ComposeUiNode>() { // from class: coil.compose.AsyncImageKt$Content$$inlined$Layout$1
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.node.ComposeUiNode, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final ComposeUiNode invoke() {
                        return constructor.invoke();
                    }
                });
            } else {
                $composer2.useNode();
            }
            Composer $this$Layout_u24lambda_u241$iv = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl($this$Layout_u24lambda_u241$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u241$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3975setimpl($this$Layout_u24lambda_u241$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u241$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u241$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv))) {
                $this$Layout_u24lambda_u241$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv));
                $this$Layout_u24lambda_u241$iv.apply(Integer.valueOf(compositeKeyHash$iv), setCompositeKeyHash);
            }
            $composer2.endNode();
            $composer2.endReplaceableGroup();
            $composer2.endReplaceableGroup();
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: coil.compose.AsyncImageKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AsyncImageKt.Content$lambda$2(modifier, painter, contentDescription, alignment, contentScale, alpha, colorFilter, clipToBounds, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: renamed from: coil.compose.AsyncImageKt$Content$2, reason: invalid class name */
    /* JADX INFO: compiled from: AsyncImage.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    static final class AnonymousClass2 implements MeasurePolicy {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        AnonymousClass2() {
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        /* JADX INFO: renamed from: measure-3p2s80s */
        public final MeasureResult mo41measure3p2s80s(MeasureScope $this$Layout, List<? extends Measurable> list, long constraints) {
            return MeasureScope.layout$default($this$Layout, Constraints.m7460getMinWidthimpl(constraints), Constraints.m7459getMinHeightimpl(constraints), null, new Function1() { // from class: coil.compose.AsyncImageKt$Content$2$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Unit.INSTANCE;
                }
            }, 4, null);
        }
    }
}
