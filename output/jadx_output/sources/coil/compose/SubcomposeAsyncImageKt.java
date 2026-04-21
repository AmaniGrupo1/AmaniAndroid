package coil.compose;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import coil.ImageLoader;
import coil.compose.AsyncImagePainter;
import coil.request.ImageRequest;
import coil.size.SizeResolver;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SubcomposeAsyncImage.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u001aÓ\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000b2&\b\u0002\u0010\r\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u00122&\b\u0002\u0010\u0013\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u00122&\b\u0002\u0010\u0015\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u00122\u0016\b\u0002\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0016\b\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0016\b\u0002\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020'H\u0007¢\u0006\u0004\b(\u0010)\u001a©\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2&\b\u0002\u0010\r\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u00122&\b\u0002\u0010\u0013\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u00122&\b\u0002\u0010\u0015\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u00122\u0016\b\u0002\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0016\b\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0016\b\u0002\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\b\b\u0002\u0010\"\u001a\u00020#H\u0007¢\u0006\u0004\b*\u0010+\u001aÉ\u0001\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000b2\u0016\b\u0002\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020'2\u001c\u0010-\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u000b¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u0012H\u0007¢\u0006\u0004\b.\u0010/\u001aµ\u0001\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000b2\u0016\b\u0002\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\b\b\u0002\u0010\"\u001a\u00020#2\u001c\u0010-\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u000b¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u0012H\u0007¢\u0006\u0004\b0\u00101\u001a¥\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u00102\u001a\u0002032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000b2\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u001c\u0010-\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u000b¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u0012H\u0003¢\u0006\u0004\b4\u00105\u001ae\u00106\u001a\u00020\u0001*\u00020\u000f2\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u00107\u001a\u0002082\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\b\b\u0002\u0010$\u001a\u00020%H\u0007¢\u0006\u0002\u00109\u001a[\u00106\u001a\u00020\u0001*\u00020\u000f2\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u00107\u001a\u0002082\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!H\u0007¢\u0006\u0002\u0010:\u001a\u0095\u0001\u0010;\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u000b¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u00122$\u0010\r\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u00122$\u0010\u0013\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u00122$\u0010\u0015\u001a \u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u0012H\u0003¢\u0006\u0002\u0010<¨\u0006="}, d2 = {"SubcomposeAsyncImage", "", "model", "", "contentDescription", "", "imageLoader", "Lcoil/ImageLoader;", "modifier", "Landroidx/compose/ui/Modifier;", "transform", "Lkotlin/Function1;", "Lcoil/compose/AsyncImagePainter$State;", "loading", "Lkotlin/Function2;", "Lcoil/compose/SubcomposeAsyncImageScope;", "Lcoil/compose/AsyncImagePainter$State$Loading;", "Lkotlin/ExtensionFunctionType;", "Landroidx/compose/runtime/Composable;", "success", "Lcoil/compose/AsyncImagePainter$State$Success;", "error", "Lcoil/compose/AsyncImagePainter$State$Error;", "onLoading", "onSuccess", "onError", "alignment", "Landroidx/compose/ui/Alignment;", "contentScale", "Landroidx/compose/ui/layout/ContentScale;", "alpha", "", "colorFilter", "Landroidx/compose/ui/graphics/ColorFilter;", "filterQuality", "Landroidx/compose/ui/graphics/FilterQuality;", "clipToBounds", "", "modelEqualityDelegate", "Lcoil/compose/EqualityDelegate;", "SubcomposeAsyncImage-TCQMD7g", "(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Landroidx/compose/runtime/Composer;III)V", "SubcomposeAsyncImage-Q4Kwu38", "(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V", "onState", "content", "SubcomposeAsyncImage-FSyRiR8", "(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLcoil/compose/EqualityDelegate;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "SubcomposeAsyncImage-sKDTAoQ", "(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "state", "Lcoil/compose/AsyncImageState;", "SubcomposeAsyncImage-gl8XCv8", "(Lcoil/compose/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "SubcomposeAsyncImageContent", "painter", "Landroidx/compose/ui/graphics/painter/Painter;", "(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLandroidx/compose/runtime/Composer;II)V", "(Lcoil/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V", "contentOf", "(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;)Lkotlin/jvm/functions/Function3;", "coil-compose-base_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SubcomposeAsyncImageKt {
    static final Unit SubcomposeAsyncImageContent$lambda$3(SubcomposeAsyncImageScope subcomposeAsyncImageScope, Modifier modifier, Painter painter, String str, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, boolean z, int i, int i2, Composer composer, int i3) {
        SubcomposeAsyncImageContent(subcomposeAsyncImageScope, modifier, painter, str, alignment, contentScale, f, colorFilter, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit SubcomposeAsyncImageContent$lambda$4(SubcomposeAsyncImageScope subcomposeAsyncImageScope, Modifier modifier, Painter painter, String str, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i, int i2, Composer composer, int i3) {
        SubcomposeAsyncImageContent(subcomposeAsyncImageScope, modifier, painter, str, alignment, contentScale, f, colorFilter, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit SubcomposeAsyncImage_gl8XCv8$lambda$1(AsyncImageState asyncImageState, String str, Modifier modifier, Function1 function1, Function1 function12, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i, boolean z, Function3 function3, int i2, int i3, int i4, Composer composer, int i5) throws Throwable {
        m8254SubcomposeAsyncImagegl8XCv8(asyncImageState, str, modifier, function1, function12, alignment, contentScale, f, colorFilter, i, z, function3, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3), i4);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: SubcomposeAsyncImage-TCQMD7g, reason: not valid java name */
    public static final void m8253SubcomposeAsyncImageTCQMD7g(Object model, String contentDescription, ImageLoader imageLoader, Modifier modifier, Function1<? super AsyncImagePainter.State, ? extends AsyncImagePainter.State> function1, Function4<? super SubcomposeAsyncImageScope, ? super AsyncImagePainter.State.Loading, ? super Composer, ? super Integer, Unit> function4, Function4<? super SubcomposeAsyncImageScope, ? super AsyncImagePainter.State.Success, ? super Composer, ? super Integer, Unit> function42, Function4<? super SubcomposeAsyncImageScope, ? super AsyncImagePainter.State.Error, ? super Composer, ? super Integer, Unit> function43, Function1<? super AsyncImagePainter.State.Loading, Unit> function12, Function1<? super AsyncImagePainter.State.Success, Unit> function13, Function1<? super AsyncImagePainter.State.Error, Unit> function14, Alignment alignment, ContentScale contentScale, float alpha, ColorFilter colorFilter, int filterQuality, boolean clipToBounds, EqualityDelegate modelEqualityDelegate, Composer $composer, int $changed, int $changed1, int i) throws Throwable {
        $composer.startReplaceableGroup(-1545157471);
        Modifier modifier2 = (i & 8) != 0 ? Modifier.INSTANCE : modifier;
        Function1<? super AsyncImagePainter.State, ? extends AsyncImagePainter.State> defaultTransform = (i & 16) != 0 ? AsyncImagePainter.INSTANCE.getDefaultTransform() : function1;
        Function4<? super SubcomposeAsyncImageScope, ? super AsyncImagePainter.State.Loading, ? super Composer, ? super Integer, Unit> function44 = (i & 32) != 0 ? null : function4;
        Function4<? super SubcomposeAsyncImageScope, ? super AsyncImagePainter.State.Success, ? super Composer, ? super Integer, Unit> function45 = (i & 64) != 0 ? null : function42;
        Function4<? super SubcomposeAsyncImageScope, ? super AsyncImagePainter.State.Error, ? super Composer, ? super Integer, Unit> function46 = (i & 128) != 0 ? null : function43;
        Function1<? super AsyncImagePainter.State.Loading, Unit> function15 = (i & 256) != 0 ? null : function12;
        Function1<? super AsyncImagePainter.State.Success, Unit> function16 = (i & 512) != 0 ? null : function13;
        Function1<? super AsyncImagePainter.State.Error, Unit> function17 = (i & 1024) != 0 ? null : function14;
        m8254SubcomposeAsyncImagegl8XCv8(new AsyncImageState(model, (i & 131072) != 0 ? EqualityDelegateKt.getDefaultModelEqualityDelegate() : modelEqualityDelegate, imageLoader), contentDescription, modifier2, defaultTransform, UtilsKt.onStateOf(function15, function16, function17), (i & 2048) != 0 ? Alignment.INSTANCE.getCenter() : alignment, (i & 4096) != 0 ? ContentScale.INSTANCE.getFit() : contentScale, (i & 8192) != 0 ? 1.0f : alpha, (i & 16384) != 0 ? null : colorFilter, (32768 & i) != 0 ? DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I() : filterQuality, (65536 & i) != 0 ? true : clipToBounds, contentOf(function44, function45, function46), $composer, ($changed & 112) | (($changed >> 3) & 896) | (($changed >> 3) & 7168) | (($changed1 << 12) & 458752) | (($changed1 << 12) & 3670016) | (($changed1 << 12) & 29360128) | (($changed1 << 12) & 234881024) | (($changed1 << 12) & C.ENCODING_PCM_DOUBLE), ($changed1 >> 18) & 14, 0);
        $composer.endReplaceableGroup();
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    /* JADX INFO: renamed from: SubcomposeAsyncImage-Q4Kwu38, reason: not valid java name */
    public static final /* synthetic */ void m8252SubcomposeAsyncImageQ4Kwu38(Object model, String contentDescription, ImageLoader imageLoader, Modifier modifier, Function4 loading, Function4 success, Function4 error, Function1 onLoading, Function1 onSuccess, Function1 onError, Alignment alignment, ContentScale contentScale, float alpha, ColorFilter colorFilter, int filterQuality, Composer $composer, int $changed, int $changed1, int i) throws Throwable {
        $composer.startReplaceableGroup(-976228417);
        Modifier modifier2 = (i & 8) != 0 ? Modifier.INSTANCE : modifier;
        Function4 loading2 = (i & 16) != 0 ? null : loading;
        Function4 success2 = (i & 32) != 0 ? null : success;
        Function4 error2 = (i & 64) != 0 ? null : error;
        Function1 onLoading2 = (i & 128) != 0 ? null : onLoading;
        Function1 onSuccess2 = (i & 256) != 0 ? null : onSuccess;
        Function1 onError2 = (i & 512) != 0 ? null : onError;
        Alignment alignment2 = (i & 1024) != 0 ? Alignment.INSTANCE.getCenter() : alignment;
        ContentScale contentScale2 = (i & 2048) != 0 ? ContentScale.INSTANCE.getFit() : contentScale;
        float alpha2 = (i & 4096) != 0 ? 1.0f : alpha;
        m8254SubcomposeAsyncImagegl8XCv8(new AsyncImageState(model, EqualityDelegateKt.getDefaultModelEqualityDelegate(), imageLoader), contentDescription, modifier2, AsyncImagePainter.INSTANCE.getDefaultTransform(), UtilsKt.onStateOf(onLoading2, onSuccess2, onError2), alignment2, contentScale2, alpha2, (i & 8192) != 0 ? null : colorFilter, (i & 16384) != 0 ? DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I() : filterQuality, true, contentOf(loading2, success2, error2), $composer, ($changed & 112) | 3072 | (($changed >> 3) & 896) | (($changed1 << 15) & 458752) | (($changed1 << 15) & 3670016) | (($changed1 << 15) & 29360128) | (($changed1 << 15) & 234881024) | (($changed1 << 15) & C.ENCODING_PCM_DOUBLE), 6, 0);
        $composer.endReplaceableGroup();
    }

    /* JADX INFO: renamed from: SubcomposeAsyncImage-FSyRiR8, reason: not valid java name */
    public static final void m8251SubcomposeAsyncImageFSyRiR8(Object model, String contentDescription, ImageLoader imageLoader, Modifier modifier, Function1<? super AsyncImagePainter.State, ? extends AsyncImagePainter.State> function1, Function1<? super AsyncImagePainter.State, Unit> function12, Alignment alignment, ContentScale contentScale, float alpha, ColorFilter colorFilter, int filterQuality, boolean clipToBounds, EqualityDelegate modelEqualityDelegate, Function3<? super SubcomposeAsyncImageScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, int $changed, int $changed1, int i) throws Throwable {
        $composer.startReplaceableGroup(-105413282);
        m8254SubcomposeAsyncImagegl8XCv8(new AsyncImageState(model, (i & 4096) != 0 ? EqualityDelegateKt.getDefaultModelEqualityDelegate() : modelEqualityDelegate, imageLoader), contentDescription, (i & 8) != 0 ? Modifier.INSTANCE : modifier, (i & 16) != 0 ? AsyncImagePainter.INSTANCE.getDefaultTransform() : function1, (i & 32) != 0 ? null : function12, (i & 64) != 0 ? Alignment.INSTANCE.getCenter() : alignment, (i & 128) != 0 ? ContentScale.INSTANCE.getFit() : contentScale, (i & 256) != 0 ? 1.0f : alpha, (i & 512) != 0 ? null : colorFilter, (i & 1024) != 0 ? DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I() : filterQuality, (i & 2048) != 0 ? true : clipToBounds, function3, $composer, (($changed1 << 27) & C.ENCODING_PCM_DOUBLE) | ($changed & 112) | (($changed >> 3) & 896) | (($changed >> 3) & 7168) | (($changed >> 3) & 57344) | (($changed >> 3) & 458752) | (($changed >> 3) & 3670016) | (($changed >> 3) & 29360128) | (($changed >> 3) & 234881024), (($changed1 >> 3) & 14) | (($changed1 >> 6) & 112), 0);
        $composer.endReplaceableGroup();
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    /* JADX INFO: renamed from: SubcomposeAsyncImage-sKDTAoQ, reason: not valid java name */
    public static final /* synthetic */ void m8255SubcomposeAsyncImagesKDTAoQ(Object model, String contentDescription, ImageLoader imageLoader, Modifier modifier, Function1 transform, Function1 onState, Alignment alignment, ContentScale contentScale, float alpha, ColorFilter colorFilter, int filterQuality, Function3 content, Composer $composer, int $changed, int $changed1, int i) throws Throwable {
        $composer.startReplaceableGroup(1166576943);
        m8254SubcomposeAsyncImagegl8XCv8(new AsyncImageState(model, EqualityDelegateKt.getDefaultModelEqualityDelegate(), imageLoader), contentDescription, (i & 8) != 0 ? Modifier.INSTANCE : modifier, (i & 16) != 0 ? AsyncImagePainter.INSTANCE.getDefaultTransform() : transform, (i & 32) != 0 ? null : onState, (i & 64) != 0 ? Alignment.INSTANCE.getCenter() : alignment, (i & 128) != 0 ? ContentScale.INSTANCE.getFit() : contentScale, (i & 256) != 0 ? 1.0f : alpha, (i & 512) != 0 ? null : colorFilter, (i & 1024) != 0 ? DrawScope.INSTANCE.m5274getDefaultFilterQualityfv9h1I() : filterQuality, true, content, $composer, ($changed & 112) | (($changed >> 3) & 896) | (($changed >> 3) & 7168) | (($changed >> 3) & 57344) | (($changed >> 3) & 458752) | (($changed >> 3) & 3670016) | (($changed >> 3) & 29360128) | (234881024 & ($changed >> 3)) | (($changed1 << 27) & C.ENCODING_PCM_DOUBLE), ($changed1 & 112) | 6, 0);
        $composer.endReplaceableGroup();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:166:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0112  */
    /* JADX INFO: renamed from: SubcomposeAsyncImage-gl8XCv8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final void m8254SubcomposeAsyncImagegl8XCv8(AsyncImageState state, final String contentDescription, Modifier modifier, final Function1<? super AsyncImagePainter.State, ? extends AsyncImagePainter.State> function1, final Function1<? super AsyncImagePainter.State, Unit> function12, final Alignment alignment, final ContentScale contentScale, final float alpha, final ColorFilter colorFilter, final int filterQuality, final boolean clipToBounds, final Function3<? super SubcomposeAsyncImageScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int $changed1, final int i) throws Throwable {
        AsyncImageState asyncImageState;
        Modifier modifier2;
        Function1<? super AsyncImagePainter.State, ? extends AsyncImagePainter.State> function13;
        Function1<? super AsyncImagePainter.State, Unit> function14;
        int i2;
        int $dirty;
        Modifier modifier3;
        final SizeResolver sizeResolver;
        Modifier modifier4;
        Composer $composer2;
        final Modifier modifier5;
        MeasurePolicy measurePolicy$iv;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i3;
        Composer $composer3 = $composer.startRestartGroup(-605638725);
        int $dirty2 = $changed;
        int $dirty1 = $changed1;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
            asyncImageState = state;
        } else if (($changed & 14) == 0) {
            asyncImageState = state;
            $dirty2 |= $composer3.changed(asyncImageState) ? 4 : 2;
        } else {
            asyncImageState = state;
        }
        if ((i & 2) != 0) {
            $dirty2 |= 48;
        } else if (($changed & 112) == 0) {
            $dirty2 |= $composer3.changed(contentDescription) ? 32 : 16;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & 896) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        if ((i & 8) != 0) {
            $dirty2 |= 3072;
            function13 = function1;
        } else if (($changed & 7168) == 0) {
            function13 = function1;
            $dirty2 |= $composer3.changedInstance(function13) ? 2048 : 1024;
        } else {
            function13 = function1;
        }
        if ((i & 16) != 0) {
            $dirty2 |= 24576;
            function14 = function12;
        } else if (($changed & 57344) == 0) {
            function14 = function12;
            $dirty2 |= $composer3.changedInstance(function14) ? 16384 : 8192;
        } else {
            function14 = function12;
        }
        if ((i & 32) != 0) {
            i2 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else {
            if (($changed & 458752) == 0) {
                i2 = $composer3.changed(alignment) ? 131072 : 65536;
            }
            if ((i & 64) != 0) {
                i3 = ($changed & 3670016) == 0 ? $composer3.changed(contentScale) ? 1048576 : 524288 : 1572864;
                if ((i & 128) != 0) {
                    $dirty2 |= 12582912;
                } else if ((29360128 & $changed) == 0) {
                    $dirty2 |= $composer3.changed(alpha) ? 8388608 : 4194304;
                }
                if ((i & 256) != 0) {
                    $dirty2 |= 100663296;
                } else if ((234881024 & $changed) == 0) {
                    $dirty2 |= $composer3.changed(colorFilter) ? 67108864 : 33554432;
                }
                $dirty = $dirty2;
                if ((i & 512) != 0) {
                    $dirty |= 805306368;
                } else if ((1879048192 & $changed) == 0) {
                    $dirty |= $composer3.changed(filterQuality) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
                }
                if ((i & 1024) != 0) {
                    $dirty1 |= 6;
                } else if (($changed1 & 14) == 0) {
                    $dirty1 |= $composer3.changed(clipToBounds) ? 4 : 2;
                }
                if ((i & 2048) != 0) {
                    $dirty1 |= 48;
                } else if (($changed1 & 112) == 0) {
                    $dirty1 |= $composer3.changedInstance(function3) ? 32 : 16;
                }
                int $dirty12 = $dirty1;
                if (($dirty & 1533916891) != 306783378 || ($dirty12 & 91) != 18 || !$composer3.getSkipping()) {
                    if (i4 == 0) {
                        modifier3 = Modifier.INSTANCE;
                    } else {
                        modifier3 = modifier2;
                    }
                    ImageRequest request = UtilsKt.requestOfWithSizeResolver(asyncImageState.getModel(), contentScale, $composer3, (($dirty >> 15) & 112) | 8);
                    final AsyncImagePainter painter = AsyncImagePainterKt.m8217rememberAsyncImagePainter0YpotYA(request, asyncImageState.getImageLoader(), function13, function14, contentScale, filterQuality, null, $composer3, (($dirty >> 12) & 458752) | (($dirty >> 3) & 896) | 72 | (($dirty >> 3) & 7168) | (($dirty >> 6) & 57344), 64);
                    sizeResolver = request.getSizeResolver();
                    if (sizeResolver instanceof ConstraintsSizeResolver) {
                        $composer3.startReplaceableGroup(-2080018031);
                        int $changed$iv = (($dirty >> 6) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | (($dirty >> 12) & 112);
                        $composer3.startReplaceableGroup(733328855);
                        ComposerKt.sourceInformation($composer3, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv2 = BoxKt.rememberBoxMeasurePolicy(alignment, true, $composer3, (($changed$iv >> 3) & 14) | (($changed$iv >> 3) & 112));
                        int $changed$iv$iv = ($changed$iv << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
                        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> function3ModifierMaterializerOf = LayoutKt.modifierMaterializerOf(modifier3);
                        int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            $composer3.createNode(constructor);
                        } else {
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                            measurePolicy$iv = measurePolicy$iv2;
                        } else {
                            measurePolicy$iv = measurePolicy$iv2;
                            if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                            }
                            function3ModifierMaterializerOf.invoke(SkippableUpdater.m3940boximpl(SkippableUpdater.m3941constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                            $composer3.startReplaceableGroup(2058660585);
                            int i5 = ($changed$iv$iv$iv >> 9) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                            int i6 = (($changed$iv >> 6) & 112) | 6;
                            BoxScope $this$SubcomposeAsyncImage_gl8XCv8_u24lambda_u240 = BoxScopeInstance.INSTANCE;
                            function3.invoke(new RealSubcomposeAsyncImageScope($this$SubcomposeAsyncImage_gl8XCv8_u24lambda_u240, painter, contentDescription, alignment, contentScale, alpha, colorFilter, clipToBounds), $composer3, Integer.valueOf($dirty12 & 112));
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endReplaceableGroup();
                            $composer3.endNode();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            $composer3.endReplaceableGroup();
                            $composer2 = $composer3;
                            modifier4 = modifier3;
                        }
                        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                        function3ModifierMaterializerOf.invoke(SkippableUpdater.m3940boximpl(SkippableUpdater.m3941constructorimpl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i52 = ($changed$iv$iv$iv >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -1253629263, "C73@3426L9:Box.kt#2w3rfo");
                        int i62 = (($changed$iv >> 6) & 112) | 6;
                        BoxScope $this$SubcomposeAsyncImage_gl8XCv8_u24lambda_u2402 = BoxScopeInstance.INSTANCE;
                        function3.invoke(new RealSubcomposeAsyncImageScope($this$SubcomposeAsyncImage_gl8XCv8_u24lambda_u2402, painter, contentDescription, alignment, contentScale, alpha, colorFilter, clipToBounds), $composer3, Integer.valueOf($dirty12 & 112));
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        $composer2 = $composer3;
                        modifier4 = modifier3;
                    } else {
                        $composer3.startReplaceableGroup(-2079329304);
                        modifier4 = modifier3;
                        BoxWithConstraintsKt.BoxWithConstraints(modifier4, alignment, true, ComposableLambdaKt.composableLambda($composer3, -888190719, true, new Function3<BoxWithConstraintsScope, Composer, Integer, Unit>() { // from class: coil.compose.SubcomposeAsyncImageKt$SubcomposeAsyncImage$2
                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(BoxWithConstraintsScope boxWithConstraintsScope, Composer composer, Integer num) {
                                invoke(boxWithConstraintsScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(BoxWithConstraintsScope $this$BoxWithConstraints, Composer $composer4, int $changed2) {
                                int $dirty3 = $changed2;
                                if (($changed2 & 14) == 0) {
                                    $dirty3 |= $composer4.changed($this$BoxWithConstraints) ? 4 : 2;
                                }
                                if (($dirty3 & 91) != 18 || !$composer4.getSkipping()) {
                                    ((ConstraintsSizeResolver) sizeResolver).m8225setConstraintsBRTryo0($this$BoxWithConstraints.mo712getConstraintsmsEJaDk());
                                    function3.invoke(new RealSubcomposeAsyncImageScope($this$BoxWithConstraints, painter, contentDescription, alignment, contentScale, alpha, colorFilter, clipToBounds), $composer4, 0);
                                } else {
                                    $composer4.skipToGroupEnd();
                                }
                            }
                        }), $composer3, (($dirty >> 6) & 14) | 3456 | (($dirty >> 12) & 112), 0);
                        $composer2 = $composer3;
                        $composer2.endReplaceableGroup();
                    }
                    modifier5 = modifier4;
                } else {
                    $composer3.skipToGroupEnd();
                    $composer2 = $composer3;
                    modifier5 = modifier2;
                }
                scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final AsyncImageState asyncImageState2 = asyncImageState;
                    scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: coil.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return SubcomposeAsyncImageKt.SubcomposeAsyncImage_gl8XCv8$lambda$1(asyncImageState2, contentDescription, modifier5, function1, function12, alignment, contentScale, alpha, colorFilter, filterQuality, clipToBounds, function3, $changed, $changed1, i, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            $dirty2 |= i3;
            if ((i & 128) != 0) {
            }
            if ((i & 256) != 0) {
            }
            $dirty = $dirty2;
            if ((i & 512) != 0) {
            }
            if ((i & 1024) != 0) {
            }
            if ((i & 2048) != 0) {
            }
            int $dirty122 = $dirty1;
            if (($dirty & 1533916891) != 306783378) {
                if (i4 == 0) {
                }
                ImageRequest request2 = UtilsKt.requestOfWithSizeResolver(asyncImageState.getModel(), contentScale, $composer3, (($dirty >> 15) & 112) | 8);
                final AsyncImagePainter painter2 = AsyncImagePainterKt.m8217rememberAsyncImagePainter0YpotYA(request2, asyncImageState.getImageLoader(), function13, function14, contentScale, filterQuality, null, $composer3, (($dirty >> 12) & 458752) | (($dirty >> 3) & 896) | 72 | (($dirty >> 3) & 7168) | (($dirty >> 6) & 57344), 64);
                sizeResolver = request2.getSizeResolver();
                if (sizeResolver instanceof ConstraintsSizeResolver) {
                }
                modifier5 = modifier4;
            }
            scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
            }
        }
        $dirty2 |= i2;
        if ((i & 64) != 0) {
        }
        $dirty2 |= i3;
        if ((i & 128) != 0) {
        }
        if ((i & 256) != 0) {
        }
        $dirty = $dirty2;
        if ((i & 512) != 0) {
        }
        if ((i & 1024) != 0) {
        }
        if ((i & 2048) != 0) {
        }
        int $dirty1222 = $dirty1;
        if (($dirty & 1533916891) != 306783378) {
        }
        scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
        }
    }

    public static final void SubcomposeAsyncImageContent(final SubcomposeAsyncImageScope $this$SubcomposeAsyncImageContent, Modifier modifier, Painter painter, String contentDescription, Alignment alignment, ContentScale contentScale, float alpha, ColorFilter colorFilter, boolean clipToBounds, Composer $composer, final int $changed, final int i) {
        SubcomposeAsyncImageScope subcomposeAsyncImageScope;
        Modifier modifier2;
        String contentDescription2;
        Alignment alignment2;
        ContentScale contentScale2;
        float alpha2;
        ColorFilter colorFilter2;
        boolean clipToBounds2;
        AsyncImagePainter painter2;
        Modifier modifier3;
        final Function0<ComposeUiNode> function0;
        final Painter painter3;
        final String contentDescription3;
        final ContentScale contentScale3;
        final ColorFilter colorFilter3;
        final Modifier modifier4;
        final Alignment alignment3;
        final float alpha3;
        final boolean clipToBounds3;
        Composer $composer2 = $composer.startRestartGroup(880638523);
        int $dirty = $changed;
        if ((Integer.MIN_VALUE & i) != 0) {
            $dirty |= 6;
            subcomposeAsyncImageScope = $this$SubcomposeAsyncImageContent;
        } else if (($changed & 14) == 0) {
            subcomposeAsyncImageScope = $this$SubcomposeAsyncImageContent;
            $dirty |= $composer2.changed(subcomposeAsyncImageScope) ? 4 : 2;
        } else {
            subcomposeAsyncImageScope = $this$SubcomposeAsyncImageContent;
        }
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 112) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 128;
        }
        if (($changed & 7168) == 0) {
            if ((i & 4) == 0) {
                contentDescription2 = contentDescription;
                int i4 = $composer2.changed(contentDescription2) ? 2048 : 1024;
                $dirty |= i4;
            } else {
                contentDescription2 = contentDescription;
            }
            $dirty |= i4;
        } else {
            contentDescription2 = contentDescription;
        }
        if ((57344 & $changed) == 0) {
            if ((i & 8) == 0) {
                alignment2 = alignment;
                int i5 = $composer2.changed(alignment2) ? 16384 : 8192;
                $dirty |= i5;
            } else {
                alignment2 = alignment;
            }
            $dirty |= i5;
        } else {
            alignment2 = alignment;
        }
        if ((458752 & $changed) == 0) {
            if ((i & 16) == 0) {
                contentScale2 = contentScale;
                int i6 = $composer2.changed(contentScale2) ? 131072 : 65536;
                $dirty |= i6;
            } else {
                contentScale2 = contentScale;
            }
            $dirty |= i6;
        } else {
            contentScale2 = contentScale;
        }
        if ((3670016 & $changed) == 0) {
            if ((i & 32) == 0) {
                alpha2 = alpha;
                int i7 = $composer2.changed(alpha2) ? 1048576 : 524288;
                $dirty |= i7;
            } else {
                alpha2 = alpha;
            }
            $dirty |= i7;
        } else {
            alpha2 = alpha;
        }
        if ((29360128 & $changed) == 0) {
            if ((i & 64) == 0) {
                colorFilter2 = colorFilter;
                int i8 = $composer2.changed(colorFilter2) ? 8388608 : 4194304;
                $dirty |= i8;
            } else {
                colorFilter2 = colorFilter;
            }
            $dirty |= i8;
        } else {
            colorFilter2 = colorFilter;
        }
        if ((234881024 & $changed) == 0) {
            if ((i & 128) == 0) {
                clipToBounds2 = clipToBounds;
                int i9 = $composer2.changed(clipToBounds2) ? 67108864 : 33554432;
                $dirty |= i9;
            } else {
                clipToBounds2 = clipToBounds;
            }
            $dirty |= i9;
        } else {
            clipToBounds2 = clipToBounds;
        }
        if (i3 == 2 && (191739611 & $dirty) == 38347922 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            painter3 = painter;
            modifier4 = modifier2;
            contentDescription3 = contentDescription2;
            contentScale3 = contentScale2;
            colorFilter3 = colorFilter2;
            alignment3 = alignment2;
            alpha3 = alpha2;
            clipToBounds3 = clipToBounds2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i3 != 0) {
                    painter2 = subcomposeAsyncImageScope.getPainter();
                    $dirty &= -897;
                } else {
                    painter2 = painter;
                }
                if ((i & 4) != 0) {
                    $dirty &= -7169;
                    contentDescription2 = subcomposeAsyncImageScope.getContentDescription();
                }
                if ((i & 8) != 0) {
                    $dirty &= -57345;
                    alignment2 = subcomposeAsyncImageScope.getAlignment();
                }
                if ((i & 16) != 0) {
                    $dirty &= -458753;
                    contentScale2 = subcomposeAsyncImageScope.getContentScale();
                }
                if ((i & 32) != 0) {
                    $dirty &= -3670017;
                    alpha2 = subcomposeAsyncImageScope.getAlpha();
                }
                if ((i & 64) != 0) {
                    $dirty &= -29360129;
                    colorFilter2 = subcomposeAsyncImageScope.getColorFilter();
                }
                if ((i & 128) != 0) {
                    $dirty &= -234881025;
                    clipToBounds2 = subcomposeAsyncImageScope.getClipToBounds();
                }
            } else {
                $composer2.skipToGroupEnd();
                if (i3 != 0) {
                    $dirty &= -897;
                }
                if ((i & 4) != 0) {
                    $dirty &= -7169;
                }
                if ((i & 8) != 0) {
                    $dirty &= -57345;
                }
                if ((i & 16) != 0) {
                    $dirty &= -458753;
                }
                if ((i & 32) != 0) {
                    $dirty &= -3670017;
                }
                if ((i & 64) != 0) {
                    $dirty &= -29360129;
                }
                if ((i & 128) != 0) {
                    $dirty &= -234881025;
                }
                painter2 = painter;
            }
            $composer2.endDefaults();
            Modifier $this$SubcomposeAsyncImageContent_u24lambda_u242 = UtilsKt.contentDescription(modifier2, contentDescription2);
            if (clipToBounds2) {
                $this$SubcomposeAsyncImageContent_u24lambda_u242 = ClipKt.clipToBounds($this$SubcomposeAsyncImageContent_u24lambda_u242);
            }
            Painter painter4 = painter2;
            Modifier modifier$iv = $this$SubcomposeAsyncImageContent_u24lambda_u242.then(new ContentPainterElement(painter4, alignment2, contentScale2, alpha2, colorFilter2));
            MeasurePolicy measurePolicy$iv = AnonymousClass2.INSTANCE;
            $composer2.startReplaceableGroup(544976794);
            ComposerKt.sourceInformation($composer2, "CC(Layout)P(1)123@4784L23,126@4935L385:Layout.kt#80mrfh");
            int compositeKeyHash$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
            CompositionLocalMap localMap$iv = $composer2.getCurrentCompositionLocalMap();
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            $composer2.startReplaceableGroup(1405779621);
            ComposerKt.sourceInformation($composer2, "CC(ReusableComposeNode):Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                modifier3 = modifier2;
                function0 = constructor;
                $composer2.createNode(new Function0<ComposeUiNode>() { // from class: coil.compose.SubcomposeAsyncImageKt$SubcomposeAsyncImageContent$$inlined$Layout$1
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.node.ComposeUiNode, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final ComposeUiNode invoke() {
                        return function0.invoke();
                    }
                });
            } else {
                modifier3 = modifier2;
                function0 = constructor;
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
            painter3 = painter4;
            contentDescription3 = contentDescription2;
            contentScale3 = contentScale2;
            colorFilter3 = colorFilter2;
            modifier4 = modifier3;
            alignment3 = alignment2;
            alpha3 = alpha2;
            clipToBounds3 = clipToBounds2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: coil.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SubcomposeAsyncImageKt.SubcomposeAsyncImageContent$lambda$3($this$SubcomposeAsyncImageContent, modifier4, painter3, contentDescription3, alignment3, contentScale3, alpha3, colorFilter3, clipToBounds3, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: renamed from: coil.compose.SubcomposeAsyncImageKt$SubcomposeAsyncImageContent$2, reason: invalid class name */
    /* JADX INFO: compiled from: SubcomposeAsyncImage.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    static final class AnonymousClass2 implements MeasurePolicy {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        AnonymousClass2() {
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        /* JADX INFO: renamed from: measure-3p2s80s */
        public final MeasureResult mo41measure3p2s80s(MeasureScope $this$Layout, List<? extends Measurable> list, long constraints) {
            return MeasureScope.layout$default($this$Layout, Constraints.m7460getMinWidthimpl(constraints), Constraints.m7459getMinHeightimpl(constraints), null, new Function1() { // from class: coil.compose.SubcomposeAsyncImageKt$SubcomposeAsyncImageContent$2$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Unit.INSTANCE;
                }
            }, 4, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:141:? A[RETURN, SYNTHETIC] */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Kept for binary compatibility.")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final /* synthetic */ void SubcomposeAsyncImageContent(final SubcomposeAsyncImageScope $this$SubcomposeAsyncImageContent, Modifier modifier, Painter painter, String contentDescription, Alignment alignment, ContentScale contentScale, float alpha, ColorFilter colorFilter, Composer $composer, final int $changed, final int i) {
        SubcomposeAsyncImageScope subcomposeAsyncImageScope;
        Modifier modifier2;
        String contentDescription2;
        Alignment alignment2;
        ContentScale contentScale2;
        float alpha2;
        int i2;
        ColorFilter colorFilter2;
        int i3;
        AsyncImagePainter painter2;
        Modifier modifier3;
        ColorFilter colorFilter3;
        int i4;
        int i5;
        ContentScale contentScale3;
        float alpha3;
        Painter painter3;
        Alignment alignment3;
        int i6;
        String contentDescription3;
        Composer $composer2;
        final Modifier modifier4;
        final Painter painter4;
        final String contentDescription4;
        final Alignment alignment4;
        final ContentScale contentScale4;
        final float alpha4;
        final ColorFilter colorFilter4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Composer $composer3 = $composer.startRestartGroup(-263982313);
        int $dirty = $changed;
        if ((i & Integer.MIN_VALUE) != 0) {
            $dirty |= 6;
            subcomposeAsyncImageScope = $this$SubcomposeAsyncImageContent;
        } else if (($changed & 14) == 0) {
            subcomposeAsyncImageScope = $this$SubcomposeAsyncImageContent;
            $dirty |= $composer3.changed(subcomposeAsyncImageScope) ? 4 : 2;
        } else {
            subcomposeAsyncImageScope = $this$SubcomposeAsyncImageContent;
        }
        int i7 = i & 1;
        if (i7 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 112) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i8 = i & 2;
        if (i8 != 0) {
            $dirty |= 128;
        }
        if (($changed & 7168) == 0) {
            if ((i & 4) == 0) {
                contentDescription2 = contentDescription;
                int i9 = $composer3.changed(contentDescription2) ? 2048 : 1024;
                $dirty |= i9;
            } else {
                contentDescription2 = contentDescription;
            }
            $dirty |= i9;
        } else {
            contentDescription2 = contentDescription;
        }
        if (($changed & 57344) == 0) {
            if ((i & 8) == 0) {
                alignment2 = alignment;
                int i10 = $composer3.changed(alignment2) ? 16384 : 8192;
                $dirty |= i10;
            } else {
                alignment2 = alignment;
            }
            $dirty |= i10;
        } else {
            alignment2 = alignment;
        }
        if (($changed & 458752) == 0) {
            if ((i & 16) == 0) {
                contentScale2 = contentScale;
                int i11 = $composer3.changed(contentScale2) ? 131072 : 65536;
                $dirty |= i11;
            } else {
                contentScale2 = contentScale;
            }
            $dirty |= i11;
        } else {
            contentScale2 = contentScale;
        }
        if (($changed & 3670016) == 0) {
            if ((i & 32) == 0) {
                alpha2 = alpha;
                int i12 = $composer3.changed(alpha2) ? 1048576 : 524288;
                $dirty |= i12;
            } else {
                alpha2 = alpha;
            }
            $dirty |= i12;
        } else {
            alpha2 = alpha;
        }
        if (($changed & 29360128) == 0) {
            if ((i & 64) == 0) {
                i2 = 57344;
                colorFilter2 = colorFilter;
                int i13 = $composer3.changed(colorFilter2) ? 8388608 : 4194304;
                $dirty |= i13;
            } else {
                i2 = 57344;
                colorFilter2 = colorFilter;
            }
            $dirty |= i13;
        } else {
            i2 = 57344;
            colorFilter2 = colorFilter;
        }
        if (i8 == 2) {
            i3 = 458752;
            if ((23967451 & $dirty) == 4793490 && $composer3.getSkipping()) {
                $composer3.skipToGroupEnd();
                painter4 = painter;
                $composer2 = $composer3;
                modifier4 = modifier2;
                contentDescription4 = contentDescription2;
                alignment4 = alignment2;
                contentScale4 = contentScale2;
                colorFilter4 = colorFilter2;
                alpha4 = alpha2;
            }
            scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup == null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: coil.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return SubcomposeAsyncImageKt.SubcomposeAsyncImageContent$lambda$4($this$SubcomposeAsyncImageContent, modifier4, painter4, contentDescription4, alignment4, contentScale4, alpha4, colorFilter4, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                    }
                });
                return;
            }
            return;
        }
        i3 = 458752;
        $composer3.startDefaults();
        if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
            Modifier.Companion modifier5 = i7 != 0 ? Modifier.INSTANCE : modifier2;
            if (i8 != 0) {
                painter2 = subcomposeAsyncImageScope.getPainter();
                $dirty &= -897;
            } else {
                painter2 = painter;
            }
            if ((i & 4) != 0) {
                $dirty &= -7169;
                contentDescription2 = subcomposeAsyncImageScope.getContentDescription();
            }
            if ((i & 8) != 0) {
                $dirty &= -57345;
                alignment2 = subcomposeAsyncImageScope.getAlignment();
            }
            if ((i & 16) != 0) {
                $dirty &= -458753;
                contentScale2 = subcomposeAsyncImageScope.getContentScale();
            }
            if ((i & 32) != 0) {
                $dirty &= -3670017;
                alpha2 = subcomposeAsyncImageScope.getAlpha();
            }
            if ((i & 64) != 0) {
                $dirty &= -29360129;
                modifier3 = modifier5;
                colorFilter3 = subcomposeAsyncImageScope.getColorFilter();
                i4 = 29360128;
                i5 = i3;
                contentScale3 = contentScale2;
                alpha3 = alpha2;
                painter3 = painter2;
                alignment3 = alignment2;
                i6 = 3670016;
                contentDescription3 = contentDescription2;
            } else {
                modifier3 = modifier5;
                colorFilter3 = colorFilter2;
                i4 = 29360128;
                i5 = i3;
                contentScale3 = contentScale2;
                alpha3 = alpha2;
                painter3 = painter2;
                alignment3 = alignment2;
                i6 = 3670016;
                contentDescription3 = contentDescription2;
            }
        } else {
            $composer3.skipToGroupEnd();
            if (i8 != 0) {
                $dirty &= -897;
            }
            if ((i & 4) != 0) {
                $dirty &= -7169;
            }
            if ((i & 8) != 0) {
                $dirty &= -57345;
            }
            if ((i & 16) != 0) {
                $dirty &= -458753;
            }
            if ((i & 32) != 0) {
                $dirty &= -3670017;
            }
            if ((i & 64) != 0) {
                $dirty &= -29360129;
            }
            modifier3 = modifier2;
            colorFilter3 = colorFilter2;
            i6 = 3670016;
            i4 = 29360128;
            i5 = i3;
            contentDescription3 = contentDescription2;
            contentScale3 = contentScale2;
            alpha3 = alpha2;
            painter3 = painter;
            alignment3 = alignment2;
        }
        $composer3.endDefaults();
        $composer2 = $composer3;
        SubcomposeAsyncImageContent(subcomposeAsyncImageScope, modifier3, painter3, contentDescription3, alignment3, contentScale3, alpha3, colorFilter3, false, $composer2, (i6 & $dirty) | (i5 & $dirty) | ($dirty & 14) | 512 | ($dirty & 112) | ($dirty & 7168) | ($dirty & i2) | (i4 & $dirty), 128);
        modifier4 = modifier3;
        painter4 = painter3;
        contentDescription4 = contentDescription3;
        alignment4 = alignment3;
        contentScale4 = contentScale3;
        alpha4 = alpha3;
        colorFilter4 = colorFilter3;
        scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
        }
    }

    private static final Function3<SubcomposeAsyncImageScope, Composer, Integer, Unit> contentOf(final Function4<? super SubcomposeAsyncImageScope, ? super AsyncImagePainter.State.Loading, ? super Composer, ? super Integer, Unit> function4, final Function4<? super SubcomposeAsyncImageScope, ? super AsyncImagePainter.State.Success, ? super Composer, ? super Integer, Unit> function42, final Function4<? super SubcomposeAsyncImageScope, ? super AsyncImagePainter.State.Error, ? super Composer, ? super Integer, Unit> function43) {
        return (function4 == null && function42 == null && function43 == null) ? ComposableSingletons$SubcomposeAsyncImageKt.INSTANCE.m8224getLambda1$coil_compose_base_release() : ComposableLambdaKt.composableLambdaInstance(750771424, true, new Function3<SubcomposeAsyncImageScope, Composer, Integer, Unit>() { // from class: coil.compose.SubcomposeAsyncImageKt.contentOf.1
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(SubcomposeAsyncImageScope subcomposeAsyncImageScope, Composer composer, Integer num) {
                invoke(subcomposeAsyncImageScope, composer, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(SubcomposeAsyncImageScope subcomposeAsyncImageScope, Composer composer, int i) {
                boolean z;
                int i2 = i;
                if ((i & 14) == 0) {
                    i2 |= composer.changed(subcomposeAsyncImageScope) ? 4 : 2;
                }
                int i3 = i2;
                if ((i3 & 91) != 18 || !composer.getSkipping()) {
                    boolean z2 = true;
                    AsyncImagePainter.State state = subcomposeAsyncImageScope.getPainter().getState();
                    if (state instanceof AsyncImagePainter.State.Loading) {
                        composer.startReplaceableGroup(1739512213);
                        if (function4 != null) {
                            function4.invoke(subcomposeAsyncImageScope, (AsyncImagePainter.State.Loading) state, composer, Integer.valueOf((i3 & 14) | 64));
                            Unit unit = Unit.INSTANCE;
                            z2 = false;
                        }
                        composer.endReplaceableGroup();
                        z = z2;
                    } else if (state instanceof AsyncImagePainter.State.Success) {
                        composer.startReplaceableGroup(1739605461);
                        if (function42 != null) {
                            function42.invoke(subcomposeAsyncImageScope, (AsyncImagePainter.State.Success) state, composer, Integer.valueOf((i3 & 14) | 64));
                            Unit unit2 = Unit.INSTANCE;
                            z2 = false;
                        }
                        composer.endReplaceableGroup();
                        z = z2;
                    } else if (state instanceof AsyncImagePainter.State.Error) {
                        composer.startReplaceableGroup(1739696601);
                        if (function43 != null) {
                            function43.invoke(subcomposeAsyncImageScope, (AsyncImagePainter.State.Error) state, composer, Integer.valueOf((i3 & 14) | 64));
                            Unit unit3 = Unit.INSTANCE;
                            z2 = false;
                        }
                        composer.endReplaceableGroup();
                        z = z2;
                    } else {
                        if (!(state instanceof AsyncImagePainter.State.Empty)) {
                            composer.startReplaceableGroup(-82435959);
                            composer.endReplaceableGroup();
                            throw new NoWhenBranchMatchedException();
                        }
                        composer.startReplaceableGroup(1739782316);
                        composer.endReplaceableGroup();
                        z = true;
                    }
                    if (z) {
                        SubcomposeAsyncImageKt.SubcomposeAsyncImageContent(subcomposeAsyncImageScope, null, null, null, null, null, 0.0f, null, false, composer, i3 & 14, 255);
                        return;
                    }
                    return;
                }
                composer.skipToGroupEnd();
            }
        });
    }
}
