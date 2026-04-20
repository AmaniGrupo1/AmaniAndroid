package androidx.compose.material3;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.internal.AnchoredDraggableKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.DraggableAnchors;
import androidx.compose.material3.internal.DraggableAnchorsConfig;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.MultiContentMeasurePolicyKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.profileinstaller.ProfileVerifier;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BottomSheetScaffold.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000p\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u008a\u0002\u0010\u0000\u001a\u00020\u00012\u001c\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0005¢\u0006\u0002\b\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0013\u001a\u00020\f2\b\b\u0002\u0010\u0014\u001a\u00020\f2\u0015\b\u0002\u0010\u0015\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0016¢\u0006\u0002\b\u00052\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0015\b\u0002\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0016¢\u0006\u0002\b\u00052\u0019\b\u0002\u0010\u001a\u001a\u0013\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u00052\b\b\u0002\u0010\u001c\u001a\u00020\u00112\b\b\u0002\u0010\u001d\u001a\u00020\u00112\u0017\u0010\u001e\u001a\u0013\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b \u0010!\u001a\u008e\u0001\u0010\"\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b2\u0013\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0016¢\u0006\u0002\b\u00052\u0011\u0010#\u001a\r\u0012\u0004\u0012\u00020\u00010\u0016¢\u0006\u0002\b\u00052\u0011\u0010$\u001a\r\u0012\u0004\u0012\u00020\u00010\u0016¢\u0006\u0002\b\u00052\u0011\u0010\u001a\u001a\r\u0012\u0004\u0012\u00020\u00010\u0016¢\u0006\u0002\b\u00052\f\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\u00162\u0006\u0010'\u001a\u00020(2\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0011H\u0003ø\u0001\u0000¢\u0006\u0004\b)\u0010*\u001a\u008d\u0001\u0010+\u001a\u00020\u00012\u0006\u0010,\u001a\u00020(2\u0006\u0010-\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010.\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\f2\u0006\u00100\u001a\u00020\f2\u0013\u00101\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0016¢\u0006\u0002\b\u00052\u001c\u0010\u001e\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0005¢\u0006\u0002\b\u0006H\u0003ø\u0001\u0000¢\u0006\u0004\b2\u00103\u001a!\u00104\u001a\u00020\n2\b\b\u0002\u00105\u001a\u00020(2\b\b\u0002\u00106\u001a\u00020\u001bH\u0007¢\u0006\u0002\u00107\u001a7\u00108\u001a\u00020(2\b\b\u0002\u00109\u001a\u00020:2\u0014\b\u0002\u0010;\u001a\u000e\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u00180\u00032\b\b\u0002\u0010<\u001a\u00020\u0018H\u0007¢\u0006\u0002\u0010=\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006>"}, d2 = {"BottomSheetScaffold", "", "sheetContent", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/ColumnScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "modifier", "Landroidx/compose/ui/Modifier;", "scaffoldState", "Landroidx/compose/material3/BottomSheetScaffoldState;", "sheetPeekHeight", "Landroidx/compose/ui/unit/Dp;", "sheetMaxWidth", "sheetShape", "Landroidx/compose/ui/graphics/Shape;", "sheetContainerColor", "Landroidx/compose/ui/graphics/Color;", "sheetContentColor", "sheetTonalElevation", "sheetShadowElevation", "sheetDragHandle", "Lkotlin/Function0;", "sheetSwipeEnabled", "", "topBar", "snackbarHost", "Landroidx/compose/material3/SnackbarHostState;", "containerColor", "contentColor", "content", "Landroidx/compose/foundation/layout/PaddingValues;", "BottomSheetScaffold-sdMYb0k", "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "BottomSheetScaffoldLayout", TtmlNode.TAG_BODY, "bottomSheet", "sheetOffset", "", "sheetState", "Landroidx/compose/material3/SheetState;", "BottomSheetScaffoldLayout-2E65NiM", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJLandroidx/compose/runtime/Composer;I)V", "StandardBottomSheet", "state", "peekHeight", "shape", "tonalElevation", "shadowElevation", "dragHandle", "StandardBottomSheet-w7I5h1o", "(Landroidx/compose/material3/SheetState;FFZLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "rememberBottomSheetScaffoldState", "bottomSheetState", "snackbarHostState", "(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/BottomSheetScaffoldState;", "rememberStandardBottomSheetState", "initialValue", "Landroidx/compose/material3/SheetValue;", "confirmValueChange", "skipHiddenState", "(Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class BottomSheetScaffoldKt {
    /* JADX WARN: Removed duplicated region for block: B:287:0x04cd  */
    /* JADX INFO: renamed from: BottomSheetScaffold-sdMYb0k, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2078BottomSheetScaffoldsdMYb0k(final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Modifier modifier, BottomSheetScaffoldState scaffoldState, float sheetPeekHeight, float sheetMaxWidth, Shape sheetShape, long sheetContainerColor, long sheetContentColor, float sheetTonalElevation, float sheetShadowElevation, Function2<? super Composer, ? super Integer, Unit> function2, boolean sheetSwipeEnabled, Function2<? super Composer, ? super Integer, Unit> function22, Function3<? super SnackbarHostState, ? super Composer, ? super Integer, Unit> function32, long containerColor, long contentColor, final Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function33, Composer $composer, final int $changed, final int $changed1, final int i) {
        Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function34;
        final BottomSheetScaffoldState scaffoldState2;
        final float sheetPeekHeight2;
        float sheetMaxWidth2;
        Shape sheetShape2;
        long sheetContainerColor2;
        int $dirty;
        int $dirty1;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        Modifier modifier2;
        int i7;
        long sheetContentColor2;
        float sheetShadowElevation2;
        Function2<? super Composer, ? super Integer, Unit> function2M2241getLambda1$material3_release;
        boolean sheetSwipeEnabled2;
        Function2<? super Composer, ? super Integer, Unit> function23;
        int $dirty2;
        float sheetTonalElevation2;
        long containerColor2;
        Modifier modifier3;
        final float sheetShadowElevation3;
        long contentColor2;
        final Function3<? super SnackbarHostState, ? super Composer, ? super Integer, Unit> function35;
        int $dirty12;
        long containerColor3;
        final float sheetShadowElevation4;
        int $dirty3;
        Composer $composer2;
        final Function3<? super SnackbarHostState, ? super Composer, ? super Integer, Unit> function36;
        final float sheetPeekHeight3;
        final float sheetMaxWidth3;
        final Shape sheetShape3;
        final BottomSheetScaffoldState scaffoldState3;
        final boolean sheetSwipeEnabled3;
        final Function2<? super Composer, ? super Integer, Unit> function24;
        final long contentColor3;
        final float sheetTonalElevation3;
        final Modifier modifier4;
        final float sheetShadowElevation5;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        final long sheetContainerColor3;
        final long sheetContentColor3;
        final long sheetContentColor4;
        int $dirty4;
        int i8;
        int i9;
        Composer $composer3 = $composer.startRestartGroup(-1523924135);
        ComposerKt.sourceInformation($composer3, "C(BottomSheetScaffold)P(6,3,4,10:c#ui.unit.Dp,9:c#ui.unit.Dp,12,5:c#ui.graphics.Color,7:c#ui.graphics.Color,14:c#ui.unit.Dp,11:c#ui.unit.Dp,8,13,16,15,0:c#ui.graphics.Color,2:c#ui.graphics.Color)112@5992L34,115@6194L13,116@6262L14,117@6309L36,124@6741L11,125@6788L31,131@6974L52,137@7329L597,132@7051L49,133@7124L50,128@6878L1054:BottomSheetScaffold.kt#uh7d8r");
        int $dirty5 = $changed;
        if ((i & 1) != 0) {
            $dirty5 |= 6;
            function34 = function3;
        } else if (($changed & 6) == 0) {
            function34 = function3;
            $dirty5 |= $composer3.changedInstance(function34) ? 4 : 2;
        } else {
            function34 = function3;
        }
        int i10 = i & 2;
        if (i10 != 0) {
            $dirty5 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty5 |= $composer3.changed(modifier) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                scaffoldState2 = scaffoldState;
                if ($composer3.changed(scaffoldState2)) {
                    i9 = 256;
                }
                $dirty5 |= i9;
            } else {
                scaffoldState2 = scaffoldState;
            }
            i9 = 128;
            $dirty5 |= i9;
        } else {
            scaffoldState2 = scaffoldState;
        }
        int i11 = i & 8;
        if (i11 != 0) {
            $dirty5 |= 3072;
            sheetPeekHeight2 = sheetPeekHeight;
        } else if (($changed & 3072) == 0) {
            sheetPeekHeight2 = sheetPeekHeight;
            $dirty5 |= $composer3.changed(sheetPeekHeight2) ? 2048 : 1024;
        } else {
            sheetPeekHeight2 = sheetPeekHeight;
        }
        int i12 = i & 16;
        int i13 = 8192;
        if (i12 != 0) {
            $dirty5 |= 24576;
            sheetMaxWidth2 = sheetMaxWidth;
        } else if (($changed & 24576) == 0) {
            sheetMaxWidth2 = sheetMaxWidth;
            $dirty5 |= $composer3.changed(sheetMaxWidth2) ? 16384 : 8192;
        } else {
            sheetMaxWidth2 = sheetMaxWidth;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if ((i & 32) == 0) {
                sheetShape2 = sheetShape;
                if ($composer3.changed(sheetShape2)) {
                    i8 = 131072;
                }
                $dirty5 |= i8;
            } else {
                sheetShape2 = sheetShape;
            }
            i8 = 65536;
            $dirty5 |= i8;
        } else {
            sheetShape2 = sheetShape;
        }
        if (($changed & 1572864) == 0) {
            if ((i & 64) == 0) {
                sheetContainerColor2 = sheetContainerColor;
                int i14 = $composer3.changed(sheetContainerColor2) ? 1048576 : 524288;
                $dirty5 |= i14;
            } else {
                sheetContainerColor2 = sheetContainerColor;
            }
            $dirty5 |= i14;
        } else {
            sheetContainerColor2 = sheetContainerColor;
        }
        if (($changed & 12582912) == 0) {
            if ((i & 128) == 0) {
                $dirty4 = $dirty5;
                $dirty1 = $changed1;
                int i15 = $composer3.changed(sheetContentColor) ? 8388608 : 4194304;
                $dirty = $dirty4 | i15;
            } else {
                $dirty4 = $dirty5;
                $dirty1 = $changed1;
            }
            $dirty = $dirty4 | i15;
        } else {
            $dirty = $dirty5;
            $dirty1 = $changed1;
        }
        int i16 = i & 256;
        if (i16 != 0) {
            $dirty |= 100663296;
            i2 = i16;
        } else if (($changed & 100663296) == 0) {
            i2 = i16;
            $dirty |= $composer3.changed(sheetTonalElevation) ? 67108864 : 33554432;
        } else {
            i2 = i16;
        }
        int i17 = i & 512;
        if (i17 != 0) {
            $dirty |= 805306368;
            i3 = i17;
        } else if (($changed & 805306368) == 0) {
            i3 = i17;
            $dirty |= $composer3.changed(sheetShadowElevation) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i3 = i17;
        }
        int $dirty6 = $dirty;
        int i18 = i & 1024;
        if (i18 != 0) {
            $dirty1 |= 6;
        } else {
            int $dirty13 = $changed1 & 6;
            if ($dirty13 == 0) {
                $dirty1 |= $composer3.changedInstance(function2) ? 4 : 2;
            }
        }
        int i19 = i & 2048;
        if (i19 != 0) {
            $dirty1 |= 48;
            i4 = i19;
        } else if (($changed1 & 48) == 0) {
            i4 = i19;
            $dirty1 |= $composer3.changed(sheetSwipeEnabled) ? 32 : 16;
        } else {
            i4 = i19;
        }
        int i20 = i & 4096;
        if (i20 != 0) {
            $dirty1 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i5 = i20;
        } else {
            i5 = i20;
            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                $dirty1 |= $composer3.changedInstance(function22) ? 256 : 128;
            }
        }
        int i21 = i & 8192;
        if (i21 != 0) {
            $dirty1 |= 3072;
            i6 = i21;
        } else {
            i6 = i21;
            if (($changed1 & 3072) == 0) {
                $dirty1 |= $composer3.changedInstance(function32) ? 2048 : 1024;
            }
        }
        if (($changed1 & 24576) == 0) {
            if ((i & 16384) == 0 && $composer3.changed(containerColor)) {
                i13 = 16384;
            }
            $dirty1 |= i13;
        }
        if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty1 |= ((i & 32768) == 0 && $composer3.changed(contentColor)) ? 131072 : 65536;
        }
        if ((i & 65536) != 0) {
            $dirty1 |= 1572864;
        } else if (($changed1 & 1572864) == 0) {
            $dirty1 |= $composer3.changedInstance(function33) ? 1048576 : 524288;
        }
        if (($dirty6 & 306783379) == 306783378 && (599187 & $dirty1) == 599186 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            modifier4 = modifier;
            function36 = function32;
            sheetContentColor4 = containerColor;
            contentColor3 = contentColor;
            $composer2 = $composer3;
            sheetPeekHeight3 = sheetPeekHeight2;
            sheetMaxWidth3 = sheetMaxWidth2;
            sheetShape3 = sheetShape2;
            sheetContainerColor3 = sheetContainerColor2;
            scaffoldState3 = scaffoldState2;
            sheetContentColor3 = sheetContentColor;
            sheetTonalElevation3 = sheetTonalElevation;
            sheetShadowElevation5 = sheetShadowElevation;
            function25 = function2;
            sheetSwipeEnabled3 = sheetSwipeEnabled;
            function24 = function22;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i10 != 0 ? Modifier.INSTANCE : modifier;
                if ((i & 4) != 0) {
                    i7 = -458753;
                    modifier2 = modifier5;
                    $dirty6 &= -897;
                    scaffoldState2 = rememberBottomSheetScaffoldState(null, null, $composer3, 0, 3);
                } else {
                    modifier2 = modifier5;
                    i7 = -458753;
                }
                if (i11 != 0) {
                    sheetPeekHeight2 = BottomSheetDefaults.INSTANCE.m2077getSheetPeekHeightD9Ej5fM();
                }
                if (i12 != 0) {
                    sheetMaxWidth2 = BottomSheetDefaults.INSTANCE.m2076getSheetMaxWidthD9Ej5fM();
                }
                if ((i & 32) != 0) {
                    $dirty6 &= i7;
                    sheetShape2 = BottomSheetDefaults.INSTANCE.getExpandedShape($composer3, 6);
                }
                if ((i & 64) != 0) {
                    sheetContainerColor2 = BottomSheetDefaults.INSTANCE.getContainerColor($composer3, 6);
                    $dirty6 &= -3670017;
                }
                if ((i & 128) != 0) {
                    sheetContentColor2 = ColorSchemeKt.m2213contentColorForek8zF_U(sheetContainerColor2, $composer3, ($dirty6 >> 18) & 14);
                    $dirty6 &= -29360129;
                } else {
                    sheetContentColor2 = sheetContentColor;
                }
                float sheetTonalElevation4 = i2 != 0 ? Dp.m7505constructorimpl(0) : sheetTonalElevation;
                sheetShadowElevation2 = i3 != 0 ? BottomSheetDefaults.INSTANCE.m2075getElevationD9Ej5fM() : sheetShadowElevation;
                function2M2241getLambda1$material3_release = i18 != 0 ? ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.m2241getLambda1$material3_release() : function2;
                sheetSwipeEnabled2 = i4 != 0 ? true : sheetSwipeEnabled;
                function23 = i5 != 0 ? null : function22;
                Function3<? super SnackbarHostState, ? super Composer, ? super Integer, Unit> function3M2242getLambda2$material3_release = i6 != 0 ? ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.m2242getLambda2$material3_release() : function32;
                if ((i & 16384) != 0) {
                    $dirty2 = $dirty6;
                    $dirty1 &= -57345;
                    sheetTonalElevation2 = sheetTonalElevation4;
                    containerColor2 = MaterialTheme.INSTANCE.getColorScheme($composer3, 6).getSurface();
                } else {
                    $dirty2 = $dirty6;
                    sheetTonalElevation2 = sheetTonalElevation4;
                    containerColor2 = containerColor;
                }
                if ((i & 32768) != 0) {
                    contentColor2 = ColorSchemeKt.m2213contentColorForek8zF_U(containerColor2, $composer3, ($dirty1 >> 12) & 14);
                    $dirty12 = $dirty1 & i7;
                    function35 = function3M2242getLambda2$material3_release;
                    containerColor3 = containerColor2;
                    modifier3 = modifier2;
                    sheetShadowElevation3 = sheetTonalElevation2;
                    $dirty6 = $dirty2;
                } else {
                    modifier3 = modifier2;
                    sheetShadowElevation3 = sheetTonalElevation2;
                    contentColor2 = contentColor;
                    function35 = function3M2242getLambda2$material3_release;
                    long j = containerColor2;
                    $dirty6 = $dirty2;
                    $dirty12 = $dirty1;
                    containerColor3 = j;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty6 &= -897;
                }
                if ((i & 32) != 0) {
                    $dirty6 &= -458753;
                }
                if ((i & 64) != 0) {
                    $dirty6 &= -3670017;
                }
                if ((i & 128) != 0) {
                    $dirty6 &= -29360129;
                }
                if ((i & 16384) != 0) {
                    $dirty1 &= -57345;
                }
                if ((i & 32768) != 0) {
                    $dirty12 = $dirty1 & (-458753);
                    sheetContentColor2 = sheetContentColor;
                    sheetShadowElevation2 = sheetShadowElevation;
                    function2M2241getLambda1$material3_release = function2;
                    sheetSwipeEnabled2 = sheetSwipeEnabled;
                    function23 = function22;
                    function35 = function32;
                    containerColor3 = containerColor;
                    contentColor2 = contentColor;
                    modifier3 = modifier;
                    sheetShadowElevation3 = sheetTonalElevation;
                } else {
                    sheetContentColor2 = sheetContentColor;
                    sheetShadowElevation2 = sheetShadowElevation;
                    function2M2241getLambda1$material3_release = function2;
                    sheetSwipeEnabled2 = sheetSwipeEnabled;
                    function23 = function22;
                    function35 = function32;
                    contentColor2 = contentColor;
                    $dirty12 = $dirty1;
                    modifier3 = modifier;
                    sheetShadowElevation3 = sheetTonalElevation;
                    containerColor3 = containerColor;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                sheetShadowElevation4 = sheetShadowElevation2;
                ComposerKt.traceEventStart(-1523924135, $dirty6, $dirty12, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:127)");
            } else {
                sheetShadowElevation4 = sheetShadowElevation2;
            }
            SheetState bottomSheetState = scaffoldState2.getBottomSheetState();
            int $dirty14 = $dirty12;
            boolean invalid$iv = true;
            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-459880832, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1
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

                public final void invoke(Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C131@6976L48:BottomSheetScaffold.kt#uh7d8r");
                    if (($changed2 & 3) == 2 && $composer4.getSkipping()) {
                        $composer4.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-459880832, $changed2, -1, "androidx.compose.material3.BottomSheetScaffold.<anonymous> (BottomSheetScaffold.kt:131)");
                    }
                    function33.invoke(PaddingKt.m815PaddingValuesa9UjIt4$default(0.0f, 0.0f, 0.0f, sheetPeekHeight2, 7, null), $composer4, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer3, 54);
            final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function37 = function34;
            final float sheetPeekHeight4 = sheetPeekHeight2;
            final float sheetMaxWidth4 = sheetMaxWidth2;
            final Function2<? super Composer, ? super Integer, Unit> function26 = function2M2241getLambda1$material3_release;
            final Shape sheetShape4 = sheetShape2;
            final long sheetContainerColor4 = sheetContainerColor2;
            final BottomSheetScaffoldState scaffoldState4 = scaffoldState2;
            final long sheetContentColor5 = sheetContentColor2;
            final boolean sheetSwipeEnabled4 = sheetSwipeEnabled2;
            float sheetTonalElevation5 = sheetShadowElevation3;
            float sheetShadowElevation6 = sheetShadowElevation4;
            ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1961872927, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$2
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

                public final void invoke(Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C138@7343L573:BottomSheetScaffold.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1961872927, $changed2, -1, "androidx.compose.material3.BottomSheetScaffold.<anonymous> (BottomSheetScaffold.kt:138)");
                        }
                        BottomSheetScaffoldKt.m2080StandardBottomSheetw7I5h1o(scaffoldState4.getBottomSheetState(), sheetPeekHeight4, sheetMaxWidth4, sheetSwipeEnabled4, sheetShape4, sheetContainerColor4, sheetContentColor5, sheetShadowElevation3, sheetShadowElevation4, function26, function37, $composer4, 0, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }, $composer3, 54);
            ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(88659390, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$3
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

                public final void invoke(Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C132@7053L45:BottomSheetScaffold.kt#uh7d8r");
                    if (($changed2 & 3) == 2 && $composer4.getSkipping()) {
                        $composer4.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(88659390, $changed2, -1, "androidx.compose.material3.BottomSheetScaffold.<anonymous> (BottomSheetScaffold.kt:132)");
                    }
                    function35.invoke(scaffoldState2.getSnackbarHostState(), $composer4, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer3, 54);
            ComposerKt.sourceInformationMarkerStart($composer3, -1349215175, "CC(remember):BottomSheetScaffold.kt#9igjgp");
            if (((($dirty6 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 || !$composer3.changed(scaffoldState2)) && ($dirty6 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
                invalid$iv = false;
            }
            Object value$iv = $composer3.rememberedValue();
            if (invalid$iv) {
                $dirty3 = $dirty6;
            } else {
                $dirty3 = $dirty6;
                if (value$iv == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifier6 = modifier3;
                long containerColor4 = containerColor3;
                m2079BottomSheetScaffoldLayout2E65NiM(modifier6, function23, composableLambdaRememberComposableLambda, composableLambdaRememberComposableLambda2, composableLambdaRememberComposableLambda3, (Function0) value$iv, bottomSheetState, containerColor4, contentColor2, $composer3, (($dirty3 >> 3) & 14) | 28032 | (($dirty14 >> 3) & 112) | (($dirty14 << 9) & 29360128) | (($dirty14 << 9) & 234881024));
                $composer2 = $composer3;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                function36 = function35;
                sheetPeekHeight3 = sheetPeekHeight2;
                sheetMaxWidth3 = sheetMaxWidth2;
                sheetShape3 = sheetShape2;
                scaffoldState3 = scaffoldState2;
                sheetSwipeEnabled3 = sheetSwipeEnabled2;
                function24 = function23;
                contentColor3 = contentColor2;
                sheetTonalElevation3 = sheetTonalElevation5;
                modifier4 = modifier6;
                long j2 = sheetContainerColor2;
                sheetShadowElevation5 = sheetShadowElevation6;
                function25 = function2M2241getLambda1$material3_release;
                sheetContainerColor3 = j2;
                sheetContentColor3 = sheetContentColor2;
                sheetContentColor4 = containerColor4;
            }
            value$iv = (Function0) new Function0<Float>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$4$1
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Float invoke() {
                    return Float.valueOf(scaffoldState2.getBottomSheetState().requireOffset());
                }
            };
            $composer3.updateRememberedValue(value$iv);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifier62 = modifier3;
            long containerColor42 = containerColor3;
            m2079BottomSheetScaffoldLayout2E65NiM(modifier62, function23, composableLambdaRememberComposableLambda, composableLambdaRememberComposableLambda2, composableLambdaRememberComposableLambda3, (Function0) value$iv, bottomSheetState, containerColor42, contentColor2, $composer3, (($dirty3 >> 3) & 14) | 28032 | (($dirty14 >> 3) & 112) | (($dirty14 << 9) & 29360128) | (($dirty14 << 9) & 234881024));
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
            }
            function36 = function35;
            sheetPeekHeight3 = sheetPeekHeight2;
            sheetMaxWidth3 = sheetMaxWidth2;
            sheetShape3 = sheetShape2;
            scaffoldState3 = scaffoldState2;
            sheetSwipeEnabled3 = sheetSwipeEnabled2;
            function24 = function23;
            contentColor3 = contentColor2;
            sheetTonalElevation3 = sheetTonalElevation5;
            modifier4 = modifier62;
            long j22 = sheetContainerColor2;
            sheetShadowElevation5 = sheetShadowElevation6;
            function25 = function2M2241getLambda1$material3_release;
            sheetContainerColor3 = j22;
            sheetContentColor3 = sheetContentColor2;
            sheetContentColor4 = containerColor42;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$5
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
                    BottomSheetScaffoldKt.m2078BottomSheetScaffoldsdMYb0k(function3, modifier4, scaffoldState3, sheetPeekHeight3, sheetMaxWidth3, sheetShape3, sheetContainerColor3, sheetContentColor3, sheetTonalElevation3, sheetShadowElevation5, function25, sheetSwipeEnabled3, function24, function36, sheetContentColor4, contentColor3, function33, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    public static final BottomSheetScaffoldState rememberBottomSheetScaffoldState(SheetState bottomSheetState, SnackbarHostState snackbarHostState, Composer $composer, int $changed, int i) {
        Composer $composer2;
        Object value$iv;
        Object value$iv2;
        ComposerKt.sourceInformationMarkerStart($composer, -1474606134, "C(rememberBottomSheetScaffoldState)178@8695L34,179@8774L32,181@8848L196:BottomSheetScaffold.kt#uh7d8r");
        if ((i & 1) != 0) {
            $composer2 = $composer;
            bottomSheetState = rememberStandardBottomSheetState(null, null, false, $composer2, 0, 7);
        } else {
            $composer2 = $composer;
        }
        if ((i & 2) != 0) {
            ComposerKt.sourceInformationMarkerStart($composer2, -787714761, "CC(remember):BottomSheetScaffold.kt#9igjgp");
            Composer $this$cache$iv = $composer2;
            Object it$iv = $this$cache$iv.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv2 = new SnackbarHostState();
                $this$cache$iv.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv;
            }
            snackbarHostState = (SnackbarHostState) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1474606134, $changed, -1, "androidx.compose.material3.rememberBottomSheetScaffoldState (BottomSheetScaffold.kt:180)");
        }
        ComposerKt.sourceInformationMarkerStart($composer2, -787712229, "CC(remember):BottomSheetScaffold.kt#9igjgp");
        boolean invalid$iv = (((($changed & 14) ^ 6) > 4 && $composer2.changed(bottomSheetState)) || ($changed & 6) == 4) | (((($changed & 112) ^ 48) > 32 && $composer2.changed(snackbarHostState)) || ($changed & 48) == 32);
        Composer $this$cache$iv2 = $composer2;
        Object it$iv2 = $this$cache$iv2.rememberedValue();
        if (invalid$iv || it$iv2 == Composer.INSTANCE.getEmpty()) {
            value$iv = new BottomSheetScaffoldState(bottomSheetState, snackbarHostState);
            $this$cache$iv2.updateRememberedValue(value$iv);
        } else {
            value$iv = it$iv2;
        }
        BottomSheetScaffoldState bottomSheetScaffoldState = (BottomSheetScaffoldState) value$iv;
        ComposerKt.sourceInformationMarkerEnd($composer2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer2);
        return bottomSheetScaffoldState;
    }

    public static final SheetState rememberStandardBottomSheetState(SheetValue initialValue, Function1<? super SheetValue, Boolean> function1, boolean skipHiddenState, Composer $composer, int $changed, int i) {
        SheetValue initialValue2;
        Function1<? super SheetValue, Boolean> function12;
        ComposerKt.sourceInformationMarkerStart($composer, 678511581, "C(rememberStandardBottomSheetState)P(1)204@9680L154:BottomSheetScaffold.kt#uh7d8r");
        if ((i & 1) != 0) {
            SheetValue initialValue3 = SheetValue.PartiallyExpanded;
            initialValue2 = initialValue3;
        } else {
            initialValue2 = initialValue;
        }
        if ((i & 2) != 0) {
            Function1 confirmValueChange = new Function1<SheetValue, Boolean>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt.rememberStandardBottomSheetState.1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(SheetValue it) {
                    return true;
                }
            };
            function12 = confirmValueChange;
        } else {
            function12 = function1;
        }
        boolean skipHiddenState2 = (i & 4) != 0 ? true : skipHiddenState;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(678511581, $changed, -1, "androidx.compose.material3.rememberStandardBottomSheetState (BottomSheetScaffold.kt:204)");
        }
        SheetState sheetStateRememberSheetState = SheetDefaultsKt.rememberSheetState(false, function12, initialValue2, skipHiddenState2, $composer, ($changed & 112) | (($changed << 6) & 896) | (($changed << 3) & 7168), 1);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return sheetStateRememberSheetState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02f3  */
    /* JADX INFO: renamed from: StandardBottomSheet-w7I5h1o, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2080StandardBottomSheetw7I5h1o(final SheetState state, final float peekHeight, final float sheetMaxWidth, final boolean sheetSwipeEnabled, final Shape shape, final long containerColor, final long contentColor, final float tonalElevation, final float shadowElevation, final Function2<? super Composer, ? super Integer, Unit> function2, final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int $changed1) {
        Object value$iv$iv;
        Modifier.Companion nestedScroll;
        Composer $composer2;
        Composer $composer3;
        Composer $composer4 = $composer.startRestartGroup(721467526);
        ComposerKt.sourceInformation($composer4, "C(StandardBottomSheet)P(9,4:c#ui.unit.Dp,7:c#ui.unit.Dp,8,6,0:c#ui.graphics.Color,2:c#ui.graphics.Color,10:c#ui.unit.Dp,5:c#ui.unit.Dp,3)225@10249L24,*227@10358L7,248@11164L1938,294@13493L2297,242@10889L4901:BottomSheetScaffold.kt#uh7d8r");
        int $dirty = $changed;
        int $dirty1 = $changed1;
        if (($changed & 6) == 0) {
            $dirty |= $composer4.changed(state) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer4.changed(peekHeight) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer4.changed(sheetMaxWidth) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer4.changed(sheetSwipeEnabled) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer4.changed(shape) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer4.changed(containerColor) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty |= $composer4.changed(contentColor) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            $dirty |= $composer4.changed(tonalElevation) ? 8388608 : 4194304;
        }
        if ((100663296 & $changed) == 0) {
            $dirty |= $composer4.changed(shadowElevation) ? 67108864 : 33554432;
        }
        if (($changed & 805306368) == 0) {
            $dirty |= $composer4.changedInstance(function2) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        if (($changed1 & 6) == 0) {
            $dirty1 |= $composer4.changedInstance(function3) ? 4 : 2;
        }
        if (($dirty & 306783379) != 306783378 || ($dirty1 & 3) != 2 || !$composer4.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(721467526, $dirty, $dirty1, "androidx.compose.material3.StandardBottomSheet (BottomSheetScaffold.kt:224)");
            }
            ComposerKt.sourceInformationMarkerStart($composer4, 773894976, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer4, -954363344, "CC(remember):Effects.kt#9igjgp");
            Object it$iv$iv = $composer4.rememberedValue();
            if (it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer4));
                $composer4.updateRememberedValue(value$iv$iv);
            } else {
                value$iv$iv = it$iv$iv;
            }
            CompositionScopedCoroutineScopeCanceller wrapper$iv = (CompositionScopedCoroutineScopeCanceller) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer4);
            final CoroutineScope scope = wrapper$iv.getCoroutineScope();
            ComposerKt.sourceInformationMarkerEnd($composer4);
            Orientation orientation = Orientation.Vertical;
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            int $dirty2 = $dirty;
            ComposerKt.sourceInformationMarkerStart($composer4, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer4.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd($composer4);
            Density $this$StandardBottomSheet_w7I5h1o_u24lambda_u243 = (Density) objConsume;
            final float peekHeightPx = $this$StandardBottomSheet_w7I5h1o_u24lambda_u243.mo405toPx0680j_4(peekHeight);
            $composer4.startReplaceGroup(-1831611516);
            ComposerKt.sourceInformation($composer4, "231@10496L326");
            if (sheetSwipeEnabled) {
                Modifier.Companion companion = Modifier.INSTANCE;
                AnchoredDraggableState<SheetValue> anchoredDraggableState$material3_release = state.getAnchoredDraggableState$material3_release();
                ComposerKt.sourceInformationMarkerStart($composer4, -1831609222, "CC(remember):BottomSheetScaffold.kt#9igjgp");
                boolean invalid$iv = $composer4.changed(anchoredDraggableState$material3_release);
                Object value$iv = $composer4.rememberedValue();
                if (invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                    value$iv = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(state, orientation, new Function1<Float, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$nestedScroll$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Float f) {
                            invoke(f.floatValue());
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$nestedScroll$1$1$1, reason: invalid class name */
                        /* JADX INFO: compiled from: BottomSheetScaffold.kt */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$nestedScroll$1$1$1", f = "BottomSheetScaffold.kt", i = {}, l = {236}, m = "invokeSuspend", n = {}, s = {})
                        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            final /* synthetic */ float $it;
                            final /* synthetic */ SheetState $state;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            AnonymousClass1(SheetState sheetState, float f, Continuation<? super AnonymousClass1> continuation) {
                                super(2, continuation);
                                this.$state = sheetState;
                                this.$it = f;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                return new AnonymousClass1(this.$state, this.$it, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object $result) {
                                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                switch (this.label) {
                                    case 0:
                                        ResultKt.throwOnFailure($result);
                                        this.label = 1;
                                        if (this.$state.settle$material3_release(this.$it, this) == coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                        break;
                                    case 1:
                                        ResultKt.throwOnFailure($result);
                                        break;
                                    default:
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                return Unit.INSTANCE;
                            }
                        }

                        public final void invoke(float it) {
                            BuildersKt__Builders_commonKt.launch$default(scope, null, null, new AnonymousClass1(state, it, null), 3, null);
                        }
                    });
                    $composer4.updateRememberedValue(value$iv);
                }
                ComposerKt.sourceInformationMarkerEnd($composer4);
                nestedScroll = NestedScrollModifierKt.nestedScroll$default(companion, (NestedScrollConnection) value$iv, null, 2, null);
            } else {
                nestedScroll = Modifier.INSTANCE;
            }
            $composer4.endReplaceGroup();
            Modifier modifierThen = SizeKt.m855requiredHeightInVpY3zN4$default(SizeKt.fillMaxWidth$default(SizeKt.m871widthInVpY3zN4$default(Modifier.INSTANCE, 0.0f, sheetMaxWidth, 1, null), 0.0f, 1, null), peekHeight, 0.0f, 2, null).then(nestedScroll);
            AnchoredDraggableState<SheetValue> anchoredDraggableState$material3_release2 = state.getAnchoredDraggableState$material3_release();
            ComposerKt.sourceInformationMarkerStart($composer4, -1831586234, "CC(remember):BottomSheetScaffold.kt#9igjgp");
            boolean invalid$iv2 = (($dirty2 & 14) == 4) | $composer4.changed(peekHeightPx);
            Object value$iv2 = $composer4.rememberedValue();
            if (!invalid$iv2) {
                $composer2 = $composer4;
                if (value$iv2 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Composer $composer5 = $composer2;
                $composer3 = $composer5;
                SurfaceKt.m2826SurfaceT9BRK9s(AnchoredDraggableKt.anchoredDraggable(AnchoredDraggableKt.draggableAnchors(modifierThen, anchoredDraggableState$material3_release2, orientation, (Function2) value$iv2), state.getAnchoredDraggableState$material3_release(), orientation, (16 & 4) != 0 ? true : sheetSwipeEnabled, (16 & 8) != 0 ? false : false, (16 & 16) != 0 ? null : null), shape, containerColor, contentColor, tonalElevation, shadowElevation, null, ComposableLambdaKt.rememberComposableLambda(390720907, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2
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

                    /* JADX WARN: Removed duplicated region for block: B:38:0x026c  */
                    /* JADX WARN: Removed duplicated region for block: B:41:0x0278  */
                    /* JADX WARN: Removed duplicated region for block: B:42:0x027e  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(Composer composer, int i) {
                        Function0<ComposeUiNode> function0;
                        ColumnScopeInstance columnScopeInstance;
                        Composer composer2;
                        String str;
                        Composer composer3;
                        int currentCompositeKeyHash;
                        Function0<ComposeUiNode> function02;
                        Composer composerM3967constructorimpl;
                        ComposerKt.sourceInformation(composer, "C295@13503L2281:BottomSheetScaffold.kt#uh7d8r");
                        if ((i & 3) != 2 || !composer.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(390720907, i, -1, "androidx.compose.material3.StandardBottomSheet.<anonymous> (BottomSheetScaffold.kt:295)");
                            }
                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                            Function2<Composer, Integer, Unit> function22 = function2;
                            final SheetState sheetState = state;
                            final boolean z = sheetSwipeEnabled;
                            final CoroutineScope coroutineScope = scope;
                            Function3<ColumnScope, Composer, Integer, Unit> function32 = function3;
                            ComposerKt.sourceInformationMarkerStart(composer, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
                            ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierFillMaxWidth$default);
                            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                            int i2 = ((((6 << 3) & 112) << 6) & 896) | 6;
                            ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                            if (!(composer.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composer.startReusableNode();
                            if (composer.getInserting()) {
                                function0 = constructor;
                                composer.createNode(function0);
                            } else {
                                function0 = constructor;
                                composer.useNode();
                            }
                            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl(composer);
                            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (composerM3967constructorimpl2.getInserting() || !Intrinsics.areEqual(composerM3967constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                composerM3967constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                                composerM3967constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash);
                            }
                            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
                            int i3 = (i2 >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart(composer, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                            int i4 = ((6 >> 6) & 112) | 6;
                            ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart(composer, -1850745504, "C337@15765L9:BottomSheetScaffold.kt#uh7d8r");
                            composer.startReplaceGroup(-1168080147);
                            ComposerKt.sourceInformation(composer, "298@13642L54,299@13738L48,300@13827L47,302@13986L1680,301@13891L1847");
                            if (function22 != null) {
                                Strings.Companion companion2 = Strings.INSTANCE;
                                String strM3257getString2EP1pXo = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_bottom_sheet_collapse_description), composer, 0);
                                Strings.Companion companion3 = Strings.INSTANCE;
                                final String strM3257getString2EP1pXo2 = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_bottom_sheet_dismiss_description), composer, 0);
                                Strings.Companion companion4 = Strings.INSTANCE;
                                final String strM3257getString2EP1pXo3 = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_bottom_sheet_expand_description), composer, 0);
                                Modifier modifierAlign = columnScopeInstance2.align(Modifier.INSTANCE, Alignment.INSTANCE.getCenterHorizontally());
                                ComposerKt.sourceInformationMarkerStart(composer, -1168066686, "CC(remember):BottomSheetScaffold.kt#9igjgp");
                                boolean zChanged = composer.changed(sheetState) | composer.changed(z) | composer.changed(strM3257getString2EP1pXo3) | composer.changedInstance(coroutineScope) | composer.changed(strM3257getString2EP1pXo) | composer.changed(strM3257getString2EP1pXo2);
                                Object objRememberedValue = composer.rememberedValue();
                                if (!zChanged) {
                                    str = strM3257getString2EP1pXo;
                                    if (objRememberedValue != Composer.INSTANCE.getEmpty()) {
                                        composer3 = composer;
                                        columnScopeInstance = columnScopeInstance2;
                                    }
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    Modifier modifierSemantics = SemanticsModifierKt.semantics(modifierAlign, true, (Function1) objRememberedValue);
                                    composer2 = composer3;
                                    ComposerKt.sourceInformationMarkerStart(composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
                                    ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer2.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, modifierSemantics);
                                    Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                    int i5 = ((((0 << 3) & 112) << 6) & 896) | 6;
                                    ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                    if (!(composer2.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer2.startReusableNode();
                                    if (!composer2.getInserting()) {
                                        function02 = constructor2;
                                        composer2.createNode(function02);
                                    } else {
                                        function02 = constructor2;
                                        composer2.useNode();
                                    }
                                    composerM3967constructorimpl = Updater.m3967constructorimpl(composer2);
                                    Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if (!composerM3967constructorimpl.getInserting() || !Intrinsics.areEqual(composerM3967constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        composerM3967constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                                        composerM3967constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash2);
                                    }
                                    Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                                    int i6 = (i5 >> 6) & 14;
                                    ComposerKt.sourceInformationMarkerStart(composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    int i7 = ((0 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart(composer2, -1678862234, "C334@15708L12:BottomSheetScaffold.kt#uh7d8r");
                                    function22.invoke(composer2, 0);
                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                    composer2.endNode();
                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                } else {
                                    str = strM3257getString2EP1pXo;
                                }
                                composer3 = composer;
                                final String str2 = str;
                                columnScopeInstance = columnScopeInstance2;
                                objRememberedValue = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                        invoke2(semanticsPropertyReceiver);
                                        return Unit.INSTANCE;
                                    }

                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                                        final SheetState $this$invoke_u24lambda_u240 = sheetState;
                                        boolean z2 = z;
                                        String str3 = strM3257getString2EP1pXo3;
                                        String str4 = str2;
                                        SheetState sheetState2 = sheetState;
                                        String str5 = strM3257getString2EP1pXo2;
                                        final CoroutineScope coroutineScope2 = coroutineScope;
                                        if ($this$invoke_u24lambda_u240.getAnchoredDraggableState$material3_release().getAnchors().getSize() > 1 && z2) {
                                            if ($this$invoke_u24lambda_u240.getCurrentValue() == SheetValue.PartiallyExpanded) {
                                                if ($this$invoke_u24lambda_u240.getAnchoredDraggableState$material3_release().getConfirmValueChange$material3_release().invoke(SheetValue.Expanded).booleanValue()) {
                                                    SemanticsPropertiesKt.expand($this$semantics, str3, new Function0<Boolean>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$1
                                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                        {
                                                            super(0);
                                                        }

                                                        /* JADX INFO: renamed from: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$1$1, reason: invalid class name */
                                                        /* JADX INFO: compiled from: BottomSheetScaffold.kt */
                                                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                                                        @DebugMetadata(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$1$1", f = "BottomSheetScaffold.kt", i = {}, l = {311}, m = "invokeSuspend", n = {}, s = {})
                                                        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                            final /* synthetic */ SheetState $this_with;
                                                            int label;

                                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                            AnonymousClass1(SheetState sheetState, Continuation<? super AnonymousClass1> continuation) {
                                                                super(2, continuation);
                                                                this.$this_with = sheetState;
                                                            }

                                                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                                return new AnonymousClass1(this.$this_with, continuation);
                                                            }

                                                            @Override // kotlin.jvm.functions.Function2
                                                            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                                                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                                            }

                                                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                            public final Object invokeSuspend(Object $result) {
                                                                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                                                switch (this.label) {
                                                                    case 0:
                                                                        ResultKt.throwOnFailure($result);
                                                                        this.label = 1;
                                                                        if (this.$this_with.expand(this) == coroutine_suspended) {
                                                                            return coroutine_suspended;
                                                                        }
                                                                        break;
                                                                    case 1:
                                                                        ResultKt.throwOnFailure($result);
                                                                        break;
                                                                    default:
                                                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                                                }
                                                                return Unit.INSTANCE;
                                                            }
                                                        }

                                                        /* JADX WARN: Can't rename method to resolve collision */
                                                        @Override // kotlin.jvm.functions.Function0
                                                        public final Boolean invoke() {
                                                            BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1($this$invoke_u24lambda_u240, null), 3, null);
                                                            return true;
                                                        }
                                                    });
                                                }
                                            } else if ($this$invoke_u24lambda_u240.getAnchoredDraggableState$material3_release().getConfirmValueChange$material3_release().invoke(SheetValue.PartiallyExpanded).booleanValue()) {
                                                SemanticsPropertiesKt.collapse($this$semantics, str4, new Function0<Boolean>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$2
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    {
                                                        super(0);
                                                    }

                                                    /* JADX INFO: renamed from: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$2$1, reason: invalid class name */
                                                    /* JADX INFO: compiled from: BottomSheetScaffold.kt */
                                                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                                                    @DebugMetadata(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$2$1", f = "BottomSheetScaffold.kt", i = {}, l = {320}, m = "invokeSuspend", n = {}, s = {})
                                                    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                        final /* synthetic */ SheetState $this_with;
                                                        int label;

                                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                        AnonymousClass1(SheetState sheetState, Continuation<? super AnonymousClass1> continuation) {
                                                            super(2, continuation);
                                                            this.$this_with = sheetState;
                                                        }

                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                            return new AnonymousClass1(this.$this_with, continuation);
                                                        }

                                                        @Override // kotlin.jvm.functions.Function2
                                                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                                            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                                        }

                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                        public final Object invokeSuspend(Object $result) {
                                                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                                            switch (this.label) {
                                                                case 0:
                                                                    ResultKt.throwOnFailure($result);
                                                                    this.label = 1;
                                                                    if (this.$this_with.partialExpand(this) == coroutine_suspended) {
                                                                        return coroutine_suspended;
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    ResultKt.throwOnFailure($result);
                                                                    break;
                                                                default:
                                                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                                            }
                                                            return Unit.INSTANCE;
                                                        }
                                                    }

                                                    /* JADX WARN: Can't rename method to resolve collision */
                                                    @Override // kotlin.jvm.functions.Function0
                                                    public final Boolean invoke() {
                                                        BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1($this$invoke_u24lambda_u240, null), 3, null);
                                                        return true;
                                                    }
                                                });
                                            }
                                            if (!sheetState2.getSkipHiddenState()) {
                                                SemanticsPropertiesKt.dismiss($this$semantics, str5, new Function0<Boolean>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$3
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    {
                                                        super(0);
                                                    }

                                                    /* JADX INFO: renamed from: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$3$1, reason: invalid class name */
                                                    /* JADX INFO: compiled from: BottomSheetScaffold.kt */
                                                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                                                    @DebugMetadata(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$3$1", f = "BottomSheetScaffold.kt", i = {}, l = {327}, m = "invokeSuspend", n = {}, s = {})
                                                    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                        final /* synthetic */ SheetState $this_with;
                                                        int label;

                                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                        AnonymousClass1(SheetState sheetState, Continuation<? super AnonymousClass1> continuation) {
                                                            super(2, continuation);
                                                            this.$this_with = sheetState;
                                                        }

                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                            return new AnonymousClass1(this.$this_with, continuation);
                                                        }

                                                        @Override // kotlin.jvm.functions.Function2
                                                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                                            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                                        }

                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                        public final Object invokeSuspend(Object $result) {
                                                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                                            switch (this.label) {
                                                                case 0:
                                                                    ResultKt.throwOnFailure($result);
                                                                    this.label = 1;
                                                                    if (this.$this_with.hide(this) == coroutine_suspended) {
                                                                        return coroutine_suspended;
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    ResultKt.throwOnFailure($result);
                                                                    break;
                                                                default:
                                                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                                            }
                                                            return Unit.INSTANCE;
                                                        }
                                                    }

                                                    /* JADX WARN: Can't rename method to resolve collision */
                                                    @Override // kotlin.jvm.functions.Function0
                                                    public final Boolean invoke() {
                                                        BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1($this$invoke_u24lambda_u240, null), 3, null);
                                                        return true;
                                                    }
                                                });
                                            }
                                        }
                                    }
                                };
                                composer.updateRememberedValue(objRememberedValue);
                                ComposerKt.sourceInformationMarkerEnd(composer3);
                                Modifier modifierSemantics2 = SemanticsModifierKt.semantics(modifierAlign, true, (Function1) objRememberedValue);
                                composer2 = composer3;
                                ComposerKt.sourceInformationMarkerStart(composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
                                ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                                CompositionLocalMap currentCompositionLocalMap22 = composer2.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier22 = ComposedModifierKt.materializeModifier(composer2, modifierSemantics2);
                                Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
                                int i52 = ((((0 << 3) & 112) << 6) & 896) | 6;
                                ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                if (!(composer2.getApplier() instanceof Applier)) {
                                }
                                composer2.startReusableNode();
                                if (!composer2.getInserting()) {
                                }
                                composerM3967constructorimpl = Updater.m3967constructorimpl(composer2);
                                Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!composerM3967constructorimpl.getInserting()) {
                                }
                                composerM3967constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                                composerM3967constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash22);
                                Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier22, ComposeUiNode.INSTANCE.getSetModifier());
                                int i62 = (i52 >> 6) & 14;
                                ComposerKt.sourceInformationMarkerStart(composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                                int i72 = ((0 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart(composer2, -1678862234, "C334@15708L12:BottomSheetScaffold.kt#uh7d8r");
                                function22.invoke(composer2, 0);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                composer2.endNode();
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                            } else {
                                columnScopeInstance = columnScopeInstance2;
                                composer2 = composer;
                            }
                            composer2.endReplaceGroup();
                            function32.invoke(columnScopeInstance, composer2, Integer.valueOf(i4 & 14));
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer);
                            composer.endNode();
                            ComposerKt.sourceInformationMarkerEnd(composer);
                            ComposerKt.sourceInformationMarkerEnd(composer);
                            ComposerKt.sourceInformationMarkerEnd(composer);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer.skipToGroupEnd();
                    }
                }, $composer5, 54), $composer3, (($dirty2 >> 9) & 112) | 12582912 | (($dirty2 >> 9) & 896) | (($dirty2 >> 9) & 7168) | (($dirty2 >> 9) & 57344) | (458752 & ($dirty2 >> 9)), 64);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                $composer2 = $composer4;
            }
            value$iv2 = (Function2) new Function2<IntSize, Constraints, Pair<? extends DraggableAnchors<SheetValue>, ? extends SheetValue>>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$1$1

                /* JADX INFO: compiled from: BottomSheetScaffold.kt */
                @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                public /* synthetic */ class WhenMappings {
                    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                    static {
                        int[] iArr = new int[SheetValue.values().length];
                        try {
                            iArr[SheetValue.Hidden.ordinal()] = 1;
                        } catch (NoSuchFieldError e) {
                        }
                        try {
                            iArr[SheetValue.PartiallyExpanded.ordinal()] = 2;
                        } catch (NoSuchFieldError e2) {
                        }
                        try {
                            iArr[SheetValue.Expanded.ordinal()] = 3;
                        } catch (NoSuchFieldError e3) {
                        }
                        $EnumSwitchMapping$0 = iArr;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Pair<? extends DraggableAnchors<SheetValue>, ? extends SheetValue> invoke(IntSize intSize, Constraints constraints) {
                    return m2083invokeGpV2Q24(intSize.m7680unboximpl(), constraints.getValue());
                }

                /* JADX INFO: renamed from: invoke-GpV2Q24, reason: not valid java name */
                public final Pair<DraggableAnchors<SheetValue>, SheetValue> m2083invokeGpV2Q24(long sheetSize, long constraints) {
                    final float layoutHeight = Constraints.m7457getMaxHeightimpl(constraints);
                    final float sheetHeight = IntSize.m7675getHeightimpl(sheetSize);
                    final SheetState sheetState = state;
                    final float f = peekHeightPx;
                    DraggableAnchors newAnchors = AnchoredDraggableKt.DraggableAnchors(new Function1<DraggableAnchorsConfig<SheetValue>, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$1$1$newAnchors$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(DraggableAnchorsConfig<SheetValue> draggableAnchorsConfig) {
                            invoke2(draggableAnchorsConfig);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(DraggableAnchorsConfig<SheetValue> draggableAnchorsConfig) {
                            if (!sheetState.getSkipPartiallyExpanded()) {
                                draggableAnchorsConfig.at(SheetValue.PartiallyExpanded, layoutHeight - f);
                            }
                            if (!(sheetHeight == f)) {
                                draggableAnchorsConfig.at(SheetValue.Expanded, Math.max(layoutHeight - sheetHeight, 0.0f));
                            }
                            if (!sheetState.getSkipHiddenState()) {
                                draggableAnchorsConfig.at(SheetValue.Hidden, layoutHeight);
                            }
                        }
                    });
                    SheetValue oldTarget = state.getAnchoredDraggableState$material3_release().getTargetValue();
                    switch (WhenMappings.$EnumSwitchMapping$0[oldTarget.ordinal()]) {
                        case 1:
                            if (newAnchors.hasAnchorFor(SheetValue.Hidden)) {
                                oldTarget = SheetValue.Hidden;
                            }
                            break;
                        case 2:
                            if (newAnchors.hasAnchorFor(SheetValue.PartiallyExpanded)) {
                                oldTarget = SheetValue.PartiallyExpanded;
                            } else if (newAnchors.hasAnchorFor(SheetValue.Expanded)) {
                                oldTarget = SheetValue.Expanded;
                            } else if (newAnchors.hasAnchorFor(SheetValue.Hidden)) {
                                oldTarget = SheetValue.Hidden;
                            }
                            break;
                        case 3:
                            if (newAnchors.hasAnchorFor(SheetValue.Expanded)) {
                                oldTarget = SheetValue.Expanded;
                            } else if (newAnchors.hasAnchorFor(SheetValue.PartiallyExpanded)) {
                                oldTarget = SheetValue.PartiallyExpanded;
                            } else if (newAnchors.hasAnchorFor(SheetValue.Hidden)) {
                                oldTarget = SheetValue.Hidden;
                            }
                            break;
                        default:
                            throw new NoWhenBranchMatchedException();
                    }
                    return TuplesKt.to(newAnchors, oldTarget);
                }
            };
            $composer4.updateRememberedValue(value$iv2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Composer $composer52 = $composer2;
            $composer3 = $composer52;
            SurfaceKt.m2826SurfaceT9BRK9s(AnchoredDraggableKt.anchoredDraggable(AnchoredDraggableKt.draggableAnchors(modifierThen, anchoredDraggableState$material3_release2, orientation, (Function2) value$iv2), state.getAnchoredDraggableState$material3_release(), orientation, (16 & 4) != 0 ? true : sheetSwipeEnabled, (16 & 8) != 0 ? false : false, (16 & 16) != 0 ? null : null), shape, containerColor, contentColor, tonalElevation, shadowElevation, null, ComposableLambdaKt.rememberComposableLambda(390720907, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2
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

                /* JADX WARN: Removed duplicated region for block: B:38:0x026c  */
                /* JADX WARN: Removed duplicated region for block: B:41:0x0278  */
                /* JADX WARN: Removed duplicated region for block: B:42:0x027e  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(Composer composer, int i) {
                    Function0<ComposeUiNode> function0;
                    ColumnScopeInstance columnScopeInstance;
                    Composer composer2;
                    String str;
                    Composer composer3;
                    int currentCompositeKeyHash;
                    Function0<ComposeUiNode> function02;
                    Composer composerM3967constructorimpl;
                    ComposerKt.sourceInformation(composer, "C295@13503L2281:BottomSheetScaffold.kt#uh7d8r");
                    if ((i & 3) != 2 || !composer.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(390720907, i, -1, "androidx.compose.material3.StandardBottomSheet.<anonymous> (BottomSheetScaffold.kt:295)");
                        }
                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Function2<Composer, Integer, Unit> function22 = function2;
                        final SheetState sheetState = state;
                        final boolean z = sheetSwipeEnabled;
                        final CoroutineScope coroutineScope = scope;
                        Function3<ColumnScope, Composer, Integer, Unit> function32 = function3;
                        ComposerKt.sourceInformationMarkerStart(composer, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
                        ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierFillMaxWidth$default);
                        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                        int i2 = ((((6 << 3) & 112) << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!(composer.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composer.startReusableNode();
                        if (composer.getInserting()) {
                            function0 = constructor;
                            composer.createNode(function0);
                        } else {
                            function0 = constructor;
                            composer.useNode();
                        }
                        Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl(composer);
                        Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (composerM3967constructorimpl2.getInserting() || !Intrinsics.areEqual(composerM3967constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            composerM3967constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                            composerM3967constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash);
                        }
                        Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
                        int i3 = (i2 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart(composer, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                        int i4 = ((6 >> 6) & 112) | 6;
                        ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composer, -1850745504, "C337@15765L9:BottomSheetScaffold.kt#uh7d8r");
                        composer.startReplaceGroup(-1168080147);
                        ComposerKt.sourceInformation(composer, "298@13642L54,299@13738L48,300@13827L47,302@13986L1680,301@13891L1847");
                        if (function22 != null) {
                            Strings.Companion companion2 = Strings.INSTANCE;
                            String strM3257getString2EP1pXo = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_bottom_sheet_collapse_description), composer, 0);
                            Strings.Companion companion3 = Strings.INSTANCE;
                            final String strM3257getString2EP1pXo2 = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_bottom_sheet_dismiss_description), composer, 0);
                            Strings.Companion companion4 = Strings.INSTANCE;
                            final String strM3257getString2EP1pXo3 = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_bottom_sheet_expand_description), composer, 0);
                            Modifier modifierAlign = columnScopeInstance2.align(Modifier.INSTANCE, Alignment.INSTANCE.getCenterHorizontally());
                            ComposerKt.sourceInformationMarkerStart(composer, -1168066686, "CC(remember):BottomSheetScaffold.kt#9igjgp");
                            boolean zChanged = composer.changed(sheetState) | composer.changed(z) | composer.changed(strM3257getString2EP1pXo3) | composer.changedInstance(coroutineScope) | composer.changed(strM3257getString2EP1pXo) | composer.changed(strM3257getString2EP1pXo2);
                            Object objRememberedValue = composer.rememberedValue();
                            if (!zChanged) {
                                str = strM3257getString2EP1pXo;
                                if (objRememberedValue != Composer.INSTANCE.getEmpty()) {
                                    composer3 = composer;
                                    columnScopeInstance = columnScopeInstance2;
                                }
                                ComposerKt.sourceInformationMarkerEnd(composer3);
                                Modifier modifierSemantics2 = SemanticsModifierKt.semantics(modifierAlign, true, (Function1) objRememberedValue);
                                composer2 = composer3;
                                ComposerKt.sourceInformationMarkerStart(composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
                                ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                                CompositionLocalMap currentCompositionLocalMap22 = composer2.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier22 = ComposedModifierKt.materializeModifier(composer2, modifierSemantics2);
                                Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
                                int i52 = ((((0 << 3) & 112) << 6) & 896) | 6;
                                ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                if (!(composer2.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer2.startReusableNode();
                                if (!composer2.getInserting()) {
                                    function02 = constructor22;
                                    composer2.createNode(function02);
                                } else {
                                    function02 = constructor22;
                                    composer2.useNode();
                                }
                                composerM3967constructorimpl = Updater.m3967constructorimpl(composer2);
                                Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if (!composerM3967constructorimpl.getInserting() || !Intrinsics.areEqual(composerM3967constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    composerM3967constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                                    composerM3967constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash22);
                                }
                                Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier22, ComposeUiNode.INSTANCE.getSetModifier());
                                int i62 = (i52 >> 6) & 14;
                                ComposerKt.sourceInformationMarkerStart(composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                                int i72 = ((0 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart(composer2, -1678862234, "C334@15708L12:BottomSheetScaffold.kt#uh7d8r");
                                function22.invoke(composer2, 0);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                composer2.endNode();
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                            } else {
                                str = strM3257getString2EP1pXo;
                            }
                            composer3 = composer;
                            final String str2 = str;
                            columnScopeInstance = columnScopeInstance2;
                            objRememberedValue = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                    invoke2(semanticsPropertyReceiver);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                                    final SheetState $this$invoke_u24lambda_u240 = sheetState;
                                    boolean z2 = z;
                                    String str3 = strM3257getString2EP1pXo3;
                                    String str4 = str2;
                                    SheetState sheetState2 = sheetState;
                                    String str5 = strM3257getString2EP1pXo2;
                                    final CoroutineScope coroutineScope2 = coroutineScope;
                                    if ($this$invoke_u24lambda_u240.getAnchoredDraggableState$material3_release().getAnchors().getSize() > 1 && z2) {
                                        if ($this$invoke_u24lambda_u240.getCurrentValue() == SheetValue.PartiallyExpanded) {
                                            if ($this$invoke_u24lambda_u240.getAnchoredDraggableState$material3_release().getConfirmValueChange$material3_release().invoke(SheetValue.Expanded).booleanValue()) {
                                                SemanticsPropertiesKt.expand($this$semantics, str3, new Function0<Boolean>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$1
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    {
                                                        super(0);
                                                    }

                                                    /* JADX INFO: renamed from: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$1$1, reason: invalid class name */
                                                    /* JADX INFO: compiled from: BottomSheetScaffold.kt */
                                                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                                                    @DebugMetadata(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$1$1", f = "BottomSheetScaffold.kt", i = {}, l = {311}, m = "invokeSuspend", n = {}, s = {})
                                                    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                        final /* synthetic */ SheetState $this_with;
                                                        int label;

                                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                        AnonymousClass1(SheetState sheetState, Continuation<? super AnonymousClass1> continuation) {
                                                            super(2, continuation);
                                                            this.$this_with = sheetState;
                                                        }

                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                            return new AnonymousClass1(this.$this_with, continuation);
                                                        }

                                                        @Override // kotlin.jvm.functions.Function2
                                                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                                            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                                        }

                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                        public final Object invokeSuspend(Object $result) {
                                                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                                            switch (this.label) {
                                                                case 0:
                                                                    ResultKt.throwOnFailure($result);
                                                                    this.label = 1;
                                                                    if (this.$this_with.expand(this) == coroutine_suspended) {
                                                                        return coroutine_suspended;
                                                                    }
                                                                    break;
                                                                case 1:
                                                                    ResultKt.throwOnFailure($result);
                                                                    break;
                                                                default:
                                                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                                            }
                                                            return Unit.INSTANCE;
                                                        }
                                                    }

                                                    /* JADX WARN: Can't rename method to resolve collision */
                                                    @Override // kotlin.jvm.functions.Function0
                                                    public final Boolean invoke() {
                                                        BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1($this$invoke_u24lambda_u240, null), 3, null);
                                                        return true;
                                                    }
                                                });
                                            }
                                        } else if ($this$invoke_u24lambda_u240.getAnchoredDraggableState$material3_release().getConfirmValueChange$material3_release().invoke(SheetValue.PartiallyExpanded).booleanValue()) {
                                            SemanticsPropertiesKt.collapse($this$semantics, str4, new Function0<Boolean>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$2
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(0);
                                                }

                                                /* JADX INFO: renamed from: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$2$1, reason: invalid class name */
                                                /* JADX INFO: compiled from: BottomSheetScaffold.kt */
                                                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                                                @DebugMetadata(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$2$1", f = "BottomSheetScaffold.kt", i = {}, l = {320}, m = "invokeSuspend", n = {}, s = {})
                                                static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                    final /* synthetic */ SheetState $this_with;
                                                    int label;

                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    AnonymousClass1(SheetState sheetState, Continuation<? super AnonymousClass1> continuation) {
                                                        super(2, continuation);
                                                        this.$this_with = sheetState;
                                                    }

                                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                        return new AnonymousClass1(this.$this_with, continuation);
                                                    }

                                                    @Override // kotlin.jvm.functions.Function2
                                                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                                    }

                                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                    public final Object invokeSuspend(Object $result) {
                                                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                                        switch (this.label) {
                                                            case 0:
                                                                ResultKt.throwOnFailure($result);
                                                                this.label = 1;
                                                                if (this.$this_with.partialExpand(this) == coroutine_suspended) {
                                                                    return coroutine_suspended;
                                                                }
                                                                break;
                                                            case 1:
                                                                ResultKt.throwOnFailure($result);
                                                                break;
                                                            default:
                                                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                                        }
                                                        return Unit.INSTANCE;
                                                    }
                                                }

                                                /* JADX WARN: Can't rename method to resolve collision */
                                                @Override // kotlin.jvm.functions.Function0
                                                public final Boolean invoke() {
                                                    BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1($this$invoke_u24lambda_u240, null), 3, null);
                                                    return true;
                                                }
                                            });
                                        }
                                        if (!sheetState2.getSkipHiddenState()) {
                                            SemanticsPropertiesKt.dismiss($this$semantics, str5, new Function0<Boolean>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$3
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(0);
                                                }

                                                /* JADX INFO: renamed from: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$3$1, reason: invalid class name */
                                                /* JADX INFO: compiled from: BottomSheetScaffold.kt */
                                                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                                                @DebugMetadata(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1$1$1$1$3$1", f = "BottomSheetScaffold.kt", i = {}, l = {327}, m = "invokeSuspend", n = {}, s = {})
                                                static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                    final /* synthetic */ SheetState $this_with;
                                                    int label;

                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    AnonymousClass1(SheetState sheetState, Continuation<? super AnonymousClass1> continuation) {
                                                        super(2, continuation);
                                                        this.$this_with = sheetState;
                                                    }

                                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                        return new AnonymousClass1(this.$this_with, continuation);
                                                    }

                                                    @Override // kotlin.jvm.functions.Function2
                                                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                                    }

                                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                    public final Object invokeSuspend(Object $result) {
                                                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                                        switch (this.label) {
                                                            case 0:
                                                                ResultKt.throwOnFailure($result);
                                                                this.label = 1;
                                                                if (this.$this_with.hide(this) == coroutine_suspended) {
                                                                    return coroutine_suspended;
                                                                }
                                                                break;
                                                            case 1:
                                                                ResultKt.throwOnFailure($result);
                                                                break;
                                                            default:
                                                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                                        }
                                                        return Unit.INSTANCE;
                                                    }
                                                }

                                                /* JADX WARN: Can't rename method to resolve collision */
                                                @Override // kotlin.jvm.functions.Function0
                                                public final Boolean invoke() {
                                                    BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1($this$invoke_u24lambda_u240, null), 3, null);
                                                    return true;
                                                }
                                            });
                                        }
                                    }
                                }
                            };
                            composer.updateRememberedValue(objRememberedValue);
                            ComposerKt.sourceInformationMarkerEnd(composer3);
                            Modifier modifierSemantics22 = SemanticsModifierKt.semantics(modifierAlign, true, (Function1) objRememberedValue);
                            composer2 = composer3;
                            ComposerKt.sourceInformationMarkerStart(composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy22 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
                            ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap222 = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier222 = ComposedModifierKt.materializeModifier(composer2, modifierSemantics22);
                            Function0<ComposeUiNode> constructor222 = ComposeUiNode.INSTANCE.getConstructor();
                            int i522 = ((((0 << 3) & 112) << 6) & 896) | 6;
                            ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                            if (!(composer2.getApplier() instanceof Applier)) {
                            }
                            composer2.startReusableNode();
                            if (!composer2.getInserting()) {
                            }
                            composerM3967constructorimpl = Updater.m3967constructorimpl(composer2);
                            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (!composerM3967constructorimpl.getInserting()) {
                            }
                            composerM3967constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                            composerM3967constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash222);
                            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier222, ComposeUiNode.INSTANCE.getSetModifier());
                            int i622 = (i522 >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart(composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                            BoxScopeInstance boxScopeInstance22 = BoxScopeInstance.INSTANCE;
                            int i722 = ((0 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart(composer2, -1678862234, "C334@15708L12:BottomSheetScaffold.kt#uh7d8r");
                            function22.invoke(composer2, 0);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            composer2.endNode();
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                        } else {
                            columnScopeInstance = columnScopeInstance2;
                            composer2 = composer;
                        }
                        composer2.endReplaceGroup();
                        function32.invoke(columnScopeInstance, composer2, Integer.valueOf(i4 & 14));
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer);
                        composer.endNode();
                        ComposerKt.sourceInformationMarkerEnd(composer);
                        ComposerKt.sourceInformationMarkerEnd(composer);
                        ComposerKt.sourceInformationMarkerEnd(composer);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer.skipToGroupEnd();
                }
            }, $composer52, 54), $composer3, (($dirty2 >> 9) & 112) | 12582912 | (($dirty2 >> 9) & 896) | (($dirty2 >> 9) & 7168) | (($dirty2 >> 9) & 57344) | (458752 & ($dirty2 >> 9)), 64);
            if (ComposerKt.isTraceInProgress()) {
            }
        } else {
            $composer4.skipToGroupEnd();
            $composer3 = $composer4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3
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
                    BottomSheetScaffoldKt.m2080StandardBottomSheetw7I5h1o(state, peekHeight, sheetMaxWidth, sheetSwipeEnabled, shape, containerColor, contentColor, tonalElevation, shadowElevation, function2, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: BottomSheetScaffoldLayout-2E65NiM, reason: not valid java name */
    public static final void m2079BottomSheetScaffoldLayout2E65NiM(final Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final Function2<? super Composer, ? super Integer, Unit> function24, final Function0<Float> function0, final SheetState sheetState, final long containerColor, final long contentColor, Composer $composer, final int $changed) {
        Function2<? super Composer, ? super Integer, Unit> function25;
        long j;
        MultiContentMeasurePolicy value$iv;
        Object value$iv$iv;
        Function0<ComposeUiNode> function02;
        Composer $composer2 = $composer.startRestartGroup(-1651214892);
        ComposerKt.sourceInformation($composer2, "C(BottomSheetScaffoldLayout)P(4,8!2,7,5,6,2:c#ui.graphics.Color,3:c#ui.graphics.Color)359@16300L255,370@16635L1950,355@16183L2402:BottomSheetScaffold.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function25 = function22;
            $dirty |= $composer2.changedInstance(function25) ? 256 : 128;
        } else {
            function25 = function22;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer2.changedInstance(function23) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer2.changedInstance(function24) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer2.changedInstance(function0) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty |= $composer2.changed(sheetState) ? 1048576 : 524288;
        }
        if ((12582912 & $changed) == 0) {
            $dirty |= $composer2.changed(containerColor) ? 8388608 : 4194304;
        }
        if (($changed & 100663296) == 0) {
            j = contentColor;
            $dirty |= $composer2.changed(j) ? 67108864 : 33554432;
        } else {
            j = contentColor;
        }
        if (($dirty & 38347923) == 38347922 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1651214892, $dirty, -1, "androidx.compose.material3.BottomSheetScaffoldLayout (BottomSheetScaffold.kt:354)");
            }
            Function2[] function2Arr = new Function2[4];
            function2Arr[0] = function2 == null ? ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.m2243getLambda3$material3_release() : function2;
            final Function2<? super Composer, ? super Integer, Unit> function26 = function25;
            final long j2 = j;
            function2Arr[1] = ComposableLambdaKt.rememberComposableLambda(398963586, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1
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

                public final void invoke(Composer $composer3, int $changed2) {
                    ComposerKt.sourceInformation($composer3, "C360@16322L215:BottomSheetScaffold.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(398963586, $changed2, -1, "androidx.compose.material3.BottomSheetScaffoldLayout.<anonymous> (BottomSheetScaffold.kt:360)");
                        }
                        SurfaceKt.m2826SurfaceT9BRK9s(modifier, null, containerColor, j2, 0.0f, 0.0f, null, function26, $composer3, 0, 114);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }, $composer2, 54);
            function2Arr[2] = function23;
            function2Arr[3] = function24;
            List contents$iv = CollectionsKt.listOf((Object[]) function2Arr);
            ComposerKt.sourceInformationMarkerStart($composer2, 1221133327, "CC(remember):BottomSheetScaffold.kt#9igjgp");
            boolean invalid$iv = ((3670016 & $dirty) == 1048576) | ((458752 & $dirty) == 131072);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = new MultiContentMeasurePolicy() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2$1
                    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo762measure3p2s80s(MeasureScope $this$Layout, List<? extends List<? extends Measurable>> list, long constraints) {
                        int i;
                        Integer numValueOf;
                        List<? extends Measurable> list2 = list.get(0);
                        List<? extends Measurable> list3 = list.get(1);
                        List<? extends Measurable> list4 = list.get(2);
                        List<? extends Measurable> list5 = list.get(3);
                        final int layoutWidth = Constraints.m7458getMaxWidthimpl(constraints);
                        final int layoutHeight = Constraints.m7457getMaxHeightimpl(constraints);
                        long looseConstraints = Constraints.m7447copyZbe2FdA(constraints, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(constraints) : 0, (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(constraints) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(constraints) : 0, (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(constraints) : 0);
                        List target$iv = new ArrayList(list4.size());
                        int index$iv$iv = 0;
                        int size = list4.size();
                        while (index$iv$iv < size) {
                            Object item$iv$iv = list4.get(index$iv$iv);
                            int i2 = size;
                            Measurable it = (Measurable) item$iv$iv;
                            target$iv.add(it.mo6141measureBRTryo0(looseConstraints));
                            index$iv$iv++;
                            list5 = list5;
                            size = i2;
                        }
                        List<? extends Measurable> list6 = list5;
                        List sheetPlaceables = target$iv;
                        List<? extends Measurable> list7 = list2;
                        List target$iv2 = new ArrayList(list7.size());
                        int index$iv$iv2 = 0;
                        int size2 = list7.size();
                        while (index$iv$iv2 < size2) {
                            Object item$iv$iv2 = list7.get(index$iv$iv2);
                            List<? extends Measurable> list8 = list7;
                            Measurable it2 = (Measurable) item$iv$iv2;
                            target$iv2.add(it2.mo6141measureBRTryo0(looseConstraints));
                            index$iv$iv2++;
                            sheetPlaceables = sheetPlaceables;
                            list7 = list8;
                        }
                        final List sheetPlaceables2 = sheetPlaceables;
                        final List topBarPlaceables = target$iv2;
                        if (topBarPlaceables.isEmpty()) {
                            numValueOf = null;
                            i = 0;
                        } else {
                            i = 0;
                            Placeable it3 = (Placeable) topBarPlaceables.get(0);
                            numValueOf = Integer.valueOf(it3.getHeight());
                            int i$iv = 1;
                            int lastIndex = CollectionsKt.getLastIndex(topBarPlaceables);
                            if (1 <= lastIndex) {
                                while (true) {
                                    Placeable it4 = (Placeable) topBarPlaceables.get(i$iv);
                                    Integer numValueOf2 = Integer.valueOf(it4.getHeight());
                                    if (numValueOf2.compareTo(numValueOf) > 0) {
                                        numValueOf = numValueOf2;
                                    }
                                    if (i$iv == lastIndex) {
                                        break;
                                    }
                                    i$iv++;
                                }
                            }
                        }
                        Integer num = numValueOf;
                        final int topBarHeight = num != null ? num.intValue() : i;
                        long bodyConstraints = Constraints.m7447copyZbe2FdA(looseConstraints, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(looseConstraints) : 0, (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(looseConstraints) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(looseConstraints) : 0, (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(looseConstraints) : layoutHeight - topBarHeight);
                        List target$iv3 = new ArrayList(list3.size());
                        int index$iv$iv3 = 0;
                        for (int size3 = list3.size(); index$iv$iv3 < size3; size3 = size3) {
                            Object item$iv$iv3 = list3.get(index$iv$iv3);
                            int index$iv$iv4 = index$iv$iv3;
                            Measurable it5 = (Measurable) item$iv$iv3;
                            target$iv3.add(it5.mo6141measureBRTryo0(bodyConstraints));
                            index$iv$iv3 = index$iv$iv4 + 1;
                        }
                        final List bodyPlaceables = target$iv3;
                        List target$iv4 = new ArrayList(list6.size());
                        int index$iv$iv5 = 0;
                        for (int size4 = list6.size(); index$iv$iv5 < size4; size4 = size4) {
                            Object item$iv$iv4 = list6.get(index$iv$iv5);
                            int index$iv$iv6 = index$iv$iv5;
                            Measurable it6 = (Measurable) item$iv$iv4;
                            target$iv4.add(it6.mo6141measureBRTryo0(looseConstraints));
                            index$iv$iv5 = index$iv$iv6 + 1;
                        }
                        final List snackbarPlaceables = target$iv4;
                        final SheetState sheetState2 = sheetState;
                        final Function0<Float> function03 = function0;
                        return MeasureScope.layout$default($this$Layout, layoutWidth, layoutHeight, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2$1.1

                            /* JADX INFO: renamed from: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2$1$1$WhenMappings */
                            /* JADX INFO: compiled from: BottomSheetScaffold.kt */
                            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                            public /* synthetic */ class WhenMappings {
                                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                                static {
                                    int[] iArr = new int[SheetValue.values().length];
                                    try {
                                        iArr[SheetValue.PartiallyExpanded.ordinal()] = 1;
                                    } catch (NoSuchFieldError e) {
                                    }
                                    try {
                                        iArr[SheetValue.Expanded.ordinal()] = 2;
                                    } catch (NoSuchFieldError e2) {
                                    }
                                    try {
                                        iArr[SheetValue.Hidden.ordinal()] = 3;
                                    } catch (NoSuchFieldError e3) {
                                    }
                                    $EnumSwitchMapping$0 = iArr;
                                }
                            }

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                                invoke2(placementScope);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Placeable.PlacementScope $this$layout) {
                                Integer numValueOf3;
                                Integer numValueOf4;
                                int iRoundToInt;
                                List<Placeable> list9 = sheetPlaceables2;
                                Integer numValueOf5 = null;
                                if (list9.isEmpty()) {
                                    numValueOf3 = null;
                                } else {
                                    Placeable it7 = list9.get(0);
                                    numValueOf3 = Integer.valueOf(it7.getWidth());
                                    int i$iv2 = 1;
                                    int lastIndex2 = CollectionsKt.getLastIndex(list9);
                                    if (1 <= lastIndex2) {
                                        while (true) {
                                            Placeable it8 = list9.get(i$iv2);
                                            Integer numValueOf6 = Integer.valueOf(it8.getWidth());
                                            if (numValueOf6.compareTo(numValueOf3) > 0) {
                                                numValueOf3 = numValueOf6;
                                            }
                                            if (i$iv2 == lastIndex2) {
                                                break;
                                            } else {
                                                i$iv2++;
                                            }
                                        }
                                    }
                                }
                                Integer num2 = numValueOf3;
                                int sheetWidth = num2 != null ? num2.intValue() : 0;
                                int sheetOffsetX = Integer.max(0, (layoutWidth - sheetWidth) / 2);
                                List<Placeable> list10 = snackbarPlaceables;
                                if (list10.isEmpty()) {
                                    numValueOf4 = null;
                                } else {
                                    Placeable it9 = list10.get(0);
                                    numValueOf4 = Integer.valueOf(it9.getWidth());
                                    int i$iv3 = 1;
                                    int lastIndex3 = CollectionsKt.getLastIndex(list10);
                                    if (1 <= lastIndex3) {
                                        while (true) {
                                            Placeable it10 = list10.get(i$iv3);
                                            Integer numValueOf7 = Integer.valueOf(it10.getWidth());
                                            if (numValueOf7.compareTo(numValueOf4) > 0) {
                                                numValueOf4 = numValueOf7;
                                            }
                                            if (i$iv3 == lastIndex3) {
                                                break;
                                            } else {
                                                i$iv3++;
                                            }
                                        }
                                    }
                                }
                                Integer num3 = numValueOf4;
                                int snackbarWidth = num3 != null ? num3.intValue() : 0;
                                List<Placeable> list11 = snackbarPlaceables;
                                if (!list11.isEmpty()) {
                                    Placeable it11 = list11.get(0);
                                    numValueOf5 = Integer.valueOf(it11.getHeight());
                                    int i$iv4 = 1;
                                    int lastIndex4 = CollectionsKt.getLastIndex(list11);
                                    if (1 <= lastIndex4) {
                                        while (true) {
                                            Placeable it12 = list11.get(i$iv4);
                                            Integer numValueOf8 = Integer.valueOf(it12.getHeight());
                                            if (numValueOf8.compareTo(numValueOf5) > 0) {
                                                numValueOf5 = numValueOf8;
                                            }
                                            if (i$iv4 == lastIndex4) {
                                                break;
                                            } else {
                                                i$iv4++;
                                            }
                                        }
                                    }
                                }
                                Integer num4 = numValueOf5;
                                int snackbarHeight = num4 != null ? num4.intValue() : 0;
                                int snackbarOffsetX = (layoutWidth - snackbarWidth) / 2;
                                switch (WhenMappings.$EnumSwitchMapping$0[sheetState2.getCurrentValue().ordinal()]) {
                                    case 1:
                                        iRoundToInt = MathKt.roundToInt(function03.invoke().floatValue()) - snackbarHeight;
                                        break;
                                    case 2:
                                    case 3:
                                        iRoundToInt = layoutHeight - snackbarHeight;
                                        break;
                                    default:
                                        throw new NoWhenBranchMatchedException();
                                }
                                int index$iv = iRoundToInt;
                                List<Placeable> list12 = bodyPlaceables;
                                int i3 = topBarHeight;
                                int index$iv2 = 0;
                                int size5 = list12.size();
                                while (index$iv2 < size5) {
                                    Object item$iv = list12.get(index$iv2);
                                    int i4 = size5;
                                    Placeable it13 = (Placeable) item$iv;
                                    Placeable.PlacementScope.placeRelative$default($this$layout, it13, 0, i3, 0.0f, 4, null);
                                    index$iv2++;
                                    size5 = i4;
                                }
                                List<Placeable> list13 = topBarPlaceables;
                                int size6 = list13.size();
                                for (int index$iv3 = 0; index$iv3 < size6; index$iv3++) {
                                    Object item$iv2 = list13.get(index$iv3);
                                    Placeable it14 = (Placeable) item$iv2;
                                    Placeable.PlacementScope.placeRelative$default($this$layout, it14, 0, 0, 0.0f, 4, null);
                                }
                                List<Placeable> list14 = sheetPlaceables2;
                                int size7 = list14.size();
                                for (int index$iv4 = 0; index$iv4 < size7; index$iv4++) {
                                    Object item$iv3 = list14.get(index$iv4);
                                    Placeable it15 = (Placeable) item$iv3;
                                    Placeable.PlacementScope.placeRelative$default($this$layout, it15, sheetOffsetX, 0, 0.0f, 4, null);
                                }
                                List<Placeable> list15 = snackbarPlaceables;
                                int index$iv5 = 0;
                                int size8 = list15.size();
                                while (index$iv5 < size8) {
                                    Object item$iv4 = list15.get(index$iv5);
                                    int snackbarOffsetX2 = size8;
                                    Placeable it16 = (Placeable) item$iv4;
                                    int snackbarOffsetX3 = snackbarOffsetX;
                                    int snackbarOffsetY = index$iv;
                                    Placeable.PlacementScope.placeRelative$default($this$layout, it16, snackbarOffsetX3, snackbarOffsetY, 0.0f, 4, null);
                                    index$iv5++;
                                    size8 = snackbarOffsetX2;
                                    snackbarOffsetX = snackbarOffsetX3;
                                    index$iv = snackbarOffsetY;
                                }
                            }
                        }, 4, null);
                    }
                };
                $composer2.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            MultiContentMeasurePolicy measurePolicy$iv = (MultiContentMeasurePolicy) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerStart($composer2, 1399185516, "CC(Layout)P(!1,2)173@6976L62,170@6862L182:Layout.kt#80mrfh");
            Modifier modifier$iv = Modifier.INSTANCE;
            Function2<Composer, Integer, Unit> function2CombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts(contents$iv);
            ComposerKt.sourceInformationMarkerStart($composer2, -290761997, "CC(remember):Layout.kt#9igjgp");
            boolean invalid$iv$iv = (((0 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer2.changed(measurePolicy$iv)) || (0 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256;
            Object it$iv$iv = $composer2.rememberedValue();
            if (invalid$iv$iv || it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = MultiContentMeasurePolicyKt.createMeasurePolicy(measurePolicy$iv);
                $composer2.updateRememberedValue(value$iv$iv);
            } else {
                value$iv$iv = it$iv$iv;
            }
            MeasurePolicy measurePolicy$iv$iv = (MeasurePolicy) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            int $changed$iv$iv = 0 & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv = $composer2.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                function02 = constructor;
                $composer2.createNode(function02);
            } else {
                function02 = constructor;
                $composer2.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
            }
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            function2CombineAsVirtualLayouts.invoke($composer2, Integer.valueOf(($changed$iv$iv$iv >> 6) & 14));
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$3
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
                    BottomSheetScaffoldKt.m2079BottomSheetScaffoldLayout2E65NiM(modifier, function2, function22, function23, function24, function0, sheetState, containerColor, contentColor, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }
}
