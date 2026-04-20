package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.material3.internal.MutableWindowInsets;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Scaffold.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u001a±\u0001\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0013\b\u0002\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\t2\u0013\b\u0002\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\t2\u0013\b\u0002\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\t2\u0013\b\u0002\u0010\f\u001a\r\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\t2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u0017\u0010\u0014\u001a\u0013\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00040\u0015¢\u0006\u0002\b\tH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u0087\u0001\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u000e2\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\t2\u0017\u0010\u0014\u001a\u0013\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00040\u0015¢\u0006\u0002\b\t2\u0011\u0010\u001b\u001a\r\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\t2\u0011\u0010\u001c\u001a\r\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\b\tH\u0003ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u001f"}, d2 = {"FabSpacing", "Landroidx/compose/ui/unit/Dp;", "F", "Scaffold", "", "modifier", "Landroidx/compose/ui/Modifier;", "topBar", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "bottomBar", "snackbarHost", "floatingActionButton", "floatingActionButtonPosition", "Landroidx/compose/material3/FabPosition;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "contentWindowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/PaddingValues;", "Scaffold-TvnljyQ", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "ScaffoldLayout", "fabPosition", "snackbar", "fab", "ScaffoldLayout-FMILGgc", "(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ScaffoldKt {
    private static final float FabSpacing = Dp.m7505constructorimpl(16);

    /* JADX INFO: renamed from: Scaffold-TvnljyQ, reason: not valid java name */
    public static final void m2691ScaffoldTvnljyQ(Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, Unit> function22, Function2<? super Composer, ? super Integer, Unit> function23, Function2<? super Composer, ? super Integer, Unit> function24, int floatingActionButtonPosition, long containerColor, long contentColor, WindowInsets contentWindowInsets, final Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Function2<? super Composer, ? super Integer, Unit> function2M2257getLambda1$material3_release;
        Function2<? super Composer, ? super Integer, Unit> function2M2258getLambda2$material3_release;
        Function2<? super Composer, ? super Integer, Unit> function2M2259getLambda3$material3_release;
        Function2<? super Composer, ? super Integer, Unit> function2M2260getLambda4$material3_release;
        int $dirty;
        int i2;
        int floatingActionButtonPosition2;
        int i3;
        int i4;
        long containerColor2;
        long contentColor2;
        final WindowInsets contentWindowInsets2;
        int $dirty2;
        int i5;
        long containerColor3;
        final int floatingActionButtonPosition3;
        Object value$iv;
        Object value$iv2;
        Composer $composer2;
        final Modifier modifier3;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        final WindowInsets contentWindowInsets3;
        final Function2<? super Composer, ? super Integer, Unit> function26;
        final long contentColor3;
        final int floatingActionButtonPosition4;
        final Function2<? super Composer, ? super Integer, Unit> function27;
        final long containerColor4;
        final Function2<? super Composer, ? super Integer, Unit> function28;
        int $dirty3;
        Composer $composer3 = $composer.startRestartGroup(-1219521777);
        ComposerKt.sourceInformation($composer3, "C(Scaffold)P(7,9!1,8,5,6:c#material3.FabPosition,1:c#ui.graphics.Color,3:c#ui.graphics.Color,4)90@4654L11,91@4704L31,92@4794L19,95@4889L74,98@5047L224,104@5347L314,96@4968L693:Scaffold.kt#uh7d8r");
        int $dirty4 = $changed;
        int i6 = i & 1;
        if (i6 != 0) {
            $dirty4 |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty4 |= $composer3.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        int i7 = i & 2;
        if (i7 != 0) {
            $dirty4 |= 48;
            function2M2257getLambda1$material3_release = function2;
        } else if (($changed & 48) == 0) {
            function2M2257getLambda1$material3_release = function2;
            $dirty4 |= $composer3.changedInstance(function2M2257getLambda1$material3_release) ? 32 : 16;
        } else {
            function2M2257getLambda1$material3_release = function2;
        }
        int i8 = i & 4;
        if (i8 != 0) {
            $dirty4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            function2M2258getLambda2$material3_release = function22;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function2M2258getLambda2$material3_release = function22;
            $dirty4 |= $composer3.changedInstance(function2M2258getLambda2$material3_release) ? 256 : 128;
        } else {
            function2M2258getLambda2$material3_release = function22;
        }
        int i9 = i & 8;
        if (i9 != 0) {
            $dirty4 |= 3072;
            function2M2259getLambda3$material3_release = function23;
        } else if (($changed & 3072) == 0) {
            function2M2259getLambda3$material3_release = function23;
            $dirty4 |= $composer3.changedInstance(function2M2259getLambda3$material3_release) ? 2048 : 1024;
        } else {
            function2M2259getLambda3$material3_release = function23;
        }
        int i10 = i & 16;
        if (i10 != 0) {
            $dirty4 |= 24576;
            function2M2260getLambda4$material3_release = function24;
        } else if (($changed & 24576) == 0) {
            function2M2260getLambda4$material3_release = function24;
            $dirty4 |= $composer3.changedInstance(function2M2260getLambda4$material3_release) ? 16384 : 8192;
        } else {
            function2M2260getLambda4$material3_release = function24;
        }
        int i11 = i & 32;
        if (i11 != 0) {
            $dirty4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty4 |= $composer3.changed(floatingActionButtonPosition) ? 131072 : 65536;
        }
        if (($changed & 1572864) == 0) {
            if ((i & 64) == 0) {
                $dirty3 = $dirty4;
                i2 = i6;
                int i12 = $composer3.changed(containerColor) ? 1048576 : 524288;
                $dirty = $dirty3 | i12;
            } else {
                $dirty3 = $dirty4;
                i2 = i6;
            }
            $dirty = $dirty3 | i12;
        } else {
            $dirty = $dirty4;
            i2 = i6;
        }
        if (($changed & 12582912) == 0) {
            $dirty |= ((i & 128) == 0 && $composer3.changed(contentColor)) ? 8388608 : 4194304;
        }
        if (($changed & 100663296) == 0) {
            $dirty |= ((i & 256) == 0 && $composer3.changed(contentWindowInsets)) ? 67108864 : 33554432;
        }
        if ((i & 512) != 0) {
            $dirty |= 805306368;
        } else if (($changed & 805306368) == 0) {
            $dirty |= $composer3.changedInstance(function3) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        if (($dirty & 306783379) == 306783378 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            contentWindowInsets3 = contentWindowInsets;
            $composer2 = $composer3;
            modifier3 = modifier2;
            function25 = function2M2257getLambda1$material3_release;
            function27 = function2M2258getLambda2$material3_release;
            function26 = function2M2259getLambda3$material3_release;
            floatingActionButtonPosition4 = floatingActionButtonPosition;
            containerColor4 = containerColor;
            contentColor3 = contentColor;
            function28 = function2M2260getLambda4$material3_release;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i2 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i7 != 0) {
                    function2M2257getLambda1$material3_release = ComposableSingletons$ScaffoldKt.INSTANCE.m2257getLambda1$material3_release();
                }
                if (i8 != 0) {
                    function2M2258getLambda2$material3_release = ComposableSingletons$ScaffoldKt.INSTANCE.m2258getLambda2$material3_release();
                }
                if (i9 != 0) {
                    function2M2259getLambda3$material3_release = ComposableSingletons$ScaffoldKt.INSTANCE.m2259getLambda3$material3_release();
                }
                if (i10 != 0) {
                    function2M2260getLambda4$material3_release = ComposableSingletons$ScaffoldKt.INSTANCE.m2260getLambda4$material3_release();
                }
                floatingActionButtonPosition2 = i11 != 0 ? FabPosition.INSTANCE.m2388getEndERTFSPs() : floatingActionButtonPosition;
                if ((i & 64) != 0) {
                    $dirty &= -3670017;
                    i3 = -234881025;
                    i4 = -29360129;
                    containerColor2 = MaterialTheme.INSTANCE.getColorScheme($composer3, 6).getBackground();
                } else {
                    i3 = -234881025;
                    i4 = -29360129;
                    containerColor2 = containerColor;
                }
                if ((i & 128) != 0) {
                    contentColor2 = ColorSchemeKt.m2213contentColorForek8zF_U(containerColor2, $composer3, ($dirty >> 18) & 14);
                    $dirty &= i4;
                } else {
                    contentColor2 = contentColor;
                }
                if ((i & 256) != 0) {
                    contentWindowInsets2 = ScaffoldDefaults.INSTANCE.getContentWindowInsets($composer3, 6);
                    $dirty2 = $dirty & i3;
                    long j = containerColor2;
                    i5 = 12582912;
                    containerColor3 = j;
                } else {
                    contentWindowInsets2 = contentWindowInsets;
                    $dirty2 = $dirty;
                    long j2 = containerColor2;
                    i5 = 12582912;
                    containerColor3 = j2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 64) != 0) {
                    $dirty &= -3670017;
                }
                if ((i & 128) != 0) {
                    $dirty &= -29360129;
                }
                if ((i & 256) != 0) {
                    contentColor2 = contentColor;
                    contentWindowInsets2 = contentWindowInsets;
                    $dirty2 = $dirty & (-234881025);
                    i5 = 12582912;
                    floatingActionButtonPosition2 = floatingActionButtonPosition;
                    containerColor3 = containerColor;
                } else {
                    floatingActionButtonPosition2 = floatingActionButtonPosition;
                    contentColor2 = contentColor;
                    contentWindowInsets2 = contentWindowInsets;
                    $dirty2 = $dirty;
                    i5 = 12582912;
                    containerColor3 = containerColor;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1219521777, $dirty2, -1, "androidx.compose.material3.Scaffold (Scaffold.kt:94)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, -1794939901, "CC(remember):Scaffold.kt#9igjgp");
            boolean invalid$iv = (((234881024 & $dirty2) ^ 100663296) > 67108864 && $composer3.changed(contentWindowInsets2)) || ($dirty2 & 100663296) == 67108864;
            int i13 = i5;
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                floatingActionButtonPosition3 = floatingActionButtonPosition2;
                value$iv = new MutableWindowInsets(contentWindowInsets2);
                $composer3.updateRememberedValue(value$iv);
            } else {
                floatingActionButtonPosition3 = floatingActionButtonPosition2;
                value$iv = it$iv;
            }
            final MutableWindowInsets safeInsets = (MutableWindowInsets) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -1794934695, "CC(remember):Scaffold.kt#9igjgp");
            boolean invalid$iv2 = $composer3.changed(safeInsets) | ((((234881024 & $dirty2) ^ 100663296) > 67108864 && $composer3.changed(contentWindowInsets2)) || ($dirty2 & 100663296) == 67108864);
            Object it$iv2 = $composer3.rememberedValue();
            if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = (Function1) new Function1<WindowInsets, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(WindowInsets windowInsets) {
                        invoke2(windowInsets);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(WindowInsets consumedWindowInsets) {
                        safeInsets.setInsets(WindowInsetsKt.exclude(contentWindowInsets2, consumedWindowInsets));
                    }
                };
                $composer3.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final Function2<? super Composer, ? super Integer, Unit> function29 = function2M2257getLambda1$material3_release;
            final Function2<? super Composer, ? super Integer, Unit> function210 = function2M2258getLambda2$material3_release;
            final Function2<? super Composer, ? super Integer, Unit> function211 = function2M2259getLambda3$material3_release;
            final Function2<? super Composer, ? super Integer, Unit> function212 = function2M2260getLambda4$material3_release;
            int floatingActionButtonPosition5 = floatingActionButtonPosition3;
            long contentColor4 = contentColor2;
            $composer2 = $composer3;
            SurfaceKt.m2826SurfaceT9BRK9s(WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifier2, (Function1) value$iv2), null, containerColor3, contentColor4, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1979205334, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
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
                    ComposerKt.sourceInformation($composer4, "C105@5357L298:Scaffold.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1979205334, $changed2, -1, "androidx.compose.material3.Scaffold.<anonymous> (Scaffold.kt:105)");
                        }
                        ScaffoldKt.m2692ScaffoldLayoutFMILGgc(floatingActionButtonPosition3, function29, function3, function211, function212, safeInsets, function210, $composer4, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }, $composer3, 54), $composer2, (($dirty2 >> 12) & 896) | i13 | (($dirty2 >> 12) & 7168), 114);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier2;
            function25 = function2M2257getLambda1$material3_release;
            contentWindowInsets3 = contentWindowInsets2;
            function26 = function2M2259getLambda3$material3_release;
            contentColor3 = contentColor4;
            floatingActionButtonPosition4 = floatingActionButtonPosition5;
            function27 = function2M2258getLambda2$material3_release;
            containerColor4 = containerColor3;
            function28 = function2M2260getLambda4$material3_release;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$3
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

                public final void invoke(Composer composer, int i14) {
                    ScaffoldKt.m2691ScaffoldTvnljyQ(modifier3, function25, function27, function26, function28, floatingActionButtonPosition4, containerColor4, contentColor3, contentWindowInsets3, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ScaffoldLayout-FMILGgc, reason: not valid java name */
    public static final void m2692ScaffoldLayoutFMILGgc(final int fabPosition, final Function2<? super Composer, ? super Integer, Unit> function2, final Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function3, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final WindowInsets contentWindowInsets, final Function2<? super Composer, ? super Integer, Unit> function24, Composer $composer, final int $changed) {
        final int i;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function32;
        final Function2<? super Composer, ? super Integer, Unit> function26;
        final Function2<? super Composer, ? super Integer, Unit> function27;
        WindowInsets windowInsets;
        Function2<? super Composer, ? super Integer, Unit> function28;
        int i2;
        Composer $composer2 = $composer.startRestartGroup(-975511942);
        ComposerKt.sourceInformation($composer2, "C(ScaffoldLayout)P(4:c#material3.FabPosition,6,1,5,3,2)139@6582L6951,139@6565L6968:Scaffold.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            i = fabPosition;
            $dirty |= $composer2.changed(i) ? 4 : 2;
        } else {
            i = fabPosition;
        }
        if (($changed & 48) == 0) {
            function25 = function2;
            $dirty |= $composer2.changedInstance(function25) ? 32 : 16;
        } else {
            function25 = function2;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function32 = function3;
            $dirty |= $composer2.changedInstance(function32) ? 256 : 128;
        } else {
            function32 = function3;
        }
        if (($changed & 3072) == 0) {
            function26 = function22;
            $dirty |= $composer2.changedInstance(function26) ? 2048 : 1024;
        } else {
            function26 = function22;
        }
        if (($changed & 24576) == 0) {
            function27 = function23;
            $dirty |= $composer2.changedInstance(function27) ? 16384 : 8192;
        } else {
            function27 = function23;
        }
        if ((196608 & $changed) == 0) {
            windowInsets = contentWindowInsets;
            $dirty |= $composer2.changed(windowInsets) ? 131072 : 65536;
        } else {
            windowInsets = contentWindowInsets;
        }
        if (($changed & 1572864) == 0) {
            function28 = function24;
            $dirty |= $composer2.changedInstance(function28) ? 1048576 : 524288;
        } else {
            function28 = function24;
        }
        if (($dirty & 599187) != 599186 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-975511942, $dirty, -1, "androidx.compose.material3.ScaffoldLayout (Scaffold.kt:138)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 1690368138, "CC(remember):Scaffold.kt#9igjgp");
            boolean invalid$iv = (($dirty & 112) == 32) | (($dirty & 7168) == 2048) | ((458752 & $dirty) == 131072) | ((57344 & $dirty) == 16384) | (($dirty & 14) == 4) | ((3670016 & $dirty) == 1048576) | (($dirty & 896) == 256);
            Object value$iv = $composer2.rememberedValue();
            if (invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                final Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function33 = function32;
                final Function2<? super Composer, ? super Integer, Unit> function29 = function28;
                i2 = 0;
                final WindowInsets windowInsets2 = windowInsets;
                value$iv = new Function2<SubcomposeMeasureScope, Constraints, MeasureResult>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
                        return m2694invoke0kLqBqw(subcomposeMeasureScope, constraints.getValue());
                    }

                    /* JADX INFO: renamed from: invoke-0kLqBqw, reason: not valid java name */
                    public final MeasureResult m2694invoke0kLqBqw(final SubcomposeMeasureScope $this$SubcomposeLayout, long constraints) {
                        Object maxElem$iv;
                        Object maxElem$iv2;
                        Object maxElem$iv3;
                        final int layoutWidth;
                        FabPlacement fabPlacement;
                        Object maxElem$iv4;
                        Object maxElem$iv5;
                        Object maxElem$iv6;
                        int layoutWidth2 = Constraints.m7458getMaxWidthimpl(constraints);
                        final int layoutHeight = Constraints.m7457getMaxHeightimpl(constraints);
                        long looseConstraints = Constraints.m7447copyZbe2FdA(constraints, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(constraints) : 0, (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(constraints) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(constraints) : 0, (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(constraints) : 0);
                        List<Measurable> listSubcompose = $this$SubcomposeLayout.subcompose(ScaffoldLayoutContent.TopBar, function25);
                        int $i$f$fastMap = 0;
                        List target$iv = new ArrayList(listSubcompose.size());
                        int index$iv$iv = 0;
                        int size = listSubcompose.size();
                        while (index$iv$iv < size) {
                            Object item$iv$iv = listSubcompose.get(index$iv$iv);
                            int $i$f$fastMap2 = $i$f$fastMap;
                            Measurable it = (Measurable) item$iv$iv;
                            target$iv.add(it.mo6141measureBRTryo0(looseConstraints));
                            index$iv$iv++;
                            listSubcompose = listSubcompose;
                            $i$f$fastMap = $i$f$fastMap2;
                        }
                        List topBarPlaceables = target$iv;
                        if (topBarPlaceables.isEmpty()) {
                            maxElem$iv = null;
                        } else {
                            maxElem$iv = topBarPlaceables.get(0);
                            Placeable it2 = (Placeable) maxElem$iv;
                            int maxValue$iv = it2.getHeight();
                            int i$iv = 1;
                            int lastIndex = CollectionsKt.getLastIndex(topBarPlaceables);
                            if (1 <= lastIndex) {
                                while (true) {
                                    Object e$iv = topBarPlaceables.get(i$iv);
                                    Placeable it3 = (Placeable) e$iv;
                                    int height = it3.getHeight();
                                    if (maxValue$iv < height) {
                                        maxElem$iv = e$iv;
                                        maxValue$iv = height;
                                    }
                                    if (i$iv == lastIndex) {
                                        break;
                                    }
                                    i$iv++;
                                }
                            }
                        }
                        Placeable placeable = (Placeable) maxElem$iv;
                        int topBarHeight = placeable != null ? placeable.getHeight() : 0;
                        List<Measurable> listSubcompose2 = $this$SubcomposeLayout.subcompose(ScaffoldLayoutContent.Snackbar, function26);
                        WindowInsets windowInsets3 = windowInsets2;
                        int $i$f$fastMap3 = 0;
                        List target$iv2 = new ArrayList(listSubcompose2.size());
                        int index$iv$iv2 = 0;
                        int size2 = listSubcompose2.size();
                        while (index$iv$iv2 < size2) {
                            Object item$iv$iv2 = listSubcompose2.get(index$iv$iv2);
                            List topBarPlaceables2 = topBarPlaceables;
                            Measurable it4 = (Measurable) item$iv$iv2;
                            int topBarHeight2 = topBarHeight;
                            int $i$f$fastMap4 = $i$f$fastMap3;
                            int leftInset = windowInsets3.getLeft($this$SubcomposeLayout, $this$SubcomposeLayout.getLayoutDirection());
                            int i3 = size2;
                            int rightInset = windowInsets3.getRight($this$SubcomposeLayout, $this$SubcomposeLayout.getLayoutDirection());
                            int bottomInset = windowInsets3.getBottom($this$SubcomposeLayout);
                            WindowInsets windowInsets4 = windowInsets3;
                            int i4 = (-leftInset) - rightInset;
                            int leftInset2 = -bottomInset;
                            target$iv2.add(it4.mo6141measureBRTryo0(ConstraintsKt.m7477offsetNN6EwU(looseConstraints, i4, leftInset2)));
                            index$iv$iv2++;
                            listSubcompose2 = listSubcompose2;
                            topBarPlaceables = topBarPlaceables2;
                            topBarHeight = topBarHeight2;
                            $i$f$fastMap3 = $i$f$fastMap4;
                            size2 = i3;
                            windowInsets3 = windowInsets4;
                        }
                        final List topBarPlaceables3 = topBarPlaceables;
                        final int topBarHeight3 = topBarHeight;
                        final List snackbarPlaceables = target$iv2;
                        if (snackbarPlaceables.isEmpty()) {
                            maxElem$iv2 = null;
                        } else {
                            maxElem$iv2 = snackbarPlaceables.get(0);
                            Placeable it5 = (Placeable) maxElem$iv2;
                            int maxValue$iv2 = it5.getHeight();
                            int i$iv2 = 1;
                            int lastIndex2 = CollectionsKt.getLastIndex(snackbarPlaceables);
                            if (1 <= lastIndex2) {
                                while (true) {
                                    Object e$iv2 = snackbarPlaceables.get(i$iv2);
                                    Placeable it6 = (Placeable) e$iv2;
                                    int v$iv = it6.getHeight();
                                    if (maxValue$iv2 < v$iv) {
                                        maxElem$iv2 = e$iv2;
                                        maxValue$iv2 = v$iv;
                                    }
                                    if (i$iv2 == lastIndex2) {
                                        break;
                                    }
                                    i$iv2++;
                                }
                            }
                        }
                        Placeable placeable2 = (Placeable) maxElem$iv2;
                        int snackbarHeight = placeable2 != null ? placeable2.getHeight() : 0;
                        if (snackbarPlaceables.isEmpty()) {
                            maxElem$iv3 = null;
                        } else {
                            maxElem$iv3 = snackbarPlaceables.get(0);
                            Placeable it7 = (Placeable) maxElem$iv3;
                            int maxValue$iv3 = it7.getWidth();
                            int i$iv3 = 1;
                            int lastIndex3 = CollectionsKt.getLastIndex(snackbarPlaceables);
                            if (1 <= lastIndex3) {
                                while (true) {
                                    Object e$iv3 = snackbarPlaceables.get(i$iv3);
                                    Placeable it8 = (Placeable) e$iv3;
                                    int v$iv2 = it8.getWidth();
                                    if (maxValue$iv3 < v$iv2) {
                                        maxElem$iv3 = e$iv3;
                                        maxValue$iv3 = v$iv2;
                                    }
                                    if (i$iv3 == lastIndex3) {
                                        break;
                                    }
                                    i$iv3++;
                                }
                            }
                        }
                        Placeable placeable3 = (Placeable) maxElem$iv3;
                        final int snackbarWidth = placeable3 != null ? placeable3.getWidth() : 0;
                        List<Measurable> listSubcompose3 = $this$SubcomposeLayout.subcompose(ScaffoldLayoutContent.Fab, function27);
                        WindowInsets windowInsets5 = windowInsets2;
                        int $i$f$fastMapNotNull = 0;
                        ArrayList target$iv3 = new ArrayList(listSubcompose3.size());
                        int index$iv$iv3 = 0;
                        int size3 = listSubcompose3.size();
                        while (true) {
                            layoutWidth = layoutWidth2;
                            if (index$iv$iv3 >= size3) {
                                break;
                            }
                            Object item$iv$iv3 = listSubcompose3.get(index$iv$iv3);
                            Measurable measurable = (Measurable) item$iv$iv3;
                            List<Measurable> list = listSubcompose3;
                            int $i$f$fastMapNotNull2 = $i$f$fastMapNotNull;
                            int leftInset3 = windowInsets5.getLeft($this$SubcomposeLayout, $this$SubcomposeLayout.getLayoutDirection());
                            ArrayList target$iv4 = target$iv3;
                            int rightInset2 = windowInsets5.getRight($this$SubcomposeLayout, $this$SubcomposeLayout.getLayoutDirection());
                            int bottomInset2 = windowInsets5.getBottom($this$SubcomposeLayout);
                            WindowInsets windowInsets6 = windowInsets5;
                            int i5 = (-leftInset3) - rightInset2;
                            int leftInset4 = -bottomInset2;
                            Placeable it9 = measurable.mo6141measureBRTryo0(ConstraintsKt.m7477offsetNN6EwU(looseConstraints, i5, leftInset4));
                            if (!((it9.getHeight() == 0 || it9.getWidth() == 0) ? false : true)) {
                                it9 = null;
                            }
                            if (it9 != null) {
                                target$iv4.add(it9);
                            }
                            index$iv$iv3++;
                            layoutWidth2 = layoutWidth;
                            listSubcompose3 = list;
                            $i$f$fastMapNotNull = $i$f$fastMapNotNull2;
                            target$iv3 = target$iv4;
                            windowInsets5 = windowInsets6;
                        }
                        final ArrayList fabPlaceables = target$iv3;
                        if (fabPlaceables.isEmpty()) {
                            fabPlacement = null;
                        } else {
                            if (fabPlaceables.isEmpty()) {
                                maxElem$iv5 = null;
                            } else {
                                maxElem$iv5 = fabPlaceables.get(0);
                                Placeable it10 = (Placeable) maxElem$iv5;
                                int maxValue$iv4 = it10.getWidth();
                                int i$iv4 = 1;
                                int lastIndex4 = CollectionsKt.getLastIndex(fabPlaceables);
                                if (1 <= lastIndex4) {
                                    while (true) {
                                        Object e$iv4 = fabPlaceables.get(i$iv4);
                                        Placeable it11 = (Placeable) e$iv4;
                                        int v$iv3 = it11.getWidth();
                                        if (maxValue$iv4 < v$iv3) {
                                            maxElem$iv5 = e$iv4;
                                            maxValue$iv4 = v$iv3;
                                        }
                                        if (i$iv4 == lastIndex4) {
                                            break;
                                        }
                                        i$iv4++;
                                    }
                                }
                            }
                            Intrinsics.checkNotNull(maxElem$iv5);
                            int fabWidth = ((Placeable) maxElem$iv5).getWidth();
                            List $this$fastMaxBy$iv = fabPlaceables;
                            if ($this$fastMaxBy$iv.isEmpty()) {
                                maxElem$iv6 = null;
                            } else {
                                maxElem$iv6 = $this$fastMaxBy$iv.get(0);
                                Placeable it12 = (Placeable) maxElem$iv6;
                                int maxValue$iv5 = it12.getHeight();
                                int i$iv5 = 1;
                                int lastIndex5 = CollectionsKt.getLastIndex($this$fastMaxBy$iv);
                                if (1 <= lastIndex5) {
                                    while (true) {
                                        Object e$iv5 = $this$fastMaxBy$iv.get(i$iv5);
                                        Placeable it13 = (Placeable) e$iv5;
                                        int height2 = it13.getHeight();
                                        List $this$fastMaxBy$iv2 = $this$fastMaxBy$iv;
                                        if (maxValue$iv5 < height2) {
                                            maxElem$iv6 = e$iv5;
                                            maxValue$iv5 = height2;
                                        }
                                        if (i$iv5 == lastIndex5) {
                                            break;
                                        }
                                        i$iv5++;
                                        $this$fastMaxBy$iv = $this$fastMaxBy$iv2;
                                    }
                                }
                            }
                            Intrinsics.checkNotNull(maxElem$iv6);
                            int fabHeight = ((Placeable) maxElem$iv6).getHeight();
                            int i6 = i;
                            int fabLeftOffset = FabPosition.m2383equalsimpl0(i6, FabPosition.INSTANCE.m2390getStartERTFSPs()) ? $this$SubcomposeLayout.getLayoutDirection() == LayoutDirection.Ltr ? $this$SubcomposeLayout.mo399roundToPx0680j_4(ScaffoldKt.FabSpacing) : (layoutWidth - $this$SubcomposeLayout.mo399roundToPx0680j_4(ScaffoldKt.FabSpacing)) - fabWidth : FabPosition.m2383equalsimpl0(i6, FabPosition.INSTANCE.m2388getEndERTFSPs()) ? true : FabPosition.m2383equalsimpl0(i6, FabPosition.INSTANCE.m2389getEndOverlayERTFSPs()) ? $this$SubcomposeLayout.getLayoutDirection() == LayoutDirection.Ltr ? (layoutWidth - $this$SubcomposeLayout.mo399roundToPx0680j_4(ScaffoldKt.FabSpacing)) - fabWidth : $this$SubcomposeLayout.mo399roundToPx0680j_4(ScaffoldKt.FabSpacing) : (layoutWidth - fabWidth) / 2;
                            fabPlacement = new FabPlacement(fabLeftOffset, fabWidth, fabHeight);
                        }
                        final FabPlacement fabPlacement2 = fabPlacement;
                        ScaffoldLayoutContent scaffoldLayoutContent = ScaffoldLayoutContent.BottomBar;
                        final Function2<Composer, Integer, Unit> function210 = function29;
                        List<Measurable> listSubcompose4 = $this$SubcomposeLayout.subcompose(scaffoldLayoutContent, ComposableLambdaKt.composableLambdaInstance(-2146438447, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$1$1$bottomBarPlaceables$1
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
                                ComposerKt.sourceInformation($composer3, "C209@10015L11:Scaffold.kt#uh7d8r");
                                if (($changed2 & 3) == 2 && $composer3.getSkipping()) {
                                    $composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2146438447, $changed2, -1, "androidx.compose.material3.ScaffoldLayout.<anonymous>.<anonymous>.<anonymous> (Scaffold.kt:209)");
                                }
                                function210.invoke($composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }));
                        int $i$f$fastMap5 = 0;
                        List target$iv5 = new ArrayList(listSubcompose4.size());
                        int index$iv$iv4 = 0;
                        int size4 = listSubcompose4.size();
                        while (index$iv$iv4 < size4) {
                            Object item$iv$iv4 = listSubcompose4.get(index$iv$iv4);
                            int $i$f$fastMap6 = $i$f$fastMap5;
                            Measurable it14 = (Measurable) item$iv$iv4;
                            target$iv5.add(it14.mo6141measureBRTryo0(looseConstraints));
                            index$iv$iv4++;
                            listSubcompose4 = listSubcompose4;
                            $i$f$fastMap5 = $i$f$fastMap6;
                        }
                        final List bottomBarPlaceables = target$iv5;
                        List $this$fastMaxBy$iv3 = bottomBarPlaceables;
                        if ($this$fastMaxBy$iv3.isEmpty()) {
                            maxElem$iv4 = null;
                        } else {
                            maxElem$iv4 = $this$fastMaxBy$iv3.get(0);
                            Placeable it15 = (Placeable) maxElem$iv4;
                            int maxValue$iv6 = it15.getHeight();
                            int i$iv6 = 1;
                            int lastIndex6 = CollectionsKt.getLastIndex($this$fastMaxBy$iv3);
                            if (1 <= lastIndex6) {
                                while (true) {
                                    Object e$iv6 = $this$fastMaxBy$iv3.get(i$iv6);
                                    Placeable it16 = (Placeable) e$iv6;
                                    int height3 = it16.getHeight();
                                    List $this$fastMaxBy$iv4 = $this$fastMaxBy$iv3;
                                    if (maxValue$iv6 < height3) {
                                        maxElem$iv4 = e$iv6;
                                        maxValue$iv6 = height3;
                                    }
                                    if (i$iv6 == lastIndex6) {
                                        break;
                                    }
                                    i$iv6++;
                                    $this$fastMaxBy$iv3 = $this$fastMaxBy$iv4;
                                }
                            }
                        }
                        Placeable placeable4 = (Placeable) maxElem$iv4;
                        final Integer bottomBarHeight = placeable4 != null ? Integer.valueOf(placeable4.getHeight()) : null;
                        final Integer fabOffsetFromBottom = fabPlacement2 != null ? Integer.valueOf((bottomBarHeight == null || FabPosition.m2383equalsimpl0(i, FabPosition.INSTANCE.m2389getEndOverlayERTFSPs())) ? fabPlacement2.getHeight() + $this$SubcomposeLayout.mo399roundToPx0680j_4(ScaffoldKt.FabSpacing) + windowInsets2.getBottom($this$SubcomposeLayout) : bottomBarHeight.intValue() + fabPlacement2.getHeight() + $this$SubcomposeLayout.mo399roundToPx0680j_4(ScaffoldKt.FabSpacing)) : null;
                        int snackbarOffsetFromBottom = snackbarHeight != 0 ? snackbarHeight + (fabOffsetFromBottom != null ? fabOffsetFromBottom.intValue() : bottomBarHeight != null ? bottomBarHeight.intValue() : windowInsets2.getBottom($this$SubcomposeLayout)) : 0;
                        ScaffoldLayoutContent scaffoldLayoutContent2 = ScaffoldLayoutContent.MainContent;
                        final WindowInsets windowInsets7 = windowInsets2;
                        final Function3<PaddingValues, Composer, Integer, Unit> function34 = function33;
                        List<Measurable> listSubcompose5 = $this$SubcomposeLayout.subcompose(scaffoldLayoutContent2, ComposableLambdaKt.composableLambdaInstance(-1213360416, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$1$1$bodyContentPlaceables$1
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
                                float top;
                                float bottom;
                                ComposerKt.sourceInformation($composer3, "C260@12377L21:Scaffold.kt#uh7d8r");
                                if (($changed2 & 3) != 2 || !$composer3.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1213360416, $changed2, -1, "androidx.compose.material3.ScaffoldLayout.<anonymous>.<anonymous>.<anonymous> (Scaffold.kt:238)");
                                    }
                                    PaddingValues insets = WindowInsetsKt.asPaddingValues(windowInsets7, $this$SubcomposeLayout);
                                    if (topBarPlaceables3.isEmpty()) {
                                        top = insets.getTop();
                                    } else {
                                        top = $this$SubcomposeLayout.mo402toDpu2uoSUM(topBarHeight3);
                                    }
                                    if (bottomBarPlaceables.isEmpty() || bottomBarHeight == null) {
                                        bottom = insets.getBottom();
                                    } else {
                                        bottom = $this$SubcomposeLayout.mo402toDpu2uoSUM(bottomBarHeight.intValue());
                                    }
                                    PaddingValues innerPadding = PaddingKt.m814PaddingValuesa9UjIt4(PaddingKt.calculateStartPadding(insets, $this$SubcomposeLayout.getLayoutDirection()), top, PaddingKt.calculateEndPadding(insets, $this$SubcomposeLayout.getLayoutDirection()), bottom);
                                    function34.invoke(innerPadding, $composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer3.skipToGroupEnd();
                            }
                        }));
                        List target$iv6 = new ArrayList(listSubcompose5.size());
                        int $i$f$fastMap7 = 0;
                        for (int size5 = listSubcompose5.size(); $i$f$fastMap7 < size5; size5 = size5) {
                            Object item$iv$iv5 = listSubcompose5.get($i$f$fastMap7);
                            int index$iv$iv5 = $i$f$fastMap7;
                            Measurable it17 = (Measurable) item$iv$iv5;
                            target$iv6.add(it17.mo6141measureBRTryo0(looseConstraints));
                            $i$f$fastMap7 = index$iv$iv5 + 1;
                        }
                        final List bodyContentPlaceables = target$iv6;
                        final WindowInsets windowInsets8 = windowInsets2;
                        final int snackbarWidth2 = snackbarOffsetFromBottom;
                        final Integer bottomBarHeight2 = bottomBarHeight;
                        return MeasureScope.layout$default($this$SubcomposeLayout, layoutWidth, layoutHeight, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$1$1.1
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
                                List<Placeable> list2 = bodyContentPlaceables;
                                int size6 = list2.size();
                                for (int index$iv = 0; index$iv < size6; index$iv++) {
                                    Object item$iv = list2.get(index$iv);
                                    Placeable it18 = (Placeable) item$iv;
                                    Placeable.PlacementScope.place$default($this$layout, it18, 0, 0, 0.0f, 4, null);
                                }
                                List<Placeable> list3 = topBarPlaceables3;
                                int size7 = list3.size();
                                for (int index$iv2 = 0; index$iv2 < size7; index$iv2++) {
                                    Object item$iv2 = list3.get(index$iv2);
                                    Placeable it19 = (Placeable) item$iv2;
                                    Placeable.PlacementScope.place$default($this$layout, it19, 0, 0, 0.0f, 4, null);
                                }
                                List<Placeable> list4 = snackbarPlaceables;
                                int i7 = layoutWidth;
                                int i8 = snackbarWidth;
                                WindowInsets windowInsets9 = windowInsets8;
                                SubcomposeMeasureScope subcomposeMeasureScope = $this$SubcomposeLayout;
                                int i9 = layoutHeight;
                                int i10 = snackbarWidth2;
                                int index$iv3 = 0;
                                int size8 = list4.size();
                                while (index$iv3 < size8) {
                                    Object item$iv3 = list4.get(index$iv3);
                                    Placeable it20 = (Placeable) item$iv3;
                                    Placeable.PlacementScope.place$default($this$layout, it20, ((i7 - i8) / 2) + windowInsets9.getLeft(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection()), i9 - i10, 0.0f, 4, null);
                                    index$iv3++;
                                    list4 = list4;
                                }
                                List<Placeable> list5 = bottomBarPlaceables;
                                int i11 = layoutHeight;
                                Integer num = bottomBarHeight2;
                                int size9 = list5.size();
                                for (int index$iv4 = 0; index$iv4 < size9; index$iv4++) {
                                    Object item$iv4 = list5.get(index$iv4);
                                    Placeable it21 = (Placeable) item$iv4;
                                    Placeable.PlacementScope.place$default($this$layout, it21, 0, i11 - (num != null ? num.intValue() : 0), 0.0f, 4, null);
                                }
                                FabPlacement placement = fabPlacement2;
                                if (placement != null) {
                                    List<Placeable> list6 = fabPlaceables;
                                    int i12 = layoutHeight;
                                    Integer num2 = fabOffsetFromBottom;
                                    int size10 = list6.size();
                                    for (int index$iv5 = 0; index$iv5 < size10; index$iv5++) {
                                        Object item$iv5 = list6.get(index$iv5);
                                        Placeable it22 = (Placeable) item$iv5;
                                        int left = placement.getLeft();
                                        Intrinsics.checkNotNull(num2);
                                        Placeable.PlacementScope.place$default($this$layout, it22, left, i12 - num2.intValue(), 0.0f, 4, null);
                                    }
                                }
                            }
                        }, 4, null);
                    }
                };
                $composer2.updateRememberedValue(value$iv);
            } else {
                i2 = 0;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            SubcomposeLayoutKt.SubcomposeLayout(null, (Function2) value$iv, $composer2, i2, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$2
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

                public final void invoke(Composer composer, int i3) {
                    ScaffoldKt.m2692ScaffoldLayoutFMILGgc(fabPosition, function2, function3, function22, function23, contentWindowInsets, function24, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }
}
