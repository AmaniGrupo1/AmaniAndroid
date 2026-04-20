package androidx.compose.foundation.lazy;

import android.os.Trace;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.ScrollableAreaKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsModifierLocalKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsKt;
import androidx.compose.foundation.lazy.layout.StickyItemsPlacement;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LazyList.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a¢\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0017\u0010\u001a\u001a\u0013\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00010\u001b¢\u0006\u0002\b\u001dH\u0001¢\u0006\u0002\u0010\u001e\u001a\u0085\u0001\u0010\u001f\u001a\u00020 2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)H\u0003¢\u0006\u0002\u0010*\u001a\"\u0010+\u001a\u00020\u0001*\u00020,2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020/0.2\u0006\u00100\u001a\u000201H\u0002¨\u00062"}, d2 = {"LazyList", "", "modifier", "Landroidx/compose/ui/Modifier;", "state", "Landroidx/compose/foundation/lazy/LazyListState;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "reverseLayout", "", "isVertical", "flingBehavior", "Landroidx/compose/foundation/gestures/FlingBehavior;", "userScrollEnabled", "overscrollEffect", "Landroidx/compose/foundation/OverscrollEffect;", "beyondBoundsItemCount", "", "horizontalAlignment", "Landroidx/compose/ui/Alignment$Horizontal;", "verticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "verticalAlignment", "Landroidx/compose/ui/Alignment$Vertical;", "horizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/lazy/LazyListScope;", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;ILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V", "rememberLazyListMeasurePolicy", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;", "itemProviderLambda", "Lkotlin/Function0;", "Landroidx/compose/foundation/lazy/LazyListItemProvider;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "graphicsContext", "Landroidx/compose/ui/graphics/GraphicsContext;", "stickyItemsPlacement", "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;", "keepAroundItems", "Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;", "visibleItemsList", "", "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;", "measuredItemProvider", "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class LazyListKt {
    static final Unit LazyList$lambda$0(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, boolean z2, FlingBehavior flingBehavior, boolean z3, OverscrollEffect overscrollEffect, int i, Alignment.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, Arrangement.Horizontal horizontal2, Function1 function1, int i2, int i3, int i4, Composer composer, int i5) {
        LazyList(modifier, lazyListState, paddingValues, z, z2, flingBehavior, z3, overscrollEffect, i, horizontal, vertical, vertical2, horizontal2, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3), i4);
        return Unit.INSTANCE;
    }

    public static final void LazyList(final Modifier modifier, final LazyListState state, final PaddingValues contentPadding, final boolean reverseLayout, final boolean isVertical, final FlingBehavior flingBehavior, final boolean userScrollEnabled, final OverscrollEffect overscrollEffect, int beyondBoundsItemCount, Alignment.Horizontal horizontalAlignment, Arrangement.Vertical verticalArrangement, Alignment.Vertical verticalAlignment, Arrangement.Horizontal horizontalArrangement, final Function1<? super LazyListScope, Unit> function1, Composer $composer, final int $changed, final int $changed1, final int i) {
        PaddingValues paddingValues;
        int beyondBoundsItemCount2;
        int i2;
        int i3;
        int i4;
        int i5;
        Composer $composer2;
        final Arrangement.Vertical verticalArrangement2;
        final Alignment.Vertical verticalAlignment2;
        final Arrangement.Horizontal horizontalArrangement2;
        final int beyondBoundsItemCount3;
        final Alignment.Horizontal horizontalAlignment2;
        Arrangement.Vertical verticalArrangement3;
        Alignment.Horizontal horizontalAlignment3;
        int $dirty;
        Alignment.Vertical verticalAlignment3;
        Arrangement.Horizontal horizontalArrangement3;
        boolean z;
        Modifier.Companion companionLazyLayoutBeyondBoundsModifier;
        Composer $composer3 = $composer.startRestartGroup(924924659);
        ComposerKt.sourceInformation($composer3, "C(LazyList)N(modifier,state,contentPadding,reverseLayout,isVertical,flingBehavior,userScrollEnabled,overscrollEffect,beyondBoundsItemCount,horizontalAlignment,verticalArrangement,verticalAlignment,horizontalArrangement,content)86@4189L50,88@4265L48,89@4339L24,90@4411L7,91@4480L7,94@4521L484,133@5809L302,128@5640L1117:LazyList.kt#428nma");
        int $dirty2 = $changed;
        int $dirty1 = $changed1;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer3.changed(state) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            paddingValues = contentPadding;
            $dirty2 |= $composer3.changed(paddingValues) ? 256 : 128;
        } else {
            paddingValues = contentPadding;
        }
        if (($changed & 3072) == 0) {
            $dirty2 |= $composer3.changed(reverseLayout) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty2 |= $composer3.changed(isVertical) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty2 |= $composer3.changed(flingBehavior) ? 131072 : 65536;
        }
        if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changed(userScrollEnabled) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            $dirty2 |= $composer3.changed(overscrollEffect) ? 8388608 : 4194304;
        }
        if (($changed & 100663296) == 0) {
            if ((i & 256) == 0) {
                beyondBoundsItemCount2 = beyondBoundsItemCount;
                int i6 = $composer3.changed(beyondBoundsItemCount2) ? 67108864 : 33554432;
                $dirty2 |= i6;
            } else {
                beyondBoundsItemCount2 = beyondBoundsItemCount;
            }
            $dirty2 |= i6;
        } else {
            beyondBoundsItemCount2 = beyondBoundsItemCount;
        }
        int i7 = i & 512;
        if (i7 != 0) {
            $dirty2 |= 805306368;
            i2 = i7;
        } else if (($changed & 805306368) == 0) {
            i2 = i7;
            $dirty2 |= $composer3.changed(horizontalAlignment) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i2 = i7;
        }
        int i8 = i & 1024;
        if (i8 != 0) {
            $dirty1 |= 6;
            i3 = i8;
        } else if (($changed1 & 6) == 0) {
            i3 = i8;
            $dirty1 |= $composer3.changed(verticalArrangement) ? 4 : 2;
        } else {
            i3 = i8;
        }
        int i9 = i & 2048;
        if (i9 != 0) {
            $dirty1 |= 48;
            i4 = i9;
        } else if (($changed1 & 48) == 0) {
            i4 = i9;
            $dirty1 |= $composer3.changed(verticalAlignment) ? 32 : 16;
        } else {
            i4 = i9;
        }
        int i10 = i & 4096;
        if (i10 != 0) {
            $dirty1 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i5 = i10;
        } else {
            i5 = i10;
            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                $dirty1 |= $composer3.changed(horizontalArrangement) ? 256 : 128;
            }
        }
        if (($changed1 & 3072) == 0) {
            $dirty1 |= $composer3.changedInstance(function1) ? 2048 : 1024;
        }
        int $dirty12 = $dirty1;
        if ($composer3.shouldExecute(((306783379 & $dirty2) == 306783378 && ($dirty12 & 1171) == 1170) ? false : true, $dirty2 & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "74@3486L38");
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if ((i & 256) != 0) {
                    $dirty2 &= -234881025;
                    beyondBoundsItemCount2 = LazyList_androidKt.defaultLazyListBeyondBoundsItemCount($composer3, 0);
                }
                Alignment.Horizontal horizontalAlignment4 = i2 != 0 ? null : horizontalAlignment;
                verticalArrangement3 = i3 != 0 ? null : verticalArrangement;
                Alignment.Vertical verticalAlignment4 = i4 != 0 ? null : verticalAlignment;
                if (i5 != 0) {
                    horizontalAlignment3 = horizontalAlignment4;
                    $dirty = $dirty2;
                    horizontalArrangement3 = null;
                    verticalAlignment3 = verticalAlignment4;
                } else {
                    horizontalAlignment3 = horizontalAlignment4;
                    $dirty = $dirty2;
                    verticalAlignment3 = verticalAlignment4;
                    horizontalArrangement3 = horizontalArrangement;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 256) != 0) {
                    $dirty2 &= -234881025;
                }
                horizontalAlignment3 = horizontalAlignment;
                verticalArrangement3 = verticalArrangement;
                verticalAlignment3 = verticalAlignment;
                $dirty = $dirty2;
                horizontalArrangement3 = horizontalArrangement;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                z = false;
                ComposerKt.traceEventStart(924924659, $dirty, $dirty12, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:85)");
            } else {
                z = false;
            }
            Function0<LazyListItemProvider> function0RememberLazyListItemProviderLambda = LazyListItemProviderKt.rememberLazyListItemProviderLambda(state, function1, $composer3, (($dirty >> 3) & 14) | (($dirty12 >> 6) & 112));
            LazyLayoutSemanticState semanticState = LazyListSemanticsKt.rememberLazyListSemanticState(state, isVertical, $composer3, (($dirty >> 3) & 14) | (($dirty >> 9) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer3, 683736516, "CC(remember):Effects.kt#9igjgp");
            Object value$iv$iv = $composer3.rememberedValue();
            if (value$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer3);
                $composer3.updateRememberedValue(value$iv$iv);
            }
            CoroutineScope coroutineScope = (CoroutineScope) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ProvidableCompositionLocal<GraphicsContext> localGraphicsContext = CompositionLocalsKt.getLocalGraphicsContext();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localGraphicsContext);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            GraphicsContext graphicsContext = (GraphicsContext) objConsume;
            CompositionLocal<Boolean> localScrollCaptureInProgress = CompositionLocalsKt.getLocalScrollCaptureInProgress();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume2 = $composer3.consume(localScrollCaptureInProgress);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            boolean stickyHeadersEnabled = !((Boolean) objConsume2).booleanValue();
            int $dirty3 = $dirty;
            int beyondBoundsItemCount4 = beyondBoundsItemCount2;
            LazyLayoutMeasurePolicy measurePolicy = rememberLazyListMeasurePolicy(function0RememberLazyListItemProviderLambda, state, paddingValues, reverseLayout, isVertical, beyondBoundsItemCount4, horizontalAlignment3, verticalAlignment3, horizontalArrangement3, verticalArrangement3, coroutineScope, graphicsContext, stickyHeadersEnabled ? StickyItemsPlacement.INSTANCE.getStickToTopPlacement() : null, $composer3, ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (($dirty >> 9) & 458752) | (3670016 & ($dirty >> 9)) | (($dirty12 << 18) & 29360128) | (($dirty12 << 18) & 234881024) | (($dirty12 << 27) & C.ENCODING_PCM_DOUBLE), 0);
            Alignment.Horizontal horizontalAlignment5 = horizontalAlignment3;
            Alignment.Vertical verticalAlignment5 = verticalAlignment3;
            Arrangement.Horizontal horizontalArrangement4 = horizontalArrangement3;
            Arrangement.Vertical verticalArrangement4 = verticalArrangement3;
            Orientation orientation = isVertical ? Orientation.Vertical : Orientation.Horizontal;
            if (userScrollEnabled) {
                $composer3.startReplaceGroup(-2077147368);
                ComposerKt.sourceInformation($composer3, "116@5256L166");
                companionLazyLayoutBeyondBoundsModifier = LazyLayoutBeyondBoundsModifierLocalKt.lazyLayoutBeyondBoundsModifier(Modifier.INSTANCE, LazyListBeyondBoundsModifierKt.rememberLazyListBeyondBoundsState(state, beyondBoundsItemCount4, $composer3, (($dirty3 >> 3) & 14) | (($dirty3 >> 21) & 112)), state.getBeyondBoundsInfo(), reverseLayout, orientation);
                $composer3.endReplaceGroup();
            } else {
                $composer3.startReplaceGroup(-2076718545);
                $composer3.endReplaceGroup();
                companionLazyLayoutBeyondBoundsModifier = Modifier.INSTANCE;
            }
            Modifier beyondBoundsModifier = companionLazyLayoutBeyondBoundsModifier;
            LazyLayoutKt.LazyLayout(function0RememberLazyListItemProviderLambda, ScrollableAreaKt.scrollableArea(LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier.then(state.getRemeasurementModifier()).then(state.getAwaitLayoutModifier()), function0RememberLazyListItemProviderLambda, semanticState, orientation, userScrollEnabled, reverseLayout, $composer3, (($dirty3 >> 6) & 57344) | (458752 & ($dirty3 << 6))).then(beyondBoundsModifier).then(state.getItemAnimator$foundation().getModifier()), state, orientation, overscrollEffect, (128 & 8) != 0 ? true : userScrollEnabled, (128 & 16) != 0 ? false : reverseLayout, (128 & 32) != 0 ? null : flingBehavior, (128 & 64) != 0 ? null : state.getInternalInteractionSource(), (128 & 128) != 0 ? null : null), state.getPrefetchState(), measurePolicy, $composer3, 0, 0);
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            horizontalAlignment2 = horizontalAlignment5;
            verticalAlignment2 = verticalAlignment5;
            horizontalArrangement2 = horizontalArrangement4;
            verticalArrangement2 = verticalArrangement4;
            beyondBoundsItemCount3 = beyondBoundsItemCount4;
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            verticalArrangement2 = verticalArrangement;
            verticalAlignment2 = verticalAlignment;
            horizontalArrangement2 = horizontalArrangement;
            beyondBoundsItemCount3 = beyondBoundsItemCount2;
            horizontalAlignment2 = horizontalAlignment;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.lazy.LazyListKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return LazyListKt.LazyList$lambda$0(modifier, state, contentPadding, reverseLayout, isVertical, flingBehavior, userScrollEnabled, overscrollEffect, beyondBoundsItemCount3, horizontalAlignment2, verticalArrangement2, verticalAlignment2, horizontalArrangement2, function1, $changed, $changed1, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0138 A[PHI: r14
      0x0138: PHI (r14v12 androidx.compose.foundation.lazy.layout.StickyItemsPlacement) = 
      (r14v9 androidx.compose.foundation.lazy.layout.StickyItemsPlacement)
      (r14v13 androidx.compose.foundation.lazy.layout.StickyItemsPlacement)
     binds: [B:102:0x0136, B:98:0x012f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0158 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0039 A[PHI: r8
      0x0039: PHI (r8v3 androidx.compose.foundation.lazy.LazyListState) = (r8v1 androidx.compose.foundation.lazy.LazyListState), (r8v4 androidx.compose.foundation.lazy.LazyListState) binds: [B:12:0x0037, B:8:0x0030] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0053 A[PHI: r10
      0x0053: PHI (r10v3 androidx.compose.foundation.layout.PaddingValues) = (r10v1 androidx.compose.foundation.layout.PaddingValues), (r10v4 androidx.compose.foundation.layout.PaddingValues) binds: [B:22:0x0051, B:18:0x004a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006e A[PHI: r11
      0x006e: PHI (r11v3 boolean) = (r11v1 boolean), (r11v4 boolean) binds: [B:32:0x006c, B:28:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x008b A[PHI: r4
      0x008b: PHI (r4v21 boolean) = (r4v18 boolean), (r4v22 boolean) binds: [B:42:0x0089, B:38:0x0082] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00a8 A[PHI: r15
      0x00a8: PHI (r15v3 int) = (r15v1 int), (r15v4 int) binds: [B:52:0x00a6, B:48:0x009f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c4 A[PHI: r9
      0x00c4: PHI (r9v17 androidx.compose.ui.Alignment$Horizontal) = (r9v14 androidx.compose.ui.Alignment$Horizontal), (r9v18 androidx.compose.ui.Alignment$Horizontal) binds: [B:62:0x00c2, B:58:0x00bc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e0 A[PHI: r12
      0x00e0: PHI (r12v13 androidx.compose.ui.Alignment$Vertical) = (r12v10 androidx.compose.ui.Alignment$Vertical), (r12v14 androidx.compose.ui.Alignment$Vertical) binds: [B:72:0x00de, B:68:0x00d8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00fc A[PHI: r13
      0x00fc: PHI (r13v13 androidx.compose.foundation.layout.Arrangement$Horizontal) = 
      (r13v10 androidx.compose.foundation.layout.Arrangement$Horizontal)
      (r13v14 androidx.compose.foundation.layout.Arrangement$Horizontal)
     binds: [B:82:0x00fa, B:78:0x00f4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0118 A[PHI: r5
      0x0118: PHI (r5v9 androidx.compose.foundation.layout.Arrangement$Vertical) = 
      (r5v7 androidx.compose.foundation.layout.Arrangement$Vertical)
      (r5v10 androidx.compose.foundation.layout.Arrangement$Vertical)
     binds: [B:92:0x0116, B:88:0x0110] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final LazyLayoutMeasurePolicy rememberLazyListMeasurePolicy(Function0<? extends LazyListItemProvider> function0, LazyListState state, PaddingValues contentPadding, boolean reverseLayout, boolean isVertical, int beyondBoundsItemCount, Alignment.Horizontal horizontalAlignment, Alignment.Vertical verticalAlignment, Arrangement.Horizontal horizontalArrangement, Arrangement.Vertical verticalArrangement, CoroutineScope coroutineScope, GraphicsContext graphicsContext, StickyItemsPlacement stickyItemsPlacement, Composer $composer, int $changed, int $changed1) {
        LazyListState lazyListState;
        boolean z;
        PaddingValues paddingValues;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i;
        boolean z7;
        Alignment.Horizontal horizontal;
        boolean z8;
        Alignment.Vertical vertical;
        boolean z9;
        Arrangement.Horizontal horizontal2;
        boolean z10;
        Arrangement.Vertical vertical2;
        boolean z11;
        StickyItemsPlacement stickyItemsPlacement2;
        boolean z12;
        boolean invalid$iv;
        LazyListKt$rememberLazyListMeasurePolicy$1$1 value$iv;
        ComposerKt.sourceInformationMarkerStart($composer, 406165748, "C(rememberLazyListMeasurePolicy)N(itemProviderLambda,state,contentPadding,reverseLayout,isVertical,beyondBoundsItemCount,horizontalAlignment,verticalAlignment,horizontalArrangement,verticalArrangement,coroutineScope,graphicsContext,stickyItemsPlacement)187@8024L9764:LazyList.kt#428nma");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(406165748, $changed, $changed1, "androidx.compose.foundation.lazy.rememberLazyListMeasurePolicy (LazyList.kt:187)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, -516691432, "CC(remember):LazyList.kt#9igjgp");
        if ((($changed & 112) ^ 48) > 32) {
            lazyListState = state;
            if ($composer.changed(lazyListState)) {
                z = true;
            }
            if ((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                paddingValues = contentPadding;
                if ($composer.changed(paddingValues)) {
                    z2 = true;
                }
                boolean z13 = z | z2;
                if ((($changed & 7168) ^ 3072) > 2048) {
                    z3 = reverseLayout;
                    if ($composer.changed(z3)) {
                        z4 = true;
                    }
                    boolean z14 = z13 | z4;
                    if (((57344 & $changed) ^ 24576) <= 16384) {
                        z5 = isVertical;
                        if ($composer.changed(z5)) {
                            z6 = true;
                        }
                        boolean z15 = z14 | z6;
                        if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) > 131072) {
                            i = beyondBoundsItemCount;
                            if ($composer.changed(i)) {
                                z7 = true;
                            }
                            boolean z16 = z15 | z7;
                            if (((3670016 & $changed) ^ 1572864) <= 1048576) {
                                horizontal = horizontalAlignment;
                                if ($composer.changed(horizontal)) {
                                    z8 = true;
                                }
                                boolean z17 = z16 | z8;
                                if (((29360128 & $changed) ^ 12582912) > 8388608) {
                                    vertical = verticalAlignment;
                                    if ($composer.changed(vertical)) {
                                        z9 = true;
                                    }
                                    boolean z18 = z17 | z9;
                                    if (((234881024 & $changed) ^ 100663296) <= 67108864) {
                                        horizontal2 = horizontalArrangement;
                                        if ($composer.changed(horizontal2)) {
                                            z10 = true;
                                        }
                                        boolean z19 = z18 | z10;
                                        if (((1879048192 & $changed) ^ 805306368) > 536870912) {
                                            vertical2 = verticalArrangement;
                                            if ($composer.changed(vertical2)) {
                                                z11 = true;
                                            }
                                            boolean zChanged = z19 | z11 | $composer.changed(graphicsContext);
                                            if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                                                stickyItemsPlacement2 = stickyItemsPlacement;
                                                if ($composer.changed(stickyItemsPlacement2)) {
                                                    z12 = true;
                                                }
                                                invalid$iv = zChanged | z12;
                                                value$iv = $composer.rememberedValue();
                                                if (invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                                                    StickyItemsPlacement stickyItemsPlacement3 = stickyItemsPlacement2;
                                                    Arrangement.Horizontal horizontal3 = horizontal2;
                                                    value$iv = new LazyListKt$rememberLazyListMeasurePolicy$1$1(lazyListState, z5, paddingValues, z3, function0, vertical2, horizontal3, i, coroutineScope, graphicsContext, stickyItemsPlacement3, horizontal, vertical);
                                                    $composer.updateRememberedValue(value$iv);
                                                }
                                                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy = (LazyLayoutMeasurePolicy) value$iv;
                                                ComposerKt.sourceInformationMarkerEnd($composer);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                                ComposerKt.sourceInformationMarkerEnd($composer);
                                                return lazyLayoutMeasurePolicy;
                                            }
                                            stickyItemsPlacement2 = stickyItemsPlacement;
                                            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
                                                z12 = false;
                                            }
                                            invalid$iv = zChanged | z12;
                                            value$iv = $composer.rememberedValue();
                                            if (invalid$iv) {
                                            }
                                            StickyItemsPlacement stickyItemsPlacement32 = stickyItemsPlacement2;
                                            Arrangement.Horizontal horizontal32 = horizontal2;
                                            value$iv = new LazyListKt$rememberLazyListMeasurePolicy$1$1(lazyListState, z5, paddingValues, z3, function0, vertical2, horizontal32, i, coroutineScope, graphicsContext, stickyItemsPlacement32, horizontal, vertical);
                                            $composer.updateRememberedValue(value$iv);
                                            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2 = (LazyLayoutMeasurePolicy) value$iv;
                                            ComposerKt.sourceInformationMarkerEnd($composer);
                                            if (ComposerKt.isTraceInProgress()) {
                                            }
                                            ComposerKt.sourceInformationMarkerEnd($composer);
                                            return lazyLayoutMeasurePolicy2;
                                        }
                                        vertical2 = verticalArrangement;
                                        if ((805306368 & $changed) != 536870912) {
                                            z11 = false;
                                        }
                                        boolean zChanged2 = z19 | z11 | $composer.changed(graphicsContext);
                                        if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                                        }
                                        if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
                                        }
                                        invalid$iv = zChanged2 | z12;
                                        value$iv = $composer.rememberedValue();
                                        if (invalid$iv) {
                                        }
                                        StickyItemsPlacement stickyItemsPlacement322 = stickyItemsPlacement2;
                                        Arrangement.Horizontal horizontal322 = horizontal2;
                                        value$iv = new LazyListKt$rememberLazyListMeasurePolicy$1$1(lazyListState, z5, paddingValues, z3, function0, vertical2, horizontal322, i, coroutineScope, graphicsContext, stickyItemsPlacement322, horizontal, vertical);
                                        $composer.updateRememberedValue(value$iv);
                                        LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy22 = (LazyLayoutMeasurePolicy) value$iv;
                                        ComposerKt.sourceInformationMarkerEnd($composer);
                                        if (ComposerKt.isTraceInProgress()) {
                                        }
                                        ComposerKt.sourceInformationMarkerEnd($composer);
                                        return lazyLayoutMeasurePolicy22;
                                    }
                                    horizontal2 = horizontalArrangement;
                                    if ((100663296 & $changed) == 67108864) {
                                        z10 = false;
                                    }
                                    boolean z192 = z18 | z10;
                                    if (((1879048192 & $changed) ^ 805306368) > 536870912) {
                                    }
                                    if ((805306368 & $changed) != 536870912) {
                                    }
                                    boolean zChanged22 = z192 | z11 | $composer.changed(graphicsContext);
                                    if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                                    }
                                    if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
                                    }
                                    invalid$iv = zChanged22 | z12;
                                    value$iv = $composer.rememberedValue();
                                    if (invalid$iv) {
                                    }
                                    StickyItemsPlacement stickyItemsPlacement3222 = stickyItemsPlacement2;
                                    Arrangement.Horizontal horizontal3222 = horizontal2;
                                    value$iv = new LazyListKt$rememberLazyListMeasurePolicy$1$1(lazyListState, z5, paddingValues, z3, function0, vertical2, horizontal3222, i, coroutineScope, graphicsContext, stickyItemsPlacement3222, horizontal, vertical);
                                    $composer.updateRememberedValue(value$iv);
                                    LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy222 = (LazyLayoutMeasurePolicy) value$iv;
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    return lazyLayoutMeasurePolicy222;
                                }
                                vertical = verticalAlignment;
                                if ((12582912 & $changed) != 8388608) {
                                    z9 = false;
                                }
                                boolean z182 = z17 | z9;
                                if (((234881024 & $changed) ^ 100663296) <= 67108864) {
                                }
                                if ((100663296 & $changed) == 67108864) {
                                }
                                boolean z1922 = z182 | z10;
                                if (((1879048192 & $changed) ^ 805306368) > 536870912) {
                                }
                                if ((805306368 & $changed) != 536870912) {
                                }
                                boolean zChanged222 = z1922 | z11 | $composer.changed(graphicsContext);
                                if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                                }
                                if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
                                }
                                invalid$iv = zChanged222 | z12;
                                value$iv = $composer.rememberedValue();
                                if (invalid$iv) {
                                }
                                StickyItemsPlacement stickyItemsPlacement32222 = stickyItemsPlacement2;
                                Arrangement.Horizontal horizontal32222 = horizontal2;
                                value$iv = new LazyListKt$rememberLazyListMeasurePolicy$1$1(lazyListState, z5, paddingValues, z3, function0, vertical2, horizontal32222, i, coroutineScope, graphicsContext, stickyItemsPlacement32222, horizontal, vertical);
                                $composer.updateRememberedValue(value$iv);
                                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2222 = (LazyLayoutMeasurePolicy) value$iv;
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                if (ComposerKt.isTraceInProgress()) {
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                return lazyLayoutMeasurePolicy2222;
                            }
                            horizontal = horizontalAlignment;
                            if ((1572864 & $changed) == 1048576) {
                                z8 = false;
                            }
                            boolean z172 = z16 | z8;
                            if (((29360128 & $changed) ^ 12582912) > 8388608) {
                            }
                            if ((12582912 & $changed) != 8388608) {
                            }
                            boolean z1822 = z172 | z9;
                            if (((234881024 & $changed) ^ 100663296) <= 67108864) {
                            }
                            if ((100663296 & $changed) == 67108864) {
                            }
                            boolean z19222 = z1822 | z10;
                            if (((1879048192 & $changed) ^ 805306368) > 536870912) {
                            }
                            if ((805306368 & $changed) != 536870912) {
                            }
                            boolean zChanged2222 = z19222 | z11 | $composer.changed(graphicsContext);
                            if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                            }
                            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
                            }
                            invalid$iv = zChanged2222 | z12;
                            value$iv = $composer.rememberedValue();
                            if (invalid$iv) {
                            }
                            StickyItemsPlacement stickyItemsPlacement322222 = stickyItemsPlacement2;
                            Arrangement.Horizontal horizontal322222 = horizontal2;
                            value$iv = new LazyListKt$rememberLazyListMeasurePolicy$1$1(lazyListState, z5, paddingValues, z3, function0, vertical2, horizontal322222, i, coroutineScope, graphicsContext, stickyItemsPlacement322222, horizontal, vertical);
                            $composer.updateRememberedValue(value$iv);
                            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy22222 = (LazyLayoutMeasurePolicy) value$iv;
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            return lazyLayoutMeasurePolicy22222;
                        }
                        i = beyondBoundsItemCount;
                        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 131072) {
                            z7 = false;
                        }
                        boolean z162 = z15 | z7;
                        if (((3670016 & $changed) ^ 1572864) <= 1048576) {
                        }
                        if ((1572864 & $changed) == 1048576) {
                        }
                        boolean z1722 = z162 | z8;
                        if (((29360128 & $changed) ^ 12582912) > 8388608) {
                        }
                        if ((12582912 & $changed) != 8388608) {
                        }
                        boolean z18222 = z1722 | z9;
                        if (((234881024 & $changed) ^ 100663296) <= 67108864) {
                        }
                        if ((100663296 & $changed) == 67108864) {
                        }
                        boolean z192222 = z18222 | z10;
                        if (((1879048192 & $changed) ^ 805306368) > 536870912) {
                        }
                        if ((805306368 & $changed) != 536870912) {
                        }
                        boolean zChanged22222 = z192222 | z11 | $composer.changed(graphicsContext);
                        if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                        }
                        if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
                        }
                        invalid$iv = zChanged22222 | z12;
                        value$iv = $composer.rememberedValue();
                        if (invalid$iv) {
                        }
                        StickyItemsPlacement stickyItemsPlacement3222222 = stickyItemsPlacement2;
                        Arrangement.Horizontal horizontal3222222 = horizontal2;
                        value$iv = new LazyListKt$rememberLazyListMeasurePolicy$1$1(lazyListState, z5, paddingValues, z3, function0, vertical2, horizontal3222222, i, coroutineScope, graphicsContext, stickyItemsPlacement3222222, horizontal, vertical);
                        $composer.updateRememberedValue(value$iv);
                        LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy222222 = (LazyLayoutMeasurePolicy) value$iv;
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        return lazyLayoutMeasurePolicy222222;
                    }
                    z5 = isVertical;
                    if (($changed & 24576) == 16384) {
                        z6 = false;
                    }
                    boolean z152 = z14 | z6;
                    if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) > 131072) {
                    }
                    if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 131072) {
                    }
                    boolean z1622 = z152 | z7;
                    if (((3670016 & $changed) ^ 1572864) <= 1048576) {
                    }
                    if ((1572864 & $changed) == 1048576) {
                    }
                    boolean z17222 = z1622 | z8;
                    if (((29360128 & $changed) ^ 12582912) > 8388608) {
                    }
                    if ((12582912 & $changed) != 8388608) {
                    }
                    boolean z182222 = z17222 | z9;
                    if (((234881024 & $changed) ^ 100663296) <= 67108864) {
                    }
                    if ((100663296 & $changed) == 67108864) {
                    }
                    boolean z1922222 = z182222 | z10;
                    if (((1879048192 & $changed) ^ 805306368) > 536870912) {
                    }
                    if ((805306368 & $changed) != 536870912) {
                    }
                    boolean zChanged222222 = z1922222 | z11 | $composer.changed(graphicsContext);
                    if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                    }
                    if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
                    }
                    invalid$iv = zChanged222222 | z12;
                    value$iv = $composer.rememberedValue();
                    if (invalid$iv) {
                    }
                    StickyItemsPlacement stickyItemsPlacement32222222 = stickyItemsPlacement2;
                    Arrangement.Horizontal horizontal32222222 = horizontal2;
                    value$iv = new LazyListKt$rememberLazyListMeasurePolicy$1$1(lazyListState, z5, paddingValues, z3, function0, vertical2, horizontal32222222, i, coroutineScope, graphicsContext, stickyItemsPlacement32222222, horizontal, vertical);
                    $composer.updateRememberedValue(value$iv);
                    LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2222222 = (LazyLayoutMeasurePolicy) value$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    return lazyLayoutMeasurePolicy2222222;
                }
                z3 = reverseLayout;
                if (($changed & 3072) != 2048) {
                    z4 = false;
                }
                boolean z142 = z13 | z4;
                if (((57344 & $changed) ^ 24576) <= 16384) {
                }
                if (($changed & 24576) == 16384) {
                }
                boolean z1522 = z142 | z6;
                if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) > 131072) {
                }
                if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 131072) {
                }
                boolean z16222 = z1522 | z7;
                if (((3670016 & $changed) ^ 1572864) <= 1048576) {
                }
                if ((1572864 & $changed) == 1048576) {
                }
                boolean z172222 = z16222 | z8;
                if (((29360128 & $changed) ^ 12582912) > 8388608) {
                }
                if ((12582912 & $changed) != 8388608) {
                }
                boolean z1822222 = z172222 | z9;
                if (((234881024 & $changed) ^ 100663296) <= 67108864) {
                }
                if ((100663296 & $changed) == 67108864) {
                }
                boolean z19222222 = z1822222 | z10;
                if (((1879048192 & $changed) ^ 805306368) > 536870912) {
                }
                if ((805306368 & $changed) != 536870912) {
                }
                boolean zChanged2222222 = z19222222 | z11 | $composer.changed(graphicsContext);
                if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                }
                if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
                }
                invalid$iv = zChanged2222222 | z12;
                value$iv = $composer.rememberedValue();
                if (invalid$iv) {
                }
                StickyItemsPlacement stickyItemsPlacement322222222 = stickyItemsPlacement2;
                Arrangement.Horizontal horizontal322222222 = horizontal2;
                value$iv = new LazyListKt$rememberLazyListMeasurePolicy$1$1(lazyListState, z5, paddingValues, z3, function0, vertical2, horizontal322222222, i, coroutineScope, graphicsContext, stickyItemsPlacement322222222, horizontal, vertical);
                $composer.updateRememberedValue(value$iv);
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy22222222 = (LazyLayoutMeasurePolicy) value$iv;
                ComposerKt.sourceInformationMarkerEnd($composer);
                if (ComposerKt.isTraceInProgress()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                return lazyLayoutMeasurePolicy22222222;
            }
            paddingValues = contentPadding;
            if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
                z2 = false;
            }
            boolean z132 = z | z2;
            if ((($changed & 7168) ^ 3072) > 2048) {
            }
            if (($changed & 3072) != 2048) {
            }
            boolean z1422 = z132 | z4;
            if (((57344 & $changed) ^ 24576) <= 16384) {
            }
            if (($changed & 24576) == 16384) {
            }
            boolean z15222 = z1422 | z6;
            if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) > 131072) {
            }
            if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 131072) {
            }
            boolean z162222 = z15222 | z7;
            if (((3670016 & $changed) ^ 1572864) <= 1048576) {
            }
            if ((1572864 & $changed) == 1048576) {
            }
            boolean z1722222 = z162222 | z8;
            if (((29360128 & $changed) ^ 12582912) > 8388608) {
            }
            if ((12582912 & $changed) != 8388608) {
            }
            boolean z18222222 = z1722222 | z9;
            if (((234881024 & $changed) ^ 100663296) <= 67108864) {
            }
            if ((100663296 & $changed) == 67108864) {
            }
            boolean z192222222 = z18222222 | z10;
            if (((1879048192 & $changed) ^ 805306368) > 536870912) {
            }
            if ((805306368 & $changed) != 536870912) {
            }
            boolean zChanged22222222 = z192222222 | z11 | $composer.changed(graphicsContext);
            if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
            }
            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
            }
            invalid$iv = zChanged22222222 | z12;
            value$iv = $composer.rememberedValue();
            if (invalid$iv) {
            }
            StickyItemsPlacement stickyItemsPlacement3222222222 = stickyItemsPlacement2;
            Arrangement.Horizontal horizontal3222222222 = horizontal2;
            value$iv = new LazyListKt$rememberLazyListMeasurePolicy$1$1(lazyListState, z5, paddingValues, z3, function0, vertical2, horizontal3222222222, i, coroutineScope, graphicsContext, stickyItemsPlacement3222222222, horizontal, vertical);
            $composer.updateRememberedValue(value$iv);
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy222222222 = (LazyLayoutMeasurePolicy) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            return lazyLayoutMeasurePolicy222222222;
        }
        lazyListState = state;
        if (($changed & 48) != 32) {
            z = false;
        }
        if ((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
        }
        boolean z1322 = z | z2;
        if ((($changed & 7168) ^ 3072) > 2048) {
        }
        if (($changed & 3072) != 2048) {
        }
        boolean z14222 = z1322 | z4;
        if (((57344 & $changed) ^ 24576) <= 16384) {
        }
        if (($changed & 24576) == 16384) {
        }
        boolean z152222 = z14222 | z6;
        if (((458752 & $changed) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) > 131072) {
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 131072) {
        }
        boolean z1622222 = z152222 | z7;
        if (((3670016 & $changed) ^ 1572864) <= 1048576) {
        }
        if ((1572864 & $changed) == 1048576) {
        }
        boolean z17222222 = z1622222 | z8;
        if (((29360128 & $changed) ^ 12582912) > 8388608) {
        }
        if ((12582912 & $changed) != 8388608) {
        }
        boolean z182222222 = z17222222 | z9;
        if (((234881024 & $changed) ^ 100663296) <= 67108864) {
        }
        if ((100663296 & $changed) == 67108864) {
        }
        boolean z1922222222 = z182222222 | z10;
        if (((1879048192 & $changed) ^ 805306368) > 536870912) {
        }
        if ((805306368 & $changed) != 536870912) {
        }
        boolean zChanged222222222 = z1922222222 | z11 | $composer.changed(graphicsContext);
        if ((($changed1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
        }
        if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) {
        }
        invalid$iv = zChanged222222222 | z12;
        value$iv = $composer.rememberedValue();
        if (invalid$iv) {
        }
        StickyItemsPlacement stickyItemsPlacement32222222222 = stickyItemsPlacement2;
        Arrangement.Horizontal horizontal32222222222 = horizontal2;
        value$iv = new LazyListKt$rememberLazyListMeasurePolicy$1$1(lazyListState, z5, paddingValues, z3, function0, vertical2, horizontal32222222222, i, coroutineScope, graphicsContext, stickyItemsPlacement32222222222, horizontal, vertical);
        $composer.updateRememberedValue(value$iv);
        LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2222222222 = (LazyLayoutMeasurePolicy) value$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return lazyLayoutMeasurePolicy2222222222;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void keepAroundItems(CacheWindowLogic $this$keepAroundItems, List<LazyListMeasuredItem> list, LazyListMeasuredItemProvider measuredItemProvider) {
        Trace.beginSection("compose:lazy:cache_window:keepAroundItems");
        try {
            if ($this$keepAroundItems.hasValidBounds() && !list.isEmpty()) {
                int firstVisibleItemIndex = ((LazyListMeasuredItem) CollectionsKt.first((List) list)).getIndex();
                int lastVisibleItemIndex = ((LazyListMeasuredItem) CollectionsKt.last((List) list)).getIndex();
                for (int item = $this$keepAroundItems.getPrefetchWindowStartLine(); item < firstVisibleItemIndex; item++) {
                    measuredItemProvider.keepAround(item);
                }
                int item2 = lastVisibleItemIndex + 1;
                int prefetchWindowEndLine = $this$keepAroundItems.getPrefetchWindowEndLine();
                if (item2 <= prefetchWindowEndLine) {
                    while (true) {
                        measuredItemProvider.keepAround(item2);
                        if (item2 == prefetchWindowEndLine) {
                            break;
                        } else {
                            item2++;
                        }
                    }
                }
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            Trace.endSection();
        }
    }
}
