package coil.compose;

import android.graphics.drawable.Drawable;
import android.os.Trace;
import android.view.View;
import androidx.autofill.HintConstants;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.InspectionModeKt;
import coil.ImageLoader;
import coil.compose.AsyncImagePainter;
import coil.request.ImageRequest;
import coil.size.Dimension;
import coil.size.Dimensions;
import coil.size.Size;
import coil.transition.TransitionTarget;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: AsyncImagePainter.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\u0081\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0003*\u00015\u001a«\u0001\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\u0016\b\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0017H\u0007¢\u0006\u0004\b\u0018\u0010\u0019\u001a¡\u0001\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\u0016\b\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0015H\u0007¢\u0006\u0004\b\u001a\u0010\u001b\u001am\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0014\b\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u000b2\u0016\b\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0017H\u0007¢\u0006\u0004\b\u001f\u0010 \u001ac\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0014\b\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u000b2\u0016\b\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0015H\u0007¢\u0006\u0004\b!\u0010\"\u001aQ\u0010\u0000\u001a\u00020\u00012\u0006\u0010#\u001a\u00020$2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u000b2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0003¢\u0006\u0004\b%\u0010&\u001a\u0010\u0010'\u001a\u00020\r2\u0006\u0010(\u001a\u00020)H\u0002\u001a\u001a\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\b\b\u0002\u0010.\u001a\u00020-H\u0002\u001a\u0015\u0010/\u001a\u0004\u0018\u000100*\u000201H\u0002¢\u0006\u0004\b2\u00103\"\u0010\u00104\u001a\u000205X\u0082\u0004¢\u0006\u0004\n\u0002\u00106¨\u00067"}, d2 = {"rememberAsyncImagePainter", "Lcoil/compose/AsyncImagePainter;", "model", "", "imageLoader", "Lcoil/ImageLoader;", "placeholder", "Landroidx/compose/ui/graphics/painter/Painter;", "error", "fallback", "onLoading", "Lkotlin/Function1;", "Lcoil/compose/AsyncImagePainter$State$Loading;", "", "onSuccess", "Lcoil/compose/AsyncImagePainter$State$Success;", "onError", "Lcoil/compose/AsyncImagePainter$State$Error;", "contentScale", "Landroidx/compose/ui/layout/ContentScale;", "filterQuality", "Landroidx/compose/ui/graphics/FilterQuality;", "modelEqualityDelegate", "Lcoil/compose/EqualityDelegate;", "rememberAsyncImagePainter-10Xjiaw", "(Ljava/lang/Object;Lcoil/ImageLoader;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)Lcoil/compose/AsyncImagePainter;", "rememberAsyncImagePainter-3HmZ8SU", "(Ljava/lang/Object;Lcoil/ImageLoader;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;", "transform", "Lcoil/compose/AsyncImagePainter$State;", "onState", "rememberAsyncImagePainter-0YpotYA", "(Ljava/lang/Object;Lcoil/ImageLoader;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;", "rememberAsyncImagePainter-5jETZwI", "(Ljava/lang/Object;Lcoil/ImageLoader;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;", "state", "Lcoil/compose/AsyncImageState;", "rememberAsyncImagePainter-GSdzBsE", "(Lcoil/compose/AsyncImageState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;I)Lcoil/compose/AsyncImagePainter;", "validateRequest", "request", "Lcoil/request/ImageRequest;", "unsupportedData", "", HintConstants.AUTOFILL_HINT_NAME, "", "description", "toSizeOrNull", "Lcoil/size/Size;", "Landroidx/compose/ui/geometry/Size;", "toSizeOrNull-uvyYCjk", "(J)Lcoil/size/Size;", "fakeTransitionTarget", "coil/compose/AsyncImagePainterKt$fakeTransitionTarget$1", "Lcoil/compose/AsyncImagePainterKt$fakeTransitionTarget$1;", "coil-compose-base_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class AsyncImagePainterKt {
    private static final AsyncImagePainterKt$fakeTransitionTarget$1 fakeTransitionTarget = new TransitionTarget() { // from class: coil.compose.AsyncImagePainterKt$fakeTransitionTarget$1
        @Override // coil.transition.TransitionTarget
        public /* bridge */ /* synthetic */ View getView() {
            return (View) m8223getView();
        }

        /* JADX INFO: renamed from: getView, reason: collision with other method in class */
        public Void m8223getView() {
            throw new UnsupportedOperationException();
        }

        @Override // coil.transition.TransitionTarget
        public Drawable getDrawable() {
            return null;
        }
    };

    /* JADX INFO: renamed from: rememberAsyncImagePainter-10Xjiaw, reason: not valid java name */
    public static final AsyncImagePainter m8218rememberAsyncImagePainter10Xjiaw(Object model, ImageLoader imageLoader, Painter placeholder, Painter error, Painter fallback, Function1<? super AsyncImagePainter.State.Loading, Unit> function1, Function1<? super AsyncImagePainter.State.Success, Unit> function12, Function1<? super AsyncImagePainter.State.Error, Unit> function13, ContentScale contentScale, int filterQuality, EqualityDelegate modelEqualityDelegate, Composer $composer, int $changed, int $changed1, int i) throws Throwable {
        $composer.startReplaceableGroup(-79978785);
        Painter placeholder2 = (i & 4) != 0 ? null : placeholder;
        Painter error2 = (i & 8) != 0 ? null : error;
        Painter fallback2 = (i & 16) != 0 ? error2 : fallback;
        Function1<? super AsyncImagePainter.State.Loading, Unit> function14 = (i & 32) != 0 ? null : function1;
        Function1<? super AsyncImagePainter.State.Success, Unit> function15 = (i & 64) != 0 ? null : function12;
        Function1<? super AsyncImagePainter.State.Error, Unit> function16 = (i & 128) != 0 ? null : function13;
        AsyncImagePainter asyncImagePainterM8221rememberAsyncImagePainterGSdzBsE = m8221rememberAsyncImagePainterGSdzBsE(new AsyncImageState(model, (i & 1024) != 0 ? EqualityDelegateKt.getDefaultModelEqualityDelegate() : modelEqualityDelegate, imageLoader), UtilsKt.transformOf(placeholder2, error2, fallback2), UtilsKt.onStateOf(function14, function15, function16), (i & 256) != 0 ? ContentScale.INSTANCE.getFit() : contentScale, (i & 512) != 0 ? DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I() : filterQuality, $composer, (($changed >> 15) & 7168) | (($changed >> 15) & 57344));
        $composer.endReplaceableGroup();
        return asyncImagePainterM8221rememberAsyncImagePainterGSdzBsE;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    /* JADX INFO: renamed from: rememberAsyncImagePainter-3HmZ8SU, reason: not valid java name */
    public static final /* synthetic */ AsyncImagePainter m8219rememberAsyncImagePainter3HmZ8SU(Object model, ImageLoader imageLoader, Painter placeholder, Painter error, Painter fallback, Function1 onLoading, Function1 onSuccess, Function1 onError, ContentScale contentScale, int filterQuality, Composer $composer, int $changed, int i) throws Throwable {
        $composer.startReplaceableGroup(2140758544);
        Painter placeholder2 = (i & 4) != 0 ? null : placeholder;
        Painter error2 = (i & 8) != 0 ? null : error;
        Painter fallback2 = (i & 16) != 0 ? error2 : fallback;
        Function1 onLoading2 = (i & 32) != 0 ? null : onLoading;
        Function1 onSuccess2 = (i & 64) != 0 ? null : onSuccess;
        Function1 onError2 = (i & 128) != 0 ? null : onError;
        AsyncImagePainter asyncImagePainterM8221rememberAsyncImagePainterGSdzBsE = m8221rememberAsyncImagePainterGSdzBsE(new AsyncImageState(model, EqualityDelegateKt.getDefaultModelEqualityDelegate(), imageLoader), UtilsKt.transformOf(placeholder2, error2, fallback2), UtilsKt.onStateOf(onLoading2, onSuccess2, onError2), (i & 256) != 0 ? ContentScale.INSTANCE.getFit() : contentScale, (i & 512) != 0 ? DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I() : filterQuality, $composer, (($changed >> 15) & 7168) | (($changed >> 15) & 57344));
        $composer.endReplaceableGroup();
        return asyncImagePainterM8221rememberAsyncImagePainterGSdzBsE;
    }

    /* JADX INFO: renamed from: rememberAsyncImagePainter-0YpotYA, reason: not valid java name */
    public static final AsyncImagePainter m8217rememberAsyncImagePainter0YpotYA(Object model, ImageLoader imageLoader, Function1<? super AsyncImagePainter.State, ? extends AsyncImagePainter.State> function1, Function1<? super AsyncImagePainter.State, Unit> function12, ContentScale contentScale, int filterQuality, EqualityDelegate modelEqualityDelegate, Composer $composer, int $changed, int i) throws Throwable {
        ContentScale contentScale2;
        int filterQuality2;
        $composer.startReplaceableGroup(1645646697);
        Function1<? super AsyncImagePainter.State, ? extends AsyncImagePainter.State> defaultTransform = (i & 4) != 0 ? AsyncImagePainter.INSTANCE.getDefaultTransform() : function1;
        Function1<? super AsyncImagePainter.State, Unit> function13 = (i & 8) != 0 ? null : function12;
        if ((i & 16) != 0) {
            ContentScale contentScale3 = ContentScale.INSTANCE.getFit();
            contentScale2 = contentScale3;
        } else {
            contentScale2 = contentScale;
        }
        if ((i & 32) != 0) {
            int filterQuality3 = DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I();
            filterQuality2 = filterQuality3;
        } else {
            filterQuality2 = filterQuality;
        }
        AsyncImagePainter asyncImagePainterM8221rememberAsyncImagePainterGSdzBsE = m8221rememberAsyncImagePainterGSdzBsE(new AsyncImageState(model, (i & 64) != 0 ? EqualityDelegateKt.getDefaultModelEqualityDelegate() : modelEqualityDelegate, imageLoader), defaultTransform, function13, contentScale2, filterQuality2, $composer, (($changed >> 3) & 112) | (($changed >> 3) & 896) | (($changed >> 3) & 7168) | (57344 & ($changed >> 3)));
        $composer.endReplaceableGroup();
        return asyncImagePainterM8221rememberAsyncImagePainterGSdzBsE;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    /* JADX INFO: renamed from: rememberAsyncImagePainter-5jETZwI, reason: not valid java name */
    public static final /* synthetic */ AsyncImagePainter m8220rememberAsyncImagePainter5jETZwI(Object model, ImageLoader imageLoader, Function1 transform, Function1 onState, ContentScale contentScale, int filterQuality, Composer $composer, int $changed, int i) throws Throwable {
        ContentScale contentScale2;
        int filterQuality2;
        $composer.startReplaceableGroup(-2020614074);
        Function1 transform2 = (i & 4) != 0 ? AsyncImagePainter.INSTANCE.getDefaultTransform() : transform;
        Function1 onState2 = (i & 8) != 0 ? null : onState;
        if ((i & 16) != 0) {
            ContentScale contentScale3 = ContentScale.INSTANCE.getFit();
            contentScale2 = contentScale3;
        } else {
            contentScale2 = contentScale;
        }
        if ((i & 32) != 0) {
            int filterQuality3 = DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I();
            filterQuality2 = filterQuality3;
        } else {
            filterQuality2 = filterQuality;
        }
        AsyncImagePainter asyncImagePainterM8221rememberAsyncImagePainterGSdzBsE = m8221rememberAsyncImagePainterGSdzBsE(new AsyncImageState(model, EqualityDelegateKt.getDefaultModelEqualityDelegate(), imageLoader), transform2, onState2, contentScale2, filterQuality2, $composer, (($changed >> 3) & 112) | (($changed >> 3) & 896) | (($changed >> 3) & 7168) | (57344 & ($changed >> 3)));
        $composer.endReplaceableGroup();
        return asyncImagePainterM8221rememberAsyncImagePainterGSdzBsE;
    }

    /* JADX INFO: renamed from: rememberAsyncImagePainter-GSdzBsE, reason: not valid java name */
    private static final AsyncImagePainter m8221rememberAsyncImagePainterGSdzBsE(AsyncImageState state, Function1<? super AsyncImagePainter.State, ? extends AsyncImagePainter.State> function1, Function1<? super AsyncImagePainter.State, Unit> function12, ContentScale contentScale, int filterQuality, Composer $composer, int $changed) throws Throwable {
        Object value$iv;
        $composer.startReplaceableGroup(952940650);
        Trace.beginSection("rememberAsyncImagePainter");
        try {
            ImageRequest request = UtilsKt.requestOf(state.getModel(), $composer, 8);
            validateRequest(request);
            $composer.startReplaceableGroup(1094691773);
            Object it$iv = $composer.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = new AsyncImagePainter(request, state.getImageLoader());
                $composer.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            AsyncImagePainter painter = (AsyncImagePainter) value$iv;
            $composer.endReplaceableGroup();
            try {
                painter.setTransform$coil_compose_base_release(function1);
                try {
                    painter.setOnState$coil_compose_base_release(function12);
                    try {
                        painter.setContentScale$coil_compose_base_release(contentScale);
                        try {
                            painter.m8215setFilterQualityvDHp3xo$coil_compose_base_release(filterQuality);
                            ProvidableCompositionLocal<Boolean> localInspectionMode = InspectionModeKt.getLocalInspectionMode();
                            ComposerKt.sourceInformationMarkerStart($composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                            Object objConsume = $composer.consume(localInspectionMode);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            painter.setPreview$coil_compose_base_release(((Boolean) objConsume).booleanValue());
                            painter.setImageLoader$coil_compose_base_release(state.getImageLoader());
                            painter.setRequest$coil_compose_base_release(request);
                            painter.onRemembered();
                            $composer.endReplaceableGroup();
                            Trace.endSection();
                            return painter;
                        } catch (Throwable th) {
                            th = th;
                            Trace.endSection();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        Trace.endSection();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    Trace.endSection();
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                Trace.endSection();
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private static final void validateRequest(ImageRequest request) {
        Object data = request.getData();
        if (data instanceof ImageRequest.Builder) {
            unsupportedData("ImageRequest.Builder", "Did you forget to call ImageRequest.Builder.build()?");
            throw new KotlinNothingValueException();
        }
        if (data instanceof ImageBitmap) {
            unsupportedData$default("ImageBitmap", null, 2, null);
            throw new KotlinNothingValueException();
        }
        if (data instanceof ImageVector) {
            unsupportedData$default("ImageVector", null, 2, null);
            throw new KotlinNothingValueException();
        }
        if (data instanceof Painter) {
            unsupportedData$default("Painter", null, 2, null);
            throw new KotlinNothingValueException();
        }
        if (!(request.getTarget() == null)) {
            throw new IllegalArgumentException("request.target must be null.".toString());
        }
    }

    static /* synthetic */ Void unsupportedData$default(String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "If you wish to display this " + str + ", use androidx.compose.foundation.Image.";
        }
        return unsupportedData(str, str2);
    }

    private static final Void unsupportedData(String name, String description) {
        throw new IllegalArgumentException("Unsupported type: " + name + ". " + description);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toSizeOrNull-uvyYCjk, reason: not valid java name */
    public static final Size m8222toSizeOrNulluvyYCjk(long $this$toSizeOrNull_u2duvyYCjk) {
        if ($this$toSizeOrNull_u2duvyYCjk == androidx.compose.ui.geometry.Size.INSTANCE.m4529getUnspecifiedNHjbRc()) {
            return Size.ORIGINAL;
        }
        if (UtilsKt.m8258isPositiveuvyYCjk($this$toSizeOrNull_u2duvyYCjk)) {
            float fM4521getWidthimpl = androidx.compose.ui.geometry.Size.m4521getWidthimpl($this$toSizeOrNull_u2duvyYCjk);
            Dimension Dimension = !Float.isInfinite(fM4521getWidthimpl) && !Float.isNaN(fM4521getWidthimpl) ? Dimensions.Dimension(MathKt.roundToInt(androidx.compose.ui.geometry.Size.m4521getWidthimpl($this$toSizeOrNull_u2duvyYCjk))) : Dimension.Undefined.INSTANCE;
            float fM4518getHeightimpl = androidx.compose.ui.geometry.Size.m4518getHeightimpl($this$toSizeOrNull_u2duvyYCjk);
            return new Size(Dimension, (Float.isInfinite(fM4518getHeightimpl) || Float.isNaN(fM4518getHeightimpl)) ? false : true ? Dimensions.Dimension(MathKt.roundToInt(androidx.compose.ui.geometry.Size.m4518getHeightimpl($this$toSizeOrNull_u2duvyYCjk))) : Dimension.Undefined.INSTANCE);
        }
        return null;
    }
}
