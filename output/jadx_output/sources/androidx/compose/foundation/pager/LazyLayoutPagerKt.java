package androidx.compose.foundation.pager;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.ScrollableAreaKt;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.BringIntoViewSpec_androidKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsModifierLocalKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsKt;
import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.unit.Dp;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.reflect.KProperty0;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: LazyLayoutPager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aå\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182#\u0010\u0019\u001a\u001f\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001a2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$21\u0010%\u001a-\u0012\u0004\u0012\u00020'\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b((\u0012\u0004\u0012\u00020\u00010&¢\u0006\u0002\b)¢\u0006\u0002\b*H\u0001¢\u0006\u0004\b+\u0010,\u001a\u0081\u0001\u0010-\u001a\b\u0012\u0004\u0012\u00020/0.2\u0006\u0010\u0004\u001a\u00020\u000521\u0010%\u001a-\u0012\u0004\u0012\u00020'\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b((\u0012\u0004\u0012\u00020\u00010&¢\u0006\u0002\b)¢\u0006\u0002\b*2#\u0010\u0019\u001a\u001f\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001a2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u00120.H\u0003¢\u0006\u0002\u00101\u001a\u0014\u00102\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002¨\u00063"}, d2 = {"Pager", "", "modifier", "Landroidx/compose/ui/Modifier;", "state", "Landroidx/compose/foundation/pager/PagerState;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "reverseLayout", "", "orientation", "Landroidx/compose/foundation/gestures/Orientation;", "flingBehavior", "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;", "userScrollEnabled", "overscrollEffect", "Landroidx/compose/foundation/OverscrollEffect;", "beyondViewportPageCount", "", "pageSpacing", "Landroidx/compose/ui/unit/Dp;", "pageSize", "Landroidx/compose/foundation/pager/PageSize;", "pageNestedScrollConnection", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "key", "Lkotlin/Function1;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "index", "", "horizontalAlignment", "Landroidx/compose/ui/Alignment$Horizontal;", "verticalAlignment", "Landroidx/compose/ui/Alignment$Vertical;", "snapPosition", "Landroidx/compose/foundation/gestures/snapping/SnapPosition;", "pageContent", "Lkotlin/Function2;", "Landroidx/compose/foundation/pager/PagerScope;", "page", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "Pager-eLwUrMk", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V", "rememberPagerItemProviderLambda", "Lkotlin/Function0;", "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;", "pageCount", "(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;", "dragDirectionDetector", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class LazyLayoutPagerKt {
    static final Unit Pager_eLwUrMk$lambda$5(Modifier modifier, PagerState pagerState, PaddingValues paddingValues, boolean z, Orientation orientation, TargetedFlingBehavior targetedFlingBehavior, boolean z2, OverscrollEffect overscrollEffect, int i, float f, PageSize pageSize, NestedScrollConnection nestedScrollConnection, Function1 function1, Alignment.Horizontal horizontal, Alignment.Vertical vertical, SnapPosition snapPosition, Function4 function4, int i2, int i3, int i4, Composer composer, int i5) {
        m1067PagereLwUrMk(modifier, pagerState, paddingValues, z, orientation, targetedFlingBehavior, z2, overscrollEffect, i, f, pageSize, nestedScrollConnection, function1, horizontal, vertical, snapPosition, function4, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3), i4);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:174:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0408  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x04eb  */
    /* JADX INFO: renamed from: Pager-eLwUrMk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m1067PagereLwUrMk(final Modifier modifier, final PagerState state, final PaddingValues contentPadding, final boolean reverseLayout, final Orientation orientation, TargetedFlingBehavior flingBehavior, final boolean userScrollEnabled, final OverscrollEffect overscrollEffect, int beyondViewportPageCount, float f, final PageSize pageSize, final NestedScrollConnection pageNestedScrollConnection, final Function1<? super Integer, ? extends Object> function1, final Alignment.Horizontal horizontalAlignment, final Alignment.Vertical verticalAlignment, final SnapPosition snapPosition, final Function4<? super PagerScope, ? super Integer, ? super Composer, ? super Integer, Unit> function4, Composer $composer, final int $changed, final int $changed1, final int i) {
        int i2;
        int i3;
        PagerState pagerState;
        int $dirty;
        TargetedFlingBehavior targetedFlingBehavior;
        Composer $composer2;
        final float f2;
        final int beyondViewportPageCount2;
        int $dirty2;
        int beyondViewportPageCount3;
        Object value$iv$iv;
        boolean invalid$iv;
        Object it$iv;
        LazyLayoutMeasurePolicy measurePolicy;
        boolean invalid$iv2;
        Object it$iv2;
        LazyLayoutMeasurePolicy measurePolicy2;
        BringIntoViewSpec defaultBringIntoViewSpec;
        boolean invalid$iv3;
        Object it$iv3;
        Modifier.Companion companionLazyLayoutBeyondBoundsModifier;
        Composer $composer3 = $composer.startRestartGroup(-572816025);
        ComposerKt.sourceInformation($composer3, "C(Pager)N(modifier,state,contentPadding,reverseLayout,orientation,flingBehavior,userScrollEnabled,overscrollEffect,beyondViewportPageCount,pageSpacing:c#ui.unit.Dp,pageSize,pageNestedScrollConnection,key,horizontalAlignment,verticalAlignment,snapPosition,pageContent)109@5362L39,109@5277L124,113@5428L24,129@6071L19,116@5486L615,132@6127L70,135@6239L82,137@6381L7,139@6430L121,164@7268L301,159@7099L1450:LazyLayoutPager.kt#g6yjnt");
        int $dirty3 = $changed;
        int $dirty1 = $changed1;
        if (($changed & 6) == 0) {
            $dirty3 |= $composer3.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty3 |= $composer3.changed(state) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty3 |= $composer3.changed(contentPadding) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty3 |= $composer3.changed(reverseLayout) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty3 |= $composer3.changed(orientation.ordinal()) ? 16384 : 8192;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty3 |= $composer3.changed(flingBehavior) ? 131072 : 65536;
        }
        if (($changed & 1572864) == 0) {
            $dirty3 |= $composer3.changed(userScrollEnabled) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            $dirty3 |= $composer3.changed(overscrollEffect) ? 8388608 : 4194304;
        }
        int i4 = i & 256;
        if (i4 != 0) {
            $dirty3 |= 100663296;
            i2 = 196608;
            i3 = beyondViewportPageCount;
        } else if (($changed & 100663296) == 0) {
            i2 = 196608;
            i3 = beyondViewportPageCount;
            $dirty3 |= $composer3.changed(i3) ? 67108864 : 33554432;
        } else {
            i2 = 196608;
            i3 = beyondViewportPageCount;
        }
        int i5 = i & 512;
        if (i5 != 0) {
            $dirty3 |= 805306368;
        } else if (($changed & 805306368) == 0) {
            $dirty3 |= $composer3.changed(f) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        if (($changed1 & 6) == 0) {
            $dirty1 |= $composer3.changed(pageSize) ? 4 : 2;
        }
        if (($changed1 & 48) == 0) {
            $dirty1 |= $composer3.changedInstance(pageNestedScrollConnection) ? 32 : 16;
        }
        if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty1 |= $composer3.changedInstance(function1) ? 256 : 128;
        }
        if (($changed1 & 3072) == 0) {
            $dirty1 |= $composer3.changed(horizontalAlignment) ? 2048 : 1024;
        }
        if (($changed1 & 24576) == 0) {
            $dirty1 |= $composer3.changed(verticalAlignment) ? 16384 : 8192;
        }
        if (($changed1 & i2) == 0) {
            $dirty1 |= $composer3.changed(snapPosition) ? 131072 : 65536;
        }
        if (($changed1 & 1572864) == 0) {
            $dirty1 |= $composer3.changedInstance(function4) ? 1048576 : 524288;
        }
        if ($composer3.shouldExecute((($dirty3 & 306783379) == 306783378 && (599187 & $dirty1) == 599186) ? false : true, $dirty3 & 1)) {
            int beyondViewportPageCount4 = i4 != 0 ? 0 : i3;
            float fM7505constructorimpl = i5 != 0 ? Dp.m7505constructorimpl(0) : f;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-572816025, $dirty3, $dirty1, "androidx.compose.foundation.pager.Pager (LazyLayoutPager.kt:102)");
            }
            if (beyondViewportPageCount4 >= 0) {
                $dirty2 = $dirty3;
            } else {
                $dirty2 = $dirty3;
                InlineClassHelperKt.throwIllegalArgumentException("beyondViewportPageCount should be greater than or equal to 0, you selected " + beyondViewportPageCount4);
            }
            ComposerKt.sourceInformationMarkerStart($composer3, -720319826, "CC(remember):LazyLayoutPager.kt#9igjgp");
            boolean invalid$iv4 = ($dirty2 & 112) == 32;
            Object it$iv4 = $composer3.rememberedValue();
            if (invalid$iv4) {
                beyondViewportPageCount3 = beyondViewportPageCount4;
            } else {
                beyondViewportPageCount3 = beyondViewportPageCount4;
                if (it$iv4 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                int $dirty4 = $dirty2;
                int $dirty12 = $dirty1;
                Function0<PagerLazyLayoutItemProvider> function0RememberPagerItemProviderLambda = rememberPagerItemProviderLambda(state, function4, function1, (Function0) it$iv4, $composer3, (($dirty2 >> 3) & 14) | (($dirty1 >> 15) & 112) | ($dirty1 & 896));
                ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
                ComposerKt.sourceInformationMarkerStart($composer3, 683736516, "CC(remember):Effects.kt#9igjgp");
                value$iv$iv = $composer3.rememberedValue();
                if (value$iv$iv != Composer.INSTANCE.getEmpty()) {
                    value$iv$iv = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer3);
                    $composer3.updateRememberedValue(value$iv$iv);
                }
                CoroutineScope coroutineScope = (CoroutineScope) value$iv$iv;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerStart($composer3, -720297158, "CC(remember):LazyLayoutPager.kt#9igjgp");
                invalid$iv = ($dirty4 & 112) != 32;
                it$iv = $composer3.rememberedValue();
                if (!invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                    Object value$iv = new Function0() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Integer.valueOf(state.getPageCount());
                        }
                    };
                    $composer3.updateRememberedValue(value$iv);
                    it$iv = value$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                int beyondViewportPageCount5 = beyondViewportPageCount3;
                $dirty = $dirty4;
                measurePolicy = PagerMeasurePolicyKt.m1079rememberPagerMeasurePolicy8u0NR3k(function0RememberPagerItemProviderLambda, state, contentPadding, reverseLayout, orientation, beyondViewportPageCount5, fM7505constructorimpl, pageSize, horizontalAlignment, verticalAlignment, snapPosition, coroutineScope, (Function0) it$iv, $composer3, ($dirty4 & 112) | ($dirty4 & 896) | ($dirty4 & 7168) | (57344 & $dirty4) | (($dirty4 >> 9) & 458752) | (($dirty4 >> 9) & 3670016) | (($dirty12 << 21) & 29360128) | (($dirty12 << 15) & 234881024) | (($dirty12 << 15) & C.ENCODING_PCM_DOUBLE), ($dirty12 >> 15) & 14);
                pagerState = state;
                float f3 = fM7505constructorimpl;
                LazyLayoutSemanticState semanticState = PagerSemanticsKt.rememberPagerSemanticState(pagerState, orientation != Orientation.Vertical, $composer3, ($dirty >> 3) & 14);
                ComposerKt.sourceInformationMarkerStart($composer3, -720291719, "CC(remember):LazyLayoutPager.kt#9igjgp");
                invalid$iv2 = (($dirty & 112) != 32) | (($dirty & 458752) != 131072);
                it$iv2 = $composer3.rememberedValue();
                if (!invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                    measurePolicy2 = measurePolicy;
                    targetedFlingBehavior = flingBehavior;
                    Object value$iv2 = new PagerWrapperFlingBehavior(targetedFlingBehavior, pagerState);
                    $composer3.updateRememberedValue(value$iv2);
                    it$iv2 = value$iv2;
                } else {
                    measurePolicy2 = measurePolicy;
                    targetedFlingBehavior = flingBehavior;
                }
                PagerWrapperFlingBehavior resolvedFlingBehavior = (PagerWrapperFlingBehavior) it$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ProvidableCompositionLocal<BringIntoViewSpec> localBringIntoViewSpec = BringIntoViewSpec_androidKt.getLocalBringIntoViewSpec();
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume = $composer3.consume(localBringIntoViewSpec);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                defaultBringIntoViewSpec = (BringIntoViewSpec) objConsume;
                ComposerKt.sourceInformationMarkerStart($composer3, -720285568, "CC(remember):LazyLayoutPager.kt#9igjgp");
                invalid$iv3 = (($dirty & 112) != 32) | $composer3.changed(defaultBringIntoViewSpec);
                it$iv3 = $composer3.rememberedValue();
                if (!invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv3 = new PagerBringIntoViewSpec(pagerState, defaultBringIntoViewSpec);
                    $composer3.updateRememberedValue(value$iv3);
                    it$iv3 = value$iv3;
                }
                PagerBringIntoViewSpec pagerBringIntoViewSpec = (PagerBringIntoViewSpec) it$iv3;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                if (userScrollEnabled) {
                    $composer3.startReplaceGroup(-853392933);
                    $composer3.endReplaceGroup();
                    companionLazyLayoutBeyondBoundsModifier = Modifier.INSTANCE;
                } else {
                    $composer3.startReplaceGroup(-853822717);
                    ComposerKt.sourceInformation($composer3, "147@6714L167");
                    companionLazyLayoutBeyondBoundsModifier = LazyLayoutBeyondBoundsModifierLocalKt.lazyLayoutBeyondBoundsModifier(Modifier.INSTANCE, PagerBeyondBoundsModifierKt.rememberPagerBeyondBoundsState(pagerState, beyondViewportPageCount5, $composer3, (($dirty >> 3) & 14) | (($dirty >> 21) & 112)), pagerState.getBeyondBoundsInfo(), reverseLayout, orientation);
                    $composer3.endReplaceGroup();
                }
                Modifier beyondBoundsModifier = companionLazyLayoutBeyondBoundsModifier;
                $composer2 = $composer3;
                LazyLayoutKt.LazyLayout(function0RememberPagerItemProviderLambda, NestedScrollModifierKt.nestedScroll$default(dragDirectionDetector(ScrollableAreaKt.scrollableArea(PagerKt.pagerSemantics(LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier.then(pagerState.getRemeasurementModifier()).then(pagerState.getAwaitLayoutModifier()), function0RememberPagerItemProviderLambda, semanticState, orientation, userScrollEnabled, reverseLayout, $composer3, (($dirty << 6) & 458752) | (($dirty >> 3) & 7168) | (($dirty >> 6) & 57344)), pagerState, orientation != Orientation.Vertical, coroutineScope, userScrollEnabled).then(beyondBoundsModifier), pagerState, orientation, overscrollEffect, userScrollEnabled, reverseLayout, resolvedFlingBehavior, pagerState.getInternalInteractionSource(), pagerBringIntoViewSpec), pagerState), pageNestedScrollConnection, null, 2, null), pagerState.getPrefetchState(), measurePolicy2, $composer2, 0, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                beyondViewportPageCount2 = beyondViewportPageCount5;
                f2 = f3;
            }
            Object value$iv4 = new Function0() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Integer.valueOf(state.getPageCount());
                }
            };
            $composer3.updateRememberedValue(value$iv4);
            it$iv4 = value$iv4;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            int $dirty42 = $dirty2;
            int $dirty122 = $dirty1;
            Function0<PagerLazyLayoutItemProvider> function0RememberPagerItemProviderLambda2 = rememberPagerItemProviderLambda(state, function4, function1, (Function0) it$iv4, $composer3, (($dirty2 >> 3) & 14) | (($dirty1 >> 15) & 112) | ($dirty1 & 896));
            ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer3, 683736516, "CC(remember):Effects.kt#9igjgp");
            value$iv$iv = $composer3.rememberedValue();
            if (value$iv$iv != Composer.INSTANCE.getEmpty()) {
            }
            CoroutineScope coroutineScope2 = (CoroutineScope) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -720297158, "CC(remember):LazyLayoutPager.kt#9igjgp");
            if (($dirty42 & 112) != 32) {
            }
            it$iv = $composer3.rememberedValue();
            if (!invalid$iv) {
            }
            Object value$iv5 = new Function0() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Integer.valueOf(state.getPageCount());
                }
            };
            $composer3.updateRememberedValue(value$iv5);
            it$iv = value$iv5;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            int beyondViewportPageCount52 = beyondViewportPageCount3;
            $dirty = $dirty42;
            measurePolicy = PagerMeasurePolicyKt.m1079rememberPagerMeasurePolicy8u0NR3k(function0RememberPagerItemProviderLambda2, state, contentPadding, reverseLayout, orientation, beyondViewportPageCount52, fM7505constructorimpl, pageSize, horizontalAlignment, verticalAlignment, snapPosition, coroutineScope2, (Function0) it$iv, $composer3, ($dirty42 & 112) | ($dirty42 & 896) | ($dirty42 & 7168) | (57344 & $dirty42) | (($dirty42 >> 9) & 458752) | (($dirty42 >> 9) & 3670016) | (($dirty122 << 21) & 29360128) | (($dirty122 << 15) & 234881024) | (($dirty122 << 15) & C.ENCODING_PCM_DOUBLE), ($dirty122 >> 15) & 14);
            pagerState = state;
            float f32 = fM7505constructorimpl;
            LazyLayoutSemanticState semanticState2 = PagerSemanticsKt.rememberPagerSemanticState(pagerState, orientation != Orientation.Vertical, $composer3, ($dirty >> 3) & 14);
            ComposerKt.sourceInformationMarkerStart($composer3, -720291719, "CC(remember):LazyLayoutPager.kt#9igjgp");
            invalid$iv2 = (($dirty & 112) != 32) | (($dirty & 458752) != 131072);
            it$iv2 = $composer3.rememberedValue();
            if (invalid$iv2) {
                measurePolicy2 = measurePolicy;
                targetedFlingBehavior = flingBehavior;
                Object value$iv22 = new PagerWrapperFlingBehavior(targetedFlingBehavior, pagerState);
                $composer3.updateRememberedValue(value$iv22);
                it$iv2 = value$iv22;
                PagerWrapperFlingBehavior resolvedFlingBehavior2 = (PagerWrapperFlingBehavior) it$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ProvidableCompositionLocal<BringIntoViewSpec> localBringIntoViewSpec2 = BringIntoViewSpec_androidKt.getLocalBringIntoViewSpec();
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume2 = $composer3.consume(localBringIntoViewSpec2);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                defaultBringIntoViewSpec = (BringIntoViewSpec) objConsume2;
                ComposerKt.sourceInformationMarkerStart($composer3, -720285568, "CC(remember):LazyLayoutPager.kt#9igjgp");
                invalid$iv3 = (($dirty & 112) != 32) | $composer3.changed(defaultBringIntoViewSpec);
                it$iv3 = $composer3.rememberedValue();
                if (!invalid$iv3) {
                    Object value$iv32 = new PagerBringIntoViewSpec(pagerState, defaultBringIntoViewSpec);
                    $composer3.updateRememberedValue(value$iv32);
                    it$iv3 = value$iv32;
                    PagerBringIntoViewSpec pagerBringIntoViewSpec2 = (PagerBringIntoViewSpec) it$iv3;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    if (userScrollEnabled) {
                    }
                    Modifier beyondBoundsModifier2 = companionLazyLayoutBeyondBoundsModifier;
                    $composer2 = $composer3;
                    LazyLayoutKt.LazyLayout(function0RememberPagerItemProviderLambda2, NestedScrollModifierKt.nestedScroll$default(dragDirectionDetector(ScrollableAreaKt.scrollableArea(PagerKt.pagerSemantics(LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier.then(pagerState.getRemeasurementModifier()).then(pagerState.getAwaitLayoutModifier()), function0RememberPagerItemProviderLambda2, semanticState2, orientation, userScrollEnabled, reverseLayout, $composer3, (($dirty << 6) & 458752) | (($dirty >> 3) & 7168) | (($dirty >> 6) & 57344)), pagerState, orientation != Orientation.Vertical, coroutineScope2, userScrollEnabled).then(beyondBoundsModifier2), pagerState, orientation, overscrollEffect, userScrollEnabled, reverseLayout, resolvedFlingBehavior2, pagerState.getInternalInteractionSource(), pagerBringIntoViewSpec2), pagerState), pageNestedScrollConnection, null, 2, null), pagerState.getPrefetchState(), measurePolicy2, $composer2, 0, 0);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    beyondViewportPageCount2 = beyondViewportPageCount52;
                    f2 = f32;
                }
            }
        } else {
            pagerState = state;
            $dirty = $dirty3;
            targetedFlingBehavior = flingBehavior;
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            f2 = f;
            beyondViewportPageCount2 = i3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final PagerState pagerState2 = pagerState;
            final TargetedFlingBehavior targetedFlingBehavior2 = targetedFlingBehavior;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return LazyLayoutPagerKt.Pager_eLwUrMk$lambda$5(modifier, pagerState2, contentPadding, reverseLayout, orientation, targetedFlingBehavior2, userScrollEnabled, overscrollEffect, beyondViewportPageCount2, f2, pageSize, pageNestedScrollConnection, function1, horizontalAlignment, verticalAlignment, snapPosition, function4, $changed, $changed1, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final Function0<PagerLazyLayoutItemProvider> rememberPagerItemProviderLambda(final PagerState state, Function4<? super PagerScope, ? super Integer, ? super Composer, ? super Integer, Unit> function4, Function1<? super Integer, ? extends Object> function1, final Function0<Integer> function0, Composer $composer, int $changed) {
        ComposerKt.sourceInformationMarkerStart($composer, 1052364153, "C(rememberPagerItemProviderLambda)N(state,pageContent,key,pageCount)258@10763L33,259@10817L25,260@10854L742:LazyLayoutPager.kt#g6yjnt");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1052364153, $changed, -1, "androidx.compose.foundation.pager.rememberPagerItemProviderLambda (LazyLayoutPager.kt:257)");
        }
        final State latestContent = SnapshotStateKt.rememberUpdatedState(function4, $composer, ($changed >> 3) & 14);
        final State latestKey = SnapshotStateKt.rememberUpdatedState(function1, $composer, ($changed >> 6) & 14);
        ComposerKt.sourceInformationMarkerStart($composer, 2004647903, "CC(remember):LazyLayoutPager.kt#9igjgp");
        boolean invalid$iv = (((($changed & 14) ^ 6) > 4 && $composer.changed(state)) || ($changed & 6) == 4) | $composer.changed(latestContent) | $composer.changed(latestKey) | (((($changed & 7168) ^ 3072) > 2048 && $composer.changed(function0)) || ($changed & 3072) == 2048);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            final State intervalContentState = SnapshotStateKt.derivedStateOf(SnapshotStateKt.referentialEqualityPolicy(), new Function0() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return LazyLayoutPagerKt.rememberPagerItemProviderLambda$lambda$0$0(latestContent, latestKey, function0);
                }
            });
            final State itemProviderState = SnapshotStateKt.derivedStateOf(SnapshotStateKt.referentialEqualityPolicy(), new Function0() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return LazyLayoutPagerKt.rememberPagerItemProviderLambda$lambda$0$1(intervalContentState, state);
                }
            });
            Object value$iv = (KProperty0) new PropertyReference0Impl(itemProviderState) { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$1
                @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.reflect.KProperty0
                public Object get() {
                    return ((State) this.receiver).getValue();
                }
            };
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        KProperty0 kProperty0 = (KProperty0) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return kProperty0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PagerLayoutIntervalContent rememberPagerItemProviderLambda$lambda$0$0(State $latestContent, State $latestKey, Function0 $pageCount) {
        return new PagerLayoutIntervalContent((Function4) $latestContent.getValue(), (Function1) $latestKey.getValue(), ((Number) $pageCount.invoke()).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PagerLazyLayoutItemProvider rememberPagerItemProviderLambda$lambda$0$1(State $intervalContentState, PagerState $state) {
        PagerLayoutIntervalContent intervalContent = (PagerLayoutIntervalContent) $intervalContentState.getValue();
        NearestRangeKeyIndexMap map = new NearestRangeKeyIndexMap($state.getNearestRange$foundation(), intervalContent);
        return new PagerLazyLayoutItemProvider($state, intervalContent, map);
    }

    private static final Modifier dragDirectionDetector(Modifier $this$dragDirectionDetector, final PagerState state) {
        return $this$dragDirectionDetector.then(SuspendingPointerInputFilterKt.pointerInput(Modifier.INSTANCE, state, new PointerInputEventHandler() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt.dragDirectionDetector.1

            /* JADX INFO: renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: LazyLayoutPager.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1", f = "LazyLayoutPager.kt", i = {}, l = {285}, m = "invokeSuspend", n = {}, s = {}, v = 1)
            static final class C00241 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ PagerState $state;
                final /* synthetic */ PointerInputScope $this_pointerInput;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00241(PointerInputScope pointerInputScope, PagerState pagerState, Continuation<? super C00241> continuation) {
                    super(2, continuation);
                    this.$this_pointerInput = pointerInputScope;
                    this.$state = pagerState;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C00241(this.$this_pointerInput, this.$state, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((C00241) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX INFO: renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: LazyLayoutPager.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1", f = "LazyLayoutPager.kt", i = {0, 1, 1, 1}, l = {287, 291}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "$this$awaitEachGesture", "downEvent", "upEventOrCancellation"}, s = {"L$0", "L$0", "L$1", "L$2"}, v = 1)
                static final class C00251 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ PagerState $state;
                    private /* synthetic */ Object L$0;
                    Object L$1;
                    Object L$2;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C00251(PagerState pagerState, Continuation<? super C00251> continuation) {
                        super(2, continuation);
                        this.$state = pagerState;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        C00251 c00251 = new C00251(this.$state, continuation);
                        c00251.L$0 = obj;
                        return c00251;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
                        return ((C00251) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    /* JADX WARN: Removed duplicated region for block: B:14:0x0070  */
                    /* JADX WARN: Removed duplicated region for block: B:20:0x00a1  */
                    /* JADX WARN: Removed duplicated region for block: B:26:0x00bf  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x00d1  */
                    /* JADX WARN: Removed duplicated region for block: B:28:0x00d7  */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x00bb A[SYNTHETIC] */
                    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0085 -> B:18:0x008e). Please report as a decompilation issue!!! */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final Object invokeSuspend(Object $result) {
                        Object $result2;
                        Object $result3;
                        AwaitPointerEventScope $this$awaitEachGesture;
                        PointerInputChange upEventOrCancellation;
                        Object $result4;
                        Object $result5;
                        C00251 c00251;
                        AwaitPointerEventScope $this$awaitEachGesture2;
                        PointerInputChange downEvent;
                        PointerInputChange downEvent2;
                        int index$iv$iv;
                        int size;
                        boolean z;
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        switch (this.label) {
                            case 0:
                                ResultKt.throwOnFailure($result);
                                AwaitPointerEventScope $this$awaitEachGesture3 = (AwaitPointerEventScope) this.L$0;
                                this.L$0 = $this$awaitEachGesture3;
                                this.label = 1;
                                Object objAwaitFirstDown = TapGestureDetectorKt.awaitFirstDown($this$awaitEachGesture3, false, PointerEventPass.Initial, this);
                                if (objAwaitFirstDown == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                $result2 = $result;
                                $result3 = objAwaitFirstDown;
                                $this$awaitEachGesture = $this$awaitEachGesture3;
                                PointerInputChange downEvent3 = (PointerInputChange) $result3;
                                this.$state.m1086setUpDownDifferencek4lQ0M$foundation(Offset.INSTANCE.m4468getZeroF1C5BW0());
                                AwaitPointerEventScope awaitPointerEventScope = $this$awaitEachGesture;
                                PointerInputChange upEventOrCancellation2 = downEvent3;
                                Object $result6 = $result2;
                                upEventOrCancellation = null;
                                AwaitPointerEventScope $this$awaitEachGesture4 = awaitPointerEventScope;
                                C00251 c002512 = this;
                                if (upEventOrCancellation != null) {
                                    c002512.L$0 = $this$awaitEachGesture4;
                                    c002512.L$1 = upEventOrCancellation2;
                                    c002512.L$2 = upEventOrCancellation;
                                    c002512.label = 2;
                                    Object objAwaitPointerEvent = $this$awaitEachGesture4.awaitPointerEvent(PointerEventPass.Initial, c002512);
                                    if (objAwaitPointerEvent == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    PointerInputChange pointerInputChange = upEventOrCancellation;
                                    $result4 = $result6;
                                    $result5 = objAwaitPointerEvent;
                                    c00251 = c002512;
                                    $this$awaitEachGesture2 = $this$awaitEachGesture4;
                                    downEvent = upEventOrCancellation2;
                                    downEvent2 = pointerInputChange;
                                    PointerEvent event = (PointerEvent) $result5;
                                    List<PointerInputChange> changes = event.getChanges();
                                    index$iv$iv = 0;
                                    size = changes.size();
                                    while (true) {
                                        if (index$iv$iv >= size) {
                                            Object item$iv$iv = changes.get(index$iv$iv);
                                            PointerInputChange it = (PointerInputChange) item$iv$iv;
                                            if (PointerEventKt.changedToUp(it)) {
                                                index$iv$iv++;
                                            } else {
                                                z = false;
                                            }
                                        } else {
                                            z = true;
                                        }
                                    }
                                    if (z) {
                                        $result6 = $result4;
                                        upEventOrCancellation = downEvent2;
                                        upEventOrCancellation2 = downEvent;
                                        $this$awaitEachGesture4 = $this$awaitEachGesture2;
                                        c002512 = c00251;
                                    } else {
                                        Object obj = $result4;
                                        upEventOrCancellation = event.getChanges().get(0);
                                        $result6 = obj;
                                        upEventOrCancellation2 = downEvent;
                                        $this$awaitEachGesture4 = $this$awaitEachGesture2;
                                        c002512 = c00251;
                                    }
                                    if (upEventOrCancellation != null) {
                                        c002512.$state.m1086setUpDownDifferencek4lQ0M$foundation(Offset.m4456minusMKHz9U(upEventOrCancellation.getPosition(), upEventOrCancellation2.getPosition()));
                                        return Unit.INSTANCE;
                                    }
                                }
                                break;
                            case 1:
                                $result3 = $result;
                                AwaitPointerEventScope $this$awaitEachGesture5 = (AwaitPointerEventScope) this.L$0;
                                ResultKt.throwOnFailure($result3);
                                $this$awaitEachGesture = $this$awaitEachGesture5;
                                $result2 = $result3;
                                PointerInputChange downEvent32 = (PointerInputChange) $result3;
                                this.$state.m1086setUpDownDifferencek4lQ0M$foundation(Offset.INSTANCE.m4468getZeroF1C5BW0());
                                AwaitPointerEventScope awaitPointerEventScope2 = $this$awaitEachGesture;
                                PointerInputChange upEventOrCancellation22 = downEvent32;
                                Object $result62 = $result2;
                                upEventOrCancellation = null;
                                AwaitPointerEventScope $this$awaitEachGesture42 = awaitPointerEventScope2;
                                C00251 c0025122 = this;
                                if (upEventOrCancellation != null) {
                                }
                                break;
                            case 2:
                                $result5 = $result;
                                PointerInputChange upEventOrCancellation3 = (PointerInputChange) this.L$2;
                                PointerInputChange downEvent4 = (PointerInputChange) this.L$1;
                                AwaitPointerEventScope $this$awaitEachGesture6 = (AwaitPointerEventScope) this.L$0;
                                ResultKt.throwOnFailure($result5);
                                c00251 = this;
                                $this$awaitEachGesture2 = $this$awaitEachGesture6;
                                downEvent = downEvent4;
                                downEvent2 = upEventOrCancellation3;
                                $result4 = $result5;
                                PointerEvent event2 = (PointerEvent) $result5;
                                List<PointerInputChange> changes2 = event2.getChanges();
                                index$iv$iv = 0;
                                size = changes2.size();
                                while (true) {
                                    if (index$iv$iv >= size) {
                                    }
                                    index$iv$iv++;
                                }
                                if (z) {
                                }
                                if (upEventOrCancellation != null) {
                                }
                                break;
                            default:
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    }
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object $result) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            this.label = 1;
                            if (ForEachGestureKt.awaitEachGesture(this.$this_pointerInput, new C00251(this.$state, null), this) == coroutine_suspended) {
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

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope $this$pointerInput, Continuation<? super Unit> continuation) {
                Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new C00241($this$pointerInput, state, null), continuation);
                return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
            }
        }));
    }
}
