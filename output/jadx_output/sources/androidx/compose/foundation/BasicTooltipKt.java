package androidx.compose.foundation;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.LongPressResult;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.compose.ui.window.PopupProperties;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.ts.TsExtractor;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: BasicTooltip.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aa\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0011\u0010\u0004\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u0006H\u0007¢\u0006\u0002\u0010\u000f\u001a:\u0010\u0010\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u0006H\u0003¢\u0006\u0002\u0010\u0011\u001a@\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\f2\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u0006H\u0003¢\u0006\u0002\u0010\u0015\u001a\u001c\u0010\u0016\u001a\u00020\n*\u00020\n2\u0006\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a,\u0010\u0018\u001a\u00020\n*\u00020\n2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u001a+\u0010\u001b\u001a\u00020\b2\b\b\u0002\u0010\u001c\u001a\u00020\f2\b\b\u0002\u0010\u001d\u001a\u00020\f2\b\b\u0002\u0010\u001e\u001a\u00020\u001fH\u0007¢\u0006\u0002\u0010 \u001a&\u0010!\u001a\u00020\b2\b\b\u0002\u0010\u001c\u001a\u00020\f2\b\b\u0002\u0010\u001d\u001a\u00020\f2\b\b\u0002\u0010\u001e\u001a\u00020\u001fH\u0007¨\u0006\""}, d2 = {"BasicTooltipBox", "", "positionProvider", "Landroidx/compose/ui/window/PopupPositionProvider;", "tooltip", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "state", "Landroidx/compose/foundation/BasicTooltipState;", "modifier", "Landroidx/compose/ui/Modifier;", "focusable", "", "enableUserInput", "content", "(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "WrappedAnchor", "(ZLandroidx/compose/foundation/BasicTooltipState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "TooltipPopup", "scope", "Lkotlinx/coroutines/CoroutineScope;", "(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/foundation/BasicTooltipState;Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "handleGestures", "enabled", "anchorSemantics", "label", "", "rememberBasicTooltipState", "initialIsVisible", "isPersistent", "mutatorMutex", "Landroidx/compose/foundation/MutatorMutex;", "(ZZLandroidx/compose/foundation/MutatorMutex;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/BasicTooltipState;", "BasicTooltipState", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class BasicTooltipKt {
    static final Unit BasicTooltipBox$lambda$2(PopupPositionProvider popupPositionProvider, Function2 function2, BasicTooltipState basicTooltipState, Modifier modifier, boolean z, boolean z2, Function2 function22, int i, int i2, Composer composer, int i3) {
        BasicTooltipBox(popupPositionProvider, function2, basicTooltipState, modifier, z, z2, function22, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit TooltipPopup$lambda$2(PopupPositionProvider popupPositionProvider, BasicTooltipState basicTooltipState, CoroutineScope coroutineScope, boolean z, Function2 function2, int i, Composer composer, int i2) {
        TooltipPopup(popupPositionProvider, basicTooltipState, coroutineScope, z, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit WrappedAnchor$lambda$1(boolean z, BasicTooltipState basicTooltipState, Modifier modifier, Function2 function2, int i, int i2, Composer composer, int i3) {
        WrappedAnchor(z, basicTooltipState, modifier, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    public static final void BasicTooltipBox(final PopupPositionProvider positionProvider, final Function2<? super Composer, ? super Integer, Unit> function2, BasicTooltipState state, Modifier modifier, boolean focusable, boolean enableUserInput, final Function2<? super Composer, ? super Integer, Unit> function22, Composer $composer, final int $changed, final int i) {
        Function2<? super Composer, ? super Integer, Unit> function23;
        Modifier modifier2;
        boolean z;
        boolean enableUserInput2;
        Function2<? super Composer, ? super Integer, Unit> function24;
        final Modifier modifier3;
        final boolean focusable2;
        final boolean enableUserInput3;
        Function0<ComposeUiNode> function0;
        Composer $composer2;
        boolean focusable3;
        Composer $composer$iv$iv$iv;
        Composer $composer$iv;
        boolean z2;
        Composer $composer$iv$iv$iv2;
        final BasicTooltipState basicTooltipState = state;
        Composer $composer3 = $composer.startRestartGroup(196062260);
        ComposerKt.sourceInformation($composer3, "C(BasicTooltipBox)N(positionProvider,tooltip,state,modifier,focusable,enableUserInput,content)82@3723L24,83@3752L453,102@4235L35,102@4211L59:BasicTooltip.kt#71ulvw");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(positionProvider) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            function23 = function2;
            $dirty |= $composer3.changedInstance(function23) ? 32 : 16;
        } else {
            function23 = function2;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changed(basicTooltipState) ? 256 : 128;
        }
        int i2 = i & 8;
        if (i2 != 0) {
            $dirty |= 3072;
            modifier2 = modifier;
        } else if (($changed & 3072) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 2048 : 1024;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 16;
        if (i3 != 0) {
            $dirty |= 24576;
            z = focusable;
        } else if (($changed & 24576) == 0) {
            z = focusable;
            $dirty |= $composer3.changed(z) ? 16384 : 8192;
        } else {
            z = focusable;
        }
        int i4 = i & 32;
        if (i4 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            enableUserInput2 = enableUserInput;
        } else if ((196608 & $changed) == 0) {
            enableUserInput2 = enableUserInput;
            $dirty |= $composer3.changed(enableUserInput2) ? 131072 : 65536;
        } else {
            enableUserInput2 = enableUserInput;
        }
        if ((1572864 & $changed) == 0) {
            function24 = function22;
            $dirty |= $composer3.changedInstance(function24) ? 1048576 : 524288;
        } else {
            function24 = function22;
        }
        int $dirty2 = $dirty;
        if ($composer3.shouldExecute((599187 & $dirty2) != 599186, $dirty2 & 1)) {
            Modifier modifier4 = i2 != 0 ? Modifier.INSTANCE : modifier2;
            boolean focusable4 = i3 != 0 ? true : z;
            if (i4 != 0) {
                enableUserInput2 = true;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(196062260, $dirty2, -1, "androidx.compose.foundation.BasicTooltipBox (BasicTooltip.kt:81)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer3, 683736516, "CC(remember):Effects.kt#9igjgp");
            Object value$iv$iv = $composer3.rememberedValue();
            if (value$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer3);
                $composer3.updateRememberedValue(value$iv$iv);
            }
            CoroutineScope scope = (CoroutineScope) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            Modifier modifier$iv = Modifier.INSTANCE;
            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
            int $changed$iv$iv = (0 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
            Modifier modifier5 = modifier4;
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer3, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            boolean focusable5 = focusable4;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function0 = constructor;
                $composer3.createNode(function0);
            } else {
                function0 = constructor;
                $composer3.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl($this$Layout_u24lambda_u240$iv$iv, Integer.valueOf(compositeKeyHash$iv$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i6 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 1833338756, "C94@4037L162:BasicTooltip.kt#71ulvw");
            if (state.isVisible()) {
                $composer3.startReplaceGroup(1833353604);
                ComposerKt.sourceInformation($composer3, "85@3801L216");
                z2 = false;
                $composer$iv$iv$iv = $composer3;
                $composer$iv = $composer3;
                $composer$iv$iv$iv2 = $composer3;
                TooltipPopup(positionProvider, state, scope, focusable5, function23, $composer3, ($dirty2 & 14) | (($dirty2 >> 3) & 112) | (($dirty2 >> 3) & 7168) | (($dirty2 << 9) & 57344));
                focusable3 = focusable5;
                $composer2 = $composer3;
            } else {
                $composer2 = $composer3;
                focusable3 = focusable5;
                $composer$iv$iv$iv = $composer3;
                $composer$iv = $composer3;
                z2 = false;
                $composer$iv$iv$iv2 = $composer3;
                $composer2.startReplaceGroup(1829588468);
            }
            $composer2.endReplaceGroup();
            basicTooltipState = state;
            boolean enableUserInput4 = enableUserInput2;
            WrappedAnchor(enableUserInput4, basicTooltipState, modifier5, function24, $composer2, (($dirty2 >> 15) & 14) | (($dirty2 >> 3) & 112) | (($dirty2 >> 3) & 896) | (($dirty2 >> 9) & 7168), 0);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer$iv);
            $composer$iv$iv$iv.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer$iv$iv$iv);
            ComposerKt.sourceInformationMarkerEnd($composer$iv$iv$iv2);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -562703369, "CC(remember):BasicTooltip.kt#9igjgp");
            boolean invalid$iv = ($dirty2 & 896) != 256 ? z2 : true;
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = new Function1() { // from class: androidx.compose.foundation.BasicTooltipKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return BasicTooltipKt.BasicTooltipBox$lambda$1$0(basicTooltipState, (DisposableEffectScope) obj);
                    }
                };
                $composer3.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            EffectsKt.DisposableEffect(basicTooltipState, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) it$iv, $composer3, ($dirty2 >> 6) & 14);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            enableUserInput3 = enableUserInput4;
            modifier3 = modifier5;
            focusable2 = focusable3;
        } else {
            $composer3.skipToGroupEnd();
            modifier3 = modifier2;
            focusable2 = z;
            enableUserInput3 = enableUserInput2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final BasicTooltipState basicTooltipState2 = basicTooltipState;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.BasicTooltipKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTooltipKt.BasicTooltipBox$lambda$2(positionProvider, function2, basicTooltipState2, modifier3, focusable2, enableUserInput3, function22, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult BasicTooltipBox$lambda$1$0(final BasicTooltipState $state, DisposableEffectScope $this$DisposableEffect) {
        return new DisposableEffectResult() { // from class: androidx.compose.foundation.BasicTooltipKt$BasicTooltipBox$lambda$1$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                $state.onDispose();
            }
        };
    }

    private static final void WrappedAnchor(final boolean enableUserInput, final BasicTooltipState state, Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        final Modifier modifier3;
        Function0<ComposeUiNode> function0;
        Composer $composer2 = $composer.startRestartGroup(1381511093);
        ComposerKt.sourceInformation($composer2, "C(WrappedAnchor)N(enableUserInput,state,modifier,content)113@4506L24,114@4576L7,115@4588L212:BasicTooltip.kt#71ulvw");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(enableUserInput) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(state) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 2048 : 1024;
        }
        int $dirty2 = $dirty;
        if ($composer2.shouldExecute(($dirty2 & 1171) != 1170, $dirty2 & 1)) {
            Modifier.Companion modifier4 = i2 != 0 ? Modifier.INSTANCE : modifier2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1381511093, $dirty2, -1, "androidx.compose.foundation.WrappedAnchor (BasicTooltip.kt:112)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer2, 683736516, "CC(remember):Effects.kt#9igjgp");
            Object it$iv$iv = $composer2.rememberedValue();
            if (it$iv$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv$iv = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer2);
                $composer2.updateRememberedValue(value$iv$iv);
                it$iv$iv = value$iv$iv;
            }
            CoroutineScope scope = (CoroutineScope) it$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            String longPressLabel = BasicTooltipStrings.INSTANCE.label($composer2, 6);
            Modifier modifier$iv = anchorSemantics(handleGestures(modifier4, enableUserInput, state), longPressLabel, enableUserInput, state, scope);
            ComposerKt.sourceInformationMarkerStart($composer2, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
            int $changed$iv$iv = (0 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
            CompositionLocalMap localMap$iv$iv = $composer2.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            Modifier modifier5 = modifier4;
            ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                function0 = constructor;
                $composer2.createNode(function0);
            } else {
                function0 = constructor;
                $composer2.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl($this$Layout_u24lambda_u240$iv$iv, Integer.valueOf(compositeKeyHash$iv$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i3 = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i4 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -529306613, "C121@4785L9:BasicTooltip.kt#71ulvw");
            function2.invoke($composer2, Integer.valueOf(($dirty2 >> 9) & 14));
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier5;
        } else {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.BasicTooltipKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTooltipKt.WrappedAnchor$lambda$1(enableUserInput, state, modifier3, function2, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void TooltipPopup(final PopupPositionProvider positionProvider, final BasicTooltipState state, final CoroutineScope scope, final boolean focusable, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed) {
        PopupPositionProvider popupPositionProvider;
        boolean z;
        Composer $composer2 = $composer.startRestartGroup(-1882542163);
        ComposerKt.sourceInformation($composer2, "C(TooltipPopup)N(positionProvider,state,scope,focusable,content)134@5099L13,137@5201L109,143@5379L251,135@5117L513:BasicTooltip.kt#71ulvw");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            popupPositionProvider = positionProvider;
            $dirty |= $composer2.changed(popupPositionProvider) ? 4 : 2;
        } else {
            popupPositionProvider = positionProvider;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(state) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(scope) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            z = focusable;
            $dirty |= $composer2.changed(z) ? 2048 : 1024;
        } else {
            z = focusable;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 16384 : 8192;
        }
        if (!$composer2.shouldExecute(($dirty & 9363) != 9362, $dirty & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1882542163, $dirty, -1, "androidx.compose.foundation.TooltipPopup (BasicTooltip.kt:133)");
            }
            final String tooltipDescription = BasicTooltipStrings.INSTANCE.description($composer2, 6);
            ComposerKt.sourceInformationMarkerStart($composer2, -941776166, "CC(remember):BasicTooltip.kt#9igjgp");
            boolean invalid$iv = $composer2.changedInstance(scope) | (($dirty & 112) == 32);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = new Function0() { // from class: androidx.compose.foundation.BasicTooltipKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BasicTooltipKt.TooltipPopup$lambda$0$0(state, scope);
                    }
                };
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            AndroidPopup_androidKt.Popup(popupPositionProvider, (Function0) it$iv, new PopupProperties(z, false, false, false, 14, (DefaultConstructorMarker) null), ComposableLambdaKt.rememberComposableLambda(916917707, true, new Function2() { // from class: androidx.compose.foundation.BasicTooltipKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTooltipKt.TooltipPopup$lambda$1(tooltipDescription, function2, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), $composer2, ($dirty & 14) | 3072, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.BasicTooltipKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTooltipKt.TooltipPopup$lambda$2(positionProvider, state, scope, focusable, function2, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit TooltipPopup$lambda$0$0(BasicTooltipState $state, CoroutineScope $scope) {
        if ($state.isVisible()) {
            BuildersKt__Builders_commonKt.launch$default($scope, null, null, new BasicTooltipKt$TooltipPopup$1$1$1($state, null), 3, null);
        }
        return Unit.INSTANCE;
    }

    static final Unit TooltipPopup$lambda$1(final String $tooltipDescription, Function2 $content, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C146@5452L128,144@5389L235:BasicTooltip.kt#71ulvw");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(916917707, $changed, -1, "androidx.compose.foundation.TooltipPopup.<anonymous> (BasicTooltip.kt:144)");
            }
            Modifier.Companion companion = Modifier.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, 689623211, "CC(remember):BasicTooltip.kt#9igjgp");
            boolean invalid$iv = $composer.changed($tooltipDescription);
            Object it$iv = $composer.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = new Function1() { // from class: androidx.compose.foundation.BasicTooltipKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return BasicTooltipKt.TooltipPopup$lambda$1$0$0($tooltipDescription, (SemanticsPropertyReceiver) obj);
                    }
                };
                $composer.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            Modifier modifier$iv = SemanticsModifierKt.semantics$default(companion, false, (Function1) it$iv, 1, null);
            ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
            int $changed$iv$iv = (0 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap localMap$iv$iv = $composer.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl($this$Layout_u24lambda_u240$iv$iv, Integer.valueOf(compositeKeyHash$iv$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i2 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 1506788405, "C151@5605L9:BasicTooltip.kt#71ulvw");
            $content.invoke($composer, 0);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit TooltipPopup$lambda$1$0$0(String $tooltipDescription, SemanticsPropertyReceiver $this$semantics) {
        SemanticsPropertiesKt.m6717setLiveRegionhR3wRGc($this$semantics, LiveRegionMode.INSTANCE.m6690getAssertive0phEisY());
        SemanticsPropertiesKt.setPaneTitle($this$semantics, $tooltipDescription);
        return Unit.INSTANCE;
    }

    private static final Modifier handleGestures(Modifier $this$handleGestures, boolean enabled, final BasicTooltipState state) {
        if (enabled) {
            return SuspendingPointerInputFilterKt.pointerInput(SuspendingPointerInputFilterKt.pointerInput($this$handleGestures, state, new PointerInputEventHandler() { // from class: androidx.compose.foundation.BasicTooltipKt.handleGestures.1

                /* JADX INFO: renamed from: androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: BasicTooltip.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1", f = "BasicTooltip.kt", i = {}, l = {162}, m = "invokeSuspend", n = {}, s = {}, v = 1)
                static final class C00031 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ BasicTooltipState $state;
                    final /* synthetic */ PointerInputScope $this_pointerInput;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C00031(PointerInputScope pointerInputScope, BasicTooltipState basicTooltipState, Continuation<? super C00031> continuation) {
                        super(2, continuation);
                        this.$this_pointerInput = pointerInputScope;
                        this.$state = basicTooltipState;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        C00031 c00031 = new C00031(this.$this_pointerInput, this.$state, continuation);
                        c00031.L$0 = obj;
                        return c00031;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C00031) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    /* JADX INFO: renamed from: androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1$1, reason: invalid class name and collision with other inner class name */
                    /* JADX INFO: compiled from: BasicTooltip.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1$1", f = "BasicTooltip.kt", i = {0, 0, 1, 1}, l = {166, 169, 175}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "pass", "$this$awaitEachGesture", "pass"}, s = {"L$0", "L$1", "L$0", "L$1"}, v = 1)
                    static final class C00041 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ CoroutineScope $$this$coroutineScope;
                        final /* synthetic */ BasicTooltipState $state;
                        private /* synthetic */ Object L$0;
                        Object L$1;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C00041(CoroutineScope coroutineScope, BasicTooltipState basicTooltipState, Continuation<? super C00041> continuation) {
                            super(2, continuation);
                            this.$$this$coroutineScope = coroutineScope;
                            this.$state = basicTooltipState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            C00041 c00041 = new C00041(this.$$this$coroutineScope, this.$state, continuation);
                            c00041.L$0 = obj;
                            return c00041;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
                            return ((C00041) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        /* JADX WARN: Removed duplicated region for block: B:19:0x0083 A[RETURN] */
                        /* JADX WARN: Removed duplicated region for block: B:22:0x008a  */
                        /* JADX WARN: Removed duplicated region for block: B:27:0x00bc A[LOOP:0: B:26:0x00ba->B:27:0x00bc, LOOP_END] */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final Object invokeSuspend(Object $result) {
                            AwaitPointerEventScope $this$awaitEachGesture;
                            PointerEventPass pass;
                            int inputType;
                            LongPressResult longPress;
                            int i;
                            int size;
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            switch (this.label) {
                                case 0:
                                    ResultKt.throwOnFailure($result);
                                    $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                                    pass = PointerEventPass.Initial;
                                    this.L$0 = $this$awaitEachGesture;
                                    this.L$1 = pass;
                                    this.label = 1;
                                    Object objAwaitFirstDown$default = TapGestureDetectorKt.awaitFirstDown$default($this$awaitEachGesture, false, pass, this, 1, null);
                                    if (objAwaitFirstDown$default == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    $result = objAwaitFirstDown$default;
                                    inputType = ((PointerInputChange) $result).getType();
                                    if (!PointerType.m6081equalsimpl0(inputType, PointerType.INSTANCE.m6088getTouchT8wyACA()) || PointerType.m6081equalsimpl0(inputType, PointerType.INSTANCE.m6087getStylusT8wyACA())) {
                                        this.L$0 = $this$awaitEachGesture;
                                        this.L$1 = pass;
                                        this.label = 2;
                                        $result = TapGestureDetectorKt.waitForLongPress($this$awaitEachGesture, pass, this);
                                        if ($result == coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                        longPress = (LongPressResult) $result;
                                        if (longPress instanceof LongPressResult.Success) {
                                            BuildersKt__Builders_commonKt.launch$default(this.$$this$coroutineScope, null, null, new C00051(this.$state, null), 3, null);
                                            this.L$0 = null;
                                            this.L$1 = null;
                                            this.label = 3;
                                            $result = $this$awaitEachGesture.awaitPointerEvent(pass, this);
                                            if ($result == coroutine_suspended) {
                                                return coroutine_suspended;
                                            }
                                            List<PointerInputChange> changes = ((PointerEvent) $result).getChanges();
                                            size = changes.size();
                                            for (i = 0; i < size; i++) {
                                                changes.get(i).consume();
                                            }
                                        }
                                    }
                                    return Unit.INSTANCE;
                                case 1:
                                    PointerEventPass pass2 = (PointerEventPass) this.L$1;
                                    $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                                    ResultKt.throwOnFailure($result);
                                    pass = pass2;
                                    inputType = ((PointerInputChange) $result).getType();
                                    if (!PointerType.m6081equalsimpl0(inputType, PointerType.INSTANCE.m6088getTouchT8wyACA())) {
                                        break;
                                    }
                                    this.L$0 = $this$awaitEachGesture;
                                    this.L$1 = pass;
                                    this.label = 2;
                                    $result = TapGestureDetectorKt.waitForLongPress($this$awaitEachGesture, pass, this);
                                    if ($result == coroutine_suspended) {
                                    }
                                    longPress = (LongPressResult) $result;
                                    if (longPress instanceof LongPressResult.Success) {
                                    }
                                    return Unit.INSTANCE;
                                case 2:
                                    PointerEventPass pass3 = (PointerEventPass) this.L$1;
                                    $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                                    ResultKt.throwOnFailure($result);
                                    pass = pass3;
                                    longPress = (LongPressResult) $result;
                                    if (longPress instanceof LongPressResult.Success) {
                                    }
                                    return Unit.INSTANCE;
                                case 3:
                                    ResultKt.throwOnFailure($result);
                                    List<PointerInputChange> changes2 = ((PointerEvent) $result).getChanges();
                                    size = changes2.size();
                                    while (i < size) {
                                    }
                                    return Unit.INSTANCE;
                                default:
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        }

                        /* JADX INFO: renamed from: androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1$1$1, reason: invalid class name and collision with other inner class name */
                        /* JADX INFO: compiled from: BasicTooltip.kt */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.compose.foundation.BasicTooltipKt$handleGestures$1$1$1$1", f = "BasicTooltip.kt", i = {}, l = {TsExtractor.TS_STREAM_TYPE_AC4}, m = "invokeSuspend", n = {}, s = {}, v = 1)
                        static final class C00051 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            final /* synthetic */ BasicTooltipState $state;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            C00051(BasicTooltipState basicTooltipState, Continuation<? super C00051> continuation) {
                                super(2, continuation);
                                this.$state = basicTooltipState;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                return new C00051(this.$state, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                return ((C00051) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object $result) {
                                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                switch (this.label) {
                                    case 0:
                                        ResultKt.throwOnFailure($result);
                                        this.label = 1;
                                        if (this.$state.show(MutatePriority.UserInput, this) == coroutine_suspended) {
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
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object $result) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        switch (this.label) {
                            case 0:
                                ResultKt.throwOnFailure($result);
                                CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                                this.label = 1;
                                if (ForEachGestureKt.awaitEachGesture(this.$this_pointerInput, new C00041($this$coroutineScope, this.$state, null), this) == coroutine_suspended) {
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
                    Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new C00031($this$pointerInput, state, null), continuation);
                    return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
                }
            }), state, new PointerInputEventHandler() { // from class: androidx.compose.foundation.BasicTooltipKt.handleGestures.2

                /* JADX INFO: renamed from: androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: BasicTooltip.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1", f = "BasicTooltip.kt", i = {}, l = {186}, m = "invokeSuspend", n = {}, s = {}, v = 1)
                static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ BasicTooltipState $state;
                    final /* synthetic */ PointerInputScope $this_pointerInput;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(PointerInputScope pointerInputScope, BasicTooltipState basicTooltipState, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.$this_pointerInput = pointerInputScope;
                        this.$state = basicTooltipState;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_pointerInput, this.$state, continuation);
                        anonymousClass1.L$0 = obj;
                        return anonymousClass1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    /* JADX INFO: renamed from: androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1$1, reason: invalid class name and collision with other inner class name */
                    /* JADX INFO: compiled from: BasicTooltip.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1$1", f = "BasicTooltip.kt", i = {0, 0}, l = {190}, m = "invokeSuspend", n = {"$this$awaitPointerEventScope", "pass"}, s = {"L$0", "L$1"}, v = 1)
                    static final class C00061 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ CoroutineScope $$this$coroutineScope;
                        final /* synthetic */ BasicTooltipState $state;
                        private /* synthetic */ Object L$0;
                        Object L$1;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C00061(CoroutineScope coroutineScope, BasicTooltipState basicTooltipState, Continuation<? super C00061> continuation) {
                            super(2, continuation);
                            this.$$this$coroutineScope = coroutineScope;
                            this.$state = basicTooltipState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            C00061 c00061 = new C00061(this.$$this$coroutineScope, this.$state, continuation);
                            c00061.L$0 = obj;
                            return c00061;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
                            return ((C00061) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        /* JADX WARN: Removed duplicated region for block: B:10:0x0041 A[RETURN] */
                        /* JADX WARN: Removed duplicated region for block: B:11:0x0042  */
                        /* JADX WARN: Removed duplicated region for block: B:14:0x0066  */
                        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0042 -> B:12:0x0049). Please report as a decompilation issue!!! */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final Object invokeSuspend(Object $result) {
                            AwaitPointerEventScope $this$awaitPointerEventScope;
                            PointerEventPass pass;
                            C00061 c00061;
                            Object objAwaitPointerEvent;
                            Object $result2;
                            C00061 c000612;
                            AwaitPointerEventScope $this$awaitPointerEventScope2;
                            PointerEventPass pass2;
                            Object obj;
                            PointerEvent event;
                            Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            switch (this.label) {
                                case 0:
                                    ResultKt.throwOnFailure($result);
                                    AwaitPointerEventScope $this$awaitPointerEventScope3 = (AwaitPointerEventScope) this.L$0;
                                    $this$awaitPointerEventScope = $this$awaitPointerEventScope3;
                                    pass = PointerEventPass.Main;
                                    c00061 = this;
                                    c00061.L$0 = $this$awaitPointerEventScope;
                                    c00061.L$1 = pass;
                                    c00061.label = 1;
                                    objAwaitPointerEvent = $this$awaitPointerEventScope.awaitPointerEvent(pass, c00061);
                                    if (objAwaitPointerEvent == $result3) {
                                        return $result3;
                                    }
                                    Object obj2 = $result3;
                                    $result2 = $result;
                                    $result = objAwaitPointerEvent;
                                    c000612 = c00061;
                                    $this$awaitPointerEventScope2 = $this$awaitPointerEventScope;
                                    pass2 = pass;
                                    obj = obj2;
                                    event = (PointerEvent) $result;
                                    if (PointerType.m6081equalsimpl0(event.getChanges().get(0).getType(), PointerType.INSTANCE.m6086getMouseT8wyACA())) {
                                        int inputType = event.getType();
                                        if (PointerEventType.m5959equalsimpl0(inputType, PointerEventType.INSTANCE.m5963getEnter7fucELk())) {
                                            BuildersKt__Builders_commonKt.launch$default(c000612.$$this$coroutineScope, null, null, new C00071(c000612.$state, null), 3, null);
                                        } else if (PointerEventType.m5959equalsimpl0(inputType, PointerEventType.INSTANCE.m5964getExit7fucELk())) {
                                            c000612.$state.dismiss();
                                        }
                                    }
                                    $result = $result2;
                                    $result3 = obj;
                                    pass = pass2;
                                    $this$awaitPointerEventScope = $this$awaitPointerEventScope2;
                                    c00061 = c000612;
                                    c00061.L$0 = $this$awaitPointerEventScope;
                                    c00061.L$1 = pass;
                                    c00061.label = 1;
                                    objAwaitPointerEvent = $this$awaitPointerEventScope.awaitPointerEvent(pass, c00061);
                                    if (objAwaitPointerEvent == $result3) {
                                    }
                                    break;
                                case 1:
                                    PointerEventPass pass3 = (PointerEventPass) this.L$1;
                                    AwaitPointerEventScope $this$awaitPointerEventScope4 = (AwaitPointerEventScope) this.L$0;
                                    ResultKt.throwOnFailure($result);
                                    c000612 = this;
                                    $this$awaitPointerEventScope2 = $this$awaitPointerEventScope4;
                                    pass2 = pass3;
                                    obj = $result3;
                                    $result2 = $result;
                                    event = (PointerEvent) $result;
                                    if (PointerType.m6081equalsimpl0(event.getChanges().get(0).getType(), PointerType.INSTANCE.m6086getMouseT8wyACA())) {
                                    }
                                    $result = $result2;
                                    $result3 = obj;
                                    pass = pass2;
                                    $this$awaitPointerEventScope = $this$awaitPointerEventScope2;
                                    c00061 = c000612;
                                    c00061.L$0 = $this$awaitPointerEventScope;
                                    c00061.L$1 = pass;
                                    c00061.label = 1;
                                    objAwaitPointerEvent = $this$awaitPointerEventScope.awaitPointerEvent(pass, c00061);
                                    if (objAwaitPointerEvent == $result3) {
                                    }
                                    break;
                                default:
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        }

                        /* JADX INFO: renamed from: androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1$1$1, reason: invalid class name and collision with other inner class name */
                        /* JADX INFO: compiled from: BasicTooltip.kt */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.compose.foundation.BasicTooltipKt$handleGestures$2$1$1$1", f = "BasicTooltip.kt", i = {}, l = {195}, m = "invokeSuspend", n = {}, s = {}, v = 1)
                        static final class C00071 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            final /* synthetic */ BasicTooltipState $state;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            C00071(BasicTooltipState basicTooltipState, Continuation<? super C00071> continuation) {
                                super(2, continuation);
                                this.$state = basicTooltipState;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                return new C00071(this.$state, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                return ((C00071) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object $result) {
                                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                switch (this.label) {
                                    case 0:
                                        ResultKt.throwOnFailure($result);
                                        this.label = 1;
                                        if (this.$state.show(MutatePriority.UserInput, this) == coroutine_suspended) {
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
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object $result) {
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        switch (this.label) {
                            case 0:
                                ResultKt.throwOnFailure($result);
                                CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                                this.label = 1;
                                if (this.$this_pointerInput.awaitPointerEventScope(new C00061($this$coroutineScope, this.$state, null), this) == coroutine_suspended) {
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
                    Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new AnonymousClass1($this$pointerInput, state, null), continuation);
                    return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
                }
            });
        }
        return $this$handleGestures;
    }

    private static final Modifier anchorSemantics(Modifier $this$anchorSemantics, final String label, boolean enabled, final BasicTooltipState state, final CoroutineScope scope) {
        if (enabled) {
            return SemanticsModifierKt.semantics($this$anchorSemantics, true, new Function1() { // from class: androidx.compose.foundation.BasicTooltipKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BasicTooltipKt.anchorSemantics$lambda$0(label, scope, state, (SemanticsPropertyReceiver) obj);
                }
            });
        }
        return $this$anchorSemantics;
    }

    static final Unit anchorSemantics$lambda$0(String $label, final CoroutineScope $scope, final BasicTooltipState $state, SemanticsPropertyReceiver $this$semantics) {
        SemanticsPropertiesKt.onLongClick($this$semantics, $label, new Function0() { // from class: androidx.compose.foundation.BasicTooltipKt$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(BasicTooltipKt.anchorSemantics$lambda$0$0($scope, $state));
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean anchorSemantics$lambda$0$0(CoroutineScope $scope, BasicTooltipState $state) {
        BuildersKt__Builders_commonKt.launch$default($scope, null, null, new BasicTooltipKt$anchorSemantics$1$1$1($state, null), 3, null);
        return true;
    }

    public static final BasicTooltipState rememberBasicTooltipState(boolean initialIsVisible, boolean isPersistent, MutatorMutex mutatorMutex, Composer $composer, int $changed, int i) {
        ComposerKt.sourceInformationMarkerStart($composer, 1123859613, "C(rememberBasicTooltipState)N(initialIsVisible,isPersistent,mutatorMutex)245@9396L216:BasicTooltip.kt#71ulvw");
        if ((i & 1) != 0) {
            initialIsVisible = false;
        }
        if ((i & 2) != 0) {
            isPersistent = true;
        }
        if ((i & 4) != 0) {
            mutatorMutex = BasicTooltipDefaults.INSTANCE.getGlobalMutatorMutex();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1123859613, $changed, -1, "androidx.compose.foundation.rememberBasicTooltipState (BasicTooltip.kt:245)");
        }
        ComposerKt.sourceInformationMarkerStart($composer, 1992303573, "CC(remember):BasicTooltip.kt#9igjgp");
        boolean invalid$iv = (((($changed & 112) ^ 48) > 32 && $composer.changed(isPersistent)) || ($changed & 48) == 32) | (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(mutatorMutex)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            Object value$iv = new BasicTooltipStateImpl(initialIsVisible, isPersistent, mutatorMutex);
            $composer.updateRememberedValue(value$iv);
            it$iv = value$iv;
        }
        BasicTooltipStateImpl basicTooltipStateImpl = (BasicTooltipStateImpl) it$iv;
        ComposerKt.sourceInformationMarkerEnd($composer);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return basicTooltipStateImpl;
    }

    public static /* synthetic */ BasicTooltipState BasicTooltipState$default(boolean z, boolean z2, MutatorMutex mutatorMutex, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        if ((i & 4) != 0) {
            mutatorMutex = BasicTooltipDefaults.INSTANCE.getGlobalMutatorMutex();
        }
        return BasicTooltipState(z, z2, mutatorMutex);
    }

    public static final BasicTooltipState BasicTooltipState(boolean initialIsVisible, boolean isPersistent, MutatorMutex mutatorMutex) {
        return new BasicTooltipStateImpl(initialIsVisible, isPersistent, mutatorMutex);
    }
}
