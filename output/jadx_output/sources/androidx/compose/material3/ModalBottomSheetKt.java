package androidx.compose.material3;

import androidx.autofill.HintConstants;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt$sam$androidx_compose_ui_input_pointer_PointerInputEventHandler$0;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: ModalBottomSheet.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aÄ\u0001\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\u00132\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\u00182\u0013\b\u0002\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u001a0\n¢\u0006\u0002\b\u00182\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\u001c\u0010\u001d\u001a\u0018\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\b0\u001e¢\u0006\u0002\b\u0018¢\u0006\u0002\b H\u0007ø\u0001\u0000¢\u0006\u0004\b!\u0010\"\u001a0\u0010#\u001a\u00020\b2\u0006\u0010$\u001a\u00020\u00132\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n2\u0006\u0010%\u001a\u00020&H\u0003ø\u0001\u0000¢\u0006\u0004\b'\u0010(\u001a-\u0010)\u001a\u00020\u000e2\b\b\u0002\u0010*\u001a\u00020&2\u0014\b\u0002\u0010+\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020&0\u001eH\u0007¢\u0006\u0002\u0010-\u001aó\u0001\u0010.\u001a\u00020\b*\u00020/2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u000203012\u0006\u00104\u001a\u0002052\f\u00106\u001a\b\u0012\u0004\u0012\u00020\b0\n2!\u00107\u001a\u001d\u0012\u0013\u0012\u001102¢\u0006\f\b8\u0012\b\b9\u0012\u0004\b\b(:\u0012\u0004\u0012\u00020\b0\u001e2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00042\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\b\u0018\u00010\n¢\u0006\u0002\b\u00182\u0013\b\u0002\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u001a0\n¢\u0006\u0002\b\u00182\u001c\u0010\u001d\u001a\u0018\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\b0\u001e¢\u0006\u0002\b\u0018¢\u0006\u0002\b H\u0001ø\u0001\u0000¢\u0006\u0004\b;\u0010<\u001a\u0014\u0010=\u001a\u000202*\u00020>2\u0006\u0010?\u001a\u000202H\u0002\u001a\u0014\u0010@\u001a\u000202*\u00020>2\u0006\u0010?\u001a\u000202H\u0002\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005\"\u0010\u0010\u0006\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006A²\u0006\n\u0010B\u001a\u000202X\u008a\u0084\u0002"}, d2 = {"PredictiveBackChildTransformOrigin", "Landroidx/compose/ui/graphics/TransformOrigin;", "J", "PredictiveBackMaxScaleXDistance", "Landroidx/compose/ui/unit/Dp;", "F", "PredictiveBackMaxScaleYDistance", "ModalBottomSheet", "", "onDismissRequest", "Lkotlin/Function0;", "modifier", "Landroidx/compose/ui/Modifier;", "sheetState", "Landroidx/compose/material3/SheetState;", "sheetMaxWidth", "shape", "Landroidx/compose/ui/graphics/Shape;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "tonalElevation", "scrimColor", "dragHandle", "Landroidx/compose/runtime/Composable;", "contentWindowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "properties", "Landroidx/compose/material3/ModalBottomSheetProperties;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/ColumnScope;", "Lkotlin/ExtensionFunctionType;", "ModalBottomSheet-dYc4hso", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "Scrim", TtmlNode.ATTR_TTS_COLOR, "visible", "", "Scrim-3J-VO9M", "(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V", "rememberModalBottomSheetState", "skipPartiallyExpanded", "confirmValueChange", "Landroidx/compose/material3/SheetValue;", "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;", "ModalBottomSheetContent", "Landroidx/compose/foundation/layout/BoxScope;", "predictiveBackProgress", "Landroidx/compose/animation/core/Animatable;", "", "Landroidx/compose/animation/core/AnimationVector1D;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "animateToDismiss", "settleToDismiss", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "velocity", "ModalBottomSheetContent-IQkwcL4", "(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "calculatePredictiveBackScaleX", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", NotificationCompat.CATEGORY_PROGRESS, "calculatePredictiveBackScaleY", "material3_release", "alpha"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ModalBottomSheetKt {
    private static final float PredictiveBackMaxScaleXDistance = Dp.m7505constructorimpl(48);
    private static final float PredictiveBackMaxScaleYDistance = Dp.m7505constructorimpl(24);
    private static final long PredictiveBackChildTransformOrigin = TransformOriginKt.TransformOrigin(0.5f, 0.0f);

    /* JADX INFO: renamed from: ModalBottomSheet-dYc4hso, reason: not valid java name */
    public static final void m2525ModalBottomSheetdYc4hso(final Function0<Unit> function0, Modifier modifier, SheetState sheetState, float sheetMaxWidth, Shape shape, long containerColor, long contentColor, float tonalElevation, long scrimColor, Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, ? extends WindowInsets> function22, ModalBottomSheetProperties properties, final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        final SheetState sheetState2;
        Shape shape2;
        long containerColor2;
        long j;
        int $dirty;
        int $dirty1;
        int i2;
        int i3;
        int i4;
        Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function32;
        boolean z;
        long contentColor2;
        int $dirty2;
        float tonalElevation2;
        int $dirty3;
        long scrimColor2;
        ModalBottomSheetKt$ModalBottomSheet$1 modalBottomSheetKt$ModalBottomSheet$1;
        final float tonalElevation3;
        ModalBottomSheetProperties properties2;
        final Function2<? super Composer, ? super Integer, ? extends WindowInsets> function23;
        final float sheetMaxWidth2;
        final long contentColor3;
        final long containerColor3;
        final Function2<? super Composer, ? super Integer, Unit> function24;
        final Modifier modifier3;
        final Shape shape3;
        final long scrimColor3;
        Object value$iv$iv;
        Object value$iv;
        Object value$iv2;
        int $dirty12;
        Object value$iv3;
        Object value$iv4;
        Composer $composer2;
        final SheetState sheetState3;
        final ModalBottomSheetProperties properties3;
        final long scrimColor4;
        final float sheetMaxWidth3;
        final Shape shape4;
        final long containerColor4;
        final long contentColor4;
        final float tonalElevation4;
        final Function2<? super Composer, ? super Integer, ? extends WindowInsets> function25;
        ModalBottomSheetKt$ModalBottomSheet$4$1 value$iv5;
        int $dirty4;
        Composer $composer3 = $composer.startRestartGroup(2132719801);
        ComposerKt.sourceInformation($composer3, "C(ModalBottomSheet)P(6,5,11,10:c#ui.unit.Dp,9,0:c#ui.graphics.Color,2:c#ui.graphics.Color,12:c#ui.unit.Dp,8:c#ui.graphics.Color,4,3,7)121@6012L31,123@6143L13,124@6206L14,125@6248L31,127@6356L10,133@6697L24,134@6761L327,145@7142L149,151@7326L42,155@7458L708,167@8231L771,153@7374L1628,193@9077L21,193@9050L48:ModalBottomSheet.kt#uh7d8r");
        int $dirty5 = $changed;
        if ((i & 1) != 0) {
            $dirty5 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty5 |= $composer3.changedInstance(function0) ? 4 : 2;
        }
        int i5 = i & 2;
        if (i5 != 0) {
            $dirty5 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty5 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                sheetState2 = sheetState;
                int i6 = $composer3.changed(sheetState2) ? 256 : 128;
                $dirty5 |= i6;
            } else {
                sheetState2 = sheetState;
            }
            $dirty5 |= i6;
        } else {
            sheetState2 = sheetState;
        }
        int i7 = i & 8;
        if (i7 != 0) {
            $dirty5 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty5 |= $composer3.changed(sheetMaxWidth) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                shape2 = shape;
                int i8 = $composer3.changed(shape2) ? 16384 : 8192;
                $dirty5 |= i8;
            } else {
                shape2 = shape;
            }
            $dirty5 |= i8;
        } else {
            shape2 = shape;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if ((i & 32) == 0) {
                containerColor2 = containerColor;
                int i9 = $composer3.changed(containerColor2) ? 131072 : 65536;
                $dirty5 |= i9;
            } else {
                containerColor2 = containerColor;
            }
            $dirty5 |= i9;
        } else {
            containerColor2 = containerColor;
        }
        if (($changed & 1572864) == 0) {
            if ((i & 64) == 0) {
                j = contentColor;
                int i10 = $composer3.changed(j) ? 1048576 : 524288;
                $dirty5 |= i10;
            } else {
                j = contentColor;
            }
            $dirty5 |= i10;
        } else {
            j = contentColor;
        }
        int i11 = i & 128;
        if (i11 != 0) {
            $dirty5 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty5 |= $composer3.changed(tonalElevation) ? 8388608 : 4194304;
        }
        if (($changed & 100663296) == 0) {
            if ((i & 256) == 0) {
                $dirty4 = $dirty5;
                $dirty1 = $changed1;
                int i12 = $composer3.changed(scrimColor) ? 67108864 : 33554432;
                $dirty = $dirty4 | i12;
            } else {
                $dirty4 = $dirty5;
                $dirty1 = $changed1;
            }
            $dirty = $dirty4 | i12;
        } else {
            $dirty = $dirty5;
            $dirty1 = $changed1;
        }
        int $dirty13 = $dirty1;
        int $dirty14 = i & 512;
        if ($dirty14 != 0) {
            $dirty |= 805306368;
            i2 = $dirty14;
        } else if (($changed & 805306368) == 0) {
            i2 = $dirty14;
            $dirty |= $composer3.changedInstance(function2) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i2 = $dirty14;
        }
        int $dirty6 = $dirty;
        if (($changed1 & 6) == 0) {
            i3 = i11;
            $dirty13 |= ((i & 1024) == 0 && $composer3.changedInstance(function22)) ? 4 : 2;
        } else {
            i3 = i11;
        }
        int i13 = i & 2048;
        if (i13 != 0) {
            $dirty13 |= 48;
            i4 = i13;
        } else if (($changed1 & 48) == 0) {
            i4 = i13;
            $dirty13 |= $composer3.changed(properties) ? 32 : 16;
        } else {
            i4 = i13;
        }
        int $dirty15 = $dirty13;
        if ((i & 4096) != 0) {
            $dirty15 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            function32 = function3;
        } else if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function32 = function3;
            $dirty15 |= $composer3.changedInstance(function32) ? 256 : 128;
        } else {
            function32 = function3;
        }
        if ((306783379 & $dirty6) == 306783378 && ($dirty15 & 147) == 146 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            function24 = function2;
            $composer2 = $composer3;
            containerColor4 = containerColor2;
            contentColor4 = j;
            sheetState3 = sheetState2;
            shape4 = shape2;
            sheetMaxWidth3 = sheetMaxWidth;
            tonalElevation4 = tonalElevation;
            scrimColor4 = scrimColor;
            function25 = function22;
            properties3 = properties;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i5 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 4) != 0) {
                    $dirty6 &= -897;
                    sheetState2 = rememberModalBottomSheetState(false, null, $composer3, 0, 3);
                }
                float sheetMaxWidth4 = i7 != 0 ? BottomSheetDefaults.INSTANCE.m2076getSheetMaxWidthD9Ej5fM() : sheetMaxWidth;
                if ((i & 16) != 0) {
                    z = false;
                    $dirty6 &= -57345;
                    shape2 = BottomSheetDefaults.INSTANCE.getExpandedShape($composer3, 6);
                } else {
                    z = false;
                }
                if ((i & 32) != 0) {
                    containerColor2 = BottomSheetDefaults.INSTANCE.getContainerColor($composer3, 6);
                    $dirty6 &= -458753;
                }
                if ((i & 64) != 0) {
                    contentColor2 = ColorSchemeKt.m2213contentColorForek8zF_U(containerColor2, $composer3, ($dirty6 >> 15) & 14);
                    $dirty6 &= -3670017;
                } else {
                    contentColor2 = j;
                }
                if (i3 != 0) {
                    $dirty2 = $dirty6;
                    tonalElevation2 = Dp.m7505constructorimpl(0);
                } else {
                    $dirty2 = $dirty6;
                    tonalElevation2 = tonalElevation;
                }
                if ((i & 256) != 0) {
                    scrimColor2 = BottomSheetDefaults.INSTANCE.getScrimColor($composer3, 6);
                    $dirty3 = $dirty2 & (-234881025);
                } else {
                    $dirty3 = $dirty2;
                    scrimColor2 = scrimColor;
                }
                Function2<? super Composer, ? super Integer, Unit> function2M2253getLambda1$material3_release = i2 != 0 ? ComposableSingletons$ModalBottomSheetKt.INSTANCE.m2253getLambda1$material3_release() : function2;
                float tonalElevation5 = tonalElevation2;
                if ((i & 1024) != 0) {
                    modalBottomSheetKt$ModalBottomSheet$1 = new Function2<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                        public final WindowInsets invoke(Composer $composer4, int $changed2) {
                            $composer4.startReplaceGroup(58488196);
                            ComposerKt.sourceInformation($composer4, "C129@6530L12:ModalBottomSheet.kt#uh7d8r");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(58488196, $changed2, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:129)");
                            }
                            WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets($composer4, 6);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            $composer4.endReplaceGroup();
                            return windowInsets;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer, Integer num) {
                            return invoke(composer, num.intValue());
                        }
                    };
                    $dirty15 &= -15;
                } else {
                    modalBottomSheetKt$ModalBottomSheet$1 = function22;
                }
                if (i4 != 0) {
                    properties2 = ModalBottomSheetDefaults.INSTANCE.getProperties();
                    tonalElevation3 = tonalElevation5;
                    function23 = modalBottomSheetKt$ModalBottomSheet$1;
                    sheetMaxWidth2 = sheetMaxWidth4;
                    contentColor3 = contentColor2;
                    containerColor3 = containerColor2;
                    $dirty6 = $dirty3;
                    function24 = function2M2253getLambda1$material3_release;
                    modifier3 = modifier2;
                    shape3 = shape2;
                    scrimColor3 = scrimColor2;
                } else {
                    tonalElevation3 = tonalElevation5;
                    properties2 = properties;
                    function23 = modalBottomSheetKt$ModalBottomSheet$1;
                    sheetMaxWidth2 = sheetMaxWidth4;
                    contentColor3 = contentColor2;
                    containerColor3 = containerColor2;
                    $dirty6 = $dirty3;
                    function24 = function2M2253getLambda1$material3_release;
                    modifier3 = modifier2;
                    shape3 = shape2;
                    scrimColor3 = scrimColor2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty6 &= -897;
                }
                if ((i & 16) != 0) {
                    $dirty6 &= -57345;
                }
                if ((i & 32) != 0) {
                    $dirty6 &= -458753;
                }
                if ((i & 64) != 0) {
                    $dirty6 &= -3670017;
                }
                if ((i & 256) != 0) {
                    $dirty6 &= -234881025;
                }
                if ((i & 1024) != 0) {
                    $dirty15 &= -15;
                }
                sheetMaxWidth2 = sheetMaxWidth;
                tonalElevation3 = tonalElevation;
                scrimColor3 = scrimColor;
                function24 = function2;
                function23 = function22;
                properties2 = properties;
                z = false;
                containerColor3 = containerColor2;
                contentColor3 = j;
                modifier3 = modifier2;
                shape3 = shape2;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2132719801, $dirty6, $dirty15, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:132)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer3, -954363344, "CC(remember):Effects.kt#9igjgp");
            Object it$iv$iv = $composer3.rememberedValue();
            if (it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer3));
                $composer3.updateRememberedValue(value$iv$iv);
            } else {
                value$iv$iv = it$iv$iv;
            }
            CompositionScopedCoroutineScopeCanceller wrapper$iv = (CompositionScopedCoroutineScopeCanceller) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final CoroutineScope scope = wrapper$iv.getCoroutineScope();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -2011393839, "CC(remember):ModalBottomSheet.kt#9igjgp");
            boolean invalid$iv = ((((($dirty6 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 || !$composer3.changed(sheetState2)) && ($dirty6 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) ? z : true) | $composer3.changedInstance(scope) | (($dirty6 & 14) == 4 ? true : z);
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$animateToDismiss$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        if (sheetState2.getAnchoredDraggableState$material3_release().getConfirmValueChange$material3_release().invoke(SheetValue.Hidden).booleanValue()) {
                            Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(scope, null, null, new AnonymousClass1(sheetState2, null), 3, null);
                            final SheetState sheetState4 = sheetState2;
                            final Function0<Unit> function02 = function0;
                            jobLaunch$default.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$animateToDismiss$1$1.2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                                    invoke2(th);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(Throwable it) {
                                    if (!sheetState4.isVisible()) {
                                        function02.invoke();
                                    }
                                }
                            });
                        }
                    }

                    /* JADX INFO: renamed from: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$animateToDismiss$1$1$1, reason: invalid class name */
                    /* JADX INFO: compiled from: ModalBottomSheet.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$animateToDismiss$1$1$1", f = "ModalBottomSheet.kt", i = {}, l = {TsExtractor.TS_STREAM_TYPE_DTS}, m = "invokeSuspend", n = {}, s = {})
                    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ SheetState $sheetState;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(SheetState sheetState, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.$sheetState = sheetState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.$sheetState, continuation);
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
                                    if (this.$sheetState.hide(this) == coroutine_suspended) {
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
                };
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            final Function0 animateToDismiss = (Function0) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -2011381825, "CC(remember):ModalBottomSheet.kt#9igjgp");
            boolean invalid$iv2 = $composer3.changedInstance(scope) | ((((($dirty6 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 || !$composer3.changed(sheetState2)) && ($dirty6 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) ? z : true) | (($dirty6 & 14) == 4 ? true : z);
            Object it$iv2 = $composer3.rememberedValue();
            if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = (Function1) new Function1<Float, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$settleToDismiss$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Float f) {
                        invoke(f.floatValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$settleToDismiss$1$1$1, reason: invalid class name */
                    /* JADX INFO: compiled from: ModalBottomSheet.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$settleToDismiss$1$1$1", f = "ModalBottomSheet.kt", i = {}, l = {148}, m = "invokeSuspend", n = {}, s = {})
                    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ float $it;
                        final /* synthetic */ SheetState $sheetState;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(SheetState sheetState, float f, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.$sheetState = sheetState;
                            this.$it = f;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.$sheetState, this.$it, continuation);
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
                                    if (this.$sheetState.settle$material3_release(this.$it, this) == coroutine_suspended) {
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
                        Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(scope, null, null, new AnonymousClass1(sheetState2, it, null), 3, null);
                        final SheetState sheetState4 = sheetState2;
                        final Function0<Unit> function02 = function0;
                        jobLaunch$default.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$settleToDismiss$1$1.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                                invoke2(th);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Throwable it2) {
                                if (sheetState4.isVisible()) {
                                    return;
                                }
                                function02.invoke();
                            }
                        });
                    }
                };
                $composer3.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
            }
            final Function1 settleToDismiss = (Function1) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -2011376044, "CC(remember):ModalBottomSheet.kt#9igjgp");
            Object it$iv3 = $composer3.rememberedValue();
            if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                $dirty12 = $dirty15;
                value$iv3 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                $composer3.updateRememberedValue(value$iv3);
            } else {
                $dirty12 = $dirty15;
                value$iv3 = it$iv3;
            }
            final Animatable predictiveBackProgress = (Animatable) value$iv3;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -2011371154, "CC(remember):ModalBottomSheet.kt#9igjgp");
            boolean invalid$iv3 = ((((($dirty6 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 || !$composer3.changed(sheetState2)) && ($dirty6 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) ? z : true) | $composer3.changedInstance(scope) | $composer3.changedInstance(predictiveBackProgress) | (($dirty6 & 14) == 4 ? true : z);
            Object it$iv4 = $composer3.rememberedValue();
            if (invalid$iv3 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                value$iv4 = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        if (sheetState2.getCurrentValue() != SheetValue.Expanded || !sheetState2.getHasPartiallyExpandedState()) {
                            Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(scope, null, null, new AnonymousClass3(sheetState2, null), 3, null);
                            final Function0<Unit> function02 = function0;
                            jobLaunch$default.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$2$1.4
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                                    invoke2(th);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(Throwable it) {
                                    function02.invoke();
                                }
                            });
                        } else {
                            BuildersKt__Builders_commonKt.launch$default(scope, null, null, new AnonymousClass1(predictiveBackProgress, null), 3, null);
                            BuildersKt__Builders_commonKt.launch$default(scope, null, null, new AnonymousClass2(sheetState2, null), 3, null);
                        }
                    }

                    /* JADX INFO: renamed from: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$2$1$1, reason: invalid class name */
                    /* JADX INFO: compiled from: ModalBottomSheet.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$2$1$1", f = "ModalBottomSheet.kt", i = {}, l = {161}, m = "invokeSuspend", n = {}, s = {})
                    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ Animatable<Float, AnimationVector1D> $predictiveBackProgress;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(Animatable<Float, AnimationVector1D> animatable, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.$predictiveBackProgress = animatable;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.$predictiveBackProgress, continuation);
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
                                    Animatable<Float, AnimationVector1D> animatable = this.$predictiveBackProgress;
                                    this.label = 1;
                                    if (animatable.animateTo(Boxing.boxFloat(0.0f), (4 & 2) != 0 ? animatable.defaultSpringSpec : null, (4 & 4) != 0 ? animatable.getVelocity() : null, (4 & 8) != 0 ? null : null, this) == coroutine_suspended) {
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

                    /* JADX INFO: renamed from: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$2$1$2, reason: invalid class name */
                    /* JADX INFO: compiled from: ModalBottomSheet.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$2$1$2", f = "ModalBottomSheet.kt", i = {}, l = {162}, m = "invokeSuspend", n = {}, s = {})
                    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ SheetState $sheetState;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass2(SheetState sheetState, Continuation<? super AnonymousClass2> continuation) {
                            super(2, continuation);
                            this.$sheetState = sheetState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass2(this.$sheetState, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object $result) {
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            switch (this.label) {
                                case 0:
                                    ResultKt.throwOnFailure($result);
                                    this.label = 1;
                                    if (this.$sheetState.partialExpand(this) == coroutine_suspended) {
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

                    /* JADX INFO: renamed from: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$2$1$3, reason: invalid class name */
                    /* JADX INFO: compiled from: ModalBottomSheet.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$2$1$3", f = "ModalBottomSheet.kt", i = {}, l = {164}, m = "invokeSuspend", n = {}, s = {})
                    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ SheetState $sheetState;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass3(SheetState sheetState, Continuation<? super AnonymousClass3> continuation) {
                            super(2, continuation);
                            this.$sheetState = sheetState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass3(this.$sheetState, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object $result) {
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            switch (this.label) {
                                case 0:
                                    ResultKt.throwOnFailure($result);
                                    this.label = 1;
                                    if (this.$sheetState.hide(this) == coroutine_suspended) {
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
                };
                $composer3.updateRememberedValue(value$iv4);
            } else {
                value$iv4 = it$iv4;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function33 = function32;
            final SheetState sheetState4 = sheetState2;
            ModalBottomSheet_androidKt.ModalBottomSheetDialog((Function0) value$iv4, properties2, predictiveBackProgress, ComposableLambdaKt.rememberComposableLambda(-314673510, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$3
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
                    Function0<ComposeUiNode> function02;
                    ComposerKt.sourceInformation($composer4, "C168@8241L755:ModalBottomSheet.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-314673510, $changed2, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:168)");
                        }
                        Modifier modifier$iv = SemanticsModifierKt.semantics$default(WindowInsetsPadding_androidKt.imePadding(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null)), false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$3.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                invoke2(semanticsPropertyReceiver);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                                SemanticsPropertiesKt.setTraversalGroup($this$semantics, true);
                            }
                        }, 1, null);
                        long j2 = scrimColor3;
                        Function0<Unit> function03 = animateToDismiss;
                        SheetState sheetState5 = sheetState4;
                        Animatable<Float, AnimationVector1D> animatable = predictiveBackProgress;
                        CoroutineScope coroutineScope = scope;
                        Function1<Float, Unit> function1 = settleToDismiss;
                        Modifier modifier4 = modifier3;
                        float f = sheetMaxWidth2;
                        Shape shape5 = shape3;
                        long j3 = containerColor3;
                        long j4 = contentColor3;
                        float f2 = tonalElevation3;
                        Function2<Composer, Integer, Unit> function26 = function24;
                        Function2<Composer, Integer, WindowInsets> function27 = function23;
                        Function3<ColumnScope, Composer, Integer, Unit> function34 = function33;
                        ComposerKt.sourceInformationMarkerStart($composer4, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                        Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                        MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                        int $changed$iv$iv = (0 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer4, modifier$iv);
                        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if ($composer4.getInserting()) {
                            function02 = constructor;
                            $composer4.createNode(function02);
                        } else {
                            function02 = constructor;
                            $composer4.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer4);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                        int i14 = ($changed$iv$iv$iv >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                        int $changed3 = ((0 >> 6) & 112) | 6;
                        BoxScope $this$invoke_u24lambda_u240 = BoxScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer4, 1107507610, "C169@8345L169,174@8527L459:ModalBottomSheet.kt#uh7d8r");
                        ModalBottomSheetKt.m2527Scrim3JVO9M(j2, function03, sheetState5.getTargetValue() != SheetValue.Hidden, $composer4, 0);
                        ModalBottomSheetKt.m2526ModalBottomSheetContentIQkwcL4($this$invoke_u24lambda_u240, animatable, coroutineScope, function03, function1, modifier4, sheetState5, f, shape5, j3, j4, f2, function26, function27, function34, $composer4, ($changed3 & 14) | (Animatable.$stable << 3), 0, 0);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }, $composer3, 54), $composer3, ($dirty12 & 112) | 3072 | (Animatable.$stable << 6));
            $composer2 = $composer3;
            if (sheetState2.getHasExpandedState()) {
                ComposerKt.sourceInformationMarkerStart($composer2, -2011320033, "CC(remember):ModalBottomSheet.kt#9igjgp");
                boolean invalid$iv4 = (((($dirty6 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 || !$composer2.changed(sheetState2)) && ($dirty6 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) ? z : true;
                Object it$iv5 = $composer2.rememberedValue();
                if (invalid$iv4 || it$iv5 == Composer.INSTANCE.getEmpty()) {
                    value$iv5 = new ModalBottomSheetKt$ModalBottomSheet$4$1(sheetState2, null);
                    $composer2.updateRememberedValue(value$iv5);
                } else {
                    value$iv5 = it$iv5;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(sheetState2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) value$iv5, $composer2, ($dirty6 >> 6) & 14);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            sheetState3 = sheetState2;
            properties3 = properties2;
            scrimColor4 = scrimColor3;
            modifier2 = modifier3;
            sheetMaxWidth3 = sheetMaxWidth2;
            shape4 = shape3;
            containerColor4 = containerColor3;
            contentColor4 = contentColor3;
            tonalElevation4 = tonalElevation3;
            function25 = function23;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier2;
            final Function2<? super Composer, ? super Integer, Unit> function26 = function24;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$5
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
                    ModalBottomSheetKt.m2525ModalBottomSheetdYc4hso(function0, modifier4, sheetState3, sheetMaxWidth3, shape4, containerColor4, contentColor4, tonalElevation4, scrimColor4, function26, function25, properties3, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:252:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x03cd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:260:0x040f  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x04db  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x055c  */
    /* JADX INFO: renamed from: ModalBottomSheetContent-IQkwcL4, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2526ModalBottomSheetContentIQkwcL4(final BoxScope $this$ModalBottomSheetContent_u2dIQkwcL4, final Animatable<Float, AnimationVector1D> animatable, final CoroutineScope scope, final Function0<Unit> function0, final Function1<? super Float, Unit> function1, Modifier modifier, SheetState sheetState, float sheetMaxWidth, Shape shape, long containerColor, long contentColor, float tonalElevation, Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, ? extends WindowInsets> function22, final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        final SheetState sheetState2;
        float sheetMaxWidth2;
        Shape shape2;
        int $dirty;
        int $dirty1;
        int $dirty12;
        int i2;
        Function2<? super Composer, ? super Integer, Unit> function23;
        int $dirty13;
        long containerColor2;
        long contentColor2;
        Function2<? super Composer, ? super Integer, Unit> function2M2254getLambda2$material3_release;
        long containerColor3;
        float sheetMaxWidth3;
        Shape shape3;
        float tonalElevation2;
        Function2<? super Composer, ? super Integer, ? extends WindowInsets> function24;
        int $dirty14;
        Modifier modifier3;
        int $dirty2;
        float sheetMaxWidth4;
        boolean invalid$iv;
        Object value$iv;
        boolean invalid$iv2;
        ModalBottomSheetKt$ModalBottomSheetContent$4$1 value$iv2;
        boolean invalid$iv3;
        Object value$iv3;
        boolean invalid$iv4;
        Object value$iv4;
        Composer $composer2;
        final SheetState sheetState3;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        final Function2<? super Composer, ? super Integer, ? extends WindowInsets> function26;
        final float tonalElevation3;
        final long contentColor3;
        final long containerColor4;
        final Shape shape4;
        final float sheetMaxWidth5;
        final Modifier modifier4;
        int $dirty3;
        Composer $composer3 = $composer.startRestartGroup(-1676960531);
        ComposerKt.sourceInformation($composer3, "C(ModalBottomSheetContent)P(7,8!1,9,6,12,11:c#ui.unit.Dp,10,1:c#ui.graphics.Color,3:c#ui.graphics.Color,13:c#ui.unit.Dp,5,4)205@9432L31,207@9563L13,208@9626L14,209@9668L31,215@10018L48,224@10294L324,232@10728L1476,267@12552L23,269@12621L112,273@12765L612,288@13518L2623,217@10072L6069:ModalBottomSheet.kt#uh7d8r");
        int $dirty4 = $changed;
        if ((Integer.MIN_VALUE & i) != 0) {
            $dirty4 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty4 |= $composer3.changed($this$ModalBottomSheetContent_u2dIQkwcL4) ? 4 : 2;
        }
        if ((i & 1) != 0) {
            $dirty4 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty4 |= ($changed & 64) == 0 ? $composer3.changed(animatable) : $composer3.changedInstance(animatable) ? 32 : 16;
        }
        if ((i & 2) != 0) {
            $dirty4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty4 |= $composer3.changedInstance(scope) ? 256 : 128;
        }
        if ((i & 4) != 0) {
            $dirty4 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty4 |= $composer3.changedInstance(function0) ? 2048 : 1024;
        }
        if ((i & 8) != 0) {
            $dirty4 |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty4 |= $composer3.changedInstance(function1) ? 16384 : 8192;
        }
        int i3 = i & 16;
        if (i3 != 0) {
            $dirty4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            modifier2 = modifier;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            modifier2 = modifier;
            $dirty4 |= $composer3.changed(modifier2) ? 131072 : 65536;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 1572864) == 0) {
            if ((i & 32) == 0) {
                sheetState2 = sheetState;
                int i4 = $composer3.changed(sheetState2) ? 1048576 : 524288;
                $dirty4 |= i4;
            } else {
                sheetState2 = sheetState;
            }
            $dirty4 |= i4;
        } else {
            sheetState2 = sheetState;
        }
        int i5 = i & 64;
        if (i5 != 0) {
            $dirty4 |= 12582912;
            sheetMaxWidth2 = sheetMaxWidth;
        } else if (($changed & 12582912) == 0) {
            sheetMaxWidth2 = sheetMaxWidth;
            $dirty4 |= $composer3.changed(sheetMaxWidth2) ? 8388608 : 4194304;
        } else {
            sheetMaxWidth2 = sheetMaxWidth;
        }
        if (($changed & 100663296) == 0) {
            if ((i & 128) == 0) {
                shape2 = shape;
                int i6 = $composer3.changed(shape2) ? 67108864 : 33554432;
                $dirty4 |= i6;
            } else {
                shape2 = shape;
            }
            $dirty4 |= i6;
        } else {
            shape2 = shape;
        }
        if (($changed & 805306368) == 0) {
            if ((i & 256) == 0) {
                $dirty3 = $dirty4;
                $dirty1 = $changed1;
                int i7 = $composer3.changed(containerColor) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
                $dirty = $dirty3 | i7;
            } else {
                $dirty3 = $dirty4;
                $dirty1 = $changed1;
            }
            $dirty = $dirty3 | i7;
        } else {
            $dirty = $dirty4;
            $dirty1 = $changed1;
        }
        if (($changed1 & 6) == 0) {
            int $dirty15 = $dirty1;
            int $dirty16 = i & 512;
            $dirty12 = $dirty15 | (($dirty16 == 0 && $composer3.changed(contentColor)) ? 4 : 2);
        } else {
            $dirty12 = $dirty1;
        }
        int $dirty17 = i & 1024;
        if ($dirty17 != 0) {
            $dirty12 |= 48;
            i2 = $dirty17;
        } else if (($changed1 & 48) == 0) {
            i2 = $dirty17;
            $dirty12 |= $composer3.changed(tonalElevation) ? 32 : 16;
        } else {
            i2 = $dirty17;
        }
        int $dirty18 = $dirty12;
        int i8 = i & 2048;
        if (i8 != 0) {
            $dirty18 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            function23 = function2;
        } else if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function23 = function2;
            $dirty18 |= $composer3.changedInstance(function23) ? 256 : 128;
        } else {
            function23 = function2;
        }
        int $dirty19 = $dirty18;
        int $dirty110 = $changed1 & 3072;
        if ($dirty110 == 0) {
            $dirty13 = $dirty19 | (((i & 4096) == 0 && $composer3.changedInstance(function22)) ? 2048 : 1024);
        } else {
            $dirty13 = $dirty19;
        }
        if ((i & 8192) != 0) {
            $dirty13 |= 24576;
        } else if (($changed1 & 24576) == 0) {
            $dirty13 |= $composer3.changedInstance(function3) ? 16384 : 8192;
        }
        if (($dirty & 306783379) == 306783378 && ($dirty13 & 9363) == 9362 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            tonalElevation3 = tonalElevation;
            function26 = function22;
            $composer2 = $composer3;
            sheetState3 = sheetState2;
            shape4 = shape2;
            modifier4 = modifier2;
            contentColor3 = contentColor;
            function25 = function23;
            sheetMaxWidth5 = sheetMaxWidth2;
            containerColor4 = containerColor;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i3 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 32) != 0) {
                    $dirty &= -3670017;
                    sheetState2 = rememberModalBottomSheetState(false, null, $composer3, 0, 3);
                }
                if (i5 != 0) {
                    sheetMaxWidth2 = BottomSheetDefaults.INSTANCE.m2076getSheetMaxWidthD9Ej5fM();
                }
                if ((i & 128) != 0) {
                    $dirty &= -234881025;
                    shape2 = BottomSheetDefaults.INSTANCE.getExpandedShape($composer3, 6);
                }
                if ((i & 256) != 0) {
                    $dirty &= -1879048193;
                    containerColor2 = BottomSheetDefaults.INSTANCE.getContainerColor($composer3, 6);
                } else {
                    containerColor2 = containerColor;
                }
                if ((i & 512) != 0) {
                    contentColor2 = ColorSchemeKt.m2213contentColorForek8zF_U(containerColor2, $composer3, ($dirty >> 27) & 14);
                    $dirty13 &= -15;
                } else {
                    contentColor2 = contentColor;
                }
                float tonalElevation4 = i2 != 0 ? BottomSheetDefaults.INSTANCE.m2075getElevationD9Ej5fM() : tonalElevation;
                function2M2254getLambda2$material3_release = i8 != 0 ? ComposableSingletons$ModalBottomSheetKt.INSTANCE.m2254getLambda2$material3_release() : function2;
                if ((i & 4096) != 0) {
                    containerColor3 = containerColor2;
                    sheetMaxWidth3 = sheetMaxWidth2;
                    shape3 = shape2;
                    tonalElevation2 = tonalElevation4;
                    $dirty14 = $dirty13 & (-7169);
                    function24 = new Function2<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                        public final WindowInsets invoke(Composer $composer4, int $changed2) {
                            $composer4.startReplaceGroup(-11444670);
                            ComposerKt.sourceInformation($composer4, "C212@9919L12:ModalBottomSheet.kt#uh7d8r");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-11444670, $changed2, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:212)");
                            }
                            WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets($composer4, 6);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            $composer4.endReplaceGroup();
                            return windowInsets;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer, Integer num) {
                            return invoke(composer, num.intValue());
                        }
                    };
                    modifier3 = modifier2;
                    $dirty2 = $dirty;
                } else {
                    containerColor3 = containerColor2;
                    sheetMaxWidth3 = sheetMaxWidth2;
                    shape3 = shape2;
                    tonalElevation2 = tonalElevation4;
                    function24 = function22;
                    $dirty14 = $dirty13;
                    modifier3 = modifier2;
                    $dirty2 = $dirty;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 32) != 0) {
                    $dirty &= -3670017;
                }
                if ((i & 128) != 0) {
                    $dirty &= -234881025;
                }
                if ((i & 256) != 0) {
                    $dirty &= -1879048193;
                }
                if ((i & 512) != 0) {
                    $dirty13 &= -15;
                }
                if ((i & 4096) != 0) {
                    $dirty13 &= -7169;
                }
                containerColor3 = containerColor;
                contentColor2 = contentColor;
                $dirty14 = $dirty13;
                function2M2254getLambda2$material3_release = function23;
                sheetMaxWidth3 = sheetMaxWidth2;
                shape3 = shape2;
                modifier3 = modifier2;
                $dirty2 = $dirty;
                tonalElevation2 = tonalElevation;
                function24 = function22;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1676960531, $dirty2, $dirty14, "androidx.compose.material3.ModalBottomSheetContent (ModalBottomSheet.kt:214)");
            }
            Strings.Companion companion = Strings.INSTANCE;
            final String bottomSheetPaneTitle = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_bottom_sheet_pane_title), $composer3, 0);
            Modifier modifier5 = modifier3;
            Shape shape5 = shape3;
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SizeKt.m871widthInVpY3zN4$default($this$ModalBottomSheetContent_u2dIQkwcL4.align(modifier3, Alignment.INSTANCE.getTopCenter()), 0.0f, sheetMaxWidth3, 1, null), 0.0f, 1, null);
            ComposerKt.sourceInformationMarkerStart($composer3, 1237857395, "CC(remember):ModalBottomSheet.kt#9igjgp");
            boolean invalid$iv5 = (((3670016 & $dirty2) ^ 1572864) > 1048576 && $composer3.changed(sheetState2)) || ($dirty2 & 1572864) == 1048576;
            boolean invalid$iv6 = invalid$iv5;
            Object value$iv5 = $composer3.rememberedValue();
            if (invalid$iv6) {
                sheetMaxWidth4 = sheetMaxWidth3;
            } else {
                sheetMaxWidth4 = sheetMaxWidth3;
                if (value$iv5 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifierNestedScroll$default = NestedScrollModifierKt.nestedScroll$default(modifierFillMaxWidth$default, (NestedScrollConnection) value$iv5, null, 2, null);
                AnchoredDraggableState<SheetValue> anchoredDraggableState$material3_release = sheetState2.getAnchoredDraggableState$material3_release();
                Orientation orientation = Orientation.Vertical;
                ComposerKt.sourceInformationMarkerStart($composer3, 1237872435, "CC(remember):ModalBottomSheet.kt#9igjgp");
                long containerColor5 = containerColor3;
                boolean invalid$iv7 = (((3670016 & $dirty2) ^ 1572864) <= 1048576 && $composer3.changed(sheetState2)) || ($dirty2 & 1572864) == 1048576;
                invalid$iv = invalid$iv7;
                value$iv = $composer3.rememberedValue();
                if (invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                    value$iv = (Function2) new Function2<IntSize, Constraints, Pair<? extends DraggableAnchors<SheetValue>, ? extends SheetValue>>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$3$1

                        /* JADX INFO: compiled from: ModalBottomSheet.kt */
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

                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Pair<? extends DraggableAnchors<SheetValue>, ? extends SheetValue> invoke(IntSize intSize, Constraints constraints) {
                            return m2529invokeGpV2Q24(intSize.m7680unboximpl(), constraints.getValue());
                        }

                        /* JADX INFO: renamed from: invoke-GpV2Q24, reason: not valid java name */
                        public final Pair<DraggableAnchors<SheetValue>, SheetValue> m2529invokeGpV2Q24(final long sheetSize, long constraints) {
                            SheetValue newTarget;
                            final float fullHeight = Constraints.m7457getMaxHeightimpl(constraints);
                            final SheetState sheetState4 = sheetState2;
                            DraggableAnchors newAnchors = AnchoredDraggableKt.DraggableAnchors(new Function1<DraggableAnchorsConfig<SheetValue>, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$3$1$newAnchors$1
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
                                    draggableAnchorsConfig.at(SheetValue.Hidden, fullHeight);
                                    if (IntSize.m7675getHeightimpl(sheetSize) > fullHeight / 2 && !sheetState4.getSkipPartiallyExpanded()) {
                                        draggableAnchorsConfig.at(SheetValue.PartiallyExpanded, fullHeight / 2.0f);
                                    }
                                    if (IntSize.m7675getHeightimpl(sheetSize) != 0) {
                                        draggableAnchorsConfig.at(SheetValue.Expanded, Math.max(0.0f, fullHeight - IntSize.m7675getHeightimpl(sheetSize)));
                                    }
                                }
                            });
                            switch (WhenMappings.$EnumSwitchMapping$0[sheetState2.getAnchoredDraggableState$material3_release().getTargetValue().ordinal()]) {
                                case 1:
                                    newTarget = SheetValue.Hidden;
                                    break;
                                case 2:
                                case 3:
                                    boolean hasPartiallyExpandedState = newAnchors.hasAnchorFor(SheetValue.PartiallyExpanded);
                                    if (!hasPartiallyExpandedState) {
                                        newTarget = !newAnchors.hasAnchorFor(SheetValue.Expanded) ? SheetValue.Hidden : SheetValue.Expanded;
                                    } else {
                                        newTarget = SheetValue.PartiallyExpanded;
                                    }
                                    break;
                                default:
                                    throw new NoWhenBranchMatchedException();
                            }
                            return TuplesKt.to(newAnchors, newTarget);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv);
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifierDraggableAnchors = AnchoredDraggableKt.draggableAnchors(modifierNestedScroll$default, anchoredDraggableState$material3_release, orientation, (Function2) value$iv);
                DraggableState draggableState = sheetState2.getAnchoredDraggableState$material3_release().getDraggableState();
                Orientation orientation2 = Orientation.Vertical;
                boolean zIsVisible = sheetState2.isVisible();
                boolean zIsAnimationRunning = sheetState2.getAnchoredDraggableState$material3_release().isAnimationRunning();
                ComposerKt.sourceInformationMarkerStart($composer3, 1237929350, "CC(remember):ModalBottomSheet.kt#9igjgp");
                invalid$iv2 = (57344 & $dirty2) == 16384;
                Object it$iv = $composer3.rememberedValue();
                if (invalid$iv2 || it$iv == Composer.INSTANCE.getEmpty()) {
                    value$iv2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(function1, null);
                    $composer3.updateRememberedValue(value$iv2);
                } else {
                    value$iv2 = it$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifierDraggable = DraggableKt.draggable(modifierDraggableAnchors, draggableState, orientation2, (TsExtractor.TS_PACKET_SIZE & 4) != 0 ? true : zIsVisible, (TsExtractor.TS_PACKET_SIZE & 8) != 0 ? null : null, (TsExtractor.TS_PACKET_SIZE & 16) != 0 ? false : zIsAnimationRunning, (TsExtractor.TS_PACKET_SIZE & 32) != 0 ? DraggableKt.NoOpOnDragStarted : null, (TsExtractor.TS_PACKET_SIZE & 64) != 0 ? DraggableKt.NoOpOnDragStopped : (Function3) value$iv2, (TsExtractor.TS_PACKET_SIZE & 128) != 0 ? false : false);
                ComposerKt.sourceInformationMarkerStart($composer3, 1237931647, "CC(remember):ModalBottomSheet.kt#9igjgp");
                invalid$iv3 = $composer3.changed(bottomSheetPaneTitle);
                Object it$iv2 = $composer3.rememberedValue();
                if (!invalid$iv3 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                    value$iv3 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$5$1
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
                            SemanticsPropertiesKt.setPaneTitle($this$semantics, bottomSheetPaneTitle);
                            SemanticsPropertiesKt.setTraversalIndex($this$semantics, 0.0f);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv3);
                } else {
                    value$iv3 = it$iv2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifierDraggable, false, (Function1) value$iv3, 1, null);
                ComposerKt.sourceInformationMarkerStart($composer3, 1237936755, "CC(remember):ModalBottomSheet.kt#9igjgp");
                invalid$iv4 = ((((3670016 & $dirty2) ^ 1572864) <= 1048576 && $composer3.changed(sheetState2)) || ($dirty2 & 1572864) == 1048576) | (($dirty2 & 112) == 32 || (($dirty2 & 64) != 0 && $composer3.changedInstance(animatable)));
                Object it$iv3 = $composer3.rememberedValue();
                if (!invalid$iv4 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                    value$iv4 = (Function1) new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$6$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                            invoke2(graphicsLayerScope);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(GraphicsLayerScope $this$graphicsLayer) {
                            float sheetOffset = sheetState2.getAnchoredDraggableState$material3_release().getOffset();
                            float sheetHeight = Size.m4518getHeightimpl($this$graphicsLayer.getSize());
                            if (Float.isNaN(sheetOffset) || Float.isNaN(sheetHeight)) {
                                return;
                            }
                            if (!(sheetHeight == 0.0f)) {
                                float progress = animatable.getValue().floatValue();
                                $this$graphicsLayer.setScaleX(ModalBottomSheetKt.calculatePredictiveBackScaleX($this$graphicsLayer, progress));
                                $this$graphicsLayer.setScaleY(ModalBottomSheetKt.calculatePredictiveBackScaleY($this$graphicsLayer, progress));
                                $this$graphicsLayer.mo4898setTransformOrigin__ExYCQ(TransformOriginKt.TransformOrigin(0.5f, (sheetOffset + sheetHeight) / sheetHeight));
                            }
                        }
                    };
                    $composer3.updateRememberedValue(value$iv4);
                } else {
                    value$iv4 = it$iv3;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final Function2<? super Composer, ? super Integer, ? extends WindowInsets> function27 = function24;
                final SheetState sheetState4 = sheetState2;
                final Function2<? super Composer, ? super Integer, Unit> function28 = function2M2254getLambda2$material3_release;
                long contentColor4 = contentColor2;
                float sheetMaxWidth6 = sheetMaxWidth4;
                SurfaceKt.m2826SurfaceT9BRK9s(GraphicsLayerModifierKt.graphicsLayer(modifierSemantics$default, (Function1) value$iv4), shape5, containerColor5, contentColor4, tonalElevation2, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-692668920, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7
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

                    /* JADX WARN: Removed duplicated region for block: B:45:0x02b1  */
                    /* JADX WARN: Removed duplicated region for block: B:48:0x02bd  */
                    /* JADX WARN: Removed duplicated region for block: B:49:0x02c3  */
                    /* JADX WARN: Removed duplicated region for block: B:52:0x02f4  */
                    /* JADX WARN: Removed duplicated region for block: B:56:0x030a  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(Composer composer, int i9) {
                        Object obj;
                        Function0<ComposeUiNode> function02;
                        Composer composer2;
                        String str;
                        Composer composer3;
                        int i10;
                        Object obj2;
                        Function0<ComposeUiNode> function03;
                        Composer composerM3967constructorimpl;
                        int i11;
                        ComposerKt.sourceInformation(composer, "C290@13592L21,290@13629L550,289@13528L2607:ModalBottomSheet.kt#uh7d8r");
                        if ((i9 & 3) != 2 || !composer.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-692668920, i9, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:289)");
                            }
                            Modifier modifierWindowInsetsPadding = WindowInsetsPaddingKt.windowInsetsPadding(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), function27.invoke(composer, 0));
                            ComposerKt.sourceInformationMarkerStart(composer, 320924084, "CC(remember):ModalBottomSheet.kt#9igjgp");
                            boolean zChangedInstance = composer.changedInstance(animatable);
                            final Animatable<Float, AnimationVector1D> animatable2 = animatable;
                            Object objRememberedValue = composer.rememberedValue();
                            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                                obj = (Function1) new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                                        invoke2(graphicsLayerScope);
                                        return Unit.INSTANCE;
                                    }

                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(GraphicsLayerScope $this$graphicsLayer) {
                                        float progress = animatable2.getValue().floatValue();
                                        float predictiveBackScaleX = ModalBottomSheetKt.calculatePredictiveBackScaleX($this$graphicsLayer, progress);
                                        float predictiveBackScaleY = ModalBottomSheetKt.calculatePredictiveBackScaleY($this$graphicsLayer, progress);
                                        $this$graphicsLayer.setScaleY(!((predictiveBackScaleY > 0.0f ? 1 : (predictiveBackScaleY == 0.0f ? 0 : -1)) == 0) ? predictiveBackScaleX / predictiveBackScaleY : 1.0f);
                                        $this$graphicsLayer.mo4898setTransformOrigin__ExYCQ(ModalBottomSheetKt.PredictiveBackChildTransformOrigin);
                                    }
                                };
                                composer.updateRememberedValue(obj);
                            } else {
                                obj = objRememberedValue;
                            }
                            ComposerKt.sourceInformationMarkerEnd(composer);
                            Modifier modifierGraphicsLayer = GraphicsLayerModifierKt.graphicsLayer(modifierWindowInsetsPadding, (Function1) obj);
                            Function2<Composer, Integer, Unit> function29 = function28;
                            final SheetState sheetState5 = sheetState4;
                            final Function0<Unit> function04 = function0;
                            final CoroutineScope coroutineScope = scope;
                            Function3<ColumnScope, Composer, Integer, Unit> function32 = function3;
                            ComposerKt.sourceInformationMarkerStart(composer, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                            ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierGraphicsLayer);
                            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                            int i12 = ((((0 << 3) & 112) << 6) & 896) | 6;
                            ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                            if (!(composer.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composer.startReusableNode();
                            if (composer.getInserting()) {
                                function02 = constructor;
                                composer.createNode(function02);
                            } else {
                                function02 = constructor;
                                composer.useNode();
                            }
                            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl(composer);
                            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if (composerM3967constructorimpl2.getInserting() || !Intrinsics.areEqual(composerM3967constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                composerM3967constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                                composerM3967constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                            }
                            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
                            int i13 = (i12 >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart(composer, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                            int i14 = ((0 >> 6) & 112) | 6;
                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart(composer, 806123989, "C340@16116L9:ModalBottomSheet.kt#uh7d8r");
                            composer.startReplaceGroup(-1636564008);
                            ComposerKt.sourceInformation(composer, "303@14272L54,304@14368L48,305@14457L47,309@14672L1346,306@14521L1568");
                            if (function29 != null) {
                                Strings.Companion companion2 = Strings.INSTANCE;
                                final String strM3257getString2EP1pXo = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_bottom_sheet_collapse_description), composer, 0);
                                Strings.Companion companion3 = Strings.INSTANCE;
                                String strM3257getString2EP1pXo2 = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_bottom_sheet_dismiss_description), composer, 0);
                                Strings.Companion companion4 = Strings.INSTANCE;
                                final String strM3257getString2EP1pXo3 = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_bottom_sheet_expand_description), composer, 0);
                                Modifier modifierAlign = columnScopeInstance.align(Modifier.INSTANCE, Alignment.INSTANCE.getCenterHorizontally());
                                ComposerKt.sourceInformationMarkerStart(composer, -1636549585, "CC(remember):ModalBottomSheet.kt#9igjgp");
                                boolean zChanged = composer.changed(sheetState5) | composer.changed(strM3257getString2EP1pXo2) | composer.changed(function04) | composer.changed(strM3257getString2EP1pXo3) | composer.changedInstance(coroutineScope) | composer.changed(strM3257getString2EP1pXo);
                                Object objRememberedValue2 = composer.rememberedValue();
                                if (!zChanged) {
                                    str = strM3257getString2EP1pXo2;
                                    if (objRememberedValue2 != Composer.INSTANCE.getEmpty()) {
                                        composer3 = composer;
                                        i10 = -1323940314;
                                        obj2 = objRememberedValue2;
                                    }
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    Modifier modifierSemantics = SemanticsModifierKt.semantics(modifierAlign, true, (Function1) obj2);
                                    composer2 = composer3;
                                    ComposerKt.sourceInformationMarkerStart(composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
                                    ComposerKt.sourceInformationMarkerStart(composer2, i10, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer2.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, modifierSemantics);
                                    Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                    int i15 = ((((0 << 3) & 112) << 6) & 896) | 6;
                                    ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                    if (!(composer2.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer2.startReusableNode();
                                    if (!composer2.getInserting()) {
                                        function03 = constructor2;
                                        composer2.createNode(function03);
                                    } else {
                                        function03 = constructor2;
                                        composer2.useNode();
                                    }
                                    composerM3967constructorimpl = Updater.m3967constructorimpl(composer2);
                                    Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if (composerM3967constructorimpl.getInserting()) {
                                        i11 = currentCompositeKeyHash2;
                                        if (!Intrinsics.areEqual(composerM3967constructorimpl.rememberedValue(), Integer.valueOf(i11))) {
                                        }
                                        Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                                        int i16 = (i15 >> 6) & 14;
                                        ComposerKt.sourceInformationMarkerStart(composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        int i17 = ((0 >> 6) & 112) | 6;
                                        ComposerKt.sourceInformationMarkerStart(composer2, -760467413, "C337@16059L12:ModalBottomSheet.kt#uh7d8r");
                                        function29.invoke(composer2, 0);
                                        ComposerKt.sourceInformationMarkerEnd(composer2);
                                        ComposerKt.sourceInformationMarkerEnd(composer2);
                                        composer2.endNode();
                                        ComposerKt.sourceInformationMarkerEnd(composer2);
                                        ComposerKt.sourceInformationMarkerEnd(composer2);
                                        ComposerKt.sourceInformationMarkerEnd(composer2);
                                    } else {
                                        i11 = currentCompositeKeyHash2;
                                    }
                                    composerM3967constructorimpl.updateRememberedValue(Integer.valueOf(i11));
                                    composerM3967constructorimpl.apply(Integer.valueOf(i11), setCompositeKeyHash2);
                                    Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                                    int i162 = (i15 >> 6) & 14;
                                    ComposerKt.sourceInformationMarkerStart(composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                                    int i172 = ((0 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart(composer2, -760467413, "C337@16059L12:ModalBottomSheet.kt#uh7d8r");
                                    function29.invoke(composer2, 0);
                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                    composer2.endNode();
                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                } else {
                                    str = strM3257getString2EP1pXo2;
                                }
                                composer3 = composer;
                                final String str2 = str;
                                i10 = -1323940314;
                                obj2 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1
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
                                        final SheetState $this$invoke_u24lambda_u240 = sheetState5;
                                        String str3 = str2;
                                        String str4 = strM3257getString2EP1pXo3;
                                        String str5 = strM3257getString2EP1pXo;
                                        final Function0<Unit> function05 = function04;
                                        final CoroutineScope coroutineScope2 = coroutineScope;
                                        final SheetState sheetState6 = sheetState5;
                                        SemanticsPropertiesKt.dismiss($this$semantics, str3, new Function0<Boolean>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$1
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(0);
                                            }

                                            /* JADX WARN: Can't rename method to resolve collision */
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Boolean invoke() {
                                                function05.invoke();
                                                return true;
                                            }
                                        });
                                        if ($this$invoke_u24lambda_u240.getCurrentValue() == SheetValue.PartiallyExpanded) {
                                            SemanticsPropertiesKt.expand($this$semantics, str4, new Function0<Boolean>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$2
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(0);
                                                }

                                                /* JADX INFO: renamed from: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$2$1, reason: invalid class name */
                                                /* JADX INFO: compiled from: ModalBottomSheet.kt */
                                                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                                                @DebugMetadata(c = "androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$2$1", f = "ModalBottomSheet.kt", i = {}, l = {321}, m = "invokeSuspend", n = {}, s = {})
                                                static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                    final /* synthetic */ SheetState $sheetState;
                                                    int label;

                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    AnonymousClass1(SheetState sheetState, Continuation<? super AnonymousClass1> continuation) {
                                                        super(2, continuation);
                                                        this.$sheetState = sheetState;
                                                    }

                                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                        return new AnonymousClass1(this.$sheetState, continuation);
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
                                                                if (this.$sheetState.expand(this) == coroutine_suspended) {
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
                                                    if ($this$invoke_u24lambda_u240.getAnchoredDraggableState$material3_release().getConfirmValueChange$material3_release().invoke(SheetValue.Expanded).booleanValue()) {
                                                        BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1(sheetState6, null), 3, null);
                                                    }
                                                    return true;
                                                }
                                            });
                                        } else if ($this$invoke_u24lambda_u240.getHasPartiallyExpandedState()) {
                                            SemanticsPropertiesKt.collapse($this$semantics, str5, new Function0<Boolean>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$3
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(0);
                                                }

                                                /* JADX WARN: Can't rename method to resolve collision */
                                                @Override // kotlin.jvm.functions.Function0
                                                public final Boolean invoke() {
                                                    if ($this$invoke_u24lambda_u240.getAnchoredDraggableState$material3_release().getConfirmValueChange$material3_release().invoke(SheetValue.PartiallyExpanded).booleanValue()) {
                                                        BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1($this$invoke_u24lambda_u240, null), 3, null);
                                                    }
                                                    return true;
                                                }

                                                /* JADX INFO: renamed from: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$3$1, reason: invalid class name */
                                                /* JADX INFO: compiled from: ModalBottomSheet.kt */
                                                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                                                @DebugMetadata(c = "androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$3$1", f = "ModalBottomSheet.kt", i = {}, l = {330}, m = "invokeSuspend", n = {}, s = {})
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
                                            });
                                        }
                                    }
                                };
                                composer.updateRememberedValue(obj2);
                                ComposerKt.sourceInformationMarkerEnd(composer3);
                                Modifier modifierSemantics2 = SemanticsModifierKt.semantics(modifierAlign, true, (Function1) obj2);
                                composer2 = composer3;
                                ComposerKt.sourceInformationMarkerStart(composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
                                ComposerKt.sourceInformationMarkerStart(composer2, i10, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                int currentCompositeKeyHash22 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                                CompositionLocalMap currentCompositionLocalMap22 = composer2.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier22 = ComposedModifierKt.materializeModifier(composer2, modifierSemantics2);
                                Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
                                int i152 = ((((0 << 3) & 112) << 6) & 896) | 6;
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
                                if (composerM3967constructorimpl.getInserting()) {
                                }
                                composerM3967constructorimpl.updateRememberedValue(Integer.valueOf(i11));
                                composerM3967constructorimpl.apply(Integer.valueOf(i11), setCompositeKeyHash22);
                                Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier22, ComposeUiNode.INSTANCE.getSetModifier());
                                int i1622 = (i152 >> 6) & 14;
                                ComposerKt.sourceInformationMarkerStart(composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                BoxScopeInstance boxScopeInstance22 = BoxScopeInstance.INSTANCE;
                                int i1722 = ((0 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart(composer2, -760467413, "C337@16059L12:ModalBottomSheet.kt#uh7d8r");
                                function29.invoke(composer2, 0);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                composer2.endNode();
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                ComposerKt.sourceInformationMarkerEnd(composer2);
                            } else {
                                composer2 = composer;
                            }
                            composer2.endReplaceGroup();
                            function32.invoke(columnScopeInstance, composer2, Integer.valueOf(i14 & 14));
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
                }, $composer3, 54), $composer3, (($dirty2 >> 21) & 112) | 12582912 | (($dirty2 >> 21) & 896) | (($dirty14 << 9) & 7168) | (($dirty14 << 9) & 57344), 96);
                $composer2 = $composer3;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                sheetState3 = sheetState4;
                function25 = function28;
                function26 = function27;
                tonalElevation3 = tonalElevation2;
                contentColor3 = contentColor4;
                containerColor4 = containerColor5;
                shape4 = shape5;
                sheetMaxWidth5 = sheetMaxWidth6;
                modifier4 = modifier5;
            }
            value$iv5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetState2, Orientation.Vertical, function1);
            $composer3.updateRememberedValue(value$iv5);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifierNestedScroll$default2 = NestedScrollModifierKt.nestedScroll$default(modifierFillMaxWidth$default, (NestedScrollConnection) value$iv5, null, 2, null);
            AnchoredDraggableState<SheetValue> anchoredDraggableState$material3_release2 = sheetState2.getAnchoredDraggableState$material3_release();
            Orientation orientation3 = Orientation.Vertical;
            ComposerKt.sourceInformationMarkerStart($composer3, 1237872435, "CC(remember):ModalBottomSheet.kt#9igjgp");
            long containerColor52 = containerColor3;
            if (((3670016 & $dirty2) ^ 1572864) <= 1048576) {
                invalid$iv = invalid$iv7;
                value$iv = $composer3.rememberedValue();
                if (invalid$iv) {
                }
                value$iv = (Function2) new Function2<IntSize, Constraints, Pair<? extends DraggableAnchors<SheetValue>, ? extends SheetValue>>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$3$1

                    /* JADX INFO: compiled from: ModalBottomSheet.kt */
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

                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Pair<? extends DraggableAnchors<SheetValue>, ? extends SheetValue> invoke(IntSize intSize, Constraints constraints) {
                        return m2529invokeGpV2Q24(intSize.m7680unboximpl(), constraints.getValue());
                    }

                    /* JADX INFO: renamed from: invoke-GpV2Q24, reason: not valid java name */
                    public final Pair<DraggableAnchors<SheetValue>, SheetValue> m2529invokeGpV2Q24(final long sheetSize, long constraints) {
                        SheetValue newTarget;
                        final float fullHeight = Constraints.m7457getMaxHeightimpl(constraints);
                        final SheetState sheetState42 = sheetState2;
                        DraggableAnchors newAnchors = AnchoredDraggableKt.DraggableAnchors(new Function1<DraggableAnchorsConfig<SheetValue>, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$3$1$newAnchors$1
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
                                draggableAnchorsConfig.at(SheetValue.Hidden, fullHeight);
                                if (IntSize.m7675getHeightimpl(sheetSize) > fullHeight / 2 && !sheetState42.getSkipPartiallyExpanded()) {
                                    draggableAnchorsConfig.at(SheetValue.PartiallyExpanded, fullHeight / 2.0f);
                                }
                                if (IntSize.m7675getHeightimpl(sheetSize) != 0) {
                                    draggableAnchorsConfig.at(SheetValue.Expanded, Math.max(0.0f, fullHeight - IntSize.m7675getHeightimpl(sheetSize)));
                                }
                            }
                        });
                        switch (WhenMappings.$EnumSwitchMapping$0[sheetState2.getAnchoredDraggableState$material3_release().getTargetValue().ordinal()]) {
                            case 1:
                                newTarget = SheetValue.Hidden;
                                break;
                            case 2:
                            case 3:
                                boolean hasPartiallyExpandedState = newAnchors.hasAnchorFor(SheetValue.PartiallyExpanded);
                                if (!hasPartiallyExpandedState) {
                                    newTarget = !newAnchors.hasAnchorFor(SheetValue.Expanded) ? SheetValue.Hidden : SheetValue.Expanded;
                                } else {
                                    newTarget = SheetValue.PartiallyExpanded;
                                }
                                break;
                            default:
                                throw new NoWhenBranchMatchedException();
                        }
                        return TuplesKt.to(newAnchors, newTarget);
                    }
                };
                $composer3.updateRememberedValue(value$iv);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifierDraggableAnchors2 = AnchoredDraggableKt.draggableAnchors(modifierNestedScroll$default2, anchoredDraggableState$material3_release2, orientation3, (Function2) value$iv);
                DraggableState draggableState2 = sheetState2.getAnchoredDraggableState$material3_release().getDraggableState();
                Orientation orientation22 = Orientation.Vertical;
                boolean zIsVisible2 = sheetState2.isVisible();
                boolean zIsAnimationRunning2 = sheetState2.getAnchoredDraggableState$material3_release().isAnimationRunning();
                ComposerKt.sourceInformationMarkerStart($composer3, 1237929350, "CC(remember):ModalBottomSheet.kt#9igjgp");
                if ((57344 & $dirty2) == 16384) {
                }
                Object it$iv4 = $composer3.rememberedValue();
                if (invalid$iv2) {
                    value$iv2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(function1, null);
                    $composer3.updateRememberedValue(value$iv2);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    Modifier modifierDraggable2 = DraggableKt.draggable(modifierDraggableAnchors2, draggableState2, orientation22, (TsExtractor.TS_PACKET_SIZE & 4) != 0 ? true : zIsVisible2, (TsExtractor.TS_PACKET_SIZE & 8) != 0 ? null : null, (TsExtractor.TS_PACKET_SIZE & 16) != 0 ? false : zIsAnimationRunning2, (TsExtractor.TS_PACKET_SIZE & 32) != 0 ? DraggableKt.NoOpOnDragStarted : null, (TsExtractor.TS_PACKET_SIZE & 64) != 0 ? DraggableKt.NoOpOnDragStopped : (Function3) value$iv2, (TsExtractor.TS_PACKET_SIZE & 128) != 0 ? false : false);
                    ComposerKt.sourceInformationMarkerStart($composer3, 1237931647, "CC(remember):ModalBottomSheet.kt#9igjgp");
                    invalid$iv3 = $composer3.changed(bottomSheetPaneTitle);
                    Object it$iv22 = $composer3.rememberedValue();
                    if (invalid$iv3) {
                    }
                    value$iv3 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$5$1
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
                            SemanticsPropertiesKt.setPaneTitle($this$semantics, bottomSheetPaneTitle);
                            SemanticsPropertiesKt.setTraversalIndex($this$semantics, 0.0f);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    Modifier modifierSemantics$default2 = SemanticsModifierKt.semantics$default(modifierDraggable2, false, (Function1) value$iv3, 1, null);
                    ComposerKt.sourceInformationMarkerStart($composer3, 1237936755, "CC(remember):ModalBottomSheet.kt#9igjgp");
                    if (((3670016 & $dirty2) ^ 1572864) <= 1048576) {
                        if (($dirty2 & 112) == 32) {
                            invalid$iv4 = ((((3670016 & $dirty2) ^ 1572864) <= 1048576 && $composer3.changed(sheetState2)) || ($dirty2 & 1572864) == 1048576) | (($dirty2 & 112) == 32 || (($dirty2 & 64) != 0 && $composer3.changedInstance(animatable)));
                            Object it$iv32 = $composer3.rememberedValue();
                            if (invalid$iv4) {
                                value$iv4 = (Function1) new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$6$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                                        invoke2(graphicsLayerScope);
                                        return Unit.INSTANCE;
                                    }

                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(GraphicsLayerScope $this$graphicsLayer) {
                                        float sheetOffset = sheetState2.getAnchoredDraggableState$material3_release().getOffset();
                                        float sheetHeight = Size.m4518getHeightimpl($this$graphicsLayer.getSize());
                                        if (Float.isNaN(sheetOffset) || Float.isNaN(sheetHeight)) {
                                            return;
                                        }
                                        if (!(sheetHeight == 0.0f)) {
                                            float progress = animatable.getValue().floatValue();
                                            $this$graphicsLayer.setScaleX(ModalBottomSheetKt.calculatePredictiveBackScaleX($this$graphicsLayer, progress));
                                            $this$graphicsLayer.setScaleY(ModalBottomSheetKt.calculatePredictiveBackScaleY($this$graphicsLayer, progress));
                                            $this$graphicsLayer.mo4898setTransformOrigin__ExYCQ(TransformOriginKt.TransformOrigin(0.5f, (sheetOffset + sheetHeight) / sheetHeight));
                                        }
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv4);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                final Function2<? super Composer, ? super Integer, ? extends WindowInsets> function272 = function24;
                                final SheetState sheetState42 = sheetState2;
                                final Function2<? super Composer, ? super Integer, Unit> function282 = function2M2254getLambda2$material3_release;
                                long contentColor42 = contentColor2;
                                float sheetMaxWidth62 = sheetMaxWidth4;
                                SurfaceKt.m2826SurfaceT9BRK9s(GraphicsLayerModifierKt.graphicsLayer(modifierSemantics$default2, (Function1) value$iv4), shape5, containerColor52, contentColor42, tonalElevation2, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-692668920, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7
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

                                    /* JADX WARN: Removed duplicated region for block: B:45:0x02b1  */
                                    /* JADX WARN: Removed duplicated region for block: B:48:0x02bd  */
                                    /* JADX WARN: Removed duplicated region for block: B:49:0x02c3  */
                                    /* JADX WARN: Removed duplicated region for block: B:52:0x02f4  */
                                    /* JADX WARN: Removed duplicated region for block: B:56:0x030a  */
                                    /*
                                        Code decompiled incorrectly, please refer to instructions dump.
                                    */
                                    public final void invoke(Composer composer, int i9) {
                                        Object obj;
                                        Function0<ComposeUiNode> function02;
                                        Composer composer2;
                                        String str;
                                        Composer composer3;
                                        int i10;
                                        Object obj2;
                                        Function0<ComposeUiNode> function03;
                                        Composer composerM3967constructorimpl;
                                        int i11;
                                        ComposerKt.sourceInformation(composer, "C290@13592L21,290@13629L550,289@13528L2607:ModalBottomSheet.kt#uh7d8r");
                                        if ((i9 & 3) != 2 || !composer.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-692668920, i9, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:289)");
                                            }
                                            Modifier modifierWindowInsetsPadding = WindowInsetsPaddingKt.windowInsetsPadding(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), function272.invoke(composer, 0));
                                            ComposerKt.sourceInformationMarkerStart(composer, 320924084, "CC(remember):ModalBottomSheet.kt#9igjgp");
                                            boolean zChangedInstance = composer.changedInstance(animatable);
                                            final Animatable<Float, AnimationVector1D> animatable2 = animatable;
                                            Object objRememberedValue = composer.rememberedValue();
                                            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                                                obj = (Function1) new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$1$1
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    {
                                                        super(1);
                                                    }

                                                    @Override // kotlin.jvm.functions.Function1
                                                    public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                                                        invoke2(graphicsLayerScope);
                                                        return Unit.INSTANCE;
                                                    }

                                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                                    public final void invoke2(GraphicsLayerScope $this$graphicsLayer) {
                                                        float progress = animatable2.getValue().floatValue();
                                                        float predictiveBackScaleX = ModalBottomSheetKt.calculatePredictiveBackScaleX($this$graphicsLayer, progress);
                                                        float predictiveBackScaleY = ModalBottomSheetKt.calculatePredictiveBackScaleY($this$graphicsLayer, progress);
                                                        $this$graphicsLayer.setScaleY(!((predictiveBackScaleY > 0.0f ? 1 : (predictiveBackScaleY == 0.0f ? 0 : -1)) == 0) ? predictiveBackScaleX / predictiveBackScaleY : 1.0f);
                                                        $this$graphicsLayer.mo4898setTransformOrigin__ExYCQ(ModalBottomSheetKt.PredictiveBackChildTransformOrigin);
                                                    }
                                                };
                                                composer.updateRememberedValue(obj);
                                            } else {
                                                obj = objRememberedValue;
                                            }
                                            ComposerKt.sourceInformationMarkerEnd(composer);
                                            Modifier modifierGraphicsLayer = GraphicsLayerModifierKt.graphicsLayer(modifierWindowInsetsPadding, (Function1) obj);
                                            Function2<Composer, Integer, Unit> function29 = function282;
                                            final SheetState sheetState5 = sheetState42;
                                            final Function0<Unit> function04 = function0;
                                            final CoroutineScope coroutineScope = scope;
                                            Function3<ColumnScope, Composer, Integer, Unit> function32 = function3;
                                            ComposerKt.sourceInformationMarkerStart(composer, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                                            ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                                            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierGraphicsLayer);
                                            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                            int i12 = ((((0 << 3) & 112) << 6) & 896) | 6;
                                            ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                            if (!(composer.getApplier() instanceof Applier)) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer.startReusableNode();
                                            if (composer.getInserting()) {
                                                function02 = constructor;
                                                composer.createNode(function02);
                                            } else {
                                                function02 = constructor;
                                                composer.useNode();
                                            }
                                            Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl(composer);
                                            Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                            Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                            if (composerM3967constructorimpl2.getInserting() || !Intrinsics.areEqual(composerM3967constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                composerM3967constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                                                composerM3967constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                                            }
                                            Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
                                            int i13 = (i12 >> 6) & 14;
                                            ComposerKt.sourceInformationMarkerStart(composer, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                                            int i14 = ((0 >> 6) & 112) | 6;
                                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                            ComposerKt.sourceInformationMarkerStart(composer, 806123989, "C340@16116L9:ModalBottomSheet.kt#uh7d8r");
                                            composer.startReplaceGroup(-1636564008);
                                            ComposerKt.sourceInformation(composer, "303@14272L54,304@14368L48,305@14457L47,309@14672L1346,306@14521L1568");
                                            if (function29 != null) {
                                                Strings.Companion companion2 = Strings.INSTANCE;
                                                final String strM3257getString2EP1pXo = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_bottom_sheet_collapse_description), composer, 0);
                                                Strings.Companion companion3 = Strings.INSTANCE;
                                                String strM3257getString2EP1pXo2 = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_bottom_sheet_dismiss_description), composer, 0);
                                                Strings.Companion companion4 = Strings.INSTANCE;
                                                final String strM3257getString2EP1pXo3 = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_bottom_sheet_expand_description), composer, 0);
                                                Modifier modifierAlign = columnScopeInstance.align(Modifier.INSTANCE, Alignment.INSTANCE.getCenterHorizontally());
                                                ComposerKt.sourceInformationMarkerStart(composer, -1636549585, "CC(remember):ModalBottomSheet.kt#9igjgp");
                                                boolean zChanged = composer.changed(sheetState5) | composer.changed(strM3257getString2EP1pXo2) | composer.changed(function04) | composer.changed(strM3257getString2EP1pXo3) | composer.changedInstance(coroutineScope) | composer.changed(strM3257getString2EP1pXo);
                                                Object objRememberedValue2 = composer.rememberedValue();
                                                if (!zChanged) {
                                                    str = strM3257getString2EP1pXo2;
                                                    if (objRememberedValue2 != Composer.INSTANCE.getEmpty()) {
                                                        composer3 = composer;
                                                        i10 = -1323940314;
                                                        obj2 = objRememberedValue2;
                                                    }
                                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                                    Modifier modifierSemantics2 = SemanticsModifierKt.semantics(modifierAlign, true, (Function1) obj2);
                                                    composer2 = composer3;
                                                    ComposerKt.sourceInformationMarkerStart(composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
                                                    ComposerKt.sourceInformationMarkerStart(composer2, i10, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                                    int currentCompositeKeyHash22 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                                                    CompositionLocalMap currentCompositionLocalMap22 = composer2.getCurrentCompositionLocalMap();
                                                    Modifier modifierMaterializeModifier22 = ComposedModifierKt.materializeModifier(composer2, modifierSemantics2);
                                                    Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
                                                    int i152 = ((((0 << 3) & 112) << 6) & 896) | 6;
                                                    ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                                    if (!(composer2.getApplier() instanceof Applier)) {
                                                        ComposablesKt.invalidApplier();
                                                    }
                                                    composer2.startReusableNode();
                                                    if (!composer2.getInserting()) {
                                                        function03 = constructor22;
                                                        composer2.createNode(function03);
                                                    } else {
                                                        function03 = constructor22;
                                                        composer2.useNode();
                                                    }
                                                    composerM3967constructorimpl = Updater.m3967constructorimpl(composer2);
                                                    Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                                    Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                                    if (composerM3967constructorimpl.getInserting()) {
                                                        i11 = currentCompositeKeyHash22;
                                                        if (!Intrinsics.areEqual(composerM3967constructorimpl.rememberedValue(), Integer.valueOf(i11))) {
                                                        }
                                                        Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier22, ComposeUiNode.INSTANCE.getSetModifier());
                                                        int i1622 = (i152 >> 6) & 14;
                                                        ComposerKt.sourceInformationMarkerStart(composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                                        BoxScopeInstance boxScopeInstance22 = BoxScopeInstance.INSTANCE;
                                                        int i1722 = ((0 >> 6) & 112) | 6;
                                                        ComposerKt.sourceInformationMarkerStart(composer2, -760467413, "C337@16059L12:ModalBottomSheet.kt#uh7d8r");
                                                        function29.invoke(composer2, 0);
                                                        ComposerKt.sourceInformationMarkerEnd(composer2);
                                                        ComposerKt.sourceInformationMarkerEnd(composer2);
                                                        composer2.endNode();
                                                        ComposerKt.sourceInformationMarkerEnd(composer2);
                                                        ComposerKt.sourceInformationMarkerEnd(composer2);
                                                        ComposerKt.sourceInformationMarkerEnd(composer2);
                                                    } else {
                                                        i11 = currentCompositeKeyHash22;
                                                    }
                                                    composerM3967constructorimpl.updateRememberedValue(Integer.valueOf(i11));
                                                    composerM3967constructorimpl.apply(Integer.valueOf(i11), setCompositeKeyHash22);
                                                    Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier22, ComposeUiNode.INSTANCE.getSetModifier());
                                                    int i16222 = (i152 >> 6) & 14;
                                                    ComposerKt.sourceInformationMarkerStart(composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                                    BoxScopeInstance boxScopeInstance222 = BoxScopeInstance.INSTANCE;
                                                    int i17222 = ((0 >> 6) & 112) | 6;
                                                    ComposerKt.sourceInformationMarkerStart(composer2, -760467413, "C337@16059L12:ModalBottomSheet.kt#uh7d8r");
                                                    function29.invoke(composer2, 0);
                                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                                    composer2.endNode();
                                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                                    ComposerKt.sourceInformationMarkerEnd(composer2);
                                                } else {
                                                    str = strM3257getString2EP1pXo2;
                                                }
                                                composer3 = composer;
                                                final String str2 = str;
                                                i10 = -1323940314;
                                                obj2 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1
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
                                                        final SheetState $this$invoke_u24lambda_u240 = sheetState5;
                                                        String str3 = str2;
                                                        String str4 = strM3257getString2EP1pXo3;
                                                        String str5 = strM3257getString2EP1pXo;
                                                        final Function0<Unit> function05 = function04;
                                                        final CoroutineScope coroutineScope2 = coroutineScope;
                                                        final SheetState sheetState6 = sheetState5;
                                                        SemanticsPropertiesKt.dismiss($this$semantics, str3, new Function0<Boolean>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$1
                                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                            {
                                                                super(0);
                                                            }

                                                            /* JADX WARN: Can't rename method to resolve collision */
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Boolean invoke() {
                                                                function05.invoke();
                                                                return true;
                                                            }
                                                        });
                                                        if ($this$invoke_u24lambda_u240.getCurrentValue() == SheetValue.PartiallyExpanded) {
                                                            SemanticsPropertiesKt.expand($this$semantics, str4, new Function0<Boolean>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$2
                                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                                {
                                                                    super(0);
                                                                }

                                                                /* JADX INFO: renamed from: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$2$1, reason: invalid class name */
                                                                /* JADX INFO: compiled from: ModalBottomSheet.kt */
                                                                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                                                                @DebugMetadata(c = "androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$2$1", f = "ModalBottomSheet.kt", i = {}, l = {321}, m = "invokeSuspend", n = {}, s = {})
                                                                static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                                    final /* synthetic */ SheetState $sheetState;
                                                                    int label;

                                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                                    AnonymousClass1(SheetState sheetState, Continuation<? super AnonymousClass1> continuation) {
                                                                        super(2, continuation);
                                                                        this.$sheetState = sheetState;
                                                                    }

                                                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                                        return new AnonymousClass1(this.$sheetState, continuation);
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
                                                                                if (this.$sheetState.expand(this) == coroutine_suspended) {
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
                                                                    if ($this$invoke_u24lambda_u240.getAnchoredDraggableState$material3_release().getConfirmValueChange$material3_release().invoke(SheetValue.Expanded).booleanValue()) {
                                                                        BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1(sheetState6, null), 3, null);
                                                                    }
                                                                    return true;
                                                                }
                                                            });
                                                        } else if ($this$invoke_u24lambda_u240.getHasPartiallyExpandedState()) {
                                                            SemanticsPropertiesKt.collapse($this$semantics, str5, new Function0<Boolean>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$3
                                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                                {
                                                                    super(0);
                                                                }

                                                                /* JADX WARN: Can't rename method to resolve collision */
                                                                @Override // kotlin.jvm.functions.Function0
                                                                public final Boolean invoke() {
                                                                    if ($this$invoke_u24lambda_u240.getAnchoredDraggableState$material3_release().getConfirmValueChange$material3_release().invoke(SheetValue.PartiallyExpanded).booleanValue()) {
                                                                        BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1($this$invoke_u24lambda_u240, null), 3, null);
                                                                    }
                                                                    return true;
                                                                }

                                                                /* JADX INFO: renamed from: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$3$1, reason: invalid class name */
                                                                /* JADX INFO: compiled from: ModalBottomSheet.kt */
                                                                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                                                                @DebugMetadata(c = "androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1$1$1$3$1", f = "ModalBottomSheet.kt", i = {}, l = {330}, m = "invokeSuspend", n = {}, s = {})
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
                                                            });
                                                        }
                                                    }
                                                };
                                                composer.updateRememberedValue(obj2);
                                                ComposerKt.sourceInformationMarkerEnd(composer3);
                                                Modifier modifierSemantics22 = SemanticsModifierKt.semantics(modifierAlign, true, (Function1) obj2);
                                                composer2 = composer3;
                                                ComposerKt.sourceInformationMarkerStart(composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy22 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
                                                ComposerKt.sourceInformationMarkerStart(composer2, i10, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                                int currentCompositeKeyHash222 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                                                CompositionLocalMap currentCompositionLocalMap222 = composer2.getCurrentCompositionLocalMap();
                                                Modifier modifierMaterializeModifier222 = ComposedModifierKt.materializeModifier(composer2, modifierSemantics22);
                                                Function0<ComposeUiNode> constructor222 = ComposeUiNode.INSTANCE.getConstructor();
                                                int i1522 = ((((0 << 3) & 112) << 6) & 896) | 6;
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
                                                if (composerM3967constructorimpl.getInserting()) {
                                                }
                                                composerM3967constructorimpl.updateRememberedValue(Integer.valueOf(i11));
                                                composerM3967constructorimpl.apply(Integer.valueOf(i11), setCompositeKeyHash222);
                                                Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier222, ComposeUiNode.INSTANCE.getSetModifier());
                                                int i162222 = (i1522 >> 6) & 14;
                                                ComposerKt.sourceInformationMarkerStart(composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                                BoxScopeInstance boxScopeInstance2222 = BoxScopeInstance.INSTANCE;
                                                int i172222 = ((0 >> 6) & 112) | 6;
                                                ComposerKt.sourceInformationMarkerStart(composer2, -760467413, "C337@16059L12:ModalBottomSheet.kt#uh7d8r");
                                                function29.invoke(composer2, 0);
                                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                                composer2.endNode();
                                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                                ComposerKt.sourceInformationMarkerEnd(composer2);
                                            } else {
                                                composer2 = composer;
                                            }
                                            composer2.endReplaceGroup();
                                            function32.invoke(columnScopeInstance, composer2, Integer.valueOf(i14 & 14));
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
                                }, $composer3, 54), $composer3, (($dirty2 >> 21) & 112) | 12582912 | (($dirty2 >> 21) & 896) | (($dirty14 << 9) & 7168) | (($dirty14 << 9) & 57344), 96);
                                $composer2 = $composer3;
                                if (ComposerKt.isTraceInProgress()) {
                                }
                                sheetState3 = sheetState42;
                                function25 = function282;
                                function26 = function272;
                                tonalElevation3 = tonalElevation2;
                                contentColor3 = contentColor42;
                                containerColor4 = containerColor52;
                                shape4 = shape5;
                                sheetMaxWidth5 = sheetMaxWidth62;
                                modifier4 = modifier5;
                            }
                        }
                    }
                }
            } else {
                invalid$iv = invalid$iv7;
                value$iv = $composer3.rememberedValue();
                if (invalid$iv) {
                }
                value$iv = (Function2) new Function2<IntSize, Constraints, Pair<? extends DraggableAnchors<SheetValue>, ? extends SheetValue>>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$3$1

                    /* JADX INFO: compiled from: ModalBottomSheet.kt */
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

                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Pair<? extends DraggableAnchors<SheetValue>, ? extends SheetValue> invoke(IntSize intSize, Constraints constraints) {
                        return m2529invokeGpV2Q24(intSize.m7680unboximpl(), constraints.getValue());
                    }

                    /* JADX INFO: renamed from: invoke-GpV2Q24, reason: not valid java name */
                    public final Pair<DraggableAnchors<SheetValue>, SheetValue> m2529invokeGpV2Q24(final long sheetSize, long constraints) {
                        SheetValue newTarget;
                        final float fullHeight = Constraints.m7457getMaxHeightimpl(constraints);
                        final SheetState sheetState422 = sheetState2;
                        DraggableAnchors newAnchors = AnchoredDraggableKt.DraggableAnchors(new Function1<DraggableAnchorsConfig<SheetValue>, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$3$1$newAnchors$1
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
                                draggableAnchorsConfig.at(SheetValue.Hidden, fullHeight);
                                if (IntSize.m7675getHeightimpl(sheetSize) > fullHeight / 2 && !sheetState422.getSkipPartiallyExpanded()) {
                                    draggableAnchorsConfig.at(SheetValue.PartiallyExpanded, fullHeight / 2.0f);
                                }
                                if (IntSize.m7675getHeightimpl(sheetSize) != 0) {
                                    draggableAnchorsConfig.at(SheetValue.Expanded, Math.max(0.0f, fullHeight - IntSize.m7675getHeightimpl(sheetSize)));
                                }
                            }
                        });
                        switch (WhenMappings.$EnumSwitchMapping$0[sheetState2.getAnchoredDraggableState$material3_release().getTargetValue().ordinal()]) {
                            case 1:
                                newTarget = SheetValue.Hidden;
                                break;
                            case 2:
                            case 3:
                                boolean hasPartiallyExpandedState = newAnchors.hasAnchorFor(SheetValue.PartiallyExpanded);
                                if (!hasPartiallyExpandedState) {
                                    newTarget = !newAnchors.hasAnchorFor(SheetValue.Expanded) ? SheetValue.Hidden : SheetValue.Expanded;
                                } else {
                                    newTarget = SheetValue.PartiallyExpanded;
                                }
                                break;
                            default:
                                throw new NoWhenBranchMatchedException();
                        }
                        return TuplesKt.to(newAnchors, newTarget);
                    }
                };
                $composer3.updateRememberedValue(value$iv);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifierDraggableAnchors22 = AnchoredDraggableKt.draggableAnchors(modifierNestedScroll$default2, anchoredDraggableState$material3_release2, orientation3, (Function2) value$iv);
                DraggableState draggableState22 = sheetState2.getAnchoredDraggableState$material3_release().getDraggableState();
                Orientation orientation222 = Orientation.Vertical;
                boolean zIsVisible22 = sheetState2.isVisible();
                boolean zIsAnimationRunning22 = sheetState2.getAnchoredDraggableState$material3_release().isAnimationRunning();
                ComposerKt.sourceInformationMarkerStart($composer3, 1237929350, "CC(remember):ModalBottomSheet.kt#9igjgp");
                if ((57344 & $dirty2) == 16384) {
                }
                Object it$iv42 = $composer3.rememberedValue();
                if (invalid$iv2) {
                }
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$8
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

                public final void invoke(Composer composer, int i9) {
                    ModalBottomSheetKt.m2526ModalBottomSheetContentIQkwcL4($this$ModalBottomSheetContent_u2dIQkwcL4, animatable, scope, function0, function1, modifier4, sheetState3, sheetMaxWidth5, shape4, containerColor4, contentColor3, tonalElevation3, function25, function26, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float calculatePredictiveBackScaleX(GraphicsLayerScope $this$calculatePredictiveBackScaleX, float progress) {
        float width = Size.m4521getWidthimpl($this$calculatePredictiveBackScaleX.getSize());
        if (Float.isNaN(width)) {
            return 1.0f;
        }
        if (width == 0.0f) {
            return 1.0f;
        }
        return 1.0f - (MathHelpersKt.lerp(0.0f, Math.min($this$calculatePredictiveBackScaleX.mo405toPx0680j_4(PredictiveBackMaxScaleXDistance), width), progress) / width);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float calculatePredictiveBackScaleY(GraphicsLayerScope $this$calculatePredictiveBackScaleY, float progress) {
        float height = Size.m4518getHeightimpl($this$calculatePredictiveBackScaleY.getSize());
        if (Float.isNaN(height)) {
            return 1.0f;
        }
        if (height == 0.0f) {
            return 1.0f;
        }
        return 1.0f - (MathHelpersKt.lerp(0.0f, Math.min($this$calculatePredictiveBackScaleY.mo405toPx0680j_4(PredictiveBackMaxScaleYDistance), height), progress) / height);
    }

    public static final SheetState rememberModalBottomSheetState(boolean skipPartiallyExpanded, Function1<? super SheetValue, Boolean> function1, Composer $composer, int $changed, int i) {
        Function1<? super SheetValue, Boolean> function12;
        ComposerKt.sourceInformationMarkerStart($composer, -778250030, "C(rememberModalBottomSheetState)P(1)400@18058L160:ModalBottomSheet.kt#uh7d8r");
        boolean skipPartiallyExpanded2 = (i & 1) != 0 ? false : skipPartiallyExpanded;
        if ((i & 2) != 0) {
            Function1 confirmValueChange = new Function1<SheetValue, Boolean>() { // from class: androidx.compose.material3.ModalBottomSheetKt.rememberModalBottomSheetState.1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(SheetValue it) {
                    return true;
                }
            };
            function12 = confirmValueChange;
        } else {
            function12 = function1;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-778250030, $changed, -1, "androidx.compose.material3.rememberModalBottomSheetState (ModalBottomSheet.kt:400)");
        }
        SheetState sheetStateRememberSheetState = SheetDefaultsKt.rememberSheetState(skipPartiallyExpanded2, function12, SheetValue.Hidden, false, $composer, ($changed & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ($changed & 112), 8);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return sheetStateRememberSheetState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Scrim-3J-VO9M, reason: not valid java name */
    public static final void m2527Scrim3JVO9M(final long color, final Function0<Unit> function0, final boolean visible, Composer $composer, final int $changed) {
        Modifier.Companion dismissSheet;
        Object value$iv;
        ModalBottomSheetKt$Scrim$dismissSheet$1$1 value$iv2;
        Object value$iv3;
        Composer $composer2 = $composer.startRestartGroup(951870469);
        ComposerKt.sourceInformation($composer2, "C(Scrim)P(0:c#ui.graphics.Color)410@18376L87,411@18489L29,426@19112L79,426@19062L129:ModalBottomSheet.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(color) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function0) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changed(visible) ? 256 : 128;
        }
        if (($dirty & 147) == 146 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(951870469, $dirty, -1, "androidx.compose.material3.Scrim (ModalBottomSheet.kt:407)");
            }
            if ((color != 16 ? 1 : 0) != 0) {
                int $dirty2 = $dirty;
                final State<Float> stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(visible ? 1065353216 : 0, new TweenSpec(0, 0, null, 7, null), 0.0f, null, null, $composer2, 48, 28);
                Strings.Companion companion = Strings.INSTANCE;
                final String closeSheet = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(androidx.compose.ui.R.string.close_sheet), $composer2, 0);
                $composer2.startReplaceGroup(-1785653838);
                ComposerKt.sourceInformation($composer2, "414@18629L44,415@18730L263");
                if (visible) {
                    Modifier.Companion companion2 = Modifier.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer2, -1785652017, "CC(remember):ModalBottomSheet.kt#9igjgp");
                    boolean invalid$iv = ($dirty2 & 112) == 32;
                    Object it$iv = $composer2.rememberedValue();
                    if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv2 = new ModalBottomSheetKt$Scrim$dismissSheet$1$1(function0, null);
                        $composer2.updateRememberedValue(value$iv2);
                    } else {
                        value$iv2 = it$iv;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    Modifier modifierThen = companion2.then(new SuspendPointerInputElement(function0, null, null, new SuspendingPointerInputFilterKt$sam$androidx_compose_ui_input_pointer_PointerInputEventHandler$0((Function2) value$iv2), 6, null));
                    ComposerKt.sourceInformationMarkerStart($composer2, -1785648566, "CC(remember):ModalBottomSheet.kt#9igjgp");
                    boolean invalid$iv2 = $composer2.changed(closeSheet) | (($dirty2 & 112) == 32);
                    Object it$iv2 = $composer2.rememberedValue();
                    if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                        value$iv3 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$Scrim$dismissSheet$2$1
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
                                SemanticsPropertiesKt.setTraversalIndex($this$semantics, 1.0f);
                                SemanticsPropertiesKt.setContentDescription($this$semantics, closeSheet);
                                final Function0<Unit> function02 = function0;
                                SemanticsPropertiesKt.onClick$default($this$semantics, null, new Function0<Boolean>() { // from class: androidx.compose.material3.ModalBottomSheetKt$Scrim$dismissSheet$2$1.1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Boolean invoke() {
                                        function02.invoke();
                                        return true;
                                    }
                                }, 1, null);
                            }
                        };
                        $composer2.updateRememberedValue(value$iv3);
                    } else {
                        value$iv3 = it$iv2;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    dismissSheet = SemanticsModifierKt.semantics(modifierThen, true, (Function1) value$iv3);
                } else {
                    dismissSheet = Modifier.INSTANCE;
                }
                $composer2.endReplaceGroup();
                Modifier modifierThen2 = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null).then(dismissSheet);
                ComposerKt.sourceInformationMarkerStart($composer2, -1785636526, "CC(remember):ModalBottomSheet.kt#9igjgp");
                boolean invalid$iv3 = $composer2.changed(stateAnimateFloatAsState) | (($dirty2 & 14) == 4);
                Object it$iv3 = $composer2.rememberedValue();
                if (invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                    value$iv = (Function1) new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$Scrim$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                            invoke2(drawScope);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(DrawScope $this$Canvas) {
                            DrawScope.m5265drawRectnJ9OG0$default($this$Canvas, color, 0L, 0L, RangesKt.coerceIn(ModalBottomSheetKt.Scrim_3J_VO9M$lambda$10(stateAnimateFloatAsState), 0.0f, 1.0f), null, null, 0, 118, null);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv);
                } else {
                    value$iv = it$iv3;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                CanvasKt.Canvas(modifierThen2, (Function1) value$iv, $composer2, 0);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$Scrim$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    ModalBottomSheetKt.m2527Scrim3JVO9M(color, function0, visible, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float Scrim_3J_VO9M$lambda$10(State<Float> state) {
        return state.getValue().floatValue();
    }
}
